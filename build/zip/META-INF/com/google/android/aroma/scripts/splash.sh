#!/sbin/sh

# Custom Splash Screen
cd /tmp/splash
mkdir /tmp/splashtmp
cd /tmp/splashtmp
/tmp/aroma/tar -xf /dev/block/platform/11120000.ufs/by-name/UP_PARAM
cp /tmp/splash/logo.jpg .
chown root:root *
chmod 444 logo.jpg
touch *
/tmp/aroma/tar -pcvf ../new.tar *
cd ..
cat new.tar > /dev/block/platform/11120000.ufs/by-name/UP_PARAM
cd /
rm -rf /tmp/splash
sync

exit 10

