echo "============== install npm ==================="
sudo apt-get -y update
sudo apt-get -y install nodejs
sudo apt-get -y install npm
npm install -g grunt


echo "============== Install neovim============== "
sudo apt-get -y install software-properties-common
sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt-get -y update
sudo apt-get -y install neovim
sudo apt-get -y install python-dev python-pip python3-dev python3-pip

echo "============== install dotnet core 2.0============== "
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt-get -y update
sudo apt-get -y install dotnet-sdk-2.0.0

echo "============== install php and composer============== "
sudo apt-get -y php7.0-cli
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
php -r "unlink('composer-setup.php');"

echo "============== install yeoman============== "
npm install -g yo

