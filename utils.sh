#!/bin/bash

set -x

# shellcheck source=/dev/null
source "$(pwd)"/config.ini

log_info() {
	echo "\033[32m$(date) - $*\033[0m"
}

log_pass() {
	echo "\033[32m$(date) - $*\033[0m"
}

log_error() {
	echo -e "\033[31m$(date) - $*\033[0m"
    exit 1
}