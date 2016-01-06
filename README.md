Minimal environment for CentOs + Mysql
======================================

Use with Docker http://www.docker.io

This Dockerfile provide an environment Centos + Mysql for to be used in the developing environment, for to be faster and more productive create databases.
Questions as security and performance were not thought.


To construct the image

	cd <path/Dockerfile/downloaded>
    docker build -t <name_of_your_choice> .


To run the container

    docker run -i -t --name mysql -p 3306:3306 -v <path_with_dumps>:/tmp/external <name_of_your_choice>

To exit of the container press Ctrl+p+q

To enter in the container terminal

    List the containers
    docker ps -a
    
    Enter in the mysql conatiner
    docker exec -i -t <container_id> bash
    
    Enter in the mysql terminal
    mysql -u root -p'password'

Obs:

:: Remember of give execution permission for the file run.sh [chmod a+x /run.sh]

:: Put your dumps in the same folder of the file run.sh. The name of that dumps need to be the same of the database

:: Change the file run.sh and include the names of the databases to be included

:: The password root is 'root', but you can change it by changing the file Dockerfile
