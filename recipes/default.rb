script "install_mono" do
  interpreter "bash"
  code <<-EOH
echo "Mono install started" >> /monoinst.log
echo "MONO: installing dependencies"
sudo apt-get install mono-complete -y
sudo apt-get install mono-devel -y
sudo apt-get install mono-xbuild -y
echo "MONO: Done"
echo "Mono install completed" >> /monoinst.log
  EOH
end
