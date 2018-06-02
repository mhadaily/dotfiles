#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

change_default_fish() {

    declare -r LOCAL_FISH_SHELL_CONFIG_FILE="$HOME/.fish.local"

}

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    print_in_purple "\n   FishShell\n\n"

    brew_install "Fish" "fish" \
        && change_default_fish
}

main
