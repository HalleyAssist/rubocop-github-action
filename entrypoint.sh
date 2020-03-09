#!/bin/sh -l

cp /matchers.json .
echo "::add-matcher::matchers.json"
rubocop --format emacs
echo "::remove-matcher owner=rubocop::"