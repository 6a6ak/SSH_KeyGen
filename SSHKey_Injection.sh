#!/bin/bash

# Get the IP address from the user
read -p "Please enter the IP address of the server: " server_ip

# Get the username from the user
read -p "Please enter the username you wish to use: " username

# Get the key name from the user
read -p "Please enter the name for your SSH key: " key_name

# Generate an SSH key pair
ssh-keygen -t rsa -b 4096 -f ~/.ssh/${key_name}

# Check if the key was generated
if [ $? -eq 0 ]; then
  echo "SSH key (${key_name}) generated successfully and stored in ~/.ssh/${key_name}."
else
  echo "SSH key generation failed. Check permissions or disk space."
  exit 1
fi

# Add the key to the SSH agent
ssh-add ~/.ssh/${key_name}

# Check if the key was added to the agent
if [ $? -eq 0 ]; then
  echo "SSH key (${key_name}) has been added to the SSH agent successfully."
else
  echo "Failed to add SSH key (${key_name}) to the agent. Make sure the SSH agent is running."
  exit 1
fi

# Copy the public key to the server
ssh-copy-id -i ~/.ssh/${key_name}.pub ${username}@${server_ip}

# Check if the key was copied
if [ $? -eq 0 ]; then
  echo "SSH key (${key_name}) has been installed on the server at ${server_ip} for user ${username}. You can now SSH without a password."
else
  echo "Failed to install SSH key (${key_name}) on the server at ${server_ip} for user ${username}. Check network connectivity or server settings."
fi
