follow these steps to be abale to run this project in your machine 

*install home brew:
 ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

*install rvm:
\curl -L https://get.rvm.io | bash -s stable 

*install ruby "2.6.3""
rvm use ruby --install --default

*install rails "5.2.x""
gem install rails --no-document

*install mongoDB "4.2.1"":
brew install mongodb     


Make sure that the /data/db directory has the right permissions by running
sudo chown -R `id -un` /data/db
# Enter your password


