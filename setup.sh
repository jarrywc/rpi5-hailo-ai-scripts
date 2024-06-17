
# Via https://www.raspberrypi.com/documentation/accessories/ai-kit.html
# Update to Latest Software
sudo apt update && sudo apt full-upgrade

VERSION=""

sudo rpi-eeprom-update || echVERSION


sudo raspi-config

# Under Advanced Options > Bootloader Version, choose Latest. Then, exit raspi-config with Finish or the Escape key.

sudo rpi-eeprom-update -a

sudo reboot

# Make sure camera is connected & setup

# Make sure Hailo & M.2 Carrier Board

# Enable PCIe Gen 3.0
# Use https://www.raspberrypi.com/documentation/computers/raspberry-pi.html#pcie-gen-3-0

/boot/firmware/config.txt << "dtparam=pciex1_gen=3"

# Alt via sudo raspi-config
# Select Advanced Options.
# Select PCIe Speed.
# Choose Yes to enable PCIe Gen 3 mode.
# Select Finish to exit.

# Reboot your Raspberry Pi with sudo reboot for these settings to take effect.

sudo reboot

# Start installing Hailo

sudo apt install hailo-all

# Commit installation

sudo reboot

hailortcli fw-control identify