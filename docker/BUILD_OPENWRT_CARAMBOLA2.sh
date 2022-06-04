#!/bin/bash

./BUILD_DOCKER_IMAGE.sh
git clone -b openwrt-19.07-ar71xx-4.14 https://github.com/thorsten-l/openwrt-8devices carambola2
cd carambola2
docker run --rm --name 8devices-build-env -it -v `pwd`:/work 8devices-build-env ./build.sh carambola2
