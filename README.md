About AMICodeCommitKeygen
==============

This script has been specifically written to run on a Ubuntu 14.04 LTS x64 EC2 instance. It creates a new SSH key and configures the key to work with CodeCommit. This is particularly useful if you need to create your own AMI with a preconfigured SSH key (for example to download source code or configurations from CodeCommit).


To Run

        bash AMICodeCommitKeygen.sh

Note: This script will create the SSH key for the user running script. You may or may not want this user to be root.

Credits: This script automates https://github.com/andrewpuch/code-commit-setup