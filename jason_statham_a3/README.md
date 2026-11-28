# Jason Statham: vida, trajetoria e carreira com PROLOG

Projeto academico da UC Matematica Computacional Aplicada (A3). A base representa informacoes biograficas, esportivas, profissionais e cinematograficas de Jason Statham, alem de premiacoes, indicacoes e homenagens.

## Estrutura do modulo Prolog

- prolog/fatos.pl: fatos biograficos, esportivos, filmografia, personagens, diretores e generos.
- prolog/premiacoes.pl: premiacoes e indicacoes individuais, indicacoes coletivas e homenagem esportiva.
- prolog/regras.pl: regras logicas, calculo de idade, datas, filtros e contagens.
- prolog/consultas.pl: consultas preparadas para demonstracao.
- prolog/main.pl: carrega os modulos na ordem correta.
- prolog/testes.pl: testes automatizados usando PL-Unit.
- prolog/jason_statham_online.pl: versao unificada para executar no SWISH sem carregar arquivos separados.

## Como executar localmente

Requisito: SWI-Prolog instalado.

1. Abra o terminal na pasta jason_statham_a3/prolog/.
2. Inicie o interpretador com o comando swipl.
3. Carregue o projeto:

    ?- [main].

4. Execute consultas, por exemplo:

    ?- trajetoria_multidisciplinar(jason_statham).
    ?- quantidade_de_filmes(jason_statham, Total).
    ?- filme_do_genero(jason_statham, Filme, acao).
    ?- colaboracao_recorrente(jason_statham, Diretor).
    ?- idade_em_data(jason_statham, data(2026, 11, 28), Idade).
    ?- indicacao_individual(jason_statham, Evento, Ano, Categoria, Obra).

Para obter outras respostas, use ponto e virgula no terminal.

## Como executar no SWISH

1. Acesse https://swish.swi-prolog.org/.
2. Abra o arquivo prolog/jason_statham_online.pl no editor.
3. Copie todo o conteudo para o editor do SWISH.
4. Execute consultas como as listadas acima, uma por vez.

Na sintaxe Prolog, atomos comecam com letra minuscula (por exemplo, jason_statham). Variaveis comecam com letra maiuscula (por exemplo, Filme). Assim, Homem e uma variavel, enquanto homem e um atomo.

## Como executar os testes automatizados

Com o SWI-Prolog aberto na pasta prolog/:

    ?- [testes].
    ?- run_tests.

Os testes verificam nascimento, calculo de idade antes e depois do aniversario, ano bissexto, trajetoria multidisciplinar, resultados esportivos, colaboracoes recorrentes, quantidade de filmes e separacao entre indicacoes individuais e coletivas.

## Conceitos de PROLOG demonstrados

- Fatos e regras.
- Unificacao e consultas com variaveis.
- Regras compostas com conjuncao.
- Comparacoes numericas e aritmetica.
- Recursividade por meio de conta_elementos/2.
- Predicados de colecao: findall/3, sort/2 e setof/3.
- Testes automatizados com PL-Unit.

## Escopo e limites dos dados

A base cadastra 24 filmes selecionados, incluindo creditos ate 2026; nao deve ser apresentada como filmografia integral e definitiva. Os generos foram registrados apenas onde ha cobertura na pesquisa. O ano adotado e o do lancamento comercial original indicado na documentacao.

A Team England informa que Statham participou das seletivas olimpicas de 1988 e 1992, mas nao conquistou vaga. Portanto, os fatos nao o descrevem como atleta olimpico. A regra idade_completada_no_ano/3 retorna a idade que a pessoa completa durante determinado ano; idade_em_data/3 calcula a idade exata em uma data validada.

As premiacoes foram separadas em:
- reconhecimento individual, com resultado vencedor ou indicado;
- indicacao coletiva de filme/equipe;
- homenagem esportiva, fora do circuito cinematografico.

Consulte docs/pesquisa_e_referencias.md, docs/levantamento_biografico.md e docs/premiacoes_e_indicacoes.md para fontes e ressalvas.

## Documentação acadêmica

- [Resumo expandido](docs/resumo_expandido.md)
- [Escopo e metodologia](docs/escopo_e_metodologia.md)
- [Pesquisa e referências](docs/pesquisa_e_referencias.md)
- [Levantamento biográfico](docs/levantamento_biografico.md)
- [Premiações e indicações](docs/premiacoes_e_indicacoes.md)
- [Roteiro do relatório final](docs/roteiro_relatorio.md)
