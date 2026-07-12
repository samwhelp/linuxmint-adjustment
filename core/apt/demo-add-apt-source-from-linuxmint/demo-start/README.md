

# demo-add-apt-source-from-linuxmint




## Subject

* [Explore](#explore)
* [Link](#link)




## Explore

run

``` sh
apt-cache search mint-meta
```

show

```
mint-meta-cinnamon - Set of packages installed by default in the Cinnamon edition of Linux Mint
mint-meta-codecs - All the packages required for multimedia support in Linux Mint.
mint-meta-core - Core Linux Mint packages
mint-meta-mate - Set of packages installed by default in the MATE edition of Linux Mint
mint-meta-xfce - Set of packages installed by default in the Xfce edition of Linux Mint
```




run

``` sh
apt-cache policy cinnamon
```

show

```
cinnamon:
  Installed: (none)
  Candidate: 6.7.4+alfa
  Version table:
     6.7.4+alfa 500
        500 http://packages.linuxmint.com alfa/backport amd64 Packages
     6.4.13-2 500
        500 http://archive.ubuntu.com/ubuntu resolute/universe amd64 Packages
```





run

``` sh
apt-cache policy cinnamon-desktop-environment
```

show

```
cinnamon-desktop-environment:
  Installed: (none)
  Candidate: 2026.06.16+mint23
  Version table:
     2026.06.16+mint23 500
        500 http://packages.linuxmint.com alfa/main amd64 Packages
     6.4.2 500
        500 http://archive.ubuntu.com/ubuntu resolute/universe amd64 Packages
```




## Link

* [https://github.com/clefebvre/docker-images](https://github.com/clefebvre/docker-images)
* [https://github.com/clefebvre/docker-images/blob/master/mint23-amd64.Dockerfile](https://github.com/clefebvre/docker-images/blob/master/mint23-amd64.Dockerfile)
* [https://github.com/clefebvre/docker-images/tree/master/mint23/etc/apt](https://github.com/clefebvre/docker-images/tree/master/mint23/etc/apt)
