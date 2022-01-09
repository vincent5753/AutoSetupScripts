#!/bin/bash
function ar() {
    declare PassedIn=${*:-$(</dev/stdin)}
    for i in $PassedIn
    do
      echo removing $i using apt...
      sudo apt-get remove $i
    done
}

cat <<EOF | ar
account-plugin-facebook
account-plugin-flickr
account-plugin-jabber
account-plugin-salut
account-plugin-twitter
account-plugin-windows-live
account-plugin-yahoo
aisleriot
brltty
duplicity
empathy
empathy-common
example-content
gnome-accessibility-themes
gnome-contacts
gnome-mahjongg
gnome-mines
gnome-orca
gnome-screensaver
gnome-sudoku
gnome-video-effects
gnomine
landscape-common
libreoffice-avmedia-backend-gstreamer
libreoffice-base-core
libreoffice-calc
libreoffice-common
libreoffice-core
libreoffice-draw
libreoffice-gnome
libreoffice-gtk
libreoffice-impress
libreoffice-math
libreoffice-ogltrans
libreoffice-pdfimport
libreoffice-style-galaxy
libreoffice-style-human
libreoffice-writer
libsane
libsane-common
mcp-account-manager-uoa
python3-uno
rhythmbox
rhythmbox-plugins
rhythmbox-plugin-zeitgeist
sane-utils
shotwell
shotwell-common
telepathy-gabble
telepathy-haze
telepathy-idle
telepathy-indicator
telepathy-logger
telepathy-mission-control-5
telepathy-salut
totem
totem-common
totem-plugins
printer-driver-brlaser
printer-driver-foo2zjs
printer-driver-foo2zjs-common
printer-driver-m2300w
printer-driver-ptouch
printer-driver-splix
EOF

# ref
## https://gist.github.com/NickSeagull/ed43a80db6a54d69ded3e18f8babaf19
