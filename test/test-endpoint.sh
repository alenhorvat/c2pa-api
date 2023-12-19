#!/bin/bash

#
# Simple script to test the API
#


# which sha2
file_path=$1
echo $file_path
# sha2 -256 $file_path
# sha256sum $file_path

# Set the server URL
server_url="http://localhost:8001/v1/c2pa"

# Use curl to send the file as binary data in a POST request
curl -i -X POST ${server_url} \
  -T "$file_path"
