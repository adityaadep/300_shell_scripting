#!/bin/bash
filename=$1
upper=$(echo $filename | tr '[:lower:]' '[:upper:]')
mv $filename $upper 
