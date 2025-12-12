import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:livekit_client/livekit_client.dart';

import '../domain/entities/interview_analysis.dart';

part 'interview_state.freezed.dart';

/// Represents the interview connection state using Freezed unions
@freezed
class InterviewState with _$InterviewState {
  const factory InterviewState.disconnected() = Disconnected;

  const factory InterviewState.connecting(String status) = Connecting;

  const factory InterviewState.connected({
    LocalVideoTrack? localVideoTrack,
    String? participantIdentity,
  }) = Connected;

  const factory InterviewState.completing(String status) = Completing;

  const factory InterviewState.analyzing(String interviewId) = Analyzing;

  const factory InterviewState.analysisComplete(
    InterviewAnalysis analysis,
    String interviewId,
  ) = AnalysisComplete;

  const factory InterviewState.analysisFailed(String errorMessage) =
      AnalysisFailed;

  const factory InterviewState.failed(String errorMessage) = Failed;
}

/// Extension methods for convenient state checking
extension InterviewStateX on InterviewState {
  bool get isConnected => this is Connected;
  bool get isConnecting => this is Connecting;
  bool get isDisconnected => this is Disconnected;
  bool get isCompleting => this is Completing;
  bool get isAnalyzing => this is Analyzing;
  bool get isAnalysisComplete => this is AnalysisComplete;
  bool get isFailed => this is Failed || this is AnalysisFailed;

  String get statusText => when(
    disconnected: () => 'Disconnected',
    connecting: (status) => status,
    connected: (_, _) => 'Connected',
    completing: (status) => status,
    analyzing: (_) => 'Analyzing your interview...',
    analysisComplete: (_, _) => 'Analysis Complete',
    analysisFailed: (_) => 'Analysis Failed',
    failed: (_) => 'Connection Failed',
  );

  String get errorMessage => when(
    disconnected: () => '',
    connecting: (_) => '',
    connected: (_, _) => '',
    completing: (_) => '',
    analyzing: (_) => '',
    analysisComplete: (_, _) => '',
    analysisFailed: (error) => error,
    failed: (error) => error,
  );

  LocalVideoTrack? get videoTrack => when(
    disconnected: () => null,
    connecting: (_) => null,
    connected: (track, _) => track,
    completing: (_) => null,
    analyzing: (_) => null,
    analysisComplete: (_, _) => null,
    analysisFailed: (_) => null,
    failed: (_) => null,
  );

  String? get participantIdentity => when(
    disconnected: () => null,
    connecting: (_) => null,
    connected: (_, identity) => identity,
    completing: (_) => null,
    analyzing: (_) => null,
    analysisComplete: (_, _) => null,
    analysisFailed: (_) => null,
    failed: (_) => null,
  );

  InterviewAnalysis? get analysis => when(
    disconnected: () => null,
    connecting: (_) => null,
    connected: (_, _) => null,
    completing: (_) => null,
    analyzing: (_) => null,
    analysisComplete: (analysis, _) => analysis,
    analysisFailed: (_) => null,
    failed: (_) => null,
  );

  String? get interviewId => when(
    disconnected: () => null,
    connecting: (_) => null,
    connected: (_, _) => null,
    completing: (_) => null,
    analyzing: (id) => id,
    analysisComplete: (_, id) => id,
    analysisFailed: (_) => null,
    failed: (_) => null,
  );
}
