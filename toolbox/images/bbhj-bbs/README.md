基于ubuntu bionic(1804)

安装ngnix 1.14.0 与php 7.2.24

使用[golang supervisord](https://github.com/ochinchina/supervisord)管理进程

构建前，将dzx的最新代码(upload目录中的内容)放到 `root/var/www/discuz` 下，确保 `index.php` 文件位于 `root/var/www/discuz/index.php`

所有的配置文件都可通过 `docker run -v` 进行覆盖。


sudo docker run -d  -p 80:80 -v /data/config:/var/www/discuz/config --name=bbhj bbhj
