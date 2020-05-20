# NextCloud

My individual combination of NextCloud configurations ... the goal is:

* NextCloud incl. Maria DB running on Ubuntu _or_ Raspberry (OK)
* Cron active from installation (OK)
* DB Backup (OK)
* DB Restore (IN PROGRESS)
* Proxy incl. letsencrypt (IN PROGRESS)
* Login Data, Trusted Domains etc. active from installation (OPEN)

Why? Coming from ownCloud I realized how easy it is get NextCloud up and running and how much samples for docker and docker-compose are available.
The goal is to have a fully working installation which can be configured in a single config file and which works on Raspberry Pi as well as on an amd64 architecture.

## Installation

1. Prerequistes: linux server with docker and docker-compose

2. Download ...

```bash
$ git clone https://github.com/jc-prg/nextcloud.git
$ cd nextcloud/
```

3. Create and edit configuration file (default is amd64 architecture, config for arm e.g. Raspberry Pi existing and tested)

```bash
$ cp sample.env .env
$ nano .env
$ ./gen-password
```

4. Build container and first start

```bash
$ docker-compose build
$ docker-compose up -d
```

5. Configure separate proxy server incl. letsencrypt, if required (included proxy in progress but not ready yet)

6. Run the first time and create admin account

7. Add trusted domains, if required ( ./data/nextcloud/config/config.php) - the first entry will be set during the first run
    ```bash
    array (
       0 => '<your 1st domain>',
       1 => '<your 2nd domain>',
       2 => '<your 3rd domain>',
    ),
    ```


## Sources and inspiration (in progress)

* https://github.com/nextcloud/docker
* https://github.com/eppixx/docker-nextcloud-arm
