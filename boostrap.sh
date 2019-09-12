# After git clone https://github.com/mattfurness/dotfiles ~/.dotfiles
# Run ~/.dotfiles/bootstrap.sh

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
bash -c "`curl -sL https://get.freshshell.com`"
source ~/.fresh/build/shell.sh
ln -s ~/.dotfiles/freshrc ~/.freshrc
fresh
brew bundle
sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
chsh -s /usr/local/bin/bash
mkdir ~/.config
ln -s ~/.vim ~/.config/nvim
git config --global diff.tool bc3
git config --global difftool.bc3.trustExitCode true
git config --global difftool.prompt false
git config --global merge.tool bc3
git config --global mergetool.bc3.trustExitCode true
git config --global mergetool.prompt false
git config --global core.editor /usr/bin/vim
git config --global mergetool.keepBackup false
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global rebase.autosquash true
git config --global core.excludesfile '~/.config/git/ignore'
shopt -s globstar
curl https://nixos.org/nix/install | sh
mkdir ~/.vim/undodir
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
$(brew --prefix)/opt/fzf/install
