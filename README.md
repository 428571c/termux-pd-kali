# termux-pd-kali
在Termux中一键安装Kali-Linux并移除Proot-distro限制。
## kali-installer.sh
Kali Linux容器安装程序，会自动下载并调用pd-cracker.sh 。
```
curl -LO https://github.com/428571c/termux-pd-kali/raw/master/kali-installer.sh&&bash kali-installer.sh
```
## pd-cracker.sh
Proot-distro破解补丁 &Fuck @Sylirre up! 一般不用手动执行。

如果更新Proot-distro，则需要重新破解。
```
curl -LO https://github.com/428571c/termux-pd-kali/raw/master/pd-cracker.sh&&bash pd-cracker.sh
```
