-- TODO: add rating
create table authors (
    id        serial       primary key,
	firstname varchar(255) not null   ,
	lastname  varchar(255) not null
);
