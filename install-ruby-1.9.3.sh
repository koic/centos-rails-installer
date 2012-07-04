#!/usr/bin/env sh

# Prepare Install Ruby
sudo yum -y install gcc gcc-c++ make zlib-devel httpd-devel openssl-devel curl-devel ncurses-devel gdbm-devel readline-devel sqlite-devel

# for Ruby 1.9.3
pushd

cd /tmp

wget http://ftp.riken.jp/Linux/fedora/epel/RPM-GPG-KEY-EPEL-6
sudo rpm --import RPM-GPG-KEY-EPEL-6

echo "[epel]
name=EPEL RPM Repository for Red Hat Enterprise Linux
baseurl=http://ftp.riken.jp/Linux/fedora/epel/6/$basearch/
gpgcheck=1
enabled=0" > /etc/yum.repos.d/epel.repo

sudo yum -y --enablerepo=epel install libyaml-devel

wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p194.tar.gz
tar zxvf ruby-1.9.3-p194.tar.gz
cd ruby-1.9.3-p194

./configure
# ./configure --prefix=$HOME/.rbenv/versions/1.9.3-p194
make
make install

popd

