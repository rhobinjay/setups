# Setup
1. Download and install vscode: https://code.visualstudio.com/
2. Install the following packages:
  - Ayu
  - HTML Snippets
  - Predawn Theme Kit


## Remote Development
1. Install Remote Development package
2. Generate ssh key or use an existing one -- id_rsa.pub
  ```
  ssh-keygen -f %USERPROFILE%/.ssh/vscode
  ```
3. Copy the ssh key from current OS to server -- ~/.ssh/authorized_keys
4. From vscode, Remote-SSH:
  Open configuration file > User_ssh_config
  eg. C:\Users\Rhobin\.ssh\config
5. Add host
  ```
  Host rpi
    HostName 192.168.0.107
    User ubuntu
  ```
6. Remote-SSH: Connect to Host...
