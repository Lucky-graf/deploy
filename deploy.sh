#!bin/bash/
times=$(date +%s)
echo Hi, I was created to deploy a term paper Boyko Bogdan
echo --Start deploy environment--
echo Now mount the site
sleep 5
git clone https://github.com/Lucky-graf/site-car.git
sudo mkdir /var/www/
sudo mv /home/graf/deploy/site-car /var/www/
echo Deployment started LAMP Server
sleep 5
git clone https://github.com/Lucky-graf/lamp-instul.git
cd lamp-instul
bash lamp_inst.sh
echo '-----------!!!Congratulations!!!-----------------'
echo '!!!Your server is working fine and feeling good!!!'
sudo rm -rf /home/graf/deploy
#sudo rmdir -R lamp-instul
echo 'This operation took-' $(($(date +%s)-$times)) '-time!'
echo Myip: 
ip a
