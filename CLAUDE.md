# AI Interview MVP - Flutter Project

## Project Overview

AI Interview MVP is a Flutter application that provides AI-powered video interview capabilities using LiveKit for real-time audio and video communication. The application enables users to participate in video interviews with connection management, video preview, and real-time status updates.

## Architecture

This project follows **Clean Architecture** principles with a feature-based organization:

```
lib/
├── core/                          # Shared core functionality
│   ├── constants/                 # Application-wide constants
│   ├── network/                   # Network utilities and configuration
│   ├── api/                       # API endpoint definitions
│   └── error/                     # Error handling (exceptions, failures)
└── features/
    └── interview/                 # Interview feature module
        ├── domain/                # Business logic layer
        │   └── repositories/      # Abstract repository interfaces
        ├── data/                  # Data layer
        │   ├── datasources/       # Remote data sources (LiveKit API)
        │   ├── models/            # Data transfer objects (DTOs)
        │   └── repositories/      # Repository implementations
        ├── application/           # Application/business logic layer
        │   └── [notifiers]        # Riverpod state notifiers
        └── presentation/          # UI layer
            ├── pages/             # Screen/page widgets
            └── widgets/           # Reusable UI components
```

### Layer Responsibilities

- **Domain**: Business entities, repository interfaces, use cases
- **Data**: API communication, data models, repository implementations
- **Application**: State management, business logic coordination
- **Presentation**: UI components, pages, user interactions

## Tech Stack

### Core Dependencies
- **flutter** - UI framework
- **livekit_client** (^2.5.1) - Real-time video/audio communication
- **http** (^1.5.0) & **dio** (^5.7.0) - HTTP clients

### State Management
- **flutter_riverpod** (^3.0.0) - State management
- **hooks_riverpod** (^3.0.0) - Hooks integration for Riverpod
- **flutter_hooks** (^0.21.3+1) - React-style hooks for Flutter
- **riverpod_annotation** (^3.0.1) - Code generation annotations

### Functional Programming & Immutability
- **dartz** (^0.10.1) - Functional programming utilities (Either type)
- **freezed_annotation** (^3.1.0) - Immutable data classes
- **json_annotation** (^4.9.0) - JSON serialization

### Network
- **connectivity_plus** (^6.1.5) - Network connectivity monitoring
- **retry** (^3.1.2) - Network request retry logic

### Dev Dependencies
- **build_runner** (^2.7.1) - Code generation
- **riverpod_generator** (^3.0.1) - Riverpod code generation
- **freezed** (^3.2.3) - Data class generation
- **json_serializable** (^6.11.1) - JSON serialization generation
- **custom_lint** (^0.8.0) & **riverpod_lint** (^3.0.1) - Linting

## Project Structure

### Key Files

- [lib/main.dart](lib/main.dart) - Application entry point
- [lib/core/constants/app_config.dart](lib/core/constants/app_config.dart) - Configuration constants
- [lib/features/interview/presentation/pages/interview_page.dart](lib/features/interview/presentation/pages/interview_page.dart) - Main interview screen
- [lib/features/interview/application/interview_notifier.dart](lib/features/interview/application/interview_notifier.dart) - Interview state management
- [lib/features/interview/data/datasources/livekit_remote_datasource.dart](lib/features/interview/data/datasources/livekit_remote_datasource.dart) - LiveKit API integration

### Configuration

Backend and LiveKit settings are centralized in [app_config.dart](lib/core/constants/app_config.dart):

```dart
static const String backendUrl = "http://localhost:3000";
static const String tokenEndpoint = "/livekit/getToken";
static const String livekitUrl = "wss://aiinterviewmvp-4o1z3ma6.livekit.cloud";
static const String defaultRoomName = "quickstart-room";
static const String defaultParticipantPrefix = "flutter-user";
```

## Key Features

1. **Video Interview Interface**
   - Real-time video preview
   - Audio/video controls
   - Connection status display

2. **LiveKit Integration**
   - Token-based authentication
   - Room management
   - Participant handling

3. **Connection Management**
   - Connect/disconnect controls
   - Connection state tracking
   - Error handling

4. **Network Layer**
   - Network connectivity monitoring
   - Automatic retry mechanisms
   - Request/response handling

## Setup Instructions

### Prerequisites

- Flutter SDK ^3.8.1
- Dart SDK ^3.8.1
- iOS/Android development environment (Xcode/Android Studio)
- Node.js backend server running on `http://localhost:3000`
- LiveKit cloud account and server configured

### Installation

1. Clone the repository:
```bash
cd /Users/mac/AndroidStudioProjects/ai_interview_mvp
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run code generation:
```bash
dart run build_runner build --delete-conflicting-outputs
```

4. Update configuration:
   - Edit [lib/core/constants/app_config.dart](lib/core/constants/app_config.dart)
   - Set your backend URL
   - Set your LiveKit server URL

5. Run the application:
```bash
flutter run
```

## Development Guidelines

### Code Generation

This project uses code generation for:
- **Freezed**: Immutable data classes
- **JSON Serializable**: JSON serialization/deserialization
- **Riverpod Generator**: State providers

Run code generation when modifying annotated classes:

```bash
# Watch mode (auto-regenerate on changes)
dart run build_runner watch --delete-conflicting-outputs

# One-time build
dart run build_runner build --delete-conflicting-outputs
```

### State Management with Riverpod

State is managed using Riverpod with code generation:

```dart
@riverpod
class InterviewNotifier extends _$InterviewNotifier {
  // Implementation
}
```

### Error Handling

The project uses functional error handling with `dartz` Either type:

```dart
Either<Failure, Success> result = await repository.method();
```

### Network Layer

Network requests are handled through:
- [network_info.dart](lib/core/network/network_info.dart) - Connectivity monitoring
- [network_request.dart](lib/core/network/network_request.dart) - Request building
- [network_retry.dart](lib/core/network/network_retry.dart) - Retry logic

## Testing

Run tests:
```bash
flutter test
```

## Platform Support

This project supports:
- iOS
- Android
- macOS
- Web
- Linux
- Windows

## Backend Requirements

The application requires a backend server that provides:

1. **Token Endpoint**: `GET /livekit/getToken?room={roomName}&name={participantName}`
   - Returns LiveKit access token for room authentication

2. **LiveKit Server**: WebSocket connection to LiveKit cloud or self-hosted instance

## Additional Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [LiveKit Flutter SDK](https://docs.livekit.io/reference/client-sdks/flutter/)
- [Riverpod Documentation](https://riverpod.dev/)
- [Clean Architecture in Flutter](https://resocoder.com/flutter-clean-architecture-tdd/)
