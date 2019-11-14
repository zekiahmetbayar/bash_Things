#!/bin/bash

echo "Starting line"
read start_line

echo "Finishing line"
read finish_line

awk "FNR>=$start_line && FNR<=$finish_line" meyveler


