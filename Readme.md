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
