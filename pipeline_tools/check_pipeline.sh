#!/bin/bash
# Usage: bash check_pipeline.sh

PROJECT_ID="123"
TOKEN="your-gitlab-token"
URL="https://gitlab.com/api/v4/projects/$PROJECT_ID/pipelines?per_page=1"

STATUS=$(curl --silent --header "PRIVATE-TOKEN: $TOKEN" "$URL" | jq -r '.[0].status')

echo "Latest pipeline status: $STATUS"
if [[ "$STATUS" != "success" ]]; then
    echo "⚠️ Pipeline failed. Investigate immediately."
fi
