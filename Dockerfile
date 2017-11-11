FROM java:8
COPY sources.list /etc/apt
COPY pip.conf /etc/pip.conf

RUN apt-get update && \
    apt-get install -y \
                python3 \
                python3-pip \
                git

RUN pip3 install esrally
RUN git config --global user.email imrockybean@gmail.com

RUN apt-get clean && \
        rm -rf /var/lib/apt/lists/*

RUN esrally configure

RUN mkdir /root/.rally/benchmarks
COPY teams /root/.rally/benchmarks/teams
RUN cd /root/.rally/benchmarks/teams/default && git init && git add -A && git commit -m"init team"

WORKDIR /root
