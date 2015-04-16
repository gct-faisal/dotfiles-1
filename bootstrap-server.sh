#/bin/bash

apt-get update

# adding user
adduser veggiemonk
usermod -G sudo veggiemonk
passwd veggiemonk

#add user sudo rights
#visudo 

#secure ssh server
vim /etc/ssh/sshd_config
## TODO: automate PermitRootLogin no
service ssh restart

# install zsh
sudo apt-get -y install zsh git
chsh -s /bin/zsh veggiemonk
chsh -s /bin/zsh root
su - veggiemonk

git clone https://github.com/veggiemonk/dotfiles.git ~/.dotfiles
# oh my zsh
curl -L http://install.ohmyz.sh | sh
rm ~/.zshrc
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/dircolors ~/.dircolors
cp ~/.dotfiles/veggiemonk.zsh-theme ~/.oh-my-zsh/themes

# vim
git clone https://github.com/veggiemonk/vimrc ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

#become root again
exit

# install docker
wget -qO- https://get.docker.com/ | sh

# adding user to docker group
usermod -aG docker veggiemonk



