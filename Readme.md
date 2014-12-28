## git

```bash

	sudo yum install -y git

```

## clone

```bash

	git clone https://github.com/torkale/streaming.git

```

## ffmpeg

```bash

	wget http://ffmpeg.gusari.org/static/64bit/ffmpeg.static.64bit.latest.tar.gz

	tar xvf ffmpeg.static.64bit.latest.tar.gz

```

## on 'device'

```bash

	TARGET=<remote ip> sh ./video_grep.sh

```

## on remote

change ip on grep.sdp to match 'device' ip

```bash

	sh ./video_stream.sh 

```

On another terminal

```bash
  cd public && python -m SimpleHTTPServer 8000
```
