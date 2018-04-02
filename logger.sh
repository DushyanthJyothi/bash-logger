#!/usr/bin/env bash

# What: script to print log4j style messages for logging
#       INFO, DEBUG, TRACE, ERROR, FATAL
# Logs to STDOUT or specific file
# Known: Lots of repeat code (Improve) required to achive proper called script line number


log_file=""

set_log_file(){
  if [ -z "$1" ]; then
    echo "please provide log file path"
  else
    log_file="$1"
  fi
  if [ ! -e "$log_file" ]; then
    mkdir -p "$(dirname "$log_file")" || exit
    touch "$log_file"
  fi
}

# Default log : INFO
log(){
    local script_name
    script_name="${BASH_SOURCE[1]}"
        script_name="${script_name##*/}"
        local function_name="${FUNCNAME[1]}"
        local array
        IFS=" " read -r -a array <<< "$( caller )"
        local line="${array[0]}"
        local message="$*"
        log_type="INFO "
        local time_and_date
    time_and_date=$(date '+%d-%m-%Y %H:%M:%S')
        if [ -e "$log_file" ]; then
            echo "[ $time_and_date | $log_type | $script_name:$function_name:$line  ]: $message" >> "$log_file"
        else
            echo "[ $time_and_date | $log_type | $script_name:$function_name:$line  ]: $message"
        fi
}

# INFO: designates informational messages that highlight the progress of the application at coarse-grained level.
logi(){
    local script_name
    script_name="${BASH_SOURCE[1]}"
    script_name="${script_name##*/}"
    local function_name="${FUNCNAME[1]}"
    local array
    IFS=" " read -r -a array <<< "$( caller )"
    local line="${array[0]}"
    local message="$*"
    log_type="INFO "
    local time_and_date
    time_and_date=$(date '+%d-%m-%Y %H:%M:%S')
    if [ -e "$log_file" ]; then
        echo "[ $time_and_date | $log_type | $script_name:$function_name:$line  ]: $message" >> "$log_file"
    else
        echo "[ $time_and_date | $log_type | $script_name:$function_name:$line  ]: $message"
    fi
}

# DEBUG: designates fine-grained informational events that are most useful to debug an application.
logd(){
    local script_name
    script_name="${BASH_SOURCE[1]}"
    script_name="${script_name##*/}"
    local function_name="${FUNCNAME[1]}"
    local array
    IFS=" " read -r -a array <<< "$( caller )"
    local line="${array[0]}"
    local message="$*"
    log_type="DEBUG"
    local time_and_date
    time_and_date=$(date '+%d-%m-%Y %H:%M:%S')
    if [ -e "$log_file" ]; then
        echo "[ $time_and_date | $log_type | $script_name:$function_name:$line  ]: $message" >> "$log_file"
        echo "{ callstack: caller: $( caller ) | sources: ${BASH_SOURCE[*]} | fnctions: ${FUNCNAME[*]} | lines: ${BASH_LINENO[*]} }" >> "$log_file"
    else
        echo "[ $time_and_date | $log_type | $script_name:$function_name:$line  ]: $message"
        echo "{ callstack: caller: $( caller ) | sources: ${BASH_SOURCE[*]} | fnctions: ${FUNCNAME[*]} | lines: ${BASH_LINENO[*]} }"
    fi
}


# TRACE: designates finer-grained informational events than the DEBUG
logt(){
    local script_name
    script_name="${BASH_SOURCE[1]}"
    script_name="${script_name##*/}"
    local function_name="${FUNCNAME[1]}"
    local array
    IFS=" " read -r -a array <<< "$( caller )"
    local line="${array[0]}"
    local message="$*"
    log_type="TRACE"
    local time_and_date
    time_and_date=$(date '+%d-%m-%Y %H:%M:%S')
    if [ -e "$log_file" ]; then
        echo "[ $time_and_date | $log_type | $script_name:$function_name:$line  ]: $message" >> "$log_file"
        echo "{ callstack: caller: $( caller ) | sources: ${BASH_SOURCE[*]} | fnctions: ${FUNCNAME[*]} | lines: ${BASH_LINENO[*]} }" >> "$log_file"
    else
        echo "[ $time_and_date | $log_type | $script_name:$function_name:$line  ]: $message"
        echo "{ callstack: caller: $( caller ) | sources: ${BASH_SOURCE[*]} | fnctions: ${FUNCNAME[*]} | lines: ${BASH_LINENO[*]} }"
    fi
}


