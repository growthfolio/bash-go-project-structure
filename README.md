
# Bash Go Project Structure

This repository contains Bash scripts to automate the creation of various Go project structures, including clean architecture, MVC, monolith, hexagonal, microservices, and CQRS architectures.

## How to Use Directly from the Remote Repository

You can use the script directly from this repository without cloning it first. Follow the steps below:

1. Open your terminal and navigate to the directory where you want to create your Go project.

2. Run the following command, replacing `your-project-name` with the desired name of your project and selecting the desired architecture by number:

   ```bash
   bash <(curl -s https://raw.githubusercontent.com/felipemacedo1/bash-go-project-structure/main/scripts/create-project.sh)
   ```

3. The script will prompt you to enter the project name and select the desired architecture by number. The selected architecture directory structure will be created in the current directory.

## Available Architectures

The script allows you to create project structures for the following architectures:

1. Clean Architecture
2. Microservices Structure
3. Hexagonal Structure
4. MVC Structure
5. Monolith Structure
6. CQRS Structure

## Directory Structure Created

Depending on the selected architecture, the script will create a directory structure that includes some or all of the following:

- cmd/
- internal/
- pkg/
- api/
- migrations/
- scripts/

## Example

If you want to create a project called `my-go-app`, follow the instructions:

1. Run the script:
   ```bash
   bash <(curl -s https://raw.githubusercontent.com/felipemacedo1/bash-go-project-structure/main/scripts/create-project.sh)
   ```

2. Enter `my-go-app` as the project name when prompted.

3. Select the desired architecture by entering the corresponding number.

This will create the directory structure inside a folder named `my-go-app`.

## Additional Information

Feel free to customize the script or the generated structure to fit your project's needs. If you encounter any issues or have suggestions, please open an issue or contribute to the repository.
