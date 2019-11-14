#!/bin/bash

echo "Which line do you want to change"
read line_num

echo "What do you want to change to"
read line_content

sed -i "${line_num}s/.*/${line_content}/" meyveler

