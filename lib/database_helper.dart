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
  static const columnSigla = 'sigla';
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
  static const columnModelo = 'modelo';
  static const columnLatitude = 'latitude';
  static const columnLongitude = 'longitude';
  static const columnImagem = 'imagem';

  var places = [
    {
      "nome": "Universidade Estadual Paulista Júlio de Mesquita Filho",
      "sigla": "UNESP",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
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
      "subtipo": "ensino superior",
      "modelo": "pública",
      "latitude": "-22.34929957693126",
      "longitude": "-49.0316471858431",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Universidade de São Paulo",
      "sigla": "USP",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
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
      "subtipo": "ensino superior",
      "modelo": "pública",
      "latitude": "-22.334744982792987",
      "longitude": "-49.058430512575534",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Universidade Virtual do Estado de São Paulo",
      "sigla": "UNIVESP",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
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
      "subtipo": "ensino superior",
      "modelo": "pública",
      "latitude": "-22.326655504168492",
      "longitude": "-49.06044697002488",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Faculdade de Tecnologia",
      "sigla": "FATEC",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
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
      "subtipo": "ensino superior",
      "modelo": "pública",
      "latitude": "-22.329320873924555",
      "longitude": "-49.07358924415803",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "UNIVERSIDADE NOVE DE JULHO",
      "sigla": "Uninove",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "R. Nicolau Assis",
      "quadra": "-",
      "numero": "15",
      "bairro": "Jardim Panorama",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17011102",
      "categoria": "Educação",
      "tipo": "Universidade",
      "subtipo": "ensino superior",
      "modelo": "privada",
      "latitude": "-22.337253361309994",
      "longitude": "-49.05118723751113",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "UNIVERSIDADE PAULISTA",
      "sigla": "Unip",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "Rua Luís Levorato",
      "quadra": "-",
      "numero": "140",
      "bairro": "Chácaras Bauruenses",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17048290",
      "categoria": "Educação",
      "tipo": "Universidade",
      "subtipo": "ensino superior",
      "modelo": "privada",
      "latitude": "-22.371070382844692",
      "longitude": "-49.032221324043874",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Instituição Toledo de Ensino",
      "sigla": "ITE",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
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
      "subtipo": "ensino superior",
      "modelo": "privada",
      "latitude": "-22.324833716315926",
      "longitude": "-49.09200451214314",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "FACULDADES INTEGRADAS DE BAURU",
      "sigla": "FIB",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "R. José Santiago",
      "quadra": "-",
      "numero": "16",
      "bairro": "Vila Ipiranga",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17056100",
      "categoria": "Educação",
      "tipo": "Universidade",
      "subtipo": "ensino superior",
      "modelo": "privada",
      "latitude": "-22.34484751050656",
      "longitude": "-49.10715297311927",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "UNIVERSIDADE BRASIL UNIESP",
      "sigla": "UNIESP",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
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
      "subtipo": "ensino superior",
      "modelo": "privada",
      "latitude": "-22.325621732915746",
      "longitude": "-49.06226036282878",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Faculdade Anhanguera de Bauru",
      "sigla": "Anhanguera",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
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
      "subtipo": "ensino superior",
      "modelo": "privada",
      "latitude": "-22.304904011843636",
      "longitude": "-49.07279814428455",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Faculdade Estácio de Bauru",
      "sigla": "Estácio",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
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
      "subtipo": "ensino superior",
      "modelo": "privada",
      "latitude": "-22.340837508463913",
      "longitude": "-49.06368153830616",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Universidade do Sagrado Coração",
      "sigla": "USC/Unisagrado",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
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
      "subtipo": "ensino superior",
      "modelo": "privada",
      "latitude": "-22.327638807227725",
      "longitude": "-49.05322005423427",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Hospital de Reabilitação de Anomalias Crânio-Faciais",
      "sigla": "Centrinho",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "R. Silvio Marchione",
      "quadra": "3",
      "numero": "20",
      "bairro": "Vila Nova Cidade Universitaria",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17012900",
      "categoria": "Saúde",
      "tipo": "Urgência",
      "subtipo": "-",
      "modelo": "pública",
      "latitude": "-22.33374242704435",
      "longitude": "-49.059912178703826",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Hospital de Base de Bauru",
      "sigla": "Hospital de Base",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "R. Monsenhor Claro",
      "quadra": "8",
      "numero": "88",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17800000",
      "categoria": "Saúde",
      "tipo": "Emergência",
      "subtipo": "Urgência",
      "modelo": "pública",
      "latitude": "-22.32944291317444",
      "longitude": "-49.07678068465824",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Hospital Estadual de Bauru",
      "sigla": "Hospital Estadual",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "Av. Eng. Luís Edmundo Carrijo Coube",
      "quadra": "1",
      "numero": "100",
      "bairro": "Núcleo Residencial Presidente Geisel",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17033360",
      "categoria": "Saúde",
      "tipo": "Emergência",
      "subtipo": "Urgência",
      "modelo": "pública",
      "latitude": "-22.33730691583378",
      "longitude": "-49.02813341534177",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Ambulatório Médico de Especialidades",
      "sigla": "AME Bauru",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "R. Rubens Arruda",
      "quadra": "7",
      "numero": "s/n",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17015110",
      "categoria": "Saúde",
      "tipo": "Urgência",
      "subtipo": "-",
      "modelo": "pública",
      "latitude": "-22.32947112223451",
      "longitude": "-49.07809408465824",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Maternidade Santa Isabel",
      "sigla": "Maternidade",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "R. Araújo Leite",
      "quadra": "26",
      "numero": "27",
      "bairro": "Vila universitaria",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17012055",
      "categoria": "Saúde",
      "tipo": "Emergência",
      "subtipo": "Urgência",
      "modelo": "pública",
      "latitude": "-22.33307298069005",
      "longitude": "-49.06531626961259",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Pronto Socorro Central",
      "sigla": "Pronto Socorro",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "R. Rubens Arruda",
      "quadra": "7",
      "numero": "s/n",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17010260",
      "categoria": "Saúde",
      "tipo": "Emergência",
      "subtipo": "Urgência",
      "modelo": "pública",
      "latitude": "-22.329798200410046",
      "longitude": "-49.07758791533681",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Unidade de Pronto Atendimento",
      "sigla": "UPA",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bela Vista",
      "logradouro": "R. Marçal de Arruda Campos",
      "quadra": "4",
      "numero": "45",
      "bairro": "Vila Lemos",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17063060",
      "categoria": "Saúde",
      "tipo": "Emergência",
      "subtipo": "",
      "modelo": "pública",
      "latitude": "-22.308190985306048",
      "longitude": "-49.08962939192264",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Unidade de Pronto Atendimento",
      "sigla": "UPA",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Geisel Redentor",
      "logradouro": "R. Antônio Manoel Costa",
      "quadra": "10",
      "numero": "s/n",
      "bairro": "Jardim Olimpico",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17032631",
      "categoria": "Saúde",
      "tipo": "Emergência",
      "subtipo": "",
      "modelo": "pública",
      "latitude": "-22.3256755062762",
      "longitude": "-49.025475007949446",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Unidade de Pronto Atendimento",
      "sigla": "UPA",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Ipiranga",
      "logradouro": "R. José Miguel",
      "quadra": "21",
      "numero": "45",
      "bairro": "Vila Niponica",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17052170",
      "categoria": "Saúde",
      "tipo": "Emergência",
      "subtipo": "",
      "modelo": "pública",
      "latitude": "-22.348872454588996",
      "longitude": "-49.102824030683514",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Unidade de Pronto Atendimento",
      "sigla": "UPA",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Mary Dota",
      "logradouro": "R. Pedro Salvador",
      "quadra": "2",
      "numero": "s/n",
      "bairro": "Núcleo Habitacional Mary Dota",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17026390",
      "categoria": "Saúde",
      "tipo": "Emergência",
      "subtipo": "",
      "modelo": "pública",
      "latitude": "-22.290920926765974",
      "longitude": "-49.04427875397472",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Hospital Beneficência Portuguesa",
      "sigla": "Beneficência Portuguesa",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "R. Rio Branco",
      "quadra": "13",
      "numero": "83",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17015311",
      "categoria": "Saúde",
      "tipo": "Emergência",
      "subtipo": "Urgência",
      "modelo": "privada",
      "latitude": "-22.32671339569831",
      "longitude": "-49.0700008",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Hospital Unimed Bauru",
      "sigla": "Unimed",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "Av. Dr. Arnaldo Prado Curvello",
      "quadra": "10",
      "numero": "110",
      "bairro": "Parque Santa Terezinha",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17035500",
      "categoria": "Saúde",
      "tipo": "Emergência",
      "subtipo": "Urgência",
      "modelo": "privada",
      "latitude": "-22.320510958102233",
      "longitude": "-48.9753947",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Fundação Doutor Amaral Carvalho",
      "sigla": "Amaral Carvalho",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "R. Rio Branco",
      "quadra": "14",
      "numero": "26",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17015311",
      "categoria": "Saúde",
      "tipo": "",
      "subtipo": "",
      "modelo": "privada",
      "latitude": "-22.32770470690945",
      "longitude": "-49.07065024508672",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Hospital e Maternidade São Francisco",
      "sigla": "Pronto socorro São Lucas",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "R. Gustavo Maciel",
      "quadra": "15",
      "numero": "85",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17015321",
      "categoria": "Saúde",
      "tipo": "Emergência",
      "subtipo": "Urgência",
      "modelo": "privada",
      "latitude": "-22.326837309855232",
      "longitude": "-49.0692858",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Parque Dr. César Benedito Fernandes Rodrigues",
      "sigla": "Parque Vitória Régia",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "Av. Nações Unidas",
      "quadra": "25",
      "numero": "25",
      "bairro": "Jardim Brasil",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "-",
      "categoria": "Lazer",
      "tipo": "gratuito",
      "subtipo": "recreação",
      "modelo": "",
      "latitude": "-22.331397534832202",
      "longitude": "-49.05796903556737",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Jardim Botânico Municipal de Bauru",
      "sigla": "Jardim Botânico",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "Rod. Cmte. João Ribeiro de Barros",
      "quadra": "Km 232",
      "numero": "s/n",
      "bairro": "Tangaras",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17035245",
      "categoria": "Lazer",
      "tipo": "gratuito",
      "subtipo": "recreação",
      "modelo": "",
      "latitude": "-22.343326387711222",
      "longitude": "-49.01728682594424",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Estação Experimental de Bauru",
      "sigla": "Horto Florestal Bauru",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "Av. Rodrigues Alves",
      "quadra": "38",
      "numero": "25",
      "bairro": "Vila Cardia",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17030000",
      "categoria": "Lazer",
      "tipo": "gratuito",
      "subtipo": "recreação",
      "modelo": "",
      "latitude": "-22.31433317202443",
      "longitude": "-49.03947804806077",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Pinacoteca Municipal de Bauru",
      "sigla": "Casa Ponce Paz",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "R. Antônio Alves",
      "quadra": "9",
      "numero": "10",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17010170",
      "categoria": "Lazer",
      "tipo": "gratuito",
      "subtipo": "entretenimento",
      "modelo": "",
      "latitude": "-22.320351272979885",
      "longitude": "-49.07062924483394",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Museu Ferroviário Regional de Bauru",
      "sigla": "Museu Ferroviário",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "R. Primeiro de Agosto",
      "quadra": "1",
      "numero": "36",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17010011",
      "categoria": "Lazer",
      "tipo": "gratuito",
      "subtipo": "entretenimento",
      "modelo": "",
      "latitude": "-22.322364834980583",
      "longitude": "-49.077721951595024",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Museu da Imagem e do Som de Bauru",
      "sigla": "Museu da Imagem do Som",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "R. Rio Branco",
      "quadra": "3",
      "numero": "16",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17010190",
      "categoria": "Lazer",
      "tipo": "gratuito",
      "subtipo": "entretenimento",
      "modelo": "",
      "latitude": "-22.318226371035486",
      "longitude": "-49.07337317491335",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Museu Histórico Municipal",
      "sigla": "Museu Histórico",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "R. Rio Branco",
      "quadra": "3",
      "numero": "16",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17010190",
      "categoria": "Lazer",
      "tipo": "gratuito",
      "subtipo": "entretenimento",
      "modelo": "",
      "latitude": "-22.318226371035486",
      "longitude": "-49.07337317491335",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Igreja Tenrikyo Dendotyo",
      "sigla": "Igreja Tenrikyo",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "R. Newton Prado",
      "quadra": "4",
      "numero": "34",
      "bairro": "Jardim Independencia",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17054330",
      "categoria": "Lazer",
      "tipo": "gratuito",
      "subtipo": "recreação",
      "modelo": "",
      "latitude": "-22.335232697557483",
      "longitude": "-49.08695283017743",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Calçadão da Batista",
      "sigla": "Calçadão",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "R. Batista de Carvalho",
      "quadra": "4",
      "numero": "s/n",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17010901",
      "categoria": "Lazer",
      "tipo": "gratuito",
      "subtipo": "entretenimento",
      "modelo": "",
      "latitude": "-22.322658049649476",
      "longitude": "-49.07278218945517",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Recinto Mello Moraes",
      "sigla": "Recinto",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "Av. Comendador José da Silva Martha",
      "quadra": "58",
      "numero": "68",
      "bairro": "Jardim Ouro Verde",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17054630",
      "categoria": "Lazer",
      "tipo": "pago",
      "subtipo": "entretenimento",
      "modelo": "",
      "latitude": "-22.357940713145258",
      "longitude": "-49.095371122571635",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Bosque José Guedes de Azevedo",
      "sigla": "Bosque da C,omunidade",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "R. Araújo Leite",
      "quadra": "29",
      "numero": "s/n",
      "bairro": "Vila Universitaria",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17012330",
      "categoria": "Lazer",
      "tipo": "gratuito",
      "subtipo": "recreação",
      "modelo": "",
      "latitude": "",
      "longitude": "",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Alameda Rodoserv Center",
      "sigla": "Alameda",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "R. Luiz Levorato",
      "quadra": "1",
      "numero": "55",
      "bairro": "Jardim Marabá",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17048290",
      "categoria": "Lazer",
      "tipo": "pago",
      "subtipo": "entretenimento",
      "modelo": "",
      "latitude": "-22.370630178657553",
      "longitude": "-49.03659661459039",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Parque Zoológico Municipal de Bauru",
      "sigla": "Zoológico de Bauru",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "Rod. Cmte. João Ribeiro de Barros",
      "quadra": "km 232",
      "numero": "s/n",
      "bairro": "Vargem Limpa",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17040900",
      "categoria": "Lazer",
      "tipo": "pago",
      "subtipo": "recreação",
      "modelo": "",
      "latitude": "-22.340689394198595",
      "longitude": "-49.020026824642095",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Bauru Golf Club",
      "sigla": "Golf Bauru",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "Rod. Cmte. João Ribeiro de Barros",
      "quadra": "Km 362",
      "numero": "s/n",
      "bairro": "Zona Rural",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17490000",
      "categoria": "Lazer",
      "tipo": "pago",
      "subtipo": "recreação",
      "modelo": "",
      "latitude": "-22.341456549584993",
      "longitude": "-49.21197685358588",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Teatro Municipal Celina Lourdes Alves Neves",
      "sigla": "Teatro Municipal de Bauru",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "Av. Nações Unida",
      "quadra": "8",
      "numero": "9",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17010130",
      "categoria": "Lazer",
      "tipo": "pago",
      "subtipo": "entretenimento",
      "modelo": "",
      "latitude": "-22.319118327975715",
      "longitude": "-49.06853858773211",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Poupatempo Bauru",
      "sigla": "Poupatempo",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "R. Inconfidência",
      "quadra": "4",
      "numero": "50",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17012150",
      "categoria": "Serviços",
      "tipo": "Públicos",
      "subtipo": "essencial",
      "modelo": "",
      "latitude": "-22.315309562095457",
      "longitude": "-49.06981398610431",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Prefeitura Municipal de Bauru",
      "sigla": "Prefeitura",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "Praça das Cerejeiras",
      "quadra": "1",
      "numero": "59",
      "bairro": "Vila Noemy",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17014900",
      "categoria": "Serviços",
      "tipo": "Públicos",
      "subtipo": "essencial",
      "modelo": "",
      "latitude": "-22.330970314628985",
      "longitude": "-49.07004280961378",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Núcleo de Saúde Beija Flor - Dr. Armando Cardieri",
      "sigla": "Núcleo de Saúde",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Beija Flor",
      "logradouro": "Rua Julieta G. de Mendonça",
      "quadra": "1",
      "numero": "",
      "bairro": "N.H. Beija Flor",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17025500",
      "categoria": "Saúde",
      "tipo": "Urgência",
      "subtipo": "",
      "modelo": "pública",
      "latitude": "-22.304666724443248",
      "longitude": "-49.05036127367236",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Núcleo de Saúde Bela Vista - Dr. Odilon Pinto do Amaral",
      "sigla": "Núcleo de Saúde",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bela Vista",
      "logradouro": "R. Marçal de Arruda Campos",
      "quadra": "4",
      "numero": "41",
      "bairro": "Vila Lemos",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17063095",
      "categoria": "Saúde",
      "tipo": "Urgência",
      "subtipo": "",
      "modelo": "pública",
      "latitude": "-22.30863147849218",
      "longitude": "-49.08923555012147",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Núcleo de Saúde Cardia - Dr. Antônio Azevedo",
      "sigla": "Núcleo de Saúde",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Cardia",
      "logradouro": "R. Ezequiel Ramos",
      "quadra": "11",
      "numero": "78",
      "bairro": "Vila Cardia",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17013111",
      "categoria": "Saúde",
      "tipo": "Urgência",
      "subtipo": "",
      "modelo": "pública",
      "latitude": "-22.318987068032115",
      "longitude": "-49.06548622209348",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Núcleo de Saúde Centro - Dr. Alpheu de Vasconcelos Sampaio",
      "sigla": "Núcleo de Saúde",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Centro",
      "logradouro": "R. Quintino Bocaiúva",
      "quadra": "5",
      "numero": "45",
      "bairro": "Centro",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17015100",
      "categoria": "Saúde",
      "tipo": "Urgência",
      "subtipo": "",
      "modelo": "pública",
      "latitude": "-22.329928388875878",
      "longitude": "-49.07932299266506",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Núcleo de Saúde Chapadão Mendonça",
      "sigla": "Núcleo de Saúde",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Chapadão Mendonça",
      "logradouro": "R. Arlindo Pinto Ferreira",
      "quadra": "1",
      "numero": "15",
      "bairro": "Jardim Chapadão",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17026710",
      "categoria": "Saúde",
      "tipo": "Urgência",
      "subtipo": "",
      "modelo": "pública",
      "latitude": "-22.297560144515444",
      "longitude": "-49.03792776859866",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Núcleo de Saúde Europa - Dr. Jerônimo Decunto Júnior",
      "sigla": "Núcleo de Saúde",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Europa",
      "logradouro": "R. Hermes C. Batista",
      "quadra": "1",
      "numero": "64",
      "bairro": "N.H. Carmen C. Coube",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17017492",
      "categoria": "Saúde",
      "tipo": "Urgência",
      "subtipo": "",
      "modelo": "pública",
      "latitude": "-22.292936032373525",
      "longitude": "-49.046980347092905",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Núcleo de Saúde Falcão - Mário Pinto de Avelar Fernandes",
      "sigla": "Núcleo de Saúde",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Falcão",
      "logradouro": "Rua Salvador Filardi",
      "quadra": "6",
      "numero": "8",
      "bairro": "Vila Pacífico",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17051343",
      "categoria": "Saúde",
      "tipo": "Urgência",
      "subtipo": "",
      "modelo": "pública",
      "latitude": "-22.329055773079844",
      "longitude": "-49.09997772883497",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Núcleo de Saúde Gasparini - Drª Vilma de Araújo Leão",
      "sigla": "Núcleo de Saúde",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Bauru",
      "logradouro": "R. Aparecida Inês Chrispim de Matos",
      "quadra": "2",
      "numero": "",
      "bairro": "N.H. Gasparini",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17022490",
      "categoria": "Saúde",
      "tipo": "Urgência",
      "subtipo": "",
      "modelo": "pública",
      "latitude": "-22.279693516407413",
      "longitude": "-49.08666105766917",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Núcleo de Saúde Geisel - Newton Bohin Ribeiro",
      "sigla": "Núcleo de Saúde",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Geisel",
      "logradouro": "R. Anthero Donnin",
      "quadra": "-",
      "numero": "s/n",
      "bairro": "N.H. Presidente Geisel",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17033660",
      "categoria": "Saúde",
      "tipo": "Urgência",
      "subtipo": "",
      "modelo": "pública",
      "latitude": "-22.332731825159744",
      "longitude": "-49.029481146627255",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Núcleo de Saúde Godoy - Dr. Osires Domingues",
      "sigla": "Núcleo de Saúde",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Godoy",
      "logradouro": "Alameda Flôr do Amor",
      "quadra": "10",
      "numero": "s/n",
      "bairro": "Jardim Godoy",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17021270",
      "categoria": "Saúde",
      "tipo": "Urgência",
      "subtipo": "",
      "modelo": "pública",
      "latitude": "-22.29963937367217",
      "longitude": "-49.076432614859456",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Núcleo de Saúde Independência - Dr. Alipio Gonçalves dos Santos",
      "sigla": "Núcleo de Saúde",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Independência",
      "logradouro": "Rua Cuba",
      "quadra": "14",
      "numero": "s/n",
      "bairro": "Vila Independencia",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17054280",
      "categoria": "Saúde",
      "tipo": "Urgência",
      "subtipo": "",
      "modelo": "pública",
      "latitude": "-22.344057683556322",
      "longitude": "-49.088232317187654",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Núcleo de Saúde Jussara Celina",
      "sigla": "Núcleo de Saúde",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Jussara Celina",
      "logradouro": "Rua Bernardino de Campos",
      "quadra": "23",
      "numero": "s/n",
      "bairro": "Vila Jardim Celina",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17055025",
      "categoria": "Saúde",
      "tipo": "Urgência",
      "subtipo": "",
      "modelo": "pública",
      "latitude": "-22.337774058465428",
      "longitude": "-49.104123231904104",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Núcleo de Saúde Mary Dota - Dr. Angelo Pagoto",
      "sigla": "Núcleo de Saúde",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Mary Dota",
      "logradouro": "R. Pedro Prata de Oliveira",
      "quadra": "-",
      "numero": "-",
      "bairro": "N.H. Mary Dota",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17026410",
      "categoria": "Saúde",
      "tipo": "Urgência",
      "subtipo": "",
      "modelo": "pública",
      "latitude": "-22.29175081227958",
      "longitude": "-49.04394984503173",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Núcleo de Saúde Nova Esperança - Dr. Luiz Castilho",
      "sigla": "Núcleo de Saúde",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Nova Esperança",
      "logradouro": "Rua Benedito de Abreu",
      "quadra": "3",
      "numero": "s/n",
      "bairro": "Jardim Nova Esperança",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17065220",
      "categoria": "Saúde",
      "tipo": "Urgência",
      "subtipo": "",
      "modelo": "pública",
      "latitude": "-22.315045723622713",
      "longitude": "-49.11685338280353",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Núcleo de Saúde Octávio Rasi - Dr. Edison Bastos Gasparini",
      "sigla": "Núcleo de Saúde",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Octávio Rasi",
      "logradouro": "Rua Paulo Leivas Macalão",
      "quadra": "3",
      "numero": "s/n",
      "bairro": "N.H. Octávio Rasi",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17039220",
      "categoria": "Saúde",
      "tipo": "Urgência",
      "subtipo": "",
      "modelo": "pública",
      "latitude": "-22.30602868414477",
      "longitude": "-49.00223141528453",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Núcleo de Saúde Parque Vista Alegre - Dr. Sebastião G. Cavalli",
      "sigla": "Núcleo de Saúde",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Vista Alegre",
      "logradouro": "Rua Jacob Corso",
      "quadra": "4",
      "numero": "",
      "bairro": "Parque Vista Alegre",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17020830",
      "categoria": "Saúde",
      "tipo": "Urgência",
      "subtipo": "",
      "modelo": "pública",
      "latitude": "-22.30290668916787",
      "longitude": "-49.06829450006328",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Núcleo de Saúde Redentor - Dr. Fidelis Barriel",
      "sigla": "Núcleo de Saúde",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Redentor",
      "logradouro": "Rua São Lucas",
      "quadra": "3",
      "numero": "30",
      "bairro": "Jardim Redentor",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17032251",
      "categoria": "Saúde",
      "tipo": "Urgência",
      "subtipo": "",
      "modelo": "pública",
      "latitude": "-22.31618086598654",
      "longitude": "-49.03119607976361",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    },
    {
      "nome": "Núcleo de Saúde Tibiriçá - Dr. Dolírio Sandin",
      "sigla": "Núcleo de Saúde",
      "descricao":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      "unidade": "Tibiriçá",
      "logradouro": "Rua Carmelo Zamataro",
      "quadra": "-",
      "numero": "s/n",
      "bairro": "Zona Rural",
      "cidade": "Bauru",
      "estado": "SP",
      "cep": "17110025",
      "categoria": "Saúde",
      "tipo": "Urgência",
      "subtipo": "",
      "modelo": "pública",
      "latitude": "-22.236144225024038",
      "longitude": "-49.21909587116845",
      "imagem":
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
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
            $columnSigla TEXT,
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
            $columnModelo TEXT,
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
          DatabaseHelper.columnSigla,
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
          DatabaseHelper.columnModelo,
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
          DatabaseHelper.columnSigla,
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
          DatabaseHelper.columnModelo,
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
