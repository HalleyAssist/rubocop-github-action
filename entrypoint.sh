#!/bin/sh -l

echo "::group::Install Rubocop"
gem install rubocop
echo "::endgroup::"

cp /matchers.json .
echo "::add-matcher::matchers.json"
rubocop --format emacs
echo "::remove-matcher owner=rubocop::"
