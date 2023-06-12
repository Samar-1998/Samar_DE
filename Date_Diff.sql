create table date_table
(
customerid int,
dateno date,
)

insert into date_table values(1111,'2022-12-1'),(1111,'2022-10-1'),(1111,'2022-09-1'),(1111,'2023-01-1'),(2222,'2022-01-01'),(2222,'2022-05-02'),(2222,'2022-04-01')
select * from date_table

with cte (customerid,dateno,startdate) as
(
select customerid, dateno,
 min(dateno) OVER (PARTITION by customerid) as startdate
from date_table
)
select customerid,dateno,abs(Datediff(month,dateno,startdate)) as difference
from cte