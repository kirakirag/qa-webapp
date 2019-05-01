sudo ln -sf ~/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

gunicorn3 -b '0.0.0.0:8080' hello:app &
gunicorn3 -b '0.0.0.0:8000' --pythonpath '/home/box/qa-webapp/ask/' ask.wsgi &
