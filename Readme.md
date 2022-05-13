<img width="150" height="150" align="left" style="float: left; margin: 0 10px 0 0;" alt="Baqua" 
src="https://uts.ac.id/wp-content/uploads/2021/01/UTS-OFFICIAL.png">

# Rangkuman membuat website perpustakaan menggunakan python django framework
> <p align="center"> M. Alif Aldiansyah      |      20.01.013.066 </p>
## -- Pengenalan 🤔
Django adalah web framework open source yang digunakan untuk membangun website dengan pola arsitektur MVT dan ditulis dalam bahasa python
Web framework sendiri adalah sebuah software kerangka kerja yang membantu membangun website secara cepat dan mudah.

Kemudian MVT merupakan singkatan dari Model  View Template, adapun pengertian dari masing-masing komponen struktur
- Model : Merepresentasikan database dan tabel-tabel pada aplikasi
- View : Fungsi-fungsi yang menangani request dan response pada aplikasi
- Template : User Interface pada aplikasi

## -- Kebutuhan untuk membuat project ⚙️
- [x] **Web Browser** Untuk menampilkan website yang telah dibuat  
- [x] **Text Editor** Untuk mengetikkan code website
- [x] **Command Prompt** Untuk menjalankan project website
- [x] **Python** Sebagai bahasa pemrograman yang digunakan
- [x] **PIP** Untuk package installer python


<h1 align="center">Membuat Project ⚒️</h1>

## -- Mulai project baru
membuat django project dapat dilakukan dengan mengetikkan printah berikut pada cmd apabila package django telah terinstall
```cmd
django-admin startproject perpus
```
**Perpus** adalah nama project yang akan dibuat. Ketika perintah telah dijalankan maka akan muncul folder dan file-file berikut :
<img width="208" alt="image" src="https://user-images.githubusercontent.com/92983457/168098297-7135189b-a57f-4e56-a64d-1c6e41a66ce2.png">


Pada gambar diatas, masing-masing file memiliki fungsi sebagai berikut :
```
manage.py : Berfungsi sebagai file perintah untuk berinteraksi dengan project
__init__.py : Main file yang menandakan Perpus adalah sebuah package
asgi.py : file deployment
settings.py : Konfigurasi Project
urls.py : mengatur url pada website
wsgi : file deployment
```
Untuk menjalankan project django ketikkan perintah ini didalam folder root project, dalam rangkuman ini rootnya adalah **Perpus**
```cmd
python manage.py runserver
```
> Hasil
<img width="386" alt="image" src="https://user-images.githubusercontent.com/92983457/168104061-a1c84db9-d0a0-4b85-9938-33f4d70d48c2.png">

<img width="960" alt="image" src="https://user-images.githubusercontent.com/92983457/168104599-3bd2644c-52a5-4fbf-9334-497c9604ff98.png">

## -- Basic Routing 🛣️

Ketika request sebuah method yang belum ada maka akan muncul error code 404
<img width="697" alt="image" src="https://user-images.githubusercontent.com/92983457/168107039-35f16b35-3caf-48fe-8190-e7c0f46c9a04.png">

Gambar diatas menandakan bahwa url **/buku** tidak ada, untuk membuat url baru, edit **urls.py**

<img width="282" alt="image" src="https://user-images.githubusercontent.com/92983457/168109722-59c57864-fe9d-4063-b772-211af31f147b.png">

Pada gambar diketahui bahwa :
- [x] "buku/" adalah route url
- [x] buku adalah method yang mengembalikan httpResponse pada client
<img width="267" alt="image" src="https://user-images.githubusercontent.com/92983457/168111020-de7c9ffc-2f1b-4fd4-a291-2a5087363212.png">

Route baru telah berhasil dibuat

