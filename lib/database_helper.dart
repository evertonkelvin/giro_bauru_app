import 'dart:io';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  static const _databaseName = "GiroBauru.db";
  static const _databaseVersion = 1;

  static const table = 'Places';

  static const columnId = 'id';
  static const columnNome = 'nome';
  static const columnApelido = 'apelido';
  static const columnDescricao = 'descricao';
  static const columnUnidade = 'unidade';
  static const columnLogradouro = 'logradouro';
  static const columnQuadra = 'quadra';
  static const columnNumero = 'numero';
  static const columnBairro = 'bairro';
  static const columnCidade = 'cidade';
  static const columnEstado = 'estado';
  static const columnCep = 'cep';
  static const columnCategoria = 'categoria';
  static const columnTipo = 'tipo';
  static const columnSubtipo = 'subtipo';
  static const columnSetor = 'setor';
  static const columnLatitude = 'latitude';
  static const columnLongitude = 'longitude';
  static const columnImagem = 'imagem';

  var places = [
    {
      "nome": "Universidade Estadual Paulista Júlio de Mesquita Filho",
      "apelido": "UNESP",
      "descricao":
          "Em 15 de agosto de 1988, a UNESP incorpora a Universidade de Bauru – UB, com a seguinte estrutura: 03 Unidades Universitárias que oferecem Cursos de Graduação, Pós-Graduação, Mestrado/Doutorado, Cursos de Especialização, e 01 Unidade Administrativa.   FE – Faculdade de Engenharia FAAC – Faculdade de Arquitetura, Artes e Comunicação FC – Faculdade de Ciências AG – Administração Geral  Possui uma área total de 456,68. Atualmente possui 416 docentes e 496 servidores, atendendo diariamente mais de 7.000 alunos. hectares, e 71.087,52 m² de área construída, entre salas de aulas, laboratórios, biblioteca, departamentos de ensino e áreas administrativas.",
      "unidade": "Bauru",
      "logradouro": "Av. Eng. Luís Edmundo Carrijo Coube",
      "quadra": "14",
      "numero": "1",
      "bairro": "Núcleo Residencial Presidente Geisel",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17033360",
      "categoria": "Educação",
      "tipo": "Universidade",
      "subtipo": "Ensino Superior",
      "setor": "Público",
      "latitude": "-22.34929957693126",
      "longitude": "-49.0316471858431",
      "imagem": "https://www.ia.unesp.br/Modulos/Noticias/248/unesp.jpg"
    },
    {
      "nome": "Universidade de São Paulo",
      "apelido": "USP",
      "descricao":
          "A história da implantação do campus de Bauru da USP inicia-se com a criação da Faculdade de Farmácia e Odontologia de Bauru (FFOB) pela lei nº 161, de 24 de setembro de 1948. Porém, em virtude de grandes dificuldades de estruturação física e financeira, somente em 1962 foi possível o início de seu funcionamento, provisoriamente, no prédio do grupo escolar Silvério São João, tendo sido proferida a sua aula inaugural em 17 de maio deste ano. Sua denominação foi mantida até março de 1965, quando o decreto nº 44.622 alterou-a para Faculdade de Odontologia de Bauru (FOB), denominada assim até hoje. De um trabalho de pesquisa realizado na FOB foi fundado em 1967 o Centro de Pesquisa e Reabilitação de Lesões Lábio-Palatais da USP, que por meio de portaria do reitor Miguel Reale, em março de 1973 foi transformado em Centro Interdepartamental da FOB e em março de 1976, pelo decreto do governador do Estado de São Paulo, Paulo Egydio Martins transformou-se em hospital, subordinado à reitoria da USP e hoje denominado Hospital de Reabilitação de Anomalias Craniofaciais (HRAC). Em virtude do funcionamento de uma unidade de ensino, a FOB e de um hospital especializado, o HRAC, ocorreu a instalação oficial do campus universitário de Bauru da USP, em 25 de junho de 1985, pela portaria GR 1.821, do reitor Antonio Hélio Guerra Vieira. Constituídos os cinco campi da USP no interior do estado: Bauru, Piracicaba, Pirassununga, Ribeirão Preto e São Carlos, foram implantadas as Prefeituras, pela resolução nº 3.195 de 26 de junho de 1986 e portaria GR 2.221 do reitor José Goldemberg, que estabeleceu sua finalidade, como órgão de integração e apoio aos serviços comuns do campus. Funcionando como um órgão de suporte das duas unidades do campus, a Prefeitura do Campus Administrativo de Bauru (PCAB) tem a finalidade de assegurar o bem estar físico e psicossocial da comunidade universitária, desenvolvendo serviços comuns.",
      "unidade": "Bauru",
      "logradouro": "Alameda Dr. Octávio Pinheiro Brisolla",
      "quadra": "9",
      "numero": "75",
      "bairro": "Vila Regina",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17012230",
      "categoria": "Educação",
      "tipo": "Universidade",
      "subtipo": "Ensino Superior",
      "setor": "Público",
      "latitude": "-22.334744982792987",
      "longitude": "-49.058430512575534",
      "imagem": "https://i.ytimg.com/vi/Q60V6TgUxAE/maxresdefault.jpg"
    },
    {
      "nome": "Universidade Virtual do Estado de São Paulo",
      "apelido": "UNIVESP",
      "descricao":
          "A UNIVESP foi criada em 2012 com o propósito de colocar a tecnologia a serviço da educação e, assim, contribuir com a universalização da excelência do Ensino Superior no Brasil. Histórico: A Universidade Virtual do Estado de São Paulo (Univesp) é uma instituição de ensino superior, exclusivamente de educação à distância, criada pela Lei nº 14.836, de 20 de julho de 2012, mantida pelo Governo do Estado de São Paulo e vinculada à Secretaria de Desenvolvimento Econômico (SDE). Entre seus principais parceiros destacam-se a  Universidade de São Paulo (USP), Universidade Estadual Paulista (UNESP), Universidade Estadual de Campinas (UNICAMP) e Centro Paula Souza (CPS). A Instituição foi credenciada junto ao Conselho Estadual de Educação de São Paulo pela Portaria CEE-GP nº 120, de 22 de março de 2013. Seu credenciamento pelo Ministério da Educação (MEC) para a oferta de cursos superiores na modalidade a distância deu-se pela Portaria Ministerial nº 945, de 18 de setembro de 2015, após o parecer favorável dado pelo Conselho Nacional de Educação CNE/CES nº 245/2005. Conforme o estabelecido em sua lei de criação, a Univesp tem por objetivo o ensino, a pesquisa e a extensão, obedecendo ao princípio de sua indissociabilidade, integrados pelo conhecimento como bem público. Ela se constitui como universidade dedicada à formação de educadores – para a universalização do acesso à educação formal e à educação para cidadania –, assim como a de outros profissionais comprometidos com o bem-estar social e cultural da população. Com Estatuto e Regimento Geral aprovados por Decreto, a Univesp se submete às normas constitucionais e à legislação aplicáveis às pessoas jurídicas integrantes da administração pública indireta do Estado. A universidade tem autonomia didático-científica, administrativa e de gestão financeira e patrimonial. Sua existência jurídica tem prazo de duração indeterminado, com sede e foro na Comarca da Capital do Estado de São Paulo. Origem: A Fundação Univesp foi originada por meio do Programa Univesp – Universidade Virtual do Estado de São Paulo –, o qual foi vinculado à extinta Secretaria de Ensino Superior do Estado, e tinha como principal objetivo a expansão e melhor distribuição do ensino superior por meio do aumento do número de vagas ofertadas pelas universidades públicas paulistas. Para o cumprimento de seus objetivos, o Programa Univesp empreendeu ações junto às Faculdades de Tecnologia (FATECs), do Centro Paula Souza (CPS), ligado à Secretaria de Desenvolvimento, e às duas Faculdades de Medicina, ligadas à Secretaria de Ensino Superior. Com estrutura consorciada o Programa envolveu, ainda, a Fundação Padre Anchieta, a Imprensa Oficial e a Fundação de Amparo à Pesquisa do Estado (FAPESP). No período de vigência do Programa foram oferecidas: em 2009, 7.500 vagas em curso de Inglês Básico e 2.500 vagas de Espanhol Básico para estudantes do Centro Paula Souza; em 2010, 1.350 vagas no Curso de Pedagogia, em convênio com a Universidade Estadual Paulista Júlio de Mesquita Filho; em 2011, 1.000 vagas no Curso de Especialização em Ética, Valores e Cidadania na Escola e 360 vagas no Curso de Licenciatura em Ciências, repetido com novas 360 vagas em 2012 e em 2013, num total de 1.080 vagas, todas em convênio com a Universidade de São Paulo. Também foram desenvolvidos materiais para o oferecimento do curso de Gestão Empresarial em parceria com as FATECs do Centro Paula Souza. Em 2014, a UNIVESP realizou a primeira oferta de cursos próprios de graduação: Engenharia de Computação, Engenharia de Produção, Licenciatura em Matemática, Licenciatura em Física, Licenciatura em Química e Licenciatura em  Biologia. O processo ofereceu 3.330 vagas distribuídas em duas entradas, Licenciaturas: 2.034 vagas e Engenharias: 1296 vagas com mais de 12 mil inscrições, em 2015, a Univesp foi credenciada pelo Ministério da Educação (MEC) por meio da Portaria nº 945, de 18 de setembro e pelo Conselho Nacional de Educação (CNE). Em 2016, foram ofertadas mais 918 vagas, 414 vagas para Engenharia de Computação e 504 para Engenharia da Produção em 17 polos distribuídos em 16 municípios do Estado. Com o objetivo da universalização do ensino superior paulista., em 2017, foi iniciado o plano de expansão. A iniciativa ampliou o campo de atuação da Univesp  para todas as macrorregiões do Estado. No maior programa de inclusão do ensino superior do país, a universidade inseriu em 203 muncípios paulistas, mais de 35 mil estudantes.. Ainda em 2017, a Univesp solicitou junto ao Conselho Estadual de Educação – CEE-SP – o reconhecimento de todos os cursos oferecidos até 2016. Em 2018, os cursos de Engenharia, Química, Física, Biologia e Matemática foram reconhecidos. No mesmo ano, a Instituição formou os primeiros 169 alunos das Licenciaturas em Matemática, Química, Biologia e Física atendendo a demanda por professores nas escolas de educação básica. EM 2018, a Univesp também ofertou o expressivo número de 42.450 vagas, em dois vestibulares. Em 2019,  além da implantação de novos cursos, como,  Ciência de Dados, Bacharelado em Tecnologia da Inovação e Letras, a universidade realizou dois vestibulares e a oferta de mais de 21 mil vagas em todas as regiões do Estado. O vestibular 2019.2 destinou no segundo semestre 5.150 vagas para o Eixo de Licenciatura (Pedagogia, Matemática e Letras), voltadas a 184 polos de 156 municípios . Já o processo seletivo iniciado em outubro de 2019, para o ingresso de alunos em 2020, ofertou 16.100 vagas, sendo: 8.050 para Licenciaturas (Letras, Pedagogia e Matemática) e 8.050 para o Eixo de Computação (Bacharelado em Tecnologia da Informação, Ciência de Dados e Engenharia de Computação). As vagas foram oferecidas a 354 polos de 305 municípios do Estado, o maior vestibular em extensão territorial. Em 2020, a Universidade ofertou 16 mil vagas para mais de 300 municípios, o maior processo seletivo em extensão territorial e número de vagas gratuitas do ensino superior paulista. Foram oferecidos seis cursos, com duas áreas básicas de ingresso, via vestibular. As Licenciaturas em Letras, Matemática e Pedagogia e os voltados ao eixo de Computação: Bacharelado em Tecnologia da Informação (BTI), Bacharelado em Ciência de Dados e Engenharia de Computação. Em 2021, a Univesp disponibilizou 11.020 vagas para a graduação e superou o marco do ano anterior, com a oferta em 305 municípios, mais uma vez, o maior vestibular em extensão territorial do Estado.  Foram oferecidos seis cursos, com duas áreas básicas de ingresso: as Licenciaturas em Letras, Matemática e Pedagogia)e os voltados ao eixo de Computação ( Bacharelado em Tecnologia da Informação (BTI), Bacharelado em Ciência de Dados e Engenharia de Computação). Hoje, a Univesp totaliza 374 polos, em 325 municípios do Estado, ou seja, está presente em mais de 50% do território paulista. São mais de 50 mil alunos matriculados nos cursos de graduação e pós-graduação.",
      "unidade": "Bauru",
      "logradouro": "Av. Duque de Caxias",
      "quadra": "16",
      "numero": "55",
      "bairro": "Higienópolis",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17011020",
      "categoria": "Educação",
      "tipo": "Universidade",
      "subtipo": "Ensino Superior",
      "setor": "Público",
      "latitude": "-22.326655504168492",
      "longitude": "-49.06044697002488",
      "imagem":
          "https://univesp.br/sites/527174b7b24a527adc000002/assets/590b74fb9caf4d3c61001003/Univesp_logo_jpg_rgb.jpg"
    },
    {
      "nome": "Universidade do Sagrado Coração",
      "apelido": "USC/Unisagrado",
      "descricao":
          "Instituição Católica, Cleliana, Filantrópica, localizada em Bauru, com mais de 68 anos de tradição e inovação a favor da educação. Com mais de 68 anos de trabalho em prol da Educação, faz parte de sua essência, além de ser uma instituição Católica e Cleliana, a indissociabilidade entre Ensino, Pesquisa e Extensão.  Tem por vocação consagrar-se à investigação, ao ensino e à formação dos estudantes, reafirmando a busca da Verdade em todos os campos do conhecimento.  Declara constantemente seu compromisso social, traduzido em sua participação ativa na busca de soluções eficazes e sustentáveis para as necessidades dos indivíduos e da sociedade. Tem compromisso com a geração do saber que produz ruptura e transformação, que atende a sua responsabilidade de preservar o patrimônio cultural, que integre crítica e proposta, reflexão e ação, tradição e futuro em um diálogo permanente para que todo conhecimento desenvolvido no espaço acadêmico contribua para o bem social. Como instituição de ensino CATÓLICA, desenvolve suas atividades de ensino, pesquisa e extensão tendo como pressuposto e horizonte os valores do Evangelho. Dada sua natureza acadêmica – espaço, plural, universal – propõe ser um ambiente pluralista e dialogal, respeitando diferentes crenças e pensamentos que sejam afins com o objetivo central de buscar uma vida digna para todos. Como instituição de ensino CLELIANA, alimenta-se do espírito e do carisma da Bem-Aventurada Clélia Merloni, em sintonia com as atuais prioridades apostólicas do Instituto das Apóstolas do Sagrado Coração em vista da Nova Evangelização.  A identidade do UNISAGRADO determina uma perspectiva ética e humanista da educação. Desse modo, seu processo de ensino-aprendizagem baseia-se na relação dialógica e respeitosa entre os sujeitos que participam da construção do conhecimento. Determina que a investigação e a pesquisa orientem-se para a melhoria da qualidade e equidade na vida social, assim como as atividades de extensão estejam voltados para o serviço aos demais e à interação com a comunidade local. Portanto, toda a produção acadêmica está orientada a superar o pragmatismo e o utilitarismo, colocando o saber, a ciência e a técnica a serviço do homem, da verdade e da justiça. Em seus mais de 68 anos, o UNISAGRADO reafirma seu compromisso de ser – Ensino Superior de Excelência. O slogan representa a missão da instituição de ensino superior: Formação humana integral fundamentada nos princípios católicos, concretizada na excelência do ensino, da pesquisa e da extensão, expressa no compromisso social e na disseminação da ciência e do saber para o bem da sociedade. Essa Missão está no coração de todos que participam da comunidade acadêmica. Ela dá ritmo para que todos possam oferecer respostas e, ao mesmo tempo, instigar novos questionamentos aos estudantes. A interação dessa mensagem é o elo que mantém professores, funcionários e dirigentes unidos, trabalhando pelo mesmo ideal.",
      "unidade": "Bauru",
      "logradouro": "R. Irmã Arminda",
      "quadra": "10",
      "numero": "50",
      "bairro": "Jardim Brasil",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17011160",
      "categoria": "Educação",
      "tipo": "Universidade",
      "subtipo": "Ensino Superior",
      "setor": "Privado",
      "latitude": "-22.327638807227725",
      "longitude": "-49.05322005423427",
      "imagem":
          "https://cdns1.2rscms.com.br/custom/2008/uploads/header/topo_60f18c0fd3099.png"
    },
    {
      "nome": "Faculdade de Tecnologia",
      "apelido": "FATEC",
      "descricao":
          "A história da FATEC começou em 15 de janeiro de 1968, quando o então governador Roberto Costa Abreu decidiu ver a viabilidade da implantação de uma rede de cursos superiores de tecnologia em São Paulo, com duração de, no máximo, três anos.",
      "unidade": "Bauru",
      "logradouro": "R. Manoel Bento da Cruz",
      "quadra": "3",
      "numero": "30",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17015171",
      "categoria": "Educação",
      "tipo": "Universidade",
      "subtipo": "Ensino Superior",
      "setor": "Público",
      "latitude": "-22.329320873924555",
      "longitude": "-49.07358924415803",
      "imagem":
          "https://upload.wikimedia.org/wikipedia/commons/8/84/FATEC-logo1.jpg"
    },
    {
      "nome": "Universidade Nove de Julho",
      "apelido": "Uninove",
      "descricao":
          "Com mais de 60 anos dedicados à educação, a Universidade Nove de Julho é uma das maiores instituições privadas de ensino superior e pesquisa do Brasil. Possui moderna infraestrutura física e tecnológica, laboratórios de última geração, bibliotecas renovadas constantemente e corpo docente altamente qualificado. Pensando em oferecer o melhor para seus mais de 150 mil alunos, a UNINOVE disponibiliza mais de 90 cursos superiores de Graduação, formação específica e tecnologia; cerca de 100 cursos de Especialização e Master of Business Administration (MBA), todos com diversas opções na modalidade Educação a Distância (EAD). Oferece também 21 cursos de Mestrado e Doutorado, recomendados pela Coordenação de Aperfeiçoamento de Pessoal de Nível Superior (Capes), bem como diversos Cursos de Extensão. Segundo o Conselho Nacional de Pesquisa e Tecnologia (CNPq), a UNINOVE é uma das três universidades particulares do estado de São Paulo que mais desenvolve pesquisas institucionais, gerando conhecimento científico e contribuindo para o crescimento do país.",
      "unidade": "Bauru",
      "logradouro": "R. Nicolau Assis",
      "quadra": "s/n",
      "numero": "15",
      "bairro": "Jardim Panorama",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17011102",
      "categoria": "Educação",
      "tipo": "Universidade",
      "subtipo": "Ensino Superior",
      "setor": "Privado",
      "latitude": "-22.337253361309994",
      "longitude": "-49.05118723751113",
      "imagem": "https://onetclub.com.br/wp-content/uploads/2019/04/uninove.jpg"
    },
    {
      "nome": "Universidade Paulista",
      "apelido": "Unip",
      "descricao":
          "A Universidade Paulista - UNIP iniciou suas atividades em Bauru em julho de 1997, quando através da Portaria 338 de 6 de março de 1997, tendo em vista o parecer nº 129/97 da Câmara de Educação Superior do Conselho Nacional de Educação, conforme processo nº 23000.015202/96-77, do Ministério da Educação e Desporto, resolveu: aprovar a transferência de manutenção dos cursos superiores de Tecnologia em Processamento de Dados da Faculdade de Tecnologia em Processamento de Dados e Ciências com Habilitação em Matemática, da Faculdade de Ciências, mantidos pela Associação Bauruense de Ensino Superior e Cultura, para a Sociedade Unificada Paulista de Ensino Renovado Objetivo – Supero, mantenedora da Universidade Paulista – UNIP passando a integrar a Unidade Universitária da UNIP em Bauru – SP. Após a transferência desses dois cursos, foi realizado um processo seletivo em maio de 1997, sendo oferecidos onze novos cursos: Farmácia, Fisioterapia, Odontologia, Administração, Psicologia, Comunicação Social com habilitação em Publicidade e Propaganda, Direito, Ciência da Computação e Sistemas de Informação. Com os novos cursos, em agosto de 1997 a Universidade já atendia aproximadamente 1.500 alunos. Hoje, a UNIP de Bauru possui mais de 5.000 alunos em todas as áreas de ensino, distribuídos nos turnos manhã e noite, com 23 cursos de graduação Tradicional na modalidade Presencial, 13 cursos na modalidade FLEX e 42 cursos na modalidade Digital (EAD).",
      "unidade": "Bauru",
      "logradouro": "Rua Luís Levorato",
      "quadra": "s/n",
      "numero": "140",
      "bairro": "Chácaras Bauruenses",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17048290",
      "categoria": "Educação",
      "tipo": "Universidade",
      "subtipo": "Ensino Superior",
      "setor": "Privado",
      "latitude": "-22.371070382844692",
      "longitude": "-49.032221324043874",
      "imagem":
          "https://municipais.org.br/wp-content/uploads/2019/11/logo-UNIP.png"
    },
    {
      "nome": "Instituição Toledo de Ensino",
      "apelido": "ITE",
      "descricao":
          "Instituição Toledo de Ensino, é uma instituição de ensino superior sediada na cidade Bauru, interior paulista, Brasil. Foi fundada em 21 de abril de 1950 pelo professor Antônio Eufrásio de Toledo, e inicialmente foi intitulada de Escola Técnica de Bauru, oferecendo os cursos de Química Industrial e Pontes, Estradas e Edificações. De acordo com o Ranking Universitário Folha, a Faculdade de Direito da Instituição Toledo de Ensino está entre as 140 melhores do Brasil e foi a décima primeira do Estado de São Paulo em 2019.",
      "unidade": "Bauru",
      "logradouro": "Praça 9 de Julho",
      "quadra": "1",
      "numero": "51",
      "bairro": "Vila Pacifico",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17050790",
      "categoria": "Educação",
      "tipo": "Universidade",
      "subtipo": "Ensino Superior",
      "setor": "Privado",
      "latitude": "-22.324833716315926",
      "longitude": "-49.09200451214314",
      "imagem": "https://www.educabras.com/media/faculdades/image/ite.jpg"
    },
    {
      "nome": "Faculdades Integradas de Bauru",
      "apelido": "FIB",
      "descricao":
          "As Faculdades Integradas de Bauru (FIB) possuem uma história de tradição e pioneirismo no Centro-Oeste Paulista e o compromisso de oferecer um ensino de excelência a cada um de seus alunos. A instituição, genuinamente bauruense, foi fundada em 1998 pelo professor José Augusto Vieira Ranieri (Dudu Ranieri) e completa aniversário todo 21 de junho. Nas Faculdades Integradas de Bauru (FIB),  o atendimento  é personalizado em cada um dos setores, com acesso aos diretores, coordenadores e funcionários da instituição. Dessa forma, o aluno irá encontrar um campus acolhedor e familiar. A FIB valoriza o conhecimento a partir de conexões reais e humanas. E acredita em uma aprendizagem ativa e colaborativa, onde a troca de experiências favorece a assimilação dos conteúdos. Localizada em um campus com 300 mil m², oferece 20 cursos de graduação e 13 de pós-graduação, 64 laboratórios e mais de 150 professores especialistas, mestres e doutores. Possui também um conjunto poliesportivo com 5 mil m², academia de ginástica, centro de convivência, espaços para vivências e aulas ao ar livre, estacionamento com portaria, controle de entrada e saída, cerca elétrica, seguranças e ainda 400 m² de estacionamento coberto para motos. Desta forma, comprova sua vocação em oferecer o que há de melhor em ensino superior, aonde a qualidade é ressaltada nos seus cursos, no seu corpo docente, na sua infra-estrutura e nos seus alunos, que mostram isso no mercado de trabalho. Todos esses elementos reunidos reforçam o Projeto Pedagógico e Institucional da FIB, cujo foco é potencializar as capacidades humanas e sociais, criando um verdadeiro time de pessoas realizadas e bem preparadas para atuar em todas as dimensões de sua vida. A FIB acredita nas pessoas que fazem parte desta equipe – alunos, professores, colaboradores, comunidade – que dão sentido à evolução de seu trabalho de verdadeiramente oferecer o melhor ensino superior de Bauru e Região.  Missão: Formar profissionais de maneira integral e qualitativa, agregando valores universais de democracia e dignidade humana que permitam o exercício da profissão, além do pleno desenvolvimento cidadão e social. Visão: Ser uma instituição de ensino superior reconhecida pela qualidade em seus serviços educacionais, meios para que a sua comunidade acadêmica realize, em sua totalidade, as legítimas aspirações da pessoa humana, atuando em harmonia com a sociedade, apoiada em valores éticos, buscando sempre a fundamentação de recursos e a otimização de resultados e comprometida com as transformações do seu tempo.",
      "unidade": "Bauru",
      "logradouro": "R. José Santiago",
      "quadra": "s/n",
      "numero": "16",
      "bairro": "Vila Ipiranga",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17056100",
      "categoria": "Educação",
      "tipo": "Universidade",
      "subtipo": "Ensino Superior",
      "setor": "Privado",
      "latitude": "-22.34484751050656",
      "longitude": "-49.10715297311927",
      "imagem":
          "https://www.apcefsp.org.br/wp-content/uploads/2017/03/374558_344045885706363_1091803885_n.jpg"
    },
    {
      "nome": "Universidade Brasil",
      "apelido": "UNIESP",
      "descricao":
          "O Instituto de Ensino Superior de Bauru Ltda., encontra-se constituído sob a forma de sociedade civil de caráter educacional e prestadora de serviços relacionados ao ensino de forma geral, em especial o superior, com atuação no município de Bauru, Estado de São Paulo e em todo o território nacional. Foi fundado em 1999, no município de Bauru, por iniciativa de seus instituidores, Senhores Gerson Trevizani, José Luiz Garcia Peres, Gerson Trevizani Filho e Gustavo Luis Garcia, todos com larga experiência na área da administração escolar, onde atuam como dirigentes e mantenedores, respaldados pela experiência pessoal e institucional de cada um, com claro devotamento às causas sociais e benfeitores de irmandades em prol da população carente. O Instituto de Ensino Superior de Bauru S/C Ltda. tem origem no Preve - Sociedade Civil de Ensino Ltda, tradicional estabelecimento educacional, que atua em 11 (onze) municípios da região, e que são mantidos e dirigidos pelos instituidores do IESB S/C Ltda. A tradição e experiência do IESB S/C Ltda. está refletida na experiência de seus mantenedores, todos graduados em cursos de nível superior e atuante na área escolar. O ano de 1.975 constituiu-se num marco significativo, com a contratação de professores de primeira grandeza e a montagem de moderníssimos laboratórios, que são anualmente remodelados com a aquisição de novos equipamentos. Foram, ainda, neste mesmo ano, criados os cursos supletivos e os cursos profissionalizantes (Magistério, Processamento de Dados, Publicidade, etc.). Já em 1.976, o crescimento do número de alunos, que chegou a três mil, não afetou o nível de ensino. Os recursos didáticos foram ampliados, com a criação da segunda unidade, um novo prédio, que comportava novas salas de aulas, além de uma nova biblioteca. A ligação estabelecida com outro grupo de ensino de São Paulo, traz para a escola, um formidável aparelho técnico, provido de recursos didáticos ultra modernos, como circuito interno de TV a cores.",
      "unidade": "Bauru",
      "logradouro": "R. Anhangüera",
      "quadra": "9",
      "numero": "19",
      "bairro": "Vila Silva Pinto",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17013190",
      "categoria": "Educação",
      "tipo": "Universidade",
      "subtipo": "Ensino Superior",
      "setor": "Privado",
      "latitude": "-22.325621732915746",
      "longitude": "-49.06226036282878",
      "imagem":
          "http://uniesp.edu.br/sites/_biblioteca/noticias/20200930190948.png"
    },
    {
      "nome": "Faculdade Anhanguera de Bauru",
      "apelido": "Anhanguera",
      "descricao":
          "A unidade Anhanguera Bauru, em São Paulo, começou a operar em 2004 e oferece, atualmente, cursos de graduação na modalidade presencial, assim como opções de pós-graduação e extensão. Os 3500 alunos da universidade frequentam um campus com infraestrutura moderna, que conta com 30 laboratórios divididos entre as áreas de saúde, engenharias, informática, ciências exatas e biológicas. A instituição se destaca também pelo apoio à comunidade local, realizado por meio do Núcleo de Práticas Jurídicas (NPJ) e das clínicas de Psicologia e Fisioterapia, que oferecem atendimento gratuito humanizado e de qualidade.",
      "unidade": "Bauru",
      "logradouro": "Av. Moussa Nakhl Tobias",
      "quadra": "3",
      "numero": "33",
      "bairro": "Parque Sao Geraldo",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17021005",
      "categoria": "Educação",
      "tipo": "Universidade",
      "subtipo": "Ensino Superior",
      "setor": "Privado",
      "latitude": "-22.304904011843636",
      "longitude": "-49.07279814428455",
      "imagem":
          "https://scontent-gru2-1.xx.fbcdn.net/v/t1.6435-9/90357534_2766264180095311_8085093707847565312_n.png?_nc_cat=107&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=3pGjn2W8xvUAX9klCqO&_nc_ht=scontent-gru2-1.xx&oh=93af017ae84cd9b47f0b87365355cddc&oe=61CCFD14"
    },
    {
      "nome": "Faculdade Estácio de Bauru",
      "apelido": "Estácio",
      "descricao":
          "A educação é a forma de tornar o mundo mais sustentável. Nós entendemos que ser sustentável é um processo social, ambiental e econômico. Por isso, investimos em seis diferentes frentes para incentivar nossos estudantes a prosseguirem com essa causa. Fazemos isso porque acreditamos que nossos alunos serão partes e agentes da transformação em um mundo melhor.",
      "unidade": "Bauru",
      "logradouro": "R. Prof. Alberto Brandão de Rezende",
      "quadra": "1",
      "numero": "140",
      "bairro": "Jardim Amalia",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17017250",
      "categoria": "Educação",
      "tipo": "Universidade",
      "subtipo": "Ensino Superior",
      "setor": "Privado",
      "latitude": "-22.340837508463913",
      "longitude": "-49.06368153830616",
      "imagem":
          "https://scontent-gru1-1.xx.fbcdn.net/v/t39.30808-6/243018796_3197244370503470_5145676161928810080_n.png?_nc_cat=104&ccb=1-5&_nc_sid=973b4a&_nc_ohc=UtTvhPR41ysAX_tIXbK&_nc_ht=scontent-gru1-1.xx&oh=35ed979276aa91c353266a95c269bd4c&oe=61AB29B8"
    },
    {
      "nome": "Núcleo de Saúde Beija Flor - Dr. Armando Cardieri",
      "apelido": "",
      "descricao":
          "Esta unidade presta assistência médica sanitária nas três áreas básicas (Pediatria, Ginecologia e Clínica), odontológica, de enfermagem e nutrição, aplicação de tratamentos (injeções, inalações, curativos, etc) vacinação, visitas domiciliares e atividades de educação em saúde (trabalhos de grupo, palestras e orientações em geral).Para estas atividades contam, com equipe composta de médicos, enfermeiros, dentistas, nutricionistas, auxiliares de enfermagem, atendente de consultório dentário, atendente de recepção, auxiliar administrativo, assistente social e servente. Prestam ainda primeiro atendimento em casos de emergência médico odontológico.",
      "unidade": "Beija Flor",
      "logradouro": "Rua Julieta G. de Mendonça",
      "quadra": "1",
      "numero": "s/n",
      "bairro": "N.H. Beija Flor",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17025500",
      "categoria": "Saúde",
      "tipo": "Ambulatório",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.304666724443248",
      "longitude": "-49.05036127367236",
      "imagem":
          "https://dark.bauru.sp.gov.br/arquivos/sist_noticias/37537/img_37537_1.jpeg"
    },
    {
      "nome": "Núcleo de Saúde Bela Vista - Dr. Odilon Pinto do Amaral",
      "apelido": "",
      "descricao":
          "Esta unidade presta assistência médica sanitária nas três áreas básicas (Pediatria, Ginecologia e Clínica), odontológica, de enfermagem e nutrição, aplicação de tratamentos (injeções, inalações, curativos, etc) vacinação, visitas domiciliares e atividades de educação em saúde (trabalhos de grupo, palestras e orientações em geral).Para estas atividades contam, com equipe composta de médicos, enfermeiros, dentistas, nutricionistas, auxiliares de enfermagem, atendente de consultório dentário, atendente de recepção, auxiliar administrativo, assistente social e servente. Prestam ainda primeiro atendimento em casos de emergência médico odontológico.",
      "unidade": "Bela Vista",
      "logradouro": "R. Marçal de Arruda Campos",
      "quadra": "4",
      "numero": "41",
      "bairro": "Vila Lemos",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17063095",
      "categoria": "Saúde",
      "tipo": "Ambulatório",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.30863147849218",
      "longitude": "-49.08923555012147",
      "imagem":
          "https://www2.bauru.sp.gov.br/arquivos/sist_noticias/31622/img_31622_1.jpeg"
    },
    {
      "nome": "Núcleo de Saúde Cardia - Dr. Antônio Azevedo",
      "apelido": "",
      "descricao":
          "Esta unidade presta assistência médica sanitária nas três áreas básicas (Pediatria, Ginecologia e Clínica), odontológica, de enfermagem e nutrição, aplicação de tratamentos (injeções, inalações, curativos, etc) vacinação, visitas domiciliares e atividades de educação em saúde (trabalhos de grupo, palestras e orientações em geral).Para estas atividades contam, com equipe composta de médicos, enfermeiros, dentistas, nutricionistas, auxiliares de enfermagem, atendente de consultório dentário, atendente de recepção, auxiliar administrativo, assistente social e servente. Prestam ainda primeiro atendimento em casos de emergência médico odontológico.",
      "unidade": "Cardia",
      "logradouro": "R. Ezequiel Ramos",
      "quadra": "11",
      "numero": "78",
      "bairro": "Vila Cardia",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17013111",
      "categoria": "Saúde",
      "tipo": "Ambulatório",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.318987068032115",
      "longitude": "-49.06548622209348",
      "imagem":
          "https://www2.bauru.sp.gov.br/arquivos/sist_noticias//37382/img_37382_7.jpeg"
    },
    {
      "nome": "Núcleo de Saúde Centro - Dr. Alpheu de Vasconcelos Sampaio",
      "apelido": "",
      "descricao":
          "Esta unidade presta assistência médica sanitária nas três áreas básicas (Pediatria, Ginecologia e Clínica), odontológica, de enfermagem e nutrição, aplicação de tratamentos (injeções, inalações, curativos, etc) vacinação, visitas domiciliares e atividades de educação em saúde (trabalhos de grupo, palestras e orientações em geral).Para estas atividades contam, com equipe composta de médicos, enfermeiros, dentistas, nutricionistas, auxiliares de enfermagem, atendente de consultório dentário, atendente de recepção, auxiliar administrativo, assistente social e servente. Prestam ainda primeiro atendimento em casos de emergência médico odontológico.",
      "unidade": "Centro",
      "logradouro": "R. Quintino Bocaiúva",
      "quadra": "5",
      "numero": "45",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17015100",
      "categoria": "Saúde",
      "tipo": "Ambulatório",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.329928388875878",
      "longitude": "-49.07932299266506",
      "imagem":
          "https://www2.bauru.sp.gov.br/arquivos/sist_noticias/12770/img_12770_1.jpeg"
    },
    {
      "nome": "Núcleo de Saúde Chapadão Mendonça",
      "apelido": "",
      "descricao":
          "Esta unidade presta assistência médica sanitária nas três áreas básicas (Pediatria, Ginecologia e Clínica), odontológica, de enfermagem e nutrição, aplicação de tratamentos (injeções, inalações, curativos, etc) vacinação, visitas domiciliares e atividades de educação em saúde (trabalhos de grupo, palestras e orientações em geral).Para estas atividades contam, com equipe composta de médicos, enfermeiros, dentistas, nutricionistas, auxiliares de enfermagem, atendente de consultório dentário, atendente de recepção, auxiliar administrativo, assistente social e servente. Prestam ainda primeiro atendimento em casos de emergência médico odontológico.",
      "unidade": "Chapadão Mendonça",
      "logradouro": "R. Arlindo Pinto Ferreira",
      "quadra": "1",
      "numero": "15",
      "bairro": "Jardim Chapadão",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17026710",
      "categoria": "Saúde",
      "tipo": "Ambulatório",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.297560144515444",
      "longitude": "-49.03792776859866",
      "imagem":
          "https://s2.glbimg.com/2t9xAYMDe6afATH516u3vBcF3co=/0x0:647x422/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2019/Y/D/OS2B5dQLWykdt6ujJJ3A/unidade-saude-bauru.png"
    },
    {
      "nome": "Núcleo de Saúde Europa - Dr. Jerônimo Decunto Júnior",
      "apelido": "",
      "descricao":
          "Esta unidade presta assistência médica sanitária nas três áreas básicas (Pediatria, Ginecologia e Clínica), odontológica, de enfermagem e nutrição, aplicação de tratamentos (injeções, inalações, curativos, etc) vacinação, visitas domiciliares e atividades de educação em saúde (trabalhos de grupo, palestras e orientações em geral).Para estas atividades contam, com equipe composta de médicos, enfermeiros, dentistas, nutricionistas, auxiliares de enfermagem, atendente de consultório dentário, atendente de recepção, auxiliar administrativo, assistente social e servente. Prestam ainda primeiro atendimento em casos de emergência médico odontológico.",
      "unidade": "Europa",
      "logradouro": "R. Hermes C. Batista",
      "quadra": "1",
      "numero": "64",
      "bairro": "N.H. Carmen C. Coube",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17017492",
      "categoria": "Saúde",
      "tipo": "Ambulatório",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.292936032373525",
      "longitude": "-49.046980347092905",
      "imagem":
          "https://vozdoniceia.files.wordpress.com/2017/06/posto-do-jd-europa.jpg"
    },
    {
      "nome": "Núcleo de Saúde Falcão - Mário Pinto de Avelar Fernandes",
      "apelido": "",
      "descricao":
          "Esta unidade presta assistência médica sanitária nas três áreas básicas (Pediatria, Ginecologia e Clínica), odontológica, de enfermagem e nutrição, aplicação de tratamentos (injeções, inalações, curativos, etc) vacinação, visitas domiciliares e atividades de educação em saúde (trabalhos de grupo, palestras e orientações em geral).Para estas atividades contam, com equipe composta de médicos, enfermeiros, dentistas, nutricionistas, auxiliares de enfermagem, atendente de consultório dentário, atendente de recepção, auxiliar administrativo, assistente social e servente. Prestam ainda primeiro atendimento em casos de emergência médico odontológico.",
      "unidade": "Falcão",
      "logradouro": "Rua Salvador Filardi",
      "quadra": "6",
      "numero": "8",
      "bairro": "Vila Pacífico",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17051343",
      "categoria": "Saúde",
      "tipo": "Ambulatório",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.329055773079844",
      "longitude": "-49.09997772883497",
      "imagem":
          "https://www2.bauru.sp.gov.br/arquivos/sist_noticias/15933/img_15933_1.jpeg"
    },
    {
      "nome": "Núcleo de Saúde Gasparini - Drª Vilma de Araújo Leão",
      "apelido": "",
      "descricao":
          "Esta unidade presta assistência médica sanitária nas três áreas básicas (Pediatria, Ginecologia e Clínica), odontológica, de enfermagem e nutrição, aplicação de tratamentos (injeções, inalações, curativos, etc) vacinação, visitas domiciliares e atividades de educação em saúde (trabalhos de grupo, palestras e orientações em geral).Para estas atividades contam, com equipe composta de médicos, enfermeiros, dentistas, nutricionistas, auxiliares de enfermagem, atendente de consultório dentário, atendente de recepção, auxiliar administrativo, assistente social e servente. Prestam ainda primeiro atendimento em casos de emergência médico odontológico.",
      "unidade": "Gasparini",
      "logradouro": "R. Aparecida Inês Chrispim de Matos",
      "quadra": "2",
      "numero": "s/n",
      "bairro": "N.H. Gasparini",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17022490",
      "categoria": "Saúde",
      "tipo": "Ambulatório",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.279693516407413",
      "longitude": "-49.08666105766917",
      "imagem":
          "https://yt3.ggpht.com/ytc/AKedOLQTmfXdAmnNEkn_JdeM9m5_0SRHUShfLzDmgVsS=s900-c-k-c0x00ffffff-no-rj"
    },
    {
      "nome": "Núcleo de Saúde Geisel - Newton Bohin Ribeiro",
      "apelido": "",
      "descricao":
          "Esta unidade presta assistência médica sanitária nas três áreas básicas (Pediatria, Ginecologia e Clínica), odontológica, de enfermagem e nutrição, aplicação de tratamentos (injeções, inalações, curativos, etc) vacinação, visitas domiciliares e atividades de educação em saúde (trabalhos de grupo, palestras e orientações em geral).Para estas atividades contam, com equipe composta de médicos, enfermeiros, dentistas, nutricionistas, auxiliares de enfermagem, atendente de consultório dentário, atendente de recepção, auxiliar administrativo, assistente social e servente. Prestam ainda primeiro atendimento em casos de emergência médico odontológico.",
      "unidade": "Geisel",
      "logradouro": "R. Anthero Donnin",
      "quadra": "s/n",
      "numero": "s/n",
      "bairro": "N.H. Presidente Geisel",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17033660",
      "categoria": "Saúde",
      "tipo": "Ambulatório",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.332731825159744",
      "longitude": "-49.029481146627255",
      "imagem":
          "https://rodrigoagostinho.com.br/wp-content/uploads/2018/06/ubs-geisel.jpg"
    },
    {
      "nome": "Núcleo de Saúde Godoy - Dr. Osires Domingues",
      "apelido": "",
      "descricao":
          "Esta unidade presta assistência médica sanitária nas três áreas básicas (Pediatria, Ginecologia e Clínica), odontológica, de enfermagem e nutrição, aplicação de tratamentos (injeções, inalações, curativos, etc) vacinação, visitas domiciliares e atividades de educação em saúde (trabalhos de grupo, palestras e orientações em geral).Para estas atividades contam, com equipe composta de médicos, enfermeiros, dentistas, nutricionistas, auxiliares de enfermagem, atendente de consultório dentário, atendente de recepção, auxiliar administrativo, assistente social e servente. Prestam ainda primeiro atendimento em casos de emergência médico odontológico.",
      "unidade": "Godoy",
      "logradouro": "Alameda Flôr do Amor",
      "quadra": "10",
      "numero": "s/n",
      "bairro": "Jardim Godoy",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17021270",
      "categoria": "Saúde",
      "tipo": "Ambulatório",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.29963937367217",
      "longitude": "-49.076432614859456",
      "imagem": "https://s04.video.glbimg.com/x720/6888891.jpg"
    },
    {
      "nome": "Núcleo de Saúde Independência - Dr. Alipio Gonçalves dos Santos",
      "apelido": "",
      "descricao":
          "Esta unidade presta assistência médica sanitária nas três áreas básicas (Pediatria, Ginecologia e Clínica), odontológica, de enfermagem e nutrição, aplicação de tratamentos (injeções, inalações, curativos, etc) vacinação, visitas domiciliares e atividades de educação em saúde (trabalhos de grupo, palestras e orientações em geral).Para estas atividades contam, com equipe composta de médicos, enfermeiros, dentistas, nutricionistas, auxiliares de enfermagem, atendente de consultório dentário, atendente de recepção, auxiliar administrativo, assistente social e servente. Prestam ainda primeiro atendimento em casos de emergência médico odontológico.",
      "unidade": "Independência",
      "logradouro": "Rua Cuba",
      "quadra": "14",
      "numero": "s/n",
      "bairro": "Vila Independencia",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17054280",
      "categoria": "Saúde",
      "tipo": "Ambulatório",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.344057683556322",
      "longitude": "-49.088232317187654",
      "imagem":
          "https://www2.bauru.sp.gov.br/arquivos/sist_noticias/20722/img_20722_1.jpeg"
    },
    {
      "nome": "Núcleo de Saúde Jussara Celina",
      "apelido": "",
      "descricao":
          "Esta unidade presta assistência médica sanitária nas três áreas básicas (Pediatria, Ginecologia e Clínica), odontológica, de enfermagem e nutrição, aplicação de tratamentos (injeções, inalações, curativos, etc) vacinação, visitas domiciliares e atividades de educação em saúde (trabalhos de grupo, palestras e orientações em geral).Para estas atividades contam, com equipe composta de médicos, enfermeiros, dentistas, nutricionistas, auxiliares de enfermagem, atendente de consultório dentário, atendente de recepção, auxiliar administrativo, assistente social e servente. Prestam ainda primeiro atendimento em casos de emergência médico odontológico.",
      "unidade": "Jussara Celina",
      "logradouro": "Rua Bernardino de Campos",
      "quadra": "23",
      "numero": "s/n",
      "bairro": "Vila Jardim Celina",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17055025",
      "categoria": "Saúde",
      "tipo": "Ambulatório",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.337774058465428",
      "longitude": "-49.104123231904104",
      "imagem":
          "https://www.jcnet.com.br/banco_imagem2/images/geral/malaj82179-279886%20(1).jpg"
    },
    {
      "nome": "Núcleo de Saúde Mary Dota - Dr. Angelo Pagoto",
      "apelido": "",
      "descricao":
          "Esta unidade presta assistência médica sanitária nas três áreas básicas (Pediatria, Ginecologia e Clínica), odontológica, de enfermagem e nutrição, aplicação de tratamentos (injeções, inalações, curativos, etc) vacinação, visitas domiciliares e atividades de educação em saúde (trabalhos de grupo, palestras e orientações em geral).Para estas atividades contam, com equipe composta de médicos, enfermeiros, dentistas, nutricionistas, auxiliares de enfermagem, atendente de consultório dentário, atendente de recepção, auxiliar administrativo, assistente social e servente. Prestam ainda primeiro atendimento em casos de emergência médico odontológico.",
      "unidade": "Mary Dota",
      "logradouro": "R. Pedro Prata de Oliveira",
      "quadra": "s/n",
      "numero": "s/n",
      "bairro": "N.H. Mary Dota",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17026410",
      "categoria": "Saúde",
      "tipo": "Ambulatório",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.29175081227958",
      "longitude": "-49.04394984503173",
      "imagem":
          "https://www2.bauru.sp.gov.br/arquivos/sist_noticias/39554/img_39554_1.jpeg"
    },
    {
      "nome": "Núcleo de Saúde Nova Esperança - Dr. Luiz Castilho",
      "apelido": "",
      "descricao":
          "Esta unidade presta assistência médica sanitária nas três áreas básicas (Pediatria, Ginecologia e Clínica), odontológica, de enfermagem e nutrição, aplicação de tratamentos (injeções, inalações, curativos, etc) vacinação, visitas domiciliares e atividades de educação em saúde (trabalhos de grupo, palestras e orientações em geral).Para estas atividades contam, com equipe composta de médicos, enfermeiros, dentistas, nutricionistas, auxiliares de enfermagem, atendente de consultório dentário, atendente de recepção, auxiliar administrativo, assistente social e servente. Prestam ainda primeiro atendimento em casos de emergência médico odontológico.",
      "unidade": "Nova Esperança",
      "logradouro": "Rua Benedito de Abreu",
      "quadra": "3",
      "numero": "s/n",
      "bairro": "Jardim Nova Esperança",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17065220",
      "categoria": "Saúde",
      "tipo": "Ambulatório",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.315045723622713",
      "longitude": "-49.11685338280353",
      "imagem": "https://www2.bauru.sp.gov.br/arquivos/imagens//2015/logo.png"
    },
    {
      "nome": "Núcleo de Saúde Octávio Rasi - Dr. Edison Bastos Gasparini",
      "apelido": "",
      "descricao":
          "Esta unidade presta assistência médica sanitária nas três áreas básicas (Pediatria, Ginecologia e Clínica), odontológica, de enfermagem e nutrição, aplicação de tratamentos (injeções, inalações, curativos, etc) vacinação, visitas domiciliares e atividades de educação em saúde (trabalhos de grupo, palestras e orientações em geral).Para estas atividades contam, com equipe composta de médicos, enfermeiros, dentistas, nutricionistas, auxiliares de enfermagem, atendente de consultório dentário, atendente de recepção, auxiliar administrativo, assistente social e servente. Prestam ainda primeiro atendimento em casos de emergência médico odontológico.",
      "unidade": "Octávio Rasi",
      "logradouro": "Rua Paulo Leivas Macalão",
      "quadra": "3",
      "numero": "s/n",
      "bairro": "N.H. Octávio Rasi",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17039220",
      "categoria": "Saúde",
      "tipo": "Ambulatório",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.30602868414477",
      "longitude": "-49.00223141528453",
      "imagem": "https://www2.bauru.sp.gov.br/arquivos/imagens//2015/logo.png"
    },
    {
      "nome": "Núcleo de Saúde Parque Vista Alegre - Dr. Sebastião G. Cavalli",
      "apelido": "",
      "descricao":
          "Esta unidade presta assistência médica sanitária nas três áreas básicas (Pediatria, Ginecologia e Clínica), odontológica, de enfermagem e nutrição, aplicação de tratamentos (injeções, inalações, curativos, etc) vacinação, visitas domiciliares e atividades de educação em saúde (trabalhos de grupo, palestras e orientações em geral).Para estas atividades contam, com equipe composta de médicos, enfermeiros, dentistas, nutricionistas, auxiliares de enfermagem, atendente de consultório dentário, atendente de recepção, auxiliar administrativo, assistente social e servente. Prestam ainda primeiro atendimento em casos de emergência médico odontológico.",
      "unidade": "Vista Alegre",
      "logradouro": "Rua Jacob Corso",
      "quadra": "4",
      "numero": "s/n",
      "bairro": "Parque Vista Alegre",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17020830",
      "categoria": "Saúde",
      "tipo": "Ambulatório",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.30290668916787",
      "longitude": "-49.06829450006328",
      "imagem": "https://s03.video.glbimg.com/x720/8232266.jpg"
    },
    {
      "nome": "Núcleo de Saúde Redentor - Dr. Fidelis Barriel",
      "apelido": "",
      "descricao":
          "Esta unidade presta assistência médica sanitária nas três áreas básicas (Pediatria, Ginecologia e Clínica), odontológica, de enfermagem e nutrição, aplicação de tratamentos (injeções, inalações, curativos, etc) vacinação, visitas domiciliares e atividades de educação em saúde (trabalhos de grupo, palestras e orientações em geral).Para estas atividades contam, com equipe composta de médicos, enfermeiros, dentistas, nutricionistas, auxiliares de enfermagem, atendente de consultório dentário, atendente de recepção, auxiliar administrativo, assistente social e servente. Prestam ainda primeiro atendimento em casos de emergência médico odontológico.",
      "unidade": "Redentor",
      "logradouro": "Rua São Lucas",
      "quadra": "3",
      "numero": "30",
      "bairro": "Jardim Redentor",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17032251",
      "categoria": "Saúde",
      "tipo": "Ambulatório",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.31618086598654",
      "longitude": "-49.03119607976361",
      "imagem":
          "https://www.jcnet.com.br/_midias/jpg/2021/03/01/fila_na_ubs_do_redentor_1-3879334.jpg"
    },
    {
      "nome": "Núcleo de Saúde Tibiriçá - Dr. Dolírio Sandin",
      "apelido": "",
      "descricao":
          "Esta unidade presta assistência médica sanitária nas três áreas básicas (Pediatria, Ginecologia e Clínica), odontológica, de enfermagem e nutrição, aplicação de tratamentos (injeções, inalações, curativos, etc) vacinação, visitas domiciliares e atividades de educação em saúde (trabalhos de grupo, palestras e orientações em geral).Para estas atividades contam, com equipe composta de médicos, enfermeiros, dentistas, nutricionistas, auxiliares de enfermagem, atendente de consultório dentário, atendente de recepção, auxiliar administrativo, assistente social e servente. Prestam ainda primeiro atendimento em casos de emergência médico odontológico.",
      "unidade": "Tibiriçá",
      "logradouro": "Rua Carmelo Zamataro",
      "quadra": "s/n",
      "numero": "s/n",
      "bairro": "Zona Rural",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17110025",
      "categoria": "Saúde",
      "tipo": "Ambulatório",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.236144225024038",
      "longitude": "-49.21909587116845",
      "imagem": "https://www2.bauru.sp.gov.br/arquivos/imagens//2015/logo.png"
    },
    {
      "nome": "Ambulatório Médico de Especialidades",
      "apelido": "AME Bauru",
      "descricao":
          "Os AMEs são centros ambulatoriais de diagnóstico e orientação terapêutica de alta resolutividade em especialidades médicas, com ênfase nas necessidades da rede básica. Devem proporcionar atendimento de forma próxima e acessível ao cidadão, através da prestação de um conjunto de serviços que garantam uma intervenção rápida e eficaz, a fim de promover o diagnóstico precoce, orientar a terapêutica e ampliar a oferta de serviços ambulatoriais especializados, atendendo à necessidade regional nos problemas de saúde que não podem ser plenamente diagnosticados ou orientados na rede básica, pela sua complexidade, mas que não precisam de internação hospitalar ou atendimento urgente. Os atendimentos nos AMEs são referenciados e programados, em regime de consultas.  São direcionados para a oferta de serviços de consulta especializada, a indicação de exames de apoio diagnóstico e orientação de tratamento, dentro de um contato único dos doentes com o  centro, sempre que possível. Prevê-se, ainda, que possam resolver a maior parte das consultas em um único deslocamento do doente, dentro dos processos clínicos prioritários previamente definidos e incluídos em suas carteiras de serviços.  A carteira básica geral de serviços dos AMEs é composta de: serviços de consulta de atendimento especializado de suporte a rede básica de saúde; serviços de suporte diagnóstico para os pacientes atendidos, sempre coerentes com a estrutura de oferta definida e com a incorporação de sistemas eletrônicos; serviço de diagnóstico por imagem; serviço de análises clínicas; serviço de métodos diagnósticos de especialidades (incluindo endoscopias e métodos gráficos); serviço de documentação e atendimento ao usuário; linhas de cuidado de alta resolutividade, definidas para cada especialidade e contempladas segundo processos clínicos ou problemas de saúde mais relevantes/ prevalentes na região; cirurgia Ambulatorial, em regime de hospital dia ou não, com ou sem anestesia. ",
      "unidade": "Bauru",
      "logradouro": "R. Rubens Arruda",
      "quadra": "7",
      "numero": "s/n",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17015110",
      "categoria": "Saúde",
      "tipo": "Ambulatório",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.32947112223451",
      "longitude": "-49.07809408465824",
      "imagem":
          "https://www.famesp.org.br/assets/img/gallery/ame-bauru/img-ame-bauru-1001.jpg"
    },
    {
      "nome": "Unidade de Pronto Atendimento - Bela Vista",
      "apelido": "UPA Bela Vista",
      "descricao": "Unidade de Urgência e de Pronto Atendimento.",
      "unidade": "Bela Vista",
      "logradouro": "R. Marçal de Arruda Campos",
      "quadra": "4",
      "numero": "45",
      "bairro": "Vila Lemos",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17063060",
      "categoria": "Saúde",
      "tipo": "Ambulatório",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.308190985306048",
      "longitude": "-49.08962939192264",
      "imagem":
          "https://www2.bauru.sp.gov.br/arquivos/sist_noticias/7332/img_7332_1.jpeg"
    },
    {
      "nome": "Unidade de Pronto Atendimento - Geisel Redentor",
      "apelido": "UPA Geisel",
      "descricao": "Unidade de Urgência e de Pronto Atendimento.",
      "unidade": "Geisel Redentor",
      "logradouro": "R. Antônio Manoel Costa",
      "quadra": "10",
      "numero": "s/n",
      "bairro": "Jardim Olimpico",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17032631",
      "categoria": "Saúde",
      "tipo": "Ambulatório",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.3256755062762",
      "longitude": "-49.025475007949446",
      "imagem":
          "https://rodrigoagostinho.com.br/wp-content/uploads/2018/07/UPA-Geisel-Redentor-inaugura%C3%A7%C3%A3o.jpg2_-1024x683.jpg"
    },
    {
      "nome": "Unidade de Pronto Atendimento - Ipiranga",
      "apelido": "UPA Ipiranga",
      "descricao": "Unidade de Urgência e de Pronto Atendimento.",
      "unidade": "Ipiranga",
      "logradouro": "R. José Miguel",
      "quadra": "21",
      "numero": "45",
      "bairro": "Vila Niponica",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17052170",
      "categoria": "Saúde",
      "tipo": "Ambulatório",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.348872454588996",
      "longitude": "-49.102824030683514",
      "imagem":
          "https://rodrigoagostinho.com.br/wp-content/uploads/2018/07/UPA-Ipiranga.jpg"
    },
    {
      "nome": "Unidade de Pronto Atendimento - Mary Dota",
      "apelido": "UPA Mary Dota",
      "descricao": "Unidade de Urgência e de Pronto Atendimento.",
      "unidade": "Mary Dota",
      "logradouro": "R. Pedro Salvador",
      "quadra": "2",
      "numero": "s/n",
      "bairro": "Núcleo Habitacional Mary Dota",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17026390",
      "categoria": "Saúde",
      "tipo": "Ambulatório",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.290920926765974",
      "longitude": "-49.04427875397472",
      "imagem":
          "https://www2.bauru.sp.gov.br/arquivos/sist_noticias/4969/img_4969_1.jpeg"
    },
    {
      "nome": "Maternidade Santa Isabel",
      "apelido": "Maternidade",
      "descricao":
          "Mais do que números, um balanço social de 9 anos de ações  Desde que a Fundação para o Desenvolvimento Médico e Hospitalar (Famesp) assumiu a gestão da Maternidade Santa Isabel (MSI), em junho de 2012, a unidade hospitalar vem, sistematicamente, aperfeiçoando processos internos, protocolos e rotinas, com consequentes melhorias estruturais e assistenciais.  A aprovação vem das próprias usuárias do serviço que, ano a ano, sinalizam alta nos índices de satisfação, conforme demonstram as pesquisas realizadas pelo Serviço de Atendimento ao Usuário, com auditoria da Secretaria de Estado da Saúde de São Paulo. Em 2015 o índice foi de 93,5%; em 2016 94,2%; seguido de 94,8% (2017); 96,8% (2018) e 97,2% nos anos de 2019 e 2020.  Notamos um crescimento nos índices de satisfação das mulheres que usam os serviços da Maternidade e isso se deve, com toda certeza, a um árduo trabalho em equipe no empenho em identificar falhas e corrigi-las, observa Antonio Rugolo Jr., diretor executivo da Maternidade Santa Isabel e presidente da Famesp.  A gestão que acreditamos envolve a participação das equipes em todos os processos; envolve investimento em educação permanente e, acima de tudo, envolve um mergulho nas políticas de humanização, sempre visando ao bem-estar de pacientes e profissionais e a uma assistência de qualidade, mesmo diante das adversidades econômicas, completa Rugolo Jr. ",
      "unidade": "Bauru",
      "logradouro": "R. Araújo Leite",
      "quadra": "26",
      "numero": "27",
      "bairro": "Vila universitaria",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17012055",
      "categoria": "Saúde",
      "tipo": "Maternidade",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.33307298069005",
      "longitude": "-49.06531626961259",
      "imagem": "https://www.famesp.org.br/noticias/03022016_1.jpg"
    },
    {
      "nome": "Hospital de Reabilitação de Anomalias Crânio-Faciais",
      "apelido": "Centrinho",
      "descricao":
          "Nos anos de 1960, mais precisamente em 1962, a Faculdade de Odontologia de Bauru da Universidade de São Paulo (FOB-USP) iniciou seu efetivo funcionamento na cidade de Bauru-SP.  Com sua implantação, a população bauruense se viu diante da oferta de atendimentos antes inexistentes na região, com a criação de uma clínica odontológica; e na clínica, dentre os cidadãos que procuravam atendimento odontológico, começaram a surgir pessoas com fissura labiopalatina em busca do mesmo atendimento na então jovem Faculdade. Isso despertou o interesse de um grupo de pesquisadores da FOB.   DE CENTRO A HOSPITAL:  Entre 1965 e 1967, os pesquisadores da FOB Prof. Dr. Halim Nagem Filho, Prof. Dr. Ney Moraes e Prof. Dr. Ronaldo Flaquer da Rocha realizaram uma pesquisa cujo resultado detectou que a cada 650 crianças nascidas, uma apresentava malformação congênita labiopalatina (Nagem Filho H, Moraes N, Rocha RGF. Contribuição para o estudo da prevalência das malformações congênitas labiopalatinas na população escolar de Bauru. Rev Fac Odonto São Paulo 1968; 7:11-28). Esse trabalho epidemiológico científico é referência considerada até os dias de hoje quando se fala em incidência de fissuras labiopalatinas na população. Tais circunstâncias levaram sete docentes da FOB a criarem, em 24 de junho de 1967, um centro de estudos interdepartamental dentro da própria Faculdade que, além de fazer pesquisas, começou a oferecer atendimento a essas pessoas (Ata da reunião de fundação do Centro de Pesquisa e Reabilitação de Lesões Lábio-Palatais, 24/06/1967). Os sete fundadores do então Centro de Pesquisa e Reabilitação de Lesões Lábio-Palatais são os professores doutores: Bernardo Gonzales Vono (Departamento de Odontopediatria), Décio Rodrigues Martins (Departamento de Ortodontia), Halim Nagem Filho (Departamento de Prótese), José Alberto de Souza Freitas – o Tio Gastão (Departamento de Radiologia), Ney Moraes (Departamento de Odontologia Social), Noracylde Lima (Departamento de Anatomia) e Wadi Kassis (Departamento de Cirurgia). A origem do apelido carinhoso de Centrinho, dado pelos pacientes à instituição, deve-se ao nome com que foi criado (o Centro).  O Hospital foi pioneiro no tratamento de fissuras labiopalatinas no Brasil, dedicando até hoje 100% de sua capacidade instalada a usuários do SUS.",
      "unidade": "Bauru",
      "logradouro": "R. Silvio Marchione",
      "quadra": "3",
      "numero": "20",
      "bairro": "Vila Nova Cidade Universitaria",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17012900",
      "categoria": "Saúde",
      "tipo": "Hospital",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.33374242704435",
      "longitude": "-49.059912178703826",
      "imagem":
          "https://scontent-gru1-2.xx.fbcdn.net/v/t1.18169-9/13627025_902490176527635_127603345218570956_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=eTD87a2wqpYAX9ZMpm8&_nc_ht=scontent-gru1-2.xx&oh=069a333418a4c4895de08b76cce124ed&oe=61CBD707"
    },
    {
      "nome": "Hospital de Base de Bauru",
      "apelido": "Hospital de Base",
      "descricao":
          "Fundado em 21 de janeiro de 1951, o Hospital Regional Santa Casa de Bauru, atualmente Hospital de Base, foi construído obedecendo ao mais moderno conceito de arquitetura da época, em forma de H. Foi construído à época do Governador Adhemar de Barros e cedido a Santa Casa que havia cedido o terreno, equipamentos e as adaptações necessárias. Em 28/12/1977 o governador Paulo Egydio Martins assinou o Decreto de n. 11014, declarando de utilidade pública para fins de desapropriação o terreno de 25 mil metros quadrados e as respectivas benfeitorias que não sejam propriedade do Estado, bem como acessórios e pertences, equipamentos médico-hospitalares, utensílios, materiais de consumo, mobiliário, veículos, direitos e quaisquer outros bens necessários à manutenção e funcionamento do Hospital de Base em que constam pertencer à Santa Casa de Misericórdia de Bauru. A justificativa invocada no decreto foi a da proteção da saúde da comunidade. Nota oficial dizia que o governador preocupado em assegurar a continuidade, manutenção e regular o funcionamento dos serviços da assistência médico-hospitalar na região e ser evitada a repetição de graves crises que ocorreram naquele Hospital de Bauru, autorizou a Secretaria da Saúde e Promoção Social a firmar convênio com a Associação Hospitalar de Bauru. A partir de então o Hospital de Base passou a ser gerido pela Associação Hospitalar de Bauru (AHB) e passou a ser referência regional de atendimento a quase todas as especialidades da medicina. Em 2009 a AHB foi alvo da Operação Odontoma da Polícia Federal, que afastou o Presidente da entidade, Conselho Gestor e parte do corpo administrativo. Para garantir o atendimento da população, o Ministério Público Estadual decretou então uma intervenção judicial. Desde que o Hospital de Base passou a ser gerido pela AHB, poucos investimentos foram realizados. Nos últimos 10 anos de atuação desta associação, houve um acúmulo de dívidas, que inviabilizaram a modernização do parque tecnológico e a adequação da estrutura física do prédio. O número de leitos ativos caiu de 120, para cerca de 60 leitos. Apesar de todas as dificuldades o Hospital de Base permaneceu como referência nas áreas de traumatologia para Bauru e região, neurocirurgia, cirurgia cardíaca, hemodiálise e Hemonúcleo que atende a todos os hospitais da rede SUS de Bauru e 17 municípios. No final de 2012 foi decretado o fim da intervenção judicial e o Hospital de Base passou a ser administrado pela FAMESP. Nesta ocasião recebeu um Hospital totalmente deteriorado em termos de estrutura física, com equipamentos quebrados, corpo técnico e médicos desmotivados. Durante o ano de 2013 foi desenvolvido um trabalho de diagnóstico e mapeamento das necessidades, adequação e recuperação predial e parcialmente do parque tecnológico, e um árduo e constante trabalho para restabelecer a identidade institucional e a motivação dos funcionários e do corpo clínico. Durante o primeiro ano de gestão, os atendimentos ainda ficaram abaixo do estabelecido por contrato, muito por decorrência da precariedade do parque tecnológico e do quadro funcional deficitário; ainda neste período houve o enfrentamento de uma greve das categorias representadas pelo sindicato preponderante - com 2 meses de duração - a pressão constante da demanda assistencial, entre outros inúmeros problemas operacionais, jurídicos e administrativos. Com o investimento recebido pelo Governo do Estado teve que se optar, dentre tantas necessidades, pela aquisição de parte dos equipamentos essenciais para o funcionamento do Hospital. Durante o ano de 2014 com este investimento concretizado, com os resultados da educação continuada, com a constatação de que haveria continuidade do atendimento e com grande esforço da equipe, pode-se paulatinamente recuperar os níveis de atendimento mais próximos de nossa capacidade instalada parcialmente recuperada. Os anos seguintes foram de muito trabalho, com as ações voltadas à capacitação e organização da equipe assistencial e administrativa, ao aprimoramento no atendimento aos pacientes, à manutenção do equilíbrio financeiro em meio à crise econômica e, principalmente, à tentativa de integrar os serviços municipais à nova realidade do equipamento hospitalar. ",
      "unidade": "Bauru",
      "logradouro": "R. Monsenhor Claro",
      "quadra": "8",
      "numero": "88",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17800000",
      "categoria": "Saúde",
      "tipo": "Hospital",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.32944291317444",
      "longitude": "-49.07678068465824",
      "imagem":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_JUDkcguRNbyoC4OcbAgq1KwWaSXVFSJ3oco7NTg6aso339klz2eEF6fL_I37gNZAAoE&usqp=CAU"
    },
    {
      "nome": "Hospital Estadual de Bauru",
      "apelido": "Hospital Estadual",
      "descricao":
          "O Hospital Estadual de Bauru Dr. Arnaldo Prado Curvello - HEB iniciou suas atividades em 04 de novembro de 2002 como parte de um programa da Secretaria de Estado da Saúde de São Paulo (SES), pelo modelo de gestão de parceria entre Estado e as chamadas Organizações Sociais de Saúde (OSS). Considerando a forte parceria entre a SES e a Faculdade de Medicina de Botucatu - UNESP, a mesma foi escolhida como parceira nesse convênio. Para tanto, a Fundação para o Desenvolvimento Médico e Hospitalar (Famesp) foi incumbida da interveniência do convênio entre SES e UNESP, porque a essa época a Famesp não possuía a qualificação de OSS. Esse convênio perdurou por 10 anos, isto é, até outubro de 2012. Encerrado o convênio de gestão com UNESP por meio da Faculdade de Medicina de Botucatu, em novembro de 2012, a SES firmou Contrato de Gestão com a Famesp, agora qualificada como OSS - Organização Social de Saúde.",
      "unidade": "Bauru",
      "logradouro": "Av. Eng. Luís Edmundo Carrijo Coube",
      "quadra": "1",
      "numero": "100",
      "bairro": "Núcleo Residencial Presidente Geisel",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17033360",
      "categoria": "Saúde",
      "tipo": "Hospital",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.33730691583378",
      "longitude": "-49.02813341534177",
      "imagem":
          "https://www.famesp.org.br/assets/img/gallery/heb/img-heb-1001.jpg"
    },
    {
      "nome": "Hospital Unimed Bauru",
      "apelido": "Unimed",
      "descricao":
          "No dia 6 de julho de 1971 era fundada a Unimed Bauru. Um pequeno grupo de 45 médicos foi o núcleo inicial que assinou a ata de constituição da 22ª cooperativa médica do Sistema no País, criado em 1967, em Santos. Hoje, 45 anos depois, a Unimed Bauru é uma das maiores e mais saudáveis cooperativas do Brasil, com uma estrutura de atendimento formada por 740 médicos cooperados, cerca de 1.500 colaboradores e uma rede de atendimento própria para 168 mil beneficiários, que conta com a Farmácia, o Hospital Unimed Bauru (HUB) e em breve ganhará o Centro de Diagnósticos Unimed Bauru (CDU). O atendimento feito por médicos que também são os gestores da cooperativa é a marca que difere a Unimed dos outros planos de saúde. O jeito de cuidar Unimed é uma segurança a mais para os beneficiários e cooperados. Todas as relações são focadas nas melhores experiências.",
      "unidade": "Bauru",
      "logradouro": "Av. Dr. Arnaldo Prado Curvello",
      "quadra": "10",
      "numero": "110",
      "bairro": "Parque Santa Terezinha",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17035500",
      "categoria": "Saúde",
      "tipo": "Hospital",
      "subtipo": "Emergência",
      "setor": "Privado",
      "latitude": "-22.320510958102233",
      "longitude": "-48.9753947",
      "imagem":
          "https://scontent-gru2-2.xx.fbcdn.net/v/t1.18169-9/15337401_1309177439103815_7706355938583794086_n.png?_nc_cat=111&ccb=1-5&_nc_sid=973b4a&_nc_ohc=trAk_QqGlUoAX-WvIeC&_nc_ht=scontent-gru2-2.xx&oh=160632db57fdf9e7b76291cfcc3e78dd&oe=61CD36A4"
    },
    {
      "nome": "Fundação Doutor Amaral Carvalho",
      "apelido": "Amaral Carvalho",
      "descricao":
          "A Fundação Doutor Amaral Carvalho é uma entidade de natureza privada sem fins lucrativos, fundada em 1980 para congregar as entidades vinculadas ao Hospital Amaral Carvalho, centenária instituição de saúde criada em 1915 pelos fundadores beneméritos Domingos Pereira de Carvalho e Anna Marcelina de Carvalho, que doaram uma gleba de terra e uma quantia em dinheiro para a construção da Maternidade do Jahu. Foi, desde aquela época, um projeto de saúde inovador para acolher as gestantes carentes do município, tanto no pré quanto no pós-natal, e também para garantir saúde e o bem-estar das crianças de nossa região.",
      "unidade": "Bauru",
      "logradouro": "R. Rio Branco",
      "quadra": "14",
      "numero": "26",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17015311",
      "categoria": "Saúde",
      "tipo": "Hospital",
      "subtipo": "Emergência",
      "setor": "Privado",
      "latitude": "-22.32770470690945",
      "longitude": "-49.07065024508672",
      "imagem":
          "https://bionarede.crbio04.gov.br/wp-content/uploads/2019/10/HAC.png"
    },
    {
      "nome": "Hospital e Maternidade São Francisco",
      "apelido": "Pronto Socorro São Lucas",
      "descricao": "Unidade de Urgência e de Pronto Atendimento.",
      "unidade": "Bauru",
      "logradouro": "R. Gustavo Maciel",
      "quadra": "15",
      "numero": "85",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17015321",
      "categoria": "Saúde",
      "tipo": "Hospital",
      "subtipo": "Emergência",
      "setor": "Privado",
      "latitude": "-22.326837309855232",
      "longitude": "-49.0692858",
      "imagem":
          "https://lh3.googleusercontent.com/proxy/8kyrHqUyIubc3JlEdh5FOrz6wlQJexgkQVhIbwtlmkBNqB_U1pH1XoWHtAZsEKjcDFhXNLjMHNPLTThgMzIYDuKf7grd4GTBs1M8lYDVNFPmobSGlr0YY0m73rzbE_lBaEP2L9l6OIq6dHX9Ma7mdqesXZGPmfF3T6AcAuHe_NtRDg"
    },
    {
      "nome": "Pronto Socorro Central",
      "apelido": "Pronto Socorro",
      "descricao": "Unidade de Urgência e de Pronto Atendimento.",
      "unidade": "Bauru",
      "logradouro": "R. Rubens Arruda",
      "quadra": "7",
      "numero": "s/n",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17010260",
      "categoria": "Saúde",
      "tipo": "Hospital",
      "subtipo": "Emergência",
      "setor": "Público",
      "latitude": "-22.329798200410046",
      "longitude": "-49.07758791533681",
      "imagem":
          "https://www.jcnet.com.br/_midias/jpg/2020/12/26/aceitunojr8219-3428657.jpg"
    },
    {
      "nome": "Hospital Beneficência Portuguesa",
      "apelido": "Beneficência Portuguesa",
      "descricao":
          "Beneficência Portuguesa de Bauru é o hospital da Associação Beneficência Portuguesa de Bauru, associação fundada em 1914, por um grupo de imigrantes portugueses fixados neste município do interior do estado de São Paulo. O hospital Beneficência Portuguesa de Bauru entrou em funcionamento em 10 de junho de 1928, data em que se comemora mundialmente o Dia de Camões e das comunidades portuguesas. O primeiro médico contratado foi o Doutor Miroslau Szeligowski, que permaneceu como diretor clínico do hospital até 1934. A Beneficência Portuguesa de Bauru localiza-se na região central da cidade, entre as ruas Rio Branco e Gustavo Maciel. A fachada de seu edifício principal sugere características dos casarões do norte de Portugal do final do século XIX, reunindo elementos arquitetônicos tradicionais e ecléticos.",
      "unidade": "Bauru",
      "logradouro": "R. Rio Branco",
      "quadra": "13",
      "numero": "83",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17015311",
      "categoria": "Saúde",
      "tipo": "Hospital",
      "subtipo": "Emergência",
      "setor": "Privado",
      "latitude": "-22.32671339569831",
      "longitude": "-49.0700008",
      "imagem":
          "https://beneficenciaportuguesa.org/associacao/wp-content/uploads/2021/02/topo-bene-e1613497089991-300x149.jpg"
    },
    {
      "nome": "Parque Dr. César Benedito Fernandes Rodrigues",
      "apelido": "Parque Vitória Régia",
      "descricao":
          "O Parque Vitória Régia é um dos principais parques de Bauru, no estado de São Paulo, considerado cartão postal do município. O parque está localizado na Avenida Nações Unidas, próximo ao campus da Universidade de São Paulo, na região central de Bauru. A água que circunda o parque é proveniente do Ribeirão das Flores, afluente do Rio Bauru, cujo leito percorre toda a Avenida Nações Unidas. Destaca-se no parque a concha acústica com arquibancada, na qual ocorrem eventos públicos culturais variados. O parque também é utilizado para práticas esportivas e para lazer da população local. A prefeitura inaugurou no final de 2019 um espaço de recreação infantil inclusivo em uma das extremidades do parque. O parque foi projetado em 1976 pelo arquiteto Jurandyr Bueno Filho, que se inspirou na ágora grega para criar a estrutura do Vitória Régia.",
      "unidade": "Bauru",
      "logradouro": "Av. Nações Unidas",
      "quadra": "25",
      "numero": "25",
      "bairro": "Jardim Brasil",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "s/n",
      "categoria": "Lazer",
      "tipo": "Parque",
      "subtipo": "Recreação",
      "setor": "Público",
      "latitude": "-22.331397534832202",
      "longitude": "-49.05796903556737",
      "imagem":
          "https://www.jcnet.com.br/_midias/jpg/2020/09/14/vit_ria_r_gia-3302894.jpg"
    },
    {
      "nome": "Jardim Botânico Municipal de Bauru",
      "apelido": "Jardim Botânico",
      "descricao":
          "Nas primeiras décadas do século XX, a necessidade de ampliar e melhorar o abastecimento de água, na cidade, levou o município de Bauru a adquirir uma área de 1.040 hectares de uma grande propriedade rural, denominada Fazenda Vargem Limpa, pertencente à Felicíssimo Antônio Pereira.     A escolha deste local fundamentou-se na presença de uma vasta vegetação nativa, que protegia as nascentes do córrego Vargem Limpa, considerado, na época, fonte de água abundante e livre de poluentes.     Em 1917 começou a ser implantado o sistema de captação de água no córrego Vargem Limpa, que forneceu água para a cidade de Bauru até 1940.     Com o crescimento da cidade e o aumento na demanda de água, houve a necessidade da transferência da captação para o rio Batalha. O município então passa a possuir uma ampla área de vegetação nativa que não era mais utilizada como fonte de água. Com o movimento ambientalista se fortalecendo no Brasil na década de 1970 e 1980, iniciou-se a delimitação de diversas áreas naturais destinadas à conservação e visitação. Desta forma, em 09 de agosto de 1979, a Prefeitura Municipal de Bauru deu início ao processo de criação do Parque Ecológico de Bauru, com a elaboração da Planta de Localização e do Memorial Descritivo de 201,5 hectares.      Em 1987, a Lei Municipal nº 2.790 de 17 de dezembro institui o Parque Ecológico de Bauru. A criação do parque teve como objetivo a conservação da vegetação, como uma forma de proteger a flora e fauna locais.      A área era propícia para a realização de pesquisas científicas e para a visitação pública, possibilitando, assim a utilização dos benefícios da existência desta ampla área natural pela comunidade bauruense.      Em 14 de setembro de 1988, a lei nº 2872 denominou o local como Parque Ecológico Tenri Cidade-Irmã. A escolha do nome foi decorrente da influência da imigração japonesa em Bauru e foi dado em homenagem à cidade japonesa Tenri.      Em 25 de agosto de 1992, a lei nº 3.480 ampliou a área do Parque para 321,71 hectares. Foram iniciados os trabalhos de estruturação como: abertura de trilhas, implantação de um viveiro de mudas nativas, elaboração de projetos de recomposição de áreas degradadas e estruturação da sede administrativa para o atendimento aos visitantes. Neste mesmo período inicia-se o plantio das primeiras mudas de árvores do arboreto.      Em 1993, com a construção do orquidário, os trabalhos começaram a ser direcionados para atividades de conservação ligadas aos Jardins Botânicos. O poder público e a comunidade científica apoiaram o fortalecimento do local como instituição voltada à conservação das plantas.  Foi então que, em 04 de março de 1994, a lei nº 3.684, transformou o Parque Ecológico em Jardim Botânico Municipal de Bauru (JBMB). Com objetivos e trabalhos já definidos, o JBMB vem se estruturando, com novas coleções de plantas, ampliação e melhoria das áreas de visitação, garantindo, desta forma, a realização de atividades voltadas à conservação, educação, lazer e pesquisa.    No ano de 2018, graças à importância e representatividade na conservação do cerrado em nosso município, a reserva ecológica do Jardim Botânico Municipal de Bauru passou a integrar à Unidade de Conservação Estadual Refúgio da Vida Silvestre (RVS) Aimorés, de acordo com o Decreto Estadual nº 63.893, de 05 de dezembro de 2018.      O RVS Aimorés (Unidade de Conservação de Proteção Integral) possui área de 1.724,237 hectares, e localiza-se nos municípios de Bauru e Pederneiras. Essa nova Unidade de Conservação, em conjunto com a Área de Relevante Interesse Ecológico (ARIE) Leopoldo Magno Coutinho (Unidade de Conservação de Uso Sustentável), constituem o Mosaico de Unidades de Conservação do Cerrado Paulista, cujo objetivo é de conservar importantes remanescentes de vegetação do Bioma Cerrado localizados na região de Bauru.  Atualmente com 321,71 hectares, o JBMB conserva 280 hectares de cerrado, representando uma das maiores reservas (com mais de 200 hectares) de cerrado do estado de São Paulo, sendo considerado, portanto, área prioritária para a conservação desta vegetação.  Na reserva do JBMB também ocorrem fragmentos de floresta estacional semidecídua e floresta paludosa.  A missão de um Jardim Botânico é uma declaração escrita do por que o jardim existe e que propósitos pretende cumprir. É a base para nortear todas as atividades, guiando o planejamento e políticas atuais e futuras.     Em 2014, ao completar 20 anos, a missão do Jardim Botânico Municipal de Bauru foi reformulada. Por meio de um Workshop de Comunicação Interna, com a participação de todos os funcionários da instituição, foram elaborados a nova missão, visão e valores.     Todas as atividades realizadas pelo Jardim Botânico Municipal de Bauru visam a Flora Regional.  Jardim Botânico Municipal de Bauru  Visitação espontânea Entrada: diariamente, das 8h às 16h (inclusive sábados, domingos e feriados). A permanência do visitante é permitida até às 16h30. Entrada franca!  Trilha ecológica: aberta à visitação das 8h às 16h.  Trilha do Mirante e Mirante: aberta à visitação das 8h às 16h.  *Atenção: durante a pandemia do Covid-19, fique atento às restrições no município de Bauru e as restrições de visitação no Jardim Botânico. ",
      "unidade": "Bauru",
      "logradouro": "Rod. Cmte. João Ribeiro de Barros",
      "quadra": "Km 232",
      "numero": "s/n",
      "bairro": "Tangaras",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17035245",
      "categoria": "Lazer",
      "tipo": "Parque",
      "subtipo": "Recreação",
      "setor": "Público",
      "latitude": "-22.343326387711222",
      "longitude": "-49.01728682594424",
      "imagem":
          "https://www.socialbauru.com.br/wp-content/uploads/2018/03/jardimbot%C3%A2nico-1240x540.png"
    },
    {
      "nome": "Estação Experimental de Bauru",
      "apelido": "Horto Florestal",
      "descricao":
          "O Horto Florestal de Bauru, como é conhecida a Estação Experimental de Bauru, foi criado em 1928 para ser um dos cinco distritos florestais do estado de São Paulo. Durante muitas décadas produziu mudas de frutíferas e florestais para atender aos municípios da região. Existem vários plantios experimentais com espécies nativas brasileiras como jatobá, jequitibá, pau marfim, pau pereira, ipê, arboretos mistos e plantios com exóticas (pinus e eucalipto). Uma questão de extrema relevância é a presença de várias espécies da fauna que buscam abrigo no local, apesar da área pequena. Já foram avistados: veado-catingueiro, cachorro-do-mato, ouriço, quati, siriema, jacu, tucano, cobras diversas, teiú. Destaca-se por ser uma das principais áreas verdes do município, relevante para o desenvolvimento de atividades técnico-científicas e educativas nos diversos níveis de escolaridade, bem como esportivas e de lazer em contato com a natureza. ",
      "unidade": "Bauru",
      "logradouro": "Av. Rodrigues Alves",
      "quadra": "38",
      "numero": "25",
      "bairro": "Vila Cardia",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17030000",
      "categoria": "Lazer",
      "tipo": "Parque",
      "subtipo": "Recreação",
      "setor": "Público",
      "latitude": "-22.31433317202443",
      "longitude": "-49.03947804806077",
      "imagem":
          "https://www2.bauru.sp.gov.br/arquivos/sist_noticias/38313/img_38313_1.jpeg"
    },
    {
      "nome": "Bosque “José Guedes de Azevedo”",
      "apelido": "Bosque da Comunidade",
      "descricao":
          "O local oferece: pista para caminhada, playground, pontos de hidratação, fonte e locomotiva. Prancha para abdominal, barra de alongamento, barra fixa. Banheiro público.",
      "unidade": "Bauru",
      "logradouro": "R. Araújo Leite",
      "quadra": "29",
      "numero": "s/n",
      "bairro": "Vila Universitaria",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17012330",
      "categoria": "Lazer",
      "tipo": "Parque",
      "subtipo": "Recreação",
      "setor": "Público",
      "latitude": "",
      "longitude": "",
      "imagem":
          "https://solutudo-cdn.s3-sa-east-1.amazonaws.com/prod/plc_places/43/5878cb59-1a74-4aaf-9a7b-4bf2ac1f1147.jpg"
    },
    {
      "nome": "Parque Zoológico Municipal de Bauru",
      "apelido": "Zoológico de Bauru",
      "descricao":
          "O Parque Zoológico Municipal de Bauru é um jardim zoológico público brasileiro, situado no município de Bauru, no estado de São Paulo, e que é destaque por seu trabalho de preservação da fauna brasileira. Foi inaugurado em 24 de agosto de 1980, e possui uma área de 50 mil metros quadrados.",
      "unidade": "Bauru",
      "logradouro": "Rod. Cmte. João Ribeiro de Barros",
      "quadra": "km 232",
      "numero": "s/n",
      "bairro": "Vargem Limpa",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17040900",
      "categoria": "Lazer",
      "tipo": "Parque",
      "subtipo": "Recreação",
      "setor": "Público",
      "latitude": "-22.340689394198595",
      "longitude": "-49.020026824642095",
      "imagem":
          "https://www2.bauru.sp.gov.br/arquivos/arquivos_site/sec_meioambiente/unidades_ambientais/zoologico.jpg"
    },
    {
      "nome": "Igreja Tenrikyo Dendotyo",
      "apelido": "Igreja Tenrikyo",
      "descricao":
          "A Sede Missionária do Brasil recebeu a permissão de fundação em 31 de julho de 1951. Está localizada na cidade de Bauru, no centro-oste paulista. Em 1950, rev. Chujiro Otake, período em que era superintendente do missionamento no Brasil, recebeu da Sede da Igreja o aviso da fundação da Sede Missionária. Reunindo os diretores e condutores de igreja, após várias deliberações, ficou decidido que a Igreja Bauru faria a doação do terreno e do prédio do recinto de reverência para a instalação da Sede Missionária. Assim, a partir de fevereiro de 1951, através do trabalho de hinokishin dos fiéis, começaram as construções do refeitório e da casa dos hóspedes, os quais foram concluídas no final de agosto do mesmo ano. No dia 10 de setembro, o 2º Shimbashira (Primaz mundial da Tenrikyo) realizou a Cerimônia de Consagração dos símbolos divinos de Deus-Parens e Oyassama. E, no dia seguinte, foi realizada a Cerimônia de Fundação da Sede Missionária, estabelecendo-se no centro da fé no Brasil. ",
      "unidade": "Bauru",
      "logradouro": "R. Newton Prado",
      "quadra": "4",
      "numero": "34",
      "bairro": "Jardim Independencia",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17054330",
      "categoria": "Lazer",
      "tipo": "Igreja",
      "subtipo": "Recreação",
      "setor": "Privado",
      "latitude": "-22.335232697557483",
      "longitude": "-49.08695283017743",
      "imagem":
          "http://4.bp.blogspot.com/-KAoN05Z3Ac0/WyV-h1z55zI/AAAAAAAABgw/-Uq5Zf3wGggWP3jud0o4fLFooYZTgb7xQCK4BGAYYCw/s1600/20180519_155141.jpg"
    },
    {
      "nome": "Bauru Golf Club",
      "apelido": "Golf Bauru",
      "descricao": "Entretenimento e Happy hour",
      "unidade": "Bauru",
      "logradouro": "Rod. Cmte. João Ribeiro de Barros",
      "quadra": "Km 362",
      "numero": "s/n",
      "bairro": "Zona Rural",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17490000",
      "categoria": "Lazer",
      "tipo": "Esporte",
      "subtipo": "Recreação",
      "setor": "Privado",
      "latitude": "-22.341456549584993",
      "longitude": "-49.21197685358588",
      "imagem":
          "https://scontent-gru1-1.xx.fbcdn.net/v/t1.6435-9/70441052_2526533580740885_7823457258091577344_n.png?_nc_cat=110&ccb=1-5&_nc_sid=973b4a&_nc_ohc=tJXWlt_4kJgAX9sUMuc&_nc_ht=scontent-gru1-1.xx&oh=de0df350619807bdd7a92054d06733d6&oe=61CB9ECE"
    },
    {
      "nome": "Pinacoteca Municipal de Bauru",
      "apelido": "Casa Ponce Paz",
      "descricao":
          "A coleção que integra o acervo da Pinacoteca Municipal de Bauru foi formada a partir de doações de artistas plásticos do município e região e colecionadores do gênero. A iniciativa teve início na década de 1980, quando o acervo começou a ser formado. Em 1986, a Casa da Cultura de Bauru recebe doações e começa a formar o Acervo Municipal de Artes Plásticas. Inicialmente, foi feita uma ficha de identificação para cada item do acervo, com seus dados principais. Em 2013, o Acervo Municipal de Artes Plásticas, que estava no Centro Cultural Carlos Fernandes de Paiva, foi transferido para as dependências da Casa Ponce Paz. A Pinacoteca Municipal foi criada em 14 de maio de 2014, pela Lei nº 6.515, com sede provisória na Casa Ponce Paz. A Pinacoteca Municipal é uma instituição vinculada ao Departamento de Proteção ao Patrimônio Cultural da Secretaria Municipal de Cultura e conta com o espaço Casa Ponce Paz e a Galeria Municipal Angelina W. Messemberg para mostras e exibições do seu acervo. ",
      "unidade": "Bauru",
      "logradouro": "R. Antônio Alves",
      "quadra": "9",
      "numero": "10",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17010170",
      "categoria": "Lazer",
      "tipo": "Museu",
      "subtipo": "Entretenimento",
      "setor": "Público",
      "latitude": "-22.320351272979885",
      "longitude": "-49.07062924483394",
      "imagem":
          "https://s2.glbimg.com/WFTcyAysQCGHoh5kHwm2Cm1RU1k=/0x0:1280x720/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2021/M/a/PMTyZWTjOoigBBwL4hQw/bru-pinacoteca-e-casa-ponce-paz.jpeg"
    },
    {
      "nome": "Museu Ferroviário Regional de Bauru",
      "apelido": "Museu Ferroviário",
      "descricao":
          "Museu Ferroviário Regional de Bauru é um museu regional, fundado em 26 de agosto de 1989, em Bauru, no estado de São Paulo. Ele se localiza perto da Estação Ferroviária, no centro da cidade. A instituição remonta o passado das ferrovias tanto da cidade e do estado, como de todo o Brasil.",
      "unidade": "Bauru",
      "logradouro": "R. Primeiro de Agosto",
      "quadra": "1",
      "numero": "36",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17010011",
      "categoria": "Lazer",
      "tipo": "Museu",
      "subtipo": "Entretenimento",
      "setor": "Público",
      "latitude": "-22.322364834980583",
      "longitude": "-49.077721951595024",
      "imagem":
          "https://www2.bauru.sp.gov.br/arquivos/sist_noticias/33918/img_33918_2.jpeg"
    },
    {
      "nome": "Museu da Imagem e do Som de Bauru",
      "apelido": "Museu da Imagem do Som",
      "descricao":
          "O Museu da Imagem e do Som de Bauru reúne fotos, discos, gravações, filmagens, aparelhos e equipamentos. O Museu tem por objetivo preservar, divulgar e promover o conhecimento midiático da história e da cultura de Bauru",
      "unidade": "Bauru",
      "logradouro": "R. Rio Branco",
      "quadra": "3",
      "numero": "16",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17010190",
      "categoria": "Lazer",
      "tipo": "Museu",
      "subtipo": "Entretenimento",
      "setor": "Público",
      "latitude": "-22.318226371035486",
      "longitude": "-49.07337317491335",
      "imagem":
          "https://solutudo-cdn.s3-sa-east-1.amazonaws.com/prod/plc_places/39/5878c427-80a8-4905-8d68-4358ac1f1147.jpg"
    },
    {
      "nome": "Museu Histórico Municipal",
      "apelido": "Museu Histórico",
      "descricao":
          "O Museu Histórico Municipal de Bauru reúne fotos, jornais, revistas, documentos, textos, peças de mobiliário, objetos, máquinas, ferramentas e equipamentos relacionados à história de Bauru.",
      "unidade": "Bauru",
      "logradouro": "R. Rio Branco",
      "quadra": "3",
      "numero": "16",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17010190",
      "categoria": "Lazer",
      "tipo": "Museu",
      "subtipo": "Entretenimento",
      "setor": "Público",
      "latitude": "-22.318226371035486",
      "longitude": "-49.07337317491335",
      "imagem":
          "https://sites.bauru.sp.gov.br/arquivos/website_museuhistorico/img/banner.jpg"
    },
    {
      "nome": "Recinto Mello Moraes",
      "apelido": "Recinto",
      "descricao":
          "O Recinto Mello de Moraes, localizado na Avenida Comendador da Silva Marta, é um espaço tradicional de Bauru, que recebe feiras, shows, exposições. As obras de construção do Recinto iniciaram em 8 de dezembro de 1943 e foram concluídas em 13 de abril de 1946, sendo entregues pelo interventor federal embaixador José Carlos de Macedo Soares. Ao longo do tempo foram construídos novos pavilhões e, como parte do acordo de concessão da área que hoje pertence à Prefeitura Municipal de Bauru, a Associação Rural do Centro-Oeste (Arco) assumiu uma ampla reforma das instalações de todo o Recinto, que foram entregues em 2002.",
      "unidade": "Bauru",
      "logradouro": "Av. Comendador José da Silva Martha",
      "quadra": "58",
      "numero": "68",
      "bairro": "Jardim Ouro Verde",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17054630",
      "categoria": "Lazer",
      "tipo": "Eventos",
      "subtipo": "Entretenimento",
      "setor": "Público",
      "latitude": "-22.357940713145258",
      "longitude": "-49.095371122571635",
      "imagem":
          "https://s2.glbimg.com/gA4HYqhEo2qw4PvwnvsBj5igjs8=/0x0:960x539/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2019/v/j/r7v7hIT86YeLIuTHNing/foto-montagem-expo-2019-foto-juninho-martins.jpg"
    },
    {
      "nome": "Teatro Municipal Celina Lourdes Alves Neves",
      "apelido": "Teatro Municipal de Bauru",
      "descricao":
          "Teatro do município recebe companhias de artes cênicas e de dança, em agenda multicultural.",
      "unidade": "Bauru",
      "logradouro": "Av. Nações Unida",
      "quadra": "8",
      "numero": "9",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17010130",
      "categoria": "Lazer",
      "tipo": "Teatro",
      "subtipo": "Entretenimento",
      "setor": "Público",
      "latitude": "-22.319118327975715",
      "longitude": "-49.06853858773211",
      "imagem":
          "https://www.socialbauru.com.br/wp-content/uploads/2018/11/teatro-municipal-bauru-1240x540.png"
    },
    {
      "nome": "Calçadão da Batista",
      "apelido": "Calçadão",
      "descricao":
          "A rua Batista de Carvalho foi uma das primeiras vias abertas da cidade de Bauru, tendo sido aberta no final do século XIX sob o nome de Rua dos Esquecidos, teve seu nome mudado para Rua Batista de Carvalho em 1904 pelo então prefeito, Gerson França. Em maio de 1992, o então prefeito, Izzo Filho, deu início às obras do calçadão, fechando de vez o tráfego de veículos por 7 quarteirões da rua voltada ao comércio. A inaugurção do calçadão ocorreu em 21 de agosto de 1992.",
      "unidade": "Bauru",
      "logradouro": "R. Batista de Carvalho",
      "quadra": "4",
      "numero": "s/n",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17010901",
      "categoria": "Lazer",
      "tipo": "Comércio",
      "subtipo": "Entretenimento",
      "setor": "Público",
      "latitude": "-22.322658049649476",
      "longitude": "-49.07278218945517",
      "imagem":
          "https://media-cdn.tripadvisor.com/media/photo-s/06/e2/98/f5/calcadao-da-batista.jpg"
    },
    {
      "nome": "Alameda Rodoserv Center",
      "apelido": "Alameda",
      "descricao":
          "Shopping com praça de alimentação e cinema contemporâneo em um ambiente descontraído.",
      "unidade": "Bauru",
      "logradouro": "R. Luiz Levorato",
      "quadra": "1",
      "numero": "55",
      "bairro": "Jardim Marabá",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17048290",
      "categoria": "Lazer",
      "tipo": "Comércio",
      "subtipo": "Entretenimento",
      "setor": "Privado",
      "latitude": "-22.370630178657553",
      "longitude": "-49.03659661459039",
      "imagem":
          "https://alamedarodoservcenter.com.br/assets/upload/logo-alameda.png"
    },
    {
      "nome": "Bauru Shopping",
      "apelido": "",
      "descricao":
          "Shopping espaçoso de vários andares com lojas variadas, restaurantes e cinema.",
      "unidade": "Bauru",
      "logradouro": "R. Henrique Savi",
      "quadra": "15",
      "numero": "55",
      "bairro": "Vila Nova Cidade Universitaria",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17011900",
      "categoria": "Lazer",
      "tipo": "Comércio",
      "subtipo": "Entretenimento",
      "setor": "Privado",
      "latitude": "-22.34160977195618",
      "longitude": "-49.0493288846574",
      "imagem":
          "https://media-exp1.licdn.com/dms/image/C561BAQGv3Lio8yz1oQ/company-background_10000/0/1543436515116?e=2159024400&v=beta&t=UnnLGHdZ0EALxVhjrslVXm1tX78kc6kSGVcXbSd4xQc"
    },
    {
      "nome": "Boulevard Shopping Bauru",
      "apelido": "Boulevard",
      "descricao":
          "Shopping de vários andares com mais de 175 lojas, cinema, praça de alimentação e lanchonetes.",
      "unidade": "Bauru",
      "logradouro": "R. Marcondes Salgado",
      "quadra": "11",
      "numero": "39",
      "bairro": "Chácara das Flores",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17013113",
      "categoria": "Lazer",
      "tipo": "Comércio",
      "subtipo": "Entretenimento",
      "setor": "Privado",
      "latitude": "-22.315428760452786",
      "longitude": "-49.06640926862198",
      "imagem":
          "https://boulevardshoppingbauru.com.br/data/files/2B/21/B5/D5/88DA561087C1CA562CCBF9C2/foto%20tratada.jpg"
    },
    {
      "nome": "Poupatempo Bauru",
      "apelido": "Poupatempo",
      "descricao":
          "Iniciado em 1997 para facilitar o acesso do cidadão às informações e serviços públicos, com a aprovação da sociedade ao padrão Poupatempo de qualidade, o programa do Governo do Estado de São Paulo se expandiu: atualmente conta com 72 unidades fixas e um posto móvel que atende a áreas do entorno da Grande SP. Os Postos reúnem órgãos e empresas prestadoras de serviços de natureza pública, realizando atendimento sem discriminação ou privilégios com eficiência e cortesia. Os atendimentos são agendados para garantir conforto aos cidadãos e a eficiência ao programa. O agendamento e as informações sobre serviços oferecidos, condições, prazos e taxas podem ser obtidas pelo Portal Poupatempo na internet ou pelo aplicativo SP Serviços para celular.",
      "unidade": "Bauru",
      "logradouro": "R. Inconfidência",
      "quadra": "4",
      "numero": "50",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17012150",
      "categoria": "Serviços",
      "tipo": "Cidadania",
      "subtipo": "Essencial",
      "setor": "Público",
      "latitude": "-22.315309562095457",
      "longitude": "-49.06981398610431",
      "imagem":
          "https://www.poupatempo.sp.gov.br/portal_v2/site/images/logo.png"
    },
    {
      "nome": "Prefeitura Municipal de Bauru",
      "apelido": "Prefeitura",
      "descricao": "Prefeitura Municipal de Bauru",
      "unidade": "Bauru",
      "logradouro": "Praça das Cerejeiras",
      "quadra": "1",
      "numero": "59",
      "bairro": "Vila Noemy",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17014900",
      "categoria": "Serviços",
      "tipo": "Cidadania",
      "subtipo": "Essencial",
      "setor": "Público",
      "latitude": "-22.330970314628985",
      "longitude": "-49.07004280961378",
      "imagem":
          "https://www2.bauru.sp.gov.br/arquivos/sist_noticias/38655/img_38655_1.jpeg"
    }
  ];

  // make this a singleton class
  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  // only have a single app-wide reference to the database
  static Database? _database;
  Future<Database?> get database async {
    if (_database != null) return _database;
    // lazily instantiate the db the first time it is accessed
    _database = await _initDatabase();
    return _database;
  }

  // this opens the database (and creates it if it doesn't exist)
  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  // SQL code to create the database table
  Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE $table (
            $columnId INTEGER PRIMARY KEY,
            $columnNome TEXT NOT NULL,
            $columnApelido TEXT,
            $columnDescricao TEXT,
            $columnUnidade TEXT,
            $columnLogradouro TEXT,
            $columnQuadra TEXT,
            $columnNumero TEXT,
            $columnBairro TEXT,
            $columnCidade TEXT,
            $columnEstado TEXT,
            $columnCep TEXT,
            $columnCategoria TEXT,
            $columnTipo TEXT,
            $columnSubtipo TEXT,
            $columnSetor TEXT,
            $columnLatitude TEXT,
            $columnLongitude TEXT,
            $columnImagem TEXT
          )
          ''');
  }

  Future putPlaces() async {
    Database? db = await instance.database;

    /// Initialize batch
    final batch = db!.batch();

    /// Batch insert
    for (var i = 0; i < places.length; i++) {
      batch.insert("Places", places[i]);
    }

    /// Commit
    await batch.commit(noResult: true);

    return "success";
  }

  // Helper methods

  // Inserts a row in the database where each key in the Map is a column name
  // and the value is the column value. The return value is the id of the
  // inserted row.
  Future<int> insert(Map<String, dynamic> row) async {
    Database? db = await instance.database;
    return await db!.insert(table, row);
  }

  // All of the rows are returned as a list of maps, where each map is
  // a key-value list of columns.
  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database? db = await instance.database;
    return await db!.query(table);
  }

  Future<List<Map?>?> getPlacesList(String categoria) async {
    Database? db = await instance.database;
    List<Map> maps = await db!.query(DatabaseHelper.table,
        columns: [
          DatabaseHelper.columnId,
          DatabaseHelper.columnNome,
          DatabaseHelper.columnApelido,
          DatabaseHelper.columnDescricao,
          DatabaseHelper.columnUnidade,
          DatabaseHelper.columnLogradouro,
          DatabaseHelper.columnQuadra,
          DatabaseHelper.columnNumero,
          DatabaseHelper.columnBairro,
          DatabaseHelper.columnCidade,
          DatabaseHelper.columnEstado,
          DatabaseHelper.columnCep,
          DatabaseHelper.columnCategoria,
          DatabaseHelper.columnTipo,
          DatabaseHelper.columnSubtipo,
          DatabaseHelper.columnSetor,
          DatabaseHelper.columnLatitude,
          DatabaseHelper.columnLongitude,
          DatabaseHelper.columnImagem
        ],
        where: '$columnCategoria = ?',
        whereArgs: [categoria]);
    if (maps.isNotEmpty) {
      return maps;
    }
    return null;
  }

  Future<Map?> getPlace(int id) async {
    Database? db = await instance.database;
    List<Map> maps = await db!.query(DatabaseHelper.table,
        columns: [
          DatabaseHelper.columnId,
          DatabaseHelper.columnNome,
          DatabaseHelper.columnApelido,
          DatabaseHelper.columnDescricao,
          DatabaseHelper.columnUnidade,
          DatabaseHelper.columnLogradouro,
          DatabaseHelper.columnQuadra,
          DatabaseHelper.columnNumero,
          DatabaseHelper.columnBairro,
          DatabaseHelper.columnCidade,
          DatabaseHelper.columnEstado,
          DatabaseHelper.columnCep,
          DatabaseHelper.columnCategoria,
          DatabaseHelper.columnTipo,
          DatabaseHelper.columnSubtipo,
          DatabaseHelper.columnSetor,
          DatabaseHelper.columnLatitude,
          DatabaseHelper.columnLongitude,
          DatabaseHelper.columnImagem
        ],
        where: '$columnId = ?',
        whereArgs: [id]);
    if (maps.isNotEmpty) {
      return Map.from(maps.first);
    }
    return null;
  }

  // All of the methods (insert, query, update, delete) can also be done using
  // raw SQL commands. This method uses a raw query to give the row count.
  Future<int?> queryRowCount() async {
    Database? db = await instance.database;
    return Sqflite.firstIntValue(
        await db!.rawQuery('SELECT COUNT(*) FROM $table'));
  }

  // We are assuming here that the id column in the map is set. The other
  // column values will be used to update the row.
  Future<int> update(Map<String, dynamic> row) async {
    Database? db = await instance.database;
    int id = row[columnId];
    return await db!
        .update(table, row, where: '$columnId = ?', whereArgs: [id]);
  }

  // Deletes the row specified by the id. The number of affected rows is
  // returned. This should be 1 as long as the row exists.
  Future<int> delete(int id) async {
    Database? db = await instance.database;
    return await db!.delete(table, where: '$columnId = ?', whereArgs: [id]);
  }

  Future<int> deleteAll() async {
    Database? db = await instance.database;
    return await db!.rawDelete('DELETE FROM $table');
  }
}
