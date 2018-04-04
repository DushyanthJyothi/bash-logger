# bash-logger
log4j style bash logger

Utility script to print log4j style messages for logging INFO, DEBUG, TRACE, WARN, ERROR, FATAL

Logs to STDOUT or specific file provided


# Usage
In your bash script add:

source ./logger.sh

use one of the functions to log a message:
 

log "This is DEFAULT log message"

logi "This is INFO log message: designates informational messages that highlight the progress of the application at coarse-grained level."

logd "This is DEBUG log message: designates fine-grained informational events that are most useful to debug an application."

logt "This is TRACE log message: designates finer-grained informational events than the DEBUG."

logw "This is WARN log message: designates potentially harmful situations."

loge "This is ERROR log message: designates error events that might still allow the application to continue running."

logf "This is FATAL log message: designates very severe error events that will presumably lead the application to abort."


# Output

format:  [ time_and_date | log_type | script_name:function_name:line  ]: message 

[ 04-04-2018 22:39:40 | INFO  | test.sh:do_something:17  ]: This is DEFAULT log message

[ 04-04-2018 22:39:40 | INFO  | test.sh:do_something:18  ]: This is INFO log message: designates informational messages that highlight the progress of the application at coarse-grained level.

[ 04-04-2018 22:39:40 | DEBUG | test.sh:do_something:19  ]: This is DEBUG log message: designates fine-grained informational events that are most useful to debug an application.

{ callstack: caller: 19 ./test.sh | sources: ./logger.sh ./test.sh ./test.sh | functions: logd do_something main | lines: 19 28 0 }

[ 04-04-2018 22:39:40 | TRACE | test.sh:do_something:20  ]: This is TRACE log message: designates finer-grained informational events than the DEBUG.

{ callstack: caller: 20 ./test.sh | sources: ./logger.sh ./test.sh ./test.sh | functions: logt do_something main | lines: 20 28 0 }

[ 04-04-2018 22:39:40 | WARN  | test.sh:do_something:21  ]: This is WARN log message: designates potentially harmful situations.

[ 04-04-2018 22:39:40 | ERROR | test.sh:do_something:22  ]: This is ERROR log message: designates error events that might still allow the application to continue running.

[ 04-04-2018 22:39:40 | FATAL | test.sh:do_something:23  ]: This is FATAL log message: designates very severe error events that will presumably lead the application to abort.