## -- Membuat Apps djengo 🎲
Apps adalah sebuah aplikasi pada django yang memiliki model Database, View, Template UrlCons, setiap project django dapat memiliki lebih dari satu Apps
Untuk membuat apps dapat dilakukan dengan mengetikkan perintah
```
django-admin startapp perpustakaan
```
atau 
```
python manage.py startapp perpustakaan
```
**perpustakaan** merupakan nama dari apps pada project perpus, adapun fungsi setiap file pada apps adalah sebagai berikut
| Nama file | Keterangan |
| :---: | :---: |
| \_\_init\_\_.py | Main file package | 
| Admin.py | Meregistrasi apps yang dibuat untuk ditampilkan ke django-admin | 
| Apps.py | Konfirgurasi apps | 
| Models.py | Menejemen ke database \/ database connector | 
| Test.py | Untuk melakukan testing | 
| views.py | Kumpulan fungsi-fungsi yang akan ditampilkan sebagai response maupun request | 

agar project dapat mengakses apps perpustakaan install apps dengan cara meng-edit settings.py pada perpus dibagian "Installed Apps" seperti berikut :

<img width="547" alt="image" src="https://user-images.githubusercontent.com/92983457/168120725-018d787b-20ff-4d38-be85-a3209bcf7345.png">

## -- Membuat views 👀
Edit file views.py seperti ini

```py
from django.shortcuts import render

# Create your views here.
from django.http import HttpResponse

def buku(request):
    return HttpResponse('Halaman buku')
 ```
 import fungsi buku dan panggil melalui urls.py seperti ini
 ```py
from django.contrib import admin
from django.urls import path
from perpustakaan.views import buku

urlpatterns = [
    path('admin/', admin.site.urls),
    path('buku/', buku),
]
```
## -- Membuat template 📚
Template digunakan untuk menyimpan file html yang akan ditampilkan ke browser

 - [x] Edit settings.py dibagian TEMPLATES -> "dirs" pada list tambahkan "templates"

<img width="504" alt="image" src="https://user-images.githubusercontent.com/92983457/168126491-71b051ca-1de7-4fde-baa2-aa65860f0566.png">

- [x] Buat folder templates dan file buku.html

<img width="685" alt="image" src="https://user-images.githubusercontent.com/92983457/168129875-dd2401ff-1057-42bc-ad79-c8b05b8c758e.png">

- [x] Edit views.py

<img width="272" alt="image" src="https://user-images.githubusercontent.com/92983457/168127455-fee467f7-ac27-4e68-8fb3-3bac8965da80.png">

### Template language

template language dibagi menjadi 3 yaitu 
- Subtitusi variabel untuk menampilkan variabel ke template yang berasal dari view
<img width="327" alt="image" src="https://user-images.githubusercontent.com/92983457/168132563-5537ca45-9007-4386-8892-7700e3986ccd.png">
<img width="193" alt="image" src="https://user-images.githubusercontent.com/92983457/168132725-d16dce0a-ce6f-4acb-8907-1e77a3d3caf0.png">

- Filter untuk memodifikasi variabel yang akan ditampilkan
<img width="199" alt="image" src="https://user-images.githubusercontent.com/92983457/168133451-c2ebe3fa-c9cb-44c5-95ea-e8bb90f463f8.png">
<img width="119" alt="image" src="https://user-images.githubusercontent.com/92983457/168133571-279e708a-e86a-4f4e-a51e-5507f75b341f.png">

- Tags untuk melakukan logic pemrograman
<img width="315" alt="image" src="https://user-images.githubusercontent.com/92983457/168135873-49154b8b-44b2-4990-9068-4406956536ab.png">
<img width="317" alt="image" src="https://user-images.githubusercontent.com/92983457/168136125-75cdf1fa-3e3d-41a0-b2a3-53ec1f4ebe3a.png">
<img width="170" alt="image" src="https://user-images.githubusercontent.com/92983457/168136269-252934a3-249d-48a7-93dc-65feb5cadae8.png">

### Template Extending

> beberapa perubahan pada file struktur
<img width="193" alt="image" src="https://user-images.githubusercontent.com/92983457/168142702-da3e0f90-6d13-45dc-8996-6b9c39f952d9.png">

> buku.html extend base.html sehingga buku.html tidak perlu menuliskan code secara lengkap
<img width="311" alt="image" src="https://user-images.githubusercontent.com/92983457/168143101-c3aa0e2a-4088-4f7d-9cff-91240d421190.png">

> Header file berada pada base.html
<img width="503" alt="image" src="https://user-images.githubusercontent.com/92983457/168143402-04837cc6-566b-4065-9921-89931bd16f6c.png">


