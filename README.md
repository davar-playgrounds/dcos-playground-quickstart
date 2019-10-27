# DC/OS 2.0 setup

Used while learning to deploy a staging environment of DC/OS.

## Prerequisites

* Vagrant
* Virtualbox
* NFS Server (edit Vagrantfile to use vboxsf)
* Make

## Setup

Running the make recipe will download the lates installer (unless link changes). Follow up on the official site to download archived versions.

```
make setup
```

* Downloads the installer
* Creates the apt archive directory for sharing via NFS. This reduces network bandwidth requirements for subsequent VMs.
* Starts the bootstrap and master VMs
* Remainder of the setup has to be done by hand as a learning exercise.
