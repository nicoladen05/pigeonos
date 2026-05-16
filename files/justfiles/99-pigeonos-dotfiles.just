[group('PigeonOS')]
install-dotfiles: install-dotfiles-zed

[group('PigeonOS')]
install-dotfiles-zed:
    #!/usr/bin/env bash
    set -euo pipefail

    mkdir -p "$HOME/.var/app/dev.zed.Zed/config/zed"

    if [ -d /etc/skel/.var/app/dev.zed.Zed/config/zed ]; then
        cp -r /etc/skel/.var/app/dev.zed.Zed/config/zed/. "$HOME/.var/app/dev.zed.Zed/config/zed/"
    else
        echo "/etc/skel/.var/app/dev.zed.Zed/config/zed does not exist"
        exit 1
    fi
