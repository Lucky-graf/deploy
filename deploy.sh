#!bin/bash/
time=$(date +%s)
echo Hi, I was created to deploy a term paper Boyko Bogdan
echo --Start deploy environment--
echo Deployment started LAMP Server
sleep 5s
git clone https://github.com/Lucky-graf/lamp-instul.git
cd lamp-instul
bash lamp_inst.sh
echo Now mount the site
sleep 5s
git clone https://github.com/Lucky-graf/mysite.git
sudo mv mysite /var/www/site-car 
sudo systemctl restart apache2
sudo systemctl status apache2
echo '-----------!!!Congratulations!!!-----------------'
echo '!!!Your server is working fine and feeling good!!!'
sudo rmdir -R lamp-instul
echo 'This operation took-' $(($(date +%s)-$time)) '-time!'
