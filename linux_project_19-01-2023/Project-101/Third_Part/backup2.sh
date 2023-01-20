#!/bin/bash

# Define the backup directory
BACKUP_DIR="/home/ec2-user/backup"

# Define the directories to be backed up
DIRECTORIES=("/home/ec2-user/data" "/etc" "/boot" "usr")

# Get the hostname of the instance
HOSTNAME=$(hostname)

# Get the current date and time
DATE=$(date +%F-%H-%M)

# Create the backup directory if it doesn't exist
if [ ! -d "$BACKUP_DIR" ]; then
    mkdir "$BACKUP_DIR"
fi

# Iterate through the directories to be backed up
for DIR in "${DIRECTORIES[@]}"; do
    # Create the filename for the backup
    FILENAME="$BACKUP_DIR/$HOSTNAME-$DATE-$(basename $DIR).tgz"

    # Create the backup using tar
    tar -zcvf "$FILENAME" "$DIR"

    # Print the backup file name
    echo "Backup file: $FILENAME"
done

# Run "sed -i -e 's/\r$//' scriptname.sh" command before running script.