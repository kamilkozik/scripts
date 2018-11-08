#! /bin/bash
ps aux | grep "mplayer -volume" | awk 'NR==1{print $2}' | xargs kill
