# A-Life

## Environment setting

Use pyenv.  

```
(for first time) 
$ python3 -m venv .alife

$ source .alife/bin/activate
$ pip3 install -r requirements.txt
```

Use docker.  

```
$ docker-compose exec a-life bash
$ pip3 install -r requirements.txt
```

find /usr | grep "qxcb"
ldd /usr/local/lib/python3.7/site-packages/PyQt5/Qt5/plugins/platforms/libqxcb.so

-> GUI周りでエラーになる
```
WARNING: could not connect to display 
WARNING: Could not load the Qt platform plugin "xcb" in "" even though it was found.
WARNING: This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.

Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vnc, wayland-egl, wayland, wayland-xcomposite-egl, wayland-xcomposite-glx, webgl, xcb.

Aborted
```