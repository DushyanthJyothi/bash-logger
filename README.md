# bash-logger

log4j style bash logger

Utility script to print log4j style messages for logging INFO, DEBUG, TRACE, WARN, ERROR, FATAL


# Usage
In your bash script (e.g. test.sh) 

add: 

source /path/to/logger.sh

then use one of the functions to log a message:
 

__log "This is DEFAULT log message"

__logi "This is INFO log message: designates informational messages that highlight the progress of the application at coarse-grained level."

__logd "This is DEBUG log message: designates fine-grained informational events that are most useful to debug an application."

__logt "This is TRACE log message: designates finer-grained informational events than the DEBUG."

__logw "This is WARN log message: designates potentially harmful situations."

__loge "This is ERROR log message: designates error events that might still allow the application to continue running."

__logf "This is FATAL log message: designates very severe error events that will presumably lead the application to abort."


execute: ./test.sh 

or

./test.sh >test.stdout 2>test.stderr 

# Output

17-07-2019 22:31:06 [test.sh:do_something:19] INFO - STARTED

17-07-2019 22:31:06 [test.sh:do_something:21] INFO - This is DEFAULT log message

17-07-2019 22:31:06 [test.sh:do_something:23] INFO - This is INFO log message: designates informational messages that highlight the progress of the application at coarse-grained level.

17-07-2019 22:31:06 [test.sh:do_something:24] DEBUG - This is DEBUG log message: designates fine-grained informational events that are most useful to debug an application.

17-07-2019 22:31:06 [test.sh:do_something:25] ERROR - This is ERROR log message: designates error events that might still allow the application to continue running.

17-07-2019 22:31:06 [test.sh:do_something:26] TRACE - This is TRACE log message: designates finer-grained informational events than the DEBUG.

callstack: caller: 26 ./test.sh | sources: logger.sh ./test.sh ./test.sh | functions: __logt do_something main | lines: 26 35 0

17-07-2019 22:31:06 [test.sh:do_something:27] WARN - This is WARN log message: designates potentially harmful situations.

17-07-2019 22:31:06 [test.sh:do_something:28] ERROR - This is ERROR log message: designates error events that might still allow the application to continue running.

17-07-2019 22:31:06 [test.sh:do_something:29] FATAL - This is FATAL log message: designates very severe error events that will presumably lead the application to abort.

17-07-2019 22:31:06 [test.sh:do_something:31] INFO - FINISHED
