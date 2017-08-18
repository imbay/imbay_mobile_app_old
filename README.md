Ubuntu 16.04.3 LTS

git config --global user.name "Nurasyl Aldan" &&\
git config --global user.email "nurassyl.aldan@gmail.com" &&\
git config user.name &&\
git config user.email

apt install curl
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
apt update
apt install -y nodejs=6.11.*

cordova platforms ls
cordova platform add browser

sudo npm install -g cordova gulp &&\
npm install

rm -f angular.min.js &&\
rm -f www/js/lib/angular.js &&\
wget https://ajax.googleapis.com/ajax/libs/angularjs/1.6.5/angular.min.js &&\
mv angular.min.js www/js/lib/angular.js

rm -f font-awesome-4.7.0.zip &&\
rm -f www/css/fonts/* &&\
rm -f www/css/lib/font-awesome.css &&\
rm -rf font-awesome-4.7.0 &&\
wget http://fontawesome.io/assets/font-awesome-4.7.0.zip &&\
unzip font-awesome-4.7.0.zip &&\
rm font-awesome-4.7.0.zip &&\
mv font-awesome-4.7.0/css/font-awesome.min.css www/css/lib/font-awesome.css &&\
mv font-awesome-4.7.0/fonts/* www/css/fonts &&\
rm -r font-awesome-4.7.0

rm -f v1.6.4.zip &&\
rm -rf Framework7-1.6.4 &&\
rm -f www/js/lib/framework7.js &&\
rm -f www/css/lib/framework7.material.css &&\
rm -f www/css/lib/framework7.material.colors.css &&\
wget https://github.com/nolimits4web/Framework7/archive/v1.6.4.zip &&\
unzip v1.6.4.zip &&\
rm v1.6.4.zip &&\
mv Framework7-1.6.4/dist/js/framework7.min.js www/js/lib/framework7.js &&\
mv Framework7-1.6.4/dist/css/framework7.material.min.css www/css/lib/framework7.material.css &&\
mv Framework7-1.6.4/dist/css/framework7.material.colors.min.css www/css/lib/framework7.material.colors.css &&\
rm -r Framework7-1.6.4

gulp start

git checkout dev && sudo chmod 777 save.sh && ./save.sh
