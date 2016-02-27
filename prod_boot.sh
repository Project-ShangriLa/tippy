#!/bin/sh
bundle exec unicorn -c unicorn.rb -D -E production
