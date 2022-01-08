# Disclaimer
echo "Warning, this script is currently for \"INTEL\" Macs \"ONLY\" and not been tested on M1 models."
echo "It may not work or mess up your mac if you are using Apple silicon or OSx version above Catalina."
echo ""
read -p "you may press enter to proced..." pause

# Fix Permission(If Needed)
sudo chown -R $(whoami):staff .

# Install HomeBrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## Installing packages from Brew
brew install watch wget htop nmap flac hudochenkov/sshpass/sshpass vlc wget speedtest_cli imagemagick nmap jq dockutil archey foobar2000 ncdu tmux ffmpeg nano gawk android-platform-tools

# If U Wnat 2 Uninstall HomeBrew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"

# Installing Cask
brew install caskroom/cask/brew-cask
## 註:在好像2020還2021年後cask要改用"brew install --cask"的用法
## Installing Cask Packages
brew install --cask smcfancontrol stats handbrake

# Installing Other Apps
## Google Chrome
### Download
curl "https://dl.google.com/chrome/mac/stable/CHFA/googlechrome.dmg" -o chrome.dmg
### Install
hdiutil mount chrome.dmg
cp -R /Volumes/Google\ Chrome/Google\ Chrome.app /Applications
### Clean Up
umount /Volumes/Google\ Chrome
rm chrome.dmg

## Postman
### Download
curl -L "https://dl.pstmn.io/download/latest/osx_64" -o postman.zip
### Install 
unzip postman.zip
mv Postman.app ~/Applications
### Clean Up
rm postman.zip

## VirtualBox
### Download
curl "https://download.virtualbox.org/virtualbox/6.1.28/VirtualBox-6.1.28-147628-OSX.dmg" -o VirtualBox-6.1.28-147628-OSX.dmg
### Install
hdiutil mount VirtualBox-6.1.28-147628-OSX.dmg
sudo installer -pkg /Volumes/VirtualBox/VirtualBox.pkg -target /
### Clean Up
umount /Volumes/VirtualBox
rm VirtualBox-6.1.28-147628-OSX.dmg

## ScrollReverser
### Download
curl "https://pilotmoon.com/downloads/ScrollReverser-1.8.1.zip" -o ScrollReverser-1.8.1.zip
### Install
mv Scroll\ Reverser.app /Applications
### Clean Up
rm ScrollReverser-1.8.1.zip
## balenaEtcher
### Download
curl -L "https://github.com/balena-io/etcher/releases/download/v1.5.122/balenaEtcher-1.5.122.dmg" -o balenaEtcher-1.5.122.dmg
### Install
hdiutil mount balenaEtcher-1.5.122.dmg
cp -R /Volumes/balenaEtcher\ 1.5.122/balenaEtcher.app /Applications
### Clean Up
umount /Volumes/balenaEtcher\ 1.5.122
rm balenaEtcher-1.5.122.dmg

## Android File Transfer
### Download
curl -L "https://dl.google.com/dl/androidjumper/mtp/current/AndroidFileTransfer.dmg" -o AndroidFileTransfer.dmg
### Install
hdiutil mount AndroidFileTransfer.dmg
cp -R /Volumes/Android\ File\ Transfer/Android\ File\ Transfer.app /Applications
### Clean Up
umount /Volumes/Android\ File\ Transfer
rm AndroidFileTransfer.dmg

## Android Studio
### Download
curl "https://r4---sn-un57sn76.gvt1.com/edgedl/android/studio/install/2020.3.1.25/android-studio-2020.3.1.25-mac.dmg" -o android-studio-2020.3.1.25-mac.dmg
### Install
hdiutil mount android-studio-2020.3.1.25-mac.dmg
cp -R /Volumes/Android\ Studio\ -\ Arctic\ Fox\ \|\ 2020.3.1\ Patch\ 3/Android\ Studio.app /Applications
### Clean Up
umount /Volumes/Android\ Studio\ -\ Arctic\ Fox\ \|\ 2020.3.1\ Patch\ 3
rm android-studio-2020.3.1.25-mac.dmg

