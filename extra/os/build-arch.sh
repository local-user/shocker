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



    #
    #   build
    #

        #
        #   Start?
        #
        read -p "Start Arch Build [y/n]: " choice
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
        #   Set Hostname
        #
        read -p "Hostname: " hostname
        echo $hostname > /etc/hostname
        echo ""


        #
        #   Base Package(s)
        #
        echo "Installing dependencies:"
        pacman -Syu --noconfirm docker git vim tree
        if [ $? -gt 0 ]; then
            echo "Error: Unable to install dependencies."
            exit 2
        fi
        echo ""


        #
        #   Enable Docker
        #
        systemctl enable docker.service


        #
        #   Restart
        #
        echo ''
        echo 'Finished. Restart required.'


    #
    #   build
    #   - end
    #




#
#   >.<
#