## Static File
Static File adalah kumpulan File CSS, Java Script, dan gambar. Static File ini digunakan untuk mempercantik / memperindah tampilan Aplikasi yang dibuat dan memerikan pengalaman kenyamanan saat Aplikasi digunakan.

## Setup Bootstrap
1. Tahap ini cukup mudah dilakukan karena kita hanya perlu memindahkan file – file CSS
dan Java Script kedalam Folder static yang telah di Set Up.
2. Download Bootstrap dan JQuery yang akan digunakan.
3. Selanjutnya panggil file – file tersebut di Base.html

## Setup DataBase
1. Secara default Django menggunakan Mysql dengan nama 'data.sql'. Ini bisa di Rename sesuai dengan keinginan kita seperti ‘perpustakaan.sql’
2. Pada saat pertama kali melakukan Runserver, ini akan mengcreate database saja tidak termasuk tabel – tabel nya database
3. Selanjutnya dilakukan Migrasi dilakukan untuk menyebarkan / menginisialisasi tabel – tabel kedalam db.sqlite3 terhadap database project yang akan dibuat.
4. Jika berhasil melakukan Migrasi, maka akan tampil seperti dibawah ini

## Setup Mysql
1. Pada tahap ini, melakukan Konfigurasi MySql sebagai DBMS untuk project Django yang akan dibuat.
2. Tahap ini bersifat Opsional, bisa tidak digunakan jika ingin menggunakan sqlite3 sebagai DBMS
3. Jika ingin menggunakan MySql sebagai DBMS, selanjutnya install MySql Installer
4. Jika berhasil diinstall, selanjutnya buka MySql Command Line lalu create Database
5. Konfigurasikan Database ke settings.py

## Model
  Models merupakan definitive dari database atau representasi tabel pada database. Dengan menggunakan models ini, kita tidak perlu lagi menggunakan Query SQL untuk membuat tabel di database.
  Ketika melakukan Migrasi pada model buku, maka Django akan melakukan Create Tabel Buku sesuai dengan field – field yang ada pada model buku ini. Maka jadilah Tabel pada Database yaitu Tabel Buku.

## Foreign Key
1. Foreign Key digunakan untuk membuat Relasi antar tabel dalam database Relational.
2. Kelompok_id merupakan Foreign Key yang nanti nya akan diisi oleh id tabel kelompok

## Django Admin
  Django Admin merupakan salah satu fitur yang powerfull yang ada pada Django. Dikatakan Powerfull karena dapat melakukan CRUD sederhana untuk mengelola data pada
model yang kita buat. Model – Model yang kita buat akan ditambahkan kedalam Django Admin. Django admin ini bersifat Private karena diperlukan Login terlebih dahulu untuk dapat mengakses nya. Django admin Sederhana namun sangat membantu. Pertanyaannya ada dua :
1. Bagaimana cara kita log in django admin ini?
2. Bagaimana model-model kita di daftarkan ke dalam django admin ini?
Sebenarnya saat kita membuat projek ada URL yang sudah dibuatkan oleh djangonya yaitu admin, URL inilah untuk mengakses django admin, apabila ingin akses langsung /admin tampilannya langsung django admin log in. Lalu buat akun buka terminal buat username nya dengan nama admin, lalu email addres, dan password 2 kali. Jalankan kembali servernya jika sudah membuat akun. Akun tersebut di masukkan ke dalam log in. Apabila sudah masuk ke dalam akun selanjutnya kita menampilkan model yang sudah kita buat di dalam django admin. Lalu save, model-model yang kita sudah buat sudah masuk sudah terdaftar. Perpustakaan adalah nama X nya, Buku dan kelompok adalah model nya. Power fullnya terdapat di tombol add kalau di klik akan menampilkan ada sebuah form untuk menambahkan data dalam Buku, kita hanya membuat kelas model saja di datakan di dalam django admin. Mengisi judul,penulis,penerbit,jumlah,dan kelompok id dengan mengisi nama dan keterangan dan save. Ini udah termasuk ke database. Kita buka lagi di model kelompok yang sudah terdapat 3 kelompok seperti adaptif,normatif,dan produktif. 
  
