a) select * from Credores;

b) select idCredores, nome from Credores order by nome;

c) select Credores.nome, Compras.idCompras, Compras.dtCompra, sum(Parcelas.valor) from Credores, Compras, Parcelas where (Compras.Credores_idCredores = Credores.id) and (Parcelas.Compras_idCompras = Compras.idCompras) order by Credores.nome and Compras.dtCompra;

d) select Compras.idCompras, Compras.dtCompra, sum(Parcelas.valor) from Compras, Credores, Parcelas where (Credores.idCredores = <1>) and (Parcelas.Compras_idCompras = Compras.idCompras);

e) select Compras.*, sum(Parcelas.valor) as valorTotal from Compras, Parcelas where (valorTotal > 5000) and (Parcelas.Compras_idCompras = Compras.idCompras);

f) select Credores.nome, Compras.descricao, Parcelas.valor,from Credores, Compras, Parcelas where (Parcelas.dtPagamento = null) and (Credores.idCredores = Compras.idCompras) order by Parcelas.dtVencimento;

g) 