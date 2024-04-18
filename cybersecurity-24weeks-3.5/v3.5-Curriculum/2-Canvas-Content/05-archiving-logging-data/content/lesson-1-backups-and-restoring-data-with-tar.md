## Lesson 1: Backups and Restoring Data with tar 
 
### Overview

In this module, we will expand our exploration of Linux system administration by learning how to use Linux tools to:
- **Archive** data so that it remains available in case of a natural disaster or cyberattack. 
- **Schedule** data to ensure that backups are made hourly, daily, or monthly.
- **Monitor** log files to prevent and detect suspicious activity and keep systems running efficiently.

We will begin by covering the Linux `tar` utility. Today's class focuses on how to use backup and recovery to protect data integrity and availability. You will use `tar` to list and extract data and create backups. This will allow you to guarantee data availability and integrity by archiving users' data and system configuration files.

 
### What You’ll Learn
 
By the end of today’s class, you’ll be able to:
 
- Identify and describe use cases for the three kinds of backups.

- Create (tar) an archive from existing files and directories.

- List and search the contents of an existing archive.

- Extract (untar) the contents of an archive.

- Describe and demonstrate two exploits for the `tar` command.

- Identify and describe how backups are used for compliance.


### Today’s Activities

* **Creating and Restoring Backups with `tar`:** In this activity, you'll create a full backup of a directory and its files, including file permissions, owner, size of file, and date and time information. You'll verify the archive after saving the output to a text file, and then locate the correct archive to restore the needed directory and files.

* **Restoring Data Incremental Backups:** In this activity, you'll create a incremental backup with a full backup and multiple daily backups. You'll then change or delete files and restore the archive.

* **Exploiting the `tar` Command with the Checkpoint and Wildcard Options:** In this activity, you'll run a `tar` exploitation and research how to harden systems against this exploit.
