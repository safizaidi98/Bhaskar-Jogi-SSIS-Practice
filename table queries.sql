

use PracticeDB


create table emp
(
eid int primary key,
name varchar(50) not null,
salary money not null
)


select * from emp

Insert into emp 
values
--(1, 'John', 1000),
--(2, 'Salman', 2000),
--(3, 'Rishi', 3000),
(9, 'Triple H', 77000)


select * from emp
select * from empLookup
select * from emp_stage


truncate table empLookup


------------------------- Update Query Inner join with Staging Table ------------------------------

update lk

set
lk.name = stg.name,
lk.salary = stg.salary

from emplookup			as lk
Inner join emp_stage	as stg on lk.eid = stg.eid


truncate table emp_stage


-----------------------------------------------------------------------------------------------------------------------------


-----------------------------------------------	Delete Query -----------------------------------------------------------------------------


update emplookup
set IsDeleted = 1
where eid = ?


-----------------------------------------------------------------------------------------------------------------------------


----------------------------------- isDeleted Column ----------------------------------- ----------------------------------- 

alter table emplookup
add IsDeleted bit
default 0 not null


----------------------------------- ----------------------------------- ----------------------------------- ----------------------------------- 




update emp
set 
--salary = 0,
name = 'Ghalat Value insert hogai thiii.'
where eid = 6


update emp
set 
salary = 500,
name = 'Randy Orton'
where eid = 3




update empLookup
set 
name = ?,		-- para 0
salary = ?		-- para 1

where eid = ?	-- para 2




select * from emp
select * from empLookup
where isDeleted = 0


select * from [dbo].[emp_Delete]

delete from [dbo].[emp_Delete]
where eid = ?



select * from emp


delete from emp
where eid = 7




---------------------------------------------------------------------------------------------------------------------


select * from tblNames

select * from tblName_dest

--truncate table [dbo].[tblName_dest]

update tblNames
set Name = 'Triple H'
where Name like lower('Triple%')





