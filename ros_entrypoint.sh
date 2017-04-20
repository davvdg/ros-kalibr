#!/bin/bash
set -e

# setup ros environment
source "$KALIBR_WORKSPACE/devel/setup.bash"
exec "$@"

