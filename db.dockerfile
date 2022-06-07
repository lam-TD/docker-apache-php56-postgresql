FROM postgres:9.6

RUN apt-get update -y
RUN apt-get -y install postgresql-contrib python postgresql-plpython-9.6
