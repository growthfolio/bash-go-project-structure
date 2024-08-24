
# Bash Go Project Structure

This repository contains a Bash script to automate the creation of a clean architecture directory structure for Go projects.

## How to Use Directly from the Remote Repository

You can use the script directly from this repository without cloning it first. Follow the steps below:

1. Open your terminal and navigate to the directory where you want to create your Go project.

2. Run the following command, replacing `your-project-name` with the desired name of your project:

   ```bash
   bash <(curl -s https://raw.githubusercontent.com/felipemacedo1/bash-go-project-structure/main/scripts/go_clean_setup.sh) your-project-name
   ```

3. The clean architecture directory structure for your Go project will be created in the current directory.

## Directory Structure Created

- cmd/
- internal/
- pkg/
- api/
- migrations/
- scripts/

## Example

If you want to create a project called `my-go-app`, run:

```bash
bash <(curl -s https://raw.githubusercontent.com/felipemacedo1/bash-go-project-structure/main/scripts/go_clean_setup.sh) my-go-app
```

This will create the directory structure inside a folder named `my-go-app`.

## Additional Information

Feel free to customize the script or the generated structure to fit your project's needs. If you encounter any issues or have suggestions, please open an issue or contribute to the repository.
