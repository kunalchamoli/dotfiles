#!/bin/bash
# install_tools.sh

source "$(dirname "$0")/detect_os.sh"
if [ -z "$OS_TYPE" ]; then
    echo "Error: Could not detect operating system"
    exit 1
fi

case "$OS_TYPE" in
    "linux-apt")
        echo "Running Ubuntu/Debian installation..."
        "$(dirname "$0")/tools/install_linux_apt.sh"
        ;;
    # "linux-arch")
    #     echo "Running Arch Linux installation..."
    #     "$(dirname "$0")/tools/install_linux_arch.sh"
    #     ;;
    # "linux-fedora")
    #     echo "Running Fedora installation..."
    #     "$(dirname "$0")/tools/install_linux_fedora.sh"
    #     ;;
    "macos")
        echo "Running macOS installation..."
        "$(dirname "$0")/tools/install_macos.sh"
        ;;
    *)
        echo "Error: Unsupported OS type: $OS_TYPE"
        exit 1
        ;;
esac

echo "Tool installation completed!"