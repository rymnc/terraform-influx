#!/bin/bash

#set -e

# Get URL from command-line arguments
url="$1"
if [ -z "${url}" ]; then echo >&2 'Error: URL not specified'; exit 1; fi

# Other configuration
wait_secs=5

# Loop until done (one way or the other)
tries_remaining=20
while true
do
    curl -sS -f --max-time "${wait_secs}" "${url}" > /dev/null
    exit_code="$?"
    # Exit code 0 = success, break and move on to victory
    if [ "${exit_code}" == 0 ]
    then
        break
    fi
    echo >&2 Was not successful
    # Exit code 7= ENOTFOUND, decrement remaining retries and loop again
    # So if it's not 7then explode in flames.
    if [ "${exit_code}" != 7 ]
    then
        echo >&2 "Unexpected error ${exit_code} from curl"
        exit "${exit_code}"
    fi
    # Decrement and loop if we have retries remaining
    ((tries_remaining -= 1))
    if [ "${tries_remaining}" -le 0 ]
    then
        echo >&2 "Exhausted retries, exiting"
        exit 1
    fi
    sleep 10
done

# Send state back to Terraform for successful completion
echo '{"url": "'"$1"'"}'