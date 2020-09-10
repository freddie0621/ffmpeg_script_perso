del input.txt /Q
del mux*.avi /Q
for %%1 in ("*.avi") do  echo file %%~n1.avi >>input.txt
set chaine=YOUTUBE_
ffmpeg -f concat -i input.txt -vcodec copy -acodec copy Mux1.avi
::for %%1 in ("Mu*.avi") do ffmpeg -i %%1  -s 1280:720  -pix_fmt yuv420p -movflags +faststart "newfiles\%chaine%%%~n1B.mp4"
for %%1 in ("Mu*.avi") do ffmpeg -i %%1  -s 1280:720  -pix_fmt yuv420p -movflags +faststart "%chaine%%%~n1B.mp4"