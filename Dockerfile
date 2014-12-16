FROM msaraiva/busybox-base

MAINTAINER Marlus Saraiva <marlus.saraiva@gmail.com>

RUN opkg-cl install http://downloads.openwrt.org/snapshots/trunk/x86_64/packages/base/libgcc_4.8-linaro-1_x86_64.ipk
RUN opkg-cl install http://downloads.openwrt.org/snapshots/trunk/x86_64/packages/base/libc_0.9.33.2-1_x86_64.ipk
RUN opkg-cl install http://downloads.openwrt.org/snapshots/trunk/x86_64/packages/base/zlib_1.2.8-1_x86_64.ipk
RUN opkg-cl install http://downloads.openwrt.org/snapshots/trunk/x86_64/packages/base/libopenssl_1.0.1j-3_x86_64.ipk
RUN opkg-cl install http://downloads.openwrt.org/snapshots/trunk/x86_64/packages/base/terminfo_5.9-1_x86_64.ipk
RUN opkg-cl install http://downloads.openwrt.org/snapshots/trunk/x86_64/packages/base/libncurses_5.9-1_x86_64.ipk
RUN opkg-cl install http://downloads.openwrt.org/snapshots/trunk/x86_64/packages/base/libpthread_0.9.33.2-1_x86_64.ipk
RUN opkg-cl install http://downloads.openwrt.org/snapshots/trunk/x86_64/packages/base/librt_0.9.33.2-1_x86_64.ipk

ENV ERL_FLAGS '+fnu'

CMD ["/bin/sh"]
