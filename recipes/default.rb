script "install_mono" do
  interpreter "bash"
  code <<-EOH
echo "MONO: installing dependencies"
sudo apt-get install g++
sudo apt-get install bison
sudo apt-get install gettext
sudo apt-get install make
sudo apt-get install pkg-config
sudo apt-get install libglib2.0-dev

echo "MONO: Getting mono from source"
wget 'http://download.mono-project.com/sources/mono/mono-2.11.1.tar.bz2'

tar -xvjf 'mono-2.11.1.tar.bz2'

cd mono-2.11.1

echo "MONO: Configuring and install mono"
echo
./configure

make

sudo make install

echo "MONO: Done"
  EOH
end