./update_authorized_key.sh vps_ssh.pem.pub
./enable_ssh_pubkey_authorization.sh
./disable_ssh_password_authrized.sh
#restart sshd
echo "=== Restart sshd ==="
systemctl restart sshd
systemctl status sshd
