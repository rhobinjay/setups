reconn() {
    sudo networksetup -setnetworkserviceenabled Wi-Fi off && sleep 15 && sudo networksetup -setnetworkserviceenabled Wi-Fi on
}
