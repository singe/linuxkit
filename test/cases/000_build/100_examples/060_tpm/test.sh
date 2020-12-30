#!/bin/sh
# SUMMARY: Test the tpm example
# LABELS: amd64

set -e

# Source libraries. Uncomment if needed/defined
#. "${RT_LIB}"
. "${RT_PROJECT_ROOT}/_lib/lib.sh"

NAME=tpm

clean_up() {
	rm -f ${NAME}*
}

trap clean_up EXIT

# Test code goes here
linuxkit build -docker "${LINUXKIT_EXAMPLES_DIR}/${NAME}.yml"

exit 0
