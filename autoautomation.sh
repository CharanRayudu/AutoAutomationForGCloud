#!/bin/bash

cd massdns
cd bin
sudo cp massdns /usr/local/bin

echo "Installing assetfinder"
go get -u github.com/tomnomnom/assetfinder
cd go/bin/
sudo cp assetfinder /usr/local/bin
cd
echo "Done"

echo "Installing subfinder"
go get -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder
cd go/bin/
sudo cp subfinder /usr/local/bin
cd
echo "Done"

echo "Installing amass"
go get -v github.com/OWASP/Amass/v3/...
cd go/bin/
sudo cp amass /usr/local/bin
cd
echo "done"

echo "Installing ShuffleDNS"
go get -v github.com/projectdiscovery/shuffledns/cmd/shuffledns
cd go/bin/
sudo cp shuffledns /usr/local/bin
cd 
echo "Done"

echo "Installing httpx"
go get -v github.com/projectdiscovery/httpx/cmd/httpx
cd go/bin/
sudo cp httpx /usr/local/bin
cd
echo "done"

echo "Installing Nuclei"
go get -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei
cd go/bin/
sudo cp nuclei /usr/local/bin
cd
echo "done"

nuclei -update-templates

sudo su
nuclei -update-templates
exit
