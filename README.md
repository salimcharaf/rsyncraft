# rsyncraft

Simple backup utility over SSH.

## Features

* Sends backups over SSH to a server
* Makes lists of installed packages for simple reinstallation
* Works on most linux distros
* Variable destination and source directories
* More features coming soon!

## Requirements

* Bash >= 5.0
* rsync >= 3.2
* OpenSSH >= 8.0

Optionally, for package list generation:

* pacman >= 6.0
* dpkg >= 1.20
* dnf >= 4.0

Usually, any half-modern Linux installation should have these requirements fulfilled.

## Installation

Clone the repository and enter it with:

`git clone https://github.com/salimcharaf/rsyncraft
cd rsyncraft`

Then run the installer with:


`./install.sh`

This will create a configuration file at `~/.config/rsyncraft/config.conf`.

You can edit the directory to be backed up and the destination directory on the server in this file.

You can either move the script to a directory included in your `$PATH` like `/usr/local/bin` and rename it to just `rsyncraft` (the recommended option), which allows you to run rsyncraft like a normal command, or continue running it with:

`./rsyncraft.sh`

## Usage

The examples below assume that you have moved the script into a directory in your `$PATH`. Otherwise, prepend `./` to the commands while in the directory containing the script.

### Basic backup


`rsyncraft -s root@servername`


This makes a backup of the directory specified in `config.conf` to the destination directory specified in `config.conf` on `servername`.

### Backup with package lists

`rsyncraft -p -s root@servername`

This does the same as the basic backup, but also generates a package list if a supported package manager is installed.

Note that package list generation can break if multiple supported package managers are installed. Only use the `-p` option if your system has one supported package manager installed.

### Configuration file generation

Sometimes you will need to regenerate the configuration file, which you can do by running the following command:

`rsyncraft -c`

### Help

`rsyncraft -h`

This prints a small manual describing the supported flags.

