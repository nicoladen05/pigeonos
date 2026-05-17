[group('PigeonOS')]
install-dotfiles: install-dotfiles-zed

[group('PigeonOS')]
install-dotfiles-zed:
    #!/usr/bin/env bash
    set -euo pipefail

    mkdir -p "$HOME/.config/zed"

    if [ -d /etc/skel/.config/zed ]; then
        cp -r /etc/skel/.config/zed/. "$HOME/.config/zed/"
    else
        echo "/etc/skel/.config/zed does not exist"
        exit 1
    fi

    echo "Installed Zed dotfiles"
