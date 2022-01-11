
/*

use mydb


select * from sys.tables


Create table tbluserInfo
(
UserID bigint primary key Identity(1,1),
userFname varchar(30),
UserLName varchar(30),
DOB varchar(10),
Addresss varchar(100),
Gender int,
BloodGrp int,
img text
)

insert into tbluserInfo values('Ganesh','Ban','','3565 E. 141 Dr. Broghton Co. 80602',1,1,'')
insert into tbluserInfo values('Santosh','Parajuli','','3565 E. 141 Dr. Broghton Co. 80602',1,1,'')
insert into tbluserInfo values('Madhav','Ban','','Gaindakot-8, Nawalparasi',1,1,'')
insert into tbluserInfo values('Deepak','Kharel','','Gaindakot-5, Nawalparasi',1,1,'')
insert into tbluserInfo values('Raaz','Poudel','','Gaindakot-8, Nawalparasi',1,1,'')
*/

Select * from tbluserInfo

print '{'+ column_Name()
'}'
declare @count int
declare @end int
declare @XML text
set @XML='{'
set @end = (Select Count(userID) from tbluserInfo)
set @count = 1
while @count<=@end
begin
	@xml=@xml+'Hello There'
	@Count=@Count + 1
end
@xml=@xml+'}'

print @XML

select * from tbluserInfo
