#!/bin/bash
# This script is used to deploy the application on the server

# Stop the script if any command fails
set -e

# Variables
APP_NAME="FlaskApp"
DOCKER_IMAGE_NAME="flaskapp"
DEV_BRANCH="dev"
STAGING_BRANCH="staging"

echo "Construct the Docker image..."
docker build -t $DOCKER_IMAGE_NAME .

echo "Execute the tests..."
docker run --rm $DOCKER_IMAGE_NAME python -m pytest tests/
TEST_STATUS=$?

if [ $TEST_STATUS -eq 0 ]; then
    echo "Tests passed successfully"
else
    echo "Tests failed"
    exit 1
fi