#!/bin/bash
# input /var/log/syslog
file_to_follow=$1
output_file=output.log

# Start following the file and redirect the output to another file or the terminal
echo "Following $file_to_follow and redirecting output to $output_file"
tail -f "$file_to_follow" | tee -a "$output_file"
