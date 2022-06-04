#!/bin/bash

docker run --rm --name 8devices-build-env -it -v `pwd`:/work 8devices-build-env $*
