#!/usr/bin/env bash


# Description: Test script to show bash_logger.sh usage
# Author : Dushyanth Jyothi
# Copyright (c) 2017 Dushyanth Jyothi
# Usage:
# ./child_script.sh

set -u
set -e



do_something_else_in_child() {

  __log_start

  __logt "This is TRACE log message: finer-grained informational events than the DEBUG."
  __loge "This is ERROR log message: error events that might still allow the application to continue running."
  __logf "This is FATAL log message: very severe error events that will presumably lead the application to abort."

  __log_finish
}

do_something_in_child() {

	__log_start

	__log "This is DEFAULT log message"

  __logt "This is TRACE log message: finer-grained informational events than the DEBUG."
  __logd "This is DEBUG log message: fine-grained informational events that are most useful to debug an application."
  __logi "This is INFO log message: informational messages that highlight the progress of the application at coarse-grained level."
  __logw "This is WARN log message: designates potentially harmful situations."
  __loge "This is ERROR log message: error events that might still allow the application to continue running."
  __logf "This is FATAL log message: very severe error events that will presumably lead the application to abort."

	__log_finish

  do_something_else_in_child
}

