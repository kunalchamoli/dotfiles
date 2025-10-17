#!/bin/bash
# detect_os.sh

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    if command -v apt-get &> /dev/null; then
        export PACKAGE_MANAGER="apt"
        export OS_TYPE="linux-apt"
    elif command -v pacman &> /dev/null; then
        export PACKAGE_MANAGER="pacman"
        export OS_TYPE="linux-arch"
    elif command -v dnf &> /dev/null; then
        export PACKAGE_MANAGER="dnf"
        export OS_TYPE="linux-fedora"
    fi
elif [[ "$OSTYPE" == "darwin"* ]]; then
    export PACKAGE_MANAGER="brew"
    export OS_TYPE="macos"
fi

echo "Detected OS: $OS_TYPE with package manager: $PACKAGE_MANAGER"