#!/usr/bin/env bash


sudo apt-get install dh-make

dh_make -s -c gpl -p demo_0.0.1 --createorig -n -y
