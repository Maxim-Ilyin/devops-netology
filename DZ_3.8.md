2. Создайте dummy0 интерфейс в Ubuntu. Добавьте несколько статических маршрутов. Проверьте таблицу маршрутизации.
192.168.1.150              local   192.168.1.150   kernel     host dummy0 local
192.168.1.151              local   192.168.1.151   kernel     host dummy1 local

3. Проверьте открытые TCP порты в Ubuntu, какие протоколы и приложения используют эти порты? Приведите несколько примеров.
Proto Recv-Q Send-Q Local Address Foreign Address State       PID/Program name    
tcp        0      0 127.0.0.53:53           0.0.0.0:*               LISTEN      584/systemd-resolve
tcp        0      0 127.0.0.1:631           0.0.0.0:*               LISTEN      14217/cupsd         
tcp6       0      0 ::1:631                 :::*                    LISTEN      14217/cupsd

4. Проверьте используемые UDP сокеты в Ubuntu, какие протоколы и приложения используют эти порты?
State        Recv-Q       Send-Q                Local Address:Port               Peer Address:Port        Process       
UNCONN       0            0                           0.0.0.0:56182                   0.0.0.0:*                         
UNCONN       0            0                     127.0.0.53%lo:domain                  0.0.0.0:*                         
ESTAB        0            0                  10.0.2.15%enp0s3:bootpc                 10.0.2.2:bootps                    
UNCONN       0            0                           0.0.0.0:631                     0.0.0.0:*                         
UNCONN       0            0                           0.0.0.0:mdns                    0.0.0.0:*                         
UNCONN       0            0                              [::]:56330                      [::]:*                         
UNCONN       0            0                              [::]:mdns                       [::]:*  
