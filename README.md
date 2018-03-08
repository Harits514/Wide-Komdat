<h1 align='center'><img src="https://cloud.githubusercontent.com/assets/873584/4606328/4e848b96-5219-11e4-8db1-fa12774b57b4.png"></h1>

 # WIDE

# Sekilas Tentang Wide

Wide adalah Web-based IDE untuk bahasa pemrograman Go yang dibuat oleh [Daniel](https://github.com/88250) dan [Vanessa](https://github.com/Vanessa219).

Wide adalah IDE yang mudah dan aman untuk digunakan, dengan fitur untuk mendukung kerja entah dalam tim atau perorangan, integrasi dengan apps lain, kemudahan pemakaian untuk pemula dan dukungan Cross-Platform untuk memudahkan penggunanya mengaksesnya diberbagai platform. Karakteristik istimewa dari Wide adalah Wide adalah satu-satunya Web-Based GoLang IDE yang ditulis dengan Go itu sendiri, membuatnya menjadi spesial dibanding yang lain.

Klik [disini](https://github.com/b3log/wide) untuk melihat laman github Wide.

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


Install box ubuntu xenial (16.04)
```
vagrant init ubuntu/xenial64
```
Jalankan box
```
vagrant up
```
Masuk ke box vagrant
```
vagrant ssh
```

## Go-Lang
<h1 align='center'><img src="https://i.imgur.com/vybIOuv.png"></h1>

Bahasa Pemrograman Go-Lang adalah proyek open source yang dikembangkan di Google oleh Robert Griesemer, Rob Pike, dan Ken Thompson. Go adalah bahasa pemrograman yang ekspresif, ringkas, bersih, dan efisien. Mekanisme konkurensinya membuat menulis program menjadi lebih mudah. Go mempunyai waktu kompilasi yang cepat. 

## Set up golang

Kunjungi dari [official repository](https://golang.org/dl/) untuk melihat versi yang sesuai dengan sistem operasi yang dimiliki.
Setelah memilih versi dan jenis sistem operasi yang disupport, download ke box
```
wget https://dl.google.com/go/go1.10.linux-amd64.tar.gz
```

Extract archive ke home directory (best practice)
```
tar -xf ~/
```
