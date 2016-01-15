#!/bin/sh
echo -- Section and chapters must contain an anchor
grep -e "^#" *.md | grep -v "###" | grep -v \{
echo -- use 4 \# for a margin not 3 or 5
grep -e "###" *.md | grep -v "####"
grep -e "#####" *.md
echo -- Do not use chapter2 as anchor, use chapter-2
grep -e ^#.*chapter[0-9] *.md
echo -- Do not use chapter2 as link, use chapter-2
grep "\](#chapter[0-9]" *.md
echo -- Unallowed characters
grep -e \“ *.md
grep -e ” *.md
grep -e „ *.md
grep -e ´ *.md
echo -- Reference should be links
grep -e "\[[0-9]*\]" *.md
