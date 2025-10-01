# Audio Transcription Integration

This document describes the integration of the audio analysis microservice into the AI Interview MVP Flutter application.

## Overview

The application now includes real-time audio transcription and speech analysis capabilities during interviews. The integration follows clean architecture principles and integrates seamlessly with the existing LiveKit video interview flow.

## Architecture

### Layer Structure

```
lib/features/interview/
├── domain/
│   ├── entities/                    # Domain entities
│   │   ├── word.dart                # Word with timing/confidence
│   │   ├── filler_word.dart         # Detected filler words
│   │   ├── pause.dart               # Speech pauses
│   │   ├── transcript_event.dart    # Transcription events
│   │   └── analysis_event.dart      # Speech analysis data
│   └── repositories/
│       └── transcription_repository.dart  # Repository interface
│
├── data/
│   ├── models/                      # Data transfer objects
│   │   ├── word_model.dart
│   │   ├── filler_word_model.dart
│   │   ├── pause_model.dart
│   │   ├── transcript_event_model.dart
│   │   └── analysis_event_model.dart
│   ├── datasources/
│   │   └── transcription_websocket_datasource.dart  # WebSocket client
│   └── repositories/
│       └── transcription_repository_impl.dart       # Repository implementation
│
├── application/
│   └── transcription_notifier.dart  # State management
│
└── presentation/
    └── widgets/
        └── transcription_panel.dart # UI for transcripts & analysis
```

## Key Components

### 1. TranscriptionWebSocketDataSource

Located at: [lib/features/interview/data/datasources/transcription_websocket_datasource.dart](lib/features/interview/data/datasources/transcription_websocket_datasource.dart)

Handles WebSocket communication with the transcription service:
- Connects to WebSocket server
- Sends start/stop commands
- Receives and parses transcript and analysis messages
- Manages connection lifecycle

### 2. TranscriptionRepository

Located at: [lib/features/interview/domain/repositories/transcription_repository.dart](lib/features/interview/domain/repositories/transcription_repository.dart)

Abstract interface defining transcription operations following clean architecture principles.

### 3. TranscriptionNotifier

Located at: [lib/features/interview/application/transcription_notifier.dart](lib/features/interview/application/transcription_notifier.dart)

Riverpod state notifier that:
- Manages transcription state
- Coordinates with repository
- Aggregates transcript events
- Stores latest analysis data
- Handles errors

### 4. TranscriptionPanel Widget

Located at: [lib/features/interview/presentation/widgets/transcription_panel.dart](lib/features/interview/presentation/widgets/transcription_panel.dart)

UI component displaying:
- Live transcription text
- Recording status indicator
- Speech analysis metrics (pace, fillers, pauses, word count, duration)
- Error messages

## Integration Flow

### Interview Connection Flow

1. User clicks "Connect" in interview page
2. `InterviewNotifier` connects to LiveKit room
3. After successful LiveKit connection, `_startTranscription()` is called
4. `TranscriptionNotifier` connects to WebSocket service
5. `TranscriptionNotifier` starts transcription with room name and participant identity
6. Transcription events stream to UI in real-time

### Interview Disconnection Flow

1. User clicks "Disconnect"
2. `InterviewNotifier` stops transcription via `TranscriptionNotifier`
3. WebSocket connection is closed
4. LiveKit room is disconnected

## Configuration

### App Config

Located at: [lib/core/constants/app_config.dart](lib/core/constants/app_config.dart:13)

```dart
static const String transcriptionWsUrl = "ws://localhost:3000";
```

Update this URL for production deployment:
- Local development: `ws://localhost:3000`
- Production: `wss://your-domain.com`

## Message Protocol

### Outgoing Messages (Flutter → Service)

**Start Transcription:**
```json
{
  "action": "start",
  "roomName": "quickstart-room",
  "participantIdentity": "flutter-user"
}
```

**Stop Transcription:**
```json
{
  "action": "stop"
}
```

### Incoming Messages (Service → Flutter)

**Transcript Event:**
```json
{
  "type": "transcript",
  "text": "hello world",
  "isFinal": true,
  "words": [
    {
      "word": "hello",
      "start": 0.5,
      "end": 0.8,
      "confidence": 0.99
    }
  ]
}
```

**Analysis Event:**
```json
{
  "type": "analysis",
  "data": {
    "pace": "145 words/min (normal)",
    "fillers": [{"word": "um", "timestamp": 2.3}],
    "pauses": [{"duration": 1.5, "at": 8.2}],
    "totalWords": 42,
    "duration": 17.3
  }
}
```

