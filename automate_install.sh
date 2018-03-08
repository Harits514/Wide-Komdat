#!/bin/bash
wget https://dl.google.com/go/go1.10.linux-amd64.tar.gz

tar -xf  go*.tar.gz 

echo "export GOPATH=~/gopath" >> ~/.bashrc
echo "export GOROOT=~/go" >> ~/.bashrc
echo "export PATH=$PATH:$HOME/go/bin" >> ~/.bashrc
echo "export GOBIN=$HOME/gopath" >> ~/.bashrc
git clone https://github.com/b3log/wide

cd wide
go get
go get github.com/visualfc/gotools github.com/nsf/gocode github.com/bradfitz/goimports
go build

./wide


# di host, jika tidak jalan, coba matikan firewall
# sudo service firewalld stop
