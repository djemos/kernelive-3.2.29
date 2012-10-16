#!/bin/sh

CWD=$(pwd)
dest=$CWD/aufs2-standalone
mkdir /tmp/aufs$$
cd /tmp/aufs$$
git clone git://aufs.git.sourceforge.net/gitroot/aufs/aufs2-standalone.git aufs2-standalone.git
cd aufs2-standalone.git
# uncomment line below to get aufs for stable kernel
git checkout origin/aufs2.2-35
# uncomment line below to get aufs for latest -rc kernel
#git checkout origin/aufs3.x-rcN
mkdir ../aufs2-standalone
cp -r * ../aufs2-standalone
cd ..
tar cvfz $dest.tar.gz aufs2-standalone
rm -rf /tmp/aufs$$

echo && echo "latest aufs3-standalone.tar.gz created as $dest.tar.gz"
