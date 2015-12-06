#!/bin/sh
debmirror -debug \
-progress \
-verbose \
-diff=none \
-host=www.deb-multimedia.org \
-root=/ \
-method=http \
-dist=jessie \
-arch=i386,amd64 \
-nosource \
-section=main,non-free \
-i18n \
-getcontents \
-ignore-release-gpg \
-ignore-missing-release \
/var/www/html/jessie-backports
exit
