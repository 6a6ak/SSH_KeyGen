cd ~/.ssh
ls

# Ask for the user's email address
echo "Enter your email address:"
read email

# Retrieve the private and public key names
echo "Enter the name of your private key file (e.g., id_rsa):"
read private_key
public_key="${private_key}.pub"
ssh-keygen -t rsa -b 4096 -C "$email" -f ~/.ssh/${private_key}

# Print the path and names of the private and public keys
echo "Private key: ~/.ssh/${private_key}"
echo "Public key: ~/.ssh/${public_key}"

#copy this for authorize
cat ~/.ssh/${public_key}
