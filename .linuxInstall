sudo apt-get -y install mc
sudo apt-get -y install git bash-completion
sudo apt-get -y install npm
npm install -g grunt

sudo sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ xenial main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt-key adv --keyserver hkp://heyserver.ubuntu.com:80 --recv-keys 417A0893
sudo apt-get -y update

sudo ~/temp/myvimrc/dotnet-unintall-debian-packages.sh
sudo apt-get -y install dotnet-dev-1.0.3

sudo apt-get -y install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get -y update
sudo apt-get -y install neovim
sudo apt-get php7.0-cli

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
php -r "unlink('composer-setup.php');"

