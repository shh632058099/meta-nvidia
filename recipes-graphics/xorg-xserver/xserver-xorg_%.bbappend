# glamor forces xserver-xorg to depend on virtual/mesa, which
# we want to avoid because we're using libglvnd

PACKAGECONFIG_remove = "glx dri glamor xwayland"

#add xinerama option to build with xinerama extension
PACKAGECONFIG_append = " xinerama"
