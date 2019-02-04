okd-kubevirt-demo
=================

Playbooks for instantiating a demo of KubeVirt, which enables a Kubernetes
cluster to create, place, and manage virtual machine workloads alongside
application containers.

The demo provisions a host using the selected infrastructure and initiates an
all-in-one Kubernetes cluster using the OKD distribution of Kubernetes.
Subsequently KubeVirt is installed and enabled on the cluster.

Pre-requisites
--------------

* `ansible`
* `packet-python`

Configuration
-------------

# Copy `roles/packet/vars/packet_config_secret.EXAMPLE.yaml` to
  `roles/packet/vars/packet_config_secret.yaml and open it in your preferred
  editor.
# Set `packet_ssh_key` to the SSH public key you use with your Packet.net
  account.
# Set `packet_auth_token` to your packet authentication token, you can obtain
  this from the dashboard.
# Set `packet_project_id` to your project idenitfier, you can obtain this from
  the dashboard.
# Save the file.
# Encrypt the file using vault `ansible-vault encrypt
roles/packet/vars/packet_config_secret.yaml`.

Installation
------------

It's possible to execute the playbooks directly but the easiest way is to use
the provided make actions:

* `make check` - Check the validity of the playbooks via a dry-run.
* `make install` - Provision infrastructure node and deploy the demo.
* `make clean` - Clean up the infrastructure node, destroying the demo.

