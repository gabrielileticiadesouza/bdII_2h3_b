select 
	emp.nome as funcionario, 
	count(dep.cod_dep) as dependentes,
    if(count(dep.cod_dep)>0,"Passível Abate IRPF","Sem Abtes IRPF")as abate_irpf,
    if(count(dep.cod_dep)>0 and count(dep.cod_dep)<=4,(count(dep.cod_dep)* 2275),"Não se aplica ou limite") as desconto
 from empregado emp 
 left join dependente dep 
 on emp.cod_emp = dep.cod_emp
 group by emp.nome;
