j Installing My required application in a new system

### This installation process is based on an ArcolinuxD installation without any choice in calamares

- Pre-Installation Step
  - Set NOPASSWD: in sudoers file for users in wheel group (usually visudo)
  - Add current user to whhel group
  - Get My dmenu patch from https://github.com/umbe77/dmenu and install it with sudo make clean install
  - Get My st patch from https://github.com/umbe77/st and install it with sudo make clean install
- Run ./install.sh
- Post-Intallation commands
  - Install nvm and node
    - curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
    - `nvm install 12` in order to install nodejs 12
