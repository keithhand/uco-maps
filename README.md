# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

## Local editing instructions

  - In order to deploy locally I am assuming have docker already installed. If you are using Windows, load 'Docker Quickstart Terminal'; otherwise, load your default terminal emulator.
    - _**IMPORTANT**: If you are using Windows, you have to use [this](https://github.com/docker/labs/issues/215#issuecomment-304596295) fix because of the way windows handles newline characters. After applying the fix, delete and reclone the project using git._
    
  - Locate your project directory and cd into it 
    - ``` ex. cd Documents/School/se-project ```.
    
  - You must first build the project with 
    - ``` docker-compose build ```.
  
  - Next you just have to start the docker container up on your system. 
    - ``` docker-compose up -d ```
  
  - To view local changes it depends on your docker configuration. Docker will most of the time will host the project to your localhost but with Docker Toolbox it will designate a local ip
    - Most Scenarios: ``` http://localhost:3000/ ```
    - Docker Toolbox: ``` http://192.168.99.100:3000/ ``` 
    
  
## Common commands

  - ``` docker-compose build ```
    - Used when there are major changes to the project and a full server rebuild is necessary. 
    
  - ``` docker-compose up -d ```
    - Used to start the local server. Uses the docker-compose.yml file with the detach command to allow for closing of the terminal.
    
  - ``` docker-compose down ```
    - Used to stop the local server. 
