import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:livekit_client/livekit_client.dart';

import '../domain/entities/interview_analysis.dart';

part 'interview_state.freezed.dart';

/// Represents the interview connection state using Freezed unions
@freezed
class InterviewState with _$InterviewState {
  const factory InterviewState.disconnected() = Disconnected;

  const factory InterviewState.connecting(String status) = Connecting;

  const factory InterviewState.connected({LocalVideoTrack? localVideoTrack}) =
      Connected;

  const factory InterviewState.completing(String status) = Completing;

  const factory InterviewState.analyzing(String interviewId) = Analyzing;

  const factory InterviewState.analysisComplete(InterviewAnalysis analysis) =
      AnalysisComplete;

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
    connected: (_) => 'Connected',
    completing: (status) => status,
    analyzing: (_) => 'Analyzing your interview...',
    analysisComplete: (_) => 'Analysis Complete',
    analysisFailed: (_) => 'Analysis Failed',
    failed: (_) => 'Connection Failed',
  );

  String get errorMessage => when(
    disconnected: () => '',
    connecting: (_) => '',
    connected: (_) => '',
    completing: (_) => '',
    analyzing: (_) => '',
    analysisComplete: (_) => '',
    analysisFailed: (error) => error,
    failed: (error) => error,
  );

  LocalVideoTrack? get videoTrack => when(
    disconnected: () => null,
    connecting: (_) => null,
    connected: (track) => track,
    completing: (_) => null,
    analyzing: (_) => null,
    analysisComplete: (_) => null,
    analysisFailed: (_) => null,
    failed: (_) => null,
  );

  InterviewAnalysis? get analysis => when(
    disconnected: () => null,
    connecting: (_) => null,
    connected: (_) => null,
    completing: (_) => null,
    analyzing: (_) => null,
    analysisComplete: (analysis) => analysis,
    analysisFailed: (_) => null,
    failed: (_) => null,
  );
}
