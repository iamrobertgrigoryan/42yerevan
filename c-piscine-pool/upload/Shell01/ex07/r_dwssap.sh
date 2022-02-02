#!/bin/sh
cat /etc/passwd | grep -v "#" | sed -n 'n;p' | cut -f 1 -d : | rev | sort -r | sed -n "$FT_LINE1,$FT_LINE2 p" | tr '\n' ',' | sed 's:,:, :g' | sed 's:, $:.:' | tr -d '\n'
# cat /etc/passwd | sed '/^#/d' | sed -n 'n;p' | cut -d ':' -f1 | rev | sort -r | awk 'NR>= ENVIRON["FT_LINE1"] && NR<= ENVIRON["FT_LINE2"]' | paste -sd ',' - | sed 's/,/,/g' | sed 's/$/./' | tr -d '\n'
