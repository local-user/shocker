#!/bin/bash
#
#   [ shocker - docker - transmission - config ]
#


    # application
    application_name='transmission'

    # host
    host_config="$HOME/.config/shocker/run/$application_name/config"
    host_download='/media/download/transmission'
    host_log="$HOME/.config/shocker/run/$application_name/log"

    # docker
    docker_name='shocker_transmission'
    docker_tag='shocker/transmission'

    # transmission
    docker_config='/root/.config/transmission-daemon'
    docker_download='/media/download/transmission'
    docker_log='/var/log/transmission'


