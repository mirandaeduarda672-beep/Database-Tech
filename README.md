<h1>TECHSTORE — BANCO DE DADOS</h1>
<p><b>Sistema de Gestão Comercial, Catálogo e Pedidos (loja_tech)</b></p>

<ul>
  <li><b>Instituição:</b> Escola SENAI Suíço-Brasileira</li>
  <li><b>Professor:</b> Átila</li>
  <li><b>Disciplina:</b> Banco de Dados</li>
  <li><b>Autora:</b> Maria Eduarda Miranda Torres</li>
  <li><b>Turma:</b> SEDUC 2</li>
  <li><b>Data:</b> 18/11/2026</li>
</ul>

<hr />

<h2>Apresentação do Projeto</h2>
<p>
  Este projeto consiste na aplicação prática de consultas e rotinas armazenadas em um Banco de Dados Relacional (<code>loja_tech</code>), desenvolvido e testado no <b>MySQL Workbench</b>. A atividade tem como objetivo consolidar a leitura de esquema, a sintaxe fundamental de consulta e manipulação de dados e a criação de <b>Stored Procedures</b> parametrizadas para o gerenciamento operacional da loja de tecnologia TechStore.
</p>

<h2>Escopo Operacional</h2>

<h3>Gestão de Clientes</h3>
<p>Cadastro centralizado de consumidores, controle de dados de contato (e-mail e telefone) e histórico de compras realizadas na plataforma.</p>

<h3>Catálogo de Produtos e Categorias</h3>
<p>Organização de itens tecnológicos por departamentos, precificação, busca textual e monitoramento de disponibilidade em estoque.</p>

<h3>Controle de Pedidos e Faturamento</h3>
<p>Acompanhamento do status das vendas (como pedidos pendentes de pagamento), associação entre cliente e pedido e consolidação do faturamento bruto.</p>

<h3>Automação com Stored Procedures</h3>
<p>Encapsulamento de regras de consulta, inserção, atualização e contagem de registros no servidor MySQL utilizando boas práticas de programação em banco de dados.</p>

<hr />

<h2>Resultados das Querys</h2>

<h3>Resultado #1 — Listagem Básica de Clientes</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>nome</th>
      <th>email</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>Ana Silva</td><td>ana.silva@email.com</td></tr>
    <tr><td>Carlos Eduardo Santos</td><td>carlos.santos@email.com</td></tr>
    <tr><td>Beatriz Almeida Costa</td><td>beatriz.costa@email.com</td></tr>
    <tr><td>Lucas Oliveira Pereira</td><td>lucas.pereira@email.com</td></tr>
    <tr><td>Fernanda Souza Lima</td><td>fernanda.lima@email.com</td></tr>
  </tbody>
</table>

<h3>Resultado #2 — Produtos Abaixo de R$ 500,00</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>nome</th>
      <th>preco</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>Monitor Samsung T350 22" Full HD</td><td>489.90</td></tr>
    <tr><td>Mouse Logitech G203 RGB</td><td>149.90</td></tr>
    <tr><td>Teclado Mecânico Redragon Kumara</td><td>249.90</td></tr>
    <tr><td>Headset Gamer HyperX Cloud Stinger</td><td>329.90</td></tr>
    <tr><td>SSD Kingston NV2 1TB NVMe</td><td>419.90</td></tr>
  </tbody>
</table>

<h3>Resultado #3 — Pedidos Pendentes de Pagamento</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>id_pedido</th>
      <th>id_cliente</th>
      <th>data_pedido</th>
      <th>status</th>
      <th>valor_total</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>2</td><td>2</td><td>2026-11-11</td><td>pendente</td><td>899.90</td></tr>
    <tr><td>3</td><td>1</td><td>2026-11-14</td><td>pendente</td><td>579.80</td></tr>
    <tr><td>5</td><td>4</td><td>2026-11-16</td><td>pendente</td><td>419.90</td></tr>
  </tbody>
</table>

<h3>Resultado #4 — Catálogo Ordenado por Maior Preço</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>nome</th>
      <th>preco</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>Notebook Lenovo IdeaPad Gaming</td><td>4299.00</td></tr>
    <tr><td>Notebook Dell Inspiron 15</td><td>3499.90</td></tr>
    <tr><td>Monitor LG UltraGear 24" 144Hz</td><td>899.90</td></tr>
    <tr><td>Monitor Samsung T350 22" Full HD</td><td>489.90</td></tr>
    <tr><td>SSD Kingston NV2 1TB NVMe</td><td>419.90</td></tr>
    <tr><td>Headset Gamer HyperX Cloud Stinger</td><td>329.90</td></tr>
    <tr><td>Teclado Mecânico Redragon Kumara</td><td>249.90</td></tr>
    <tr><td>Mouse Logitech G203 RGB</td><td>149.90</td></tr>
  </tbody>
