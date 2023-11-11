apt update
apt install -y curl sudo
curl -fsSL https://get.docker.com -o install-docker.sh
sudo sh install-docker.sh
git clone https://github.com/xfuren/frr-tinc.git
