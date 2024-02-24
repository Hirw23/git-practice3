#!/bin/bash

# Define variables
remote_host="64293e56bc62.3a2627c1.alu-cod.online"
remote_user=" 64293e56bc62"
remote_password="328d3b338a4ced526c9a"
backup_dir="/git-practice3/negpod_2-q1"
remote_location="/summative/1023-2024j"

# Function to perform the backup
perform_backup() {
    # Create tarball of the directory
    tar czf backup.tar.gz "$backup_dir"

    # Transfer the tarball to the remote server
    scp backup.tar.gz "$remote_user"@"$remote_host":"$remote_location"

    # Clean up the local tarball
    rm backup.tar.gz
}

# Main execution
echo "Starting backup..."
perform_backup
echo "Backup completed successfully."
