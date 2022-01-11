--Select (Select name from sys.columns where column_id=1 and object_id in(Select object_id from sys.tables where name like 'tbluseri%')) from tbluserinfo where userid=1
declare @n as varchar(100)
declare @x as varchar(100)
set @n='userid, addresss'
declare @t as nvarchar(100)
set @t='select '+@n+' from tbluserinfo'

exec(@t)

print @t