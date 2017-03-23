#!/bin/bash

flag=0 #checks for error during installation


sudo apt-get -y install python-pip python-dev build-essential || flag=1
sudo pip install --upgrade pip || flag=1

#Ipython
sudo apt-get -y install ipython || flag=1

#Ipython-Notebook
sudo apt-get -y install ipython-notebook || flag=1

#requests
sudo pip install requests

#flask
sudo pip install Flask

#beautiful soup
sudo pip install beautifulsoup4


if [ $flag == 1 ]
then
  echo "------------------------- Note ---------------------------"
  echo "Some package have not been installed. Please run the script again. Already downloaded packages will not be downloaded again."
  exit
fi
echo "---------------- Successfull ! ---------------"