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

- Provide high level description of infrastructure
- support parallel management of resource
- separate planning from execution (Dry-run)
- detailed documentation
- support major cloud provider

#### Infrastructure as code

- provide a coding workflow to create infra

- expose a workflow to managing, updates to existing infra

- integrate with application code workflow (git)

- provide modular, sharable component for separation of condern 

- human readable configuration, so it's easy to understand by human and could see the infrastructure by reading the code

  

