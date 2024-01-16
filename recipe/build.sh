#!/bin/bash

set -euo pipefail

cd src

TCL_VERSION="$(echo 'puts [info tclversion]' | tclsh)"
TCL_LIB_PATH="$PREFIX"/lib/tcl"$TCL_VERSION"
BWIDGET_PATH="$TCL_LIB_PATH"/bwidget

[[ ! -d "$BWIDGET_PATH" ]] || exit 1
mkdir -p "$BWIDGET_PATH"
# conda-build requires the license file for the packaging stage so we need it in the src folder
mv *(!src/LICENSE.txt) "$BWIDGET_PATH"/
cp src/LICENSE.txt "$BWIDGET_PATH"/