**Error Event:**
```json
{
  "type": "error",
  "message": "Error description"
}
```

## UI Layout

The interview page now uses a split layout:

```
┌────────────────────────────────────────────┐
│           AI Interview (AppBar)            │
├───────────────────┬────────────────────────┤
│                   │                        │
│  Video Preview    │  Transcription Panel   │
│                   │  ┌──────────────────┐  │
│  Connection       │  │ Live Transcript  │  │
│  Status           │  │                  │  │
│                   │  └──────────────────┘  │
│  Connect/         │  ┌──────────────────┐  │
│  Disconnect       │  │ Analysis         │  │
│  Button           │  │ - Pace           │  │
│                   │  │ - Fillers        │  │
│                   │  │ - Pauses         │  │
│                   │  └──────────────────┘  │
└───────────────────┴────────────────────────┘
```

## Dependencies Added

- `web_socket_channel: ^3.0.3` - WebSocket communication

## Usage

### Starting Transcription Manually

```dart
final transcriptionNotifier = ref.read(transcriptionNotifierProvider.notifier);

// Connect to service
await transcriptionNotifier.connect();

// Start transcription
transcriptionNotifier.startTranscription(
  roomName: 'my-room',
  participantIdentity: 'user-123',
);
```

### Watching Transcription State

```dart
final state = ref.watch(transcriptionNotifierProvider);

print('Transcript: ${state.fullTranscript}');
print('Is transcribing: ${state.isTranscribing}');
print('Latest analysis: ${state.latestAnalysis}');
```

### Stopping Transcription

```dart
ref.read(transcriptionNotifierProvider.notifier).stopTranscription();
```

## Error Handling

- WebSocket connection failures are caught and displayed in the UI
- Transcription errors don't interrupt the interview flow
- Failed transcription start/stop operations are logged but don't crash the app
- The interview can proceed even if transcription fails

## Testing

### Prerequisites

1. Start the transcription service:
   ```bash
   npm run dev
   ```

2. Verify service is running:
   ```bash
   curl http://localhost:3000/health
   ```

### Running the App

```bash
# Install dependencies
flutter pub get

# Generate code
dart run build_runner build --delete-conflicting-outputs

# Run app
flutter run
```

### Testing Flow

1. Launch the app
2. Click "Connect" to join interview
3. Speak into the microphone
4. Watch transcription appear in real-time
5. View analysis metrics after each utterance
6. Click "Disconnect" to stop

## Production Considerations

### Security

- Use WSS (WebSocket Secure) in production
- Validate participant identity server-side
- Implement authentication for WebSocket connections

### Configuration

- Move WebSocket URL to environment variables
- Support multiple environments (dev/staging/prod)
- Consider using `flutter_dotenv` or `envied` packages

### Performance

- Transcript buffer management for long interviews
- Consider pagination or virtualization for very long transcripts
- Monitor WebSocket connection health

### Monitoring

- Add logging for transcription events
- Track WebSocket connection failures
- Monitor transcription latency

## Future Enhancements

1. **Transcript Export** - Save transcripts to file
2. **Analysis History** - Track analysis over time
3. **Real-time Feedback** - Show warnings for excessive fillers/pauses
4. **Transcript Search** - Search within interview transcripts
5. **Speaker Diarization** - Support multi-participant interviews
6. **Transcript Editing** - Allow manual corrections
7. **Analytics Dashboard** - Aggregate analysis across interviews

## Troubleshooting

### No transcripts appearing

- Check that microphone is enabled in LiveKit
- Verify participant identity matches between LiveKit and transcription service
- Check transcription service logs
- Ensure WebSocket connection is established (`isConnected` should be true)

### WebSocket connection fails

- Verify service URL is correct
- Check firewall settings
- For localhost, use `ws://` not `wss://`
- For production, ensure SSL certificate is valid

### Transcripts are delayed

- Check network latency
- Verify transcription service is running properly
- Monitor service resource usage

## References

- [CLAUDE.md](CLAUDE.md) - Main project documentation
- [LiveKit Client SDK](https://docs.livekit.io/reference/client-sdks/flutter/)
- [Riverpod Documentation](https://riverpod.dev/)
- [WebSocket Channel Package](https://pub.dev/packages/web_socket_channel)
