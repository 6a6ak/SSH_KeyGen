# SSH Key Management Scripts
This repository contains two primary scripts: SSH_KeyGen and SSHKey_Injection. These are designed to simplify the process of generating and deploying SSH keys for secure communication between machines.

# SSH_KeyGen
Overview
The SSH_KeyGen script automates the process of generating an SSH key pair and storing it in the ~/.ssh directory of the current machine. The machine can be either a local workstation or a remote server. Upon successful generation, the script will display the public key in the terminal, which can then be copied and used for SSH connections and GitHub repositories.

# Usage
Run the script: ./SSH_KeyGen.sh
Follow the on-screen prompts to generate your SSH key.
SSHKey_Injection
# Overview
The SSHKey_Injection script not only generates an SSH key but also automatically copies it to a specified server. The script will prompt for the server's IP address, username, and the password to establish the SSH connection.

# Usage
Run the script: ./SSHKey_Injection.sh
Enter the IP address, username, and password when prompted.
The script will confirm whether the key has been successfully installed.
