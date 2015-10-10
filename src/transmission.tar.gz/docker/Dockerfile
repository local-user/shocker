#|docker
#
#   [ shocker - docker - transmission ]
#


    # os
    FROM ubuntu:trusty

    # maintainer
    MAINTAINER shocker <https://github.com/local-user/shocker>

    # noninteraction errors
    RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

    # multiverse sources
    RUN echo "deb http://archive.ubuntu.com/ubuntu trusty multiverse" >> /etc/apt/sources.list

    # update
    RUN apt-get update
    RUN apt-get upgrade -y

    # install
    RUN apt-get install -qy --force-yes transmission-daemon

    # copy
    COPY "root/etc/transmission-daemon" "/root/.config/transmission-daemon"

    # expose
    EXPOSE 9091
    EXPOSE 51413

    # entry
    ENTRYPOINT ["/usr/bin/transmission-daemon"]


#
#   [ end ]
#
