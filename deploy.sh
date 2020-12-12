#!bin/bash/

echo Hi, I was created to deploy a term paper Boyko Bogdan
echo --Start deploy environment--
echo Deployment started LAMP Server
git clone https://github.com/Lucky-graf/lamp-instul.git
bash lamp_inst.sh
echo Now mount the site
git clone https://github.com/Lucky-graf/mysite.git
sudo mv mysite /var/www/site-car 
sudo systemctl restart apache2
sudo systemctl status apache2
echo '-----------!!!Congratulations!!!-----------------'
echo '!!!Your server is working fine and feeling good!!!'