</table>

<h3>Resultado #5 — Busca Textual por "Monitor"</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>id_produto</th>
      <th>nome</th>
      <th>preco</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>3</td><td>Monitor LG UltraGear 24" 144Hz</td><td>899.90</td></tr>
    <tr><td>4</td><td>Monitor Samsung T350 22" Full HD</td><td>489.90</td></tr>
  </tbody>
</table>

<h3>Resultado #6 — Periféricos com Estoque Acima de 40 Unidades</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>nome</th>
      <th>estoque</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>Mouse Logitech G203 RGB</td><td>65</td></tr>
    <tr><td>Teclado Mecânico Redragon Kumara</td><td>50</td></tr>
  </tbody>
</table>

<h3>Resultado #7 — Contagem Total de Clientes</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>total_clientes</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>5</td></tr>
  </tbody>
</table>

<h3>Resultado #8 — Faturamento Bruto Total</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>faturamento_bruto</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>10338.30</td></tr>
  </tbody>
</table>

<h3>Resultado #9 — Catálogo de Produtos e Categorias</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>produto</th>
      <th>categoria</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>Notebook Dell Inspiron 15</td><td>Notebooks</td></tr>
    <tr><td>Notebook Lenovo IdeaPad Gaming</td><td>Notebooks</td></tr>
    <tr><td>Monitor LG UltraGear 24" 144Hz</td><td>Monitores</td></tr>
    <tr><td>Monitor Samsung T350 22" Full HD</td><td>Monitores</td></tr>
    <tr><td>Mouse Logitech G203 RGB</td><td>Periféricos</td></tr>
    <tr><td>Teclado Mecânico Redragon Kumara</td><td>Periféricos</td></tr>
    <tr><td>Headset Gamer HyperX Cloud Stinger</td><td>Periféricos</td></tr>
    <tr><td>SSD Kingston NV2 1TB NVMe</td><td>Hardware</td></tr>
  </tbody>
</table>

<h3>Resultado #10 — Pedidos da Cliente Ana Silva</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>id_pedido</th>
      <th>status</th>
      <th>valor_total</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>1</td><td>pago</td><td>3649.80</td></tr>
    <tr><td>3</td><td>pendente</td><td>579.80</td></tr>
  </tbody>
</table>

<hr />

<h2>Resultados das Stored Procedures</h2>

<h3>Resultado Procedure #1 — <code>listar_categorias_ativas</code></h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>id_categoria</th>
      <th>nome</th>
      <th>descricao</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>4</td><td>Hardware</td><td>Processadores, placas de vídeo, memórias e SSDs</td></tr>
    <tr><td>2</td><td>Monitores</td><td>Monitores LED, IPS, 4K e gamers de alta taxa</td></tr>
    <tr><td>1</td><td>Notebooks</td><td>Notebooks corporativos, gamers e ultrabooks</td></tr>
    <tr><td>3</td><td>Periféricos</td><td>Teclados, mouses, headsets e webcams</td></tr>
  </tbody>
</table>

<h3>Resultado Procedure #2 — <code>buscar_pedidos_por_status</code> (Status: 'pendente')</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>id_pedido</th>
      <th>id_cliente</th>
      <th>data_pedido</th>
      <th>valor_total</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>2</td><td>2</td><td>2026-11-11</td><td>899.90</td></tr>
    <tr><td>3</td><td>1</td><td>2026-11-14</td><td>579.80</td></tr>
    <tr><td>5</td><td>4</td><td>2026-11-16</td><td>419.90</td></tr>
  </tbody>
</table>

<h3>Resultado Procedure #3 &amp; #4 — Execução de Inserção e Atualização</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>Procedure Executada</th>
      <th>Retorno no MySQL Workbench</th>
    </tr>
  </thead>
  <tbody>
    <tr><td><code>inserir_categoria('Acessórios', 'Cabos, suportes e adaptadores diversos')</code></td><td>1 row(s) affected</td></tr>
    <tr><td><code>atualizar_telefone_cliente(1, '11999998888')</code></td><td>1 row(s) affected</td></tr>
  </tbody>
</table>

<h3>Resultado Procedure #5 — <code>contar_produtos_categoria</code> (Categoria: 3)</h3>
<table border="1" cellpadding="6" cellspacing="0">
  <thead>
    <tr>
      <th>total_produtos_categoria</th>
    </tr>
  </thead>
  <tbody>
    <tr><td>3</td></tr>
  </tbody>
</table>

<hr />

<h3 align="center">SENAI Suíço-Brasileira | Banco de Dados Relacional</h3>