## Model Admin
Pada tahap ini, kita akan melakukan custom sederhana terhadap tampilan data buku, fill-fill apa saja yang ditampilkan sebagai informasi seperti judul,penulis,penerbit dan lain-lain. Kita akan menampilkan kotak pencarian dan filter kelompok buku.

## ORM (Object Relational Mapping)
ORM (object relational mapping) merupakan teknik yang digunakan dalam pemrograman untuk menggunakan basis data relasional sebagai penyimpanan data dengan bentuk objek. Perlu diketahui django menggunakan teknik ini untuk menggunakan database relasional.
Kenapa? Agar kode python yang ditulis tidak campur aduk dengan query sql. Jadi, ORM ini bertugas sebagai penghubung aplikasi yang dibuat menggunakan database relasional.

## Model form
1. Form biasanya ditulis dengan HTML. Namun di Django tidak wajib menggunakan HTML, bisa saja menggunakan Models
2. Input Type harus disesuaikan dengan Type data pada tabel database.
3. Selanjutnya Membuat file baru di perpustakaan dengan nama form. Lalu membuat viewsnya untuk menghasilkan seperti gambar dibawah ini

## Form Widged
1. Pada tahap ini, kita menambahkan atribut dengan menggunakan widged pada output yang telah dibuat sebelumnya.
2. Didalam forms.py ditambahkan widgets, text Input merupakan typenya.
3. Tambahkan atribut kelas didalamnya.

## CRUD : Menambah Data
1. Pada tahap ini, kita masuk ke dalam queryset. Disini kita menambah data, menampilkan, mengubah dan mengapus data Dari data yang sudah dibuat.
2. Selanjutnya kita akan menyimpannya ke dalam database. Prosesnya ada di views yang nantinya akan mengecek apakah data yang di submit oleh user sudah benar atau sudah valid.
3. Apabila sudah maka akan di simpan ke database.
4. Lalu buka text editor, buka file views. Fungsi dari csrf sendiri adalah untuk mngamankan form yang dibuat.

## CRUD : Menampilkan Data
1. Menampilkan data buku yang sudah dibuat, seperti menampilkan nilai 90/100 danmenampilkan kelompok seperti produktif maka hasilnya pasti error karena kelompok_id merupakan type integer.
2. Namun Apabila menambah __nama, maka akan bisa mengeluarkan hasilnya.
3. Penggunaan queryset tidak sepanjang query. Untuk menampilkan limit pada queryset cukup ditambah diujungnya [:3], sedangkan dalam query limit 3.

## CRUD : Mengubah Data
1. Tahap Mengubah data ini perannya sangat penting karena saat kita salah dalam melakukan input data, maka kita harus mengubahnya atau mengeditnya dengan menggunakan fitur update atau fitur ubah data ini. Ini lebih efektif dibandingkan dengan hapus, lalu input ulang
2. Ubah data sebenarnya sama dengan form menambah data. Bedanya form ubah data sudah terisi oleh data yang ingin kita ubah, misalnya seperti ingin mengubah judul yang dari Bhs.Indonesia menjadi IPA, lalu klik simpan dan selesai. 

## CRUD : Hapus Data
1. Hapus data juga penting dalam aplikasi, karena apabila data tersebut tidak lagi digunakan kita dapat menghapus nya. Karena Fungsi fitur ini sendiri adalah untuk menghapus data yang sudah tidak digunakan oleh user.
2. Sebelum menggunakan action/aksi hapus, terlebih dahulu membuat konfirmasi yang berisi apakah yakin ingin menghapus atau tidak untuk menghindari ketidaksengajaan user dalam menghapus data.

## Login / LogOut
Authentication merupakan proses verifikasi/validasi identitas user yang terdaftar sebelum mengakses system. Dengan ini kita jadi bisa membatasi user mana saja yang boleh manambah data, mengubah data, dan menghapus data. Jadi tidak sembarang user mengakses halaman-halaman tersebut . django ada system authentication yang akan kita gunakan yang bernama class LoginView untuk membuat namanya sama seperti membuat log in django admin. Berarti saat ingin membuat yang baru bisa mambuat di terminal.

