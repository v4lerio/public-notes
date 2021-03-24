# T-POT

### Prerequisites
- IaaS/Cloud account or internet-facing VPS available
- access to firewall rules/configuration (open all ports)
- ssh-key pair 

### Installation
1. create a new `Debian (Stable)` based VM/Instance 
	> min 8GB memory, 128GB disk space

2. ssh into your new instance
3. `sudo su`
4. update your Debian installation and install git

	`apt-get -y update && apt-get -y install git`

5. Install T-POT
	```
	git clone https://github.com/telekom-security/tpotce
	cd tpotce/iso/installer/
	./install.sh --type=user
	```

6. Follow the installation steps
	> it takes 20-30 minutes

7. Once completed, wait 1-3 minutes for reboot
	> You should have your tpot up and running...

### Reference
- https://github.com/telekom-security/tpotce
