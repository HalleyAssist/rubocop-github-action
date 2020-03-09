#!/bin/sh

set -e

cp /matchers.json .
ls
# echo "::add-matcher::matchers.json"
rubocop --format emacs
# echo "::remove-matcher owner=rubocop::"

exit 1