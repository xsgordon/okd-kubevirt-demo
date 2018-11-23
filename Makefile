install:
	ansible-playbook provision.yaml --tags packet_create  --ask-vault-pass

clean:
	ansible-playbook provision.yaml --tags packet_remove  --ask-vault-pass
