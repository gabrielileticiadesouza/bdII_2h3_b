SELECT 

	e.nome as empregado, 
    e.civil as est_civil,
	format(datediff(now(),e.dt_nascimento)/365,0) as emp_idade,
	e.salario as renda,
	count(d.cod_dep) as dependentes
    concat(d.cod_dep) as dependetes
 FROM empregado e LEFT JOIN dependente d on e.cod_emp = d.cod_emp
 group by e.nome, e.civil, e.salario, e.dt_nascimento;