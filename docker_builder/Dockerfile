FROM ubuntu:latest

# Install some necessary things.
RUN apt-get update
RUN apt-get install -y texlive texlive-lang-polish
RUN apt-get install -y make

RUN apt-get install -y locales # for index in 2.8 to work
RUN locale-gen pl_PL.UTF-8
ENV LANG='pl_PL.UTF-8' LANGUAGE='pl_PL:en' LC_ALL='pl_PL.UTF-8'

RUN apt-get install -y calibre # for mobi output
RUN apt-get install -y build-essential # will not be needed with songs-3.0

# Copy all our files into the image.
RUN mkdir /app
WORKDIR /app
COPY songs-2.18.tar.gz /app/

RUN tar -zxvf songs-2.18.tar.gz
RUN cd songs-2.18 && ./configure texmfdir=/usr/local/share/texmf/ && (make || make) && make install
# docker build -t mlewicki/latex-songs .
# docker push mlewicki/latex-songs