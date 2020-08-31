# kubeadm upgrade script

# target version:
version="1.18.6-00"

# kubeadm: unhold, update to target version, rehold
apt-mark unhold kubeadm && \
apt-get update && apt-get install -y kubeadm=$version && \
apt-mark hold kubeadm

kubeadm version

# NOTE: manually run only one of the below scenarios
# for 1st control plane node
kubeadm upgrade plan
kubeadm upgrade apply v1.18.6

# for other control plane and worker plane nodes
kubeadm upgrade node

# kubelet and kubectl: unhold, update to target version, rehold
apt-mark unhold kubelet kubectl && \
apt-get update && apt-get install -y kubelet=$version kubectl=$version && \
apt-mark hold kubelet kubectl
