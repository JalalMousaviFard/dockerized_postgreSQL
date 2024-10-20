#!bin/bash
systemctl restart postgresql 
sudo -u postgres psql
ping 127.0.0.1

