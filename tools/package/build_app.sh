#!/bin/bash

jhbuild shell
export PATH=$PREFIX/bin:~/.local/bin:$PATH

export SDL_PREFIX=~/.local/usr
./tools/sdl_from_source.sh

go get
go build openwar.go

cd tools/package/app-bundler
gtk-mac-bundler openwar.bundle

cd ../Output
7z a -tzip ../../OpenWar.zip OpenWar.app
cd ../../
