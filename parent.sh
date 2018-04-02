#!/bin/bash

# source logger
source ./logger.sh


log "sourcing child script"

# source child
source ./child.sh

log "done with child script"

