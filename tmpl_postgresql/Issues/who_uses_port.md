sudo netstat -tulpn | grep :5432

pg_lsclusters
sudo -u postgres pg_ctlcluster 12 main stop

sudo systemctl stop postgresql@12-main

sudo apt-get --purge remove postgresql

sudo systemctl stop postgresql@12-main
sudo systemctl status postgresql@12-main
sudo systemctl disable postgresql@12-main

sudo apt-get remove postgresql
sudo apt-get purge postgresql*

sudo rm -rf /var/lib/postgresql
sudo rm -rf /etc/postgresql/
sudo rm -rf /var/log/postgresql/
sudo userdel -r postgres
