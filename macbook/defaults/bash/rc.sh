#!/bin/bash
# shellcheck source=/dev/null

alias cd='z'

source ~/.local/share/takashi/shared/defaults/bash/rc.sh

source ~/.local/share/takashi/macbook/defaults/bash/aliases.sh
# source ~/.local/share/takashi/macbook/defaults/bash/keyboard.sh
# source ~/.local/share/takashi/macbook/defaults/bash/prompt.sh
# source ~/.local/share/takashi/macbook/defaults/bash/shell.sh

# source ~/.local/share/takashi/macbook/defaults/bash/android.sh
source ~/.local/share/takashi/macbook/defaults/bash/brew.sh

# source ~/.local/share/takashi/macbook/defaults/bash/dotnet.sh

# source ~/.local/share/takashi/macbook/defaults/bash/mac.sh

# Fixes for AWS VPN Client
export DOTNET_SYSTEM_GLOBALIZATION_INVARIANT=1
