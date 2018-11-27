check:
	ansible-playbook provision.yaml --tags packet_create --check --ask-vault-pass
	ansible-playbook provision.yaml --tags packet_remove --check --ask-vault-pass

install:
	ansible-playbook provision.yaml --tags packet_create --ask-vault-pass

clean:
	ansible-playbook provision.yaml --tags packet_remove --ask-vault-pass
