## Instalasi

Terraform dapat diinstal di banyak sistem, karena saya menggunakan macOS, maka contoh di sini akan banyak menggunakan macOS, meski tidak menutup kemungkinan menggunakan platform lain seperti Windows atau Linux.

### Instalasi di macOS
Untuk melakukan instalasi bisa dengan langsung download binary yang disediakan di halaman download Terraform, https://www.terraform.io/downloads.html, di halaman ini ada banyak pilihan binary untuk platform yang anda gunakan sebagai workstation.

Untuk contoh ini saya menggunakan Homebrew sebagai manajemen paket untuk menginstal

`$ brew install terraform`

setelah terinstal, coba panggil perintah `terraform` untuk verifikasi paket itu sudah terinstall

```shell
$ terraform
Usage: terraform [-version] [-help] <command> [args]

The available commands for execution are listed below.
The most common, useful commands are shown first, followed by
less common or more advanced commands. If you're just getting
started with Terraform, stick with the common commands. For the
other commands, please read the help and docs before usage.

Common commands:
    apply              Builds or changes infrastructure
...
```

Coba juga lakukan pengecekan versi yang ada
```shell
$ terraform -v
Terraform v0.12.19
```
Untuk artikel-artikel ini akan menggunakan versi ini kedepannya.

Dan beberapa perintah untuk kebutuhan referensi seperti argumen `$ terraform -help` dan untuk referensi spesifik seperti `$ terraform --help plan`.
