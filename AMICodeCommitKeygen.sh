#! /bin/bash

# Copy the config
cp config $HOME/.ssh/config
chmod 600 config

# Navigate to the .ssh folder (for the curent user)
cd $HOME/.ssh

# Create the new ssh key
ssh-keygen -f id_rsa -t rsa -N ''

# Prompt the user to add the key to IAM
printf "Add the key to the IAM user: \n\n"
cat id_rsa.pub
printf "\n\n"

echo "Enter the SSH Key ID from IAM:"
read key_id

# Update the config
sed -i -e "s/[YOUR_SSH_KEY_ID_FROM_IAM]/$key_id/g" config

# Remove strict host key checking
echo "    StrictHostKeyChecking no" >> /etc/ssh/ssh_config

printf "\n\nConfiguration complete. You can now create the AMI."
