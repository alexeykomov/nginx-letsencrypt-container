# nginx-letsencrypt-container

To use:

1. `docker pull alexeykomov/nginx-letsencrypt-container`

Steps to build and run (on your VPS or wherever):
1. `cd nginx-letsencrypt-container`
2. `chmod +x run.sh`
3. Edit `run.sh` variables DOMAIN and EMAIL to the ones you want.
4. `sudo docker build .` 
5. `./run.sh 8b670539a53e` where the hash is the id of container you've build in step 4.
