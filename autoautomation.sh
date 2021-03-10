#!/bin/bash

echo "Installing amass"
go get -v github.com/OWASP/Amass/v3/...
cd go/bin/
sudo cp amass /usr/local/bin
cd

echo "Installing httpx"
go get -v github.com/projectdiscovery/httpx/cmd/httpx
cd go/bin/
sudo cp httpx /usr/local/bin
cd

echo "Installing Nuclei"
go get -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei
cd go/bin/
sudo cp nuclei /usr/local/bin
cd

nuclei -update-templates
