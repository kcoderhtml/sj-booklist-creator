#!/bin/sh

# Read variables for count and start
read -p "Enter count: " count
read -p "Enter start: " start

# Make the curl request and save response to a temporary file
curl "http://localhost:8888/.netlify/functions/getMessages?count=${count}&start=${start}" > /tmp/temp.json

# Count the messages using jq
message_count=$(jq length /tmp/temp.json)

# Print the message count
echo "Message count: ${message_count}"

# Remove the temporary file
rm /tmp/temp.json

