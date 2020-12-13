#!bin/bash/
time=$(date +%s)
echo Hi, I was created to deploy a term paper Boyko Bogdan
echo --Start deploy environment--
echo Deployment started LAMP Server
sleep 5
git clone https://github.com/Lucky-graf/lamp-instul.git
bash /home/graf/deploy/lamp-instul/lamp_inst.sh
echo Now mount the site
sleep 5
git clone https://github.com/Lucky-graf/mysite.git
sudo mv /home/graf/deploy/mysite /var/www/site-car 
sudo systemctl restart apache2
sudo systemctl status apache2
echo '-----------!!!Congratulations!!!-----------------'
echo '!!!Your server is working fine and feeling good!!!'
sudo rm -rf /home/graf/deploy
#sudo rmdir -R lamp-instul
echo 'This operation took-' $(($(date +%s)-$time)) '-time!'
