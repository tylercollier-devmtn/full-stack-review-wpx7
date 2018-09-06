drop table if exists memes;
drop table if exists users;

create table if not exists users (
  id serial primary key,
  auth0_id text unique not null,
  name varchar(100),
  email varchar(150),
  picture text
);

create table if not exists memes (
  id serial primary key,
  url text not null,
  user_id integer references users (id)
);

insert into memes (url) values
('https://i.imgflip.com/2hcqqj.jpg');
