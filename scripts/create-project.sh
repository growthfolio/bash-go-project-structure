#!/bin/bash

# Function to create common files
create_common_files() {
    touch $PROJECT_NAME/.env
    touch $PROJECT_NAME/go.mod
    touch $PROJECT_NAME/go.sum
    touch $PROJECT_NAME/cmd/$PROJECT_NAME/main.go
    mkdir -p $PROJECT_NAME/scripts
    touch $PROJECT_NAME/scripts/Dockerfile
    touch $PROJECT_NAME/scripts/Makefile
    echo "Common files created."
}

# Function to create monolithic structure
create_monolith_structure() {
    mkdir -p $PROJECT_NAME/cmd/$PROJECT_NAME
    mkdir -p $PROJECT_NAME/internal/app
    mkdir -p $PROJECT_NAME/internal/config
    mkdir -p $PROJECT_NAME/pkg/utils
    mkdir -p $PROJECT_NAME/api
    mkdir -p $PROJECT_NAME/migrations
    create_common_files
    echo "Monolithic project structure created."
}

# Function to create MVC structure
create_mvc_structure() {
    mkdir -p $PROJECT_NAME/cmd/$PROJECT_NAME
    mkdir -p $PROJECT_NAME/internal/models
    mkdir -p $PROJECT_NAME/internal/controllers
    mkdir -p $PROJECT_NAME/internal/views
    mkdir -p $PROJECT_NAME/pkg/utils
    create_common_files
    echo "MVC project structure created."
}

# Function to create Hexagonal structure
create_hexagonal_structure() {
    mkdir -p $PROJECT_NAME/cmd/$PROJECT_NAME
    mkdir -p $PROJECT_NAME/internal/domain
    mkdir -p $PROJECT_NAME/internal/adapters/db
    mkdir -p $PROJECT_NAME/internal/adapters/logger
    mkdir -p $PROJECT_NAME/internal/adapters/server
    mkdir -p $PROJECT_NAME/internal/ports
    mkdir -p $PROJECT_NAME/pkg/utils
    create_common_files
    echo "Hexagonal project structure created."
}

# Function to create Clean Architecture structure
create_clean_structure() {
    mkdir -p $PROJECT_NAME/cmd/$PROJECT_NAME
    mkdir -p $PROJECT_NAME/internal/entities
    mkdir -p $PROJECT_NAME/internal/usecases
    mkdir -p $PROJECT_NAME/internal/interfaces
    mkdir -p $PROJECT_NAME/internal/infrastructure/db
    mkdir -p $PROJECT_NAME/internal/infrastructure/logger
    mkdir -p $PROJECT_NAME/internal/infrastructure/server
    mkdir -p $PROJECT_NAME/pkg/utils
    create_common_files
    echo "Clean Architecture project structure created."
}

# Function to create Microservices structure
create_microservices_structure() {
    mkdir -p $PROJECT_NAME/services/$PROJECT_NAME/cmd/$PROJECT_NAME
    mkdir -p $PROJECT_NAME/services/$PROJECT_NAME/internal/app
    mkdir -p $PROJECT_NAME/services/$PROJECT_NAME/internal/config
    mkdir -p $PROJECT_NAME/services/$PROJECT_NAME/pkg/utils
    mkdir -p $PROJECT_NAME/services/$PROJECT_NAME/api
    mkdir -p $PROJECT_NAME/services/$PROJECT_NAME/migrations
    create_common_files
    echo "Microservices project structure created."
}

# Function to create CQRS structure
create_cqrs_structure() {
    mkdir -p $PROJECT_NAME/cmd/$PROJECT_NAME
    mkdir -p $PROJECT_NAME/internal/command
    mkdir -p $PROJECT_NAME/internal/query
    mkdir -p $PROJECT_NAME/internal/domain
    mkdir -p $PROJECT_NAME/internal/infrastructure/db
    mkdir -p $PROJECT_NAME/internal/infrastructure/logger
    mkdir -p $PROJECT_NAME/internal/infrastructure/server
    mkdir -p $PROJECT_NAME/pkg/utils
    create_common_files
    echo "CQRS project structure created."
}

# Main script

# Prompt for project name
read -p "Enter the project name: " PROJECT_NAME

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

echo "Project structure for '$PROJECT_NAME' with selected architecture created successfully."
