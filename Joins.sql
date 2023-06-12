create table tableA (a int)

insert into tableA values(1),(2),(null),(3),(2),(4),(4),(6),(10);

create table tableB (b int)
insert into tableB values(7),(null),(null),(3),(4),(4),(2),(2),(8)

select * from tableA;
select * from tableB;

select * from tableA
inner join tableB on a=b

select * from tableA
right join tableB on a=b

select * from tableA
left join tableB on a=b

select * from tableA
full outer join tableB on a=b

 select * from tableA
leftanti join tableB on a=b