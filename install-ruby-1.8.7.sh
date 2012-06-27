#!/usr/bin/env sh

# Prepare Install Ruby
sudo yum -y install gcc gcc-c++ make zlib-devel httpd-devel openssl-devel curl-devel ncurses-devel gdbm-devel readline-devel sqlite-devel

# Ruby 1.8.7
sudo yum -y install ruby ruby-devel rubygems

