script "install_mono" do
  interpreter "bash"
  code <<-EOH

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
