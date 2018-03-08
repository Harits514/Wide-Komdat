#!/bin/bash


# crontab
# crontab -e
# tambah "5 8 * * 0 ~/automate_update.sh"

kill $(ps -a | grep wide |  cut -d " " -f 2)

git pull
go get
go get github.com/visualfc/gotools github.com/nsf/gocode github.com/bradfitz/goimports
go build

./wide
