::ffmpeg -i %1 -c copy -map 0 -segment_time 00:01:00 -f segment output%03d.mp4

::ffmpeg -i %1 -c copy -map 0 -segment_time 00:01:00 -f segment -reset_timestamps 1 output%03d.mp4

::ffmpeg -i %1 -threads auto -vcodec copy -f segment -segment_time 2  cam_out_h264%04d.mp4

::ffmpeg -i %1 -map 0 -c copy -f segment -segment_time 18 output_%03d.mp4

::ffmpeg -i bizarre.mp4 -c copy -map 0 -segment_time 8 -f mp4 segment output_%03d.mp4

::ffmpeg -i %1 -c:v libx264 -crf 22 -map 0 -segment_time 9 -g 9 -sc_threshold 0 -force_key_frames "expr:gte(t,n_forced*9)" -f mp4 segment %~n1%03d.mp4

::ffmpeg -i bizarre.mp4 -f segment -strftime 1 -segment_time 10 -segment_format mp4  %03d_out_%~n1.mp4

ffmpeg -i %1 -c copy -map 0 -segment_time 00:01:00 -f segment -reset_timestamps 1 %~n1_%%04d.mp4
pause