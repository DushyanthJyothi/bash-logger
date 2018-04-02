# bash-logger
log4j style bash logger

Utility script to print log4j style messages for logging INFO, DEBUG, TRACE, ERROR, FATAL

Logs to STDOUT or specific file provided


# Usage
In your bash script:

source ./logger.sh

log "This is DEFAULT log message"

logi "This is INFO log message"

logd "This is DEBUG log message"

logt "This is TRACE log message"

loge "This is ERROR log message"

logf "This is FATAL log message"

# Output

[ 02-04-2018 17:14:55 | INFO  | test.sh:do_something:12  ]: This is DEFAULT log message

[ 02-04-2018 17:14:55 | INFO  | test.sh:do_something:13  ]: This is INFO log message

[ 02-04-2018 17:14:55 | DEBUG | test.sh:do_something:14  ]: This is DEBUG log message

{ callstack: caller: 14 ./test.sh | sources: ./logger.sh ./test.sh ./test.sh | fnctions: logd do_something main | lines: 14 20 0 }

[ 02-04-2018 17:14:55 | TRACE | test.sh:do_something:15  ]: This is TRACE log message

{ callstack: caller: 15 ./test.sh | sources: ./logger.sh ./test.sh ./test.sh | fnctions: logt do_something main | lines: 15 20 0 }

[ 02-04-2018 17:14:55 | ERROR | test.sh:do_something:16  ]: This is ERROR log message

[ 02-04-2018 17:14:55 | FATAL | test.sh:do_something:17  ]: This is FATAL log message
