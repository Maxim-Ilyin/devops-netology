### 3.7. Компьютерные сети, лекция 2  
### 1. Проверьте список доступных сетевых интерфейсов на вашем компьютере. Какие команды есть для этого в Linux и в Windows?
    Windows - ipconfig
    Nix - ip addr, ip a  
### 2. Какой протокол используется для распознавания соседа по сетевому интерфейсу? Какой пакет и команды есть в Linux для этого?
    протокол ARP
    ip neigh, ip n  
### 3. Какая технология используется для разделения L2 коммутатора на несколько виртуальных сетей? Какой пакет и команды есть в Linux для этого? Приведите пример конфига. VLAN  
    конфиг хранится в файле /etc/network/interfaces
    auto vlan1000
    iface vlan1000 inet static
          address 192.168.1.10
          netmask 255.255.255.0
          vlan_raw_device eth0  
### 4. Какие типы агрегации интерфейсов есть в Linux? Какие опции есть для балансировки нагрузки? Приведите пример конфига.
     auto bond0
     iface bond0 inet dhcp
         bond-slaves eth0 eth1
         bond-mode active-backup
         bond-miimon 100
         bond-primary eth0 eth1  
### 5. Сколько IP адресов в сети с маской /29 ? Сколько /29 подсетей можно получить из сети с маской /24. Приведите несколько примеров /29 подсетей внутри сети 10.10.10.0/24.
    Network:   192.168.1.0/29       11000000.10101000.00000001.00000 000
    HostMin:   192.168.1.1          11000000.10101000.00000001.00000 001
    HostMax:   192.168.1.6          11000000.10101000.00000001.00000 110
    Broadcast: 192.168.1.7          11000000.10101000.00000001.00000 111
    Hosts/Net: 6                     Class C, Private Internet  

    ipcalc 192.168.1.0/24 /29
    ***
    Subnets after transition from /24 to /29
    ***
    Subnets:   32
    Hosts:     192

    10.10.10.0/24
    HostMin:   10.10.10.1           00001010.00001010.00001010. 00000001
    HostMax:   10.10.10.254         00001010.00001010.00001010. 11111110
    Hosts/Net: 254  
### 6. Задача: вас попросили организовать стык между 2-мя организациями. Диапазоны 10.0.0.0/8, 172.16.0.0/12, 192.168.0.0/16 уже заняты. Из какой подсети допустимо взять частные IP адреса? Маску выберите из расчета максимум 40-50 хостов внутри подсети.
    100.64.0.0/26   
### 7. Как проверить ARP таблицу в Linux, Windows? Как очистить ARP кеш полностью? Как из ARP таблицы удалить только один нужный IP?
    Windows:
    arp -a - показать таблицу ARP
    arp -d 192.168.1.1 - удалить из таблицы ARP запись для IP-адреса 192.168.1.1
    arp -d 192.168.1.* - удалить из таблицы ARP записи для диапазона IP-адресов 192.168.1.1 - 192.168.1.254
    Nix:
    arp -a - посмотреть таблицу
    arp -d hostmane - удалить запись для хоста
    arp -d * - очистить таблицу  
