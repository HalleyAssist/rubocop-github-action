#!/bin/sh -l

set -e

cp /matchers.json .
echo "::add-matcher::matchers.json"
rubocop --format emacs
echo "::remove-matcher owner=rubocop::"
