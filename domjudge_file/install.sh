#!/bin/bash

## update
#sudo apt-get update

## necessary install
#sudo apt install -y gcc g++ make zip unzip mysql-server \
#        apache2 php php-cli libapache2-mod-php \
#        php-gd php-curl php-mysql php-json php-zip \
#        php-mcrypt php-gmp php-xml php-mbstring \
#        bsdmainutils ntp phpmyadmin libcgroup-dev \
#        linuxdoc-tools linuxdoc-tools-text \
#        groff texlive-latex-recommended texlive-latex-extra \
#        texlive-fonts-recommended texlive-lang-european

## php module
#sudo phpenmod json
#sudo apt-get install -y php-mbstring

## judgehost
#sudo apt install -y libcurl4-gnutls-dev libjsoncpp-dev libmagic-dev
#sudo apt install -y make sudo debootstrap libcgroup-dev \
#        php-cli php-curl php-json php-zip procps \
#        gcc g++ openjdk-8-jre-headless \
#        openjdk-8-jdk ghc fp-compiler

## domjudge
#wget https://www.domjudge.org/releases/domjudge-5.3.2.tar.gz
#tar zvxf domjudge-5.3.2.tar.gz
#cd domjudge-5.3.2/
#./configure --prefix=$HOME/domjudge
#make build
#sudo make install-domserver && sudo make install-judgehost

## databsase setup
#cd $HOME/domjudge/domserver/bin
#./dj_setup_database -uroot -r install

## apache2 setup
#sudo ln -s $HOME/domjudge/domserver/etc/apache.conf /etc/apache2/conf-available/domjudge.conf
#sudo a2enconf domjudge
#sudo apache2ctl graceful

## on judgehost add user
#sudo useradd -d /nonexistent -g nogroup -s /bin/false domjudge-run
#sudo groupadd domjudge-run
#sudo cp $HOME/domjudge/judgehost/etc/sudoers-domjudge /etc/sudoers.d/

## chroot setup
#sudo $HOME/domjudge/judgehost/bin/dj_make_chroot
#sudo $HOME/domjudge/judgehost/bin/create_cgroups
