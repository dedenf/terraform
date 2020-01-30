## Terraform

#### Pengenalan

[Terraform](https://www.terraform.io/) merupakan salah satu alat yang dapat digunakan untuk membangun, mengubah, dan membuat versi dari infrastruktur secara aman, dan efisien.

Terraform bisa digunakan untuk mengatur infrastruktur sistem ini bisa saja berupa Amazon AWS, atau Google GCP, atau Azure, atau juga solusi on-premise. 

Terraform atau alat sejenis biasa disebut *Infrastructure as code*, ada software lain juga yang digunakan untuk kebutu han seperti ini, antara lain *ansible* keluaran redhat, yang sekarang bagian dari IBM.

Terraform ini keluaran dari [HashiCorp](hashicorp.com) yang juga mengeluarkan[ Vagrant](https://www.vagrantup.com/), satu software yang sering saya gunakan untuk membuat mini server untuk kebutuhan riset.

Diambil dari halaman Learn di website Terraform, ada workflow yang sebagai langkah yang digunakan ketika menggunakan Terraform untuk membangun infrastruktur.

### Workflow Terraform

- Scope
- Author
- Initialize
- Plan & Apply

Dengan menggunakan Terraform sebagai infrastructure as code bisa lebih leluasa dalam membangun infratruktur sistem, karena memiliki keunggulan,

1. Platform agnostic
Dengan menggunakan Terraform, di manapun infrastuktur kita berada, tidak menjadi masalah, misalkan dimulai dari AWS kemudian pindah ke GCP, perpindahan ini bisa lebih mudah, atau mungkin hendak menggabungkan sehingga multi-cloud, ini juga memungkinkan.

2. State Management
Terraform memiliki fitur state, jadi ketika proses dieksekusi, Terraform menjaga state-nya, dan jika terjadi interupsi, maka bisa dilanjutkan semenjak proses itu terhenti

3. Operator confidence
Karena semua mudah digunakan, dan terjaga dari sisi state, maka operator atau developer yang mengeksekusi ini lebih memiliki percaya diri untuk mengeksekusi.

#### Tujuan Terraform

- Memudahkan membuat infrastuktur, dan mengembangkannya, menuliskan semua itu dalam bentuk kode.
- Mendukung banyak jenis data center
- Lebih bisa mengatur dan memelihara infrastruktur yang ada, karena semua tertulis dalam kode.
- Memiliki workflow yang mudah
- Solusi agnostic jika dibutuhkan multicloud
- Mengatur semua infrastruktur dengan menggunakan API.

#### Terraform dibanding yang lain

- Mendukung banyak could provider.
- Dokumentasi (meski tool lain juga ada yang dokumentasinya bagus)
- Dengan melihat `plan`, admin dapat melihat apa saja yang akan dijalankan oleh script.
- Bisa menjalankan proses Dry-run, artinya melakukan eksekusi tanpa harus menyentuh infrastruktur.
- Menyimpan state, dengan state ini, Terraform bisa melanjutkan eksekusi yang terhenti.

- BIsa memberikan pandangan deskripsi infrastuktur secara high level
- Bisa menjalankan manajemen resource secara paralel

Di atas disebutkan infrastructure as code, sebenarnya apa itu? menurut Wikipedia, dan artikel lain, **IaC** ini adalah proses dimana definisi dari infrastruktur yang kita buat, baik server, cpu, ram, jaringan, keamanan dituangkan dalam bentuk kode dalam file, ada yang menggunakan DSL (Domain Specific Language), atau menggunakan bahasa pemograman seperti python, ruby.

Dan kode-kode yang mendefinisikan infrastruktur ini, seperti kode pada umumnya, bisa dilakukan versioning dengan SCM (Source Code Management) seperti Git, dari sini bisa terlahir pulalah istilah GitOps.

Infrastructure as code ini menyediakan workflow yang bisa digunakan untuk membuat infrastruktur, bisa dihapus, ditambahkan, diperbaharui dengan representasi kode.

Dengan menggunakan kode juga, menjadi lebih mudah untuk membaginya dengan tim lain, atau bisa saling menambahkan kode, sehingga lebih lengkap, dan yang paling penting, kode itu bisa dibaca oleh manusia, admin tidak perlu login satu-satu dan melihat dashboard dari cloud provider yang dipakai, selama ada API yang disediakan bisa dilakukan melalui kode tersebut.

Dan juga keunggulan lain, meski tidak selalu harus di cloud, di server baremetal pun tetap bisa digunakan, selama ada koneksi SSH ke server tersebut, IaC tetap bisa dijalankan untuk melakukan provisioning, dan menjalankan perintah yang didefinisikan di dalam IaC tersebut.