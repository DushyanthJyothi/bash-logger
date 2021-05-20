#!/usr/bin/env bash


# Description: Test script to show bash_logger.sh usage
# Author : Dushyanth Jyothi
# Copyright (c) 2017 Dushyanth Jyothi
# Usage:
# ./child_script.sh

set -u
set -e
source lib/sh/bash_logger.sh
set_log_level "FATAL"


do_something_else_in_child() {

  log_start

  log_trace "This is TRACE log message: finer-grained informational events than the DEBUG."
  log_error "This is ERROR log message: error events that might still allow the application to continue running."
  log_fatal "This is FATAL log message: very severe error events that will presumably lead the application to abort."
  sleep 15
  log_finish
}

do_something_in_child() {

	log_start

	log "This is DEFAULT log message"

  log_trace "This is TRACE log message: finer-grained informational events than the DEBUG."
  log_debug "This is DEBUG log message: fine-grained informational events that are most useful to debug an application."
  log_info "This is INFO log message: informational messages that highlight the progress of the application at coarse-grained level."
  log_warn "This is WARN log message: designates potentially harmful situations."
  log_error "This is ERROR log message: error events that might still allow the application to continue running."
  log_fatal "This is FATAL log message: very severe error events that will presumably lead the application to abort."
  sleep 20
	log_finish

  do_something_else_in_child
}

