sudo apt-get update
sudo apt-get install -y gcc python-pip unzip

wget https://golang.org/dl/go1.12.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.12.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile && source ~/.profile

wget https://traffic.comics.unina.it/software/ITG/codice/D-ITG-2.8.1-r1023-src.zip 
unzip D-ITG-2.8.1-r1023-src.zip 
cd D-ITG-2.8.1-r1023/src 
make 
sudo make install PREFIX=/usr/local 

git clone https://github.com/mininet/mininet.git 
./mininet/util/install.sh
pip install mininet 

echo 'net.ipv4.ip_forward=1' | sudo tee -a /etc/sysctl.conf
echo 'net.ipv6.conf.all.forwarding=1' | sudo tee -a /etc/sysctl.conf

cd ~/Workspace
git clone https://github.com/thomaswpp/mpquic-sbd.git
cd mpquic-sbd
./build.sh
