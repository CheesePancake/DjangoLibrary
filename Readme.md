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

## -- Static file 📄



