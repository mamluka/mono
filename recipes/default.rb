script "install_mono" do
  interpreter "bash"
  code <<-EOH

# Fix nginx for later on. It's here so I don't have to fork the nginx repo.
sudo echo "deb http://ppa.launchpad.net/nginx/stable/ubuntu lucid main" > /etc/apt/sources.list.d/opscode.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C300EE8C
sudo apt-get update

sudo apt-get upgrade
sudo apt-get install g++ -y
sudo apt-get install bison -y
sudo apt-get install gettext -y
sudo apt-get install make -y
sudo apt-get install pkg-config -y
sudo apt-get install libglib2.0-dev -y


wget 'http://download.mono-project.com/sources/mono/mono-2.10.8.tar.bz2'
  	
tar -xvjf 'mono-2.10.8.tar.bz2' 	
cd mono-2.10.8


./configure  	
#make get-monolite-latest
make
sudo make install
  EOH
end
