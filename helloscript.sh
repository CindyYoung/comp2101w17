#!/bin/bash
# helloscript.sh
# This script displys the string "Hello World!"

# This is s silly way of creating the output text by starting with something else and stream editing it in a pipeline
echo -n "helb wold" |sed -e "s/b/o/g" -e "s/l/ll/" -e "s/ol/orl/" |tr "h" "H"|tr "w" "W"|awk '{print $1 "\x20" $2 "\41"}'

