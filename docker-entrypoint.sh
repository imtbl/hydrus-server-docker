#!/bin/bash

stop() {
  ./server stop -d="/data"
}

trap "stop" SIGTERM

./server -d="/data" &

wait $!
