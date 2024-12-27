#!/bin/sh

# This script downloads the dependencies for the tools
# that I (JBQ) use for retrocomputing development.

mkdir -p ~/code/build/log

export PACKAGES='curl build-essential golang-go
  git cmake scons autoconf libtool flex bison
  libsdl1.2-dev libsdl2-dev libpng-dev
  libfreetype-dev libgtk-3-dev libncurses-dev'

echo Fetching apt packages requires root password
sudo apt install $PACKAGES || exit $?

for P in $PACKAGES
do
  echo $P installed at $(apt version $P) >> ~/code/build/log/log.txt
done