#!/bin/sh
# this shell is located in edx-auto-script folder that same devstack folder

if [ !$OPENEDX_RELEASE ]
then
  export OPENEDX_RELEASE=juniper.master
fi
