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

* <h2>Deployment instructions</h2>

  - In order to deploy locally I am assuming have docker already installed. If you are using Windows, load 'Docker Quickstart Terminal'; otherwise, load your default terminal emulator.
    - <em><b>IMPORTANT</b>: If you are using Windows, you have to use [this](https://github.com/docker/labs/issues/215#issuecomment-304596295) fix because of the way windows handles newline characters. After applying the fix, delete and reclone the project using git.</em>
    
  - Locate your project directory and cd into it 
    - ``` ex. cd Documents/School/se-project ```.
    
  - You must first build the project with 
    - ``` docker-compose build ```.
      - <em>NOTE: This step is only required if there are major changes to the docker container or ruby project. </em>
  
  - Next you just have to start the docker container up on your system. 
    - ``` docker-compose up -d ```
  
  - To view local changes it depends on your docker configuration. Docker will most of the time will host the project to your localhost but with Docker Toolbox it will designate a local ip
    - Most Scenarios: ``` http://localhost:3000/ ```
    - Docker Toolbox: ``` http://192.168.99.100:3000/ ``` 
    
  
* ...
