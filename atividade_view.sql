#criar uma view
create view VW_lista_funcionario as select nome, especialidade
from fun;

#utilizando a view criada
select * from vw_lista_funcionario;

#criando uma view para listar todos os dependentes
create view VW_lista_dependentes as select nome
from dependente;

select * from VW_lista_dependentes;




create view VW_funcionario_com_dependente as
select fun.nome as fun_nome,
				   dependente.nome
from fun
inner join dependente
on fun.cod_fun = dependente.cod_fun;

select * from vw_funcionario_com_dependente;



 
 create view vw_dependente as
select fun.nome,dependente.nome as funcionario,dependente.nome as dependente
from fun
right join dependente
on fun.cod_fun = dependente.cod_fun
where dependente.nome is null;

select * from vw_dependente;



create view View_Funcionario_Sem_Dependentes as
select fun.nome,dependente.nome as funcionario, dependente.nome as dependente
from Fun
left join dependente 
on fun.cod_fun=dependente.cod_fun
where dependente.nome is null ;

select * from  View_Funcionario_Sem_Dependentes;