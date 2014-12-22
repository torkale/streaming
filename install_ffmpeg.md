## git

`
	sudo yum install -y git
`

## clone

` 
	git clone https://gitlab.com/nannit/streaming.git
`

## ffmpeg

``` bash

	sudo mkdir /usr/local/bin/ffmpeg

	cd /usr/local/bin/ffmpeg

	sudo wget http://ffmpeg.gusari.org/static/64bit/ffmpeg.static.64bit.latest.tar.gz

	sudo tar xvf ffmpeg.static.64bit.latest.tar.gz

	sudo ln -s /usr/local/bin/ffmpeg/ffmpeg /usr/bin/ffmpeg
```

## on local

``` sh
	TARGET=<remote ip> sh ./video_grep.sh
```

## on remote

change ip on grep.sdp to match local ip

``` sh
	sh ./video_stream.sh
```
