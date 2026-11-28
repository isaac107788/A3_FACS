% ============================================================
% VERSAO UNIFICADA PARA SWISH - sem necessidade de consults externos
% Copie todo este arquivo para https://swish.swi-prolog.org/
% ============================================================

% Projeto A3 - Base de fatos biograficos e profissionais.
% Criterio: ano do lancamento comercial original.
% Fontes e ressalvas: docs/levantamento_biografico.md e docs/pesquisa_e_referencias.md.

pessoa(jason_statham).
pessoa(barry_statham).
pessoa(eileen_yates).
pessoa(lee_statham).
pessoa(rosie_huntington_whiteley).
pessoa(jack_oscar_statham).
pessoa(isabella_james_statham).

nome_completo(jason_statham, 'Jason Statham').
data_nascimento(jason_statham, data(1967, 7, 26)).
local_nascimento(jason_statham, shirebrook, derbyshire, inglaterra).
nacionalidade(jason_statham, inglesa).

pai_de(barry_statham, jason_statham).
mae_de(eileen_yates, jason_statham).
irmao_de(jason_statham, lee_statham).

pratica_esporte(jason_statham, saltos_ornamentais).
integrante_equipe_mergulho_britanica(jason_statham).
participou_seletiva_olimpica(jason_statham, seul_1988).
participou_seletiva_olimpica(jason_statham, barcelona_1992).
participou_evento(jason_statham, jogos_commonwealth_auckland_1990).
resultado_competicao(jason_statham, jogos_commonwealth_auckland_1990, trampolim_1m, 8).
resultado_competicao(jason_statham, jogos_commonwealth_auckland_1990, trampolim_3m, 11).
resultado_competicao(jason_statham, jogos_commonwealth_auckland_1990, plataforma_10m, 11).

% As duas profissoes sao mantidas juntas para evitar aviso de discontiguous.
profissao(jason_statham, modelo).
profissao(jason_statham, ator).
trabalho_modelo(jason_statham, french_connection).
trabalho_modelo(jason_statham, levis).
trabalho_modelo(jason_statham, tommy_hilfiger).

% filme(Identificador, AnoLancamentoComercial).
filme(lock_stock_and_two_smoking_barrels, 1998).
filme(snatch, 2000).
filme(the_transporter, 2002).
filme(the_italian_job, 2003).
filme(crank, 2006).
filme(war, 2007).
filme(the_bank_job, 2008).
filme(death_race, 2008).
filme(the_expendables, 2010).
filme(the_mechanic, 2011).
filme(spy, 2015).
filme(furious_7, 2015).
filme(mechanic_resurrection, 2016).
filme(the_meg, 2018).
filme(fast_and_furious_presents_hobbs_and_shaw, 2019).
filme(wrath_of_man, 2021).
filme(operation_fortune_ruse_de_guerre, 2023).
filme(fast_x, 2023).
filme(meg_2_the_trench, 2023).
filme(expend4bles, 2023).
filme(the_beekeeper, 2024).
filme(a_working_man, 2025).
filme(shelter, 2026).
filme(mutiny, 2026).

titulo_original(lock_stock_and_two_smoking_barrels, 'Lock, Stock and Two Smoking Barrels').
titulo_original(snatch, 'Snatch').
titulo_original(the_transporter, 'The Transporter').
titulo_original(the_italian_job, 'The Italian Job').
titulo_original(crank, 'Crank').
titulo_original(war, 'War').
titulo_original(the_bank_job, 'The Bank Job').
titulo_original(death_race, 'Death Race').
titulo_original(the_expendables, 'The Expendables').
titulo_original(the_mechanic, 'The Mechanic').
titulo_original(spy, 'Spy').
titulo_original(furious_7, 'Furious 7').
titulo_original(mechanic_resurrection, 'Mechanic: Resurrection').
titulo_original(the_meg, 'The Meg').
titulo_original(fast_and_furious_presents_hobbs_and_shaw, 'Fast & Furious Presents: Hobbs & Shaw').
titulo_original(wrath_of_man, 'Wrath of Man').
titulo_original(operation_fortune_ruse_de_guerre, 'Operation Fortune: Ruse de Guerre').
titulo_original(fast_x, 'Fast X').
titulo_original(meg_2_the_trench, 'Meg 2: The Trench').
titulo_original(expend4bles, 'Expend4bles').
titulo_original(the_beekeeper, 'The Beekeeper').
titulo_original(a_working_man, 'A Working Man').
titulo_original(shelter, 'Shelter').
titulo_original(mutiny, 'Mutiny').

