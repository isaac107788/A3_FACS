% ============================================================
% Consultas para demonstracao em sala.
% Carregue main.pl e execute cada consulta no terminal SWI-Prolog.
% ============================================================

% 1. Qual e a data de nascimento de Jason Statham?
% ?- data_nascimento(jason_statham, Data).

% 2. Quais esportes Jason praticou?
% ?- pratica_esporte(jason_statham, Esporte).

% 3. Quais foram os resultados nos Jogos da Commonwealth de 1990?
% ?- resultado_competicao(jason_statham, jogos_commonwealth_auckland_1990, Prova, Posicao).

% 4. Em quais provas ele ficou entre os dez primeiros?
% ?- resultado_top_10(jason_statham, Evento, Prova, Posicao).

% 5. Quais filmes de acao possuem participacao de Jason?
% ?- filme_do_genero(jason_statham, Filme, acao).

% 6. Com quais diretores Jason trabalhou?
% ?- filme_com_diretor(jason_statham, Diretor, Filme).

% 7. Com quais diretores ele colaborou em mais de um filme?
% ?- colaboracao_recorrente(jason_statham, Diretor).

% 8. Quais filmes foram lancados depois de 2010?
% ?- filme_lancado_depois_de(jason_statham, 2010, Filme).

% 9. Quantos filmes cadastrados possuem participacao dele?
% ?- quantidade_de_filmes(jason_statham, Total).

% 10. A regra reconhece uma trajetoria multidisciplinar?
% ?- trajetoria_multidisciplinar(jason_statham).

% 11. Quais sao seus filhos cadastrados?
% ?- filho_de_pessoa(Filho, jason_statham).

% 12. Que idade Jason completaria em 2026?
% ?- idade_completada_no_ano(jason_statham, 2026, Idade).
