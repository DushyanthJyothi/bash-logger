#!/usr/bin/env bash


# Description: Test script to show logger.sh usage
# Author : Dushyanth Jyothi
# Copyright (c) 2017 Dushyanth Jyothi

set -u
set -e

# source logger
source logger.sh


__log "about to call child script"

# source child
source child_script.sh

__logi "done with child script"

