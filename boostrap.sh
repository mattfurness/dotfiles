# After git clone https://github.com/mattfurness/dotfiles ~/.dotfiles
# Run ~/.dotfiles/bootstrap.sh

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
bash -c "`curl -sL https://get.freshshell.com`"
source ~/.fresh/build/shell.sh
ln -s ~/.freshrc ~/.dotfiles/freshrc
fresh
brew bundle
sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
chsh -s /usr/local/bin/bash
mkdir ~/.config
ln -s ~/.vim ~/.config/nvim
