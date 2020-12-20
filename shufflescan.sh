#get shuffle dns
wget https://github.com/projectdiscovery/shuffledns/releases/download/v1.0.4/shuffledns_1.0.4_linux_amd64.tar.gz
#tar -zxvf shuffledns_1.0.4_linux_amd64.tar.gz

#dns validator
git clone https://github.com/vortexau/dnsvalidator.git
cd dnsvalidator
sudo python3 setup.py install

#generate resolver file
curl "https://public-dns.info/nameservers.csv" | grep ",1.00," | cut -d ',' -f 1 | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" | dnsvalidator -threads 20 -o resolvers.txt

git clone https://github.com/blechschmidt/massdns.git
cd massdns
make
cd bin
sudo cp massdns /bin/
cd ..
cd ..
cd ..
wget https://github.com/PwnDefend/subbrute/blob/main/sorted.zip?raw=true
unzip sorted.zip


./shuffledns -d target.local -w sorted.txt -r resolvers.txt
