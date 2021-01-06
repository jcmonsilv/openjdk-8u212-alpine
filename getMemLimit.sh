#!/bin/sh
var=$1
if [[ -e /sys/fs/cgroup/memory.max ]]; then
  echo $(( $( cat /sys/fs/cgroup/memory.max  ) * $var / 100  ))
elif [[ -e /sys/fs/cgroup/memory/memory.limit_in_bytes  ]]; then
  echo $(( $( cat /sys/fs/cgroup/memory/memory.limit_in_bytes  ) * $var / 100  ))
fi
