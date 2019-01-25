echo "=== Create user ==="
NEWUSER=developer
useradd ${NEWUSER}
passwd ${NEWUSER}

#update sshd setting
SSHD_CONF=/etc/ssh/sshd_config
sed -i 's/#PermitRootLogin yes/PermitRootLogin no/g' ${SSHD_CONF} 2> /dev/null

sudo su ${NEWUSER} << EOF
./update_authorized_key.sh vps_ssh.pem.pub
EOF
echo "=== Finish to create user ==="
