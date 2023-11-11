# lxc.cgroup2.devices.allow: c 10:200 rwm
# lxc.mount.entry: /dev/net/tun dev/net/tun none bind,create=file

apt update
apt install -y curl sudo
curl -fsSL https://get.docker.com -o install-docker.sh
sudo sh install-docker.sh
git clone https://github.com/xfuren/frr-tinc.git
