#shocker
##SHELL + Docker = Shocker


###Overview
an easier way to share random app(s) using docker


###Usage

shocker [export|import|list|remove|shock] option

shocker example usage:

- shocker export {application} {path/export.tar.gz}
- shocker import {path/application.tar.gz}
- shocker list
- shocker remove {application}
- shocker shock  {application} {task}


###Extra

#####Repository

- bin
- bin/shocker
- extra
- extra/os
- extra/os/{build-script}
- src
- src/{application.tar.gz}/about
- src/{application.tar.gz}/about/README.md
- src/{application.tar.gz}
- src/{application.tar.gz}/bin
- src/{application.tar.gz}/bin/{task}
- src/{application.tar.gz}/docker
- src/{application.tar.gz}/docker/{docker-resources}
- src/{application.tar.gz}/skel
- src/{application.tar.gz}/skel/{config-resources}


