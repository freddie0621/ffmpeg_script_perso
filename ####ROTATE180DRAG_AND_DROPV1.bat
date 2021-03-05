set chaine=_ROTATE180
::for %%1 in ("*.mp4") do ffmpeg -i %%1 -vf hflip  -c:a copy  "newfiles\%chaine%%%~n1.MP4"
::ffmpeg -i %1 -metadata:s:v rotate="180" -c:a copy  "newfiles\%~n1%chaine%.MP4"
::ffmpeg -i %1 -metadata:s:v rotate="180" -c:a copy  "%~n1%chaine%.MP4"

::ffmpeg -i %1 -metadata:s:v rotate="180" -c:a copy  "%~n1%chaine%.MP4"

::for %%1 in ("*.avi") do ffmpeg -i %%1 -strict -2 -c:v libx264 -crf 19 -preset slow -c:a aac -b:a 192k -ac 2 "newfiles\%chaine%%%~n1.avi"
ffmpeg -i %1 -vf "transpose=2,transpose=2,format=yuv420p" -metadata:s:v rotate=0 -codec:v libx264 -codec:a copy  "%~n1%chaine%.MP4"

pause
