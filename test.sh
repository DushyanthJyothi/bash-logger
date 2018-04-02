#!/bin/bash

# source logger
source ./logger.sh

# if you want to write to a file
#set_log_file "logs/log.txt"

do_something(){

	log_start
	log "This is DEFAULT log message"
	logi "This is INFO log message"
	logd "This is DEBUG log message"
	logt "This is TRACE log message"
	loge "This is ERROR log message"
	logf "This is FATAL log message"
	log_finish
}
do_something
