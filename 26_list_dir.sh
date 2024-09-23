#!/bin/bash
for i in "$@";do
 echo "Contents of DIrectory----> $i"
 dir $i
 echo ""
done
