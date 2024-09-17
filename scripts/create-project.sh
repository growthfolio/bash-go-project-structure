#!/bin/bash

# Function to log messages
log_message() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> setup.log
}

# Function to handle errors
handle_error() {
    echo "An error occurred: $1"
    exit 1
}

# Function to create directories with error handling
create_directory() {
    mkdir -p "$1" || handle_error "Failed to create directory $1"
    log_message "Directory created: $1"
}

# Function to create common files
create_common_files() {
    create_directory "$PROJECT_NAME/cmd/$PROJECT_NAME"
    touch $PROJECT_NAME/.env || handle_error "Failed to create .env"
    touch $PROJECT_NAME/go.mod || handle_error "Failed to create go.mod"
    touch $PROJECT_NAME/go.sum || handle_error "Failed to create go.sum"
    create_directory "$PROJECT_NAME/scripts"
    touch $PROJECT_NAME/scripts/Dockerfile || handle_error "Failed to create Dockerfile"
    touch $PROJECT_NAME/scripts/Makefile || handle_error "Failed to create Makefile"

    # Add basic content to main.go
    echo 'package main

import "fmt"

func main() {
    fmt.Println("Hello, World!")
}' > $PROJECT_NAME/cmd/$PROJECT_NAME/main.go || handle_error "Failed to create main.go"

    log_message "Common files created."
}

# General function to create project structure using array of directories
create_project_structure() {
    local dirs=("$@")
    for dir in "${dirs[@]}"; do
        create_directory "$dir"
    done
    create_common_files
}

# Function to create monolithic structure
create_monolith_structure() {
    local dirs=(
        "$PROJECT_NAME/internal/app"
        "$PROJECT_NAME/internal/config"
        "$PROJECT_NAME/pkg/utils"
        "$PROJECT_NAME/api"
        "$PROJECT_NAME/migrations"
    )
    create_project_structure "${dirs[@]}"
    echo "Monolithic project structure created."
}

# Function to create MVC structure
create_mvc_structure() {
    local dirs=(
        "$PROJECT_NAME/internal/models"
        "$PROJECT_NAME/internal/controllers"
        "$PROJECT_NAME/internal/views"
        "$PROJECT_NAME/pkg/utils"
    )
    create_project_structure "${dirs[@]}"
    echo "MVC project structure created."
}

# Function to create Hexagonal structure
create_hexagonal_structure() {
    local dirs=(
        "$PROJECT_NAME/internal/domain"
        "$PROJECT_NAME/internal/adapters/db"
        "$PROJECT_NAME/internal/adapters/logger"
        "$PROJECT_NAME/internal/adapters/server"
        "$PROJECT_NAME/internal/ports"
        "$PROJECT_NAME/pkg/utils"
    )
    create_project_structure "${dirs[@]}"
    echo "Hexagonal project structure created."
}

# Function to create Clean Architecture structure
create_clean_structure() {
    local dirs=(
        "$PROJECT_NAME/internal/entities"
        "$PROJECT_NAME/internal/usecases"
        "$PROJECT_NAME/internal/interfaces"
        "$PROJECT_NAME/internal/infrastructure/db"
        "$PROJECT_NAME/internal/infrastructure/logger"
        "$PROJECT_NAME/internal/infrastructure/server"
        "$PROJECT_NAME/pkg/utils"
    )
    create_project_structure "${dirs[@]}"
    echo "Clean Architecture project structure created."
}

# Function to create Microservices structure
create_microservices_structure() {
    local dirs=(
        "$PROJECT_NAME/services/$PROJECT_NAME/internal/app"
        "$PROJECT_NAME/services/$PROJECT_NAME/internal/config"
        "$PROJECT_NAME/services/$PROJECT_NAME/pkg/utils"
        "$PROJECT_NAME/services/$PROJECT_NAME/api"
        "$PROJECT_NAME/services/$PROJECT_NAME/migrations"
    )
    create_project_structure "${dirs[@]}"
    echo "Microservices project structure created."
}

# Function to create CQRS structure
create_cqrs_structure() {
    local dirs=(
        "$PROJECT_NAME/internal/command"
        "$PROJECT_NAME/internal/query"
        "$PROJECT_NAME/internal/domain"
        "$PROJECT_NAME/internal/infrastructure/db"
        "$PROJECT_NAME/internal/infrastructure/logger"
        "$PROJECT_NAME/internal/infrastructure/server"
        "$PROJECT_NAME/pkg/utils"
    )
    create_project_structure "${dirs[@]}"
    echo "CQRS project structure created."
}

# Main script

# Check if a flag is provided for the project name
while getopts ":n:a:" opt; do
    case ${opt} in
        n ) PROJECT_NAME=$OPTARG ;;
        a ) ARCHITECTURE_NUMBER=$OPTARG ;;
        \? ) echo "Invalid option: -$OPTARG" ;;
    esac
done

# If the project name was not provided via flags, prompt for it
if [[ -z "$PROJECT_NAME" ]]; then
    read -p "Enter the project name: " PROJECT_NAME
fi

# Validate project name
if [[ -z "$PROJECT_NAME" || "$PROJECT_NAME" =~ [^a-zA-Z0-9_-] ]]; then
    echo "Invalid project name. Please use only alphanumeric characters, dashes, or underscores."
    exit 1
fi

# Check if the project directory already exists
if [[ -d "$PROJECT_NAME" ]]; then
    read -p "The directory '$PROJECT_NAME' already exists. Do you want to overwrite it? (y/n): " OVERWRITE
    if [[ "$OVERWRITE" != "y" ]]; then
        echo "Operation canceled."
        exit 1
    fi
fi

# If architecture number was not provided via flags, prompt for it
if [[ -z "$ARCHITECTURE_NUMBER" ]]; then
    # Display architecture menu
    echo "Select the desired architecture:"
    echo "1 - Clean Architecture"
    echo "2 - Microservices Structure"
    echo "3 - Hexagonal Structure"
    echo "4 - MVC Structure"
    echo "5 - Monolith Structure"
    echo "6 - CQRS Structure"
    
    # Read the user's choice
    read -p "Enter the number of the desired architecture: " ARCHITECTURE_NUMBER
fi

# Execute the corresponding function based on the user's choice
case $ARCHITECTURE_NUMBER in
    1)
        create_clean_structure
        ;;
    2)
        create_microservices_structure
        ;;
    3)
        create_hexagonal_structure
        ;;
    4)
        create_mvc_structure
        ;;
    5)
        create_monolith_structure
        ;;
    6)
        create_cqrs_structure
        ;;
    *)
        echo "Invalid selection. Please choose a number between 1 and 6."
        exit 1
        ;;
esac

# Prompt to initialize the Go module
read -p "Do you want to initialize the Go module now? (y/n): " INIT_GO_MODULE
if [[ "$INIT_GO_MODULE" == "y" ]]; then
    cd $PROJECT_NAME && go mod init $PROJECT_NAME || handle_error "Failed to initialize Go module"
fi

echo "Project structure for '$PROJECT_NAME' with selected architecture created successfully."
