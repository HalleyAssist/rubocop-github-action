#!/bin/sh

cp /matchers.json .
echo "::add-matcher::matchers.json"
rubocop --format emacs
rc=$?
echo "::remove-matcher owner=rubocop::"
exit $rc
