# bash-logger

log4j style bash logger

Utility library to print log4j style messages for logging at different levels:

TRACE > DEBUG > INFO > WARN > ERROR > FATAL


# Usage
In your bash script (e.g. test.sh) 

1) add bash_logger.sh library path: 

 - source lib/sh/bash_logger.sh

2) set log level you want to print, for e.g.:

- __bl_set_log_level "TRACE"

If not set it will use INFO as a default log level


3) use the following functions to log:
 

  __log_start

  __log "This is DEFAULT log message"

  __logt "This is TRACE log message: designates finer-grained informational events than the DEBUG."

  __logd "This is DEBUG log message: designates fine-grained informational events that are most useful to debug an application."

  __logi "This is INFO log message: designates informational messages that highlight the progress of the application at coarse-grained level."

  __logw "This is WARN log message: designates potentially harmful situations."

  __loge "This is ERROR log message: designates error events that might still allow the application to continue running."

  __logf "This is FATAL log message: designates very severe error events that will presumably lead the application to abort."

  __logt "This is TRACE log message: designates finer-grained informational events than the DEBUG."

  __log_finish



4) execute: ./test.sh 

or seperate stdout and stderr into seperate files:

./test.sh >test.stdout 2>test.stderr 

# Output

20-07-2019 02:34:45 [test.sh:do_something:line:29] INFO - STARTED

20-07-2019 02:34:45 [test.sh:do_something:line:31] INFO - This is DEFAULT log message

20-07-2019 02:34:45 [test.sh:do_something:line:33] TRACE - This is TRACE log message: designates finer-grained informational events than the DEBUG.
33 ./test.sh

        Execution call_stack: 47 : test.sh : do_something

        Execution call_stack: 0 : test.sh : main

20-07-2019 02:34:45 [test.sh:do_something:line:34] DEBUG - This is DEBUG log message: designates fine-grained informational events that are most useful to debug an application.

20-07-2019 02:34:45 [test.sh:do_something:line:35] INFO - This is INFO log message: designates informational messages that highlight the progress of the application at coarse-grained level.

20-07-2019 02:34:45 [test.sh:do_something:line:36] WARN - This is WARN log message: designates potentially harmful situations.

20-07-2019 02:34:45 [test.sh:do_something:line:37] ERROR - This is ERROR log message: designates error events that might still allow the application to continue running.

20-07-2019 02:34:45 [test.sh:do_something:line:38] FATAL - This is FATAL log message: designates very severe error events that will presumably lead the application to abort.

20-07-2019 02:34:45 [test.sh:do_something:line:39] TRACE - This is TRACE log message: designates finer-grained informational events than the DEBUG.
39 ./test.sh

        Execution call_stack: 47 : test.sh : do_something

        Execution call_stack: 0 : test.sh : main

20-07-2019 02:34:45 [test.sh:do_something:line:41] INFO - FINISHED

