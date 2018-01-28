#!/bin/sh 

set -eo pipefail

set +e
echo "--- :ruby: installing bundle"
bundle install
echo "+++ :ruby: Running tests"
bundle exec rspec spec/Dockerfile_spec.rb
