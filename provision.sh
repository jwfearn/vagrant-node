# no shebang, this script should only be executed by Vagrant
set -e
set -u

# pre-install node requirements
wget -qO - https://deb.nodesource.com/setup | bash -

# install
apt-get -qq update
apt-get -qq install \
    git-core \
    nodejs

# personalization
cat >> '/home/vagrant/.bashrc' <<HERE
export PS1='\[\e[37m\]\u\[\e[0m\]@\[\e[37m\]\h \[\e[31m\]\w \[\e[37m\]\$ \[\e[0m\]'
cd /vagrant
HERE
