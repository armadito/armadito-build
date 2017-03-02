#!/bin/bash

SUBDIRS=core ui/systray-ui modules/mod-clamav modules/mod-pdf modules/mod-yara

for d in $SUBDIRS ; do
    ( cd $d ; autoreconf --verbose --force --install )
done

