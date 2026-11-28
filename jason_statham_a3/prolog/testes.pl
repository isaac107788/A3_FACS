% Testes automatizados com PL-Unit (SWI-Prolog).
% Os arquivos do projeto sao carregados explicitamente no modulo user.
:- user:ensure_loaded('main.pl').
:- begin_tests(jason_statham_a3).

test(data_nascimento) :-
    user:data_nascimento(jason_statham, data(1967, 7, 26)).

test(idade_na_data_anterior_ao_aniversario) :-
    user:idade_em_data(jason_statham, data(2026, 7, 25), Idade),
    assertion(Idade =:= 58).

test(idade_no_aniversario) :-
    user:idade_em_data(jason_statham, data(2026, 7, 26), Idade),
    assertion(Idade =:= 59).

test(data_bissexta_valida) :-
    user:data_valida(data(2024, 2, 29)).

test(data_bissexta_invalida, [fail]) :-
    user:data_valida(data(2023, 2, 29)).

test(trajetoria_multidisciplinar) :-
    user:trajetoria_multidisciplinar(jason_statham).

test(resultado_top_10) :-
    user:resultado_top_10(jason_statham, jogos_commonwealth_auckland_1990, trampolim_1m, 8).

test(resultado_fora_do_top_10, [fail]) :-
    user:resultado_top_10(jason_statham, jogos_commonwealth_auckland_1990, trampolim_3m, 11).

test(total_de_filmes) :-
    user:quantidade_de_filmes(jason_statham, Total),
    assertion(Total =:= 24).

test(colaboracao_recorrente_guy_ritchie) :-
    user:colaboracao_recorrente(jason_statham, guy_ritchie).

test(colaboracao_recorrente_david_ayer) :-
    user:colaboracao_recorrente(jason_statham, david_ayer).

test(vitoria_individual) :-
    user:premio_vencido(jason_statham, women_film_critics_circle, 2006,
        personagem_masculino_mais_ofensivo, crank).

test(indicacao_individual) :-
    user:indicacao_individual(jason_statham, critics_choice, 2016,
        melhor_ator_em_comedia, spy).

test(indicacao_coletiva_separada) :-
    user:indicacao_de_obra(expend4bles, razzie, 2024, pior_filme).

test(filmes_2026) :-
    user:filme_no_intervalo(jason_statham, 2026, 2026, shelter),
    user:filme_no_intervalo(jason_statham, 2026, 2026, mutiny).

test(intervalo_invertido, [fail]) :-
    user:filme_no_intervalo(jason_statham, 2026, 2020, _).

:- end_tests(jason_statham_a3).
