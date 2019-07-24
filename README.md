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

Default is INFO log level


3) use the following functions to log:
 

  __log_start

  __log "This is DEFAULT log message"

  __logt "This is TRACE log message: finer-grained informational events than the DEBUG."

  __logd "This is DEBUG log message: fine-grained informational events that are most useful to debug an application."

  __logi "This is INFO log message: informational messages that highlight the progress of the application at coarse-grained level."

  __logw "This is WARN log message: designates potentially harmful situations."

  __loge "This is ERROR log message: error events that might still allow the application to continue running."

  __logf "This is FATAL log message: very severe error events that will presumably lead the application to abort."

  __log_finish




4) execute: ./test.sh >test.stdout 2>test.stderr 

# Output

24-07-2019 21:16:02 [test.sh:do_something:line:31] INFO - STARTED

24-07-2019 21:16:02 [test.sh:do_something:line:33] INFO - This is DEFAULT log message

24-07-2019 21:16:02 [test.sh:do_something:line:35] TRACE - This is TRACE log message: finer-grained informational events than the DEBUG.

24-07-2019 21:16:02 [test.sh:do_something:line:35] TRACE - Execution call stack:

   test.sh:48 do_something(..)

   test.sh:0 main(..)

24-07-2019 21:16:02 [test.sh:do_something:line:36] DEBUG - This is DEBUG log message: fine-grained informational events that are most useful to debug an application.

24-07-2019 21:16:02 [test.sh:do_something:line:37] INFO - This is INFO log message: informational messages that highlight the progress of the application at coarse-grained level.

24-07-2019 21:16:02 [test.sh:do_something:line:38] WARN - This is WARN log message: designates potentially harmful situations.

24-07-2019 21:16:02 [test.sh:do_something:line:39] ERROR - This is ERROR log message: error events that might still allow the application to continue running.

24-07-2019 21:16:02 [test.sh:do_something:line:40] FATAL - This is FATAL log message: very severe error events that will presumably lead the application to abort.

24-07-2019 21:16:02 [test.sh:do_something:line:42] INFO - FINISHED


24-07-2019 21:16:02 [test.sh:do_something_else:line:20] INFO - STARTED

24-07-2019 21:16:02 [test.sh:do_something_else:line:22] TRACE - This is TRACE log message: finer-grained informational events than the DEBUG.

24-07-2019 21:16:02 [test.sh:do_something_else:line:22] TRACE - Execution call stack:

   test.sh:44 do_something_else(..)

   test.sh:48 do_something(..)

   test.sh:0 main(..)

24-07-2019 21:16:02 [test.sh:do_something_else:line:23] ERROR - This is ERROR log message: error events that might still allow the application to continue running.

24-07-2019 21:16:02 [test.sh:do_something_else:line:24] FATAL - This is FATAL log message: very severe error events that will presumably lead the application to abort.

24-07-2019 21:16:02 [test.sh:do_something_else:line:26] INFO - FINISHED

