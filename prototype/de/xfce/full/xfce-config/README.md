
# Xfce


## Config File Path

| Config File Path |
| --- |
| [~/.config/xfce4](./asset/overlay/etc/skel/.config/xfce4) |


## Debian Package

| Debian Package |
| --- |
| [xfce4](https://packages.debian.org/sid/xfce4) |
| [xfce4-goodies](https://packages.debian.org/sid/xfce4-goodies) |


## Note

## qt5ct

run

``` sh
dpkg -S /etc/X11/Xsession.d/99qt5ct
```

show

```
qt5ct: /etc/X11/Xsession.d/99qt5ct
```

run

``` sh
cat /etc/X11/Xsession.d/99qt5ct
```

show

```
# Enable qt5ct by default unless another PLATFORMTHEME option is set
# or KDE is running.
if [ -z "$QT_QPA_PLATFORMTHEME" ] && [ "$XDG_CURRENT_DESKTOP" != "KDE" ]
then
        export QT_QPA_PLATFORMTHEME=qt5ct
fi
```


## Howto


### install

``` sh
$ ./install.sh
```

or

``` sh
$ make install
```


### package-install

``` sh
$ ./package-install.sh
```

or

``` sh
$ make package-install
```


### config-install

``` sh
$ ./config-install.sh
```

or

``` sh
$ make config-install
```
