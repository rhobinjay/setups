# Git Setup

## Windows
1. Download and Install git
    https://git-scm.com/downloads
2. Add the following info:
      ```
      git config --global user.name "rhobinjay"
      git config --global user.email "rhobinjayfaigones@gmail.com"
      ```
    check info by:
      ```
      git config --global --list
      ```
3. Add the ssh key. https://github.com/settings/ssh/new
    - key: ~/.ssh/id_rsa.pub

## Ubuntu
1. Download and install git
    ```
    sudo apt install git
    ```
2. Add the following info:
    ```
    git config --global user.name "rhobinjay"
    git config --global user.email "rhobinjayfaigones@gmail.com"
    ```
3. Add the ssh key. https://github.com/settings/ssh/new
    ```
    ssh-keygen
    <enter>
    <enter>
    <enter>
    ```
    - key: ~/.ssh/id_rsa.pub

