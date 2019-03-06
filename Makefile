check:
	ansible-playbook provision.yaml --tags packet_create --check
	ansible-playbook provision.yaml --tags packet_remove --check

install:
	ansible-playbook provision.yaml --tags packet_create
	ansible-playbook install.yaml -i hosts

clean:
	ansible-playbook provision.yaml --tags packet_remove
