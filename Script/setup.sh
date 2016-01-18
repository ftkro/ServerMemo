#!/bin/sh
source ./src/setup_scripts/lib/init.sh
source ./src/setup_scripts/lib/set_var.sh
source ./src/setup_scripts/tpl/welcome.sh
source ./src/setup_scripts/lib/check/*.sh
for file in `\find ./src/setup_scripts/bake -maxdepth 1 -type f | sort`; do source $file ;done
