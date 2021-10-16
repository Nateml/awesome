#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run picom -b
run nm-applet --no-agent
run /usr/lib/geoclue-2.0/demos/agent
run redshift
