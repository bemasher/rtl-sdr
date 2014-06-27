FROM ubuntu:14.04

MAINTAINER bemasher@gmail.com

RUN apt-get update

RUN apt-get install --no-install-recommends -y \
	git-core \
	build-essential \
	cmake \
	pkg-config \
	libusb-1.0-0-dev

WORKDIR /usr/local/
RUN git clone git://git.osmocom.org/rtl-sdr.git
RUN mkdir /usr/local/rtl-sdr/build

WORKDIR /usr/local/rtl-sdr/build
RUN cmake ../ -DINSTALL_UDEV_RULES=ON -DDETACH_KERNEL_DRIVER=ON
RUN make
RUN make install
RUN ldconfig
