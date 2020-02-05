::ffmpeg  -i %1 -ss 00:00:03 -t 00:01:08 -c:v libx264 -crf 18 -preset slow -c:a copy "%~n1_output.mp4"
ffmpeg  -i %1  -c:v libx264 -crf 18 -preset slow -c:a copy "%~n1_output.mp4"
pause