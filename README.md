# ansible-moteino-gateway
Configures a RaspberryPi as a [Moteino Gateway](http://lowpowerlab.com/gateway/) using Ansible.

This is developed on and tested with a RaspberryPI 2 bootstraped from a minimal [Raspbian Netinstall](https://github.com/debian-pi/raspbian-ua-netinst/) base installation.

__NOTE__: Ansible has dependencies on python and sudo existing before it will run on a remote system.  I have included a installer-config.txt script that will install them during the initial Raspbian installation.


## Setup Repository
1. Clone this repository.
```
git clone https://github.com/cacack/ansible-moteino-gateway.git
```
2. Initialize submodules.
```
cd ansible-moteino-gateway
git submodules init
git submodules update
```


## Install Raspbian
1. Download the XZ compressed image file from their [latest release page](https://github.com/debian-pi/raspbian-ua-netinst/releases/latest).

2. Flash your SD card.
```
xzcat ~/downloads/raspbian-ua-netinst-<latest-version-number>.img.xz > /dev/sdX
```

3. Mount the newly partitioned SD card and copy my installer-config.txt file to it root.  Adujst the installer-config.txt as you see fit, but ensure python-simplejson and sudo get installed.

4. Reinsert the SD card into the Raspberry PI and power on.  For the initial power-on, I suggest using a wired ethernet connection.


## Run Ansible
```
./run-ansible.sh <raspberrypi-hostname>
```
