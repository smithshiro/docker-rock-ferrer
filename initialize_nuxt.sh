#!/bin/bash
# Nextをクリーンインストールするスクリプトです
if [ ! -d ./src/front ]; then
  mkdir -p ./src/front
fi
rm -rf ./src/front/.*
rm -rf ./src/front/*

docker-compose run node yarn add nuxt

touch ./src/front/.gitkeep
# Gitのサブモジュールをインストールしたい
