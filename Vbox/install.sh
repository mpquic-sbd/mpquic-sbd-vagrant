sudo apt-get update
sudo apt-get install -y gcc

wget https://golang.org/dl/go1.12.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.12.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile && source ~/.profile

git clone https://github.com/mininet/mininet.git
./mininet/util/install.sh

echo 'net.ipv4.ip_forward=1' | sudo tee -a /etc/sysctl.conf
echo 'net.ipv6.conf.all.forwarding=1' | sudo tee -a /etc/sysctl.conf

cd /Workstation
git clone https://github.com/thomaswpp/mpquic-sbd.git
cd mpquic-sbd
./build.sh
