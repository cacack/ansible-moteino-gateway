# ansible-moteino-gateway
Configures a RaspberryPi as a [Moteino Gateway](http://lowpowerlab.com/gateway/) using Ansible.

This is developed on and tested with a RaspberryPI 2 bootstraped from a minimal [Raspbian Netinstall](https://github.com/debian-pi/raspbian-ua-netinst/) base installation.

__NOTE__: Ansible has dependencies on python and sudo existing before it will run on a remote system.  I have included a installer-config.txt script that will install them during the initial Raspbian installation.


## Run
```
./run-ansible.sh <rpi-hostname>
```
