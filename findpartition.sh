#!/bin/bash
#
# findpartition 1.0 - A shell script to identify the partition of a file or directory.
#
# Usage: findpartition FILE or DIRECTORY
#
# Source: https://github.com/llagerlof/findpartition
#
# Licence: MIT
#
# Author: Lawrence Lagerlof <@llagerlof>
#

if [ "$1" == "" ]; then
    echo "You must inform the path of a file or directory."
    exit 1;
fi

if [ ! -e "$1" ]; then
    echo "Invalid file or directory path."
    exit 1;
fi

df -P $1 | tail -1 | cut -d' ' -f 1
