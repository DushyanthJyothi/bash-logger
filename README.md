# bash-logger

log4j style bash logger

Utility library to print log4j style messages for logging at different levels:

TRACE > DEBUG > INFO > WARN > ERROR > FATAL


# Usage
In your bash script (e.g. test.sh) 

1) add bash_logger.sh library path: 

 - source lib/sh/bash_logger.sh

2) set log level you want to print, for e.g.:

- set_log_level "TRACE"

Default is INFO log level


3) use the following functions to log:
 

  log_start
  
  log "This is DEFAULT log message"

  log_trace "This is TRACE log message: finer-grained informational events than the DEBUG."
  
  log_debug "This is DEBUG log message: fine-grained informational events that are most useful to debug an application."
  
  log_info "This is INFO log message: informational messages that highlight the progress of the application at coarse-grai"
  
  log_warn "This is WARN log message: designates potentially harmful situations."
  
  log_error "This is ERROR log message: error events that might still allow the application to continue running."
  
  log_fatal "This is FATAL log message: very severe error events that will presumably lead the application to abort."
 
  log_finish



4) execute: ./test.sh >test.stdout 2>test.stderr 

# output

21-05-2021 08:54:43 - test.sh:main:18 - #-- STARTED MAIN --#

21-05-2021 08:54:43 - test.sh:do_something:32 - #-- STARTED DO_SOMETHING --#

21-05-2021 08:55:03 - test.sh:do_something:34 - This is DEFAULT log message

21-05-2021 08:55:03 - test.sh:do_something:36 - TRACE - This is TRACE log message: finer-grained informational events than the DEBUG.

21-05-2021 08:55:03 - test.sh:do_something:36 - TRACE - Execution call stack:

   test.sh:47 do_something(..)

    test.sh:0 main(..)


21-05-2021 08:55:03 - test.sh:do_something:37 - DEBUG - This is DEBUG log message: fine-grained informational events that are most useful to debug an application.

21-05-2021 08:55:03 - test.sh:do_something:38 - INFO - This is INFO log message: informational messages that highlight the progress of the application at coarse-grained le.

21-05-2021 08:55:03 - test.sh:do_something:39 - WARN - This is WARN log message: designates potentially harmful situations.


21-05-2021 08:55:03 - test.sh:do_something:40 - ERROR - This is ERROR log message: error events that might still allow the application to continue running.

21-05-2021 08:55:03 - test.sh:do_something:40 - ERROR - Execution call stack:

   test.sh:47 do_something(..)

    test.sh:0 main(..)


21-05-2021 08:55:03 - test.sh:do_something:41 - FATAL - This is FATAL log message: very severe error events that will presumably lead the application to abort.

21-05-2021 08:55:03 - test.sh:do_something:41 - FATAL - Execution call stack:

   test.sh:47 do_something(..)

    test.sh:0 main(..)


21-05-2021 08:55:03 - test.sh:do_something:42 - |-- FINISHED DO_SOMETHING - Took: 0h:0m:20s --|

21-05-2021 08:55:43 - test.sh:main:49 - |-- FINISHED MAIN - Took: 0h:1m:0s --|
