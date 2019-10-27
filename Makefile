dcos/dcos_generate_config.sh:
	@echo "Downloading DC/OS installer"
	@wget -O dcos/dcos_generate_config.sh -c https://downloads.dcos.io/dcos/stable/dcos_generate_config.sh

vagrant/var-cache-apt-archives:
	@mkdir -v vagrant/var-cache-apt-archives

setup: dcos dcos/dcos_generate_config.sh vagrant/var-cache-apt-archives
	@echo "Setting up bootstrap node and master."
	@cd vagrant; vagrant up dcos-bootstrap dcos-master
