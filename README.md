# termux-pd-kali
在Termux中一键安装Kali-Linux并移除Proot-distro限制。
## kali-installer.sh
Kali Linux容器安装程序，会自动下载并调用pd-cracker.sh 。

特别感谢[@EXALAB](https://github.com/EXALAB)提供Kali Linux根文件系统。

已知BUG：
1.Metasploit无法启动PGSQL数据库。请在Termux中手动启动PGSQL

2.Android 8.0以上系统，无法安装GNOME桌面（下载失败），KDE桌面（无法启动-段错误，部分512GB设备可能成功启动），LXQT桌面（一直崩溃），只能使用Xfce桌面（部分设备桌面图标大小异常），具体原因未知，如有相关需求，请使用Android 7.1.2及以下版本系统，或刷入KernelSU内核or其他第三方内核，或使用AnLinux。
```
curl -LO https://github.com/428571c/termux-pd-kali/raw/master/kali-installer.sh&&bash kali-installer.sh
```
## pd-cracker.sh
Proot-distro破解补丁 &Fuck @Sylirre up! 一般不用手动执行。

如果更新Proot-distro，则需要重新破解。
```
curl -LO https://github.com/428571c/termux-pd-kali/raw/master/pd-cracker.sh&&bash pd-cracker.sh
```
