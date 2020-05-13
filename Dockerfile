FROM ubuntu
RUN apt-get update
RUN apt-get install valgrind
RUN apt install gcc
WORKDIR /files
CMD gcc template.c -o executable -pthread && valgrind ./executable

