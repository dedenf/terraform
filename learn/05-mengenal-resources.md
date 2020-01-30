## Mengenal resources di Terraform

Sekarang kita akan membahas `resource`, `resource` ini akan banyak digunakan dalam project-project yang lain, dan resource juga bergantung pada provider yang kita panggil sebelumnya, misalkan AWS sendiri memiliki banyak resource untuk mendukung infrstruktur yang kita buat, untuk referensi bisa lihat [halaman ini](https://www.terraform.io/docs/providers/aws/index.html).

Sebelum masuk lebih jauh, resource ini adalah suatu blok konfigurasi dari Terraform Configuration Language (TCL), yang menggambarkan object dari infrastruktur tersebut berdasarkan provider.

Resource ini bisa berbentuk instance VM, konfigurasi IP, networking, penamaan domain, dan konfigurasi lainnya.

Blok resource yang dideskripsikan di TCL, akan menginstruksikan Terraform untuk melakukan apa yang dideskripsikan diblok resource, Jika resource ini dijalankan, Terraform akan melihat state yang sudah ada, jika state ada, maka Terraform akan membandingkan state lama dengan yang nantinya akan dibuat, jika sama, tidak akan melakukan apapun.

Jika state belum ada, Terraform akan membuat state dan proses yang ada adalah membuat state dan memprosesnya, jika sudah ada, dan state berbeda dengan yang dideskripsikan, maka Terraform akan memodifikasi perubahan yang dideskripsikan di TCL.

Terraform menggunakan API dari provider yang dideskripsikan untuk aktivitas `create`, `edit`, dan `destroy` resource, Terraform akan mengerjakan apa yang ditulis di blok resource (berdasarkan API providernya).

Contoh sebelumnya penulisan blok resource sederhana seperti

```hcl
resource "aws_instance" "first-try" {
	ami = "ami-2757f631"
	instance_type = "t2.micro"
}
```

