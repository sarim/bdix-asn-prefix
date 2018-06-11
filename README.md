bdix-asn-prefix
==

This is a crude list of BDIX ASN and IP Prefixes.

The index.txt is copied from [Hurricane Electric](https://bgp.he.net/exchange/BDIX) BDIX overview page.

Running `asn2prefix.sh` will download IP Prefixes of those ASN from [dan.me.uk/bgplookup](https://www.dan.me.uk/bgplookup) and do some grepping to output to a text file `prefix.txt`.

You can then run `xargs` on prefix.txt for creating filewall (iptables/routeros/cisco etc...) rules or just do whatever you want.


Ex:

```sh
xargs -I {} echo iptables -A bdix-filter -s {} < prefix.txt
```