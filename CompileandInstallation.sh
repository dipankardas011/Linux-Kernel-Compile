# first in the linux directory
# NOTE try to do it under sudo permissions 

# copy the default destribution configurations
cp -v /boot/config-$(uname -r) .config

# Compilation
# menuconfig there save or edit some config then save
make menuconfig
make -j

# if there is error then 
# ------------------------------
vi .config
CONFIG_SYSTEM_TRUSTED_KEYS=""
CONFIG_SYSTEM_REVOCATION_KEYS=""
CONFIG_DEBUG_INFO_BTF=n
# ------------------------------


# installation
make modules_install
make install

# changes to the grub menu
sudo update-grub
