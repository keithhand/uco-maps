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

  - In order to deploy locally you must have docker already installed. If you are using Windows, load 'Docker Quickstart Terminal'; otherwise, load your default terminal emulator.<br><em>NOTE: If you are using Windows, you have to use [this](https://github.com/docker/labs/issues/215#issuecomment-304596295) fix because of the way windows handles newline characters</em>
    
  - Locate your project directory and cd into it <br>``` ex. cd Documents/School/se-project ```.
    
  - You must first build the project with <br>``` docker-compose build ```.<br><em>NOTE: This step is only required if there are major changes to the docker container or ruby project. </em>
  
  - Next you just have to start the docker container up on your system. <br>``` docker-compose up ```
  
  - To view local changes it depends on your docker configuration. Docker most of the time will host the project to your localhost ```http://localhost:3000/```; it also might assign a specific local IP ```http://192.168.99.100:3000/``` <br><em>NOTE: It will always be port 3000)</em><br>(Ran into this on Docker for Windows not routing to localhost by default, found the correct ip it was allocating using Kitematic and viewing the container details. Someone who knows more about Docker for Windows might be able to shed some light on this specific issue). 
    
  
* ...
