OpenBSD Port of the Abagnale Algorithmic Trading System

Assuming a checkout of the OpenBSD ports tree matching your base
version this repository can be checked out to a subdirectory like:

```console
user@host:/usr/ports$ mkdir localhost
user@host:/usr/ports$ cd localhost
user@host:/usr/ports/localhost$ git clone https://github.com/ChristianSchulte/abagnale-port-openbsd.git abagnale
```

The port then can be updated or installed by issueing:

```console
user@host:/usr/ports/localhost/abagnale$ git pull
user@host:/usr/ports/localhost/abagnale$ make install FETCH_PACKAGES=
user@host:/usr/ports/localhost/abagnale$ make update FETCH_PACKAGES=
```

