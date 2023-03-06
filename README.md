# User and Group Management Script

This script is a bash script for creating users and groups on a Linux system. It automates the process of creating directories, groups, and users, and also configures directory permissions.

## Usage

1. Clone the repository: `git clone https://github.com/Burntroll/linux-IaC.git`
2. Navigate to the project directory: `cd linux-IaC`
3. Open the script in your preferred text editor: `nano script.sh`
4. Modify the script to fit your specific needs. You can add or remove users and groups, change directory names, and modify permissions as needed.
5. Save the script and exit the text editor.
6. Run the script: `./script.sh`
7. Check the output of the script to ensure that all tasks were completed successfully.

## Features

- Creates directories for public, administration, sales, and security.
- Creates groups for administration, sales, and security.
- Creates users for Carlos Montana, Maria White, Joao Nogueira, Debora Carvalho, Sebastiana Freire, Roberto Ribeiro, Josefina Carvalho, Amanda Portela, and Rogerio Silvestre.
- Assigns users to their respective groups.
- Sets passwords for each user.
- Configures directory permissions.

## Permissions

- The /publico directory is set to be world-writable (777).
- The /adm, /ven, and /sec directories are set to be writable by the root user and members of their respective groups (770).

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).
