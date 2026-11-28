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
filme(the_bank_job, 2008).
filme(death_race, 2008).
filme(the_expendables, 2010).
filme(the_mechanic, 2011).
filme(spy, 2015).
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
titulo_original(the_bank_job, 'The Bank Job').
titulo_original(death_race, 'Death Race').
titulo_original(the_expendables, 'The Expendables').
titulo_original(the_mechanic, 'The Mechanic').
titulo_original(spy, 'Spy').
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
atuou_em(jason_statham, the_bank_job, terry_leather).
atuou_em(jason_statham, death_race, jensen_ames).
atuou_em(jason_statham, the_expendables, lee_christmas).
atuou_em(jason_statham, the_mechanic, arthur_bishop).
atuou_em(jason_statham, spy, rick_ford).
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
trabalhou_com_diretor(jason_statham, the_bank_job, roger_donaldson).
trabalhou_com_diretor(jason_statham, death_race, paul_w_s_anderson).
trabalhou_com_diretor(jason_statham, the_expendables, sylvester_stallone).
trabalhou_com_diretor(jason_statham, the_mechanic, simon_west).
trabalhou_com_diretor(jason_statham, spy, paul_feig).
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
genero(the_bank_job, crime).
genero(the_bank_job, suspense).
genero(death_race, acao).
genero(death_race, ficcao_cientifica).
genero(the_expendables, acao).
genero(the_mechanic, acao).
genero(spy, acao).
genero(spy, comedia).
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
