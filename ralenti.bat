set chaine=RALENTI_
set chaine1=RAPIDE_
::# 2 fois plus lent (ralenti)
::ffmpeg -i %1 -vf "setpts=2.0*PTS" %chaine%%~n1.MP4 
ffmpeg -i %1 -ss 00:03:30.000 -t 10 -c copy TRIM.mp4

ffmpeg -i TRIM.mp4 -vf "setpts=2.0*PTS" %chaine%%~n1.MP4 
::ffmpeg -i %1 -ss 00:03:40.000 -t 10 -vf "setpts=2.0*PTS" %chaine%%~n1.MP4 

::# 2 fois plus rapide
::ffmpeg -i TRIM.mp4 -vf "setpts=0.5*PTS" %chaine1%%~n1.MP4
pause
::Pour le son de la vidéo (attention, pour le son, la valeur du coefficient doit être comprise entre 0.5 et 2.0) :

	
::ffmpeg -i vid.mp4 -af "atempo=0.5" out.mp4 # 2 fois plus lent