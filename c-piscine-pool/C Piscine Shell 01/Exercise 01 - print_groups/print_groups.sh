#!/bin/sh
groups $FT_USER | tr ' ' ',' | tr -d '\n'
# groups $FT_USER | sed 's/ /,/g' | tr -d '\n'