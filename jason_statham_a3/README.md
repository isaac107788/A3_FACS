# Jason Statham: vida, trajetoria e carreira com PROLOG

Projeto academico da UC Matematica Computacional Aplicada (A3). O objetivo e representar informacoes biograficas e profissionais de Jason Statham por meio de uma base de fatos e regras em PROLOG, permitindo consultas e inferencias.

## Escopo

A base contempla identificacao e infancia, esportes, trabalhos anteriores ao cinema, filmografia, diretores, generos de filmes e vida pessoal. Esta e uma versao inicial, adequada para evolucao em equipe.

## Estrutura

\`\`\`text
jason_statham_a3/
|-- README.md
|-- prolog/
|   |-- fatos.pl
|   |-- regras.pl
|   |-- consultas.pl
|   |-- main.pl
|   \`-- jason_statham_online.pl
\`-- docs/
    |-- escopo_e_metodologia.md
    |-- pesquisa_e_referencias.md
    |-- roteiro_relatorio.md
    \`-- roteiro_apresentacao.md
\`\`\`

## Documentacao da pesquisa

- [Levantamento biografico e filmografico](docs/levantamento_biografico.md)
- [Premiacoes e indicacoes](docs/premiacoes_e_indicacoes.md)
- [Pesquisa e referencias](docs/pesquisa_e_referencias.md)
- [Escopo e metodologia](docs/escopo_e_metodologia.md)
- [Roteiro do relatorio](docs/roteiro_relatorio.md)
- [Roteiro da apresentacao](docs/roteiro_apresentacao.md)

## Como executar online (SWISH)

A ementa pede execucao online. O SWISH e o ambiente web oficial do ecossistema SWI-Prolog.

1. Acesse https://swish.swi-prolog.org/.
2. Abra \`prolog/jason_statham_online.pl\` em um editor de texto.
3. Copie todo o conteudo e cole no editor do SWISH (ou use a opcao de carregar arquivo, se disponivel).
4. Execute as consultas da secao \`Consultas para demonstracao\` abaixo, uma por vez, no painel de consultas.

## Como executar localmente

1. Instale o SWI-Prolog: https://www.swi-prolog.org/Download.html
2. Abra o terminal na pasta \`prolog/\`.
3. Execute \`swipl\`.
4. No prompt do Prolog, carregue a base:

\`\`\`prolog
?- [main].
\`\`\`

5. Execute uma consulta, por exemplo:

\`\`\`prolog
?- trajetoria_multidisciplinar(jason_statham).
?- filme_do_genero(jason_statham, Filme, acao).
?- colaboracao_recorrente(jason_statham, Diretor).
?- quantidade_de_filmes(jason_statham, Total).
\`\`\`

O resultado \`true\` significa que a regra foi satisfeita. Variaveis iniciadas com letra maiuscula recebem os valores encontrados. Use \`;\` para solicitar outras respostas quando houver mais de uma.

## Consultas para demonstracao

\`\`\`prolog
?- data_nascimento(jason_statham, Data).
?- resultado_top_10(jason_statham, Evento, Prova, Posicao).
?- filme_do_genero(jason_statham, Filme, acao).
?- colaboracao_recorrente(jason_statham, Diretor).
?- filme_lancado_depois_de(jason_statham, 2010, Filme).
?- quantidade_de_filmes(jason_statham, Total).
?- trajetoria_multidisciplinar(jason_statham).
?- filho_de_pessoa(Filho, jason_statham).
?- idade_completada_no_ano(jason_statham, 2026, Idade).
\`\`\`

## Conceitos de PROLOG demonstrados

- Fatos: nascimento, parentesco, esportes, participacoes em competicoes e filmes.
- Regras: trajetoria multidisciplinar, filmes por genero, colaboracoes e classificacao de resultados.
- Unificacao e consultas com variaveis.
- Operadores aritmeticos e comparacoes numericas.
- Predicados pre-definidos como \`findall/3\`, \`sort/2\` e \`setof/3\`.
- Recursividade: predicado \`conta_elementos/2\`.

## Observacoes sobre a qualidade dos dados

- O cadastro de filmes nesta primeira versao e uma amostra, nao uma filmografia integral.
- Os generos foram incluidos apenas para os titulos com classificacao confirmada nas fontes listadas na documentacao.
- A Team England registra que Statham competiu nos Jogos da Commonwealth de Auckland 1990 e participou das seletivas olimpicas de 1988 e 1992, mas nao conquistou vaga olimpica. Por isso, o projeto nao o descreve como atleta olimpico.
- A idade calculada por \`idade_completada_no_ano/3\` e a idade que a pessoa completa durante o ano, nao necessariamente a idade em uma data especifica.
- Antes da entrega, a equipe deve executar os testes no SWI-Prolog e ampliar a base com novas fontes verificaveis.

## Referencias

Consulte \`docs/pesquisa_e_referencias.md\` para fontes, escopo de uso e observacoes de verificacao.
