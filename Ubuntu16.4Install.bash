echo "================ Upgrade Ubuntu to latest version ========================== "
sudo apt -y update
sudo apt -y dist-upgrad
echo "============== install npm ==================="
sudo apt -y update
sudo apt -y install nodejs
sudo apt -y install npm
npm install -g grunt

echo "================= Install fzy fuzzy finder used by nvim =========================="
wget https://github.com/jhawthorn/fzy/releases/download/0.9/fzy_0.9-1_amd64.deb
sudo dpkg -i fzy_0.9-1_amd64.deb
sudo apt-get install silversearcher-ag

echo "============== Install neovim============== "
sudo apt -y install software-properties-common
sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo apt -y update
sudo apt -y install neovim
sudo apt -y install python-dev python-pip python3-dev python3-pip

echo "============== install dotnet core 2.0============== "
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-xenial-prod xenial main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt -y update
sudo apt -y install dotnet-sdk-2.0.0

echo "============== install php and composer============== "
sudo apt-get -y php7.0-cli
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
php -r "unlink('composer-setup.php');"

echo "============== install yeoman============== "
npm install -g yo

