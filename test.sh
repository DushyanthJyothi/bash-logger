#!/usr/bin/env bash


# Description: Test script to show bash_logger.sh usage
# Author : Dushyanth Jyothi
# Copyright (c) 2017 Dushyanth Jyothi
# Usage:
# ./test.sh >test.stdout 2>test.stderr

set -u
set -e
set -o errtrace

# source bash_logger library
source lib/sh/bash_logger.sh
set_log_level "TRACE"

log_start
do_something_else() {

  log_start
  sleep 30
  log_trace "This is TRACE log message: finer-grained informational events than the DEBUG."
	log_error "This is ERROR log message: error events that might still allow the application to continue running."
  log_fatal "This is FATAL log message: very severe error events that will presumably lead the application to abort."

	log_finish
}

do_something() {

	log_start
  sleep 20
	log "This is DEFAULT log message"

	log_trace "This is TRACE log message: finer-grained informational events than the DEBUG."
	log_debug "This is DEBUG log message: fine-grained informational events that are most useful to debug an application."
	log_info "This is INFO log message: informational messages that highlight the progress of the application at coarse-grained level."
	log_warn "This is WARN log message: designates potentially harmful situations."
	log_error "This is ERROR log message: error events that might still allow the application to continue running."
	log_fatal "This is FATAL log message: very severe error events that will presumably lead the application to abort."
	log_finish

  do_something_else

}
do_something
sleep 10
log_finish

