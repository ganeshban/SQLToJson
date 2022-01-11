--declare @jsonobj as nvarchar(max)

--set @jsonobj=N'{
--    "users": [
--        {
--            "user": {
--                "UID": 1,
--                "UserName": "Ganesh Ban",
--                "DOB": "2053-05-13",
--                "Address": "Nepal",
--                "Image": "",
--                "BloodGroup": "A"
--            }
--        }
--    ]
--}'

--select * from openjson(@jsonobj,'$.')


----select isjson(@jsonobj)

--Select * from tblUserInformation

Select
sn  [User.SN]
, id as [User.id]
, FName  [User.FName]
, LName  [User.LName]
, DateOfBirth  [User.DOB]
, BloodGroup  [User.BdGrp]
, PrimaryPhone  [User.Contact.Phone]
, PrimaryEmail  [User.Contact.Email]


from tblUserInformation a
for json path, root('Users')