## OpenJSK
### Download
curl  -O https://download.java.net/java/GA/jdk15.0.2/0d1cfde4252546c6931946de8db48ee2/7/GPL/openjdk-15.0.2_osx-x64_bin.tar.gz
### Install
tar -xf openjdk-15.0.2_osx-x64_bin.tar.gz
### Install
sudo mv jdk-15.0.2.jdk /Library/Java/JavaVirtualMachines/
### Clean Up
rm openjdk-15.0.2_osx-x64_bin.tar.gz
## Angry IP Scanner
### Download
curl  -OL https://github.com/angryip/ipscan/releases/download/3.7.6/ipscan-mac-3.7.6.zip
### Install
unzip ipscan-mac-3.7.6.zip
mv "Angry IP Scanner.app" /Applications/
### Clean Up
rm ipscan-mac-3.7.6.zip

## VScode
### Download
curl "https://az764295.vo.msecnd.net/stable/b3318bc0524af3d74034b8bb8a64df0ccf35549a/VSCode-darwin.zip" -o VSCode.zip
### Install
unzip VSCode.zip
cp -R Visual\ Studio\ Code.app /Applications
### Clean Up
rm VSCode.zip
rm -rf Visual\ Studio\ Code.app

## Teamviewer
### Download
curl -L "https://download.teamviewer.com/download/TeamViewer.dmg" -o TeamViewer.dmg
### Install       //May not be safe for TeamViewer 2 install as root
hdiutil mount TeamViewer.dmg
sudo installer -pkg /Volumes/TeamViewer/Install\ TeamViewer.app/Contents/Resources/Install\ TeamViewer.pkg  -target /
### Clean Up
umount /Volumes/TeamViewer
rm TeamViewer.dmg

## Wireshark
### Download
curl -L --insecure 'https://1.as.dl.wireshark.org/osx/Wireshark%203.4.9%20Intel%2064.dmg' -o Wireshark349.dmg
### Mount
hdiutil mount Wireshark349.dmg
### Install
cp -R /Volumes/Wireshark\ 3.4.9/Wireshark.app /Applications
sudo chown $(whoami):admin /dev/bp*
sudo chown $(whoami):admin /dev/bpf4
### Clean Up
umount /Volumes/Wireshark\ 3.4.9/
rm Wireshark349.dmg

# Write Mac Default Settings
## Fix Default Permission
sudo chown -R $(whoami):staff .
## Allow 3rd-party
sudo spctl --master-disable 
## Defualt Notification Time
defaults write com.apple.notificationcenterui bannerTime 3
## Dock Minimise Animation
defaults write com.apple.dock mineffect -string scale
## Large Icon Size
defaults write com.apple.dock largesize -int 100
## Show Hidden Files In Finder
defaults write com.apple.finder AppleShowAllFiles -bool YES
## Speed Up Mission Control Animations
defaults write com.apple.dock expose-animation-duration -float 0.1
## Auto Hide Dock
defaults write com.apple.dock "autohide" -bool "true"
## Remove Auto-Hide Dock Delay Time
defaults write com.apple.Dock autohide-delay -float 0
## Change D4 ScreentShot Location
mkdir ~/Desktop/桌面截圖
defaults write com.apple.screencapture "location" -string "~/Desktop/桌面截圖"
## Show File Extension In Finder
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
## Disable Warning When Changing The File Extension
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false"
## Don't Show Recent Used Apps On Dock
defaults write com.apple.dock "show-recents" -bool "false"
## Changing The D4 Menu Bar Icons
defaults delete com.apple.systemuiserver menuExtras
defaults write com.apple.systemuiserver menuExtras -array \
"/System/Library/CoreServices/Menu Extras/Bluetooth.menu" \
"/System/Library/CoreServices/Menu Extras/Clock.menu" \
"/System/Library/CoreServices/Menu Extras/Volume.menu"
## Show Battery Percentage On Menu Bar
defaults write com.apple.menuextra.battery ShowPercent YES
## Enable Magnification On Dock
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock tilesize -int 100
defaults write com.apple.dock largesize -int 128
## Menu Bar Date Format
defaults write com.apple.menuextra.clock DateFormat -string "EEE d MMM h:mm:ss a"
## Disable Finder Download Alert
defaults write com.apple.LaunchServices LSQuarantine -boolean false
## Disable Alert When Opening Apps Downloaded From Internet
defaults write com.apple.LaunchServices LSQuarantine -bool NO
## Disable Crash Reports 
defaults write com.apple.CrashReporter DialogType none
## Set App Size On Dock
defaults write com.apple.dock tilesize -integer 64
defaults write com.apple.dock largesize -int 128
## Disable Red Dot On Settings (Temporary)
defaults write com.apple.systempreferences AttentionPrefBundleIDs 0
## Disable Spelling Check
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticTextCompletionEnabled -bool false
## No More Stand-by (sleep) Mode Wihle Pressing Power Button
defaults write com.apple.loginwindow PowerButtonSleepsSystem -bool no
## Show Full Path in Finder Title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
## Expand Save Panel by Default
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true
defaults write -g NSNavPanelExpandedStateForSaveMode2 -bool true
## Disable Creation of Metadata Files on Network Volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
## Disable Creation of Metadata Files on USB Volumes
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
## Put Display to Sleep after 3 Minutes of Inactivity
sudo pmset displaysleep 3
## Put Computer to Sleep after 15 Minutes of Inactivity
sudo pmset sleep 15
## Set System Sleep Idle Time to 30 Minutes
sudo systemsetup -setcomputersleep 30
## Automatic Restart on System Freeze
sudo systemsetup -setrestartfreeze on
## Disable Auto-Correct
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
## Set a Fastter Keyboard Repeat Rate
defaults write NSGlobalDomain KeyRepeat 0
## Set a Shorter Delay Until Key Repeat
defaults write NSGlobalDomain InitialKeyRepeat 5

