# Практическая работа №1

## Цель
Вывести информацию о системе

## Исходные данные
1. ОС Windows 11
2. RStudio Desktop (v.2023.03.0+386)
3. Интерпретатор языка R (v.4.2.2)
4. PowerShell 

## План 
**Вариант 1 - С помощью языка R**
1. Отобразить системную и пользовательскую информацию
2. Отобразить всю информацию о системе Windows
3. Отобразить информацию о процессоре
4. Отобразить логи системы

**Вариант 2 - При помощи PowerShell**
1. Отобразить полную версию Windows
2. Отобразить сведения о процессоре
3. Отобразить логи системы

## Шаги 
**Вариант 1**
1. Команда `Sys.info()` cообщает системную и пользовательскую информацию.

```
Sys.info()
```

```
 sysname           release           version          nodename           machine             login              user          effective_user 
 "Windows"         "10 x64"       "build 22621"    "LAPTOP-AHROEA22"     "x86-64"          "Анастасия"        "Анастасия"       "Анастасия" 
```

2. Команда `system2(“systeminfo”, stdout = TRUE)` выводит всю информацию о системе Windows.

```
system2(“systeminfo”, stdout = TRUE)
```

```                                                   
 [1] ""                                                                                           
 [2] "Host Name:                 LAPTOP-AHROEA22"                                                     
 [3] "OS Name:                   Microsoft Windows 11 Home Single Language"                       
 [4] "OS Version:                10.0.22621 N/A Build 22621"                                      
 [5] "OS Manufacturer:           Microsoft Corporation"                                           
 [6] "OS Configuration:          Standalone Workstation"                                          
 [7] "OS Build Type:             Multiprocessor Free"                                             
 [8] "Registered Owner:          Анастасия"                                                          
 [9] "Registered Organization:   N/A"                                                             
[10] "Product ID:                XXXXX-XXXXX-XXXXX-XXXXX"                                         
[11] "Original Install Date:     30.01.2023, 9:45:51"                                             
[12] "System Boot Time:          12.05.2023, 15:44:49"                                            
[13] "System Manufacturer:       HUAWEI"                                                          
[14] "System Model:              NBLK-WAX9X"                                                       
[15] "System Type:               x64-based PC"                                                    
[16] "Processor(s):              1 Processor(s) Installed."                                       
[17] "                           [01]: AMD64 Family 23 Model 24 Stepping 1 AuthenticAMD ~2100 Mhz"
[18] "BIOS Version:              HUAWEI 1.07, 02.06.2020"                                         
[19] "Windows Directory:         C:\\WINDOWS"                                                     
[20] "System Directory:          C:\\WINDOWS\\system32"                                           
[21] "Boot Device:               \\Device\\HarddiskVolume1"                                       
[22] "System Locale:             ru;Russian"                                                      
[23] "Input Locale:              ru;Russian"                                                      
[24] "Time Zone:                 (UTC+03:00) Moscow, St. Petersburg"                              
[25] "Total Physical Memory:     7 104 MB"                                                       
[26] "Available Physical Memory: 750 MB"                                                        
[27] "Virtual Memory: Max Size:  12 800 MB"                                                       
[28] "Virtual Memory: Available: 1 884 MB"                                                       
[29] "Virtual Memory: In Use:    10 916 MB"                                                        
[30] "Page File Location(s):     C:\\pagefile.sys"                                                
[31] "Domain:                    WORKGROUP"                                                       
[32] "Logon Server:              \\\\LAPTOP-AHROEA22"                                                 
[33] "Hotfix(s):                 4 Hotfix(s) Installed."                                          
[34] "                           [01]: KB5022497"                                                 
[35] "                           [02]: KB5012170"                                                 
[36] "                           [03]: KB5026372"                                                 
[37] "                           [04]: KB5025351"                                                 
[38] "Network Card(s):           1 NIC(s) Installed."                                             
[39] "                           [01]: VirtualBox Host-Only Ethernet Adapter"                                                                                                                        
[40] "                                        Connection Name: : Ethernet 6"                                                                                                  
[41] "                                        DHCP Enabled:    Yes"                                                                                                                                                         
[42] "                                        IP-address(es)"                                                                                                                                      
[43] "                                        [01]: 192.168.56.1"                                                                                                                                           
[44] "                                        [02]: fe80::4d64:df23:8b91:efa3"                                                                                                                              
[45] "                                  [02]: Realtek 8822CE Wireless LAN 802.11ac PCI-E NIC"                                                                                                               
[46] "                                        Connection Name: Беспроводная сеть"                                                 
[47] "                                        DHCP Enabled:    Yes"                                                                                                                         
[48] "                                        DHCP Server:     192.168.0.1"                                                                                                                          
[49] "                                        IP address(es)"                                                                                                                                      
[50] "                                        [01]: 192.168.0.169"                                                                                                                                          
[51] "                                        [02]: fe80::1191:29a0:85e7:16a1"                                                                                                                              
[52] "                                  [03]: Kaspersky VPN"                                                                                                                                                
[53] "                                        Connection Name: Подключение по локальной сети"                     
[54] "                                        Сondition: Носитель отключен"                                                                                          
[55] "                                  [04]: Wintun Userspace Tunnel"                                                                                                                                      
[56] "                                        Connection Name: OpenVPN Wintun"                                                                                              
[57] "                                        Сondition: Носитель отключен"                                                                                           
[58] "                                  [05]: TAP-Windows Adapter V9"                                                                                                                                       
[59] "                                        Connection Name: OpenVPN TAP-Windows6"                                                                                        
[60] "                                        Сondition: Носитель отключен"                                                                                           
[61] "                                  [06]: OpenVPN Data Channel Offload"                                                                                                                                 
[62] "                                        Connection Name: OpenVPN Data Channel Offload"                                                                                
[63] "                                        Сondition: Носитель отключен"                                                                                           
[64] "Hyper-V Requirements:      VM Monitor Mode Extensions: Yes"                 
[65] "                            Virtualization Enabled In Firmware: Yes"                                    
[66] "                            Second Level Address Translation: Yes"                                                                   
[67] "                            Data Execution Prevention Available: Yes"                            
```

