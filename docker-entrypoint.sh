#!/bin/bash

stop_server() {
  ./server stop -d="/data"
}

trap "stop_server" SIGTERM

./server -d="/data" &

wait $!