## Sign Up
Pada tahap ini kita akan membuat form sign up, agar user bisa login ke aplikasi perpustakaan yang dibuat. Tahap ini berhubungan dengan django admin karena di dalamnya terdapat username django adminnya. Jika lihat di dokumentasi resmi Django, ada sebuah user form yang bernama UserCreationForm untuk membuat user baru

## Upload & export File
Pada tahap ini kita membuat tools upload file, seperti mengupload cover buku. Kita akan menambahkan file baru pada model buku yang bernama cover sehingga di dalam tambah buku nanti akan muncul yang baru seperti cover atau muncul di ubah buku. Di buku kita akan menambahkan kolom baru yaitu cover sebagai informasi buku yang kita masukkan.

Pada tahap ini akan membuat export file. Export file ini biasa digunakan untuk membuat report atau laporan ke dalam bentuk file excel, pdf, atau file lainnya. Dalam aplikasi biasanya terdapat fitur laporan yang harus di export data yang terdapat dalam database ke dalam file excel contohnya. Cara menggunakan export ini bisa menggunakan django-importexport.

## Virtual Environment
Pada tahap ini akan membahas tentang virtual environment atau lingkungan virtual, dalam kasus ini lingkungan virtual berguna untuk mengisolasi projek yang kita buat. Setiap kita membuat projek didalam lingkungan virtual ini, projek tersebut akan terisolasi dari direktori system dan memiliki paket python sendiri yang terinstal di lingkugan virtual tersebut. Lingkungan system operasi lebih besar yang didalam nya sudah ada django versi 2.2.12,pillow versi 7.1.2, dan django-import-export versi 2.2.0. kita juga sudah membuat aplikasi perspustakaan di lingkungan system tersebut dengan menggunakan django versi 2.2.12. apabila kita membuat projek di dalam lingkungan virtual environment 1 dan virtual environment 2. Di dalam virtual env 1 terdapat aplikasi perpustakaan yang dibangun dengan django 1.11 sedangkan di dalam virtual env 2 terdapat juga aplikasi yang dibangun dengan django 3.0.8 mysqlclient.

## Persiapan deploy
Deployment adalah kegiatann untuk menyebarkan aplikasi yang telah dikerjakan oleh developer (pengembang). Artinya kita mempublish projekk atau aplikasi yang kita buat untuk dilihat oleh ornang lain. Kita juga melewati siklus pembuatan aplikasi yaitu :
a. Development : mengerjakan projek aplikasi kita atau proses pembuatan, pengembangan . kita di awal-awal akan membuat form,model,view,tampilan itu adalah tahapan development atau pengembangan.
b. Testing : setelah dilakukan pembuatan otomatis kita akan melakukan uji coba agar mengetahui kekurangan dari kegiatan tersebut. Mengecek apakah sudah sesuai atau apakah ada bug. Testing ini juga dilakukan saat production.
c. Production : aplikasi kita yang sudah di buat sudah di deploy / sudah bisa di publish / sudah bisa digunakan oleh orang lain. Bisa juga user melakukan testing pada saat tahap ini. 
Alur kerja nya dari client yang melakukan request langsung ditangani oleh web server lalu ke wsgi lalu terakhir ke django atau perputaran yang sudah kita buat yaitu aplikasi perpustakaan tersebut.
  Yang perlu disiapkan adalah app (github,writelab,perpus), terminal, server, domain
  
## Deployment
Pada tahap ini, kita akan mendeploymen aplikasi yang telah dibuat ke server. Dengan awalan mengcoding di local lalu mengupload ke github lalu di clon atau ditarik ke computer server untuk dideploy disana.
Saat aplikasi kita dalam mode production disetting dan debug masih nilainya masih dalam true jadi kalau misalkan salah menuju ke halaman pasti akan eror . Saat kita dalam mode production kita tidak boleh dibiasakan mengubah tampilan saat mode dalam production, apabila terjadi eror akan berakibat fatal maka itu kalau kita ingin mengambangkan aplikasi yang dalam production kita hanya perlu mengembangkannya di local dan kita masuk ke tahap development atau tahap pengembangan lagi seperti mengubah tampilan atau menambah fitur yang diinginkan. 



