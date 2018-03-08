# Vagrant
**Vagrant** adalah apps untuk mem-built dan mengelola lingkungan vm(Virtual Machine) dalam satu alur kerja. Dengan alur kerja yang mudah digunakan dan fokus pada otomasi, Vagrant menurunkan waktu development environment setup, meningkatkan paritas produksi, dan membuat "di mesin saya kerja kok" menjadi alasan jadul.
Karena Vagrant

**Kenapa Vagrant?** karena Vagrant menyediakan lingkungan kerja yang mudah dikonfigurasi, dapat direproduksi, dan portabel yang dibangun di atas teknologi standar industri dan dikendalikan oleh satu alur kerja konsisten untuk membantu memaksimalkan produktivitas dan fleksibilitas Anda dan tim Anda.

Untuk meraih keajaibannya, Vagrant ditopang oleh banyak raksasa. vagrant tersedia untuk VirtualBox, VMware, AWS, atau penyedia lainnya. Kemudian, alat penyediaan standar industri seperti skrip shell, Chef, atau Wayang, dapat menginstal dan mengkonfigurasi perangkat lunak secara otomatis di mesin virtual.
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
