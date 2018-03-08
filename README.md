## Menggunakan vagrant

## Instalasi Vagrant

#### Automatic Install


##### Ubuntu
```
sudo apt install vagrant
```

#### Manual Install
[Download package vagrant](https://www.vagrantup.com/downloads.html)


##### Ubuntu
```
sudo dpkg -i vagrant*deb
```


## Set Up vagrant

```
# Install box ubuntu xenial (16.04)
vagrant init ubuntu/xenial64

# Jalankan box
vagrant up

# Masuk ke box vagrant
vagrant ssh
```
