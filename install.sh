#!/bin/sh
set -e

error() {
  echo "$1"
  exit 1
}

[ -d speedtest ] && error "The speedtest folder already exists"
mkdir speedtest || error "Unable to create the speedtest folder"
cd speedtest || error "Unable to find the folder speedtest"
curl -L https://github.com/DavBfr/html5_speedtest/archive/master.tar.gz | tar -zx --strip-components=1
