a) SELECT Livros.titulo from Livros,Autores_Livros, where (Livros.codigoLivro = Autores_Livros.codigoLivro) AND (Autores_Livros.codigoAutor = Autores.codigoAutor) AND (Autores.autor = "Machado de Assis") ORDER BY Livros.titulo;

b) Select * from Livros, Exemplares where (Livros.codigoLivro = Exemplares.codigoExemplar) and (Livros.titulo = "Banco de Dados");

c) select Emprestimos.dataEmprestimo, Alunos.aluno, Funcionarios.funcionario from 


e) Select Alunos.aluno, Livros.titulo, ('<HOJE>' - Itens.dataPrevistaDevolução) as atraso from Alunos, Emprestimos, Itens, Exemplares, Livros where (Alunos.codigoAluno = Emprestimos.codigoAluno) and (Emprestimos.codigoEmprestimo = Itens.codigoEmprestimo) and (Itens.codigoExemplar = Exemplares.codigoExemplar) and (Exemplares.codigoLivro = Livros.codigoLivro) and atraso > 0;

f) select distinct Alunos.aluno, Livros.titulo from Alunos, Emprestimos, Itens, Exemplares, Livros where (Alunos.codigoAluno = Emprestimos.codigoAluno) and (Emprestimos.codigoEmprestimo = Itens.codigoEmprestimo) and (Itens.codigoExemplar = Exemplares.codigoExemplar) and (Exemplares.codigoLivro = Livros.codigoLivro);

g) select distinct Alunos.aluno, Livros.titulo from Alunos, Emprestimos, Itens, Exemplares, Livros where (Alunos.codigoAluno = Emprestimos.codigoAluno) and (Emprestimos.codigoEmprestimo = Itens.codigoEmprestimo) and (Itens.codigoExemplar = Exemplares.codigoExemplar) and (Exemplares.codigoLivro = Livros.codigoLivro) and (Livros.titulo = "POO");

h) select Alunos.aluno, count(emprestimos.codigoEmprestimo) as qtdEmprestimo from Alunos, Emprestimos where (Alunos.codigoAluno = Emprestimos.codigoAluno) GROUP BY Alunos.aluno;

k) select Alunos.aluno, sum(Itens.multa) as totalMulta from Alunos, Emprestimos, Itens where (Alunos.codigoAluno = Emprestimos.codigoAluno) and (Emprestimos.codigoEmprestimo = Itens.codigoEmprestimo) group by Alunos.aluno;

i) select Livros.titulo, count(Exemplares.codigoExemplar) as qtdExemplares from Livros, Exemplares where (Livros.codigoLivro = Exemplares.codigoLivro) group by Livros.titulo;