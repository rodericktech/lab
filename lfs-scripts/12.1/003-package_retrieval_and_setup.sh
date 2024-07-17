#!/bin/bash
# 003-package_retrieval.sh
#
# After this script runs, it is necessary to switch users to lfs - that is,
# su - lfs

LFS=/mnt/lfs
PACKAGE_LIST_URL="https://linuxfromscratch.org/lfs/view/stable-systemd/wget-list-systemd"
MD5SUM_LIST_URL="https://linuxfromscratch.org/lfs/view/stable-systemd/md5sums"

# Create source directory and set the sticky bit
mkdir -v $LFS/sources
chmod -v a+wt $LFS/sources

# Obtain the list file and the checksums
wget PACKAGE_LIST_URL

# Download the packages
wget --input-file=wget-list-systemd --continue --directory-prefix=$LFS/sources

pushd $LFS/sources
wget MD5SUM_LIST_URL
md5sum -c md5sums

# Download the patches
wget https://www.linuxfromscratch.org/patches/lfs/12.1/bash-5.2.21-upstream_fixes-1.patch
wget https://www.linuxfromscratch.org/patches/lfs/12.1/bzip2-1.0.8-install_docs-1.patch
wget https://www.linuxfromscratch.org/patches/lfs/12.1/coreutils-9.4-i18n-1.patch
wget https://www.linuxfromscratch.org/patches/lfs/12.1/glibc-2.39-fhs-1.patch
wget https://www.linuxfromscratch.org/patches/lfs/12.1/kbd-2.6.4-backspace-1.patch
wget https://www.linuxfromscratch.org/patches/lfs/12.1/readline-8.2-upstream_fixes-3.patch
wget https://www.linuxfromscratch.org/patches/lfs/12.1/systemd-255-upstream_fixes-1.patch
popd

chown root:root $LFS/sources/*

# Directory structure setup
mkdir -pv $LFS/{etc,var} $LFS/usr/{bin,lib,sbin}

for i in bin lib sbin; do
  ln -sv usr/$i $LFS/$i
done

case $(uname -m) in
x86_64) mkdir -pv $LFS/lib64 ;;
esac

mkdir -pv $LFS/tools

# Add the 'lfs' user
groupadd lfs
useradd -s /bin/bash -g lfs -m -k /dev/null lfs

passwd lfs

chown -v lfs $LFS/{usr{,/*},lib,var,etc,bin,sbin,tools}
case $(uname -m) in
x86_64) chown -v lfs $LFS/lib64 ;;
esac
