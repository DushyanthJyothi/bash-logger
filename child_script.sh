#!/usr/bin/env bash


# Description: Test script to show logger.sh usage
# Author : Dushyanth Jyothi
# Copyright (c) 2017 Dushyanth Jyothi

set -u
set -e

# source logger
source logger.sh


# if you want to write to a file
# set_log_file "logs/log.txt"

do_something(){

	__log_start

	__log "This is DEFAULT log message"

	__logi "This is INFO log message: designates informational messages that highlight the progress of the application at coarse-grained level."
	__logd "This is DEBUG log message: designates fine-grained informational events that are most useful to debug an application."
  __loge "This is ERROR log message: designates error events that might still allow the application to continue running."
	__logt "This is TRACE log message: designates finer-grained informational events than the DEBUG."
	__logw "This is WARN log message: designates potentially harmful situations."
	__loge "This is ERROR log message: designates error events that might still allow the application to continue running."
	__logf "This is FATAL log message: designates very severe error events that will presumably lead the application to abort."

	__log_finish

}

do_something