# WARN: designates potentially harmful situations.
logw(){
    local script_name
    script_name="${BASH_SOURCE[1]}"
    script_name="${script_name##*/}"
    local function_name="${FUNCNAME[1]}"
    local array
    IFS=" " read -r -a array <<< "$( caller )"
    local line="${array[0]}"
    local message="$*"
    log_type="WARN "
    local time_and_date
    time_and_date=$(date '+%d-%m-%Y %H:%M:%S')
    if [ -e "$log_file" ]; then
        echo "[ $time_and_date | $log_type | $script_name:$function_name:$line  ]: $message" >> "$log_file"
    else
        echo "[ $time_and_date | $log_type | $script_name:$function_name:$line  ]: $message"
    fi
}


# ERROR: designates error events that might still allow the application to continue running.
loge(){
    local script_name
    script_name="${BASH_SOURCE[1]}"
    script_name="${script_name##*/}"
    local function_name="${FUNCNAME[1]}"
    local array
    IFS=" " read -r -a array <<< "$( caller )"
    local line="${array[0]}"
    local message="$*"
    log_type="ERROR"
    local time_and_date
    time_and_date=$(date '+%d-%m-%Y %H:%M:%S')
    if [ -e "$log_file" ]; then
        echo "[ $time_and_date | $log_type | $script_name:$function_name:$line  ]: $message" >> "$log_file"
    else
        echo "[ $time_and_date | $log_type | $script_name:$function_name:$line  ]: $message"
    fi
}


# FATAL: designates very severe error events that will presumably lead the application to abort.
logf(){
    local script_name
    script_name="${BASH_SOURCE[1]}"
    script_name="${script_name##*/}"
    local function_name="${FUNCNAME[1]}"
    local array
    IFS=" " read -r -a array <<< "$( caller )"
    local line="${array[0]}"
    local message="$*"
    log_type="FATAL"
    local time_and_date
    time_and_date=$(date '+%d-%m-%Y %H:%M:%S')
    if [ -e "$log_file" ]; then
        echo "[ $time_and_date | $log_type | $script_name:$function_name:$line  ]: $message" >> "$log_file"
    else
        echo "[ $time_and_date | $log_type | $script_name:$function_name:$line  ]: $message"
    fi
}


log_start(){
    local script_name
    script_name="${BASH_SOURCE[1]}"
    script_name="${script_name##*/}"
    local function_name="${FUNCNAME[1]}"
    local array
    IFS=" " read -r -a array <<< "$( caller )"
    local line="${array[0]}"
    local message="$*"
    log_type="INFO "
    local time_and_date
    time_and_date=$(date '+%d-%m-%Y %H:%M:%S')
        message="STARTED"
    if [ -e "$log_file" ]; then
        echo "[ $time_and_date | $log_type | $script_name:$function_name:$line  ]: $message" >> "$log_file"
    else
        echo "[ $time_and_date | $log_type | $script_name:$function_name:$line  ]: $message"
    fi
}

log_finish(){
    local script_name
    script_name="${BASH_SOURCE[1]}"
    script_name="${script_name##*/}"
    local function_name="${FUNCNAME[1]}"
    local array
    IFS=" " read -r -a array <<< "$( caller )"
    local line="${array[0]}"
    local message="$*"
    log_type="INFO "
    local time_and_date
    time_and_date=$(date '+%d-%m-%Y %H:%M:%S')
    message="FINISHED"
    if [ -e "$log_file" ]; then
        echo "[ $time_and_date | $log_type | $script_name:$function_name:$line  ]: $message" >> "$log_file"
    else
        echo "[ $time_and_date | $log_type | $script_name:$function_name:$line  ]: $message"
    fi
}




