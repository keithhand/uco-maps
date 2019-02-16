# se-project
> [Live demo](http://uptownok.com/ucomap)<br><br>A web application based in ruby that accesses a database of buildings at the University of Central Oklahoma and allows easy access to directions between any two buildings. 

## Table of contents 
* [General Info](#general-info)
* [Screenshots](#screenshots)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)
* [Status](#status)
* [Development Team](#development-team)

## General info

## Screenshots

## Technologies
* ruby            -   version x.x.x
* postgresql      -   version x.x.x
* docker          -   version x.x.x
* docker-compose  -   version x.x.x

## Setup
#### Setting up local webpage editing
  - In order to deploy locally I am assuming have docker already installed. If you are using Windows, load 'Docker Quickstart Terminal'; otherwise, load your default terminal emulator.
    - _**IMPORTANT**: If you are using Windows, you have to use [this](https://github.com/docker/labs/issues/215#issuecomment-304596295) fix because of the way windows handles newline characters. After applying the fix, delete and reclone the project using git._
    
  - Locate your project directory and cd into it 
    - ``` ex. cd Documents/School/se-project ```
    
  - You must first build the project with 
    - ``` docker-compose build ```
  
  - Next you just have to start the docker container up on your system. 
    - ``` docker-compose up -d ```
  
  - To view local changes it depends on your docker configuration. Docker will most of the time will host the project to your localhost but with Docker Toolbox it will designate a local ip
    - Most Scenarios: ``` http://localhost:3000/ ```
    - Docker Toolbox: ``` http://192.168.99.100:3000/ ``` 
#### Common commands
  - ``` docker-compose build ```
    - Used when there are major changes to the project and a full server rebuild is necessary. 
    
  - ``` docker-compose up -d ```
    - Used to start the local server. Uses the docker-compose.yml file with the detach command to allow for closing of the terminal.
    
  - ``` docker-compose down ```
    - Used to stop the local server. 

## Features
* Easy to use Docker implementation.
To-do list:
* Easy to use UX allowing users to select two locations via map or list and get directions using a responsive UI.
* Advanced search options such as handicap accessible directions.
* Admin panel to add/edit/remove database entries.

## Status
Project is: _In Progress_

## Development team
Createad in collaboration by [@keith.hand](http://www.github.com/tsioM), [](), [](), []()
