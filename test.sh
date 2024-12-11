#!/bin/bash

read -r -d '' BODY <<'EOF'
### Name of the repository

test2

### Description of the repository

test2

### Visibility of the repository

public

### Topics for the repository

test, test1, test2
EOF

REPO_NAME=$(echo "$BODY" | sed -n '/### Name of the repository/{n;n;p}')
REPO_DESC=$(echo "$BODY" | sed -n '/### Description of the repository/{n;n;p}')
REPO_VIS=$(echo "$BODY" | sed -n '/### Visibility of the repository/{n;n;p}')
REPO_TOPICS=$(echo "$BODY" | sed -n '/### Topics for the repository/{n;n;p}')

echo "=== Result ==="
echo "REPO_NAME: ${REPO_NAME}"
echo "REPO_DESC: ${REPO_DESC}"
echo "REPO_VIS: ${REPO_VIS}"
echo "REPO_TOPICS: ${REPO_TOPICS}"
