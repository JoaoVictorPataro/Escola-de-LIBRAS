create proc logar @email varchar(50), @senha varchar(30)
as
begin
  if (Exists(select * from TCC_Usuario where email = @email and senha = @senha))
    select * from TCC_Usuario where email = @email and senha = @senha
  else
    return 0
end

logar 'adm@email.com', 'senha'

logar 'sla', 'sla'

alter table TCC_Usuario
add nome varchar(70)



sp_help TCC_Usuario