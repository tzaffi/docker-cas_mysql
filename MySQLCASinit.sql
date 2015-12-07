/**
Currently, this is not part of the automatic docker build process.
This commands need to be run 
BEFORE the CAS4 docker is built
and 
AFTER the MySQL db is up and running
**/
CREATE DATABASE cas;

USE cas;

CREATE TABLE cas_users (
       id INT AUTO_INCREMENT NOT NULL, username VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, 
       password VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL, PRIMARY KEY (id), UNIQUE KEY (username)
);

INSERT INTO cas_users (username, password) VALUES ('guest', '084e0343a0486ff05530df6c705c8bb4');
