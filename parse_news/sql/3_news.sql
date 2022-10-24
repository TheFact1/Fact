-- TODO: add hashtags varchar(255) []
create table news (
    id          serial       primary key    ,
	platform_id int                 not null,
	author_id   int                         ,
	link        varchar(255) unique not null,
    title       varchar(255)        not null,
	content     text                        ,
	image       varchar(255)                ,
	category    varchar(255)        not null,
	created_on  timestamp           not null,
	FOREIGN KEY (platform_id) REFERENCES platforms (id),
	FOREIGN KEY (author_id)   REFERENCES authors (id)
);


--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1 (Debian 14.1-1.pgdg110+1)
-- Dumped by pg_dump version 14.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


