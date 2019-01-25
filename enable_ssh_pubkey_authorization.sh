SSHD_CONF=/etc/ssh/sshd_config
echo "=== Update sshd_config to enable public key authorization ==="
sed -i '/ecdsa/d' ${SSHD_CONF}
sed -i "/HostKeys for protocol version 2/a HostKey\ \/etc\/ssh\/ssh_host_ecdsa_key"  ${SSHD_CONF}
sed -i "s/PubkeyAuthentication no/PubkeyAuthentication yes/g" ${SSHD_CONF} 2> /dev/null
echo "===  Finish to enable public key authorization ==="
