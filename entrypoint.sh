#!/bin/sh

set -e

cp /matchers.json .
# echo "::add-matcher::matchers.json"
sh -c "rubocop --format emacs $*"
# echo "::remove-matcher owner=rubocop::"
