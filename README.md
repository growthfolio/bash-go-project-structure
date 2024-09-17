# Bash Go Project Structure

This repository contains Bash scripts to automate the creation of various Go project structures. You can quickly generate project structures like Clean Architecture, MVC, Monolith, Hexagonal, Microservices, and CQRS with ease, ensuring consistency and reducing the manual effort involved in setup.

## How to Use Directly from the Remote Repository

You can execute the script directly from this repository without needing to clone it. Follow these steps:

1. Open your terminal and navigate to the directory where you want to create your Go project.
2. Run the following command to download and execute the script:

   ```bash
   bash <(curl -s https://raw.githubusercontent.com/felipemacedo1/bash-go-project-structure/main/scripts/create-project.sh)
   ```

3. The script will prompt you to enter your desired project name and choose an architecture. Simply enter the project name and select the corresponding number for the architecture.

## Available Architectures

You can generate Go project structures for the following architectures:

1. **Clean Architecture**: Enforces a clear separation between domain, use cases, and infrastructure.
2. **Microservices Structure**: For modular systems that run independently and communicate via APIs.
3. **Hexagonal Structure**: Focuses on decoupling the core business logic from external dependencies.
4. **MVC Structure**: Follows the classic Model-View-Controller pattern.
5. **Monolith Structure**: A unified architecture where all components are integrated.
6. **CQRS Structure**: Segregates read and write operations into distinct models.

## Directory Structure Created

The script will generate a directory structure tailored to the selected architecture, including (but not limited to) the following directories:

- **cmd/**: The entry point for your application.
- **internal/**: For your core business logic and modules.
- **pkg/**: Contains shared packages that can be used by other projects.
- **api/**: Houses API-related files.
- **migrations/**: For managing database migrations.
- **scripts/**: Utility scripts for Docker, Makefile, etc.

## Example

To create a new Go project called `my-go-app`:

1. Run the script using:
   ```bash
   bash <(curl -s https://raw.githubusercontent.com/felipemacedo1/bash-go-project-structure/main/scripts/create-project.sh)
   ```

2. Enter `my-go-app` when prompted for the project name.

3. Select your desired architecture from the list.

The directory structure will be created in a folder named `my-go-app`.

## Customization and Contribution

Feel free to modify the script or the generated structure according to your project's specific needs. Contributions, suggestions, or bug reports are welcome—open an issue or submit a pull request to contribute.

---

