# Resumo expandido — Jason Statham: vida, trajetória e carreira representadas em PROLOG

**Instituição:** Universidade Salvador (UNIFACS)  
**Disciplina:** Matemática Computacional  
**Período:** 2º semestre  
**Integrantes:** [Inserir nomes completos e RAs]  
**Docente:** [Inserir nome]  
**Data:** [Inserir data de entrega]

## Resumo

Este trabalho apresenta a construção de uma base de conhecimento em PROLOG para representar, de forma lógica e consultável, informações selecionadas sobre a vida, a trajetória esportiva e a carreira cinematográfica do ator britânico Jason Statham. A proposta relaciona pesquisa e organização de dados com conteúdos de Matemática Computacional, especialmente representação simbólica, lógica de predicados, fatos, regras, unificação e inferência. A metodologia envolveu a consulta a fontes biográficas, esportivas e cinematográficas, o registro das informações em predicados e a elaboração de regras para responder perguntas que não dependem apenas de fatos isolados. A implementação foi organizada em módulos para fatos, premiações, regras, consultas e testes. Entre os recursos utilizados estão comparações aritméticas, predicados de coleção, recursividade e testes automatizados com PL-Unit. A base reúne uma seleção de 24 filmes e informações biográficas e esportivas documentadas, não tendo a pretensão de constituir uma biografia exaustiva. Os testes automatizados do projeto foram executados com resultado de 16 casos aprovados. O desenvolvimento demonstra como a programação lógica pode transformar dados estruturados em uma pequena base de conhecimento capaz de responder consultas e produzir conclusões por inferência.

**Palavras-chave:** Matemática Computacional; PROLOG; programação lógica; base de conhecimento; inferência.

## 1. Introdução

A programação lógica permite representar conhecimento por meio de relações declarativas, nas quais fatos descrevem informações conhecidas e regras estabelecem condições para derivar novas respostas. Diferentemente de uma abordagem centrada em sequências explícitas de instruções, em PROLOG o programador declara relações e consulta o sistema para verificar quais valores satisfazem determinada condição.

O tema escolhido foi a vida e a carreira de Jason Statham, ator britânico que também possui trajetória anterior em saltos ornamentais e trabalhos como modelo. O assunto oferece diferentes tipos de relações que podem ser formalizadas: pessoas e parentescos, eventos esportivos e resultados, filmes e anos de lançamento, personagens, diretores, gêneros cinematográficos e reconhecimentos.

A escolha permite aplicar conceitos de lógica computacional a um conjunto de dados concreto. Além de armazenar informações, o sistema pode combinar relações para responder questões como quais diretores trabalharam repetidamente com o ator, quais filmes pertencem a determinado gênero cadastrado ou qual era sua idade em uma data específica.

## 2. Objetivos

### 2.1 Objetivo geral

Construir uma base de fatos e regras em PROLOG capaz de armazenar informações verificáveis sobre a vida pessoal, a trajetória esportiva e a carreira cinematográfica de Jason Statham, permitindo consultas e inferências lógicas.

### 2.2 Objetivos específicos

- Organizar informações biográficas em predicados e fatos atômicos.
- Representar relações entre pessoas, filmes, personagens, diretores, gêneros e eventos.
- Elaborar regras que deduzam informações a partir da combinação de fatos.
- Demonstrar consultas simples e compostas por meio do interpretador PROLOG.
- Aplicar unificação, comparações aritméticas, predicados de coleção e recursividade.
- Documentar as fontes utilizadas, os critérios de seleção e as limitações da base.

## 3. Fundamentação teórica

PROLOG é uma linguagem de programação declarativa baseada em lógica de predicados. Um programa é formado principalmente por fatos e regras. Um fato registra uma relação considerada verdadeira dentro da base de conhecimento, enquanto uma regra define em quais condições uma relação pode ser concluída.

As consultas são submetidas ao mecanismo de resolução do interpretador. Durante esse processo, o sistema procura unificar os termos da consulta com os fatos e regras disponíveis. Variáveis, escritas com inicial maiúscula ou sublinhado, permitem solicitar valores desconhecidos; átomos, normalmente iniciados por letra minúscula, identificam constantes.

A implementação também utiliza recursos da linguagem SWI-Prolog, como `findall/3` para reunir soluções, `sort/2` para ordenar e eliminar duplicatas, `setof/3` para obter conjuntos de respostas e recursividade para percorrer listas. Esses mecanismos ampliam as consultas para além da simples recuperação de um fato isolado.

## 4. Metodologia

O trabalho foi desenvolvido em etapas. Inicialmente, foi delimitado o tema e foram identificados os grupos de informações relevantes. Em seguida, foram consultadas fontes biográficas, registros esportivos e páginas institucionais de organizações cinematográficas e estúdios. Quando havia divergência entre fontes, foi adotado o registro considerado mais específico e confiável para o fato em questão, mantendo a ressalva na documentação.

Um exemplo importante desse cuidado está na trajetória esportiva: o registro da Team England informa que Statham participou de seletivas olímpicas, mas não conquistou vaga nos Jogos. Por isso, o projeto não o classifica como atleta olímpico. Também foi utilizado o termo “saltos ornamentais” para descrever a modalidade esportiva.

