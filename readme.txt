DNS Brute Force for domain enumeration
#Single Domain Model

#wordlist is created from a range of sources, uniques and sorted - it contains some junk so you might want to clean it up. Also it's english langauge focused.


Use with a multi-threaded DNS brute force tool e.g. AIODNSBRUTE

Install aiodnsbrute
unzip the wordlist

aiodnsbrute -w sorted.txt --resolver-file resolvers.txt --outfile dnsenum.txt domain.local
