#!/bin/sh

set -e

ROOT_DIR="."
BKP_DIR="${ROOT_DIR}/__bkp"
DST_DIR="./R";
DADD_DIR="${ROOT_DIR}/dd"
FILES=`echo "/usr/share/themes/base/meegotouch/sysuid/style/statusarea.css /usr/share/themes/base/meegotouch/libmeegotouchhome/style/libmeegotouchviews-modified-default.css /usr/share/themes/blanco/meegotouch/sysuid/style/volume.css /usr/share/themes/blanco/meegotouch/sysuid/style/sysuid.css /usr/share/themes/blanco/meegotouch/meegotouchhome/meegotouchhome.css /usr/share/themes/blanco/meegotouch/constants.ini /usr/share/themes/blanco/meegotouch/proto/constants.ini /usr/share/themes/base/meegotouch/images/dadd-landscape.png /usr/share/themes/base/meegotouch/images/dadd-portrait.png /usr/share/themes/blanco/meegotouch/images/backgrounds/meegotouch-desktop-bg.png "`;
FILES2=`echo "statusarea.css libmeegotouchviews-modified-default.css volume.css sysuid.css meegotouchhome.css constants.ini proto/constants.ini dadd-landscape.png dadd-portrait.png meegotouch-desktop-bg.png "`;

for i in $FILES2
do
	grep "$i" /var/lib/dpkg/info/*.list
done
