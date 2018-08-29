#!/bin/bash

cd "$(dirname "$0")";

if ls *.txt 1> /dev/null 2>&1; then

	grep -hoP 'http://interfacelift.com/wallpaper/details/\K\d+' *.txt | xargs ./interfacelift.sh

	rm *.txt
fi
