
# Download and install the Public Signing Key:
wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

# Save the repository definition to /etc/apt/sources.list.d/elasticsearch-2.x.list:
echo "deb http://packages.elastic.co/elasticsearch/2.x/debian stable main" | sudo tee -a /etc/apt/sources.list.d/elasticsearch-2.x.list

# Run apt-get update and the repository is ready for use.
sudo apt-get update
sudo apt-get -y install java
sudo apt-get -y install elasticsearch

sudo update-rc.d elasticsearch defaults 95 10

sudo service elasticsearch restart

