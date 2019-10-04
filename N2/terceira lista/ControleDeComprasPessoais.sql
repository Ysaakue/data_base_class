a) select * from Credores;

b) select idCredores, nome from Credores order by nome;

c) select Credores.nome, Compras.idCompras, Compras.dtCompra, sum(Parcelas.valor) from Credores, Compras, Parcelas where (Compras.Credores_idCredores = Credores.id) and (Parcelas.Compras_idCompras = Compras.idCompras) group by Credores.nome, Compras.dtCompra;

d) select Compras.idCompras, Compras.dtCompra, sum(Parcelas.valor) from Compras, Credores, Parcelas where (Credores.idCredores = <1>) and (Parcelas.Compras_idCompras = Compras.idCompras);

e) /*select Compras.*, sum(Parcelas.valor) as valorTotal from Compras, Parcelas where (valorTotal > 5000) and (Parcelas.Compras_idCompras = Compras.idCompras);*/
 select Compras.idCompras, sum(Parcelas.valor) as valorTotal from Compras, Parcelas where (Compras.idCompras = Parcelas.Compras_idCompras) group by Compras.idCompras having (valorTotal>50000);

f) select Credores.nome, Compras.descricao, Parcelas.valor,from Credores, Compras, Parcelas where (Parcelas.dtPagamento = null) and (Credores.idCredores = Compras.idCompras) order by Parcelas.dtVencimento;

g) select Compras.idCompras, Compras.dtCompra, Compras.descricao, Credor.nome, Parcelas.* from Parcelas, Compras where (Credor.idCredores = compras.idCompras) and (Parcelas.Compras_idCompras = Compras.idCompras);

h) select P.dtCompra, P.valor, P.multa, P.juros, E.nome, C.idCompras from Credores as E, Compras as C, Parcelas as P where (E.Credores_idCredores = C.Credores_idCredores) and (C.idCompras = P.Compras_idCompras) and (P.dtCompra = <hoje>) order by P.dtPagamento, E.nome;

