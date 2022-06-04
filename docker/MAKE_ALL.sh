#!/bin/bash

VERSION=`date '+TL-%Y%m%d-%H%M%S'`

echo $VERSION

sed -e "s/CONFIG_VERSION_CODE=.*$/CONFIG_VERSION_CODE=\"$VERSION\"/" .config \
  | sed -e "s/CONFIG_VERSION_PRODUCT=.*$/CONFIG_VERSION_PRODUCT=\"Dr. Thorsten Ludewig (t.ludewig@gmail.com)\"/" \
  > .config.$$

mv .config.$$ .config

make
