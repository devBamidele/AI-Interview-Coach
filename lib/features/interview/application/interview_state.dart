import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:livekit_client/livekit_client.dart';

part 'interview_state.freezed.dart';

/// Represents the interview connection state using Freezed unions
@freezed
class InterviewState with _$InterviewState {
  const factory InterviewState.disconnected() = Disconnected;

  const factory InterviewState.connecting(String status) = Connecting;

  const factory InterviewState.connected({
    LocalVideoTrack? localVideoTrack,
  }) = Connected;

  const factory InterviewState.failed(String errorMessage) = Failed;
}

/// Extension methods for convenient state checking
extension InterviewStateX on InterviewState {
  bool get isConnected => this is Connected;
  bool get isConnecting => this is Connecting;
  bool get isDisconnected => this is Disconnected;
  bool get isFailed => this is Failed;

  String get statusText => when(
        disconnected: () => 'Disconnected',
        connecting: (status) => status,
        connected: (_) => 'Connected',
        failed: (_) => 'Connection Failed',
      );

  String get errorMessage => when(
        disconnected: () => '',
        connecting: (_) => '',
        connected: (_) => '',
        failed: (error) => error,
      );

  LocalVideoTrack? get videoTrack => when(
        disconnected: () => null,
        connecting: (_) => null,
        connected: (track) => track,
        failed: (_) => null,
      );
}
