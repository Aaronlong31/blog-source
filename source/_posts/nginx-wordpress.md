title: 使用Nginx作为wordpress的web服务器
date: 2015-08-06 16:31:34
tags: 
- nginx
- wordpress
---

服务器: Ubuntu 14.0
需要安装php5-fpm。

```shell
sudo apt-get install nginx
sudo apt-get install php5-fpm
```

修改nginx配置，在/etc/nginx/sites-available/中增加文件www.xxx.com:
```
server {
        listen   80;
        root /var/www/xxx;
        index index.php index.html index.htm;
        server_name www.xxx.com;
        server_name xxx.com;
        location / {
                try_files $uri $uri/ /index.php?q=$uri&$args;
        }
        error_page 404 /404.html;
        error_page 500 502 503 504 /50x.html;
        location = /50x.html {
              root /usr/share/nginx/www;
        }
        location ~ \.php$ {
                try_files $uri =404;
                fastcgi_pass unix:/var/run/php5-fpm.sock;
                fastcgi_index index.php;
                include fastcgi_params;
         }
}

```

```
ln -s /etc/nginx/sites-available/www.xxx.com /etc/nginx/sites-enabled/
```

以上设置完成后就可以安装wordpress了，但过几分钟就不能访问了，报php5-fpm connection timeout，重启php5-fpm又好了，但还是过几分钟就不能访问。要做以下修改：

修改/etc/php5/fpm/pool.d/www.conf，将request_terminate_timeout设置为30s。
```
service nginx restart
service php5-fpm restart
```

剩下的就是安装wordpress了，Google it!。