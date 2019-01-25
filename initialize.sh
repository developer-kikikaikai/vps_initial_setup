echo "=== Update root user ==="
passwd root
./update_authorized_key.sh vps_ssh.pem.pub
./enable_ssh_pubkey_authorization.sh
./disable_ssh_password_authrized.sh
./create_user.sh
#restart sshd
echo "=== Restart sshd ==="
systemctl restart sshd
systemctl status sshd
echo "=== Update firewall ==="
(cd firewall && ./setup_firewall.sh)
echo "=== Finish all! ==="
