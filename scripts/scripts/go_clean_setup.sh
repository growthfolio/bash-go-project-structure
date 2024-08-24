#!/bin/bash

# Define the project name
PROJECT_NAME=$1

# Check if a project name was provided
if [ -z "$PROJECT_NAME" ]; then
    echo "Usage: $0 project_name"
    exit 1
fi

# Create the base directory
mkdir -p $PROJECT_NAME

# Create the cmd directory
mkdir -p $PROJECT_NAME/cmd/$PROJECT_NAME

# Create the internal directories
mkdir -p $PROJECT_NAME/internal/app/service
mkdir -p $PROJECT_NAME/internal/app/repository
mkdir -p $PROJECT_NAME/internal/app/handler
mkdir -p $PROJECT_NAME/internal/domain
mkdir -p $PROJECT_NAME/internal/infrastructure/db
mkdir -p $PROJECT_NAME/internal/infrastructure/logger
mkdir -p $PROJECT_NAME/internal/infrastructure/server
mkdir -p $PROJECT_NAME/internal/config

# Create the pkg directory
mkdir -p $PROJECT_NAME/pkg/utils

# Create the api directory
mkdir -p $PROJECT_NAME/api

# Create the migrations directory
mkdir -p $PROJECT_NAME/migrations

# Create the scripts directory
mkdir -p $PROJECT_NAME/scripts

# Create common files
touch $PROJECT_NAME/.env
touch $PROJECT_NAME/go.mod
touch $PROJECT_NAME/go.sum
touch $PROJECT_NAME/cmd/$PROJECT_NAME/main.go
touch $PROJECT_NAME/internal/domain/model.go
touch $PROJECT_NAME/internal/config/config.go
touch $PROJECT_NAME/scripts/Dockerfile
touch $PROJECT_NAME/scripts/Makefile

echo "Project structure for '$PROJECT_NAME' created successfully."