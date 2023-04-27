#!/bin/sh -l

## used to throw an error based on conditional
# if [ true ]
# then
#   echo 'error'
#   exit 1
# fi

echo "::debug ::Debug Message"
echo "::warning ::Warning Message"
echo "::error ::Error Message"

echo "::add-mask::$1"
echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"

echo "::group::Some expandable logs"
echo 'some stuff'
echo 'some stuff'
echo 'some stuff'
echo '::endgroup::'

# Replacement for set-env
echo "HELLO=hello" >> $GITHUB_ENV