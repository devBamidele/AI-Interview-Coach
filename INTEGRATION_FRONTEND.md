# Frontend Integration Guide

**Audience:** For use in the Flutter frontend codebase

---

## System Architecture

```
Flutter App (YOU ARE HERE)
    ↓ WebSocket
Transcription Service
    ↓ HTTP
Nest.js Backend
```

**Your responsibilities:**
1. Connect to Transcription Service via WebSocket
2. Display live transcripts during interview
3. Get interview analysis from Backend
4. Show results to user with timestamps

---

## Integration Flow

### Phase 1: Setup Interview

**1. Get LiveKit token from Backend:**
```dart
// POST /api/livekit/token
final response = await http.post(
  Uri.parse('$backendUrl/api/livekit/token'),
  headers: {'Content-Type': 'application/json'},
  body: jsonEncode({
    'roomName': 'interview-${userId}-${timestamp}',
    'participantName': userName,
  }),
);

final data = jsonDecode(response.body);
String livekitToken = data['token'];
String livekitUrl = data['url'];
```

**2. Connect to LiveKit room:**
```dart
// Use LiveKit Flutter SDK
await room.connect(livekitUrl, livekitToken);
```

**3. Connect to Transcription Service WebSocket:**
```dart
final ws = WebSocket('ws://localhost:3001'); // or your deployed URL

ws.onOpen = () {
  ws.send(jsonEncode({
    'action': 'start',
    'roomName': 'interview-${userId}-${timestamp}',
    'participantIdentity': userId,
  }));
};
```

---

### Phase 2: During Interview

**Receive live transcripts:**
```dart
ws.onMessage = (event) {
  final data = jsonDecode(event.data);

  switch (data['type']) {
    case 'started':
      print('Transcription started');
      break;

    case 'transcript':
      // Display live transcript to user
      final text = data['text'] as String;
      final isFinal = data['isFinal'] as bool;
      final words = data['words'] as List;

      if (isFinal) {
        // Add to transcript display
        setState(() {
          transcriptLines.add(text);
        });
      } else {
        // Show interim result (optional)
        setState(() {
          currentInterim = text;
        });
      }
      break;

    case 'error':
      showError(data['message']);
      break;
  }
};
```

**UI during interview:**
```dart
// Show live transcript
ListView.builder(
  itemCount: transcriptLines.length,
  itemBuilder: (context, index) {
    return Text(transcriptLines[index]);
  },
);

// Show interim (optional)
if (currentInterim.isNotEmpty) {
  Text(
    currentInterim,
    style: TextStyle(color: Colors.grey),
  );
}
```

---

### Phase 3: End Interview

**When user clicks "End Interview":**
```dart
void endInterview() async {
  // 1. Send complete action to transcription service
  ws.send(jsonEncode({'action': 'complete'}));

  // 2. Listen for completion
  // (WebSocket will send session_complete message)

  // 3. Disconnect from LiveKit
  await room.disconnect();

  // 4. Show loading state
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      content: Row(children: [
        CircularProgressIndicator(),
        SizedBox(width: 16),
        Text('Analyzing your interview...'),
      ]),
    ),
  );

  // 5. Wait for session_complete message
  // Then poll backend for results or wait for push notification
}
```

**Handle session completion:**
```dart
case 'session_complete':
  // Transcription service has sent data to backend
  final message = data['message']; // "Session completed. Analysis in progress..."

  // Option A: Poll backend for results
  pollForAnalysis(interviewId);

  // Option B: Wait for push notification (if implemented)
  // Option C: Navigate to results page that polls
  break;
```

---

### Phase 4: Get Analysis Results

**Poll backend for analysis:**
```dart
Future<InterviewAnalysis?> pollForAnalysis(String interviewId) async {
  for (int i = 0; i < 30; i++) { // Try for 30 seconds
    await Future.delayed(Duration(seconds: 1));

    final response = await http.get(
      Uri.parse('$backendUrl/api/interviews/$interviewId'),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      if (data['status'] == 'completed') {
        return InterviewAnalysis.fromJson(data);
      }
    }
  }

  // Timeout - analysis taking too long
  return null;
}
```

**Display analysis results:**
```dart
class InterviewAnalysis {
  final String id;
  final String transcript;
  final double duration;
  final String? recordingUrl;

  final Metrics metrics;
  final AIAnalysis aiAnalysis;

  InterviewAnalysis.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        transcript = json['transcript'],
        duration = json['duration'],
        recordingUrl = json['recordingUrl'],
        metrics = Metrics.fromJson(json['metrics']),
        aiAnalysis = AIAnalysis.fromJson(json['aiAnalysis']);
}

class Metrics {
  final int averagePace;
  final int totalWords;
  final int fillerCount;
  final int pauseCount;
  final List<PacePoint> paceTimeline;

  Metrics.fromJson(Map<String, dynamic> json)
      : averagePace = json['averagePace'],
        totalWords = json['totalWords'],
        fillerCount = json['fillerCount'],
        pauseCount = json['pauseCount'],
        paceTimeline = (json['paceTimeline'] as List)
            .map((e) => PacePoint.fromJson(e))
            .toList();
}

class AIAnalysis {
  final double overallScore;
  final String summary;
  final String paceAnalysis;
  final String fillerAnalysis;
  final double confidenceScore;
  final List<Improvement> improvements;
  final List<String> highlights;

  AIAnalysis.fromJson(Map<String, dynamic> json)
      : overallScore = json['overallScore'],
        summary = json['summary'],
        paceAnalysis = json['paceAnalysis'],
        fillerAnalysis = json['fillerAnalysis'],
        confidenceScore = json['confidenceScore'],
        improvements = (json['improvements'] as List)
            .map((e) => Improvement.fromJson(e))
            .toList(),
        highlights = List<String>.from(json['highlights']);
}

class Improvement {
  final String title;
  final double timestamp;
  final String description;

  Improvement.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        timestamp = json['timestamp'],
        description = json['description'];
}
```

