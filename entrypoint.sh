#!/bin/bash

set -m # enable job control: wait for all jobs to exit at the end

params=()
while [ $# -gt 0 ]; do
  if [ ${#params[@]} -ge 2 ] && [ "x${params[-1]:0:1}" != "x-" -a "x${params[-2]:0:1}" != "x-" ]; then
    socat "${params[@]}" &
    params=()
  fi
  params+=("$1")
  shift
done

socat "${params[@]}"
