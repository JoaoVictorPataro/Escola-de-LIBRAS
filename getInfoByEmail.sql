alter proc getInfoByEmail @email varchar(50)
as
begin
  select * from TCC_Usuario where email like (@email + '%')
end

getInfoByEmail 's'

select * from TCC_Usuario