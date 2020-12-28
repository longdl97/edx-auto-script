#!/bin/sh
# this shell is located in edx-auto-script folder that same devstack folder
sh ./pre_requirement.sh

cd ../devstack
echo "--- Run dev.cache-programs --- $(date +'%d/%m/%Y %H:%M:%S') ---"
docker exec edx.devstack-juniper.master.lms \
  bash -c 'source /edx/app/edxapp/edxapp_env && /edx/app/edxapp/edx-platform/manage.py lms cache_programs'
cd ../edx-auto-script
