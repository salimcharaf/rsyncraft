#!/bin/bash
CONFIG=$HOME/.config/rsyncraft/config.conf
mkdir -p $HOME/.config/rsyncraft
cat > "$CONFIG" << 'EOF'
BACKUP_SOURCE=/home
BACKUP_DEST=/var/backups/home
EOF
echo "done. config file has been deposited at $HOME/.config/rsyncraft/config.conf. deleting this file and running rbackup can lead to severe breakeages if the scripts safety measures fail."
