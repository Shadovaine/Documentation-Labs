# Lab01 - User Managment Commands Executed 

## Command Log

cat /etc/os-release
  
PRETTY_NAME="Kali GNU/Linux Rolling"
NAME="Kali GNU/Linux"
VERSION_ID="2025.4"
VERSION="2025.4"
VERSION_CODENAME=kali-rolling
ID=kali
ID_LIKE=debian
HOME_URL="https://www.kali.org/"
SUPPORT_URL="https://forums.kali.org/"
BUG_REPORT_URL="https://bugs.kali.org/"
ANSI_COLOR="1;31"

uname -r

6.17.10+kali-amd64

uname -m

x86_64

hostnamectl

Static hostname: Shadolab
       Icon name: computer-laptop
         Chassis: laptop 💻
      Machine ID: 0af42c157ecf4248b2861cf8c8a6c211
         Boot ID: e521735370ed4fbd91d7c486e384f558
Operating System: Kali GNU/Linux Rolling          
          Kernel: Linux 6.17.10+kali-amd64
    Architecture: x86-64
 Hardware Vendor: Acer
  Hardware Model: Nitro AN515-43     Hardware SKU: 0000000000000000
Hardware Version: V1.12
Firmware Version: V1.12
   Firmware Date: Thu 2020-11-05
    Firmware Age: 5y 1month 4w 1d  

CPU & Memory

Architecture:                x86_64
  CPU op-mode(s):            32-bit, 64-bit
  Address sizes:             43 bits physical, 48 bits virtual
  Byte Order:                Little Endian
CPU(s):                      8
  On-line CPU(s) list:       0-7
Vendor ID:                   AuthenticAMD
  Model name:                AMD Ryzen 5 3550H with Radeon Vega Mobile Gfx
    CPU family:              23
    Model:                   24
    Thread(s) per core:      2
    Core(s) per socket:      4
    Socket(s):               1
    Stepping:                1
    Frequency boost:         enabled
    CPU(s) scaling MHz:      77%
    CPU max MHz:             2100.0000
    CPU min MHz:             1400.0000
    BogoMIPS:                4192.19
    Flags:                   fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pg
                             e mca cmov pat pse36 clflush mmx fxsr sse sse2 ht s
                             yscall nx mmxext fxsr_opt pdpe1gb rdtscp lm constan
                             t_tsc rep_good nopl nonstop_tsc cpuid extd_apicid a
                             perfmperf rapl pni pclmulqdq monitor ssse3 fma cx16
                              sse4_1 sse4_2 movbe popcnt aes xsave avx f16c rdra
                             nd lahf_lm cmp_legacy svm extapic cr8_legacy abm ss
                             e4a misalignsse 3dnowprefetch osvw skinit wdt tce t
                             opoext perfctr_core perfctr_nb bpext perfctr_llc mw
                             aitx cpb hw_pstate ssbd ibpb vmmcall fsgsbase bmi1 
                             avx2 smep bmi2 rdseed adx smap clflushopt sha_ni xs
                             aveopt xsavec xgetbv1 clzero xsaveerptr arat npt lb
                             rv svm_lock nrip_save tsc_scale vmcb_clean flushbya
                             sid decodeassists pausefilter pfthreshold avic v_vm
                             save_vmload vgif overflow_recov succor smca sev sev
                             _es
Virtualization features:     
  Virtualization:            AMD-V
Caches (sum of all):         
  L1d:                       128 KiB (4 instances)
  L1i:                       256 KiB (4 instances)
  L2:                        2 MiB (4 instances)
  L3:                        4 MiB (1 instance)
NUMA:                        
  NUMA node(s):              1
  NUMA node0 CPU(s):         0-7
