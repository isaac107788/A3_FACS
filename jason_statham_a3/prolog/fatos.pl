% ============================================================
% Projeto A3 - Matematica Computacional Aplicada
% Tema: Jason Statham - vida, trajetoria e carreira
% Base de fatos (versao inicial)
% ============================================================

% ---------- Identificacao e infancia ----------
pessoa(jason_statham).
nome_completo(jason_statham, 'Jason Statham').
data_nascimento(jason_statham, data(1967, 7, 26)).
local_nascimento(jason_statham, shirebrook, derbyshire, inglaterra).
nacionalidade(jason_statham, inglesa).

pai_de(barry_statham, jason_statham).
mae_de(eileen_yates, jason_statham).
irmao_de(jason_statham, lee_statham).

% ---------- Esportes e competicoes ----------
pratica_esporte(jason_statham, saltos_ornamentais).
integrante_equipe_mergulho_britanica(jason_statham).

% Participou das seletivas, mas nao conquistou vaga olimpica.
participou_seletiva_olimpica(jason_statham, seul_1988).
participou_seletiva_olimpica(jason_statham, barcelona_1992).

participou_evento(jason_statham, jogos_commonwealth_auckland_1990).
resultado_competicao(jason_statham, jogos_commonwealth_auckland_1990, trampolim_1m, 8).
resultado_competicao(jason_statham, jogos_commonwealth_auckland_1990, trampolim_3m, 11).
resultado_competicao(jason_statham, jogos_commonwealth_auckland_1990, plataforma_10m, 11).

% ---------- Modelagem e trabalhos anteriores ao cinema ----------
profissao(jason_statham, modelo).
trabalho_modelo(jason_statham, french_connection).
trabalho_modelo(jason_statham, levis).
trabalho_modelo(jason_statham, tommy_hilfiger).

% ---------- Carreira cinematografica ----------
profissao(jason_statham, ator).

% filme(Titulo, Ano de lancamento)
filme(lock_stock_and_two_smoking_barrels, 1998).
filme(snatch, 2000).
filme(the_transporter, 2002).
filme(the_italian_job, 2003).
filme(the_bank_job, 2008).
filme(death_race, 2008).
filme(the_expendables, 2010).
filme(the_mechanic, 2011).
filme(spy, 2015).
filme(the_meg, 2018).
filme(fast_and_furious_presents_hobbs_and_shaw, 2019).
filme(the_beekeeper, 2024).
filme(a_working_man, 2025).

% atuou_em(Ator, Filme, Personagem)
atuou_em(jason_statham, lock_stock_and_two_smoking_barrels, bacon).
atuou_em(jason_statham, snatch, turkish).
atuou_em(jason_statham, the_transporter, frank_martin).
atuou_em(jason_statham, the_italian_job, handsome_rob).
atuou_em(jason_statham, the_bank_job, terry_leather).
atuou_em(jason_statham, death_race, jensen_ames).
atuou_em(jason_statham, the_expendables, lee_christmas).
atuou_em(jason_statham, the_mechanic, arthur_bishop).
atuou_em(jason_statham, spy, rick_ford).
atuou_em(jason_statham, the_meg, jonas_taylor).
atuou_em(jason_statham, fast_and_furious_presents_hobbs_and_shaw, deckard_shaw).
atuou_em(jason_statham, the_beekeeper, adam_clay).
atuou_em(jason_statham, a_working_man, levon_cade).

% direcao e colaboracoes
trabalhou_com_diretor(jason_statham, lock_stock_and_two_smoking_barrels, guy_ritchie).
trabalhou_com_diretor(jason_statham, snatch, guy_ritchie).
trabalhou_com_diretor(jason_statham, the_transporter, louis_leterrier).
trabalhou_com_diretor(jason_statham, the_transporter, cory_yuen).
trabalhou_com_diretor(jason_statham, the_italian_job, f_gary_gray).
trabalhou_com_diretor(jason_statham, the_bank_job, roger_donaldson).
trabalhou_com_diretor(jason_statham, death_race, paul_w_s_anderson).
trabalhou_com_diretor(jason_statham, the_expendables, sylvester_stallone).
trabalhou_com_diretor(jason_statham, the_meg, jon_turteltaub).
trabalhou_com_diretor(jason_statham, spy, paul_feig).
trabalhou_com_diretor(jason_statham, fast_and_furious_presents_hobbs_and_shaw, david_leitch).
trabalhou_com_diretor(jason_statham, the_beekeeper, david_ayer).
trabalhou_com_diretor(jason_statham, a_working_man, david_ayer).

% Generos cadastrados somente quando identificados nas fontes consultadas.
genero(lock_stock_and_two_smoking_barrels, comedia).
genero(lock_stock_and_two_smoking_barrels, drama).
genero(lock_stock_and_two_smoking_barrels, suspense).
genero(snatch, comedia).
genero(snatch, crime).
genero(snatch, acao).
genero(snatch, suspense).
genero(the_transporter, acao).
genero(the_transporter, aventura).
genero(fast_and_furious_presents_hobbs_and_shaw, acao).
genero(fast_and_furious_presents_hobbs_and_shaw, suspense).

% ---------- Vida pessoal ----------
parceira(jason_statham, rosie_huntington_whiteley).
noivado(jason_statham, rosie_huntington_whiteley, 2016).
filho_de(jack_oscar_statham, jason_statham).
filha_de(isabella_james_statham, jason_statham).
ano_nascimento(jack_oscar_statham, 2017).
ano_nascimento(isabella_james_statham, 2022).
