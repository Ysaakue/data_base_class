--a)
  SELECT Livros.titulo FROM Livros,Autores_Livros WHERE (Livros.codigoLivro = Autores_Livros.codigoLivro) AND (Autores_Livros.codigoAutor = Autores.codigoAutor) AND (Autores.autor = "Machado de Assis") ORDER BY Livros.titulo;

--b)
  Select * FROM Livros, Exemplares WHERE (Livros.codigoLivro = Exemplares.codigoExemplar) AND (Livros.titulo = "Banco de Dados");

--c)
  SELECT Emprestimos.dataEmprestimo, Alunos.aluno, Funcionarios.funcionario FROM Emprestimos, Alunos, Funcionarios;


--e)
  SELECT Alunos.aluno, Livros.titulo, ('11/10/2019' - Itens.dataPrevistaDevolução) as atraso FROM Alunos, Emprestimos, Itens, Exemplares, Livros WHERE (Alunos.codigoAluno = Emprestimos.codigoAluno) AND (Emprestimos.codigoEmprestimo = Itens.codigoEmprestimo) AND (Itens.codigoExemplar = Exemplares.codigoExemplar) AND (Exemplares.codigoLivro = Livros.codigoLivro) AND (atraso > 0);

--f)
  SELECT distinct Alunos.aluno, Livros.titulo FROM Alunos, Emprestimos, Itens, Exemplares, Livros WHERE (Alunos.codigoAluno = Emprestimos.codigoAluno) AND (Emprestimos.codigoEmprestimo = Itens.codigoEmprestimo) AND (Itens.codigoExemplar = Exemplares.codigoExemplar) AND (Exemplares.codigoLivro = Livros.codigoLivro);

--g)
  SELECT distinct Alunos.aluno, Livros.titulo FROM Alunos, Emprestimos, Itens, Exemplares, Livros WHERE (Alunos.codigoAluno = Emprestimos.codigoAluno) AND (Emprestimos.codigoEmprestimo = Itens.codigoEmprestimo) AND (Itens.codigoExemplar = Exemplares.codigoExemplar) AND (Exemplares.codigoLivro = Livros.codigoLivro) AND (Livros.titulo = "POO");

--h)
  SELECT Alunos.aluno, count(emprestimos.codigoEmprestimo) as qtdEmprestimo FROM Alunos, Emprestimos WHERE (Alunos.codigoAluno = Emprestimos.codigoAluno) GROUP BY Alunos.aluno;

--k)
  SELECT Alunos.aluno, sum(Itens.multa) as totalMulta FROM Alunos, Emprestimos, Itens WHERE (Alunos.codigoAluno = Emprestimos.codigoAluno) AND (Emprestimos.codigoEmprestimo = Itens.codigoEmprestimo) group by Alunos.aluno;

--i)
  SELECT Livros.titulo, count(Exemplares.codigoExemplar) as qtdExemplares FROM Livros, Exemplares WHERE (Livros.codigoLivro = Exemplares.codigoLivro) group by Livros.titulo;