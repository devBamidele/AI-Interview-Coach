# Frontend Integration: Get User Interviews

## Endpoint
```
GET /interviews/user/:participantIdentity
```

## Description
Fetches all interview analyses for a specific user, sorted by newest first.

## Request

### URL Parameters
- `participantIdentity` (string, required): The participant's unique identifier

### Example Request
```typescript
const participantIdentity = "user123";
const response = await fetch(
  `http://localhost:3000/interviews/user/${participantIdentity}`
);
const data = await response.json();
```

## Response

### Success Response (200 OK)
```typescript
{
  "interviews": [
    {
      "id": "675a1b2c3d4e5f6a7b8c9d0e",
      "userId": {
        "email": "user@example.com",
        "name": "John Doe"
      },
      "createdAt": "2025-10-06T10:30:00.000Z",
      "duration": 180,
      "transcript": "Hello, my name is...",
      "recordingUrl": "https://...",
      "metrics": {
        "averagePace": 145,
        "totalWords": 435,
        "fillerCount": 12,
        "pauseCount": 8,
        "paceTimeline": [
          {
            "timestamp": 0,
            "wpm": 150,
            "segmentStart": 0,
            "segmentEnd": 30
          }
        ]
      },
      "aiAnalysis": {
        "overallScore": 8,
        "summary": "Strong performance with clear communication...",
        "paceAnalysis": "Consistent speaking pace around 145 WPM...",
        "fillerAnalysis": "Moderate use of filler words...",
        "confidenceScore": 7.5,
        "improvements": [
          {
            "title": "Reduce filler words during technical explanations",
            "timestamp": 45,
            "description": "At 45s, noticed frequent 'um' usage..."
          }
        ],
        "highlights": [
          "Clear and confident introduction",
          "Strong technical knowledge demonstration"
        ]
      },
      "status": "completed"
    }
  ],
  "total": 5
}
```

### Response Fields

#### Root Level
- `interviews` (array): Array of interview objects
- `total` (number): Total count of interviews

#### Interview Object
- `id` (string): Interview unique identifier
- `userId` (object): User information
  - `email` (string): User's email
  - `name` (string): User's name
- `createdAt` (string): ISO timestamp when interview was created
- `duration` (number): Interview duration in seconds
- `transcript` (string): Full interview transcript
- `recordingUrl` (string, optional): URL to recording if available
- `metrics` (object): Speech metrics
  - `averagePace` (number): Average words per minute
  - `totalWords` (number): Total words spoken
  - `fillerCount` (number): Number of filler words detected
  - `pauseCount` (number): Number of significant pauses
  - `paceTimeline` (array): WPM timeline data for visualization
- `aiAnalysis` (object, optional): AI-generated analysis
  - `overallScore` (number): Overall performance score (1-10)
  - `summary` (string): Performance summary
  - `paceAnalysis` (string): Speaking pace analysis
  - `fillerAnalysis` (string): Filler word pattern analysis
  - `confidenceScore` (number): Confidence rating (1-10)
  - `improvements` (array): Specific improvement suggestions with timestamps
  - `highlights` (array): Positive highlights from the interview
- `status` (string): Processing status: `"processing"`, `"completed"`, or `"failed"`

## Usage Examples

### React with TypeScript
```typescript
import { useEffect, useState } from 'react';

interface GetUserInterviewsResponse {
  interviews: Interview[];
  total: number;
}

export function UserInterviewHistory({ participantIdentity }: { participantIdentity: string }) {
  const [data, setData] = useState<GetUserInterviewsResponse | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    async function fetchInterviews() {
      try {
        const response = await fetch(
          `http://localhost:3000/interviews/user/${participantIdentity}`
        );

        if (!response.ok) {
          throw new Error('Failed to fetch interviews');
        }

        const data = await response.json();
        setData(data);
      } catch (err) {
        setError(err instanceof Error ? err.message : 'An error occurred');
      } finally {
        setLoading(false);
      }
    }

    fetchInterviews();
  }, [participantIdentity]);

  if (loading) return <div>Loading...</div>;
  if (error) return <div>Error: {error}</div>;
  if (!data) return null;

  return (
    <div>
      <h2>Interview History ({data.total} total)</h2>
      {data.interviews.map((interview) => (
        <div key={interview.id}>
          <h3>{new Date(interview.createdAt).toLocaleDateString()}</h3>
          <p>Status: {interview.status}</p>
          {interview.aiAnalysis && (
            <div>
              <p>Score: {interview.aiAnalysis.overallScore}/10</p>
              <p>{interview.aiAnalysis.summary}</p>
            </div>
          )}
        </div>
      ))}
    </div>
  );
}
```

### Next.js Server Component
```typescript
async function getUserInterviews(participantIdentity: string) {
  const res = await fetch(
    `http://localhost:3000/interviews/user/${participantIdentity}`,
    { cache: 'no-store' }
  );

  if (!res.ok) throw new Error('Failed to fetch interviews');
  return res.json();
}

export default async function InterviewHistoryPage({
  params
}: {
  params: { participantIdentity: string }
}) {
  const data = await getUserInterviews(params.participantIdentity);

  return (
    <div>
      <h1>Your Interviews ({data.total})</h1>
      {/* Render interviews */}
    </div>
  );
}
```

## Notes

- Interviews are sorted by `createdAt` in descending order (newest first)
- The `aiAnalysis` field will be `null` if the interview status is `"processing"` or `"failed"`
- Empty array is returned if no interviews found for the user
- Use the `status` field to show appropriate UI states (loading spinner for "processing", error message for "failed")
