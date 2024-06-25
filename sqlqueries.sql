create database myproject;

use myproject;

create table worker 
(worker_id int primary key,
first_name varchar(20),
last_name varchar(20),
salary int ,
joining_date date,
department varchar(20));

select * from worker;

insert into worker
(worker_id,first_name,last_name,salary,joining_date,department)
values
(1,"monica","arora",100000,'2014-02-20',"HR"),
(2,"niharika","verma",80000,'2014-06-11',"admin"),
(3,"vishal","singhal",300000,'2014-02-20',"HR"),
(4,"AMITABH","SINGH",500000,'2014-02-20',"admin"),
(5,"vivek","bhati",500000,'2014-06-11',"admin"),
(6,"vipul","diwan",300000,'2014-06-11',"account"),
(7,"satish","kumar",75000,'2014-01-20',"account");

select * from title;
drop table title;

create table title
(worker_id int,
work_title varchar(20),
affected_from date,
 foreign key (worker_id) references worker(worker_id));
 
 SET SQL_SAFE_UPDATES = 1;
 
 select * from title;
 
 insert into title
 (worker_id,work_title,affected_from)
 values
 (1,"manager",'2016-02-20'),
 (2,"executive",'2016-06-11'),
 (7,"executive",'2016-06-11'),
 (5,"manager",'2016-06-11'),
 (4,"asst manager",'2016-06-11'),
 (7,"executive",'2016-06-11'),
 (6,"lead",'2016-06-11');
 
 SELECT worker_id FROM worker WHERE worker_id IN (1, 2, 8, 5, 4, 7, 6);
 
 INSERT INTO title (worker_id, work_title, affected_from) VALUES 
(1, 'manager', '2016-02-20'), 
(2, 'executive', '2016-06-11'), 
(8, 'executive', '2016-06-11'), 
(5, 'manager', '2016-06-11'), 
(4, 'asst manager', '2016-06-11'), 
(7, 'executive', '2016-06-11'), 
(6, 'lead', '2016-06-11');
use myproject;

select * from worker;

select * from title;

select first_name from worker where
first_name like '%h' and
length(5);    /*1*/

select * from worker where joining_date='2014-02-20';  /*2*/

select first_name,salary from worker where salary >=50000 and  salary <=100000; /*3*/


select department ,count(worker_id) as worker_count
from worker
group by department 
order by worker_count; /*4*/

select w.first_name,t.work_title
from worker w
join title t on w.worker_id =t.worker_id; /*5*/



