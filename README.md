<h1 align='center'><img src="https://cloud.githubusercontent.com/assets/873584/4606328/4e848b96-5219-11e4-8db1-fa12774b57b4.png"></h1>

<h1 style="font-size: 70px;" align = center >WIDE</h1>
 termbin.com/6iub

# Sekilas Tentang Wide

Wide adalah Web-based IDE untuk bahasa pemrograman Go yang dibuat oleh [Daniel](https://github.com/88250) dan [Vanessa](https://github.com/Vanessa219).

Wide adalah IDE yang mudah dan aman untuk digunakan, dengan fitur untuk mendukung kerja entah dalam tim atau perorangan, integrasi dengan apps lain, kemudahan pemakaian untuk pemula dan dukungan Cross-Platform untuk memudahkan penggunanya mengaksesnya diberbagai platform. Karakteristik istimewa dari Wide adalah Wide adalah satu-satunya Web-Based GoLang IDE yang ditulis dengan Go itu sendiri, membuatnya menjadi spesial dibanding yang lain.

Klik [disini](https://github.com/b3log/wide) untuk melihat laman github Wide.

Pada Projek kali ini tim kami menggunakan aplikasi Vagrant untuk memudahkan dalam me-manage, meng-install, dan meng-update aplikasi yang bersangkutan.

# Vagrant
<h1 align='center'><img src="https://i.imgur.com/k4K3LTe.png"></h1>

**Vagrant** adalah apps untuk mem-built dan mengelola lingkungan vm(Virtual Machine) dalam satu alur kerja. Dengan alur kerja yang mudah digunakan dan fokus pada otomasi, Vagrant menurunkan waktu development environment setup dan juga meningkatkan paritas produksi.

**Kenapa Vagrant?** dikutip dari website vagrant: "karena Vagrant menyediakan lingkungan kerja yang mudah dikonfigurasi, dapat direproduksi, dan portabel yang dibangun di atas teknologi standar industri dan dikendalikan oleh satu alur kerja konsisten untuk membantu memaksimalkan produktivitas dan fleksibilitas Anda dan tim Anda".

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

# Go-Lang
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

# Instalasi Wide

### Prasyarat Sistem:
- bla
- bla
- bla

### Langkah Instalasi:

#### 1. Instalasi Golang dari source
Instalasi pada virtual machine menggunakan Go versi terbaru saat dokumentasi ini dibuat (1.10)
```
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
```

2. 

3. Terusin sampai akhir, ingat sumber->http://termbin.com/6iub

# Konfigurasi
Agar alamat dapat diakses oleh host dan komputer lain, firewall dapat dimatikan dahulu
```
sudo service firewalld stop
```

# Konfigurasi nginx (opsional)
![skema](https://github.com/Harits514/Wide-Komdat/raw/master/schema.png)

Wide berjalan sebagai binary pada sebuah port, untuk meningkatkan performa dan juga mendukung fitur lainnya misalnya Gzip compression, caching, dan load balancer, kita dapat menggunakan nginx sebagai reverse proxy.
Instalasi di virtual machine

Instalasi nginx
```
# update repository
sudo apt update

# install nginx
sudo apt install nginx

# jalankan nginx
sudo systemctl start nginx
```

konfigurasi nginx sebagai reverse proxy
buka file konfigurasi nginx
```
sudo vim /etc/nginx/nginx.conf
```

tambah di dalam http{}
```
server {
    listen       80;
    server_name  _;
    location / {
        proxy_set_header X-Forwarded-For $remote_addr;
        proxy_set_header Host            $http_host;
        proxy_pass http://127.0.0.1:7070;
    }

}
```
Kode diatas berguna untuk memforward koneksi di port 80 ke port 7070 yaitu port dimana wide berjalan

Save dengan Esc+ ":wq"
Setelah sudah disave, jalankan
```
sudo nginx -t
```
Agar keluar output yang jika berhasil, ada tulisan successful.

Kemudian restart nginx
```
sudo systemctl restart nginx
```

# Maintenance
Untuk maintenance, kami membuat script cron job dimana script tersebut dapat otomatis mengupdate source Wide dari github.

Untuk mengakses cron job
```
crontab -e
inputkan "5 8 * * 0 ~/automate_update.sh"
```

pada script automate_update.sh:
```
kill $(ps -a | grep wide |  cut -d " " -f 2)
git pull
go get
go get github.com/visualfc/gotools github.com/nsf/gocode github.com/bradfitz/goimports
go build
./wide
```
Script diatas mengterminate binary wide yang sudah berjalan, lalu pull source terbaru dari github, lalu menjalankan wide kembali




# Otomastisasi

# Cara Pemakaian
Langkah pertama yang harus dilakukan yaitu sign-up akun, proses sign-up pada website sama seperti proses sign-up pada website lainnya, tidak ada perlakukan spesial yang diperlukan. Untuk penggunaan IDE secara team, Wide belum support fitur kontributor, untuk melakukan proses edit secara bersamaan dapat dilakukan dengan pemakaian satu akun secara bersama.

Setelah berhasil sign-up kemudian login, maka user akan dibawa ke tampilan default utama :
<h1 align='center'><img src="https://i.imgur.com/gkf5mse.png"></h1>

pada sisi kiri terdapat window file explorer, di kanan terdapat golang-IDE yang akan kita pakai untuk menjalankan program yang ada.

Terdapat sembilan menu-bar yang ada pada IDE yaitu :
1. File
   - Save All  : berfungsi untuk menyimpan hasil kerja kita pada semua file yang telah diubah
   - Close All : berfungsi untuk menutup semua jendela kerja yang telah dibuka
   - Import    : berfungsi untuk menambahkan file-file ke repository dari local disk.
   - Export    : berfungsi untuk mengekspor projek ke local disk
2. Edit
   - Undo,Redo            : kembali ke kondisi sebelum perubahan atau setelah perubahan
   - Select all           : blok semua source code pada jendela IDE
   - Select identifier    : arahkan kursor ke bagian terakhir diketik
   - Goto line            : loncat ke baris yang diinginkan
   - Delete line          : hapus line yang diarahkan kursor
   - Copy lines up,down   : duplikat line ke atas/bawah
   - Delete lines up,down : hapus line ke atas/bawah
3. Source
   - Format               : Rapihkan source code sesuai format golang
   - Autocomplete         : Otomatis merubah potongan kode yang sedang diketikkan
   - Jump To Decl         : Loncat ke deklarasi terakhir
   - Show Expression info : Tampilkan informasi package yang terkait dengan potongan kode
   - Find usages          : Temukan fungsi dari suatu potongan kode
   - Toggle comment       : Merubah potongan kode menjadi komentar atau sebaliknya
4. Find
   - Goto File     : Pindah ke file yang diinginkan pada repository
   - Find in Files : temukan file yang berisi kata kunci yang diinginkan
   - Find          : temukan kata kunci yang diinginkan pada file
   - Find next     : temukan kata kunci yang diinginkan selanjutnya pada file
   - Find previous : temukan kata kunci yang diinginkan selanjutnya pada file
   - Replace       : Ganti kata kunci pada file dengan kata kunci lain yang diinginkan satu-persatu
   - Replace All   : Ganti kata kunci pada file dengan kata kunci lain yang diinginkan semuanya
5. Focus
   - Focus to Editor       : 
   - Focus to File Tree    :
   - Focus to Output       :
   - Focus to Search       :
   - Focus to Notification :

# Pembahasan
Golang yang mendapatkan popularitas yang tinggi akhir-akhir ini membuat banyak IDE untuk GoLang bermunculan.Diantara IDE tersebut banyak yang merupakan Cloud-Based IDE, dan tentunya semua IDE tersebut punya keuntungan dan kekurangannya tersendiri. Banyak dari IDE tersebut hanya sekedar untuk menjalankan potongan kode GoLang saja(PlayGround), pada pembahsan kami kali ini, kami akan membandingkan Wide dengan Cloud based IDE yang lain, yang menawarkan seperti apa yang ditawarkan oleh Wide, yaitu dukungan untuk pengembangan projek bersama dalam tim, dan kemampuan untuk menyimpan file di dalam Cloud.

## Kelebihan-Kekurangan Cloud IDE Lain
1. Cloud9

Cloud9 Adalah cloud based IDE yang dikembangkan oleh amazon dan mendukung berbagai bahasa, tidak hanya Golang.
Kelebihan dari Cloud9 adalah:
* Pengembang dapat langsung melakukan coding dengan konfigurasi workspace awal.
* Mempunyai fitur terminal yang sudah built-in
* Mempunyai fitur image editor yang sudah built-in
* Fitur penyimpanan cloud
* Drag and Drop ability
* Mempunyai fitur database(MySQL, SQLite, dll)
* Tersambung ke Github,BitBucket dan Google cloud platform
* Mendukung kerja tim dalam sebuah projek

Walaupun mempunyai kelebihan yang tebilang sangat banyak dan memukau, Cloud9 juga mempunyai kelemahan diantaranya adalah:
* Sebelum memakainya, harus Sign-in terlebih dahulu, dimana salah satu prasyarat sign-in nya adalah nomor dari kartu kredit yang akitf, membuatnya tidak bisa dipakai oleh kalangan banyak
* Berbayar. Setelag sign in dengan nomr kartu kredit, user akan memasuki masa trial, sesudah masa aktif trial habis, user harus membayar untuk memakai.
* Tidak student-friendly, karena berbayar
* Fitur auto complete dan debugging untuk Go masih belum bagus dan belum komplit

2.CodeEnvy
<h1 align='center'><img src="https://i.imgur.com/A8vSg79.png"></h1>
CodeEnvy adalah cloud based IDE yang selanjutnya. CodeEnvy dimiliki oleh RedHat dan mendukung berbagai bahasa, tidak hanya go, dan dibangun diatas Eclipse Che, cloud based IDE open-source milik Eclipse.

Kelebihan:
* Dibangun diatas Cloud Based IDE yang open source
* Fitur penyimpanan cloud untuk file projek
* Dapat menjalankan lebih dari satu bahasa dalam satu projek
* Fitur untuk bekerja sendiri gratis

Kelemahan:
* Fitur untuk kerja kolaboratif berbayar
* Pembatasan pemakaian akun gratisan dengan batas pemakaian RAM

## Kelebihan-Kekurangan Wide
Wide walaupun tidak ditopang oleh perusahaan besar seperti 2 Cloud based IDE diatas, juga mempunyai banyak kelebihan, tidak kalah dengan saingan-saningannya. Kelebihannya diantaranya:
* Dibuat dengan GoLang itu sendiri
* Semua fitur GRATIS untuk dipakai
* Cross-Platform, dapat digunakan bahkan di perangkat mobile
* Setiap pengembang yang terhubung ke projek mempunyai repository source codenya sendiri
* Fitur Playground dapat dipakai tanpa registrasi
* Fitur auto-complete
* Mempunyai fitur penyimpanan cloud untuk file projek
* Beginner-friendly
* Tampilan menggunakan LiteIDE, mudah dimengerti untuk digunakan
* Dapat diinstall di VM
Walaupun begitu Wide juga kekurangan, diantaranya:
*




# Referensi

1. [Wide Github Page](https://github.com/b3log/wide)
2. [Vagrant main webpage](https://www.vagrantup.com/)
3. [Go-Lang main webpage](https://golang.org/)
4. [Project Report Template Reference](https://github.com/OneStyd/prestashop/blob/master/README.md#)
