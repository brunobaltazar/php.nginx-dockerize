#!/bin/sh -e
export BRANCH=$(echo $BRANCH_TAG | cut -d'/' -f 2);
export HOST_SERVER=
