set extension=.MP4
set chaine=_LUT
set chainedeux=LUT_COLOR_
::for %%1 in ("*.acv") do ffmpeg -i INPUT.MP4 -pix_fmt yuv420p  -vf curves=psfile='%%1'  -c:a copy %%~n1%chaine%
::for %%1 in ("*.cube") do ffmpeg -i %~nx1   -vf lut3d='%%1'  -c:v dnxhd -pix_fmt yuv422p  -c:a copy %%~n1%chaine%.JPG

::for %%1 in ("*.cube") do ffmpeg -i %~nx1  -qscale:v 2 -vf "select='eq(pict_type,PICT_TYPE_I)',lut3d=BESTMOYEN.CUBE"    -vsync vfr %%~n1%chaine%.JPG
for %%1 in ("*.cube") do ffmpeg -i %1    -qscale:v 2 -vf "select='eq(pict_type,PICT_TYPE_I)',lut3d=%%1"    -vsync vfr   %~n1_%%~n1%chaine%.JPG

::ffmpeg -i GH010789.MP4  -pix_fmt yuv420p -vf lut3d=BESTMOYEN.CUBE -c:a copy luted6BESTMOYEN1.mp4

::for %%1 in ("*.mp4") do ffmpeg -i %%1  -pix_fmt yuv420p -vf lut3d=BESTMOYEN.CUBE -c:a copy "newfiles\%chaine%%%~n1.MP4"
pause
pause
::ffmpeg -i INPUT.MP4 -t 10 -vf "format=pix_fmts=yuv420p,lut3d=file=Zed_32.CUBE" testhd_lut.mov

::ffmpeg -i INPUT.MP4 -vf lut3d=Zed_32.CUBE -c:a copy output.mp4
::ffmpeg -i INPUT.MP4  -pix_fmt yuv420p -vf lut3d=Vintage.cube -c:a copy luted.mp4
::ffmpeg -i ALLEMAGNE19_347.Mp4  -pix_fmt yuv420p -vf lut3d=gro.cube -c:a copy luted3.mp4
::ffmpeg -i INPUT.MP4  -pix_fmt yuv420p -vf lut3d=Turin.3DL -c:a copy luted4.mp4
::ffmpeg -i INPUT.MP4  -pix_fmt yuv420p -vf lut3d=BEST.CUBE -c:a copy luted4BEST.mp4
::ffmpeg -i GH010789.MP4  -pix_fmt yuv420p -vf lut3d=BESTMOYEN.CUBE -c:a copy luted6BESTMOYEN1.mp4
::ffmpeg -i "Input.mov" -vf lut3d="ARRIP3D65PQ108-33.cube" -s 1920x1080 -c:v dnxhd -pix_fmt yuv422p -b:v 120M DNxHD_for_Editing.mxf
pause