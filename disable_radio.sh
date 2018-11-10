#! /bin/bash
ps aux | grep "radio" | awk 'NR==1{print $2}' | xargs kill