---

## UI Components to Build

### 1. Interview Screen (During)
```dart
- Live transcript display (scrollable)
- Audio visualizer (optional)
- Timer
- "End Interview" button
- Connection status indicator
```

### 2. Analysis Results Screen
```dart
- Overall score (circular progress indicator)
- Audio player (if recording available)
- Transcript with timestamps
- Pace timeline chart (30s segments)
- Filler words section (clickable timestamps → jump to recording)
- Pauses section
- AI insights cards
- Improvements list (with timestamps)
- Highlights list
- "Practice Again" button
```

### 3. Timeline with Clickable Timestamps
```dart
// When user clicks improvement/filler timestamp
void jumpToTimestamp(double timestamp) {
  if (audioPlayer != null && recordingUrl != null) {
    audioPlayer.seek(Duration(milliseconds: (timestamp * 1000).toInt()));
  }
}
```

---

## WebSocket Message Types

### Messages You Send:
```dart
// Start transcription
{'action': 'start', 'roomName': '...', 'participantIdentity': '...'}

// Stop (cancel interview)
{'action': 'stop'}

// Complete (end interview, trigger analysis)
{'action': 'complete'}
```

### Messages You Receive:
```dart
// Session started
{'type': 'started', 'message': '...'}

// Live transcript (frequent)
{'type': 'transcript', 'text': '...', 'isFinal': true/false, 'words': [...]}

// Session completed (after 'complete' action)
{'type': 'session_complete', 'message': 'Session completed. Analysis in progress...'}

// Stopped
{'type': 'stopped', 'message': '...'}

// Error
{'type': 'error', 'message': '...'}
```

---

## State Management Suggestions

### Interview State
```dart
enum InterviewState {
  idle,           // Not started
  connecting,     // Connecting to services
  recording,      // Interview in progress
  completing,     // Sent complete, waiting for confirmation
  analyzing,      // Backend processing
  completed,      // Analysis ready
  error,          // Something failed
}
```

### Data Model
```dart
class InterviewSession {
  String roomName;
  String userId;
  InterviewState state;
  List<String> transcriptLines;
  String currentInterim;
  DateTime? startedAt;
  DateTime? endedAt;
  String? interviewId; // Set after completion
  InterviewAnalysis? analysis; // Set after backend processing
}
```

---

## Error Handling

**WebSocket connection failed:**
```dart
ws.onError = (error) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Connection Error'),
      content: Text('Could not connect to transcription service. Please try again.'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text('OK'),
        ),
      ],
    ),
  );
};
```

**Backend analysis timeout:**
```dart
if (analysis == null) {
  // Show error but allow user to check back later
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Analysis Taking Longer Than Expected'),
      content: Text('Your interview is being processed. Check back in a few minutes.'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            // Navigate to history/dashboard
          },
          child: Text('OK'),
        ),
      ],
    ),
  );
}
```

---

## Environment Configuration

```dart
// config.dart
class AppConfig {
  static const String backendUrl =
      String.fromEnvironment('BACKEND_URL', defaultValue: 'http://localhost:3000');

  static const String transcriptionServiceUrl =
      String.fromEnvironment('TRANSCRIPTION_URL', defaultValue: 'ws://localhost:3001');

  // Production
  // static const String backendUrl = 'https://api.yourapp.com';
  // static const String transcriptionServiceUrl = 'wss://transcription.yourapp.com';
}
```

---

## Dependencies

Add to `pubspec.yaml`:
```yaml
dependencies:
  flutter:
    sdk: flutter

  # WebSocket
  web_socket_channel: ^2.4.0

  # HTTP requests
  http: ^1.1.0

  # LiveKit SDK
  livekit_client: ^2.0.0

  # Audio player (for playing recording)
  just_audio: ^0.9.36

  # Charts (for pace timeline)
  fl_chart: ^0.65.0

  # State management (choose one)
  provider: ^6.1.1
  # riverpod: ^2.4.9
  # bloc: ^8.1.2
```

---

## Testing

**Mock WebSocket responses:**
```dart
// For testing UI without real services
class MockTranscriptionService {
  void simulateTranscript() {
    Timer.periodic(Duration(seconds: 2), (timer) {
      final mockMessage = {
        'type': 'transcript',
        'text': 'This is a mock transcript line ${timer.tick}',
        'isFinal': true,
        'words': [],
      };

      // Trigger your message handler
      handleWebSocketMessage(jsonEncode(mockMessage));
    });
  }
}
```

---

## Quick Reference

| Service | URL (Dev) | Purpose |
|---------|-----------|---------|
| Backend | http://localhost:3000 | Token generation, analysis results |
| Transcription Service | ws://localhost:3001 | Live transcription via WebSocket |
| LiveKit | wss://your-project.livekit.cloud | Audio streaming |

---

## Related Files in Other Services

**Transcription Service:**
- `src/handlers/websocket.ts` - Handles your WebSocket messages
- `src/services/TranscriptionSession.ts` - Sends transcripts to you

**Backend:**
- `/api/livekit/token` - Generates LiveKit access tokens
- `/api/interviews/analyze` - Receives transcription data, returns analysis
- `/api/interviews/:id` - Returns analysis results
