import 'dart:async';
import 'dart:convert';
import 'package:web_socket_channel/web_socket_channel.dart';
import '../models/transcript_event_model.dart';

/// WebSocket message types
enum TranscriptionMessageType {
  transcript,
  error,
  started,
  stopped,
  sessionComplete,
  unknown,
}

/// WebSocket message wrapper
class TranscriptionMessage {
  final TranscriptionMessageType type;
  final dynamic data;
  final String? errorMessage;

  TranscriptionMessage({required this.type, this.data, this.errorMessage});

  factory TranscriptionMessage.fromJson(Map<String, dynamic> json) {
    final type = json['type'] as String;

    switch (type) {
      case 'transcript':
        return TranscriptionMessage(
          type: TranscriptionMessageType.transcript,
          data: TranscriptEventModel.fromJson(json),
        );
      case 'error':
        return TranscriptionMessage(
          type: TranscriptionMessageType.error,
          errorMessage: json['message'] as String,
        );
      case 'started':
        return TranscriptionMessage(
          type: TranscriptionMessageType.started,
          data: json['data'],
        );
      case 'stopped':
        return TranscriptionMessage(
          type: TranscriptionMessageType.stopped,
          data: json['data'],
        );
      case 'session_complete':
        return TranscriptionMessage(
          type: TranscriptionMessageType.sessionComplete,
          data: {
            'message': json['message'] as String,
            'interviewId': json['interviewId'] as String,
          },
        );
      default:
        // Handle unknown message types gracefully
        return TranscriptionMessage(
          type: TranscriptionMessageType.unknown,
          data: json,
        );
    }
  }
}

/// Remote data source for transcription WebSocket communication
abstract class TranscriptionWebSocketDataSource {
  /// Connect to the transcription WebSocket server
  Future<void> connect(String url);

  /// Start transcription for a room and participant
  void startTranscription({
    required String roomName,
    required String participantIdentity,
  });

  /// Stop transcription
  void stopTranscription();

  /// Complete interview (ends transcription and triggers analysis)
  void completeInterview();

  /// Stream of incoming transcription messages
  Stream<TranscriptionMessage> get messages;

  /// Check if connected
  bool get isConnected;

  /// Dispose and close connection
  void dispose();
}

/// Implementation of transcription WebSocket data source
class TranscriptionWebSocketDataSourceImpl
    implements TranscriptionWebSocketDataSource {
  WebSocketChannel? _channel;
  final StreamController<TranscriptionMessage> _messageController =
      StreamController.broadcast();
  bool _isConnected = false;
  StreamSubscription? _channelSubscription;

  @override
  Future<void> connect(String url) async {
    if (_isConnected) {
      return;
    }

    try {
      _channel = WebSocketChannel.connect(Uri.parse(url));
      _isConnected = true;

      // Listen to messages
      _channelSubscription = _channel!.stream.listen(
        (data) {
          try {
            final json = jsonDecode(data as String) as Map<String, dynamic>;
            final message = TranscriptionMessage.fromJson(json);
            _messageController.add(message);
          } catch (e) {
            _messageController.addError(e);
          }
        },
        onError: (error) {
          _messageController.addError(error);
          _isConnected = false;
        },
        onDone: () {
          _isConnected = false;
        },
      );
    } catch (e) {
      _isConnected = false;
      rethrow;
    }
  }

  @override
  void startTranscription({
    required String roomName,
    required String participantIdentity,
  }) {
    if (!_isConnected || _channel == null) {
      throw Exception('Not connected to transcription service');
    }

    final message = jsonEncode({
      'action': 'start',
      'roomName': roomName,
      'participantIdentity': participantIdentity,
    });

    _channel!.sink.add(message);
  }

  @override
  void stopTranscription() {
    if (!_isConnected || _channel == null) {
      return;
    }

    final message = jsonEncode({'action': 'stop'});
    _channel!.sink.add(message);
  }

  @override
  void completeInterview() {
    if (!_isConnected || _channel == null) {
      return;
    }

    final message = jsonEncode({'action': 'complete'});
    _channel!.sink.add(message);
  }

  @override
  Stream<TranscriptionMessage> get messages => _messageController.stream;

  @override
  bool get isConnected => _isConnected;

  @override
  void dispose() {
    _channelSubscription?.cancel();
    _channel?.sink.close();
    _messageController.close();
    _isConnected = false;
  }
}
