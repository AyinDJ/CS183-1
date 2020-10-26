#!/bin/bash
#cyberciti.biz/faq/understanding-etcpasswd-file-format/

while IFS=: read -r f1 f2 f3 f4 f5 f6 f7
do
	results="$f1 $f3 $(id -nG $f1)"
	
	echo "$results"

done < /etc/passwd	
