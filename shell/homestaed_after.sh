#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.


if [ ! -f /usr/local/extra_homestead_software_installed ]; then
	echo 'installing some extra software'

    #
    # install zsh
    #
    apt-get install zsh -y
    
    #
    # install oh my zhs
    # (after.sh is run as the root user, but ssh is the vagrant user)
    #
    git clone git://github.com/robbyrussell/oh-my-zsh.git /home/vagrant/.oh-my-zsh
    cp /home/vagrant/.oh-my-zsh/templates/zshrc.zsh-template /home/vagrant/.zshrc
    chsh -s /usr/bin/zsh vagrant
    
    #
    # use .dotfiles from osx
    #
    rm -f /home/vagrant/.zshrc
    ln -s /home/vagrant/.dotfiles/shell/.zshrc /home/vagrant/.zshrc
    
    #
    # make tab complete case insensitive
    #
    echo set completion-ignore-case on | sudo tee -a /etc/inputrc
    

    touch /usr/local/extra_homestead_software_installed
else    
    echo "extra software already installed... moving on..."
fi