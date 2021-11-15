FROM paperist/alpine-texlive-ja:latest

RUN \
    apk add --no-cache make entr coreutils

WORKDIR /workdir

CMD ["./build-pdf.sh"]