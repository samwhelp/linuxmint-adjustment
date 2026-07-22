

## On Ubuntu 26.04

run

``` sh
dpkg -L software-properties-common 
```

show

```
/.
/etc
/etc/dbus-1
/etc/dbus-1/system.d
/etc/dbus-1/system.d/com.ubuntu.SoftwareProperties.conf
/usr
/usr/bin
/usr/bin/add-apt-repository
/usr/lib
/usr/lib/python3
/usr/lib/python3/dist-packages
/usr/lib/python3/dist-packages/softwareproperties
/usr/lib/python3/dist-packages/softwareproperties/dbus
/usr/lib/python3/dist-packages/softwareproperties/dbus/SoftwarePropertiesDBus.py
/usr/lib/python3/dist-packages/softwareproperties/dbus/__init__.py
/usr/lib/software-properties
/usr/lib/software-properties/software-properties-dbus
/usr/share
/usr/share/bash-completion
/usr/share/bash-completion/completions
/usr/share/bash-completion/completions/add-apt-repository
/usr/share/dbus-1
/usr/share/dbus-1/system-services
/usr/share/dbus-1/system-services/com.ubuntu.SoftwareProperties.service
/usr/share/doc
/usr/share/doc/software-properties-common
/usr/share/doc/software-properties-common/copyright
/usr/share/man
/usr/share/man/man1
/usr/share/man/man1/add-apt-repository.1.gz
/usr/share/polkit-1
/usr/share/polkit-1/actions
/usr/share/polkit-1/actions/com.ubuntu.softwareproperties.policy
/usr/bin/apt-add-repository
/usr/share/bash-completion/completions/apt-add-repository
/usr/share/doc/software-properties-common/changelog.gz
/usr/share/man/man1/apt-add-repository.1.gz
```

> `/usr/bin/add-apt-repository` conflict `mintsource`

run to remove `software-properties-common`

``` sh
sudo apt-get remove software-properties-common 
```

show

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Solving dependencies... Done
The following packages were automatically installed and are no longer required:
  python3-software-properties unattended-upgrades
Use 'sudo apt autoremove' to remove them.
The following packages will be REMOVED:
  software-properties-common ubuntu-desktop-minimal
0 upgraded, 0 newly installed, 2 to remove and 225 not upgraded.
After this operation, 211 kB disk space will be freed.
Do you want to continue? [Y/n]
```
