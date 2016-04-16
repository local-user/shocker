#!/bin/bash
#
#   script - provision
#
#




    # | pacman

        # pacman - upgrade
        pacman -Syu --noconfirm

        # pacman - install - required
        pacman -Syu --noconfirm docker git tree nfs-utils vim

    # pacman |


    # | shocker
    if [ -e '/tmp/bin/shocker' ]; then

        # remove existing
        [ -e '/bin/shocker' ] && rm -f '/bin/shocker'

        # copy shocker
        cp '/tmp/bin/shocker' '/bin/shocker'

        # owernship
        chown root:root '/bin/shocker'
        chmod 755       '/bin/shocker'

        # load app(s)
        for tar in `ls /tmp/app/*.tar.gz`; do 
            /bin/shocker import "$tar"
        done

        # cleanup
        rm -rf '/tmp/shocker'

    fi
    # shocker |


    # | systemctl

        # systemd - enable - rpcbind
        systemctl enable rpcbind.service

        # systemd - enable - docker
        systemctl enable docker.service

        # systemd - disable - NetworkManager
        systemctl disable NetworkManager

        # systemd - enable - dhcpcd
        systemctl enable dhcpcd

    # systemctl |




#
#   %(#.0)?-
#
