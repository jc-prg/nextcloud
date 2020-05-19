# NextCloud

My individual combination of NextCloud configurations ... the goal is:

* NextCloud incl. Maria DB running on Ubuntu _or_ Raspberry
* Cron active from installation
* Login Data, Trusted Domains etc. active from installation
* DB Backup
* Proxy incl. letsencrypt
* ...

Why? Coming from ownCloud I realized how easy it is get NextCloud up and running and how much samples for docker and docker-compose are available.
The goal is to have a fully working installation which can be configured in a single config file and which works on Raspberry Pi as well as on an amd64 architecture.

## Usage

1. Download ...

```bash
$ git clone https://github.com/jc-prg/nextcloud.git
$ cd nextcloud/
```

2. Create and edit configuration file (default is amd64 architecture, config for arm e.g. Raspberry Pi existing and tested)

```bash
$ cp sample.env .env
$ nano .env
$ ./gen-password
```

3. Build container and first start

```bash
$ docker-compose build
$ docker-compose up -d
```

4. Configure separate proxy server incl. letsencrypt, if required (included proxy in progress but not ready yet)

5. Run the first time and create admin account

6. Add trusted domains, if required ( ./data/nextcloud/config/config.php) - the first entry will be set during the first run
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