% atuou_em(Ator, Filme, Personagem).
atuou_em(jason_statham, lock_stock_and_two_smoking_barrels, bacon).
atuou_em(jason_statham, snatch, turkish).
atuou_em(jason_statham, the_transporter, frank_martin).
atuou_em(jason_statham, the_italian_job, handsome_rob).
atuou_em(jason_statham, crank, chev_chelios).
atuou_em(jason_statham, war, jack_crawford).
atuou_em(jason_statham, the_bank_job, terry_leather).
atuou_em(jason_statham, death_race, jensen_ames).
atuou_em(jason_statham, the_expendables, lee_christmas).
atuou_em(jason_statham, the_mechanic, arthur_bishop).
atuou_em(jason_statham, spy, rick_ford).
atuou_em(jason_statham, furious_7, deckard_shaw).
atuou_em(jason_statham, mechanic_resurrection, arthur_bishop).
atuou_em(jason_statham, the_meg, jonas_taylor).
atuou_em(jason_statham, fast_and_furious_presents_hobbs_and_shaw, deckard_shaw).
atuou_em(jason_statham, wrath_of_man, h).
atuou_em(jason_statham, operation_fortune_ruse_de_guerre, orson_fortune).
atuou_em(jason_statham, fast_x, deckard_shaw).
atuou_em(jason_statham, meg_2_the_trench, jonas_taylor).
atuou_em(jason_statham, expend4bles, lee_christmas).
atuou_em(jason_statham, the_beekeeper, adam_clay).
atuou_em(jason_statham, a_working_man, levon_cade).
atuou_em(jason_statham, shelter, mason).
atuou_em(jason_statham, mutiny, cole_reed).

% trabalhou_com_diretor(Ator, Filme, Diretor).
trabalhou_com_diretor(jason_statham, lock_stock_and_two_smoking_barrels, guy_ritchie).
trabalhou_com_diretor(jason_statham, snatch, guy_ritchie).
trabalhou_com_diretor(jason_statham, the_transporter, louis_leterrier).
trabalhou_com_diretor(jason_statham, the_italian_job, f_gary_gray).
trabalhou_com_diretor(jason_statham, crank, mark_neveldine).
trabalhou_com_diretor(jason_statham, crank, brian_taylor).
trabalhou_com_diretor(jason_statham, war, philip_atwell).
trabalhou_com_diretor(jason_statham, the_bank_job, roger_donaldson).
trabalhou_com_diretor(jason_statham, death_race, paul_w_s_anderson).
trabalhou_com_diretor(jason_statham, the_expendables, sylvester_stallone).
trabalhou_com_diretor(jason_statham, the_mechanic, simon_west).
trabalhou_com_diretor(jason_statham, spy, paul_feig).
trabalhou_com_diretor(jason_statham, furious_7, james_wan).
trabalhou_com_diretor(jason_statham, mechanic_resurrection, dennis_gansel).
trabalhou_com_diretor(jason_statham, the_meg, jon_turteltaub).
trabalhou_com_diretor(jason_statham, fast_and_furious_presents_hobbs_and_shaw, david_leitch).
trabalhou_com_diretor(jason_statham, wrath_of_man, guy_ritchie).
trabalhou_com_diretor(jason_statham, operation_fortune_ruse_de_guerre, guy_ritchie).
trabalhou_com_diretor(jason_statham, fast_x, louis_leterrier).
trabalhou_com_diretor(jason_statham, meg_2_the_trench, ben_wheatley).
trabalhou_com_diretor(jason_statham, expend4bles, scott_waugh).
trabalhou_com_diretor(jason_statham, the_beekeeper, david_ayer).
trabalhou_com_diretor(jason_statham, a_working_man, david_ayer).
trabalhou_com_diretor(jason_statham, shelter, ric_roman_waugh).
trabalhou_com_diretor(jason_statham, mutiny, jean_francois_richet).

