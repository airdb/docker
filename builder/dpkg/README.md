# debain 软件包制作


## 生成软件包

dpkg -b . /tmp/my-package_1.0.0.deb

## 安装

apt install /tmp/my-package_1.0.0.deb

## 检查是否安装

apt list --installed | grep my-package

## 卸载

apt remove my-package



https://help.launchpad.net/Packaging/PPA/Uploading



## 参考

https://metebalci.com/blog/a-minimum-complete-example-of-debian-packaging-and-launchpad-ppa-hellodeb/
https://github.com/metebalci/hellodeb/tree/main
