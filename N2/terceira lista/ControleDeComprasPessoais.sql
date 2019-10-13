--a)
  SELECT *
  FROM Credores;

--b)
  SELECT idCredores, nome
  FROM Credores
  ORDER BY nome;

--c)
  SELECT Credores.nome, Compras.idCompras, Compras.dtCompra, sum(Parcelas.valor)
  FROM Credores, Compras, Parcelas
  WHERE (Compras.Credores_idCredores = Credores.id)
  AND (Parcelas.Compras_idCompras = Compras.idCompras)
  GROUP BY Credores.nome, Compras.dtCompra;

--d)
  SELECT Compras.idCompras, Compras.dtCompra, sum(Parcelas.valor)
  FROM Compras, Credores, Parcelas
  WHERE (Credores.idCredores = 1)
  AND (Parcelas.Compras_idCompras = Compras.idCompras);

--e)
  /*SELECT Compras.*, sum(Parcelas.valor) as valorTotal
  FROM Compras, Parcelas
  WHERE (valorTotal > 5000)
  AND (Parcelas.Compras_idCompras = Compras.idCompras);*/
  SELECT Compras.idCompras, sum(Parcelas.valor) AS valorTotal
  FROM Compras, Parcelas
  WHERE (Compras.idCompras = Parcelas.Compras_idCompras)
  GROUP BY Compras.idCompras
  HAVING (valorTotal>50000);

--f)
  SELECT Credores.nome, Compras.descricao, Parcelas.valor
  FROM Credores, Compras, Parcelas
  WHERE (Parcelas.dtPagamento = null)
  AND (Credores.idCredores = Compras.idCompras)
  ORDER BY Parcelas.dtVencimento;

--g)
  SELECT Compras.idCompras, Compras.dtCompra, Compras.descricao, Credor.nome, Parcelas.*
  FROM Parcelas, Compras
  WHERE (Credor.idCredores = compras.idCompras)
  AND (Parcelas.Compras_idCompras = Compras.idCompras);

--h)
  SELECT P.dtCompra, P.valor, P.multa, P.juros, E.nome, C.idCompras
  FROM Credores AS E, Compras AS C, Parcelas AS P
  WHERE (E.Credores_idCredores = C.Credores_idCredores)
  AND (C.idCompras = P.Compras_idCompras)
  AND (P.dtCompra = "11/10/2019")
  ORDER BY P.dtPagamento, E.nome;

