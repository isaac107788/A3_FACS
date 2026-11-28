% Consultas de demonstracao. Carregue main.pl antes de executar.

% 1. Nascimento e local de nascimento.
% ?- data_nascimento(jason_statham, Data).
% ?- local_nascimento(jason_statham, Cidade, Regiao, Pais).

% 2. Esporte e resultados da Commonwealth de 1990.
% ?- pratica_esporte(jason_statham, Esporte).
% ?- resultado_competicao(jason_statham, jogos_commonwealth_auckland_1990, Prova, Posicao).
% ?- resultado_top_10(jason_statham, Evento, Prova, Posicao).

% 3. Trajetoria profissional multidisciplinar.
% ?- trajetoria_multidisciplinar(jason_statham).

% 4. Filmes de acao e filmes por intervalo de lancamento.
% ?- filme_do_genero(jason_statham, Filme, acao).
% ?- filme_no_intervalo(jason_statham, 2018, 2024, Filme).
% ?- filme_lancado_depois_de(jason_statham, 2020, Filme).

% 5. Colaboracoes recorrentes com diretores.
% ?- colaboracao_recorrente(jason_statham, Diretor).

% 6. Quantidade de filmes cadastrados.
% ?- quantidade_de_filmes(jason_statham, Total).

% 7. Personagens interpretados.
% ?- atuou_em(jason_statham, Filme, Personagem).

% 8. Familia.
% ?- filho_de_pessoa(Filho, jason_statham).

% 9. Idade no ano ou em data exata.
% ?- idade_completada_no_ano(jason_statham, 2026, Idade).
% ?- idade_em_data(jason_statham, data(2026, 7, 25), Idade).
% ?- idade_em_data(jason_statham, data(2026, 7, 26), Idade).

% 10. Indicacoes e vitorias individuais.
% ?- indicacao_individual(jason_statham, Evento, Ano, Categoria, Obra).
% ?- premio_vencido(jason_statham, Evento, Ano, Categoria, Obra).
% ?- quantidade_de_indicacoes_individuais(jason_statham, Total).
% ?- quantidade_de_vitorias_individuais(jason_statham, Total).

% 11. Indicacoes coletivas de filmes/equipes, separadas das individuais.
% ?- indicacao_de_obra(Obra, razzie, 2024, Categoria).

% 12. Homenagem esportiva.
% ?- reconhecimento_esportivo(jason_statham, Ano, Descricao).

% 13. Validacao de datas e anos bissextos.
% ?- data_valida(data(2024, 2, 29)).
% ?- data_valida(data(2023, 2, 29)).
