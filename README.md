# se-project
> [Live demo](https://www.uptownok.com/)<br><br>A web application based in ruby that accesses a database of buildings at the University of Central Oklahoma and allows easy access to directions between any two buildings. 

## Table of contents 
* [General Info](#general-info)
* [Images](#images)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)
* [Status](#status)
* [Development Team](#development-team)

## General info
As the University of Central Oklahoma is a college campus home to many buildings, new (and even old) students often times get confused on where to go. Finding the correct route can be an even more trivial task however for people in wheelchairs as they must navigate around common day obstacles such as stairs, curbs, etc. Focusing on the quality of life change for students, the given application will allow not only be for wheelchair users, but rather any individual who wishes for guidance across campus.

[Back to top](#se-project)


## Images
![Mark-up](https://cdn.discordapp.com/attachments/539632786693292062/545767602816024577/20190214_184434.jpg "Image mark-up by Logan Thurm")

[Back to top](#se-project)

## Technologies
* ruby            -   version 2.5.3
* postgresql      -   version 11.2
* docker          -   version 2.0.0.3
* docker-compose  -   version 2

[Back to top](#se-project)

## Setup
#### Setting up local webpage editing
  - In order to deploy locally I am assuming have docker already installed. If you are using Windows, load 'Docker Quickstart Terminal'; otherwise, load your default terminal emulator.
    - _**IMPORTANT**: If you are using Windows, you have to use [this](https://github.com/docker/labs/issues/215#issuecomment-304596295) fix because of the way windows handles newline characters. After applying the fix, delete and reclone the project using git._
    
  - Locate your project directory and cd into it 
    - ``` ex. cd Documents/School/se-project ```
    
  - You must first build the project with 
    - ``` docker-compose build ```
  
  - Next you just have to start the docker container up on your system
    - ``` docker-compose up -d ```
    
  - After starting the container, you will need to create the database so that the app knows what info to pull for the site
    - ``` docker-compose run web rake db:create ```    
  
  - To view local changes it depends on your docker configuration. Docker will most of the time will host the project to your localhost but with Docker Toolbox it will designate a local ip
    - Most Scenarios: ``` http://localhost/ ```
    - Docker Toolbox: ``` http://192.168.99.100/ ``` 
#### Common commands
  - ``` docker-compose build ```
    - Used when there are major changes to the project and a full server rebuild is necessary. 
    
  - ``` docker-compose up -d ```
    - Used to start the local server. Uses the docker-compose.yml file with the detach command to allow for closing of the terminal.
    
  - ``` docker-compose run web rake db:create ```
    - Used to create the database that is stored on your localhost. If a server rebuild is necessary, this command will have to be input after you start the server.
    
  - ``` docker-compose down ```
    - Used to stop the local server.
    
  - ``` docker logs se_project_web_1 ```
    - Used to check the logs for the ruby application. Can be useful if there is something that is not quite working on your localhost.
    
    
[Back to top](#se-project)

## Features
* Easy to use Docker implementation.

To-do list:
* Easy to use UX allowing users to select two locations via map or list and get directions using a responsive UI.
* Advanced search options such as handicap accessible directions.
* Admin panel to add/edit/remove database entries.

[Back to top](#se-project)

## Status
Project is: _Complete_

[Back to top](#se-project)

## Development team
Created in collaboration by [@keith.hand](http://www.github.com/keithhand), [@jesse.quach](http://www.github.com/jessequach), [@logan.thurm](http://www.github.com/Thurm0hi4), & [@logan.anderson](https://github.com/LoganAnde).

[Back to top](#se-project)
