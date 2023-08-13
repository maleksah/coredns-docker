# free 53 UDP on GCE instance
sudo systemctl stop systemd-resolved

chmod 777 Corefile
chmod 777 example.db

docker run -it --volume=$(pwd):/root/ -p 53:53/udp -p 53:53 coredns/coredns -conf /root/Corefile