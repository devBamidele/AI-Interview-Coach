# Rehearse - AI Interview Practice MVP

An AI-powered video interview practice application built with Flutter. Practice your interview skills through real-time conversations with an AI interviewer, complete with live transcription, speech analysis, and performance feedback.

## Features

### Core Interview Experience
- **Live AI Interview Sessions** - Real-time video/audio conversations via LiveKit
- **Live Transcription** - WebSocket-based speech-to-text using Deepgram integration
- **AI Analysis & Scoring** - Post-interview analysis including:
  - Overall performance score (0-100)
  - Pace analysis (words per minute)
  - Filler word detection and tracking
  - Confidence metrics and insights
  - Improvement suggestions with timestamps
  - Highlights of strong moments
- **Network Quality Monitoring** - Real-time connection quality indicator
- **Cross-Platform** - iOS, Android, Web, and Desktop support

### Authentication & Access
- **Flexible Authentication** - Support for both registered users and anonymous guests
- **Anonymous Guest Sessions** - Practice interviews without creating an account
- **Device-Based Identity** - Persistent anonymous sessions using device UUIDs
- **JWT-Based Security** - Secure API access with automatic token refresh
- **Splash Screen** - Smooth app initialization with auth state detection

### User Experience
- **Interview History** - View and review past interviews with detailed analysis
- **Responsive UI** - Adaptive layouts for mobile and desktop platforms
- **Collapsible Widgets** - Optimized mobile interface for better usability
- **Server-Driven Configuration** - Backend manages room names and participant identities

## Tech Stack

- **Framework**: Flutter 3.8.1+ / Dart 3.8.1+
- **State Management**: Riverpod (with code generation) + Flutter Hooks
- **Real-time Communication**: LiveKit (WebRTC), WebSocket
- **HTTP Client**: Dio with retry logic and network interceptors
- **Functional Programming**: Dartz (Either type for error handling)
- **Code Generation**: Freezed, JSON Serializable, Riverpod Generator, Auto Route
- **Security**: Flutter Secure Storage (for sensitive data), JWT authentication
- **External Services**: LiveKit, Deepgram, OpenAI (via backend)
- **Device Identification**: UUID for anonymous session persistence

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
│   ├── api/              # API endpoints configuration
│   ├── constants/        # App configuration and constants
│   ├── error/            # Failure types and error handling
│   └── network/          # Network monitoring, retry logic & interceptors
│
├── config/
│   ├── router/           # AutoRoute navigation with guards
│   └── theme/            # Material 3 theming
│
├── common/
│   ├── components/       # Reusable UI components
│   └── utils/            # Utility functions and extensions
│
└── features/
    ├── auth/             # Authentication & user management
    │   ├── domain/       # User entities & auth contracts
    │   ├── data/         # Auth API & repository implementations
    │   ├── application/  # Auth state (Riverpod), device ID manager
    │   └── presentation/ # Login, signup pages & auth widgets
    │
    ├── interview/        # Core interview functionality
    │   ├── domain/       # Interview entities & repository interfaces
    │   ├── data/         # LiveKit, WebSocket & API implementations
    │   ├── application/  # Interview state management & business logic
    │   └── presentation/ # Interview UI, controls, transcription panel
    │
    └── splash/           # App initialization
        └── presentation/ # Splash screen with auth detection
```

## Backend Requirements

Your backend must provide:

### Authentication Endpoints
- `POST /api/auth/login` - User login with email/password
- `POST /api/auth/signup` - User registration
- `POST /api/auth/logout` - User logout
- `POST /api/auth/anonymous` - Create anonymous guest session with device ID
- `POST /api/auth/refresh` - Refresh access token using refresh token

### Interview Endpoints
- `POST /api/livekit/token` - Generate LiveKit room access token and transcription credentials
  - Returns: `{ token, wsUrl, roomName, participantIdentity }`
  - Handles both authenticated users and anonymous guests
- `GET /api/interviews/interview?interviewId={id}` - Fetch full interview analysis by ID (requires JWT)
- `GET /api/interviews/my-interviews/summary` - Fetch user's interview history summary (requires JWT)
  - Optimized endpoint with 80-90% smaller payload (excludes transcript and detailed analysis)

### Real-time Communication
- WebSocket server on port 3001 for real-time transcription via Deepgram
- Server manages room names and participant identity generation

## How It Works

### App Flow
1. **Initialization**: Splash screen checks for existing auth session (authenticated or anonymous)
2. **Authentication**: Users can either:
   - Login/signup with email and password
   - Continue as guest (creates anonymous session with device UUID)
3. **Interview Setup**: Backend generates all connection parameters (room name, tokens, WebSocket URL)
4. **Connect Phase**: User connects to LiveKit room with server-issued credentials
5. **Interview Phase**: Real-time conversation with AI, live transcription via WebSocket
6. **Completion Phase**: Transcription service sends session data to backend for AI analysis
7. **Results Phase**: Flutter polls backend for analysis results using interview ID and displays comprehensive feedback

### Authentication Architecture
- **JWT-based security** for all API requests
- **Automatic token refresh** via network interceptors
- **Device-based anonymous sessions** for guest users (persistent across app restarts)
- **Secure storage** for tokens and sensitive data
- **Auth state management** using Riverpod for reactive UI updates

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