Vulnerabilities:             
  Gather data sampling:      Not affected
  Ghostwrite:                Not affected
  Indirect target selection: Not affected
  Itlb multihit:             Not affected
  L1tf:                      Not affected
  Mds:                       Not affected
  Meltdown:                  Not affected
  Mmio stale data:           Not affected
  Old microcode:             Not affected
  Reg file data sampling:    Not affected
  Retbleed:                  Mitigation; untrained return thunk; SMT vulnerable
  Spec rstack overflow:      Mitigation; Safe RET
  Spec store bypass:         Mitigation; Speculative Store Bypass disabled via p
                             rctl
  Spectre v1:                Mitigation; usercopy/swapgs barriers and __user poi
                             nter sanitization
  Spectre v2:                Mitigation; Retpolines; IBPB conditional; STIBP dis
                             abled; RSB filling; PBRSB-eIBRS Not affected; BHI N
                             ot affected
  Srbds:                     Not affected
  Tsa:                       Not affected
  Tsx async abort:           Not affected
  Vmscape:                   Mitigation; IBPB before exit to userspace

free -h

               total        used        free      shared  buff/cache   available
Mem:            13Gi       4.1Gi       5.3Gi        11Mi       4.5Gi       9.5Gi
Swap:           12Gi          0B        12Gi


Storage

lsblk

NAME FSTYPE FSVER LABEL UUID                                   FSAVAIL FSUSE% MOUNTPOINTS
loop0
     squash 4.0                                                      0   100% /snap/bare/5
loop1
     squash 4.0                                                      0   100% /snap/core20/2686
loop2
     squash 4.0                                                      0   100% /snap/core20/2682
loop3
     squash 4.0                                                      0   100% /snap/gnome-3-38-2004/143
loop4
     squash 4.0                                                      0   100% /snap/core22/2193
loop5
     squash 4.0                                                      0   100% /snap/gnome-42-2204/226
loop6
     squash 4.0                                                      0   100% /snap/gtk-common-themes/1535
loop7
     squash 4.0                                                      0   100% /snap/proton-mail/30
loop8
     squash 4.0                                                      0   100% /snap/snapd/25577
loop9
     squash 4.0                                                      0   100% /snap/spotify/89
nvme0n1
│                                                                             
├─nvme0n1p1
│    vfat   FAT32       C617-3521                               973.8M     0% /boot/efi
├─nvme0n1p2
│    ext4   1.0         a2d9b1d9-e7d1-44c2-bcee-b108d13a364c    433.8M    47% /boot
└─nvme0n1p3
  │  crypto 2           6581c9a4-6c70-4a30-adda-b3943c486f4e                  
  └─nvme0n1p3_crypt
    │  LVM2_m LVM2        Bk2ySl-nKDu-9xay-MYJC-ES1H-Et7X-x1FOHE                
    ├─Shadolab--vg-root
    │  ext4   1.0         a98070f3-c6c2-4b0d-812a-cbb76e4d92ab      150G    27% /
    └─Shadolab--vg-swap_1
       swap   1           dbc15c84-8bec-43fc-8860-24b3d920e264                  [SWAP]

df -hT

Filesystem                    Type      Size  Used Avail Use% Mounted on
udev                          devtmpfs  6.7G     0  6.7G   0% /dev
tmpfs                         tmpfs     1.4G  2.1M  1.4G   1% /run
efivarfs                      efivarfs  148K   88K   56K  62% /sys/firmware/efi/efivars
/dev/mapper/Shadolab--vg-root ext4      220G   59G  151G  29% /
tmpfs                         tmpfs     6.8G  4.0K  6.8G   1% /dev/shm
none                          tmpfs     1.0M     0  1.0M   0% /run/credentials/systemd-journald.service
none                          tmpfs     1.0M     0  1.0M   0% /run/credentials/systemd-cryptsetup@nvme0n1p3_crypt.service
/dev/nvme0n1p2                ext4      944M  445M  434M  51% /boot
/dev/loop0                    squashfs  128K  128K     0 100% /snap/bare/5
/dev/loop3                    squashfs  350M  350M     0 100% /snap/gnome-3-38-2004/143
/dev/loop4                    squashfs   74M   74M     0 100% /snap/core22/2193
/dev/loop1                    squashfs   64M   64M     0 100% /snap/core20/2686
/dev/loop2                    squashfs   64M   64M     0 100% /snap/core20/2682
/dev/loop6                    squashfs   92M   92M     0 100% /snap/gtk-common-themes/1535
/dev/loop5                    squashfs  517M  517M     0 100% /snap/gnome-42-2204/226
/dev/loop7                    squashfs  118M  118M     0 100% /snap/proton-mail/30
tmpfs                         tmpfs     6.8G   12K  6.8G   1% /tmp
/dev/loop8                    squashfs   51M   51M     0 100% /snap/snapd/25577
/dev/loop9                    squashfs  197M  197M     0 100% /snap/spotify/89
/dev/nvme0n1p1                vfat      975M  304K  974M   1% /boot/efi
none                          tmpfs     1.0M     0  1.0M   0% /run/credentials/getty@tty1.service
tmpfs                         tmpfs     1.4G  124K  1.4G   1% /run/user/1001

