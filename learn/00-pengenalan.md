## Terraform

#### Pengenalan

[Terraform](https://www.terraform.io/) merupakan salah satu tool yang dapat digunakan untuk membuat infrastruktur system, infrastruktur sistem ini bisa saja berupa Amazon AWS, atau Google GCP, atau Azure, Terraform atau alat sejenis biasa disebut Infrastructure as code, ada software lain juga yang digunakan untuk kebutu han seperti ini, antara lain ansible keluaran redhat, yang sekarang bagian dari IBM.

Terraform ini keluaran dari [HashiCorp](hashicorp.com) yang juga mengeluarkan[ Vagrant](https://www.vagrantup.com/), satu software yang sering saya gunakan untuk membuat mini server untuk kebutuhan riset.

Diambil dari halaman Learn di website Terraform, ada workflow yang sebagai langkah yang digunakan ketika menggunakan Terraform untuk membangun infrastruktur.

### Workflow

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