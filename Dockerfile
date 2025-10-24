FROM gcc:latest

# set /app as container working dir
WORKDIR /app

# copy make file to container work dir
COPY Makefile .

# copy sources to container work dir
COPY src/ ./src

# copy objects to container work dir
COPY obj/ ./obj

# copy include to container work dir
COPY include/ ./include

# run makefile
RUN make prime

# define an cli cmd w/ args
ENTRYPOINT ["./prime"]


# FAQ: CMD [defined default; can be overriden] vs ENTRYPOINT[main executable; accepts arguments]
