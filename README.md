Name
====
esrally-docker - Docker image to run elasticsearch benchmark tool `esrally`.


Table of Contents
=================
* [Name](#name)
* [Usage](#usage)
* [Build](#build)
* [Author](#author)


Usage
====
1. Pull image. `docker pull rockybean/esrally`
2. Prepare your test data. If you're from China mainland, you can download all the data from following link. Download link is `http://pan.baidu.com/s/1eSrjZgA` and password is  `aagl`.
3. Change your directory to all the track directory and run the following command to run the test.
```
docker run -it -v $(PWD):/root/track rockybean/esrally esrally race --track-path=/root/track/logging --offline --pipeline=benchmark-only --target-hosts=192.168.1.105:9200
```
Build
====

Try to build your own image by following command.

`cd [Project Path]&&docker build -t myesrally .`

Author
======
* [Rockybean](https://github.com/rockybean)
