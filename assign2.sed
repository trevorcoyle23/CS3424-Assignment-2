#!/bin/sed -f

#remove trailing whitespace

s/[[:space:]]\+$//

#add spaces around binary operators

s/\([^[:space:]]\)\([+*\/=-]\)\([^[:space:]]\)/\1 \2 \3/g

#remove whitespace inside parentheses

s/\(([^[:space:]]\)[[:space:]]+\([^[:space:]]\))/\1\2/g

#remove extra spaces between tokens

s/\([[:alnum:]]\)[[:space:]]\{2,\}\([[:alnum:]]\)/\1 \2/g

#declare variables

s/\bint\b/int /g

#remove extra spaces in conditional statements

