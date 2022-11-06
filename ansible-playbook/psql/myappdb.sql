CREATE USER postgres WITH PASSWORD 'postgres';

GRANT postgres TO postgres;

CREATE DATABASE myappdb WITH OWNER postgres;


\c myappdb postgres

CREATE TABLE demoapp(name varchar(80), data char(80));
