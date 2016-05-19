#!/bin/bash
sudo ln -sf /home/kicune/stepic/my_stepic_web_project/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -sf /home/kicune/stepic/my_stepic_web_project/hello.py.conf /etc/gunicorn.d/hello.py.conf
sudo /etc/init.d/gunicorn restart
sudo gunicorn -c /etc/gunicorn.d/hello.py.conf

