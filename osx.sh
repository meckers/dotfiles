# Mostly copied from: https://github.com/mathiasbynens/dotfiles/blob/master/.osx

defaults write com.apple.dock no-glass -bool true
defaults write com.apple.screencapture disable-shadow -bool true
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.Safari IncludeDebugMenu -bool true

# Finder and windows
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults write com.apple.finder WarnOnEmptyTrash -bool false
defaults write com.apple.finder EmptyTrashSecurely -bool true
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true
defaults write -g PMPrintingExpandedStateForPrint -bool true

# Keyboard and mouse
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
defaults write NSGlobalDomain KeyRepeat -int 0
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
defaults write com.apple.terminal FocusFollowsMouse -string true
defaults write org.x.X11 wm_ffm -boolean true

chflags nohidden ~/Library

killall Finder Dock
