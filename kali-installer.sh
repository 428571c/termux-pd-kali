#!/bin/bash
VER="1.0"
HOMEPAGE="https://github.com/428571c/termux-pd-kali"
echo "- Termux-Kali-Linux 安装程序"
echo "- 当前版本：$VER"
echo "- 项目地址：$HOMEPAGE"
echo "- Bug反馈：$HOMEPAGE/issues"
echo "- 正在安装核心依赖"
apt update
apt install curl busybox proot-distro aria2 -y
echo "- 核心依赖安装完成"
echo "- 正在下载破解补丁"
curl -L -O --http1.1 $HOMEPAGE/raw/master/pd-cracker.sh
echo "- 正在执行破解补丁"
bash pd-cracker.sh
echo "- 正在下载元数据"
echo "- 检测到当前Termux路径为：$PREFIX"
curl --http1.1 -L -o $PREFIX/etc/proot-distro/kali.sh $HOMEPAGE/raw/master/kali.sh
echo "- 正在安装Kali RootFS，请耐心等待"
pd i kali
echo "- 安装成功，正在进行最终处理"
sync
echo "- 成功！"
echo "- 请使用命令pd login kali登录系统！"
sync
