create table SpotFire_Lib_ReportFiles_bak
(
Folder nvarchar(1000),
ReportName nvarchar(1000),
DESCRIPTION nvarchar(1000),
State nvarchar(1000),
ADD_desc nvarchar(100),
DB_desc nvarchar(100),
View_desc nvarchar(1000),
Table_desc nvarchar(1000)
)


insert into SpotFire_Lib_ReportFiles_bak(Folder,ReportName,DESCRIPTION,State)  
select Folder,ReportName,DESCRIPTION,State from SpotFire_Lib_ReportFiles
where State=1


select * 
from SpotFire_Lib_ReportFiles_bak

truncate table SpotFire_Lib_ReportFiles_bak
