#!/bin/bash

# Start the Astro dev server in the background
npm run dev &

# Wait for the server to be ready
echo "Waiting for Astro dev server to start..."
while ! curl -s http://localhost:4321 > /dev/null 2>&1; do
  sleep 1
done

echo "Server is ready at http://localhost:4321"

# Open Simple Browser in VS Code (Codespaces)
if [ -n "$CODESPACES" ]; then
  code --open-url "http://localhost:4321"
fi

# Keep the script running to maintain the dev server
wait
