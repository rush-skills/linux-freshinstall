# linux-freshinstall
Script to run on ubuntu/ubuntu based operating systems to do a fresh install of useful apps.
tested on linux mint 17.1 with cinnamon/xfce.
installs the following:

using apt-get
vlc
sublime text 3
btsync
unity-tweak-tool
truecrypt
google chrome
virtualbox
git
curl
filezilla
dropbox
skype
gimp
p7zip
gparted
google-talkplugin
guake
htop
mlocate
orage
python
pip
bleachbit
pastebinit
zsh
and other audio/video codecs/tools

removes unnecessary folders from home

sets git config for first time setup(set the details to your account)

installs rvm

installs nodejs for execjs(helps during rails setup)

install latest ruby, 2.2.1,2.1.0.2.0.0,1.9.3 using rvm

sets default ruby to 2.2.1(latest at the time of writing the script)

adds no documentation flags to gemrc, thus making install faster

installs commonly used gems:
bundler
nokogiri
rails
annotate
flay
lol_dba
jazz_hands bundle
zeus
hub
rhc

installs zsh and ohmyzsh

sets basic settings for ohmyzsh/zsh

installs heroku toolbelt

installs steam using .deb file

installs mysql

Contributions are welcome. Fork and send a pull-request.

Use the issue tracker for suggestions and bugs.

TODO:

Dynamic script to choose what you want.
Add more software.
Support more frameworks etc.
IMPROVE README
Test and fix for different versions of ubuntu
Add more configuration options for zsh
add sublime text plugins and install package control anokknd few common plugins
and more zsh configuration
fix ubuntu basic settings like default apps,power usage and control etc.
auto detect and install drivers

TESTING:
TODO: Find a way to efficiently test a script. VMs might help.