Network

1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host noprefixroute 
       valid_lft forever preferred_lft forever
2: eth0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc fq_codel state DOWN group default qlen 1000
    link/ether 08:97:98:71:ef:ac brd ff:ff:ff:ff:ff:ff
3: wlan0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default qlen 1000
    link/ether e8:d0:fc:99:3e:49 brd ff:ff:ff:ff:ff:ff
    inet 172.20.10.9/28 brd 172.20.10.15 scope global dynamic noprefixroute wlan0
       valid_lft 1816sec preferred_lft 1816sec
    inet6 2600:381:eb02:b578:3c52:bea4:17da:273e/64 scope global noprefixroute 
       valid_lft forever preferred_lft forever
    inet6 fe80::489d:cc18:7104:af3e/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever
4: tailscale0: <POINTOPOINT,MULTICAST,NOARP,UP,LOWER_UP> mtu 1280 qdisc fq_codel state UNKNOWN group default qlen 500
    link/none 
    inet 100.102.44.100/32 scope global tailscale0
       valid_lft forever preferred_lft forever
    inet6 fd7a:115c:a1e0::da01:2c89/128 scope global 
       valid_lft forever preferred_lft forever
    inet6 fe80::40db:111f:9c5a:e1e5/64 scope link stable-privacy proto kernel_ll 
       valid_lft forever preferred_lft forever
5: br-a11fffb3618a: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UP group default 
    link/ether 66:5e:22:2d:63:23 brd ff:ff:ff:ff:ff:ff
    inet 172.18.0.1/16 brd 172.18.255.255 scope global br-a11fffb3618a
       valid_lft forever preferred_lft forever
    inet6 fe80::645e:22ff:fe2d:6323/64 scope link proto kernel_ll 
       valid_lft forever preferred_lft forever
6: docker0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc noqueue state DOWN group default 
    link/ether 02:c8:66:06:15:d0 brd ff:ff:ff:ff:ff:ff
    inet 172.17.0.1/16 brd 172.17.255.255 scope global docker0
       valid_lft forever preferred_lft forever
7: vmnet1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UNKNOWN group default qlen 1000
    link/ether 00:50:56:c0:00:01 brd ff:ff:ff:ff:ff:ff
    inet 172.16.97.1/24 brd 172.16.97.255 scope global vmnet1
       valid_lft forever preferred_lft forever
    inet6 fe80::250:56ff:fec0:1/64 scope link proto kernel_ll 
       valid_lft forever preferred_lft forever
8: vmnet8: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UNKNOWN group default qlen 1000
    link/ether 00:50:56:c0:00:08 brd ff:ff:ff:ff:ff:ff
    inet 192.168.26.1/24 brd 192.168.26.255 scope global vmnet8
       valid_lft forever preferred_lft forever
    inet6 fe80::250:56ff:fec0:8/64 scope link proto kernel_ll 
       valid_lft forever preferred_lft forever
9: vethfef6a08@if2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue master br-a11fffb3618a state UP group default 
    link/ether e6:6d:20:92:be:22 brd ff:ff:ff:ff:ff:ff link-netnsid 0
    inet6 fe80::e46d:20ff:fe92:be22/64 scope link proto kernel_ll 
       valid_lft forever preferred_lft forever
10: veth76466cb@if2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue master br-a11fffb3618a state UP group default 
    link/ether 26:75:cc:70:fd:b2 brd ff:ff:ff:ff:ff:ff link-netnsid 1
    inet6 fe80::2475:ccff:fe70:fdb2/64 scope link proto kernel_ll 
       valid_lft forever preferred_lft forever
