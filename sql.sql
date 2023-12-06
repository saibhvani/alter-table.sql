create table zomato.`users` (
id int primary key,
name varchar(45)not null,
email varchar(45)not null,
street varchar(20)not null,
location varchar(45)not null,
city varchar(20)not null,
state varchar(20)not null,
country varchar(10)not null,
pincode int check(length(phoneno)=10)
);
drop table zomato.users;


insert into zomato.users(id,name,email,street,location,city,state,country,pincode)
value(1,'bhavani','b@gmail.com','kphb','abc colony','hyderabad','telangana','india',500002);

select *from zomato.users;

create table zomato.users1 (
`id` INT NULL,
UNIQUE INDEX `id_UNIQUE`(`id` asc)
);

create table zomato.users3 (
`id` int,
`name` varchar(45)NOT NULL,
primary key(`id`)
);

create table zomato.user1(
id int primary key,
name varchar(45) not null,
mobileno int check(length(mobileno)=10),
age int check(age>=18)
);

create table zomato.useraddress(
id int primary key auto_increment,
state varchar(20) not null,
country varchar(20) default('india'),
userid int not null,
constraint foreign key useraddress_users_usersid(usersid) references zomato.users(id)

);

create table zomato.user2(
id int primary key auto_increment,
name varchar(45) not null,
mobileno int check(length(mobileno)=10),
age int check(age>=18)
);
select *from zomato.user2

alter table zomato.user1 add column gender varchar(10);

alter table zomato.user1 modify name varchar(45) null;

alter table zomato.user1 modify name varchar(45) not null;
alter table zomato.user1
add constraint unique_name unique(name);

alter table zomato.user1
drop index unique_name;

alter table zomato.users1
add constraint users1_pk_id primary key(id);


select *from zomato.user1



alter table zomato.useraddress
add constraint fk_useraddress_users_id foreign key(usersid)references zomato.users(id);



