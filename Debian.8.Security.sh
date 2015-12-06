#!/bin/bash
/usr/bin/debmirror -debug \
-progress \
-verbose \
-diff=none \
-host=security.debian.org \
-root=:debian-security \
-method=http \
-dist=jessie/updates \
-arch=i386,amd64 \
-nosource \
-section=main,contrib,non-free \
-i18n \
-getcontents \
-ignore-release-gpg \
-ignore-missing-release \
-rsync-options=-aIL \
/var/www/html/debian-security
exit
