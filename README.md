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

rm -f www/js/lib/onsenui.js &&\
rm -f www/js/lib/angular-onsenui.js &&\
rm -f www/css/lib/onsenui.css &&\
rm -f www/css/lib/onsen-css-components.css &&\
rm -rf www/css/lib/font_awesome &&\
rm -rf www/css/lib/ionicons &&\
rm -rf www/css/lib/material-design-iconic-font &&\
rm -rf 2.5.2.zip &&\
rm -rf OnsenUI-dist-2.5.2 &&\
wget https://github.com/OnsenUI/OnsenUI-dist/archive/2.5.2.zip &&\
unzip 2.5.2.zip &&\
mv OnsenUI-dist-2.5.2/js/onsenui.min.js www/js/lib/onsenui.js &&\
mv OnsenUI-dist-2.5.2/js/angular-onsenui.min.js www/js/lib/angular-onsenui.js &&\
mv OnsenUI-dist-2.5.2/css/onsenui.min.css www/css/lib/onsenui.css &&\
mv OnsenUI-dist-2.5.2/css/onsen-css-components.min.css www/css/lib/onsen-css-components.css &&\
mv OnsenUI-dist-2.5.2/css/material-design-iconic-font www/css/lib &&\
mv OnsenUI-dist-2.5.2/css/ionicons www/css/lib &&\
mv OnsenUI-dist-2.5.2/css/font_awesome www/css/lib &&\
rm 2.5.2.zip &&\
rm -r OnsenUI-dist-2.5.2

gulp start

cordova run browser
