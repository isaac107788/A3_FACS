% ============================================================
% Projeto A3 - Regras e inferencias
% Requer fatos.pl carregado antes deste arquivo.
% ============================================================

% Uma pessoa e reconhecida como ator se possui a profissao ator.
ator(Pessoa) :-
    profissao(Pessoa, ator).

% Identifica a trajetoria profissional/esportiva anterior ao cinema.
trajetoria_multidisciplinar(Pessoa) :-
    pratica_esporte(Pessoa, _),
    profissao(Pessoa, modelo),
    profissao(Pessoa, ator).

% Identifica participacao em competicao esportiva.
competiu_em_evento(Pessoa, Evento) :-
    resultado_competicao(Pessoa, Evento, _, _).

% Considera resultado entre os dez primeiros lugares.
resultado_top_10(Pessoa, Evento, Prova, Posicao) :-
    resultado_competicao(Pessoa, Evento, Prova, Posicao),
    Posicao =< 10.

% Retorna filmes de determinado genero em que a pessoa atuou.
filme_do_genero(Pessoa, Filme, Genero) :-
    atuou_em(Pessoa, Filme, _),
    genero(Filme, Genero).

% Retorna os filmes em que a pessoa trabalhou com determinado diretor.
filme_com_diretor(Pessoa, Diretor, Filme) :-
    trabalhou_com_diretor(Pessoa, Filme, Diretor).

% Identifica diretores com quem a pessoa colaborou em mais de um filme.
colaboracao_recorrente(Pessoa, Diretor) :-
    setof(Filme, trabalhou_com_diretor(Pessoa, Filme, Diretor), Filmes),
    Filmes = [_, _ | _].

% Identifica filmes lancados depois de um determinado ano.
filme_lancado_depois_de(Pessoa, AnoReferencia, Filme) :-
    atuou_em(Pessoa, Filme, _),
    filme(Filme, Ano),
    Ano > AnoReferencia.

% Identifica filmes lancados dentro de um intervalo (inclusive).
filme_no_intervalo(Pessoa, AnoInicial, AnoFinal, Filme) :-
    atuou_em(Pessoa, Filme, _),
    filme(Filme, Ano),
    Ano >= AnoInicial,
    Ano =< AnoFinal.

% Relacionamentos familiares derivados dos fatos de parentesco.
filho_de_pessoa(Filho, Pessoa) :-
    filho_de(Filho, Pessoa).

filho_de_pessoa(Filho, Pessoa) :-
    filha_de(Filho, Pessoa).

% Calcula a idade que a pessoa completa em determinado ano.
% Nao considera se o aniversario ja ocorreu em uma data especifica.
idade_completada_no_ano(Pessoa, Ano, Idade) :-
    data_nascimento(Pessoa, data(AnoNascimento, _, _)),
    Idade is Ano - AnoNascimento.

% Conta recursivamente os elementos de uma lista.
conta_elementos([], 0).
conta_elementos([_ | Cauda], Total) :-
    conta_elementos(Cauda, Parcial),
    Total is Parcial + 1.

% Conta a quantidade de filmes distintos cadastrados para uma pessoa.
quantidade_de_filmes(Pessoa, Total) :-
    findall(Filme, atuou_em(Pessoa, Filme, _), Lista),
    sort(Lista, FilmesUnicos),
    conta_elementos(FilmesUnicos, Total).
