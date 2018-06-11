#!/bin/bash

mkdir -p asn
cd asn
rm asn*.html
grep -oP 'AS\K([0-9]+)' ../index.txt | xargs -P8 -I {} curl -s -o asn{}.html "https://www.dan.me.uk/bgplookup?asn={}&include_downstream=on"
html2text -ascii asn*.html | grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}/[0-9]{1,2}\b" > ../prefix.txt
