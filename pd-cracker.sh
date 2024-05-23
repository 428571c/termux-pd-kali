#!/bin/bash
VER="1.0"
HOMEPAGE="https://github.com/428571c/termux-pd-kali"
echo "- Termux-Proot-Distro 破解程序"
echo "- 当前版本：$VER"
echo "- 项目地址：$HOMEPAGE"
echo "- Bug反馈：$HOMEPAGE/issues"
echo "- 检测到当前Termux路径为：$PREFIX"
echo "- 正在移除检测程序"
chmod +w $PREFIX/bin/proot-distro
sed -i 's/kali/cao/g' $PREFIX/bin/proot-distro
sed -i 's/parrot/nima/g' $PREFIX/bin/proot-distro
sed -i 's/nethunter/shabi/g' $PREFIX/bin/proot-distro
sed -i 's/blackarch/sylirre/g' $PREFIX/bin/proot-distro
sed -i 's/get a Kali Linux for this/出现未知错误，请尝试重新破解。如果您反复看见此提示，请去项目主页提issues/g' $PREFIX/bin/proot-distro

echo "- 移除检测成功！"
echo "- 正在关闭PD更新"
apt-mark hold proot-distro
echo "- 关闭PD更新成功！"
echo "- 现在可以安装Kali Linux系统了！"