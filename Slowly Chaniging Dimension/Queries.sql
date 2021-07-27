

USE PracticeDB


Create table OLTP 
(
	EMPID int,
	ENAME VARCHAR(50),
	ESALARY MONEY,
	EGENDER VARCHAR(1),
	ECITY CHAR(10)
)



--Insert into OLTP 
--values(1, 'Ram', 10000, 'M', 'HYD')



create table olap
(
	EMPID int,
	ENAME VARCHAR(50),
	ESALARY MONEY,
	EGENDER VARCHAR(1),
	ECITY CHAR(10),
	ISCURRENT VARCHAR(50)
)




Select * from OLTP
Select * from olap


select * into #temp1 from olap


select * from #temp1

alter table olap
add LineNum int identity(1,1)





update #temp
set LineNum = ROW_NUMBER() over(order by EMPID) 


select  ROW_NUMBER() over(order by EMPID) as 'LineNum', *  from olap

select ROW_NUMBER() over(Order by), EMPID from olap



update OLTP
set ESALARY = 590000
where EMPID = 5



------------------------------------------------ CHECK IF THE SURROGATE KEY COLUMN EXISTS OR NOT. IF NOT THEN ALTER AND MAKE IT ------------------------------------------------------------


use PracticeDB

if not exists(
select *
from INFORMATION_SCHEMA.COLUMNS

where 
TABLE_NAME = 'olap'
and
COLUMN_NAME = 'LineNum'
)
Begin

alter table olap
add LineNum int identity(1,1)
End


---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------