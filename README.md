#shocker
##shell + docker = shocker


###overview
shell + docker = shocker, an easier way to share random app(s).


###usage

shocker [export|import|list|remove|shock] option

shocker example usage:

- shocker export {application} /path/to/export.tar.gz
- shocker import /path/to/application.tar.gz
- shocker list
- shocker remove {application}
- shocker shock  {application} {task}


###extra

#####repo

Repository contains files required to build application.

- app
- app/{application}/about
- app/{application}/about/README.md
- app/{application}
- app/{application}/bin
- app/{application}/bin/{task}
- app/{application}/docker
- app/{application}/docker/{docker-resources}
- bin
- bin/shocker
- extra
- extra/os
- extra/os/{build-script}


####operating system(s)
- arch linux


