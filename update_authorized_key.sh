PUBKEY=$1
SSHDIR=~/.ssh
AUTHORIZED_KEYS=${SSHDIR}/authorized_keys

echo "=== Update authorized keys in `(cd  ${SSHDIR} &&  pwd)` ==="
#create ssh dir
mkdir -p ${SSHDIR}

#regist public key
sed -i '/^ssh-/d' ${AUTHORIZED_KEYS}
cat ${PUBKEY} >> ${AUTHORIZED_KEYS}

#set permission of ssh files
chmod 700 ${SSHDIR}
chmod 600 ${AUTHORIZED_KEYS}

echo "=== Finish to Update authorized keys ==="
