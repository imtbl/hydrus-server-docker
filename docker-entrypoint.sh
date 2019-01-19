#!/bin/sh

source venv/bin/activate

stop() {
  ./server.py stop -d="/data"
}

trap "stop" SIGTERM

./server.py -d="/data" &

wait $!
