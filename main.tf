#Описываем ВМ
resource "yandex_compute_instance" "linux-vm" {
  name        = "linux-vm"
  platform_id = "standard-v3"
  zone        = var.default_zone
  hostname  = "test-vm.amiller.su"

  resources {
    cores  = "2"
    memory = "4"
  }

  boot_disk {
    disk_id = yandex_compute_disk.boot-disk.id
  }

  network_interface {
 #   index     = 1
    subnet_id = yandex_vpc_subnet.test-subnet1.id
    nat       = true
  }
#Создаем пользователя в ВМ и задаем ей пароль
  metadata = { 
    serial-port-enable = 1
    user-data = "${file("./metadata.yaml")}"
  }
}
#Создаем ресурсы для ВМ
resource "yandex_compute_disk" "boot-disk" {
  name     = "test-less1"
  type     = "network-hdd"
  zone     = var.default_zone
  size     = "20"
  image_id = "fd8q1krrgc5pncjckeht"
}

resource "yandex_vpc_network" "test-net1" {
  name = "test-net1"
}

resource "yandex_vpc_subnet" "test-subnet1" {
  name           = "test-subnet1"
  zone           = var.default_zone
  v4_cidr_blocks = ["192.168.108.0/24"]
  network_id     = yandex_vpc_network.test-net1.id
}
