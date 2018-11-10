#! /bin/bash

# reading args
while getopts "v:" option; do
  case $option in
    v)
      VOLUME=$OPTARG
      ;;
  esac
done

if [[ -z $VOLUME ]]; then
  VOLUME=40
fi

echo "[`date`][$0] STARTING..." >> $HOME/radio.log
amixer -D pulse sset Master 0% &>/dev/null
nohup mplayer -volume 100 -nocache -afm ffmpeg http://lodz.radio.pionier.net.pl:8000/pl/tuba10-1.mp3?cache=1540235067_redir__e1_ &>/dev/null &

for i in $(seq 1 $VOLUME); do
  amixer -D pulse sset Master $i% &>/dev/null
  sleep .2
done

echo "[`date`][$0] FINISHED" >> $HOME/radio.log