% Generos: apenas classificacoes cobertas pela pesquisa documentada.
genero(lock_stock_and_two_smoking_barrels, comedia).
genero(lock_stock_and_two_smoking_barrels, crime).
genero(snatch, comedia).
genero(snatch, crime).
genero(snatch, suspense).
genero(the_transporter, acao).
genero(the_transporter, suspense).
genero(the_italian_job, acao).
genero(the_italian_job, crime).
genero(crank, acao).
genero(crank, suspense).
genero(war, acao).
genero(the_bank_job, crime).
genero(the_bank_job, suspense).
genero(death_race, acao).
genero(death_race, ficcao_cientifica).
genero(the_expendables, acao).
genero(the_mechanic, acao).
genero(spy, acao).
genero(spy, comedia).
genero(furious_7, acao).
genero(mechanic_resurrection, acao).
genero(the_meg, acao).
genero(the_meg, ficcao_cientifica).
genero(fast_and_furious_presents_hobbs_and_shaw, acao).
genero(fast_and_furious_presents_hobbs_and_shaw, aventura).
genero(wrath_of_man, acao).
genero(wrath_of_man, suspense).
genero(operation_fortune_ruse_de_guerre, acao).
genero(operation_fortune_ruse_de_guerre, comedia).
genero(fast_x, acao).
genero(meg_2_the_trench, acao).
genero(meg_2_the_trench, ficcao_cientifica).
genero(expend4bles, acao).
genero(the_beekeeper, acao).
genero(a_working_man, acao).
genero(shelter, acao).
genero(mutiny, acao).

% Vida pessoal: somente dados publicos e relevantes para o trabalho.
parceira(jason_statham, rosie_huntington_whiteley).
noivado(jason_statham, rosie_huntington_whiteley, 2016).
filho_de(jack_oscar_statham, jason_statham).
filha_de(isabella_james_statham, jason_statham).
ano_nascimento(jack_oscar_statham, 2017).
ano_nascimento(isabella_james_statham, 2022).

% Premiacoes, indicacoes e homenagens.
% Fonte detalhada e ressalvas: docs/premiacoes_e_indicacoes.md.
% reconhecimento_individual(Pessoa, Evento, Ano, Categoria, Obra, Resultado).

reconhecimento_individual(jason_statham, women_film_critics_circle, 2006,
    personagem_masculino_mais_ofensivo, crank, vencedor).
reconhecimento_individual(jason_statham, teen_choice, 2008,
    choice_movie_rumble, war, indicado).
reconhecimento_individual(jason_statham, teen_choice, 2015,
    choice_movie_villain, furious_7, indicado).
reconhecimento_individual(jason_statham, critics_choice, 2016,
    melhor_ator_em_comedia, spy, indicado).
reconhecimento_individual(jason_statham, alliance_of_women_film_journalists, 2016,
    maior_diferenca_de_idade_entre_protagonistas, mechanic_resurrection, indicado).
reconhecimento_individual(jason_statham, national_film_and_television_awards_usa, 2019,
    melhor_ator, fast_and_furious_presents_hobbs_and_shaw, indicado).
reconhecimento_individual(jason_statham, national_film_awards_uk, 2020,
    melhor_ator, fast_and_furious_presents_hobbs_and_shaw, indicado).
reconhecimento_individual(jason_statham, shorty_awards, 2020,
    actor_categoria_digital, redes_sociais, indicado).
reconhecimento_individual(jason_statham, razzie, 2024,
    pior_ator, meg_2_the_trench, indicado).
reconhecimento_individual(jason_statham, the_baldies, 2026,
    bald_of_the_year, nenhuma_obra_especifica, indicado).
reconhecimento_individual(jason_statham, the_baldies, 2026,
    bald_icon, nenhuma_obra_especifica, indicado).
reconhecimento_individual(jason_statham, the_baldies, 2026,
    melhor_ator_careca, nenhuma_obra_especifica, indicado).

% Indicacoes de filme/equipe: nao atribuir como premio individual ao ator.
% indicacao_coletiva(Obra, Evento, Ano, Categoria).
indicacao_coletiva(expend4bles, razzie, 2024, pior_filme).
indicacao_coletiva(expend4bles, razzie, 2024, pior_dupla_de_cena_qualquer_dois_mercenarios).

% Homenagem esportiva separada de premios cinematograficos.
% homenagem(Pessoa, Instituicao, Ano, Descricao).
homenagem(jason_statham, international_sports_hall_of_fame, 2014,
    classe_de_2014_relacionada_a_trajetoria_esportiva).

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
    ).

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
