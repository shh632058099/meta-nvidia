FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append = " file://nvidia.conf \
				   file://xorg.conf.nvidia"

do_install_append() {
	install -m 0644 -D ${WORKDIR}/nvidia.conf ${D}${sysconfdir}/X11/xorg.conf.d/nvidia.conf
	install -m 0644 -D ${WORKDIR}/xorg.conf.nvidia ${D}${sysconfdir}/X11/xorg.conf
}
