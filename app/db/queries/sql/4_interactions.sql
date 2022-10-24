-- TODO: how to store likes
create table interactions (
    user_id        int               ,
	news_id        int               ,
	interaction_on timestamp not null,
	likes          int               ,
	comment        varchar(255)      ,
	PRIMARY KEY (user_id, news_id),
	FOREIGN KEY (user_id) REFERENCES users (id),
	FOREIGN KEY (news_id) REFERENCES news (id)
);