11: vethc3aebbb@if2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue master br-a11fffb3618a state UP group default 
    link/ether 2e:b6:67:ff:10:98 brd ff:ff:ff:ff:ff:ff link-netnsid 2
    inet6 fe80::2cb6:67ff:feff:1098/64 scope link proto kernel_ll 
       valid_lft forever preferred_lft forever
13: proton0: <POINTOPOINT,NOARP,UP,LOWER_UP> mtu 1420 qdisc noqueue state UNKNOWN group default qlen 1000
    link/none 
    inet 10.2.0.2/32 scope global noprefixroute proton0
       valid_lft forever preferred_lft forever
14: ipv6leakintrf0: <BROADCAST,NOARP,UP,LOWER_UP> mtu 1500 qdisc noqueue state UNKNOWN group default qlen 1000
    link/ether b2:07:7f:cb:5d:29 brd ff:ff:ff:ff:ff:ff
    inet6 fdeb:446c:912d:8da::/64 scope global noprefixroute 
       valid_lft forever preferred_lft forever
    inet6 fe80::a6a0:cb65:9b13:523/64 scope link noprefixroute 
       valid_lft forever preferred_lft forever

ip route

default via 172.20.10.1 dev wlan0 proto dhcp src 172.20.10.9 metric 600 
172.16.97.0/24 dev vmnet1 proto kernel scope link src 172.16.97.1 
172.17.0.0/16 dev docker0 proto kernel scope link src 172.17.0.1 linkdown 
172.18.0.0/16 dev br-a11fffb3618a proto kernel scope link src 172.18.0.1 
172.20.10.0/28 dev wlan0 proto kernel scope link src 172.20.10.9 metric 600 
192.168.26.0/24 dev vmnet8 proto kernel scope link src 192.168.26.1 

Services

systemctl list-units --type=service --state=running

  UNIT                                  LOAD   ACTIVE SUB     DESCRIPTION      >
  accounts-daemon.service               loaded active running Accounts Service
  colord.service                        loaded active running Manage, Install a>
  containerd.service                    loaded active running containerd contai>
  cron.service                          loaded active running Regular backgroun>
  dbus.service                          loaded active running D-Bus System Mess>
  docker.service                        loaded active running Docker Applicatio>
  fail2ban.service                      loaded active running Fail2Ban Service
  filebeat.service                      loaded active running Filebeat sends lo>
  getty@tty1.service                    loaded active running Getty on tty1
  haveged.service                       loaded active running Entropy Daemon ba>
  lightdm.service                       loaded active running Light Display Man>
  me.proton.vpn.split_tunneling.service loaded active running Proton VPN Daemon
  ModemManager.service                  loaded active running Modem Manager
  NetworkManager.service                loaded active running Network Manager
  polkit.service                        loaded active running Authorization Man>
  rsyslog.service                       loaded active running System Logging Se>
  rtkit-daemon.service                  loaded active running RealtimeKit Sched>
  smartmontools.service                 loaded active running Self Monitoring a>
  snapd.service                         loaded active running Snap Daemon
  ssh.service                           loaded active running OpenBSD Secure Sh>
  suricata.service                      loaded active running Suricata IDS/IDP >
  systemd-journald.service              loaded active running Journal Service
lines 1-23
systemd-logind.service                loaded active running User Login Manage>
  systemd-timesyncd.service             loaded active running Network Time Sync>
  systemd-udevd.service                 loaded active running Rule-based Manage>
  systemd-userdbd.service               loaded active running User Database Man>
  tailscaled.service                    loaded active running Tailscale node ag>
  udisks2.service                       loaded active running Disk Manager
  upower.service                        loaded active running Daemon for power >
  user@1001.service                     loaded active running User Manager for >
  virtlockd.service                     loaded active running libvirt locking d>
  virtlogd.service                      loaded active running libvirt logging d>
  vmware-USBArbitrator.service          loaded active running LSB: This service>
  vmware.service                        loaded active running LSB: This service>
  wazuh-agent.service                   loaded active running Wazuh agent
  wpa_supplicant.service                loaded active running WPA supplicant

Legend: LOAD   → Reflects whether the unit definition was properly loaded.
        ACTIVE → The high-level unit activation state, i.e. generalization of S>
        SUB    → The low-level unit activation state, values depend on unit typ>




 
 
