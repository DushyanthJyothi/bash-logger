#!/usr/bin/env bash

###################################################
# Script to print log4j style messages for logging
#       INFO, DEBUG, TRACE, ERROR, FATAL
# Globals:
#   None
# Arguments:
#   None
# Returns:
#   None
# Author : Dushyanth Jyothi
# Copyright (c) 2017 Dushyanth Jyothi
# Usage: please see test.sh script
##################################################

# TODO(dushyanth): lots of repeat code (improve)
# required to achive proper line number of the invoked script

set -u
set -e



# Default log : INFO
# '__' so not to confilct with '_' if any private funcs
# declared in the parent script
function __log() {
  local script_name
  script_name="${BASH_SOURCE[1]}"
  script_name="${script_name##*/}"

  local function_name
  function_name="${FUNCNAME[1]}"

  local array
  IFS=" " read -r -a array <<< "$( caller )"
  local line
  line="${array[0]}"

  local message
  message="$*"

  local log_type
  log_type="INFO"
  local time_and_date
  time_and_date=$(date '+%d-%m-%Y %H:%M:%S')
  echo "$time_and_date [$script_name:$function_name:$line] $log_type - $message"
}

# INFO: designates informational messages that highlight the progress of the application at coarse-grained level.
function __logi() {
  local script_name
  script_name="${BASH_SOURCE[1]}"
  script_name="${script_name##*/}"

  local function_name
  function_name="${FUNCNAME[1]}"

  local array
  IFS=" " read -r -a array <<< "$( caller )"
  local line
  line="${array[0]}"

  local message
  message="$*"

  local log_type
  log_type="INFO"
  local time_and_date
  time_and_date=$(date '+%d-%m-%Y %H:%M:%S')
	echo "$time_and_date [$script_name:$function_name:$line] $log_type - $message"
}

# DEBUG: designates fine-grained informational events that are most useful to debug an application.
function __logd() {
  local script_name
  script_name="${BASH_SOURCE[1]}"
  script_name="${script_name##*/}"

  local function_name
  function_name="${FUNCNAME[1]}"

  local array
  IFS=" " read -r -a array <<< "$( caller )"
  local line
  line="${array[0]}"

  local message
  message="$*"

  local log_type
  log_type="DEBUG"
  local time_and_date
  time_and_date=$(date '+%d-%m-%Y %H:%M:%S')
  echo "$time_and_date [$script_name:$function_name:$line] $log_type - $message"
}

# TRACE: designates finer-grained informational events than the DEBUG
function __logt() {
  local script_name
  script_name="${BASH_SOURCE[1]}"
  script_name="${script_name##*/}"

  local function_name
  function_name="${FUNCNAME[1]}"

  local array
  IFS=" " read -r -a array <<< "$( caller )"
  local line
  line="${array[0]}"

  local message
  message="$*"

  local log_type
  log_type="TRACE"
  local time_and_date
  time_and_date=$(date '+%d-%m-%Y %H:%M:%S')
	echo "$time_and_date [$script_name:$function_name:$line] $log_type - $message"
	echo "callstack: caller: $( caller ) | sources: ${BASH_SOURCE[*]} | functions: ${FUNCNAME[*]} | lines: ${BASH_LINENO[*]}"
}


# WARN: designates potentially harmful situations.
function __logw() {
  local script_name
  script_name="${BASH_SOURCE[1]}"
  script_name="${script_name##*/}"

  local function_name
  function_name="${FUNCNAME[1]}"

  local array
  IFS=" " read -r -a array <<< "$( caller )"
  local line
  line="${array[0]}"

  local message
  message="$*"

  local log_type
  log_type="WARN"
  local time_and_date
  time_and_date=$(date '+%d-%m-%Y %H:%M:%S')
	echo "$time_and_date [$script_name:$function_name:$line] $log_type - $message"
}


# ERROR: designates error events that might still allow the application to continue running.
function __loge() {
  local script_name
  script_name="${BASH_SOURCE[1]}"
  script_name="${script_name##*/}"

  local function_name
  function_name="${FUNCNAME[1]}"

  local array
  IFS=" " read -r -a array <<< "$( caller )"
  local line
  line="${array[0]}"

  local message
  message="$*"

  local log_type
  log_type="ERROR"
  local time_and_date
  time_and_date=$(date '+%d-%m-%Y %H:%M:%S')
	echo "$time_and_date [$script_name:$function_name:$line] $log_type - $message" 1>&2
}


# FATAL: designates very severe error events that will presumably lead the application to abort.
function __logf() {
  local script_name
  script_name="${BASH_SOURCE[1]}"
  script_name="${script_name##*/}"

  local function_name
  function_name="${FUNCNAME[1]}"

  local array
  IFS=" " read -r -a array <<< "$( caller )"
  local line
  line="${array[0]}"

  local message
  message="$*"

  local log_type
  log_type="FATAL"
  local time_and_date
  time_and_date=$(date '+%d-%m-%Y %H:%M:%S')
	echo "$time_and_date [$script_name:$function_name:$line] $log_type - $message"
}

# info message to log start of something
function __log_start() {
  local script_name
  script_name="${BASH_SOURCE[1]}"
  script_name="${script_name##*/}"

  local function_name
  function_name="${FUNCNAME[1]}"

  local array
  IFS=" " read -r -a array <<< "$( caller )"
  local line
  line="${array[0]}"

  local message
  message="$*"

  local log_type
  log_type="INFO"
  local time_and_date
  time_and_date=$(date '+%d-%m-%Y %H:%M:%S')
	message="STARTED"
	echo "$time_and_date [$script_name:$function_name:$line] $log_type - $message"
}

# info message to log end of something
function __log_finish() {
  local script_name
  script_name="${BASH_SOURCE[1]}"
  script_name="${script_name##*/}"

  local function_name
  function_name="${FUNCNAME[1]}"

  local array
  IFS=" " read -r -a array <<< "$( caller )"
  local line
  line="${array[0]}"

  local message
  message="$*"

  local log_type
  log_type="INFO"
  local time_and_date
  time_and_date=$(date '+%d-%m-%Y %H:%M:%S')
  message="FINISHED"
	echo "$time_and_date [$script_name:$function_name:$line] $log_type - $message"
}

