SSHD_CONF=/etc/ssh/sshd_config
echo "=== Update sshd_config to disable password authorization ==="
sed -i "s/PasswordAuthentication yes/PasswordAuthentication no/g" ${SSHD_CONF} 2> /dev/null
echo "===  Finish to disable password authorization ==="
