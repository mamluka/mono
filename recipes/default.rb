script "install_mono" do
  interpreter "bash"
  code <<-EOH
echo "MONO: installing dependencies"
sudo apt-get install mono-complete
sudo apt-get install mono-devel
sudo apt-get install mono-xbuild
echo "MONO: Done"
  EOH
end