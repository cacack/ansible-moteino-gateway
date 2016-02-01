# ansible-moteino-gateway
Configures a RaspberryPi as a [Moteino Gateway](http://lowpowerlab.com/gateway/) using Ansible.

This is developed on and tested with a RaspberryPI 2 bootstraped from a minimal [Raspbian Netinstall](https://github.com/debian-pi/raspbian-ua-netinst/) base installation.

__NOTE__: Ansible has dependencies on python and sudo existing before it will run on a remote system.  I have included a installer-config.txt script that will install them during the initial Raspbian installation.


## Setup
1. Clone this repository.
```
git clone https://github.com/cacack/ansible-moteino-gateway.git
```

1. Initialize submodules.
```
cd ansible-moteino-gateway
git submodules init
git submodules update
```

## Run
```
./run-ansible.sh <raspberrypi-hostname>
```
