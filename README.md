# AI Interview MVP

An AI-powered video interview practice application built with Flutter. Practice your interview skills through real-time conversations with an AI interviewer, complete with live transcription, speech analysis, and performance feedback.

## Features

- **Live AI Interview Sessions** - Real-time video/audio conversations via LiveKit
- **Live Transcription** - WebSocket-based speech-to-text using Deepgram integration
- **AI Analysis & Scoring** - Post-interview analysis including:
  - Overall performance score (0-100)
  - Pace analysis (words per minute)
  - Filler word detection and tracking
  - Confidence metrics and insights
  - Improvement suggestions with timestamps
  - Highlights of strong moments
- **Interview History** - View and review past interviews with detailed analysis
- **Network Quality Monitoring** - Real-time connection quality indicator
- **Cross-Platform** - iOS, Android, Web, and Desktop support

## Tech Stack

- **Framework**: Flutter 3.8.1+ / Dart 3.8.1+
- **State Management**: Riverpod + Flutter Hooks
- **Real-time Communication**: LiveKit (WebRTC), WebSocket
- **HTTP Client**: Dio with retry logic
- **Functional Programming**: Dartz (Either type for error handling)
- **Code Generation**: Freezed, JSON Serializable, Auto Route
- **External Services**: LiveKit, Deepgram, OpenAI (via backend)

## Quick Start

### Prerequisites

- Flutter SDK ^3.8.1
- Dart SDK ^3.8.1
- Backend server (NestJS) running on localhost:3000
- LiveKit account and server setup

### Installation

```bash
# Install dependencies
flutter pub get

# Run code generation
dart run build_runner build --delete-conflicting-outputs

# Run the app
flutter run
```

### Configuration

Update [lib/core/constants/app_config.dart](lib/core/constants/app_config.dart) with your backend URLs:

```dart
static const String backendUrl = "http://localhost:3000";
static const String transcriptionWsUrl = "ws://localhost:3001";
```

For production, update these to use HTTPS/WSS endpoints.

## Architecture

The project follows Clean Architecture with feature-based organization:

```
lib/
├── core/
│   ├── api/              # API endpoints
│   ├── constants/        # App configuration
│   ├── error/            # Failure types
│   └── network/          # Network monitoring & retry logic
│
├── config/
│   ├── router/           # AutoRoute navigation
│   └── theme/            # Material 3 theming
│
└── features/interview/
    ├── domain/           # Entities & repository interfaces
    ├── data/             # API & repository implementations
    ├── application/      # State management (Riverpod notifiers)
    └── presentation/     # UI pages & widgets
```

## Backend Requirements

Your backend must provide:

- `POST /api/livekit/token` - Generate LiveKit room access token
- `GET /api/interviews/:id` - Fetch interview analysis results
- `GET /api/interviews/user/:participantIdentity` - Fetch interview history
- WebSocket server on port 3001 for real-time transcription

## How It Works

1. **Connect Phase**: User connects to LiveKit room with backend-generated token
2. **Interview Phase**: Real-time conversation with AI, live transcription via WebSocket
3. **Completion Phase**: Transcription service sends session data to backend for AI analysis
4. **Results Phase**: Flutter polls backend for analysis results and displays comprehensive feedback

## Development

```bash
# Watch mode for code generation
dart run build_runner watch --delete-conflicting-outputs

# Analyze code
flutter analyze

# Format code
dart format lib/
```

## License

MIT
