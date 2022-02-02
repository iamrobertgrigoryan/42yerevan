#!/bin/sh
find . -type f -name '*.sh' -execdir basename {} .sh ';'
# find . -type f -name '*.sh' -exec basename {} \; | sed 's/.sh$//g'
