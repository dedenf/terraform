## Mengubah konfigurasi infrastruktur

Karena kebutuhan untuk infrastuktur bisa berubah, baik menambahkan atau mengurangi, maka perubahan ini tidak terelakkan, Terraform bisa mengatur perubahan itu dengan mudah, tentu saja ini diawasi dan dilakukan oleh tim atau engineer yang memahami infra dan kemana infra itu akan dibuat.

Dari [contoh kode](../00-simple/) ini, kita bisa testing dengan mengubah sedikit saja nilai dari konfigurasi, dan kemudian lihat apa yang akan terjadi dengan perubahan tersebut.

Di file [`00-simple.tf`](../00-simple/00-simple.tf) dideklarasikan ami (Amazon Image berisi image dari system operasi yang hendak kita gunakan), perubahan dari ID `ami-00477ca666574012f` ke `ami-b374d5a5`(Ubuntu 16.10 AMI).

Setelah melakukan perubahan, eksekusi konfigurasi tersebut dengan perintah `$ terraform apply`

```shell
dedenf@elementium ~/hacks/terraform/00-simple (master*) $ terraform apply
aws_instance.first-try: Refreshing state... [id=i-037539942e456a9de]

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
-/+ destroy and then create replacement

Terraform will perform the following actions:

  # aws_instance.first-try must be replaced
-/+ resource "aws_instance" "first-try" {
      ~ ami                          = "ami-00477ca666574012f" -> "ami-b374d5a5" # forces replacement
      ~ arn                          = "arn:aws:ec2:ap-southeast-1:269371581377:instance/i-037539942e456a9de" -> (known after apply)
      ~ associate_public_ip_address  = true -> (known after apply)
      ~ availability_zone            = "ap-southeast-1b" -> (known after apply)
      ~ cpu_core_count               = 1 -> (known after apply)
      ~ cpu_threads_per_core         = 1 -> (known after apply)
      - disable_api_termination      = false -> null
      - ebs_optimized                = false -> null
        get_password_data            = false
      + host_id                      = (known after apply)
      ~ id                           = "i-037539942e456a9de" -> (known after apply)
      ~ instance_state               = "running" -> (known after apply)
...
~ root_block_device {
          ~ delete_on_termination = true -> (known after apply)
          ~ encrypted             = false -> (known after apply)
          ~ iops                  = 100 -> (known after apply)
          + kms_key_id            = (known after apply)
          ~ volume_id             = "vol-0f11fc8630bbfcee4" -> (known after apply)
          ~ volume_size           = 8 -> (known after apply)
          ~ volume_type           = "gp2" -> (known after apply)
        }
    }

Plan: 1 to add, 0 to change, 1 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value:
```

Jika dilihat pesan di atas, ada tanda +/-, artinya terraform akan membuat ulang resource yang dimaksud, bisa jadi dengan menghapus dulu kemudian membuat ulang ketika kita melakukan `$ terraform apply`.

