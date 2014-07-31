from ubuntu:14.04

# development tools
run apt-get update
run apt-get -qy install git vim tmux wget make libpq-dev

run wget -O ruby-install-0.4.3.tar.gz https://github.com/postmodern/ruby-install/archive/v0.4.3.tar.gz
run tar -xzvf ruby-install-0.4.3.tar.gz
workdir ruby-install-0.4.3/
run make install
run ruby-install ruby 2.1.2

run wget -O chruby-0.3.8.tar.gz https://github.com/postmodern/chruby/archive/v0.3.8.tar.gz
run tar -xzvf chruby-0.3.8.tar.gz
workdir chruby-0.3.8/
run make install
run bash -c 'source /usr/local/share/chruby/chruby.sh'
run cp /usr/local/share/chruby/chruby.sh /etc/profile.d/chruby.sh

run bash -c 'source /usr/local/share/chruby/chruby.sh; chruby 2.1.2; gem install bundler'
