#!/bin/bash
#
#
#       shocker -- enviroment build script -- arch linux
#
#       script assumes completion of either installation guide(s).
#       --> https://wiki.archlinux.org/index.php/Installation_guide
#       --> https://wiki.archlinux.org/index.php/Beginners'_guide
#
#




    #
    #   variable(s)
    #
    hostname='shocker'
    os='arch-linux'



    #
    #   start?
    #
    read -p "Start '$os' build [y/n]: " choice
    case "$choice" in 
        y|Y )
            echo "Build starting."
            ;;
        n|N )
            echo "Build exiting."
            exit 2
            ;;
        * )
            echo "Invalid selection."
            echo "Build exiting."
            exit 2
            ;;
    esac
    echo ""



    #
    #   build
    #

        #
        #   set hostname
        #
        read -p "Hostname: " hostname
        echo $hostname > /etc/hostname
        echo ""


        #
        #   base package(s)
        #
        echo "Installing dependencies:"
        pacman -Syu --noconfirm docker git vim tree
        if [ $? -gt 0 ]; then
            echo "Error: Unable to install dependencies."
            exit 2
        fi
        echo ""


        #
        #   enable docker
        #
        systemctl enable docker.service

    #
    #   build
    #   - end
    #



    #
    #   restart
    #
    echo ''
    echo 'Finished. Restart required.'




#
#   >.<
#
