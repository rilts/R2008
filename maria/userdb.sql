use mysql;

create database rmaria default charset utf8;

create user 'rmaria'@'%' identified by 'rmaria';
set password for 'rmaria'@'%' = password('rmaria');
grant all privileges on rmaria.* to 'rmaria'@'%';

create user 'rmaria'@'localhost' identified by 'rmaria';
set password for 'rmaria'@'localhost' = password('rmaria');
grant all privileges on rmaria.* to 'rmaria'@'localhost';

create user 'rmaria'@'127.0.0.1' identified by 'rmaria';
set password for 'rmaria'@'127.0.0.1' = password('rmaria');
grant all privileges on rmaria.* to 'rmaria'@'127.0.0.1';

create user 'root'@'%' identified by 'mysql';

set password for 'root'@'%' = password('mysql');
set password for 'root'@'localhost' = password('mysql');
set password for 'root'@'127.0.0.1' = password('mysql');

grant all privileges on *.* to 'root'@'%';
grant all privileges on *.* to 'root'@'localhost';
grant all privileges on *.* to 'root'@'127.0.0.1';

flush privileges;

