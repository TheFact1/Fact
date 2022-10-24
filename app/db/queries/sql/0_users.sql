-- TODO: add last_login timestamp
-- TODO: add disabled timestamp
-- TODO: add interests
create table users (
    id         serial       primary key    ,
	username   varchar(255) unique not null,
	password   varchar(255)        not null,
    email      varchar(255) unique not null,
	wallet     varchar(255) unique not null,
	created_on timestamp           not null,
	disabled   boolean             not null
);

-- TODO: add password hashes
insert into users (username, password, email, wallet, created_on, disabled)
values
	('dayyass', '$2b$12$nZjBgK7jQQ5pOLfrymezMOynoyQTSo46mtkS7vi4nfj.76v7XE8uS', 'dayyass@yandex.ru', 'wallet0', now(), false),
	('yaroslav', '$2b$12$SuP9BUG92D/o1NpdweilC.h1tnuff0XvTahEbfGT/VufQAnD4XX2.', 'yaroslav@yandex.ru', 'wallet1', now(), false),
	('johndoe', '$2b$12$tFq/oFWlPErh9rDGLPOXz.AXPrEgjaQKjebMIl6Vd2tX08LZUS00q', 'johndoe@google.ru', 'wallet2', now(), true);