#!/bin/bash

echo "=== Testing Backend API ==="
echo ""
echo "1. Fetching interviews for user: flutter-user"
echo "URL: http://localhost:3000/api/interviews/user/flutter-user"
echo ""

curl -X GET "http://localhost:3000/api/interviews/user/flutter-user" \
  -H "Content-Type: application/json" \
  -w "\n\nHTTP Status: %{http_code}\n" \
  2>/dev/null | jq '.' 2>/dev/null || curl -X GET "http://localhost:3000/api/interviews/user/flutter-user" -H "Content-Type: application/json" 2>/dev/null

echo ""
echo "=== End of Response ==="
