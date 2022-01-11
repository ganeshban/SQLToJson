
Declare @a as int
Declare @b as int
declare @obj as bigint
declare @data as varchar(1000)
declare @nm as varchar(50)
set @a = (select count(name) from sys.columns where object_id = (Select object_id from sys.tables where name like 'tbluserin%'))
set @b=1
set @data=''
set @obj=53575229
set @nm=''
while @b<=@a
begin
	set @nm=(select name from sys.columns where object_id=@obj and column_id=@b)
	set @data= @data + '"'+@nm+'" : '
	set @data= @data + '"'+(select @nm from tbluserinfo where userID=1)+'" : '

	set @b=@b+1
end
print @data
