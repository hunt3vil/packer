#!/bin/sh -eux

case "$PACKER_BUILDER_TYPE" in
virtualbox-iso|hyperv-iso|azure-arm)
    curl -L https://omnitruck.chef.io/install.sh | bash -s -- -P chef -v 16.7.61
    echo "CHEF_LICENSE=accept-silent" >> /etc/environment

    apt-get -y install p7zip-full;
esac

reboot
