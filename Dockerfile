FROM openjdk:8u102-jdk

RUN wget -O /flyway.tar.gz https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/4.0.3/flyway-commandline-4.0.3.tar.gz

RUN tar -xzf /flyway.tar.gz && rm /flyway.tar.gz && mv /flyway-4.0.3 /flyway

RUN ln -s /flyway/flyway /usr/local/bin/flyway

RUN wget -O /flyway/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
RUN chmod +x /flyway/wait-for-it.sh

WORKDIR /flyway
