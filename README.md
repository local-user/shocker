#shocker
##shell + docker = shocker

###overview
shell + docker = shocker, an easier way to share random app(s).

###usage

shocker [export|import|list|remove|shock] option

shocker example usage:

- shocker export application /path/to/export.tar.gz
- shocker import /path/to/application.tar.gz
- shocker list
- shocker remove {application}
- shocker shock  {application} {task}

###extra


#####repo

Repository contains files required to build application.

- shocker/
- shocker/app
- shocker/app/{application}/about
- shocker/app/{application}/about/README.md
- shocker/app/{application}
- shocker/app/{application}/bin
- shocker/app/{application}/bin/{task}
- shocker/app/{application}/docker
- shocker/app/{application}/docker/{docker-resources}
- shocker/bin
- shocker/bin/shocker
- shocker/extra
- shocker/extra/os
- shocker/extra/os/{build-script}


####operating system(s)
- arch linux

