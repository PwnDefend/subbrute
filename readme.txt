#DNS Brute Force for domain enumeration
#Single Domain Model

#wordlist is created from a range of sources, uniques and sorted - it contains some junk so you might want to clean it up. Also it's english langauge focused.


#Use with a multi-threaded DNS brute force tool e.g. AIODNSBRUTE

#Install aiodnsbrute
#unzip the wordlist
git clone https://github.com/PwnDefend/subbrute.git
cd subbrute
sudo apt install unzip -y
unzip sorted.zip

git clone https://github.com/blark/aiodnsbrute.git
cd aiodnsbrute
sudo python3 setup.py install
cd ..
aiodnsbrute -w sorted.txt --resolver-file resolvers.txt -t 4 --outfile dnsenum.txt domain.local
