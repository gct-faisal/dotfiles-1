#/bin/bash

apt-get update

# adding user
adduser veggiemonk
usermod -G sudo veggiemonk
passwd veggiemonk

#add user sudo rights
visudo 

#secure ssh server
vim /etc/ssh/sshd_config
service ssh restart

# install zsh
sudo apt-get install zsh
chsh /bin/zsh
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


# installing docker ---> become root
# AUFS
apt-get install -y linux-image-extra-`uname -r`
curl https://get.docker.io/gpg | apt-key add -
echo deb http://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list
apt-get install -y lxc-docker
apt-get update && apt-get upgrade

# adding user to docker group
usermod -aG docker veggiemonk


#TODO :check if it is UBUNTU
# install node.js
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get install python-software-properties python g++ make nodejs

