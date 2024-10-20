FROM ubuntu:latest

#Please be informed that the following commands are to create a Docker file for PostgreSQL 
# Created by jalalmoosavifard@gmail.com
RUN apt update && apt install postgresql-common -y

#to reduce image size ! 
#And also FEEDING an Enter to the script being run

#adding the pgSQL repository

RUN rm -rf /var/cache/apt/archives/* &&\

	echo -ne | /usr/share/postgresql-common/pgdg/apt.postgresql.org.sh

#this section installs postgresql and again reducing the size!!
RUN apt install postgresql -y && rm -rf /var/cache/apt/archives/*



RUN systemctl enable postgresql


EXPOSE 5432

# I have put the administrative tasks in the following entryPoint script
CMD ./Required_Entrypoint.sh
  
