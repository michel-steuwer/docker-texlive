#!/bin/sh
set -e

if latexmk -pdf "$@" ; then
  echo "Sucessfully compiled '$@''"
else
  exit_code=$?
  echo "Failure compiling '$@', exited with $exit_code"
  exit $exit_code
fi
