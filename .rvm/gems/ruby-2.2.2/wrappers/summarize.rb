#!/usr/bin/env bash

if
  [[ -s "/home/lee/.rvm/gems/ruby-2.2.2/environment" ]]
then
  source "/home/lee/.rvm/gems/ruby-2.2.2/environment"
  exec ruby summarize.rb "$@"
else
  echo "ERROR: Missing RVM environment file: '/home/lee/.rvm/gems/ruby-2.2.2/environment'" >&2
  exit 1
fi
