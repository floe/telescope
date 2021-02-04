# preview images from finder scope camera
raspistill -tl 500 -t 999999 -vf -w 960 -h 720 -o out.jpg -n -q 75 -roi 0.25,0.25,0.5,0.5 &
# webserver
python -m SimpleHTTPServer
