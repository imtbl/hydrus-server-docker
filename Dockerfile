FROM python:3.7-alpine

ARG HOST_USER_ID=1000
ARG HOST_GROUP_ID=1000

ENV HOST_USER_ID=$HOST_USER_ID
ENV HOST_GROUP_ID=$HOST_GROUP_ID

RUN \
  if [ $(getent group ${HOST_GROUP_ID}) ]; then \
    adduser -D -u ${HOST_USER_ID} hydrus; \
  else \
    addgroup -g ${HOST_GROUP_ID} hydrus && \
    adduser -D -u ${HOST_USER_ID} -G hydrus hydrus; \
  fi

WORKDIR /usr/src/app

RUN \
  wget "https://github.com/hydrusnetwork/hydrus/archive/v336.tar.gz" && \
  tar zxvf $(ls | grep ".tar.gz") --strip-components 1 && \
  rm $(ls | grep ".tar.gz") && \
  sed -i '/from include import HydrusPy2To3/d' ./server.py && \
  sed -i '/HydrusPy2To3.do_2to3_test()/d' ./server.py && \
  chown -R hydrus:hydrus /usr/src/app && \
  chmod +x server.py && \
  chmod +x bin/swfrender_linux bin/upnpc_linux && \
  rm \
    bin/swfrender_osx \
    bin/swfrender_win32.exe \
    bin/upnpc_osx \
    bin/upnpc_win32.exe && \
  mkdir /data && chown -R hydrus:hydrus /data && \
  apk --no-cache add \
    build-base \
    ffmpeg \
    jpeg-dev \
    libffi-dev \
    linux-headers \
    openssl \
    openssl-dev && \
  pip install virtualenv && \
  virtualenv venv && \
  source venv/bin/activate && \
  pip install \
    beautifulsoup4~=4.7.1 \
    lz4~=2.1.6 \
    numpy~=1.16.0 \
    pillow~=5.4.1 \
    psutil~=5.4.8 \
    pycryptodome~=3.7.3 \
    pylzma~=0.5.0 \
    pyopenssl~=18.0.0 \
    pyyaml~=3.13 \
    requests~=2.21.0 \
    send2trash~=1.5.0 \
    service_identity~=18.1.0 \
    twisted~=18.9.0 && \
  rm -r ~/.cache && \
  apk del build-base jpeg-dev libffi-dev linux-headers openssl-dev

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint
RUN chmod +x /usr/local/bin/docker-entrypoint

EXPOSE 45870/tcp
EXPOSE 45871/tcp
EXPOSE 45872/tcp

USER hydrus

ENTRYPOINT ["docker-entrypoint"]
