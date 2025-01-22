
# Mate


## Ubuntu Package

| Ubuntu Package |
| --- |
| [mate-desktop](https://packages.ubuntu.com/jammy/mate-desktop) |




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


## 99mint

run

``` sh
dpkg -S /etc/X11/Xsession.d/99mint
```

show

```
mint-artwork: /etc/X11/Xsession.d/99mint
```

run

``` sh
cat /etc/X11/Xsession.d/99mint
```

show

```
# This file is sourced by Xsession(5), not executed.

# Create the user applications directory
mkdir -p ~/.local/share/applications

if [ "x$DESKTOP_SESSION" = "xmate" ] || [ "x$XDG_SESSION_DESKTOP" = "xmate" ]; then
    # Workaround clutter issue (LP: #1462445)
    export CLUTTER_BACKEND=x11
fi

if [ "x$DESKTOP_SESSION" = "xxfce" ] || [ "x$XDG_SESSION_DESKTOP" = "xxfce" ]; then
    # Workaround clutter issue (LP: #1462445)
    export CLUTTER_BACKEND=x11

    # Set Ctrl-Alt-Backspace shortcuts to kill Xorg
    setxkbmap -option terminate:ctrl_alt_bksp
fi
```


## 99mintdesktop

run

``` sh
dpkg -S /etc/X11/Xsession.d/99mintdesktop
```

show

```
mintdesktop: /etc/X11/Xsession.d/99mintdesktop
```

run

``` sh
cat /etc/X11/Xsession.d/99mintdesktop
```

show

```
# This file is sourced by Xsession(5), not executed.

# Default profile for Compiz
export COMPIZ_CONFIG_PROFILE="mint"
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
