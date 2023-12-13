#!/bin/bash

function gup() {
  log=$(git -c color.diff=always pull)
  echo $log
  if echo $log | grep -q Gemfile.lock; then
    echo "Gemfile.lock changed, running bundle install"
    bundle install
  fi
  if echo $log | grep -q db/; then
    echo "db changed, running rails db:migrate"
    rails db:prepare db:seed
  fi
  if echo $log | grep -q yarn.lock; then
    echo "yarn.lock changed, running yarn"
    yarn
    pushd frontend > /dev/null
    yarn
    popd > /dev/null
  fi
  if echo $log | grep -q frontend/vendor/emojis; then
    echo "emojis updated, running git submodule update"
    git submodule update --init
  fi
}
gup
