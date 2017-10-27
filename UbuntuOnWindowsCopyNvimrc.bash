sudo rm -rf ~/.config/nvim
sudo rm -rf ~/.config
mkdir ~/.config
cp -r nvim ~/.config
sudo apt install -y dos2unix
dos2unix ~/.config/nvim/init.vim
dos2unix ~/.config/nvim/colors/gruvbox.vim

