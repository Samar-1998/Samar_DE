create database Assign;
create table Employes
( Empid int,
  Empname varchar(20),
  Managerid int
  );
  
select * from Employes;

insert into Employes values(1,'Boss',1),(3,'Alice',3),(2,'Bob',1),(4,'Daniel',2),(7,'Luis',4),(8,'John',3),(9,'Angela',8),(77,'Robert',1);



WITH  emphierarchy (EmpID, Empname, ManagerID, EmpLevel)
  AS
  (
    SELECT EmpID, Empname, ManagerID, 0 as Emplevel
    FROM Employes
    WHERE EmpID=1
    UNION all
	select EmpID, Empname, ManagerID, 100 as Emplevel
    from Employes
    where EmpId!=1 and EmpId=ManagerID
    UNION all
    SELECT e.EmpID, e.Empname, e.ManagerID,(h.EmpLevel + 1) as Emplevel
    FROM Employes as e
	INNER JOIN emphierarchy as h
	ON h.EmpID = e.ManagerID 
    where e.managerid!=e.empid
  )
SELECT
  * from emphierarchy
  where EmpLevel<4 and Empid!=1;