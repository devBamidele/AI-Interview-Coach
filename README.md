# AI Interview MVP

A Flutter application for AI-powered video interviews using LiveKit for real-time communication.

## Features

- 🎥 Real-time video/audio streaming with LiveKit
- 🎤 Live transcription with WebSocket support
- 📱 Cross-platform support (iOS, Android, Web, Desktop)
- 🏗️ Clean Architecture with feature-based organization
- 🔄 Riverpod state management with hooks

## Quick Start

### Prerequisites

- Flutter SDK ^3.8.1
- Dart SDK ^3.8.1
- Node.js backend server (for token authentication)
- LiveKit account

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

Update [lib/core/constants/app_config.dart](lib/core/constants/app_config.dart) with your backend and LiveKit URLs:

```dart
static const String backendUrl = "http://localhost:3000";
static const String livekitUrl = "wss://your-livekit-server.cloud";
```

## Architecture

```
lib/
├── core/              # Shared utilities, constants, network
└── features/
    └── interview/     # Interview feature
        ├── domain/    # Business logic & interfaces
        ├── data/      # API & repository implementations
        ├── application/ # State management (Riverpod)
        └── presentation/ # UI components
```

## Tech Stack

- **Framework**: Flutter 3.8.1+
- **State Management**: Riverpod + Hooks
- **Real-time Communication**: LiveKit
- **HTTP Client**: Dio
- **Functional Programming**: Dartz (Either type)
- **Code Generation**: Freezed, JSON Serializable

## Development

```bash
# Watch mode for code generation
dart run build_runner watch --delete-conflicting-outputs

# Run tests
flutter test

# Analyze code
flutter analyze
```

## Backend Requirements

Your backend must provide:

- `GET /livekit/getToken?room={room}&name={name}` - Returns LiveKit access token
- LiveKit server connection (WebSocket)

## License

MIT

## Documentation

For detailed architecture and setup instructions, see [CLAUDE.md](CLAUDE.md).
