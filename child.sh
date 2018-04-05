#!/usr/bin/env bash


# What: test script to show logger.sh usage
# Author : Dushyanth Jyothi


# source logger
source ./logger.sh


# if you want to write to a file
#set_log_file "logs/log.txt"

do_something(){

	log_start

	_log "This is DEFAULT log message"

	logi "This is INFO log message: designates informational messages that highlight the progress of the application at coarse-grained level."
	logd "This is DEBUG log message: designates fine-grained informational events that are most useful to debug an application."
	logt "This is TRACE log message: designates finer-grained informational events than the DEBUG."
	logw "This is WARN log message: designates potentially harmful situations."
	loge "This is ERROR log message: designates error events that might still allow the application to continue running."
	logf "This is FATAL log message: designates very severe error events that will presumably lead the application to abort."

	log_finish

}

do_something
