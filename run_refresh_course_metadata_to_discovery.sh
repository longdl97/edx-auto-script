#!/bin/sh
# this shell is located in edx-auto-script folder that same devstack folder
source ./pre_requirement.sh

cd ../devstack
source venv/bin/activate

echo "--- Run refresh_course_metadata --- $(date +'%d/%m/%Y %H:%M:%S') ---"
docker exec edx.devstack-juniper.master.discovery \
  bash -c 'cd /edx/app/discovery/discovery && source ../devstack.sh  && ./manage.py refresh_course_metadata'
cd ../edx-auto-script
deactivate
