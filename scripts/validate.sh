#!/bin/bash
set -e

echo "Waiting for application to start..."
sleep 30

for i in {1..10}; do
  if curl -f http://localhost/hello; then
    echo "Application is healthy"
    exit 0
  fi
  echo "App not ready yet. Retrying..."
  sleep 10
done

echo "Application failed health check"
exit 1
