#!/bin/bash
git config --global user.name "ViktorNech"
git config --global user.email "buktop20@gmail.com"
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
sudo ln -sf /home/box/web/etc/ask.py /etc/gunicorn.d/ask.py
sudo mysql -u root --password="K13Yhe!_mysql" -e "CREATE DATABASE IF NOT EXISTS My_Django; CREATE USER 'My_Django'@'localhost' IDENTIFIED BY 'K13Yhe!_django'; GRANT ALL PRIVILEGES ON My_django.* TO 'My_Django'@'localhost';"
sudo service mysql restart
sudo /etc/init.d/nginx restart
sudo /etc/init.d/gunicorn restart

