<h3 align="center"><b>Xen Orchestra - Forked Version for Personal Use</b></h3>
<p align="center"><b>Manage, Backup and Cloudify your XCP-ng/XenServer infrastructure</b></p>

![](https://repository-images.githubusercontent.com/8077957/6dcf71fd-bad9-4bfa-933f-b466c52d513d)

XO (Xen Orchestra) is a complete solution to visualize, manage, backup and delegate your XCP-ng (or XenServer) infrastructure. **No agent** is required for it to work.

It provides a web UI, a CLI and a REST API, while also getting a Terraform provider among other connectors/plugins.

## Table of Contents
- [Quick start](#quick-start)
- [Documentation](#documentation)
- [Features](#features)
- [Screenshots](#screenshots)
- [Forked Version](#forked-version)
- [Installation](#installation)
  - [Manual Installation](#manual-installation)
  - [Installation using XenOrchestraInstallerUpdater](#installation-using-xenorchestrainstallerupdater)
- [License](#license)

## ⚡️ Quick start

Log in to your account and use the deploy form available from the [Vates website](https://vates.tech/deploy/).

## 📚 Documentation

The official documentation is available at https://xen-orchestra.com/docs

## 🚀 Features

- **Centralized interface**: one Xen Orchestra to rule your entire infrastructure, even across datacenters at various locations
- **Administration and management:** VM creation, management, migration, metrics and statistics, XO proxies for remote sites… XO will become your best friend!
- **Backup & Disaster Recovery:** The backup is an essential component for the security of your infrastructure. With Xen Orchestra, select the backup mode that suits you best and protect your VMs and your business. Rolling snapshot, Full backup & replication, incremental backup & replication, mirror backup, S3 support among many other possibilities!
- **Cloud Enabler:** Xen Orchestra is your cloud initiator for XCP-ng (and XenServer). Group management, resource delegation and easy group administration. The Cloud is yours!

## 📸 Screenshots

![](https://vates.tech/assets/img/illustrations/xen-orchestra-screen-1.png.avif)

![](https://vates.tech/assets/img/illustrations/xen-orchestra-screen-3.png.avif)

![](https://vates.tech/assets/img/illustrations/xen-orchestra-screen-4.png.avif)

## Forked Version

This repository is a fork of Xen Orchestra for personal use without the community edition banners. It includes all the features of the original Xen Orchestra but removes the banners that indicate the community edition.

## Installation

### Manual Installation

1. Install the required packages:
   - On Debian/Ubuntu:
     ```sh
     apt-get install build-essential redis-server libpng-dev git python3-minimal libvhdi-utils lvm2 cifs-utils nfs-common ntfs-3g
     ```
   - On Fedora/CentOS:
     ```sh
     dnf install redis libpng-devel git lvm2 cifs-utils make automake gcc gcc-c++ nfs-utils ntfs-3g
     ```
2. Install Node.js (latest LTS) and Yarn.
3. Clone the Xen Orchestra repository:
   ```sh
   git clone -b master https://github.com/Neu-Maximilian/xen-orchestra-forked
   ```
4. Install dependencies and build the project:
   ```sh
   cd xen-orchestra
   yarn
   yarn build
   ```
5. Create a configuration file for `xo-server`:
   ```sh
   cd packages/xo-server
   mkdir -p ~/.config/xo-server
   cp sample.config.toml ~/.config/xo-server/config.toml
   ```
6. Start `xo-server`:
   ```sh
   yarn start
   ```
7. Access the web UI by entering the IP address of the server in your web browser.

### Installation using XenOrchestraInstallerUpdater

For an easier installation, follow the steps from the [XenOrchestraInstallerUpdater repository](https://github.com/ronivay/XenOrchestraInstallerUpdater.git). In the `sample.xo-install.cfg` file, change the repository URL to `https://github.com/Neu-Maximilian/xen-orchestra-forked`.
## License

AGPL3 © [Vates](https://vates.tech)
