#!/bin/bash
sudo ln -sf /home/kicune/stepic/my_stepic_web_project/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
