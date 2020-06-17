# Installing My required application in a new system

- Pre-Installation Step
  - Set NOPASSWD: in sudoers file for users in wheel group (usually visudo)
  - add current user to whhel group
- Run ./install.sh
- Post-Intallation script
  - use ```bash nvm install 12 ``` to install node 12 or the version you want at moment of installation
  - ```bash sudo snap install code --classic ``` to install vscode