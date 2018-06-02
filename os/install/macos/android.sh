#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "./utils.sh"

print_in_purple "\n   Android\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
printf "\n"

brew_install "Java8" "java8" "caskroom/cask" "cask"
brew_install "Android Sdk" "android-sdk" "caskroom/cask" "cask"
brew_install "Android Sdk" "android-ndk" "caskroom/cask" "cask"

sdkmanager --update
