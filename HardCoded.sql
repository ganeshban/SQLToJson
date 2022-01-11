declare @count int
declare @end int
declare @XML varchar(1000)
set @XML='['
set @end = (Select Count(ID) from tblUserInformation)
set @count = 1
while @count<=@end
begin
	set @XML=@Xml+'{'
	set @xml=@xml+'"UID" : '
	set @xml=@xml + cast(@count as varchar(10)) + ', '
	set @xml=@xml+'"UserName" : '
	set @xml=@xml + '"'+ (Select Fname + ' ' + Lname from tblUserInformation where sn = @count ) +'"'+', '
	set @xml=@xml+'"DOB" : '
	set @xml=@xml + '"'+(Select DateOfBirth from tblUserInformation where sn = @count ) +'"'+', '
	set @xml=@xml+'"Address" : '
	set @xml=@xml + '"'+(Select BirthPlace from tblUserInformation where sn = @count ) +'"'+', '
	set @xml=@xml+'"Image" : "", '
	--set @xml=@xml+'"Gender" : '
	--set @xml=@xml + (Select cast(gender as varchar(1)) from tblUserInformation where ID = @count ) +', '
	set @xml=@xml+'"BloodGroup" : '
	set @xml=@xml + (Select cast(BloodGroup as varchar(1)) from tblUserInformation where sn = @count )
	if @count=@end
	begin
		set @xml=@xml+'}'
	end
	else
	begin
		set @XML=@XML+'}, '
	end
	set @Count=@Count + 1
end
set @xml=@xml+']'

print @XML

/*
select * from sys.columns where object_ID in(Select object_id from sys.tables where name like 'tbluserinf%')
select * from sys.tables

select name from sys.columns where object_id=53575229

Declare @a as int
Declare @b as int
declare @obj as bigint
declare @data as varchar(1000)
set @a = (select count(name) from sys.columns where object_id = (Select object_id from sys.tables where name like 'tbluserin%'))
set @b=1
set @obj=53575229
while @b<=@a
begin
	set @data= @data + '"'+(select name from sys.columns where object_id=53575229 and column_id=@b)+'"'
print @data
	set @b=@b+1
end
print @data

*/


--Select * from tblUserInformation

--select * from tblAddressSteate
--select * from TblAddressList
--insert into tblAddressSteate values (1,'State 3','sts')
--insert into tblAddressDistrict values (1,'Naparasi','npl',1)
--insert into tblAddressMetro values (1,'Gaindakot','Gkt',1)
--insert into TblAddressList values (1,'State', 3,1)
--insert into tblLoginUser values (1,'','')

insert into tblUserInformation values(2,'user2','Madhav','','Ban',1,'Nepal','2053-05-13','2078-05-05','A+','7207519966','banganesh98@gmail.com',1)
