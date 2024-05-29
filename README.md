# OpenSSH InfoLeak Exploit

This repository contains a script for exploiting an information leak in OpenSSH. The exploit is designed to demonstrate a vulnerability by leveraging certain OpenSSH features.

## By SleepTheGod

![Banner](https://i.ibb.co/f17zjLF/cooltext457913101600828.png)

## Script Overview

This script performs the following tasks:

1. Displays a flashing ASCII art banner.
2. Updates and upgrades the system packages.
3. Sets variables for source file, output file, host, port, dump file, and hash file.
4. Lists files in the current directory.
5. Calculates the SHA-1 checksum of the source file.
6. Compiles the source file with specified libraries.
7. Displays usage information for the compiled executable.
8. Runs the compiled executable with specific options and checks for successful execution.

## Usage

To run this script, follow these steps:

1. Clone the repository:
    ```sh
    git clone https://github.com/SleepTheGod/OpenSSH-InfoLeak.git
    cd OpenSSH-InfoLeak
    ```

2. Make the script executable:
    ```sh
    chmod +x Infoleak.sh
    ```

3. Run the script:
    ```sh
    ./Infoleak.sh
    ```
