#!/bin/bash -ex

gclient config http://webrtc.googlecode.com/svn/trunk
gclient sync --force
cd trunk
ninja -C out/Debug -t clean
ninja -C out/Debug all

#todo fatlib