Após a pesquisa, as informações foram convertidas em predicados. A base foi separada em arquivos para facilitar manutenção e compreensão: fatos, premiações, regras, consultas, arquivo principal e testes. Por fim, foram preparadas consultas demonstrativas e testes automatizados no SWI-Prolog.

## 5. Desenvolvimento e implementação

A base de conhecimento representa diferentes dimensões da trajetória do ator:

- **Biografia:** nascimento, local de origem e relações familiares públicas relevantes ao escopo.
- **Esportes:** prática de saltos ornamentais, participação na equipe britânica, seletivas e resultados esportivos.
- **Atividades profissionais anteriores ao cinema:** trabalhos como modelo e campanhas documentadas.
- **Cinema:** filmes selecionados, anos, personagens, diretores e gêneros confirmados nas fontes.
- **Vida pessoal:** informações públicas essenciais, como parceria e filhos, sem ampliar a pesquisa para dados privados.
- **Reconhecimentos:** prêmios e indicações individuais, indicações coletivas de obras e homenagem esportiva, tratados em categorias distintas.

As regras combinam fatos para produzir respostas. Entre as funcionalidades desenvolvidas estão a identificação de uma trajetória multidisciplinar, a consulta de filmes por gênero e período, a identificação de colaborações recorrentes com diretores, o cálculo de idade em uma data e a contagem de elementos ou filmes.

A estrutura modular inclui `fatos.pl`, `premiacoes.pl`, `regras.pl`, `consultas.pl`, `main.pl` e `testes.pl`. Também foi preparada uma versão unificada para uso no SWISH, ambiente web de execução de PROLOG.

## 6. Resultados e discussão

O resultado é uma base de conhecimento consultável que demonstra a diferença entre informação cadastrada diretamente e informação obtida por inferência. Por exemplo, os dados de filmes e diretores podem ser combinados por uma regra para identificar colaborações recorrentes; da mesma forma, a data de nascimento pode ser combinada com uma data de referência para calcular a idade.

A implementação utiliza recursos de nível intermediário da linguagem, incluindo regras compostas, unificação, comparações numéricas, operações sobre listas e recursividade. A suíte automatizada do projeto foi registrada com 16 testes aprovados. Esse resultado indica que os cenários cobertos pelos testes apresentaram as respostas esperadas; não significa, por si só, que todos os fatos possíveis da biografia ou todos os comportamentos do programa estejam verificados.

A base contém uma seleção de 24 filmes. Portanto, consultas quantitativas e conclusões sobre filmografia devem ser interpretadas dentro desse recorte, e não como totais definitivos de toda a carreira do ator. A cobertura de gêneros também depende da disponibilidade de fontes para cada título.

## 7. Conclusão

O desenvolvimento permitiu aplicar conceitos de Matemática Computacional por meio da construção de uma representação lógica de informações reais. A organização em fatos e regras mostrou como PROLOG pode armazenar conhecimento e responder perguntas por unificação e inferência, enquanto os predicados de coleção e a recursividade permitiram elaborar consultas mais elaboradas.

O projeto também evidenciou a importância da qualidade dos dados: uma base lógica depende de informações bem delimitadas, fontes identificáveis e distinção entre fatos comprovados e conclusões derivadas. Como continuidade, recomenda-se ampliar gradualmente a filmografia e os dados biográficos, sempre com referências verificáveis, além de registrar evidências das consultas executadas durante a apresentação.

## Referências

- AMZI! Inc. **Prolog Tutorial**. Disponível em: https://www.amzi.com/AdventureInProlog/. Acesso em: [inserir data].
- BIOGRAPHY.COM. **Jason Statham**. Disponível em: https://www.biography.com/actors/jason-statham. Acesso em: [inserir data].
- BRITISH FILM INSTITUTE. **Lock, Stock and Two Smoking Barrels (1998)**. Disponível em: https://www.bfi.org.uk/film/fd9ccff3-7080-5231-8010-ae112a86d104/lock-stock-and-two-smoking-barrels. Acesso em: [inserir data].
- SWI-PROLOG. **SWI-Prolog Documentation**. Disponível em: https://www.swi-prolog.org/pldoc/. Acesso em: [inserir data].
- TEAM ENGLAND. **Auckland 1990: Jason Statham's unknown Team England career**. Disponível em: https://www.teamengland.org/news/auckland-1990-jason-stathams-unknown-team-england-career. Acesso em: [inserir data].
- GERSTING, Judith L. **Fundamentos Matemáticos para a Ciência da Computação**. 3. ed. [Completar cidade, editora e ano conforme a edição utilizada].
- UNIVERSAL PICTURES. **Fast & Furious Presents: Hobbs & Shaw**. Disponível em: https://www.universalpicturesathome.com/movies/fast-furious-presents-hobbs-shaw. Acesso em: [inserir data].

> Antes da entrega, preencher os nomes e RAs, docente, data de acesso às fontes e os dados bibliográficos completos da edição de Gersting utilizada. Conferir também as normas de formatação exigidas pelo professor.
