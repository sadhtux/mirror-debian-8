#!/bin/sh
debmirror -debug \
-progress \
-verbose \
-diff=none \
-host=debian.cantv.net \
-root=debian \
-method=http \
-dist=jessie \
-arch=i386,amd64 \
-nosource \
-section=main,contrib,non-free \
-i18n \
-getcontents \
-ignore-release-gpg \
-ignore-missing-release \
/var/www/html/debian
exit
