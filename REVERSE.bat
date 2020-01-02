set chaine=REVERSE_
set chaine1=REVERSE1_
set chaine2=BOOMERANG_
::ffmpeg -i %1 -vf reverse %chaine%%~n1.MP4 
::ffmpeg -i %1 -vf reverse -af areverse %chaine1%%~n1.MP4

::/RAPIDE X2
::ffmpeg -y -i %1 -filter_complex [0]reverse[r];[0][r][0]concat=n=3,setpts=0.5*PTS %chaine2%%~n1.MP4
::/LENT X0.5
ffmpeg -y -i %1 -filter_complex [0]reverse[r];[0][r][0]concat=n=3,setpts=2*PTS %chaine2%%~n1.MP4
pause