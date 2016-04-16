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
            echo /bin/shocker import "$tar"
        done

        # cleanup
        rm -rf '/tmp/shocker'

    fi
    # shocker |


    # | systemctl

        # systemd - dhcpcd
        systemctl enable dhcpcd

        # systemd - docker
        systemctl enable docker.service

    # systemctl |


    # restart
    echo '+ reboot'
    shutdown -r now




#
#   %(#.0)?-
#
