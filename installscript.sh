#install rvm and add your .bashrc
bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer) ; \
# cd ~/.rvm/bin/ ; \
# chmod +x rvm-installer ; \
# rvm_bin_path=~/.rvm/bin rvm_man_path=~/.rvm/share/man ./rvm-installer ; \

#If you get error says RVM is not a function then use this script at the very best of your ~/.bashrc file:
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.

#install readline, iconv, zlib, openssl, autoconf package
rvm pkg install readline; \
rvm pkg install iconv; \
rvm pkg install zlib; \
rvm pkg install openssl; \
rvm pkg install autoconf; \

#install ruby 1.9.2 with above package
rvm install 1.9.2 --with-readline-dir=$rvm_path/usr --with-iconv-dir=$rvm_path/usr --with-zlib-dir=$rvm_path/usr --with-openssl-dir=$HOME/.rvm/usr ; \

#settings the ruby 1.91.2 is default
rvm use 1.9.2 --default; \

# checking the ruby version! - If you see the ruby version 1.9.2, you OK!
ruby -v;

# Create and use Gemset
rvm gemset create rails;
rvm gemset use rails --default;

# install Rails newest version
gem install rails --no-ri --no-rdoc;

# Check Rails version and Gems list
gem list;
rails -v;
