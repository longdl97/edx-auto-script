#!/bin/sh
# this shell is located in edx-auto-script folder that same devstack folder
source ./pre_requirement.sh

cd ../devstack
source venv/bin/activate
echo "--- Run dev.cache-programs --- $(date +'%d/%m/%Y %H:%M:%S') ---"
make dev.cache-programs
cd ../edx-auto-script
deactivate
