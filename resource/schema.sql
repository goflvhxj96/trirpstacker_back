use enjoytrip;

drop table if exists members;
drop table if exists plan;
drop table if exists dayplan;
drop table if exists board;
drop table if exists reply;
drop table if exists likes;
drop table if exists interest;

create table members (
id int not null auto_increment primary key,
member_id varchar(100) not null,
member_pwd varchar(100) not null,
nickname varchar(30) not null,
email varchar(100) not null,
profile_pic varchar(200),
join_date datetime not null default now(),
unjoin boolean
);

create table plan (
plan_id int not null auto_increment primary key,
title varchar(100) not null,
start_date datetime,
end_date datetime,
member_id int not null,
foreign key (member_id) references members(id) on delete cascade on update cascade
);

create table dayplan (
dayplan_id int not null auto_increment primary key,
plan_id int not null,
day_num int not null,
location_id int not null,
start_time datetime,
end_time datetime,
memo varchar(300),
foreign key(plan_id) references plan(plan_id) on delete cascade on update cascade,
foreign key(location_id) references attraction_info(content_id) on delete cascade on update cascade
);

create table board (
article_id int not null auto_increment primary key,
title varchar(100) not null,
board_type varchar(100) not null,
content text not null,
member_id int not null,
like_cnt int not null default 0,
view_cnt int not null default 0,
create_date datetime not null default now(),
image_url varchar(100),
latitude float,
longitude float,
foreign key (member_id) references members(id) on delete cascade on update cascade
);

create table reply (
reply_id int not null auto_increment primary key,
article_id int not null,
member_id int not null,
content text not null,
create_date datetime not null default now(),
foreign key (member_id) references members(id) on delete cascade on update cascade,
foreign key (article_id) references board(article_id) on delete cascade on update cascade
);

create table likes (
like_id int not null auto_increment primary key,
article_id int not null,
member_id int not null,
foreign key (member_id) references members(id) on delete cascade on update cascade,
foreign key (article_id) references board(article_id) on delete cascade on update cascade
);

create table interest (
interest_id int not null auto_increment primary key,
location_id int not null,
member_id int not null,
foreign key (member_id) references members(id) on delete cascade on update cascade,
foreign key (location_id) references attraction_info(content_id) on delete cascade on update cascade
);