#shocker
##shell + docker = shocker

###overview
shell + docker = shocker, an easier way to share random app(s).

###usage
shocker [export|import|list|remove|shock] <application> <task>
shocker example usage:
- shocker export <application> /path/to/export.tar.gz
- shocker import /path/to/application.tar.gz
- shocker list
- shocker remove <application>
- shocker shock  <application> <task>

###extra

####config
Config is $HOME/.config/shocker and contains files intended to change in operation.
- shocker/
- shocker/config
- shocker/config/<application>
- shocker/config/<application>/<config>
** note: config(s) will be mounted into docker container(s).
- shocker/log/<application>
- shocker/log/<application>/<log>
** note: log(s) will be mounted into docker container(s).


#####repo
Repository contains files that are not intended to be changed in operation.
- shocker/
- shocker/bin
- shocker/bin/shocker
- shocker/extra
- shocker/extra/os
- shocker/extra/os/<build-script>
- shocker/src
- shocker/src/<application>
- shocker/src/<application>/bin
- shocker/src/<application>/bin/<function>
- shocker/src/<application>/docker
- shocker/src/<application>/docker/<docker-resources>
- shocker/src/<application>/README.md


####operating system(s)
- arch linux
-- I used this.
-- I like this.
-- I recommend this.
- ubuntu 14.04 lts ** warning **
-- The kernel is not compatible with mono.
-- Docker shares host kernel.
-- The docker version in stock repository is not compatible with latest kernel.
- other
-- Should work.
