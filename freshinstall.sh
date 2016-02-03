#!/bin/bash

##SCRIPT STARTS HERE

# add repos
sudo add-apt-repository -y "deb http://dl.google.com/linux/chrome/deb/ stable main"
sudo add-apt-repository -y "deb http://dl.google.com/linux/talkplugin/deb/ stable main"
sudo add-apt-repository -y ppa:n-muench/vlc
sudo add-apt-repository -y ppa:peterlevi/ppa
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo add-apt-repository -y ppa:tuxpoldo/btsync
sudo add-apt-repository -y ppa:freyja-dev/unity-tweak-tool-daily
sudo add-apt-repository -y ppa:stefansundin/truecrypt
sudo apt-key adv --keyserver pgp.mit.edu --recv-keys 5044912E
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 3F055C03
sudo wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | apt-key add -
sudo wget -O - http://www.lamaresh.net/apt/key.gpg | apt-key add -
sudo gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://rvm.io/mpapis.asc | gpg --import -
sudo curl -sSL https://rvm.io/mpapis.asc | gpg --import -

# basic update
sudo apt-get -y --force-yes update
sudo apt-get -y --force-yes upgrade

# install apps
sudo apt-get -y install libxss1 sublime-text-installer git gitk gitg virtualbox virtualbox-guest-additions-iso filezilla dropbox skype btsync-user gimp p7zip p7zip-full p7zip-rar unity-tweak-tool indicator-multiload curl gparted dkms google-chrome-stable google-talkplugin php5-cli php5-common php5-mcrypt php5-sqlite php5-curl php5-json phpunit mcrypt ssmtp mailutils mpack truecrypt nautilus-open-terminal google-talkplugin linux-headers-generic build-essential tp-smapi-dkms moc variety curl zsh pastebinit ntfs-config checkinstall cdbs devscripts dh-make fakeroot libxml-parser-perl check vlc libav-tools flac faac faad sox ffmpeg2theora libmpeg2-4 uudeview mpeg3-utils mpegdemux liba52-dev mpeg2dec vorbis-tools id3v2 mpg321 mpg123 libflac++6 totem-mozilla icedax  lame libmad0 libjpeg-progs ubuntu-restricted-extras gstreamer0.10-plugins-ugly gxine libdvdread4 totem-mozilla icedax tagtool easytag id3tool lame nautilus-script-audio-convert libmad0 mpg321 libavcodec-extra compiz compizconfig-settings-manager compiz-plugins bleachbit python-pip guake feh htop mlocate orage lm-sensors 

# folders
rm -rf ~/Documents
rm -rf ~/Public
rm -rf ~/Templates
rm -rf ~/Videos
rm -rf ~/Music
rm ~/examples.desktop
mkdir ~/Development
mkdir ~/BTSync

#git settings
git config --global push.default simple
git config --global user.name "Ankur Singh"
git config --global user.email "ankur13019@iiitd.ac.in"

#ruby and rails
curl -L https://get.rvm.io | bash -s stable --ruby
source ~/.rvm/scripts/rvm
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -y nodejs

rvm get stable --autolibs=enable
rvm install ruby
rvm install 2.2.1
rvm install 1.9.3
rvm install 2.0.0
rvm install 2.1.0

rvm --default use ruby-2.2.1
gem update --system
echo "gem: --no-document --no-ri --no-rdoc" >> ~/.gemrc
gem install bundler nokogiri rails annotate flay lol_dba jazz_hands zeus hub rhc

#zsh
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh
echo "plugins=(rails sublime web-search chucknorris github rand-quote git ruby)" >> ~/.zshrc
echo 'DEFAULT_USER="ankur"' >> ~/.zshrc
echo "chuck_cow" >> ~/.zshrc

#heroku toolbelt
sudo wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

#steam
wget -c media.steampowered.com/client/installer/steam.deb
sudo dpkg -i steam.deb
sudo apt-get install -f

# requires clicks
sudo apt-get install -y ubuntu-restricted-extras mysql-server libmysqlclient-dev ruby-dev

##Cleanup time ############################################
    echo "Cleaning up packages..."
    sleep 1s
    sudo apt-get autoclean -y
    sudo apt-get autoremove -y
    sudo apt-get update
    echo ""
    echo "Packages cleaned up..."
    echo ""

# prompt for a reboot
clear
echo ""
echo "===================="
echo " TIME FOR A REBOOT! "
echo "===================="
echo ""
exit
