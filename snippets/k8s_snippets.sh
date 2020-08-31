journalctl -u kubelet -e | grep orphaned | tail -n 1 | cut -f16 -d' ' | xargs -Ix rm -rv /var/lib/kubelet/pods/x

lxc-device add --name 104 -- /dev/rbd0

pct set xxx --mp0 /lib/modules/$(uname -r),mp=/lib/modules/$(uname -r),ro=1

pct set xxx --mp1 /mnt/pve/cephfs/kube,mp=/mnt/pvecephfskube

pct set xxx --mp2 /run/udev/,mp=/run/udev,ro=1

# k get pods | grep Evicted | cut -f1 -d' ' | xargs -Ix kubectl delete pod x