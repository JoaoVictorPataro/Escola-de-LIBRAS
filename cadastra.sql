alter proc cadastra @email varchar(50), @senha varchar(30), @nome varchar(70)
as
begin
  begin transaction insereUser
  insert into TCC_Usuario values (@email, @senha, 0, @nome)
  if ((select COUNT(email) from TCC_Usuario where email = @email) > 1)
    rollback transaction insereUser
  else
    commit transaction insereUser

	select * from TCC_Usuario where email = @email
end

sp_help TCC_Usuario

select * from TCC_Usuario

cadastra 'matheuszanfolin@hotmail.com', 'jobisvaldo'

alter table TCC_Usuario
ADD PRIMARY KEY (id)
