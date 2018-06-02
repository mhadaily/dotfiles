#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Misc\n\n"

execute "defaults write com.apple.ActivityMonitor OpenMainWindow -bool true" \
    "Show the main window when launching Activity Monitor"

execute "defaults write com.apple.ActivityMonitor IconType -int 5" \
    "Visualize CPU usage in the Activity Monitor Dock icon"

execute "defaults write com.apple.ActivityMonitor ShowCategory -int 0" \
    "Show all processes in Activity Monitor"

execute "defaults write -g AppleKeyboardUIMode -int 3" \
    "Enable full keyboard access for all controls"

execute "defaults write com.apple.ActivityMonitor SortColumn -string 'CPUUsage'" \
    "Sort Activity Monitor results by CPU usage"

execute "defaults write com.apple.ActivityMonitor SortDirection -int 0" \
    "Sort Activity Monitor results by CPU usage"    

execute "defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true" \
    "Prevent Time Machine from prompting to use new hard drives as backup volume"   

execute "defaults write com.apple.terminal StringEncodings -array 4" \
    "Only use UTF-8 in Terminal.app"        

# Add iOS & Watch Simulator to Launchpad
sudo ln -sf "/Applications/Xcode.app/Contents/Developer/Applications/Simulator.app" "/Applications/Simulator.app"
sudo ln -sf "/Applications/Xcode.app/Contents/Developer/Applications/Simulator (Watch).app" "/Applications/Simulator (Watch).app"
