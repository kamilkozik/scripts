#! /bin/bash
echo "[`date`][$0] STARTING..." >> /home/kamil/radio.log
amixer -D pulse sset Master 60%
mplayer -volume 55 -nocache -afm ffmpeg http://lodz.radio.pionier.net.pl:8000/pl/tuba10-1.mp3?cache=1540235067_redir__e1_
echo "[`date`][$0] FINISHED" >> /home/kamil/radio.log
