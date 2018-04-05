#!/usr/bin/env bash


# What: test script to show logger.sh usage
# Author : Dushyanth Jyothi

# source logger
source ./logger.sh


_log "about to call child script"

# source child
source ./child.sh

logi "done with child script"

