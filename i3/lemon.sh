#!/bin/bash
while true; do
    dtime=$(date "+%B %e, %Y %l:%M:%S %p")
    echo "%{c}$dtime"
    sleep 1
done
