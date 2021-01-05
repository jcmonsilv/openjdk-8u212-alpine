#!/bin/sh
var=$1
echo $(( $( cat /sys/fs/cgroup/memory.max  ) * $var / 100  ))
