# docker-template
Create work-space in Docker container.

Summary
-------

This scripts create a docker container for own workspace.

By build script, set system's network settings and set same USER ID with host.

After that, you can login and work in workspace.

Usage
-----

- Edit apt.conf, resolv.conf, .gitconfig, .bash\_aliases for your environment.
    - If there are some files you want to change, add the files in dockerfile add ADD command in Dockerfile.

- Set USER and RAW\_PASS, CONTAINER\_NAME in IMAGE.conf.
    - $USER should be same username in host.
    - $UESR\_ID would be same in host automatically.
    - Set $RAW\_PASS to whatever you want.

- Create docker container by 01-build-docker.sh.
    - If you change base version, please change Dockerfile.

- Then, login by 02-run-docker-bash.sh.
    - You can use sudo command, and password is RAW\_PASS in IMAGE.conf.
    - Directory /home/$USER/workspace is shared with host. Put file or directory.


template for debian-buster
--------------------------

```
debian-buster/
├── 01-build-docker.sh
├── 02-run-docker-bash.sh
├── IMAGE.conf
├── dockerfile
│   ├── .bash_aliases
│   ├── .gitconfig
│   └── Dockerfile
└── workspace
```


template for centos-latest
--------------------------

```
centos-latest/
├── 01-build-docker.sh
├── 02-run-docker-bash.sh
├── IMAGE.conf
├── dockerfile
│   ├── .bash_aliases
│   ├── .gitconfig
│   └── Dockerfile
└── workspace
```
