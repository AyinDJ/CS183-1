#!/bin/bash
#man7.org/linux/man-pages/man1/grep.1.html
#linux.die.net/man/1/wc

grep -ir --include=*.h "magic" /usr/src/kernels/ | wc -l
