#ffmpeg \
  #-f avfoundation \ osx input format
  #-i "default" \ std mac camera
  # first output begins here :
  #-c:v libx264 \ video codec for h264
  #-c:a copy \ keep audio codec as is
  #-pix_fmt yuv420p \ pixel format
  #-profile:v baseline \ 264 profile
  #-level:v 3.0 \ 264 level
  #-b:v 400K \ video bit rate 400 kb/s
  #-r 25 \ frame rate 12 fps
  #-g 300 \ The -g option is the "group of pictures" (GOP) size, which is the number of frames between keyframes.  With a smaller number, your output will have more keyframes, which means that streaming clients will be able to recover more quickly if they drop packets for some reason.  It also will have a detrimental effect on file size.
  #-s 480x270 \ frame size WxH
  #-f hls \ http live streaming format
  #-hls_time 1 \ Set the segment length in seconds
  #public/mystream.m3u8 \ hls output destination
  # second output begins here :
  #-c:v libx264 \
  #-c:a copy \
  #-pix_fmt yuv420p \
  #-profile:v baseline \
  #-level:v 3.0 \
  #-b:v 400K \
  #-r 25 \
  #-g 300 \
  #-s 1280x720 \
  #-f segment \ segment the output
  #-segment_time 20 \ using time spans of 20s
  #-reset_timestamps 1 \ Reset timestamps at the begin of each segment, so that each segment will start with near-zero timestamps.
  #public/mp4/out%02d.mp4 /mp4 output destination
ffmpeg \
  -c:v libx264 \
  -c:a copy \
  -pix_fmt yuv420p \
  -profile:v baseline \
  -level:v 3.0 \
  -b:v 400K \
  -r 25 \
  -g 300 \
  -s 1280x720 \
  -f hls \
  -hls_time 1 \
  public/hls/mystream.m3u8 \
  -c:v libx264 \
  -c:a copy \
  -pix_fmt yuv420p \
  -profile:v baseline \
  -level:v 3.0 \
  -b:v 400K \
  -r 25 \
  -g 300 \
  -s 1280x720 \
  -f segment \
  -segment_time 20 \
  -reset_timestamps 1 \
  public/mp4/out%02d.mp4
  #-f avfoundation \
  #-i "default" \
  #-c:v libx264 \
  #-c:a copy \
  #-pix_fmt yuv420p \
  #-profile:v baseline \
  #-level:v 3.0 \
  #-b:v 400K \
  #-r 25 \
  #-g 300 \
  #-s 1280x720 \
  #-f flv \
  #rtmp://localhost:1935/hls/movie