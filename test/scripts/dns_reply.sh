#!/bin/bash

src_p=12345 
#src_p=53   ## DNS Service port 
dst_p=33333 ## client port

echo "Pseudo DNS reply from Port $src_p to $dst_p"
echo -e "\\x50\\x51\\x01\\x01\\11\\11\\22\\22\\33\\33\\44\\44" | nc -u -w 1 -p 12345 192.168.10.101 33333
