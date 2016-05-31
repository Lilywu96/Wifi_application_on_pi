wget https://github.com/jenssegers/RTL8188-hostapd/archive/v2.0.tar.gz
tar -zxvf v2.0.tar.gz
cd RTL8188-hostapd-2.0/hostapd
sudo make
sudo make install
ln -s /etc/init.d/hostapd /etc/rc2.d/S02hostapd
sudo apt-get update
sudo apt-get install udhcpd
sudo sed -i -e 's/wpa=3/wpa=2/g' /etc/hostapd/hostapd.conf


