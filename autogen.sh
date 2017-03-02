#!/bin/bash

SUBDIRS="armadito-core ui/systray-ui modules/mod-clamav modules/mod-pdf modules/mod-yara"

for d in $SUBDIRS ; do
    ( cd $d ; autoreconf --verbose --force --install )
done

# don't forget to do it in the toplevel directory
autoreconf --verbose --force --install

