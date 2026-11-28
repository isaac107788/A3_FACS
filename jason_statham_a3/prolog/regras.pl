% Regras e inferencias em PROLOG.
% Requer fatos.pl e premiacoes.pl carregados anteriormente.

ator(Pessoa) :-
    profissao(Pessoa, ator).

trajetoria_multidisciplinar(Pessoa) :-
    pratica_esporte(Pessoa, _),
    profissao(Pessoa, modelo),
    profissao(Pessoa, ator).

competiu_em_evento(Pessoa, Evento) :-
    resultado_competicao(Pessoa, Evento, _, _).

resultado_top_10(Pessoa, Evento, Prova, Posicao) :-
    resultado_competicao(Pessoa, Evento, Prova, Posicao),
    Posicao =< 10.

filme_do_genero(Pessoa, Filme, Genero) :-
    atuou_em(Pessoa, Filme, _),
    genero(Filme, Genero).

filme_com_diretor(Pessoa, Diretor, Filme) :-
    trabalhou_com_diretor(Pessoa, Filme, Diretor).

% setof/3 agrupa por diretor; a regra exige pelo menos dois filmes diferentes.
colaboracao_recorrente(Pessoa, Diretor) :-
    setof(Filme, trabalhou_com_diretor(Pessoa, Filme, Diretor), Filmes),
    Filmes = [_, _ | _].

filme_lancado_depois_de(Pessoa, AnoReferencia, Filme) :-
    integer(AnoReferencia),
    atuou_em(Pessoa, Filme, _),
    filme(Filme, Ano),
    Ano > AnoReferencia.

filme_no_intervalo(Pessoa, AnoInicial, AnoFinal, Filme) :-
    integer(AnoInicial),
    integer(AnoFinal),
    AnoInicial =< AnoFinal,
    atuou_em(Pessoa, Filme, _),
    filme(Filme, Ano),
    Ano >= AnoInicial,
    Ano =< AnoFinal.

filme_com_personagem(Pessoa, Personagem, Filme) :-
    atuou_em(Pessoa, Filme, Personagem).

filme_por_titulo(Pessoa, Titulo, Filme) :-
    atuou_em(Pessoa, Filme, _),
    titulo_original(Filme, Titulo).

filho_de_pessoa(Filho, Pessoa) :-
    filho_de(Filho, Pessoa).
filho_de_pessoa(Filha, Pessoa) :-
    filha_de(Filha, Pessoa).

ano_bissexto(Ano) :-
    integer(Ano),
    0 is Ano mod 400.
ano_bissexto(Ano) :-
    integer(Ano),
    0 is Ano mod 4,
    Ano mod 100 =\= 0.

dias_no_mes(_, 1, 31).
dias_no_mes(Ano, 2, 29) :-
    ano_bissexto(Ano),
    !.
dias_no_mes(_, 2, 28).
dias_no_mes(_, 3, 31).
dias_no_mes(_, 4, 30).
dias_no_mes(_, 5, 31).
dias_no_mes(_, 6, 30).
dias_no_mes(_, 7, 31).
dias_no_mes(_, 8, 31).
dias_no_mes(_, 9, 30).
dias_no_mes(_, 10, 31).
dias_no_mes(_, 11, 30).
dias_no_mes(_, 12, 31).

data_valida(data(Ano, Mes, Dia)) :-
    integer(Ano), Ano > 0,
    integer(Mes), Mes >= 1, Mes =< 12,
    integer(Dia), Dia >= 1,
    dias_no_mes(Ano, Mes, UltimoDia),
    Dia =< UltimoDia.

data_maior_ou_igual(data(Ano, Mes, Dia), data(AnoN, MesN, DiaN)) :-
    ( Ano > AnoN
    ; Ano =:= AnoN, Mes > MesN
    ; Ano =:= AnoN, Mes =:= MesN, Dia >= DiaN
    ), !.

% Idade exata na data indicada, considerando a ocorrencia do aniversario.
idade_em_data(Pessoa, data(Ano, Mes, Dia), Idade) :-
    data_valida(data(Ano, Mes, Dia)),
    data_nascimento(Pessoa, data(AnoN, MesN, DiaN)),
    data_maior_ou_igual(data(Ano, Mes, Dia), data(AnoN, MesN, DiaN)),
    ( (Mes > MesN ; Mes =:= MesN, Dia >= DiaN) ->
        Idade is Ano - AnoN
    ;
        Idade is Ano - AnoN - 1
    ).

% Idade que a pessoa completa durante determinado ano.
idade_completada_no_ano(Pessoa, Ano, Idade) :-
    integer(Ano),
    data_nascimento(Pessoa, data(AnoNascimento, _, _)),
    Ano >= AnoNascimento,
    Idade is Ano - AnoNascimento.

% Contagem recursiva para demonstrar recursividade.
conta_elementos([], 0).
conta_elementos([_ | Cauda], Total) :-
    conta_elementos(Cauda, Parcial),
    Total is Parcial + 1.

quantidade_de_filmes(Pessoa, Total) :-
    findall(Filme, atuou_em(Pessoa, Filme, _), Lista),
    sort(Lista, FilmesUnicos),
    conta_elementos(FilmesUnicos, Total).

quantidade_de_indicacoes_individuais(Pessoa, Total) :-
    findall(Evento-Ano-Categoria-Obra,
        reconhecimento_individual(Pessoa, Evento, Ano, Categoria, Obra, indicado),
        Lista),
    sort(Lista, Unicos),
    conta_elementos(Unicos, Total).

quantidade_de_vitorias_individuais(Pessoa, Total) :-
    findall(Evento-Ano-Categoria-Obra,
        reconhecimento_individual(Pessoa, Evento, Ano, Categoria, Obra, vencedor),
        Lista),
    sort(Lista, Unicos),
    conta_elementos(Unicos, Total).

premio_vencido(Pessoa, Evento, Ano, Categoria, Obra) :-
    reconhecimento_individual(Pessoa, Evento, Ano, Categoria, Obra, vencedor).

indicacao_individual(Pessoa, Evento, Ano, Categoria, Obra) :-
    reconhecimento_individual(Pessoa, Evento, Ano, Categoria, Obra, indicado).

indicacao_de_obra(Obra, Evento, Ano, Categoria) :-
    indicacao_coletiva(Obra, Evento, Ano, Categoria).

reconhecimento_esportivo(Pessoa, Ano, Descricao) :-
    homenagem(Pessoa, international_sports_hall_of_fame, Ano, Descricao).
