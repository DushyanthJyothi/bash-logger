#!/usr/bin/env bash


# What: test script to show logger.sh usage
# Author : Dushyanth Jyothi

# source logger
source ./logger.sh


log "about to call child script"

# source child
source ./child.sh

log "done with child script"