3.  Команда `system(“wmic cpu get name”)` выводит информацию о процессоре

```
system2("cmd", args = c("/c", "wmic cpu get name"), stdout = TRUE)
```
```
[1] "Name                                           \r" "AMD Ryzen 5 3500U with Radeon Vega Mobile Gfx  \r"
[3] "\r"  
```

4. Команда `system(“powershell.exe”, args = c(“Get-EventLog”, “-LogName”, “System”, “-Newest”, “30”), stdout = TRUE)` выводит информацию о логах

```
system2("powershell.exe", args = c("Get-EventLog", "-LogName", "System", "-Newest", "30"), stdout = TRUE)
```

```
[1] ""                                                                                                                                                                                                                  
 [2] "   Index Time          EntryType   Source                 InstanceID Message                                           "                                                                                           
 [3] "   ----- ----          ---------   ------                 ---------- -------                                           "                                                                                           
 [4] "   16586 май 24 21:45  Information Microsoft-Windows...            1 Возможное обнаружение CVE: 2023-05-24T18:45:33...."                                
 [5] "   16585 май 24 21:45  Information Microsoft-Windows...           24 Не найдено описание для события с кодом '24' в ..."  
 [6] "   16584 май 24 21:45  Information Microsoft-Windows...            1 Возможное обнаружение CVE: 2023-05-24T18:45:33...."                                
 [7] "   16583 май 24 21:45  Information Microsoft-Windows...           24 Не найдено описание для события с кодом '24' в ..."  
 [8] "   16582 май 24 21:45  Information Microsoft-Windows...           35 Служба времени выполняет синхронизацию системно..."            
 [9] "   16581 май 24 21:45  Information Microsoft-Windows...            1 Возможное обнаружение CVE: 2023-05-24T18:45:33...."                                
[10] "   16580 май 24 21:45  Information Microsoft-Windows...           24 Не найдено описание для события с кодом '24' в ..."  
[11] "   16579 май 24 21:45  Information Microsoft-Windows...           37 NTP-клиент поставщика времени получает действит..."                  
[12] "   16578 май 24 21:12  Information Service Control M...   1073748864 Тип запуска службы "Фоновая интеллектуальная сл..."          
[13] "   16577 май 24 21:10  Information Service Control M...   1073748864 Тип запуска службы "Фоновая интеллектуальная сл..."          
[14] "   16576 май 24 20:57  Warning     DCOM                        10016 Не найдено описание для события с кодом '10016'..."     
[15] "   16575 май 24 20:41  Information Service Control M...   1073748864 Тип запуска службы "Фоновая интеллектуальная сл..."          
[16] "   16574 май 24 20:39  Information Service Control M...   1073748864 Тип запуска службы "Фоновая интеллектуальная сл..."          
[17] "   16573 май 24 20:36  Information Microsoft-Windows...          105 Не найдено описание для события с кодом '105' в..."  
[18] "   16572 май 24 20:12  Information Service Control M...   1073748864 Тип запуска службы "Фоновая интеллектуальная сл..."          
[19] "   16571 май 24 20:10  Information Microsoft-Windows...           16 Не найдено описание для события с кодом '16' в ..."  
[20] "   16570 май 24 20:10  Information Service Control M...   1073748864 Тип запуска службы "Фоновая интеллектуальная сл..."          
[21] "   16569 май 24 20:10  Warning     DCOM                        10016 Не найдено описание для события с кодом '10016'..."     
[22] "   16568 май 24 19:23  Information Service Control M...   1073748864 Тип запуска службы "Фоновая интеллектуальная сл..."          
[23] "   16567 май 24 19:21  Information Service Control M...   1073748864 Тип запуска службы "Фоновая интеллектуальная сл..."          
[24] "   16566 май 24 18:59  Information Microsoft-Windows...            1 Система вышла из состояния пониженного энергопо..."
[25] "   16565 май 24 18:59  Information Microsoft-Windows...          566 Не найдено описание для события с кодом '566' в..."  
[26] "   16564 май 24 18:59  Information Microsoft-Windows...          566 Не найдено описание для события с кодом '566' в..."  
[27] "   16563 май 24 18:59  Information Microsoft-Windows...          130 Не найдено описание для события с кодом '130' в..."  
[28] "   16562 май 24 18:59  Information Microsoft-Windows...          131 Не найдено описание для события с кодом '131' в..."  
[29] "   16561 май 24 18:59  Information Microsoft-Windows...            1 Возможное обнаружение CVE: 2023-05-24T15:59:34...."                                
[30] "   16560 май 24 18:14  Information Microsoft-Windows...          107 Не найдено описание для события с кодом '107' в..."  
[31] "   16559 май 24 18:13  Information Microsoft-Windows...           42 Не найдено описание для события с кодом '42' в ..."  
[32] "   16558 май 24 18:13  Information Microsoft-Windows...          566 Не найдено описание для события с кодом '566' в..."  
[33] "   16557 май 24 18:13  Information Microsoft-Windows...          566 Не найдено описание для события с кодом '566' в..."  
[34] ""                                                                                                                                                                                                                  
[35] ""  
```

