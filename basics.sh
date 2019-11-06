#!/bin/sh

sudo apt-get update
sudo apt-get upgrade
sudo apt-get -y install build-essential cmake g++ gfortran git pkg-config python-dev software-properties-common wget htop imagemagick
sudo apt-get autoremove
