#shocker
#####SHELL + Docker = Shocker


###Overview
an easier way to share random app(s) using docker

###Usage
shocker [export|import|list|remove|reset|shock] option

###Example usage
- `shocker export {application} {path/export.tar.gz}`
- `shocker import {path/application.tar.gz}`
- `shocker list`
- `shocker remove {application}`
- `shocker reset {application}`
- `shocker shock  {application} {task}`


###Folder structure

#####Config
- `shocker`
- `shocker/app`
- `shocker/app/{application.tar.gz}`
- `shocker/app/{application.tar.gz}/{extracted-resources-*}`
- `shocker/run`
- `shocker/run/{application.tar.gz}`
- `shocker/run/{application.tar.gz}/{runtime-resources-*}`

#####Repository
- `bin`
- `bin/shocker`
- `extra`
- `extra/os`
- `extra/os/{build-script}`
- `src`
- `src/{application.tar.gz}/about`
- `src/{application.tar.gz}/about/README.md`
- `src/{application.tar.gz}`
- `src/{application.tar.gz}/bin`
- `src/{application.tar.gz}/bin/{task}`
- `src/{application.tar.gz}/docker`
- `src/{application.tar.gz}/docker/{docker-resources-*}`
- `src/{application.tar.gz}/skel`
- `src/{application.tar.gz}/skel/{runtime-resources-*}`

#####Shared
- `/media`
- `/media/download/{download-*}`
- `/media/music/{music-*}`
- `/media/picture/{picture-*}`
- `/media/video/{video-*}`

###Warning
- Proof of concept only.
- Do not use for anything other than demonstration.
- Use at your own risk.
