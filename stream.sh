gphoto2 --capture-movie --stdout | ffmpeg -re -i pipe:0 -vcodec copy -f rtp rtp://192.168.178.23:5000
