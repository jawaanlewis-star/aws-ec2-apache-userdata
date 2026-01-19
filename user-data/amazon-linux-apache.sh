#!/bin/bash
dnf -y update
dnf -y install httpd
systemctl enable httpd
systemctl start httpd
cat > /var/www/html/index.html <<'HTML'
<h1>Jawaan's EC2 Apache Server</h1>
<p>Deployed via EC2 user-data.</p>
HTML

[    6.147426] cloud-init[1519]: Cloud-init v. 22.2.2 running 'init' at Mon, 19 Jan 2026 03:50:40 +0000. Up 6.12 seconds.
[    6.218068] cloud-init[1519]: ci-info: ++++++++++++++++++++++++++++++++++++++Net device info+++++++++++++++++++++++++++++++++++++++
[    6.220203] cloud-init[1519]: ci-info: +--------+------+-----------------------------+---------------+--------+-------------------+
[    6.222183] cloud-init[1519]: ci-info: | Device |  Up  |           Address           |      Mask     | Scope  |     Hw-Address    |
[    6.224111] cloud-init[1519]: ci-info: +--------+------+-----------------------------+---------------+--------+-------------------+
[    6.226039] cloud-init[1519]: ci-info: |  ens5  | True |        172.31.41.106        | 255.255.240.0 | global | 0a:de:e1:61:de:bb |
[    6.227978] cloud-init[1519]: ci-info: |  ens5  | True | fe80::8de:e1ff:fe61:debb/64 |       .       |  link  | 0a:de:e1:61:de:bb |
[    6.229905] cloud-init[1519]: ci-info: |   lo   | True |          127.0.0.1          |   255.0.0.0   |  host  |         .         |
[    6.231810] cloud-init[1519]: ci-info: |   lo   | True |           ::1/128           |       .       |  host  |         .         |
[    6.233750] cloud-init[1519]: ci-info: +--------+------+-----------------------------+---------------+--------+-------------------+
[    6.235661] cloud-init[1519]: ci-info: ++++++++++++++++++++++++++++++Route IPv4 info++++++++++++++++++++++++++++++
[    6.237404] cloud-init[1519]: ci-info: +-------+-------------+-------------+-----------------+-----------+-------+
[    6.239154] cloud-init[1519]: ci-info: | Route | Destination |   Gateway   |     Genmask     | Interface | Flags |
[    6.241025] cloud-init[1519]: ci-info: +-------+-------------+-------------+-----------------+-----------+-------+
[    6.242759] cloud-init[1519]: ci-info: |   0   |   0.0.0.0   | 172.31.32.1 |     0.0.0.0     |    ens5   |   UG  |
[    6.244505] cloud-init[1519]: ci-info: |   1   |  172.31.0.2 | 172.31.32.1 | 255.255.255.255 |    ens5   |  UGH  |
[    6.246267] cloud-init[1519]: ci-info: |   2   | 172.31.32.0 |   0.0.0.0   |  255.255.240.0  |    ens5   |   U   |
[    6.248007] cloud-init[1519]: ci-info: |   3   | 172.31.32.1 |   0.0.0.0   | 255.255.255.255 |    ens5   |   UH  |
[    6.249736] cloud-init[1519]: ci-info: +-------+-------------+-------------+-----------------+-----------+-------+
[    6.251462] cloud-init[1519]: ci-info: +++++++++++++++++++Route IPv6 info+++++++++++++++++++
[    6.252916] cloud-init[1519]: ci-info: +-------+-------------+---------+-----------+-------+
[    6.254359] cloud-init[1519]: ci-info: | Route | Destination | Gateway | Interface | Flags |
[    6.255774] cloud-init[1519]: ci-info: +-------+-------------+---------+-----------+-------+
[    6.257167] cloud-init[1519]: ci-info: |   0   |  fe80::/64  |    ::   |    ens5   |   U   |
[    6.258602] cloud-init[1519]: ci-info: |   2   |    local    |    ::   |    ens5   |   U   |
[    6.260183] cloud-init[1519]: ci-info: |   3   |  multicast  |    ::   |    ens5   |   U   |
[    6.261631] cloud-init[1519]: ci-info: +-------+-------------+---------+-----------+-------+
[    7.029430] cloud-init[1519]: Generating public/private ed25519 key pair.
[    7.030788] cloud-init[1519]: Your identification has been saved in /etc/ssh/ssh_host_ed25519_key
[    7.032271] cloud-init[1519]: Your public key has been saved in /etc/ssh/ssh_host_ed25519_key.pub
[    7.033748] cloud-init[1519]: The key fingerprint is:
[    7.034639] cloud-init[1519]: SHA256:YlyNwZuZEsw0LSkWVSA/1GH7+e0x77ysEOW6SOZEp8Y root@ip-172-31-41-106.us-east-2.compute.internal
[    7.036543] cloud-init[1519]: The key's randomart image is:
[    7.037500] cloud-init[1519]: +--[ED25519 256]--+
[    7.038313] cloud-init[1519]: |    o**B=.       |
[    7.039163] cloud-init[1519]: |    o+*o+=       |
[    7.039994] cloud-init[1519]: |   . .oo+=.  .   |
[    7.040872] cloud-init[1519]: |     ..o=. .o    |
[    7.041709] cloud-init[1519]: |      +.S.oo .   |
[    7.042545] cloud-init[1519]: |     . .o o.o.   |
[    7.043403] cloud-init[1519]: |         E o. +  |
[    7.044242] cloud-init[1519]: |        * . o..= |
[    7.045080] cloud-init[1519]: |         o . .o+=|
[    7.045911] cloud-init[1519]: +----[SHA256]-----+
[    7.046731] cloud-init[1519]: Generating public/private ecdsa key pair.
[    7.047855] cloud-init[1519]: Your identification has been saved in /etc/ssh/ssh_host_ecdsa_key
[    7.049303] cloud-init[1519]: Your public key has been saved in /etc/ssh/ssh_host_ecdsa_key.pub
[    7.050806] cloud-init[1519]: The key fingerprint is:
[    7.051688] cloud-init[1519]: SHA256:ExkmIaT43qD6QicJFEnG49T7lSozLTR/j3dvowrLTgk root@ip-172-31-41-106.us-east-2.compute.internal
[    7.053740] cloud-init[1519]: The key's randomart image is:
[    7.054680] cloud-init[1519]: +---[ECDSA 256]---+
[    7.055533] cloud-init[1519]: |o++.o o.o        |
[    7.056377] cloud-init[1519]: |.B o . o o       |
[    7.057237] cloud-init[1519]: |= o .   +        |
[    7.058124] cloud-init[1519]: |.o +   o .       |
[    7.059012] cloud-init[1519]: |. = =Eo S        |
[    7.059853] cloud-init[1519]: | * O =....       |
[    7.060716] cloud-init[1519]: |o + * .+o        |
[    7.061545] cloud-init[1519]: |o     o.oo . o   |
[    7.062556] cloud-init[1519]: |.o.   .+..o.+..  |
[    7.063425] cloud-init[1519]: +----[SHA256]-----+
[    7.546235] cloud-init[1603]: Cloud-init v. 22.2.2 running 'modules:config' at Mon, 19 Jan 2026 03:50:41 +0000. Up 7.45 seconds.
[    8.267872] cloud-init[1618]: Cloud-init v. 22.2.2 running 'modules:final' at Mon, 19 Jan 2026 03:50:42 +0000. Up 8.18 seconds.
2026/01/19 03:50:42Z: SSM Agent unable to acquire credentials: <error>no valid credentials could be retrieved for ec2 identity. Default Host Management Err: error calling RequestManagedInstanceRoleToken: AccessDeniedException: Systems Manager's instance management role is not configured for account: 093955289934
	status code: 400, request id: 617b053d-0377-45d5-a761-f52dc00e016f</error>
