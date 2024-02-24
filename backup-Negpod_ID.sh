#!/bin/bash
# Define variables

remote_host="2f05c1f8800b.3be8ebfc.alu-cod.online"
remote_user="2f05c1f8800b"
remote_password="d4a1d225d0abda9549d8"
backup_dir="/summative/1023-2024j/negpod_2-q1"
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
