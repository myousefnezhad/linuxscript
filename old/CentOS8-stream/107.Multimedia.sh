sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base}  gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel

sudo dnf install lame\* --exclude=lame-devel

sudo dnf group upgrade --with-optional Multimedia
