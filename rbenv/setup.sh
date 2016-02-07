#!/usr/bin/env bash

git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash

rbenv install 2.2.4
rbenv global 2.2.4

# Now tell Rubygems not to install the documentation for each package
# locally, and then install bundler

echo "gem: --no-ri --no-rdoc" > $HOME/.gemrc
gem install bundler
