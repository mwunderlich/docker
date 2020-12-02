[![N|Solid](https://www.translate5.net/wp-content/uploads/2020/02/translate5-logo.png)](https://www.translate5.net/)
# Open Source Translation System - Docker installation
## Docker Compose 
This is the docker compose file of translate5 to containerize it. Still under development.

*IMPORTANT NOTE: This version is currently not functional and certainly not suitable for production.* 

## Getting started with Docker Compose

### Prerequisites
1. Clone this git repository to a local destination: 
	`git clone https://github.com/translate5/docker.git`
	
2. Make sure you have the Docker Engine and Docker Compose installed, as described here: [Docker installation](https://docs.docker.com/compose/install/)

### Building and starting Translate5 with Docker Compose
The file `docker-compose.yaml` describes the setup, consisting of two images/containers: One database image (MySQL 8.0.22) and one image with PHP, Apache2 and Translate5. The build for this latter image is further specified in the docker file `translate5_with_phpapache.docker`. The data will be stored locally in the directory `./mysqlData`. This is mapped to the container as a volume. 

To build and start these containers, simply use: 

`docker-compose up -d --build`

If you want to modify the docker compose file, you can also specify that file directly (instead of using the default name): 

`docker-compose -f <PATH_TO_CUSTOM_FILE> up -d --build`

This will build and start the container in the background. The first build can take quite a while, so please be patient. Further builds and start-ups will be much faster, thanks to Docker's caching mechanism. 

### Verifying the result

Check that the images have been build correctly: 
`docker images`

Verify that the container processes are running: 
`docker ps` or `docker container ls`

### Stopping the containers
To stop the running containers, use: 

`docker-compose down`

### Cleaning up
When working with Docker and Docker Compose, the system can get cluttered with unused images, containers and other Docker resources. To clean up the system, you can use this: 
`docker system prune`

### How to modify the setup

#### Data directory
If you want to store the DB data in a different location, modify the path `./mysqlData` here: 
	
	volumes:
      - ./mysqlData:/var/lib/mysql

#### Ports
If you already have a local installation using port 8080 (e.g. Tomcat), you can modify this port mapping in the docker-compose file. Simply change the first port (which refers to the host system's port) in the following mapping: 

	ports:
      - "8080:80"
      - "4433:443"
      

# Open Source Translation System
## Cloud translation, review, post-editing and terminology platform
 The mission of translate5 is the community-driven and continuous development of the open source and cloud-based translation management system of the language industry.
 
 Translate5 is developed by the collaboration of professionals. We come together as translation experts, language researchers and translation software developers who are aware of the special needs of a translation tool. Communicating and discussing the expectations with each other let to the realisation of their special needs and become true as cloud-based TMS. This process is led and organised by MittagQI as the lead development company doing large parts of the development work behind translate5. MittagQI coordinates the road-map with the community and ensures good architecture and a high code quality.
 
## Try it online
[Online demo](https://demo.translate5.net/)

## Install it yourself
[Instalation instructions](https://www.translate5.net/en/resources/#installation)

## Use it hosted by translate5's developers
[Hosted version](https://www.translate5.net/en/pricing-support/#hosted)

## Need support?
For occassional cases please go to [Questions](https://confluence.translate5.net/questions)

For professional support: [Support](https://www.translate5.net/en/pricing-support-support-and-development-contract/)

## Want a feature?
Get in touch: [Contact](https://www.translate5.net/en/contact/)

## Who is behind it
Have a look:
[Team](https://www.translate5.net/en/who-is-behind/)

## What is _not_ in this repository
There are some plug-ins, although under GPLv3 license, that are only available to the public with a charge: 

Available for all companies, that support translate5 with a support and development contract: InstantTranslate, DeepL connector, SDL GroupShare Connector

Available for all companies with a support and development contract that pay an additional fee: translate5 visual, TrackChanges

All plug-ins are also available, when translate5 is hosted by translate5's development team.

## Release notes (aka change log)
Please see [Change log on Github](https://github.com/translate5/translate5/blob/develop/docs/CHANGELOG.md)

Or look them up directly in translate5 as described here: [Change log](https://www.translate5.net/en/resources/#changelog)

## License
[License AGPL v3.0](https://www.gnu.org/licenses/agpl-3.0.en.html)

[Exceptions for plug-ins](https://github.com/translate5/translate5/blob/master/plugin-exception.txt)
