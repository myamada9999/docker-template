FROM debian:buster

# Add network setting files if there are
#ADD ./apt.conf /etc/apt/
#ADD ./resolv.conf /etc/

# Install some packages
RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y debootstrap bash vim jq sudo aptitude git

# Install some packages for riscv-tools
#RUN apt-get install -y autoconf automake autotools-dev curl libmpc-dev libmpfr-dev libgmp-dev libusb-1.0.0-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev device-tree-compiler pkg-config libexpat-dev git

# Install some packages to build qemu
#RUN apt-get install -y python git libglib2.0-dev libfdt-dev libpixman-1-dev zlib1g-dev

# Install some packages to run cfg of TOPPERS/ASP
#RUN dpkg --add-architecture i386
#RUN aptitude update
#RUN aptitude install -y libc6-dev-i386

# Create user and pasword
ARG USER=""
ARG PASS=""
ARG USER_ID=""
RUN useradd -m -u $USER_ID -s /bin/bash -p $PASS $USER
RUN usermod -aG sudo $USER

# Create persistent workspace
RUN mkdir /home/$USER/workspace
RUN chown $USER:$USER /home/$USER/workspace
VOLUME /home/$USER/workspace

# Copy user setting files here
ADD ./.gitconfig /home/$USER/.gitconfig
ADD ./.bash_aliases /home/$USER/.bash_aliases
RUN chown $USER:$USER /home/$USER/.gitconfig
RUN chown $USER:$USER /home/$USER/.bash_aliases

# From here, you can do whatever you want to.
USER $USER