[    9.833604] cloud-init[1618]: Amazon Linux 2023 repository                     69 MB/s |  52 MB     00:00


Amazon Linux 2023.10.20260105
Kernel 6.1.159-181.297.amzn2023.x86_64 on an x86_64 (-)

ip-172-31-41-106 login: [   21.723262] cloud-init[1618]: Amazon Linux 2023 Kernel Livepatch repository   239 kB/s |  30 kB     00:00
[   23.090050] cloud-init[1618]: Dependencies resolved.
[   23.136356] cloud-init[1618]: Nothing to do.
[   23.137351] cloud-init[1618]: Complete!
[   23.513247] cloud-init[1618]: Last metadata expiration check: 0:00:01 ago on Mon Jan 19 03:50:56 2026.
[   23.610454] cloud-init[1618]: Dependencies resolved.
[   23.646389] cloud-init[1618]: ================================================================================
[   23.648234] cloud-init[1618]:  Package               Arch     Version                     Repository     Size
[   23.649966] cloud-init[1618]: ================================================================================
[   23.650110] cloud-init[1618]: Installing:
[   23.650300] cloud-init[1618]:  httpd                 x86_64   2.4.66-1.amzn2023.0.1       amazonlinux    47 k
[   23.650511] cloud-init[1618]: Installing dependencies:
[   23.650732] cloud-init[1618]:  apr                   x86_64   1.7.5-1.amzn2023.0.4        amazonlinux   129 k
[   23.651180] cloud-init[1618]:  apr-util              x86_64   1.6.3-1.amzn2023.0.2        amazonlinux    97 k
[   23.651385] cloud-init[1618]:  apr-util-lmdb         x86_64   1.6.3-1.amzn2023.0.2        amazonlinux    13 k
[   23.651593] cloud-init[1618]:  generic-logos-httpd   noarch   18.0.0-12.amzn2023.0.3      amazonlinux    19 k
[   23.651804] cloud-init[1618]:  httpd-core            x86_64   2.4.66-1.amzn2023.0.1       amazonlinux   1.4 M
[   23.652017] cloud-init[1618]:  httpd-filesystem      noarch   2.4.66-1.amzn2023.0.1       amazonlinux    13 k
[   23.652237] cloud-init[1618]:  httpd-tools           x86_64   2.4.66-1.amzn2023.0.1       amazonlinux    81 k
[   23.652460] cloud-init[1618]:  libbrotli             x86_64   1.0.9-4.amzn2023.0.2        amazonlinux   315 k
[   23.652680] cloud-init[1618]:  mailcap               noarch   2.1.49-3.amzn2023.0.3       amazonlinux    33 k
[   23.652895] cloud-init[1618]: Installing weak dependencies:
[   23.653115] cloud-init[1618]:  apr-util-openssl      x86_64   1.6.3-1.amzn2023.0.2        amazonlinux    15 k
[   23.653335] cloud-init[1618]:  mod_http2             x86_64   2.0.27-1.amzn2023.0.3       amazonlinux   166 k
[   23.653560] cloud-init[1618]:  mod_lua               x86_64   2.4.66-1.amzn2023.0.1       amazonlinux    60 k
[   23.653778] cloud-init[1618]: Transaction Summary
[   23.654002] cloud-init[1618]: ================================================================================
[   23.654213] cloud-init[1618]: Install  13 Packages
[   23.654459] cloud-init[1618]: Total download size: 2.4 M
[   23.654663] cloud-init[1618]: Installed size: 6.9 M
[   23.654886] cloud-init[1618]: Downloading Packages:
[   23.747893] cloud-init[1618]: (1/13): apr-util-1.6.3-1.amzn2023.0.2.x86_64.rp 3.0 MB/s |  97 kB     00:00
[   23.752300] cloud-init[1618]: (2/13): apr-util-lmdb-1.6.3-1.amzn2023.0.2.x86_ 371 kB/s |  13 kB     00:00
[   23.757781] cloud-init[1618]: (3/13): apr-1.7.5-1.amzn2023.0.4.x86_64.rpm     3.0 MB/s | 129 kB     00:00
[   23.771203] cloud-init[1618]: (4/13): apr-util-openssl-1.6.3-1.amzn2023.0.2.x 668 kB/s |  15 kB     00:00
[   23.775658] cloud-init[1618]: (5/13): generic-logos-httpd-18.0.0-12.amzn2023. 824 kB/s |  19 kB     00:00
[   23.783047] cloud-init[1618]: (6/13): httpd-2.4.66-1.amzn2023.0.1.x86_64.rpm  1.8 MB/s |  47 kB     00:00
[   23.799962] cloud-init[1618]: (7/13): httpd-filesystem-2.4.66-1.amzn2023.0.1. 547 kB/s |  13 kB     00:00
[   23.809890] cloud-init[1618]: (8/13): httpd-core-2.4.66-1.amzn2023.0.1.x86_64  36 MB/s | 1.4 MB     00:00
[   23.815835] cloud-init[1618]: (9/13): httpd-tools-2.4.66-1.amzn2023.0.1.x86_6 2.4 MB/s |  81 kB     00:00
[   23.822852] cloud-init[1618]: (10/13): libbrotli-1.0.9-4.amzn2023.0.2.x86_64.  14 MB/s | 315 kB     00:00
[   23.838306] cloud-init[1618]: (11/13): mailcap-2.1.49-3.amzn2023.0.3.noarch.r 1.1 MB/s |  33 kB     00:00
[   23.842509] cloud-init[1618]: (12/13): mod_http2-2.0.27-1.amzn2023.0.3.x86_64 6.2 MB/s | 166 kB     00:00
[   23.851798] cloud-init[1618]: (13/13): mod_lua-2.4.66-1.amzn2023.0.1.x86_64.r 2.0 MB/s |  60 kB     00:00
[   23.853569] cloud-init[1618]: --------------------------------------------------------------------------------
[   23.855227] cloud-init[1618]: Total                                            11 MB/s | 2.4 MB     00:00
[   24.028779] cloud-init[1618]: Running transaction check
[   24.054605] cloud-init[1618]: Transaction check succeeded.
[   24.054796] cloud-init[1618]: Running transaction test
[   24.243447] cloud-init[1618]: Transaction test succeeded.
[   24.243620] cloud-init[1618]: Running transaction
[   24.436452] cloud-init[1618]:   Preparing        :                                                        1/1
[   24.456786] cloud-init[1618]:   Installing       : apr-1.7.5-1.amzn2023.0.4.x86_64                       1/13
[   24.464722] cloud-init[1618]:   Installing       : apr-util-lmdb-1.6.3-1.amzn2023.0.2.x86_64             2/13
[   24.475481] cloud-init[1618]:   Installing       : apr-util-openssl-1.6.3-1.amzn2023.0.2.x86_64          3/13
[   24.487522] cloud-init[1618]:   Installing       : apr-util-1.6.3-1.amzn2023.0.2.x86_64                  4/13
[   24.508267] cloud-init[1618]:   Installing       : mailcap-2.1.49-3.amzn2023.0.3.noarch                  5/13
[   24.526667] cloud-init[1618]:   Installing       : httpd-tools-2.4.66-1.amzn2023.0.1.x86_64              6/13
[   24.531976] cloud-init[1618]:   Installing       : libbrotli-1.0.9-4.amzn2023.0.2.x86_64                 7/13
[   24.645060] cloud-init[1618]:   Running scriptlet: httpd-filesystem-2.4.66-1.amzn2023.0.1.noarch         8/13
[   24.921303] cloud-init[1618]:   Installing       : httpd-filesystem-2.4.66-1.amzn2023.0.1.noarch         8/13
[   24.957502] cloud-init[1618]:   Installing       : httpd-core-2.4.66-1.amzn2023.0.1.x86_64               9/13
[   24.965252] cloud-init[1618]:   Installing       : mod_http2-2.0.27-1.amzn2023.0.3.x86_64               10/13
[   24.971781] cloud-init[1618]:   Installing       : mod_lua-2.4.66-1.amzn2023.0.1.x86_64                 11/13
[   24.985598] cloud-init[1618]:   Installing       : generic-logos-httpd-18.0.0-12.amzn2023.0.3.noarch    12/13
[   24.992029] cloud-init[1618]:   Installing       : httpd-2.4.66-1.amzn2023.0.1.x86_64                   13/13
[   24.834822] zram_generator::config[1807]: zram0: system has too much memory (916MB), limit is 800MB, ignoring.
[   25.910691] cloud-init[1618]:   Running scriptlet: httpd-2.4.66-1.amzn2023.0.1.x86_64                   13/13
[   25.912545] cloud-init[1618]:   Verifying        : apr-1.7.5-1.amzn2023.0.4.x86_64                       1/13
[   25.914237] cloud-init[1618]:   Verifying        : apr-util-1.6.3-1.amzn2023.0.2.x86_64                  2/13
[   25.915871] cloud-init[1618]:   Verifying        : apr-util-lmdb-1.6.3-1.amzn2023.0.2.x86_64             3/13
[   25.915913] cloud-init[1618]:   Verifying        : apr-util-openssl-1.6.3-1.amzn2023.0.2.x86_64          4/13
[   25.919021] cloud-init[1618]:   Verifying        : generic-logos-httpd-18.0.0-12.amzn2023.0.3.noarch     5/13
[   25.920615] cloud-init[1618]:   Verifying        : httpd-2.4.66-1.amzn2023.0.1.x86_64                    6/13
[   25.922231] cloud-init[1618]:   Verifying        : httpd-core-2.4.66-1.amzn2023.0.1.x86_64               7/13
[   25.922273] cloud-init[1618]:   Verifying        : httpd-filesystem-2.4.66-1.amzn2023.0.1.noarch         8/13
[   25.925570] cloud-init[1618]:   Verifying        : httpd-tools-2.4.66-1.amzn2023.0.1.x86_64              9/13
[   25.925654] cloud-init[1618]:   Verifying        : libbrotli-1.0.9-4.amzn2023.0.2.x86_64                10/13
[   25.925865] cloud-init[1618]:   Verifying        : mailcap-2.1.49-3.amzn2023.0.3.noarch                 11/13
[   25.926092] cloud-init[1618]:   Verifying        : mod_http2-2.0.27-1.amzn2023.0.3.x86_64               12/13
[   26.155410] cloud-init[1618]:   Verifying        : mod_lua-2.4.66-1.amzn2023.0.1.x86_64                 13/13
[   26.155558] cloud-init[1618]: Installed:
[   26.155999] cloud-init[1618]:   apr-1.7.5-1.amzn2023.0.4.x86_64
[   26.156213] cloud-init[1618]:   apr-util-1.6.3-1.amzn2023.0.2.x86_64
[   26.156424] cloud-init[1618]:   apr-util-lmdb-1.6.3-1.amzn2023.0.2.x86_64
[   26.156632] cloud-init[1618]:   apr-util-openssl-1.6.3-1.amzn2023.0.2.x86_64
[   26.156838] cloud-init[1618]:   generic-logos-httpd-18.0.0-12.amzn2023.0.3.noarch
[   26.157063] cloud-init[1618]:   httpd-2.4.66-1.amzn2023.0.1.x86_64
[   26.157259] cloud-init[1618]:   httpd-core-2.4.66-1.amzn2023.0.1.x86_64
[   26.157466] cloud-init[1618]:   httpd-filesystem-2.4.66-1.amzn2023.0.1.noarch
[   26.157673] cloud-init[1618]:   httpd-tools-2.4.66-1.amzn2023.0.1.x86_64
[   26.157881] cloud-init[1618]:   libbrotli-1.0.9-4.amzn2023.0.2.x86_64
[   26.158089] cloud-init[1618]:   mailcap-2.1.49-3.amzn2023.0.3.noarch
[   26.158305] cloud-init[1618]:   mod_http2-2.0.27-1.amzn2023.0.3.x86_64
[   26.158548] cloud-init[1618]:   mod_lua-2.4.66-1.amzn2023.0.1.x86_64
[   26.158736] cloud-init[1618]: Complete!
[   26.259446] cloud-init[1618]: Created symlink /etc/systemd/system/multi-user.target.wants/httpd.service â /usr/lib/systemd/system/httpd.service.
[   25.604113] zram_generator::config[3029]: zram0: system has too much memory (916MB), limit is 800MB, ignoring.
ci-info: +++++++++++++++++++++++++++++++Authorized keys from /home/ec2-user/.ssh/authorized_keys for user ec2-user+++++++++++++++++++++++++++++++
ci-info: +---------+-------------------------------------------------------------------------------------------------+---------+----------------+
ci-info: | Keytype |                                       Fingerprint (sha256)                                      | Options |    Comment     |
ci-info: +---------+-------------------------------------------------------------------------------------------------+---------+----------------+
ci-info: | ssh-rsa | a3:5d:62:df:70:33:61:03:26:cd:44:31:58:a8:9c:99:7e:2a:f0:76:4a:c1:fc:4d:e6:f0:11:f5:23:44:67:a2 |    -    | ec2-apache-key |
ci-info: +---------+-------------------------------------------------------------------------------------------------+---------+----------------+
<14>Jan 19 03:51:00 cloud-init: #############################################################
<14>Jan 19 03:51:00 cloud-init: -----BEGIN SSH HOST KEY FINGERPRINTS-----
<14>Jan 19 03:51:00 cloud-init: 256 SHA256:ExkmIaT43qD6QicJFEnG49T7lSozLTR/j3dvowrLTgk root@ip-172-31-41-106.us-east-2.compute.internal (ECDSA)
<14>Jan 19 03:51:00 cloud-init: 256 SHA256:YlyNwZuZEsw0LSkWVSA/1GH7+e0x77ysEOW6SOZEp8Y root@ip-172-31-41-106.us-east-2.compute.internal (ED25519)
<14>Jan 19 03:51:00 cloud-init: -----END SSH HOST KEY FINGERPRINTS-----
<14>Jan 19 03:51:00 cloud-init: #############################################################
-----BEGIN SSH HOST KEY KEYS-----
ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBK5MdLecizRMzUi71WxAN6SZrPstT9bG+4siLykfHb30E3qcm3ujhIrGYEDKNbfxdfFg7O5J3RKynsjBL241amA= root@ip-172-31-41-106.us-east-2.compute.internal
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIELyvvT4pg3F3rAbgt/7PqIhzdwyHt2twCKGvnK0PkdF root@ip-172-31-41-106.us-east-2.compute.internal
-----END SSH HOST KEY KEYS-----
[   26.639641] cloud-init[1618]: Cloud-init v. 22.2.2 finished at Mon, 19 Jan 2026 03:51:01 +0000. Datasource DataSourceEc2.  Up 26.63 seconds
