# Wordpress-app


## Description

This is the development environment for  a wordpress app used for a school assignment ____. It connects with a custom theme and plugin through submodules.

The apps porpuse is to ____

--- 

## Installation

To install this project run `git clone --recursive https://github.com/TmRAaEx/wordpress-development-env`

### Setup

1. Install project
2. Install wordpress and place everything except wp-content inside the /html folder
3. Run `docker compose build` or `docker build`
4. Run `docker compose up`
5. Go to [localhost:8085](http://localhost:8085) or your configured phpmyadmin port
6. Setup or import db
7. Go to [localhost:808](http://localhost:8084) or your configured site port
8. Follow wordpress setup steps, setup db with name you set in step 6 and host as "db"



 ### Config 

For configuring ports for site or database, configuring db settings, and changing mounted volumes edit `docker-compose.yml`. <img width="682" height="872" alt="image" src="https://github.com/user-attachments/assets/f5cc220e-8d4c-46b6-8812-44b350b511a7" />



### Backup or copy 

To backup or copy the settings, installed plugins/themes and the database run `backup.sh`, needs full permissions, for linux run: `chmod 777 ./backup.sh`, on windows you need WSL (windows subsystem for linux) to run the script
After the backup you can send/upload the copy to desired location like someone else working on the project or a backup archive.