**Вариант 2 - PowerShell**

1. Команда `(Get-ItemProperty -Path c:\windows\system32\hal.dll).VersionInfo.FileVersion` выдет полную версию Windows (включая номер редакции/сборки)

```
(Get-ItemProperty -Path c:\windows\system32\hal.dll).VersionInfo.FileVersion
```
 
```
10.0.22621.1413 (WinBuild.160101.0800)
```

2. Чтобы получить сведения о процессоре используем команду `Get-WmiObject win32_Processor`

```
Get-WmiObject win32_Processor
```

```
Caption           : AMD64 Family 23 Model 24 Stepping 1
DeviceID          : CPU0
Manufacturer      : AuthenticAMD
MaxClockSpeed     : 2100
Name              : AMD Ryzen 5 3500U with Radeon Vega Mobile Gfx
SocketDesignation : FP5
```

3. Для получения логов системы используем команду `Get-EventLog -LogName 'system' -Newest 30`

```
Get-EventLog -LogName 'system' -Newest 30
```
## Оценка результатов
Был произведен анализ основных технических характеристик операционной системы, процессора и логов системы.
 
## Вывод
В ходе выполнения практической работы были изучены возможности языка программирования R и командной оболочки PowerShell, что позволило приобрести опыт работы с синтаксисом R.