## Restart Services to Apply Changes
killall Dock
killall Finder
killall SystemUIServer

# Block Updates(Will Only Work If MacOs Is <= 10.15.4)
sudo /usr/sbin/softwareupdate --ignore "macOS Big Sur"
sudo /usr/sbin/softwareupdate --ignore "macOS Catalina 10.15.7"
sudo softwareupdate --schedule OFF
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate.plist AutomaticCheckEnabled -bool NO
sudo defaults write /Library/Preferences/com.apple.commerce AutoUpdateRestartRequired -bool false

# Detect SIP Stauts
SipStatus=$(csrutil status | awk -F " " '{print $5}' | awk -F "." '{print $1}')
clear
echo "SIP -> $SipStatus"
echo "Enter Password for Current User to Proced..."
sudo echo "Got privileged"

# Hidding the stuff that I don't want to see
if [ "$SipStatus" = "disabled" ]
then
    echo "SIP is Disabled, doing the magic now..."
    ## Mount as RW
    sudo mount -uw /
    ## Doing The Magic
    sudo chflags hidden /System/Applications/Chess.app 
    sudo chflags hidden /System/Applications/TV.app 
    sudo chflags hidden /System/Applications/Siri.app 
    sudo chflags hidden /System/Applications/Stocks.app  
    sudo chflags hidden /System/Applications/Music.app 
    sudo chflags hidden /System/Applications/Maps.app 
    sudo chflags hidden /System/Applications/FaceTime.app 
    sudo chflags hidden /System/Applications/Home.app 
    sudo chflags hidden /System/Applications/Books.app 
    sudo chflags hidden /System/Applications/Contacts.app 
    sudo chflags hidden /System/Applications/Mail.app 
    sudo chflags hidden /System/Applications/Reminders.app 
    sudo chflags hidden /System/Applications/Contacts.app 
    sudo chflags hidden /System/Applications/Dictionary.app 
    sudo chflags hidden /System/Applications/FindMy.app 
    sudo chflags hidden /System/Applications/Automator.app 
    sudo chflags hidden /System/Applications/Calendar.app 
    sudo chflags hidden /System/Applications/Messages.app 
    sudo chflags hidden /System/Applications/Launchpad.app
    sudo chflags hidden /System/Applications/Home.app
    sudo chflags hidden /System/Applications/Mission\ Control.app
    sudo chflags hidden /System/Applications/Photo\ Booth.app
    sudo chflags hidden /System/Applications/Photos.app
    sudo chflags hidden /System/Applications/Podcasts.app
    sudo chflags hidden /System/Applications/QuickTime\ Player.app
    sudo chflags hidden /System/Applications/Stickies.app
    sudo chflags hidden /System/Applications/Preview.app
    sudo chflags hidden /System/Applications/Reminders.app
    sudo chflags hidden /Applications/Safari.app 
    sudo chflags hidden /System/Applications/Image\ Capture.app 
    sudo chflags hidden /System/Applications/Notes.app
    ## Restart LaunchPad
    defaults write com.apple.dock ResetLaunchPad -bool TRUE
    killall Dock
else
    echo "SIP is Enabled, I don't have power here..."
fi
