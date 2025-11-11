#!/bin/bash

echo "Installing system-drivers package..."
sudo pacman -U system-drivers-1.0.0-1-x86_64.pkg.tar.zst

if [ $? -eq 0 ]; then
    echo ""
    echo "Installation successful!"
    echo ""
    echo "Verification:"
    which system-drivers
    pacman -Ql system-drivers | grep /usr/bin/
    echo ""
    echo "You can now run 'system-drivers' or find it in your application menu."
else
    echo ""
    echo "Installation failed. Please check the error messages above."
fi
