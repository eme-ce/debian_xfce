#!/bin/bash

# set -x

# shellcheck source=/dev/null
source "$(pwd)"/utils.sh

if [[ "$EUID" -eq 0 ]]; then
	log_err "This script must not be executed as sudo"
fi

if [[ "$(lsb_release -si)" != "Debian" ]]; then
	log_err "Unsupported distro."
elif [[ "$(lsb_release -sr | cut -d. -f1)" != "12" ]]; then
	log_err "Unsupported version."
fi
