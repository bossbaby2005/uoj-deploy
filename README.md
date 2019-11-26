# The Guide to Build the UOJ docker image
You would discover that the UOJ image can't be used on the ARM platform
But if you want to deploy on RPi
You can follow this
## Version:
Forked from UniversalOJ/UOJ-System on 11.26 2019
Nothing changed 
You can use this on a completely new server(without installing docker)
## Deployment:
```
mkdir uoj
cd uoj
wget https://raw.githubusercontent.com/bossbaby2005/uoj-deploy/master/install.sh
sh install.sh   #Then it would automatically install docker and build UOJ image
```
