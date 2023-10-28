select produto.id, produto.nome as nome_produto, estab.nome as nome_estabelecimento
from "Produtos" produto, "Estabelecimentos" estab
inner join "Produtos_Estabelecimentos" pe ON pe.estabelecimento_id  = estab.id
where produto.preco between 32 and 89;

select pedido.id, pedido.preco, usuario.nome
from "Pedidos" pedido, "Usuarios" usuario 
where pedido.usuario_id = usuario.id and
pedido.created_at 
between '2024-02-18 00:00:01' and '2024-03-04 23:59:59';

select pedido.id as pedidoId, pedido.preco, produto.id as produtoId, produto.nome
from "Pedidos" pedido, "Produtos" produto
inner join "Pedidos_Produtos" pp on pp.produto_id = produto.id
where pedido.preco > 85;

select pedido.id, avaliacao.descricao, avaliacao.nota
from "Pedidos" pedido, "Avaliacoes" avaliacao
where pedido.preco between 25 and 45 and avaliacao.pedido_id = pedido.id ;