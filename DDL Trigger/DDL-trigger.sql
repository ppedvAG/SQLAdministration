alter trigger updstats
on database
for update_Statistics
as
declare @data as xml
declare @posttime nvarchar(24)
declare @database nvarchar(100)
declare @targetobject nvarchar(100)
set @data= eventdata()
set @posttime =convert(nvarchar(24),@data.query('data(//PostTime)'))
set @database=convert(nvarchar(100),@data.query('data(//DatabaseName)'))
set @targetobject=convert(nvarchar(100), @data.query('data(//TargetObjectName)'))
Print @posttime
Print @database
Print @targetobject

Update Statistics  person.address