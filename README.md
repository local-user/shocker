#shocker
#####SHELL + Docker = Shocker


###Overview
an easier way to share random app(s) using docker

###Application(s)
- `couchpotato.ubuntu-trusty.git.tar.gz`
- `headphones.ubuntu-trusty.git.tar.gz`
- `miv.ubuntu-trusty.git.no-persist.tar.gz`
- `nzbget.ubuntu-trusty.ppa.tar.gz`
- `sabnzbdplus.ubuntu-trusty.ppa.tar.gz`
- `sonarr.ubuntu-trusty.ppa.tar.gz`
- `transmission.ubuntu-vivid.ppa.tar.gz`

Application(s) provided by third party(s) and not created by local-user.


###Usage
shocker [docker|export|import|list|remove|reset|shock] option

###Example usage
- `shocker docker {docker-argument(s)}`
- `shocker export {application} {path/export.tar.gz}`
- `shocker import {path/application.tar.gz}`
- `shocker list`
- `shocker remove {application}`
- `shocker reset  {application}`
- `shocker shock  {application} {task}`


###Folder structure

######Config
- `~/.config/shocker`
- `~/.config/shocker/app`
- `~/.config/shocker/app/{application.tar.gz}`
- `~/.config/shocker/app/{application.tar.gz}/{extracted-resources-*}`
- `~/.config/shocker/run`
- `~/.config/shocker/run/{application.tar.gz}`
- `~/.config/shocker/run/{application.tar.gz}/{runtime-resources-*}`

######Repository
- `app`
- `app/{application.tar.gz}`
- `app/{application.tar.gz}/bin`
- `app/{application.tar.gz}/bin/{shock-scripts-*}`
- `app/{application.tar.gz}/docker`
- `app/{application.tar.gz}/docker/{docker-resources-*}`
- `app/{application.tar.gz}/skel`
- `app/{application.tar.gz}/skel/{runtime-skeleton-*}`
- `bin`
- `bin/shocker`
- `CONFIG.sh`
- `README.md`

######Shared
- `/media`

###Warning
- Built on request.
- Lacks extensive testing.
- Proof of concept only.
