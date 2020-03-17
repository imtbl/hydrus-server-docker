FROM python:3.8-slim-buster

ARG USER_ID=1000
ARG GROUP_ID=1000

ENV \
  USER_ID=$USER_ID \
  GROUP_ID=$GROUP_ID

WORKDIR /usr/src/app

COPY ./hydrus .
COPY ./deb .

RUN \
  apt-get update && apt-get install --no-install-recommends -y \
    build-essential \
    ffmpeg \
    multiarch-support \
    wget && \
  dpkg -i libjpeg8_8d-2_amd64.deb && \
  rm libjpeg8_8d-2_amd64.deb && \
  pip install --upgrade pip && \
  pip install virtualenv && \
  virtualenv venv && \
  . venv/bin/activate && \
  pip install \
    beautifulsoup4~=4.8.2 \
    chardet~=3.0.4 \
    lz4~=3.0.2 \
    numpy~=1.18.2 \
    opencv-python-headless~=4.2.0.32 \
    pillow~=7.0.0 \
    psutil~=5.7.0 \
    pylzma~=0.5.0 \
    pyopenssl~=19.1.0 \
    pyyaml~=5.3 \
    requests~=2.23.0 \
    send2trash~=1.5.0 \
    service_identity~=18.1.0 \
    twisted~=19.10.0 && \
  rm -r ~/.cache && \
  apt-get remove build-essential --purge -y && \
  apt-get clean && apt-get autoremove --purge -y && \
  rm -rf /var/lib/apt/lists/* && \
  chown -R ${USER_ID}:${GROUP_ID} /usr/src/app && \
  chmod +x \
    server.py \
    bin/swfrender_linux \
    bin/upnpc_linux && \
  mkdir /data && chown -R ${USER_ID}:${GROUP_ID} /data

COPY docker-cmd-start.sh /usr/local/bin/start
RUN chmod +x /usr/local/bin/start

EXPOSE 45870/tcp 45871/tcp 45872/tcp

HEALTHCHECK --interval=1m --timeout=10s --retries=3 \
  CMD wget --quiet --tries=1 --no-check-certificate --spider \
    https://localhost:45870 || exit 1

VOLUME /data

USER ${USER_ID}:${GROUP_ID}

CMD ["start"]
