#shocker
##shell + docker = shocker


###overview
an easier way to share random app(s) using docker


###usage

shocker [export|import|list|remove|shock] option

shocker example usage:

- shocker export {application} {/path/to/export.tar.gz}
- shocker import {/path/to/application.tar.gz}
- shocker list
- shocker remove {application}
- shocker shock  {application} {task}


###extra

#####repo

Repository contains files required to build application.

- bin
- bin/shocker
- extra
- extra/os
- extra/os/{build-script}
- src
- src/{application}/about
- src/{application}/about/README.md
- src/{application}
- src/{application}/bin
- src/{application}/bin/{task}
- src/{application}/docker
- src/{application}/docker/{docker-resources}


####operating system(s)
- arch linux


