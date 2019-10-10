--a)
  SELECT * FROM Produtos;

--b)
  SELECT Produtos.cod, Produtos.nome FROM Produtos ORDER BY nome;

--c) 
  SELECT Produtos.nome, Produtos.valorUnitarioVenda FROM Produtos WHERE (valorUnitario > 100) ORDER BY valorUnitarioVenda DESC;

--d)
  SELECT Produtos.nome, Produtos.valorUnitarioCompra FROM Produtos ORDER BY nome;

--e)
  SELECT Notas.dtCompra, Notas.cod FROM Notas WHERE (Cliente_cod = 1);

--f)
  SELECT Vendedores.nome FROM Vendedores, Clientes, Notas WHERE (Clientes.cod = Notas.Cliente_cod) AND (Notas.Vendedor_cod = Vendedores.cod) and (Clientes.cod = 1) GROUP BY Vendedores.nome;

--g)
  SELECT * from Notas WHERE (Notas.Vendedor_cod = 1);

--h)
  SELECT Produtos.* from Produtos, Notas, Notas_has_Produtos WHERE (Produtos.cod = Notas_has_Produtos.Produtos_cod) AND (Notas_has_Produtos.Notas_cod = 1);

--i)
  SELECT Produtos.* from Produtos, Notas_has_Produtos, Notas WHERE (Produtos.cod = Notas_has_Produtos.Produtos_cod) AND (Notas_has_Produtos.Notas_cod = Notas.cod) AND (Notas.Cliente_cod = 1) GROUP BY Produtos.cod;

--j)
  SELECT Notas.*, sum(Produtos.valorUnitarioVenda*Notas_has_Produtos.quantidade) as valorTotal WHERE (Notas_has_Produtos.Produtos_cod = Produtos.cod) AND (Notas_has_Produtos.Notas_cod = Notas.cod);

--k)
  SELECT