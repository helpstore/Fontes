object DMCadastros: TDMCadastros
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 65532
  Top = 65532
  Height = 645
  Width = 1345
  object Pessoas_FJ: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = Pessoas_FJAfterInsert
    AfterPost = Pessoas_FJAfterPost
    AfterScroll = Pessoas_FJAfterScroll
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = Pessoas_FJBeforePost
    DeleteSQL.Strings = (
      'delete from GLO_PESSOAS_FJ'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into GLO_PESSOAS_FJ'
      
        '  (ATIVIDADE, BAIRRO, CELULAR, CEP, CIDADE, CNPJ, CODIGO, CODIGO' +
        '_2, COMPLEMENTO, '
      
        '   CONTATO, CONTATO1, CONTATO2, CONTATO3, CONVENIO, CPF_CGC, DT_' +
        'CADASTRO, '
      
        '   DT_NASCIMENTO, EMAIL, EMISSOR, ENDERECO, FANTASIA, FAX, FJ, F' +
        'ONE, INSC_MUNIC, '
      
        '   MAP_LAT, MAP_LONG, NFE_EXP, NOME_RAZAO, NUMERO, OBS, ORDEM, P' +
        'ESSOA, '
      '   REGIAO, RG_IE, SELECIONADO, UF)'
      'values'
      
        '  (:ATIVIDADE, :BAIRRO, :CELULAR, :CEP, :CIDADE, :CNPJ, :CODIGO,' +
        ' :CODIGO_2, '
      
        '   :COMPLEMENTO, :CONTATO, :CONTATO1, :CONTATO2, :CONTATO3, :CON' +
        'VENIO, '
      
        '   :CPF_CGC, :DT_CADASTRO, :DT_NASCIMENTO, :EMAIL, :EMISSOR, :EN' +
        'DERECO, '
      
        '   :FANTASIA, :FAX, :FJ, :FONE, :INSC_MUNIC, :MAP_LAT, :MAP_LONG' +
        ', :NFE_EXP, '
      
        '   :NOME_RAZAO, :NUMERO, :OBS, :ORDEM, :PESSOA, :REGIAO, :RG_IE,' +
        ' :SELECIONADO, '
      '   :UF)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME_RAZAO,'
      '  FANTASIA,'
      '  ATIVIDADE,'
      '  ENDERECO,'
      '  NUMERO,'
      '  COMPLEMENTO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  FONE,'
      '  FAX,'
      '  CELULAR,'
      '  PESSOA,'
      '  CPF_CGC,'
      '  RG_IE,'
      '  CONTATO,'
      '  DT_NASCIMENTO,'
      '  DT_CADASTRO,'
      '  EMAIL,'
      '  OBS,'
      '  INSC_MUNIC,'
      '  CONVENIO,'
      '  EMISSOR,'
      '  CONTATO1,'
      '  CONTATO2,'
      '  CONTATO3,'
      '  ORDEM,'
      '  REGIAO,'
      '  NFE_EXP,'
      '  SELECIONADO,'
      '  CODIGO_2,'
      '  FJ,'
      '  MAP_LAT,'
      '  MAP_LONG'
      'from GLO_PESSOAS_FJ '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               Regiao,'
      '               NOME_RAZAO, '
      '               FANTASIA, '
      '               ATIVIDADE,'
      '               ENDERECO, '
      '               NUMERO, '
      '               COMPLEMENTO, '
      '               BAIRRO, '
      '               CIDADE, '
      '               UF, '
      '               CEP, '
      '               FONE,'
      '               FAX, '
      '               CELULAR, '
      '               PESSOA, '
      '               CPF_CGC, '
      '               SUBSTRING (RG_IE FROM 1 FOR 15) RG_IE  , '
      '               CONTATO, '
      '               DT_NASCIMENTO, '
      '               DT_CADASTRO, '
      '               EMAIL, '
      '               OBS,'
      '               INSC_MUNIC,'
      '               CONVENIO,'
      '               EMISSOR,'
      '               ORDEM,'
      '               CODIGO AS ID_CLIENTE,'
      'MAP_LAT,'
      'MAP_LONG'
      ''
      'FROM GLO_PESSOAS_FJ'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME_RAZAO')
    ModifySQL.Strings = (
      'update GLO_PESSOAS_FJ'
      'set'
      '  ATIVIDADE = :ATIVIDADE,'
      '  BAIRRO = :BAIRRO,'
      '  CELULAR = :CELULAR,'
      '  CEP = :CEP,'
      '  CIDADE = :CIDADE,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  CODIGO_2 = :CODIGO_2,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  CONTATO = :CONTATO,'
      '  CONTATO1 = :CONTATO1,'
      '  CONTATO2 = :CONTATO2,'
      '  CONTATO3 = :CONTATO3,'
      '  CONVENIO = :CONVENIO,'
      '  CPF_CGC = :CPF_CGC,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  DT_NASCIMENTO = :DT_NASCIMENTO,'
      '  EMAIL = :EMAIL,'
      '  EMISSOR = :EMISSOR,'
      '  ENDERECO = :ENDERECO,'
      '  FANTASIA = :FANTASIA,'
      '  FAX = :FAX,'
      '  FJ = :FJ,'
      '  FONE = :FONE,'
      '  INSC_MUNIC = :INSC_MUNIC,'
      '  MAP_LAT = :MAP_LAT,'
      '  MAP_LONG = :MAP_LONG,'
      '  NFE_EXP = :NFE_EXP,'
      '  NOME_RAZAO = :NOME_RAZAO,'
      '  NUMERO = :NUMERO,'
      '  OBS = :OBS,'
      '  ORDEM = :ORDEM,'
      '  PESSOA = :PESSOA,'
      '  REGIAO = :REGIAO,'
      '  RG_IE = :RG_IE,'
      '  SELECIONADO = :SELECIONADO,'
      '  UF = :UF'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 840
    Top = 56
    object Pessoas_FJCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_PESSOAS_FJ"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Pessoas_FJCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
    object Pessoas_FJNOME_RAZAO: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome/Raz'#227'o Social'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object Pessoas_FJATIVIDADE: TIntegerField
      FieldName = 'ATIVIDADE'
      Origin = '"GLO_PESSOAS_FJ"."ATIVIDADE"'
    end
    object Pessoas_FJFANTASIA: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object Pessoas_FJENDERECO: TIntegerField
      FieldName = 'ENDERECO'
      Origin = '"GLO_PESSOAS_FJ"."ENDERECO"'
    end
    object Pessoas_FJNUMERO: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = '"GLO_PESSOAS_FJ"."NUMERO"'
      Size = 15
    end
    object Pessoas_FJCOMPLEMENTO: TIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_PESSOAS_FJ"."COMPLEMENTO"'
      Size = 30
    end
    object Pessoas_FJBAIRRO: TIntegerField
      FieldName = 'BAIRRO'
      Origin = '"GLO_PESSOAS_FJ"."BAIRRO"'
    end
    object Pessoas_FJCIDADE: TIntegerField
      FieldName = 'CIDADE'
      Origin = '"GLO_PESSOAS_FJ"."CIDADE"'
      OnValidate = Pessoas_FJCIDADEValidate
    end
    object Pessoas_FJUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PESSOAS_FJ"."UF"'
      OnValidate = Pessoas_FJUFValidate
      FixedChar = True
      Size = 2
    end
    object Pessoas_FJCEP: TIBStringField
      Tag = 1
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"GLO_PESSOAS_FJ"."CEP"'
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object Pessoas_FJFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object Pessoas_FJFAX: TIBStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object Pessoas_FJCELULAR: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = '"GLO_PESSOAS_FJ"."CELULAR"'
    end
    object Pessoas_FJPESSOA: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"GLO_PESSOAS_FJ"."PESSOA"'
      OnGetText = Pessoas_FJPESSOAGetText
      OnSetText = Pessoas_FJPESSOASetText
      OnValidate = Pessoas_FJPESSOAValidate
      FixedChar = True
      Size = 1
    end
    object Pessoas_FJINSC_MUNIC: TIBStringField
      DisplayLabel = 'Inscri'#231#227'o Municipal'
      FieldName = 'INSC_MUNIC'
      Origin = '"GLO_PESSOAS_FJ"."INSC_MUNIC"'
      Size = 15
    end
    object Pessoas_FJCPF_CGC: TIBStringField
      Tag = 1
      DisplayLabel = 'C.P.F. ou C.G.C.'
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      OnValidate = Pessoas_FJCPF_CGCValidate
      EditMask = '00.000.000/0000-00;0;_'
      Size = 15
    end
    object Pessoas_FJRG_IE: TIBStringField
      Tag = 1
      DisplayLabel = 'R.G. ou I.E.'
      FieldName = 'RG_IE'
      Origin = '"GLO_PESSOAS_FJ"."RG_IE"'
      Size = 15
    end
    object Pessoas_FJCONTATO: TIBStringField
      DisplayLabel = 'Contato'
      FieldName = 'CONTATO'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO"'
      Size = 30
    end
    object Pessoas_FJDT_NASCIMENTO: TDateTimeField
      DisplayLabel = 'Dt. Nascimento'
      FieldName = 'DT_NASCIMENTO'
      Origin = '"GLO_PESSOAS_FJ"."DT_NASCIMENTO"'
    end
    object Pessoas_FJDT_CADASTRO: TDateTimeField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'DT_CADASTRO'
      Origin = '"GLO_PESSOAS_FJ"."DT_CADASTRO"'
    end
    object Pessoas_FJEMAIL: TIBStringField
      Tag = 1
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Origin = '"GLO_PESSOAS_FJ"."EMAIL"'
      Size = 80
    end
    object Pessoas_FJOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"GLO_PESSOAS_FJ"."OBS"'
      Size = 8
    end
    object Pessoas_FJCONVENIO: TIntegerField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'CONVENIO'
      Origin = '"GLO_PESSOAS_FJ"."CONVENIO"'
    end
    object Pessoas_FJEMISSOR: TIBStringField
      DisplayLabel = 'Emissor'
      FieldName = 'EMISSOR'
      Origin = '"GLO_PESSOAS_FJ"."EMISSOR"'
      Size = 6
    end
    object Pessoas_FJORDEM: TIntegerField
      Tag = 1
      DisplayLabel = 'Ordem'
      FieldName = 'ORDEM'
      Origin = '"GLO_PESSOAS_FJ"."ORDEM"'
    end
    object Pessoas_FJREGIAO: TIntegerField
      FieldName = 'REGIAO'
      Origin = '"GLO_PESSOAS_FJ"."REGIAO"'
    end
    object Pessoas_FJID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
    end
    object Pessoas_FJMAP_LAT: TIBStringField
      FieldName = 'MAP_LAT'
      Origin = '"GLO_PESSOAS_FJ"."MAP_LAT"'
      Size = 200
    end
    object Pessoas_FJMAP_LONG: TIBStringField
      FieldName = 'MAP_LONG'
      Origin = '"GLO_PESSOAS_FJ"."MAP_LONG"'
      Size = 200
    end
  end
  object Logradouros: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    DeleteSQL.Strings = (
      'delete from GLO_LOGRADOUROS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into GLO_LOGRADOUROS'
      '  (CNPJ, CODIGO, NOME)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME'
      'from GLO_LOGRADOUROS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               NOME '
      'FROM GLO_LOGRADOUROS'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update GLO_LOGRADOUROS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GLO_LOGRADOUROS_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 784
    Top = 328
    object LogradourosCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_LOGRADOUROS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object LogradourosCODIGO: TIntegerField
      Tag = 1
      FieldName = 'CODIGO'
      Origin = 'LOGRADOUROS.CODIGO'
      Required = True
    end
    object LogradourosNOME: TIBStringField
      Tag = 1
      FieldName = 'NOME'
      Origin = 'LOGRADOUROS.NOME'
      Required = True
      Size = 50
    end
  end
  object Bairros: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    OnPostError = AtividadesPostError
    DeleteSQL.Strings = (
      'delete from GLO_BAIRROS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into GLO_BAIRROS'
      '  (CNPJ, CODIGO, NOME)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME'
      'from GLO_BAIRROS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME'
      'from GLO_BAIRROS '
      'where'
      '  CNPJ = :CNPJ '
      'order by nome')
    ModifySQL.Strings = (
      'update GLO_BAIRROS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GLO_BAIRROS_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 784
    Top = 232
    object BairrosCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_BAIRROS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object BairrosCODIGO: TIntegerField
      Tag = 1
      FieldName = 'CODIGO'
      Origin = 'BAIRROS.CODIGO'
      Required = True
    end
    object BairrosNOME: TIBStringField
      Tag = 1
      FieldName = 'NOME'
      Origin = 'BAIRROS.NOME'
      Required = True
      Size = 50
    end
  end
  object Estados: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    BeforeOpen = LogradourosBeforeOpen
    OnNewRecord = EstadosNewRecord
    DeleteSQL.Strings = (
      'delete from GLO_ESTADOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SIGLA = :OLD_SIGLA')
    InsertSQL.Strings = (
      'insert into GLO_ESTADOS'
      '  (CNPJ, COD_IBGE, MASCARA_IE, NOME, SIGLA)'
      'values'
      '  (:CNPJ, :COD_IBGE, :MASCARA_IE, :NOME, :SIGLA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  SIGLA,'
      '  NOME,'
      '  MASCARA_IE,'
      '  COD_IBGE'
      'from GLO_ESTADOS '
      'where'
      '  CNPJ = :CNPJ and'
      '  SIGLA = :SIGLA')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               SIGLA, '
      '               NOME,'
      '               MASCARA_IE,'
      '               COD_IBGE'
      'FROM GLO_ESTADOS'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update GLO_ESTADOS'
      'set'
      '  CNPJ = :CNPJ,'
      '  COD_IBGE = :COD_IBGE,'
      '  MASCARA_IE = :MASCARA_IE,'
      '  NOME = :NOME,'
      '  SIGLA = :SIGLA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SIGLA = :OLD_SIGLA')
    Left = 784
    Top = 432
    object EstadosCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_ESTADOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object EstadosSIGLA: TIBStringField
      Tag = 1
      FieldName = 'SIGLA'
      Origin = 'ESTADOS.SIGLA'
      Required = True
      FixedChar = True
      Size = 2
    end
    object EstadosNOME: TIBStringField
      Tag = 1
      FieldName = 'NOME'
      Origin = 'ESTADOS.NOME'
      Required = True
      Size = 50
    end
    object EstadosMASCARA_IE: TIBStringField
      DisplayLabel = 'M'#225'scara Ie'
      FieldName = 'MASCARA_IE'
      Origin = '"GLO_ESTADOS"."MASCARA_IE"'
      Size = 15
    end
    object EstadosCOD_IBGE: TIBStringField
      FieldName = 'COD_IBGE'
      Origin = '"GLO_ESTADOS"."COD_IBGE"'
      Size = 2
    end
  end
  object Atividades: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    OnPostError = AtividadesPostError
    DeleteSQL.Strings = (
      'delete from GLO_ATIVIDADES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into GLO_ATIVIDADES'
      '  (CNPJ, CODIGO, NOME)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME'
      'from GLO_ATIVIDADES '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               NOME '
      'FROM GLO_ATIVIDADES'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update GLO_ATIVIDADES'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Generator = 'glo_atividades_ge'
    Left = 16
    Top = 8
    object AtividadesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_ATIVIDADES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object AtividadesCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'ATIVIDADES_COMERCIAIS.CODIGO'
      Required = True
    end
    object AtividadesNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'ATIVIDADES_COMERCIAIS.NOME'
      Required = True
      Size = 50
    end
  end
  object Grupos: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    DeleteSQL.Strings = (
      'delete from EST_GRUPOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into EST_GRUPOS'
      '  (CNPJ, CODIGO, NOME, BASE, MINIMO, MAXIMO)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME, :BASE, :MINIMO, :MAXIMO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  BASE,'
      '  MINIMO,'
      '  MAXIMO'
      'from EST_GRUPOS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               NOME, '
      '               BASE, '
      '               MINIMO, '
      '               MAXIMO '
      'FROM EST_GRUPOS'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update EST_GRUPOS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  BASE = :BASE,'
      '  MINIMO = :MINIMO,'
      '  MAXIMO = :MAXIMO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 88
    Top = 144
    object GruposCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_GRUPOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object GruposCODIGO: TIntegerField
      Tag = 1
      FieldName = 'CODIGO'
      Origin = 'EST_GRUPOS.CODIGO'
      Required = True
    end
    object GruposNOME: TIBStringField
      Tag = 1
      FieldName = 'NOME'
      Origin = 'EST_GRUPOS.NOME'
      Required = True
      Size = 50
    end
    object GruposBASE: TSmallintField
      FieldName = 'BASE'
      Origin = 'EST_GRUPOS.BASE'
      Required = True
      DisplayFormat = '#,##0'
    end
    object GruposMINIMO: TSmallintField
      FieldName = 'MINIMO'
      Origin = 'EST_GRUPOS.MINIMO'
      Required = True
      DisplayFormat = '#,##0'
    end
    object GruposMAXIMO: TSmallintField
      FieldName = 'MAXIMO'
      Origin = 'EST_GRUPOS.MAXIMO'
      Required = True
      DisplayFormat = '#,##0'
    end
  end
  object Subgrupos: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = SubgruposAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = SubgruposBeforePost
    OnNewRecord = SubgruposNewRecord
    DeleteSQL.Strings = (
      'delete from EST_SUBGRUPOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  GRUPO = :OLD_GRUPO and'
      '  SUBGRUPO = :OLD_SUBGRUPO')
    InsertSQL.Strings = (
      'insert into EST_SUBGRUPOS'
      '  (CNPJ, GRUPO, SUBGRUPO, NOME, DESCONTO_MAX, DIGITA_PRC, '
      'COMPRAS_C, COMPRAS_D, '
      
        '   TRANSFERENCIA_C, TRANSFERENCIA_D, VENDAS_C, VENDAS_D, ESTOQUE' +
        ', '
      'ESTOQUE_INI, '
      '   ESTOQUE_FIM, OBS)'
      'values'
      '  (:CNPJ, :GRUPO, :SUBGRUPO, :NOME, :DESCONTO_MAX, :DIGITA_PRC, '
      ':COMPRAS_C, '
      '   :COMPRAS_D, :TRANSFERENCIA_C, :TRANSFERENCIA_D, :VENDAS_C, '
      ':VENDAS_D, '
      '   :ESTOQUE, :ESTOQUE_INI, :ESTOQUE_FIM, :OBS)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  GRUPO,'
      '  SUBGRUPO,'
      '  NOME,'
      '  DESCONTO_MAX,'
      '  DIGITA_PRC,'
      '  COMPRAS_C,'
      '  COMPRAS_D,'
      '  TRANSFERENCIA_C,'
      '  TRANSFERENCIA_D,'
      '  VENDAS_C,'
      '  VENDAS_D,'
      '  ESTOQUE,'
      '  ESTOQUE_INI,'
      '  ESTOQUE_FIM,'
      '  OBS'
      'from EST_SUBGRUPOS '
      'where'
      '  CNPJ = :CNPJ and'
      '  GRUPO = :GRUPO and'
      '  SUBGRUPO = :SUBGRUPO')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               GRUPO, '
      '               SUBGRUPO, '
      '               NOME, '
      '               DESCONTO_MAX, '
      '               DIGITA_PRC ,'
      '               COMPRAS_C,'
      '               COMPRAS_D,'
      '               TRANSFERENCIA_C,'
      '               TRANSFERENCIA_D,'
      '                VENDAS_C,'
      '                VENDAS_D,'
      '                ESTOQUE,'
      '                ESTOQUE_INI,'
      '                ESTOQUE_FIM,'
      '                OBS'
      'FROM EST_SUBGRUPOS'
      'WHERE CNPJ = :CNPJ AND'
      '               GRUPO = :CODIGO'
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update EST_SUBGRUPOS'
      'set'
      '  CNPJ = :CNPJ,'
      '  GRUPO = :GRUPO,'
      '  SUBGRUPO = :SUBGRUPO,'
      '  NOME = :NOME,'
      '  DESCONTO_MAX = :DESCONTO_MAX,'
      '  DIGITA_PRC = :DIGITA_PRC,'
      '  COMPRAS_C = :COMPRAS_C,'
      '  COMPRAS_D = :COMPRAS_D,'
      '  TRANSFERENCIA_C = :TRANSFERENCIA_C,'
      '  TRANSFERENCIA_D = :TRANSFERENCIA_D,'
      '  VENDAS_C = :VENDAS_C,'
      '  VENDAS_D = :VENDAS_D,'
      '  ESTOQUE = :ESTOQUE,'
      '  ESTOQUE_INI = :ESTOQUE_INI,'
      '  ESTOQUE_FIM = :ESTOQUE_FIM,'
      '  OBS = :OBS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  GRUPO = :OLD_GRUPO and'
      '  SUBGRUPO = :OLD_SUBGRUPO')
    DataSource = dsGrupos
    Left = 216
    Top = 144
    object SubgruposCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_SUBGRUPOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SubgruposGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'EST_SUBGRUPOS.GRUPO'
      Required = True
    end
    object SubgruposSUBGRUPO: TIntegerField
      Tag = 1
      FieldName = 'SUBGRUPO'
      Origin = 'EST_SUBGRUPOS.SUBGRUPO'
      Required = True
    end
    object SubgruposNOME: TIBStringField
      Tag = 1
      FieldName = 'NOME'
      Origin = 'EST_SUBGRUPOS.NOME'
      Required = True
      Size = 50
    end
    object SubgruposDIGITA_PRC: TIBStringField
      DefaultExpression = '#,##0.00'
      FieldName = 'DIGITA_PRC'
      Origin = 'EST_SUBGRUPOS.DIGITA_PRC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SubgruposDESCONTO_MAX: TFloatField
      DisplayLabel = 'Desconto M'#225'ximo'
      FieldName = 'DESCONTO_MAX'
      Required = True
    end
    object SubgruposCOMPRAS_C: TIntegerField
      FieldName = 'COMPRAS_C'
      Origin = '"EST_SUBGRUPOS"."COMPRAS_C"'
    end
    object SubgruposCOMPRAS_D: TIntegerField
      FieldName = 'COMPRAS_D'
      Origin = '"EST_SUBGRUPOS"."COMPRAS_D"'
    end
    object SubgruposTRANSFERENCIA_C: TIntegerField
      FieldName = 'TRANSFERENCIA_C'
      Origin = '"EST_SUBGRUPOS"."TRANSFERENCIA_C"'
    end
    object SubgruposTRANSFERENCIA_D: TIntegerField
      FieldName = 'TRANSFERENCIA_D'
      Origin = '"EST_SUBGRUPOS"."TRANSFERENCIA_D"'
    end
    object SubgruposVENDAS_C: TIntegerField
      FieldName = 'VENDAS_C'
      Origin = '"EST_SUBGRUPOS"."VENDAS_C"'
    end
    object SubgruposVENDAS_D: TIntegerField
      FieldName = 'VENDAS_D'
      Origin = '"EST_SUBGRUPOS"."VENDAS_D"'
    end
    object SubgruposESTOQUE: TIntegerField
      DisplayLabel = 'Estoque'
      FieldName = 'ESTOQUE'
      Origin = '"EST_SUBGRUPOS"."ESTOQUE"'
    end
    object SubgruposESTOQUE_INI: TIntegerField
      DisplayLabel = 'Estoque Inicial'
      FieldName = 'ESTOQUE_INI'
      Origin = '"EST_SUBGRUPOS"."ESTOQUE_INI"'
    end
    object SubgruposESTOQUE_FIM: TIntegerField
      DisplayLabel = 'Estoque Final'
      FieldName = 'ESTOQUE_FIM'
      Origin = '"EST_SUBGRUPOS"."ESTOQUE_FIM"'
    end
    object SubgruposOBS: TMemoField
      FieldName = 'OBS'
      Origin = '"EST_SUBGRUPOS"."OBS"'
      BlobType = ftMemo
      Size = 8
    end
  end
  object Marcas: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = MarcasAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    DeleteSQL.Strings = (
      'delete from EST_MARCAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into EST_MARCAS'
      '  (CNPJ, CODIGO, NOME)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME'
      'from EST_MARCAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               NOME '
      'FROM EST_MARCAS'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update EST_MARCAS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'EST_MARCAS_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 16
    Top = 144
    object MarcasCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_MARCAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object MarcasCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'EST_MARCAS.CODIGO'
      Required = True
    end
    object MarcasNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'EST_MARCAS.NOME'
      Required = True
      Size = 50
    end
  end
  object Unidades: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = UnidadesAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    DeleteSQL.Strings = (
      'delete from EST_UNIDADES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SIGLA = :OLD_SIGLA')
    InsertSQL.Strings = (
      'insert into EST_UNIDADES'
      '  (CNPJ, SIGLA, NOME, UNIDADES)'
      'values'
      '  (:CNPJ, :SIGLA, :NOME, :UNIDADES)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  SIGLA,'
      '  NOME,'
      '  UNIDADES'
      'from EST_UNIDADES '
      'where'
      '  CNPJ = :CNPJ and'
      '  SIGLA = :SIGLA')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               SIGLA, '
      '               NOME,'
      '               UNIDADES'
      'FROM EST_UNIDADES'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update EST_UNIDADES'
      'set'
      '  CNPJ = :CNPJ,'
      '  SIGLA = :SIGLA,'
      '  NOME = :NOME,'
      '  UNIDADES = :UNIDADES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SIGLA = :OLD_SIGLA')
    Left = 584
    Top = 98
    object UnidadesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_UNIDADES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object UnidadesSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = '"EST_UNIDADES"."SIGLA"'
      Required = True
      FixedChar = True
      Size = 4
    end
    object UnidadesNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'EST_UNIDADES_MED.NOME'
      Required = True
      Size = 50
    end
    object UnidadesUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = '"EST_UNIDADES"."UNIDADES"'
    end
  end
  object Reducoes: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    DeleteSQL.Strings = (
      'delete from EST_REDUCOES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into EST_REDUCOES'
      
        '  (CNPJ, CODIGO, PERC_ESTADUAL, PERC_INTERESTADUAL, MENSAGEM_NF,' +
        ' MENSAGEM_NF_IE, '
      '   PERC_CONTRIBUINTE)'
      'values'
      
        '  (:CNPJ, :CODIGO, :PERC_ESTADUAL, :PERC_INTERESTADUAL, :MENSAGE' +
        'M_NF, :MENSAGEM_NF_IE, '
      '   :PERC_CONTRIBUINTE)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  PERC_ESTADUAL,'
      '  PERC_INTERESTADUAL,'
      '  MENSAGEM_NF,'
      '  MENSAGEM_NF_IE,'
      '  PERC_CONTRIBUINTE'
      'from EST_REDUCOES '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               PERC_ESTADUAL, '
      '               PERC_INTERESTADUAL, '
      '               MENSAGEM_NF,'
      '               MENSAGEM_NF_IE,'
      '               PERC_CONTRIBUINTE'
      'FROM EST_REDUCOES'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY CODIGO')
    ModifySQL.Strings = (
      'update EST_REDUCOES'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  PERC_ESTADUAL = :PERC_ESTADUAL,'
      '  PERC_INTERESTADUAL = :PERC_INTERESTADUAL,'
      '  MENSAGEM_NF = :MENSAGEM_NF,'
      '  MENSAGEM_NF_IE = :MENSAGEM_NF_IE,'
      '  PERC_CONTRIBUINTE = :PERC_CONTRIBUINTE'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 88
    Top = 192
    object ReducoesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_REDUCOES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object ReducoesCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = 'EST_REDUCOES.CODIGO'
      Required = True
    end
    object ReducoesMENSAGEM_NF: TIBStringField
      Tag = 1
      DisplayLabel = 'Mensagem na NF'
      FieldName = 'MENSAGEM_NF'
      Origin = 'EST_REDUCOES.MENSAGEM_NF'
      Size = 80
    end
    object ReducoesPERC_ESTADUAL: TFloatField
      DisplayLabel = 'Red Est'
      FieldName = 'PERC_ESTADUAL'
      Required = True
    end
    object ReducoesPERC_INTERESTADUAL: TFloatField
      DisplayLabel = 'Red Inter Est'
      FieldName = 'PERC_INTERESTADUAL'
      Required = True
    end
    object ReducoesMENSAGEM_NF_IE: TIBStringField
      DisplayLabel = 'Mensagem Nf Ie'
      FieldName = 'MENSAGEM_NF_IE'
      Origin = '"EST_REDUCOES"."MENSAGEM_NF_IE"'
      Size = 80
    end
    object ReducoesPERC_CONTRIBUINTE: TFloatField
      DisplayLabel = 'Red. Contribuinte'
      FieldName = 'PERC_CONTRIBUINTE'
      Origin = '"EST_REDUCOES"."PERC_CONTRIBUINTE"'
      DisplayFormat = '###,##0.00'
    end
  end
  object Natureza: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = NaturezaAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    DeleteSQL.Strings = (
      'delete from EST_NATUREZA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into EST_NATUREZA'
      
        '  (ALTERA_CUSTO, ATIVA, CALC_COFINS, CALC_ICMS, CALC_INSS, CALC_' +
        'IPI, CALC_IRRF, '
      
        '   CALC_ISSQN, CALC_PIS, CALC_SEST_SENAT, CFOP, CFOP_DESCRICAO, ' +
        'CNPJ, CODIGO, '
      
        '   COMPUTA_VENDA, CONSIGNACAO, DEVOLUCAO, ENTREGA_FUTURA, ES, GE' +
        'RA_FINANCEIRO, '
      
        '   IMP_PEDIDO, INTERESTADUAL, MENSAGEM_1, MENSAGEM_2, MOV_CAIXA,' +
        ' MOV_ESTOQUE, '
      
        '   MOV_ESTOQUE_FISCAL, MSG_FISCAL, NOME, PAGA_COMISSAO, PERC_ICM' +
        'S, PERC_ICMS_REV, '
      
        '   PERC_ISS, REL_GERENCIAL, REMESSA, RESUMO_CONTABIL, TTL_RES_BO' +
        'NIFICACAO, '
      '   TTL_RES_DIVERSOS)'
      'values'
      
        '  (:ALTERA_CUSTO, :ATIVA, :CALC_COFINS, :CALC_ICMS, :CALC_INSS, ' +
        ':CALC_IPI, '
      
        '   :CALC_IRRF, :CALC_ISSQN, :CALC_PIS, :CALC_SEST_SENAT, :CFOP, ' +
        ':CFOP_DESCRICAO, '
      
        '   :CNPJ, :CODIGO, :COMPUTA_VENDA, :CONSIGNACAO, :DEVOLUCAO, :EN' +
        'TREGA_FUTURA, '
      
        '   :ES, :GERA_FINANCEIRO, :IMP_PEDIDO, :INTERESTADUAL, :MENSAGEM' +
        '_1, :MENSAGEM_2, '
      
        '   :MOV_CAIXA, :MOV_ESTOQUE, :MOV_ESTOQUE_FISCAL, :MSG_FISCAL, :' +
        'NOME, :PAGA_COMISSAO, '
      
        '   :PERC_ICMS, :PERC_ICMS_REV, :PERC_ISS, :REL_GERENCIAL, :REMES' +
        'SA, :RESUMO_CONTABIL, '
      '   :TTL_RES_BONIFICACAO, :TTL_RES_DIVERSOS)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  ES,'
      '  PERC_ICMS,'
      '  PERC_ICMS_REV,'
      '  PERC_ISS,'
      '  MOV_CAIXA,'
      '  MOV_ESTOQUE,'
      '  PAGA_COMISSAO,'
      '  COMPUTA_VENDA,'
      '  RESUMO_CONTABIL,'
      '  ALTERA_CUSTO,'
      '  CONSIGNACAO,'
      '  MENSAGEM_1,'
      '  MENSAGEM_2,'
      '  ATIVA,'
      '  TTL_RES_DIVERSOS,'
      '  TTL_RES_BONIFICACAO,'
      '  DEVOLUCAO,'
      '  REMESSA,'
      '  ENTREGA_FUTURA,'
      '  INTERESTADUAL,'
      '  GERA_FINANCEIRO,'
      '  MSG_FISCAL,'
      '  CALC_ICMS,'
      '  CALC_INSS,'
      '  CALC_ISSQN,'
      '  CALC_SEST_SENAT,'
      '  CALC_PIS,'
      '  CALC_COFINS,'
      '  CALC_IPI,'
      '  CALC_IRRF,'
      '  CFOP,'
      '  CFOP_DESCRICAO,'
      '  MOV_ESTOQUE_FISCAL,'
      '  IMP_PEDIDO,'
      '  REL_GERENCIAL'
      'from EST_NATUREZA '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select cnpj, codigo, nome, es,'
      '    perc_icms, perc_icms_rev, perc_iss,'
      '    mov_caixa, mov_estoque, paga_comissao,'
      '    computa_venda, resumo_contabil, altera_custo,'
      '    consignacao, mensagem_1, mensagem_2,'
      '    ativa, ttl_res_diversos, ttl_res_bonificacao,'
      '    devolucao, remessa, entrega_futura, interestadual,'
      '    coalesce(gera_financeiro,'#39'S'#39') gera_financeiro, MSG_FISCAL,'
      'CALC_ICMS ,'
      '    CALC_INSS,'
      '    CALC_ISSQN,'
      '    CALC_SEST_SENAT,'
      '    CALC_PIS ,'
      '    CALC_COFINS,'
      '    CALC_IPI,'
      '    CALC_IRRF,'
      '    cfop,'
      'cfop_descricao,'
      'MOV_ESTOQUE_FISCAL,'
      'IMP_PEDIDO  ,'
      '    REL_GERENCIAL'
      'from est_natureza'
      'where cnpj = :cnpj order by codigo')
    ModifySQL.Strings = (
      'update EST_NATUREZA'
      'set'
      '  ALTERA_CUSTO = :ALTERA_CUSTO,'
      '  ATIVA = :ATIVA,'
      '  CALC_COFINS = :CALC_COFINS,'
      '  CALC_ICMS = :CALC_ICMS,'
      '  CALC_INSS = :CALC_INSS,'
      '  CALC_IPI = :CALC_IPI,'
      '  CALC_IRRF = :CALC_IRRF,'
      '  CALC_ISSQN = :CALC_ISSQN,'
      '  CALC_PIS = :CALC_PIS,'
      '  CALC_SEST_SENAT = :CALC_SEST_SENAT,'
      '  CFOP = :CFOP,'
      '  CFOP_DESCRICAO = :CFOP_DESCRICAO,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  COMPUTA_VENDA = :COMPUTA_VENDA,'
      '  CONSIGNACAO = :CONSIGNACAO,'
      '  DEVOLUCAO = :DEVOLUCAO,'
      '  ENTREGA_FUTURA = :ENTREGA_FUTURA,'
      '  ES = :ES,'
      '  GERA_FINANCEIRO = :GERA_FINANCEIRO,'
      '  IMP_PEDIDO = :IMP_PEDIDO,'
      '  INTERESTADUAL = :INTERESTADUAL,'
      '  MENSAGEM_1 = :MENSAGEM_1,'
      '  MENSAGEM_2 = :MENSAGEM_2,'
      '  MOV_CAIXA = :MOV_CAIXA,'
      '  MOV_ESTOQUE = :MOV_ESTOQUE,'
      '  MOV_ESTOQUE_FISCAL = :MOV_ESTOQUE_FISCAL,'
      '  MSG_FISCAL = :MSG_FISCAL,'
      '  NOME = :NOME,'
      '  PAGA_COMISSAO = :PAGA_COMISSAO,'
      '  PERC_ICMS = :PERC_ICMS,'
      '  PERC_ICMS_REV = :PERC_ICMS_REV,'
      '  PERC_ISS = :PERC_ISS,'
      '  REL_GERENCIAL = :REL_GERENCIAL,'
      '  REMESSA = :REMESSA,'
      '  RESUMO_CONTABIL = :RESUMO_CONTABIL,'
      '  TTL_RES_BONIFICACAO = :TTL_RES_BONIFICACAO,'
      '  TTL_RES_DIVERSOS = :TTL_RES_DIVERSOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 16
    Top = 192
    object NaturezaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_NATUREZA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object NaturezaCODIGO: TIntegerField
      Tag = 1
      Alignment = taLeftJustify
      FieldName = 'CODIGO'
      Origin = 'EST_NATUREZA.CODIGO'
      Required = True
    end
    object NaturezaNOME: TIBStringField
      Tag = 1
      FieldName = 'NOME'
      Origin = 'EST_NATUREZA.NOME'
      Required = True
      Size = 50
    end
    object NaturezaES: TIBStringField
      FieldName = 'ES'
      Origin = 'EST_NATUREZA.ES'
      Required = True
      OnGetText = NaturezaESGetText
      FixedChar = True
      Size = 1
    end
    object NaturezaINTERESTADUAL: TIBStringField
      FieldName = 'INTERESTADUAL'
      Origin = 'EST_NATUREZA.INTERESTADUAL'
      Required = True
      OnGetText = NaturezaINTERESTADUALGetText
      FixedChar = True
      Size = 1
    end
    object NaturezaMOV_CAIXA: TIBStringField
      FieldName = 'MOV_CAIXA'
      Origin = 'EST_NATUREZA.MOV_CAIXA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object NaturezaMOV_ESTOQUE: TIBStringField
      FieldName = 'MOV_ESTOQUE'
      Origin = 'EST_NATUREZA.MOV_ESTOQUE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object NaturezaPAGA_COMISSAO: TIBStringField
      FieldName = 'PAGA_COMISSAO'
      Origin = 'EST_NATUREZA.PAGA_COMISSAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object NaturezaCOMPUTA_VENDA: TIBStringField
      FieldName = 'COMPUTA_VENDA'
      Origin = 'EST_NATUREZA.COMPUTA_VENDA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object NaturezaRESUMO_CONTABIL: TIBStringField
      FieldName = 'RESUMO_CONTABIL'
      Origin = 'EST_NATUREZA.RESUMO_CONTABIL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object NaturezaALTERA_CUSTO: TIBStringField
      FieldName = 'ALTERA_CUSTO'
      Origin = 'EST_NATUREZA.ALTERA_CUSTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object NaturezaCONSIGNACAO: TIBStringField
      FieldName = 'CONSIGNACAO'
      Origin = 'EST_NATUREZA.CONSIGNACAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object NaturezaMENSAGEM_1: TIBStringField
      FieldName = 'MENSAGEM_1'
      Origin = 'EST_NATUREZA.MENSAGEM_1'
      Size = 50
    end
    object NaturezaMENSAGEM_2: TIBStringField
      FieldName = 'MENSAGEM_2'
      Origin = 'EST_NATUREZA.MENSAGEM_2'
      Size = 50
    end
    object NaturezaPERC_ICMS: TFloatField
      DisplayLabel = 'Porc Icms'
      FieldName = 'PERC_ICMS'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object NaturezaPERC_ICMS_REV: TFloatField
      DisplayLabel = 'Porc Icms Revenda'
      FieldName = 'PERC_ICMS_REV'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object NaturezaPERC_ISS: TFloatField
      DisplayLabel = 'Porc Iss'
      FieldName = 'PERC_ISS'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object NaturezaATIVA: TIBStringField
      FieldName = 'ATIVA'
      Origin = '"EST_NATUREZA"."ATIVA"'
      FixedChar = True
      Size = 1
    end
    object NaturezaTTL_RES_DIVERSOS: TIBStringField
      FieldName = 'TTL_RES_DIVERSOS'
      Origin = '"EST_NATUREZA"."TTL_RES_DIVERSOS"'
      FixedChar = True
      Size = 1
    end
    object NaturezaTTL_RES_BONIFICACAO: TIBStringField
      FieldName = 'TTL_RES_BONIFICACAO'
      Origin = '"EST_NATUREZA"."TTL_RES_BONIFICACAO"'
      FixedChar = True
      Size = 1
    end
    object NaturezaDEVOLUCAO: TIBStringField
      FieldName = 'DEVOLUCAO'
      Origin = '"EST_NATUREZA"."DEVOLUCAO"'
      FixedChar = True
      Size = 1
    end
    object NaturezaREMESSA: TIBStringField
      FieldName = 'REMESSA'
      Origin = '"EST_NATUREZA"."REMESSA"'
      FixedChar = True
      Size = 1
    end
    object NaturezaENTREGA_FUTURA: TIBStringField
      FieldName = 'ENTREGA_FUTURA'
      Origin = '"EST_NATUREZA"."ENTREGA_FUTURA"'
      FixedChar = True
      Size = 1
    end
    object NaturezaGERA_FINANCEIRO: TIBStringField
      FieldName = 'GERA_FINANCEIRO'
      Origin = '"EST_NATUREZA"."GERA_FINANCEIRO"'
      FixedChar = True
      Size = 1
    end
    object NaturezaMSG_FISCAL: TMemoField
      FieldName = 'MSG_FISCAL'
      Origin = '"EST_NATUREZA"."MSG_FISCAL"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object NaturezaCALC_ICMS: TIBStringField
      FieldName = 'CALC_ICMS'
      Origin = '"EST_NATUREZA"."CALC_ICMS"'
      FixedChar = True
      Size = 1
    end
    object NaturezaCALC_INSS: TIBStringField
      FieldName = 'CALC_INSS'
      Origin = '"EST_NATUREZA"."CALC_INSS"'
      FixedChar = True
      Size = 1
    end
    object NaturezaCALC_ISSQN: TIBStringField
      FieldName = 'CALC_ISSQN'
      Origin = '"EST_NATUREZA"."CALC_ISSQN"'
      FixedChar = True
      Size = 1
    end
    object NaturezaCALC_SEST_SENAT: TIBStringField
      FieldName = 'CALC_SEST_SENAT'
      Origin = '"EST_NATUREZA"."CALC_SEST_SENAT"'
      FixedChar = True
      Size = 1
    end
    object NaturezaCALC_PIS: TIBStringField
      FieldName = 'CALC_PIS'
      Origin = '"EST_NATUREZA"."CALC_PIS"'
      FixedChar = True
      Size = 1
    end
    object NaturezaCALC_COFINS: TIBStringField
      FieldName = 'CALC_COFINS'
      Origin = '"EST_NATUREZA"."CALC_COFINS"'
      FixedChar = True
      Size = 1
    end
    object NaturezaCALC_IPI: TIBStringField
      FieldName = 'CALC_IPI'
      Origin = '"EST_NATUREZA"."CALC_IPI"'
      FixedChar = True
      Size = 1
    end
    object NaturezaCALC_IRRF: TIBStringField
      FieldName = 'CALC_IRRF'
      Origin = '"EST_NATUREZA"."CALC_IRRF"'
      FixedChar = True
      Size = 1
    end
    object NaturezaCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"EST_NATUREZA"."CFOP"'
      Required = True
    end
    object NaturezaCFOP_DESCRICAO: TIBStringField
      FieldName = 'CFOP_DESCRICAO'
      Origin = '"EST_NATUREZA"."CFOP_DESCRICAO"'
      Size = 50
    end
    object NaturezaMOV_ESTOQUE_FISCAL: TIBStringField
      FieldName = 'MOV_ESTOQUE_FISCAL'
      Origin = '"EST_NATUREZA"."MOV_ESTOQUE_FISCAL"'
      FixedChar = True
      Size = 1
    end
    object NaturezaIMP_PEDIDO: TIBStringField
      FieldName = 'IMP_PEDIDO'
      Origin = '"EST_NATUREZA"."IMP_PEDIDO"'
      FixedChar = True
      Size = 1
    end
    object NaturezaREL_GERENCIAL: TIBStringField
      FieldName = 'REL_GERENCIAL'
      Origin = '"EST_NATUREZA"."REL_GERENCIAL"'
      FixedChar = True
      Size = 1
    end
  end
  object Tipo_Documento: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = Tipo_DocumentoAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    DeleteSQL.Strings = (
      'delete from GLO_TIPOS_DOCTO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SIGLA = :OLD_SIGLA')
    InsertSQL.Strings = (
      'insert into GLO_TIPOS_DOCTO'
      '  (BLT, CNPJ, CODIGO_FISCAL, NOME, SIGLA)'
      'values'
      '  (:BLT, :CNPJ, :CODIGO_FISCAL, :NOME, :SIGLA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  SIGLA,'
      '  NOME,'
      '  BLT,'
      '  CODIGO_FISCAL'
      'from GLO_TIPOS_DOCTO '
      'where'
      '  CNPJ = :CNPJ and'
      '  SIGLA = :SIGLA')
    SelectSQL.Strings = (
      'select * from  GLO_TIPOS_DOCTO'
      'WHERE CNPJ = :CNPJ'
      'order by NOME')
    ModifySQL.Strings = (
      'update GLO_TIPOS_DOCTO'
      'set'
      '  BLT = :BLT,'
      '  CNPJ = :CNPJ,'
      '  CODIGO_FISCAL = :CODIGO_FISCAL,'
      '  NOME = :NOME,'
      '  SIGLA = :SIGLA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SIGLA = :OLD_SIGLA')
    Left = 16
    Top = 280
    object Tipo_DocumentoCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"GLO_TIPOS_DOCTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Tipo_DocumentoSIGLA: TIBStringField
      Tag = 1
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
      Origin = '"GLO_TIPOS_DOCTO"."SIGLA"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object Tipo_DocumentoNOME: TIBStringField
      Tag = 1
      FieldName = 'NOME'
      Required = True
    end
    object Tipo_DocumentoBLT: TIBStringField
      FieldName = 'BLT'
      Origin = '"GLO_TIPOS_DOCTO"."BLT"'
      FixedChar = True
      Size = 1
    end
    object Tipo_DocumentoCODIGO_FISCAL: TIBStringField
      FieldName = 'CODIGO_FISCAL'
      Origin = '"GLO_TIPOS_DOCTO"."CODIGO_FISCAL"'
      Size = 4
    end
  end
  object Centro_Custo: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = Centro_CustoAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    DeleteSQL.Strings = (
      'delete from FIN_CENTRO_CUSTO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_CENTRO_CUSTO'
      '  (CNPJ, CODIGO, NOME, AGRUPADOR, TIPO_CENTRO, '
      'EXCLUI_DEMOSTRATIVO_FINANCEIRO, '
      '   CMV)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME, :AGRUPADOR, :TIPO_CENTRO, '
      ':EXCLUI_DEMOSTRATIVO_FINANCEIRO, '
      '   :CMV)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  AGRUPADOR,'
      '  TIPO_CENTRO,'
      '  EXCLUI_DEMOSTRATIVO_FINANCEIRO,'
      '  CMV'
      'from FIN_CENTRO_CUSTO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT CNPJ, '
      '               CODIGO, '
      '               NOME,'
      '               AGRUPADOR,'
      '               TIPO_CENTRO ,'
      '               EXCLUI_DEMOSTRATIVO_FINANCEIRO,'
      '               CMV'
      'FROM FIN_CENTRO_CUSTO'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update FIN_CENTRO_CUSTO'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  AGRUPADOR = :AGRUPADOR,'
      '  TIPO_CENTRO = :TIPO_CENTRO,'
      '  EXCLUI_DEMOSTRATIVO_FINANCEIRO = '
      ':EXCLUI_DEMOSTRATIVO_FINANCEIRO,'
      '  CMV = :CMV'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'FIN_CENTRO_CUSTO_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 584
    Top = 56
    object Centro_CustoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_CENTRO_CUSTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Centro_CustoCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_CENTRO_CUSTO"."CODIGO"'
      Required = True
    end
    object Centro_CustoNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_CENTRO_CUSTO"."NOME"'
      Required = True
      Size = 50
    end
    object Centro_CustoAGRUPADOR: TIntegerField
      DisplayLabel = 'Agrupador'
      FieldName = 'AGRUPADOR'
      Origin = '"FIN_CENTRO_CUSTO"."AGRUPADOR"'
    end
    object Centro_CustoTIPO_CENTRO: TIBStringField
      DisplayLabel = 'Tipo Centro'
      FieldName = 'TIPO_CENTRO'
      Origin = '"FIN_CENTRO_CUSTO"."TIPO_CENTRO"'
      OnGetText = Centro_CustoTIPO_CENTROGetText
      OnSetText = Centro_CustoTIPO_CENTROSetText
      FixedChar = True
      Size = 3
    end
    object Centro_CustoEXCLUI_DEMOSTRATIVO_FINANCEIRO: TIBStringField
      FieldName = 'EXCLUI_DEMOSTRATIVO_FINANCEIRO'
      Origin = '"FIN_CENTRO_CUSTO"."EXCLUI_DEMOSTRATIVO_FINANCEIRO"'
      FixedChar = True
      Size = 1
    end
    object Centro_CustoCMV: TIBStringField
      FieldName = 'CMV'
      Origin = '"FIN_CENTRO_CUSTO"."CMV"'
      FixedChar = True
      Size = 1
    end
  end
  object SelAgrupador: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    BeforeOpen = LogradourosBeforeOpen
    DataSource = dsProdutos
    SQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO,'
      '               NOME'
      'FROM EST_PRODUTOS'
      'WHERE CNPJ = :CNPJ AND'
      '               ((CNPJ_AGRUP IS NULL) AND'
      '                (COD_AGRUP IS NULL)) OR'
      '               ((CNPJ_AGRUP = :CNPJ) AND'
      '                (COD_AGRUP = :CODIGO))'
      'ORDER BY NOME')
    Left = 152
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    object SelAgrupadorCODIGO: TIBStringField
      DisplayWidth = 15
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Required = True
      Size = 15
    end
    object SelAgrupadorNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
  end
  object Aplicacoes: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    DeleteSQL.Strings = (
      'delete from EST_APLICACOES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into EST_APLICACOES'
      '  (CNPJ, CODIGO, NOME)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME'
      'from EST_APLICACOES '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               NOME '
      'FROM EST_APLICACOES'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update EST_APLICACOES'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 88
    Top = 8
    object AplicacoesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_APLICACOES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object AplicacoesCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_APLICACOES"."CODIGO"'
      Required = True
    end
    object AplicacoesNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"EST_APLICACOES"."NOME"'
      Required = True
      Size = 50
    end
  end
  object Produtos_Aplicacoes: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    BeforeOpen = LogradourosBeforeOpen
    OnNewRecord = Produtos_AplicacoesNewRecord
    DeleteSQL.Strings = (
      'delete from EST_PRODUTOS_APLICACOES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  APLICACAO = :OLD_APLICACAO')
    InsertSQL.Strings = (
      'insert into EST_PRODUTOS_APLICACOES'
      '  (CNPJ, PRODUTO, APLICACAO, LOCAL)'
      'values'
      '  (:CNPJ, :PRODUTO, :APLICACAO, :LOCAL)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PRODUTO,'
      '  APLICACAO,'
      '  LOCAL'
      'from EST_PRODUTOS_APLICACOES '
      'where'
      '  CNPJ = :CNPJ and'
      '  PRODUTO = :PRODUTO and'
      '  APLICACAO = :APLICACAO')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               PRODUTO, '
      '               APLICACAO, '
      '               LOCAL '
      'FROM EST_PRODUTOS_APLICACOES'
      'WHERE CNPJ = :CNPJ '
      'ORDER BY PRODUTO, APLICACAO')
    ModifySQL.Strings = (
      'update EST_PRODUTOS_APLICACOES'
      'set'
      '  CNPJ = :CNPJ,'
      '  PRODUTO = :PRODUTO,'
      '  APLICACAO = :APLICACAO,'
      '  LOCAL = :LOCAL'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  APLICACAO = :OLD_APLICACAO')
    Left = 152
    Top = 232
    object Produtos_AplicacoesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_PRODUTOS_APLICACOES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Produtos_AplicacoesPRODUTO: TIBStringField
      Tag = 1
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"EST_PRODUTOS_APLICACOES"."PRODUTO"'
      Required = True
      OnValidate = Produtos_AplicacoesPRODUTOValidate
      Size = 13
    end
    object Produtos_AplicacoesAPLICACAO: TIntegerField
      Tag = 1
      DisplayLabel = 'Aplica'#231#227'o'
      FieldName = 'APLICACAO'
      Origin = '"EST_PRODUTOS_APLICACOES"."APLICACAO"'
      Required = True
    end
    object Produtos_AplicacoesLOCAL: TIBStringField
      FieldName = 'LOCAL'
      Origin = '"EST_PRODUTOS_APLICACOES"."LOCAL"'
      Size = 50
    end
  end
  object dsProdutos: TDataSource
    AutoEdit = False
    DataSet = Produtos
    Left = 720
    Top = 400
  end
  object Produtos_Similares: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = Produtos_SimilaresAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    OnCalcFields = Produtos_SimilaresCalcFields
    DeleteSQL.Strings = (
      'delete from EST_PRODUTOS_SIMILARES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PRODUTO_A = :OLD_PRODUTO_A and'
      '  PRODUTO_B = :OLD_PRODUTO_B')
    InsertSQL.Strings = (
      'insert into EST_PRODUTOS_SIMILARES'
      '  (CNPJ, PRODUTO_A, PRODUTO_B)'
      'values'
      '  (:CNPJ, :PRODUTO_A, :PRODUTO_B)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PRODUTO_A,'
      '  PRODUTO_B'
      'from EST_PRODUTOS_SIMILARES '
      'where'
      '  CNPJ = :CNPJ and'
      '  PRODUTO_A = :PRODUTO_A and'
      '  PRODUTO_B = :PRODUTO_B')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               PRODUTO_A, '
      '               PRODUTO_B '
      'FROM EST_PRODUTOS_SIMILARES'
      'WHERE CNPJ = :CNPJ AND'
      '               PRODUTO_A = :CODIGO OR'
      '               PRODUTO_B = :CODIGO'
      'ORDER BY PRODUTO_A, PRODUTO_B')
    ModifySQL.Strings = (
      'update EST_PRODUTOS_SIMILARES'
      'set'
      '  CNPJ = :CNPJ,'
      '  PRODUTO_A = :PRODUTO_A,'
      '  PRODUTO_B = :PRODUTO_B'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PRODUTO_A = :OLD_PRODUTO_A and'
      '  PRODUTO_B = :OLD_PRODUTO_B')
    DataSource = dsProdutos
    Left = 232
    Top = 232
    object Produtos_SimilaresCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_PRODUTOS_SIMILARES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Produtos_SimilaresPRODUTO_A: TIBStringField
      FieldName = 'PRODUTO_A'
      Origin = '"EST_PRODUTOS_SIMILARES"."PRODUTO_A"'
      Required = True
      Size = 13
    end
    object Produtos_SimilaresPRODUTO_B: TIBStringField
      FieldName = 'PRODUTO_B'
      Origin = '"EST_PRODUTOS_SIMILARES"."PRODUTO_B"'
      Required = True
      Size = 13
    end
    object Produtos_SimilaresNOME_SIMILAR: TStringField
      Tag = 1
      FieldKind = fkCalculated
      FieldName = 'NOME_SIMILAR'
      Size = 50
      Calculated = True
    end
  end
  object dsGrupos: TDataSource
    AutoEdit = False
    DataSet = Grupos
    Left = 152
    Top = 144
  end
  object Propriedades: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = PropriedadesAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    OnNewRecord = PropriedadesNewRecord
    DeleteSQL.Strings = (
      'delete from GLO_PROPRIEDADES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ and'
      '  PROPRIEDADE = :OLD_PROPRIEDADE')
    InsertSQL.Strings = (
      'insert into GLO_PROPRIEDADES'
      
        '  (CNPJ, PESSOA_FJ, PROPRIEDADE, NOME, PROPRIETARIO, IE, ENDEREC' +
        'O, '
      'COMPLEMENTO, '
      '   CIDADE, UF, CEP, AREA_TOTAL, OBS, NUMERO, BAIRRO, ATIVA, '
      'TIPO_CONTRATO, '
      '   MODELO, GARANTIA, CPF, VENDEDOR, TECNICO, CONTRATO, REGIAO)'
      'values'
      '  (:CNPJ, :PESSOA_FJ, :PROPRIEDADE, :NOME, :PROPRIETARIO, :IE, '
      ':ENDERECO, '
      
        '   :COMPLEMENTO, :CIDADE, :UF, :CEP, :AREA_TOTAL, :OBS, :NUMERO,' +
        ' '
      ':BAIRRO, '
      '   :ATIVA, :TIPO_CONTRATO, :MODELO, :GARANTIA, :CPF, :VENDEDOR, '
      ':TECNICO, '
      '   :CONTRATO, :REGIAO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PESSOA_FJ,'
      '  PROPRIEDADE,'
      '  NOME,'
      '  PROPRIETARIO,'
      '  IE,'
      '  ENDERECO,'
      '  COMPLEMENTO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  AREA_TOTAL,'
      '  OBS,'
      '  NUMERO,'
      '  BAIRRO,'
      '  ATIVA,'
      '  TIPO_CONTRATO,'
      '  MODELO,'
      '  GARANTIA,'
      '  CPF,'
      '  VENDEDOR,'
      '  TECNICO,'
      '  CONTRATO,'
      '  REGIAO'
      'from GLO_PROPRIEDADES '
      'where'
      '  CNPJ = :CNPJ and'
      '  PESSOA_FJ = :PESSOA_FJ and'
      '  PROPRIEDADE = :PROPRIEDADE')
    SelectSQL.Strings = (
      'SELECT * '
      'FROM GLO_PROPRIEDADES'
      'WHERE CNPJ = :CNPJ AND'
      '               PESSOA_FJ = :CODIGO'
      'ORDER BY PESSOA_FJ, PROPRIEDADE')
    ModifySQL.Strings = (
      'update GLO_PROPRIEDADES'
      'set'
      '  CNPJ = :CNPJ,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PROPRIEDADE = :PROPRIEDADE,'
      '  NOME = :NOME,'
      '  PROPRIETARIO = :PROPRIETARIO,'
      '  IE = :IE,'
      '  ENDERECO = :ENDERECO,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CEP = :CEP,'
      '  AREA_TOTAL = :AREA_TOTAL,'
      '  OBS = :OBS,'
      '  NUMERO = :NUMERO,'
      '  BAIRRO = :BAIRRO,'
      '  ATIVA = :ATIVA,'
      '  TIPO_CONTRATO = :TIPO_CONTRATO,'
      '  MODELO = :MODELO,'
      '  GARANTIA = :GARANTIA,'
      '  CPF = :CPF,'
      '  VENDEDOR = :VENDEDOR,'
      '  TECNICO = :TECNICO,'
      '  CONTRATO = :CONTRATO,'
      '  REGIAO = :REGIAO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ and'
      '  PROPRIEDADE = :OLD_PROPRIEDADE')
    DataSource = dsPessoasFJ
    Left = 584
    Top = 8
    object PropriedadesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_PROPRIEDADES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object PropriedadesPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_PROPRIEDADES"."PESSOA_FJ"'
      Required = True
    end
    object PropriedadesPROPRIEDADE: TIntegerField
      Tag = 1
      FieldName = 'PROPRIEDADE'
      Origin = '"GLO_PROPRIEDADES"."PROPRIEDADE"'
      Required = True
    end
    object PropriedadesNOME: TIBStringField
      Tag = 1
      FieldName = 'NOME'
      Origin = '"GLO_PROPRIEDADES"."NOME"'
      Size = 50
    end
    object PropriedadesPROPRIETARIO: TIBStringField
      Tag = 1
      FieldName = 'PROPRIETARIO'
      Origin = '"GLO_PROPRIEDADES"."PROPRIETARIO"'
      Size = 50
    end
    object PropriedadesIE: TIBStringField
      FieldName = 'IE'
      Origin = '"GLO_PROPRIEDADES"."IE"'
      Size = 15
    end
    object PropriedadesENDERECO: TIntegerField
      FieldName = 'ENDERECO'
      Origin = '"GLO_PROPRIEDADES"."ENDERECO"'
      Required = True
    end
    object PropriedadesCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_PROPRIEDADES"."COMPLEMENTO"'
      Size = 30
    end
    object PropriedadesCIDADE: TIntegerField
      FieldName = 'CIDADE'
      Origin = '"GLO_PROPRIEDADES"."CIDADE"'
      OnValidate = PropriedadesCIDADEValidate
    end
    object PropriedadesUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PROPRIEDADES"."UF"'
      FixedChar = True
      Size = 2
    end
    object PropriedadesCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"GLO_PROPRIEDADES"."CEP"'
      Size = 8
    end
    object PropriedadesAREA_TOTAL: TIBStringField
      FieldName = 'AREA_TOTAL'
      Origin = '"GLO_PROPRIEDADES"."AREA_TOTAL"'
      Size = 30
    end
    object PropriedadesOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"GLO_PROPRIEDADES"."OBS"'
      Size = 8
    end
    object PropriedadesNUMERO: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = '"GLO_PROPRIEDADES"."NUMERO"'
      Size = 15
    end
    object PropriedadesBAIRRO: TIntegerField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"GLO_PROPRIEDADES"."BAIRRO"'
    end
    object PropriedadesATIVA: TIBStringField
      DisplayLabel = 'Ativa'
      FieldName = 'ATIVA'
      Origin = '"GLO_PROPRIEDADES"."ATIVA"'
      FixedChar = True
      Size = 1
    end
    object PropriedadesTIPO_CONTRATO: TIntegerField
      FieldName = 'TIPO_CONTRATO'
      Origin = '"GLO_PROPRIEDADES"."TIPO_CONTRATO"'
    end
    object PropriedadesMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = '"GLO_PROPRIEDADES"."MODELO"'
    end
    object PropriedadesGARANTIA: TDateTimeField
      FieldName = 'GARANTIA'
      Origin = '"GLO_PROPRIEDADES"."GARANTIA"'
    end
    object PropriedadesCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"GLO_PROPRIEDADES"."CPF"'
    end
    object PropriedadesTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = '"GLO_PROPRIEDADES"."TECNICO"'
    end
    object PropriedadesVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"GLO_PROPRIEDADES"."VENDEDOR"'
    end
    object PropriedadesCONTRATO: TIBStringField
      FieldName = 'CONTRATO'
      Origin = '"GLO_PROPRIEDADES"."CONTRATO"'
    end
    object PropriedadesREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Origin = '"GLO_PROPRIEDADES"."REGIAO"'
    end
  end
  object dsPessoasFJ: TDataSource
    AutoEdit = False
    DataSet = Pessoas_FJ
    Left = 16
    Top = 56
  end
  object SelSimilar: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    BeforeOpen = LogradourosBeforeOpen
    DataSource = dsProdutos
    SQL.Strings = (
      'SELECT CODIGO,'
      '               NOME'
      'FROM EST_PRODUTOS'
      'WHERE CNPJ = :CNPJ AND'
      '               CODIGO <> :CODIGO AND'
      '               (CNPJ_AGRUP IS NOT NULL AND'
      '                COD_AGRUP IS NOT NULL)'
      'ORDER BY NOME')
    Left = 232
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    object SelSimilarCODIGO: TIBStringField
      DisplayWidth = 15
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Required = True
      Size = 15
    end
    object SelSimilarNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
  end
  object Clientes: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = ClientesAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = ClientesBeforePost
    OnCalcFields = ClientesCalcFields
    OnNewRecord = ClientesNewRecord
    DeleteSQL.Strings = (
      'delete from GLO_CLIENTES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    InsertSQL.Strings = (
      'insert into GLO_CLIENTES'
      
        '  (ADMISSAO, ADMISSAO_CONJUGE, AJUSTE_AUT_FATURAS, ALIQUOTA_DESC' +
        'ONTO, ASSINA_NOTA, '
      
        '   ATIVIDADE, BAIRRO, BLOQUEADO, CATEGORIA, CEP_TRABALHO, CHEQUE' +
        ', CIDADE_PAIS, '
      
        '   CLASSIF, CNPJ, CNPJ_CLASSIF, CNPJ_FPAGTO, CNPJ_VEND, COD_CLAS' +
        'SIF, COD_FPAGTO, '
      
        '   COD_VEND, COMPRADOR, CONJUGE, CONS_REV, CONTROLA_KM, CONTROLA' +
        '_PLACA, '
      
        '   DIA_PREF_FAT, DT_NASC_CONJUGE, ENDERECO_PAIS, ENDERECO_TRABAL' +
        'HO, FONE, '
      
        '   FONE_LOCAL_CONJUGE, FONE_TRABALHO, FREQUENCIA, LIMITE_CREDITO' +
        ', LIMITE_RETIRADAS_DIARIA, '
      
        '   LIMITE_TEMPO, LOCAL_TRAB_CONJUGE, LOCAL_TRABALHO, MAE, MEDIA_' +
        'COMPRAS_MES, '
      
        '   NAO_COBR_JUR_ATE, NUMERO_PAIS, NUMERO_TRABALHO, OBS, OPTANTE_' +
        'SIMPLES, '
      
        '   PAI, PERIODO_FATURAMENTO, PESSOA_FJ, PRAZO, RAMAL_FONE_TRAB, ' +
        'RAMAL_LOCAL_CONJUGE, '
      
        '   REFERENCIAS, RENDA_MENSAL, REQUISICAO, RET_INSS, RET_IRRF, RE' +
        'T_PIS, '
      
        '   SENHA_PDV, SINCRONIZA_FILIAIS, SUB_TRIBUTARIO, TAXA_JUROS, TE' +
        'MPO_SERV_CONJUGE, '
      
        '   TEMPO_SERVICO, TOLERANCIA_FATURAMENTO, ULT_VENDEDOR, VALOR_MA' +
        'XIMO_RETIRADA)'
      'values'
      
        '  (:ADMISSAO, :ADMISSAO_CONJUGE, :AJUSTE_AUT_FATURAS, :ALIQUOTA_' +
        'DESCONTO, '
      
        '   :ASSINA_NOTA, :ATIVIDADE, :BAIRRO, :BLOQUEADO, :CATEGORIA, :C' +
        'EP_TRABALHO, '
      
        '   :CHEQUE, :CIDADE_PAIS, :CLASSIF, :CNPJ, :CNPJ_CLASSIF, :CNPJ_' +
        'FPAGTO, '
      
        '   :CNPJ_VEND, :COD_CLASSIF, :COD_FPAGTO, :COD_VEND, :COMPRADOR,' +
        ' :CONJUGE, '
      
        '   :CONS_REV, :CONTROLA_KM, :CONTROLA_PLACA, :DIA_PREF_FAT, :DT_' +
        'NASC_CONJUGE, '
      
        '   :ENDERECO_PAIS, :ENDERECO_TRABALHO, :FONE, :FONE_LOCAL_CONJUG' +
        'E, :FONE_TRABALHO, '
      
        '   :FREQUENCIA, :LIMITE_CREDITO, :LIMITE_RETIRADAS_DIARIA, :LIMI' +
        'TE_TEMPO, '
      
        '   :LOCAL_TRAB_CONJUGE, :LOCAL_TRABALHO, :MAE, :MEDIA_COMPRAS_ME' +
        'S, :NAO_COBR_JUR_ATE, '
      
        '   :NUMERO_PAIS, :NUMERO_TRABALHO, :OBS, :OPTANTE_SIMPLES, :PAI,' +
        ' :PERIODO_FATURAMENTO, '
      
        '   :PESSOA_FJ, :PRAZO, :RAMAL_FONE_TRAB, :RAMAL_LOCAL_CONJUGE, :' +
        'REFERENCIAS, '
      
        '   :RENDA_MENSAL, :REQUISICAO, :RET_INSS, :RET_IRRF, :RET_PIS, :' +
        'SENHA_PDV, '
      
        '   :SINCRONIZA_FILIAIS, :SUB_TRIBUTARIO, :TAXA_JUROS, :TEMPO_SER' +
        'V_CONJUGE, '
      
        '   :TEMPO_SERVICO, :TOLERANCIA_FATURAMENTO, :ULT_VENDEDOR, :VALO' +
        'R_MAXIMO_RETIRADA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PESSOA_FJ,'
      '  COMPRADOR,'
      '  FONE,'
      '  CNPJ_VEND,'
      '  COD_VEND,'
      '  CNPJ_FPAGTO,'
      '  COD_FPAGTO,'
      '  REQUISICAO,'
      '  DIA_PREF_FAT,'
      '  CLASSIF,'
      '  LIMITE_TEMPO,'
      '  LIMITE_CREDITO,'
      '  REFERENCIAS,'
      '  OBS,'
      '  BLOQUEADO,'
      '  ULT_VENDEDOR,'
      '  FREQUENCIA,'
      '  ATIVIDADE,'
      '  CEP_TRABALHO,'
      '  CIDADE_PAIS,'
      '  CONJUGE,'
      '  DT_NASC_CONJUGE,'
      '  ENDERECO_PAIS,'
      '  ENDERECO_TRABALHO,'
      '  FONE_LOCAL_CONJUGE,'
      '  FONE_TRABALHO,'
      '  LOCAL_TRAB_CONJUGE,'
      '  LOCAL_TRABALHO,'
      '  MAE,'
      '  PAI,'
      '  RAMAL_FONE_TRAB,'
      '  RAMAL_LOCAL_CONJUGE,'
      '  RENDA_MENSAL,'
      '  TEMPO_SERV_CONJUGE,'
      '  TEMPO_SERVICO,'
      '  CNPJ_CLASSIF,'
      '  COD_CLASSIF,'
      '  PRAZO,'
      '  PERIODO_FATURAMENTO,'
      '  TOLERANCIA_FATURAMENTO,'
      '  AJUSTE_AUT_FATURAS,'
      '  TAXA_JUROS,'
      '  MEDIA_COMPRAS_MES,'
      '  NAO_COBR_JUR_ATE,'
      '  ASSINA_NOTA,'
      '  CONTROLA_PLACA,'
      '  CONTROLA_KM,'
      '  ADMISSAO,'
      '  ADMISSAO_CONJUGE,'
      '  NUMERO_TRABALHO,'
      '  LIMITE_RETIRADAS_DIARIA,'
      '  VALOR_MAXIMO_RETIRADA,'
      '  NUMERO_PAIS,'
      '  CHEQUE,'
      '  ALIQUOTA_DESCONTO,'
      '  OPTANTE_SIMPLES,'
      '  CONS_REV,'
      '  SENHA_PDV,'
      '  SUB_TRIBUTARIO,'
      '  RET_PIS,'
      '  RET_INSS,'
      '  RET_IRRF,'
      '  BAIRRO,'
      '  NEG_N_VEZES,'
      '  COMPLEMENTO,'
      '  CATEGORIA,'
      '  SINCRONIZA_FILIAIS'
      'from GLO_CLIENTES '
      'where'
      '  CNPJ = :CNPJ and'
      '  PESSOA_FJ = :PESSOA_FJ')
    SelectSQL.Strings = (
      'SELECT CNPJ, '
      '               CATEGORIA,'
      '               PESSOA_FJ, '
      '               COMPRADOR,'
      '               FONE,'
      '               CNPJ_VEND,'
      '               COD_VEND,'
      '               CNPJ_FPAGTO,'
      '               COD_FPAGTO,'
      '               REQUISICAO, '
      '               DIA_PREF_FAT, '
      '               CLASSIF, '
      '               LIMITE_TEMPO, '
      '               LIMITE_CREDITO,'
      '               REFERENCIAS,'
      '               OBS,'
      '               ULT_VENDEDOR,'
      '               BLOQUEADO,'
      '               FREQUENCIA,'
      '               CNPJ_CLASSIF,'
      '               COD_CLASSIF,'
      '               LOCAL_TRABALHO ,'
      '              TEMPO_SERVICO ,'
      '              FONE_TRABALHO ,'
      '              RAMAL_FONE_TRAB ,'
      '              ENDERECO_TRABALHO ,'
      '              CEP_TRABALHO ,'
      '              ATIVIDADE ,'
      '              PAI ,'
      '              MAE ,'
      '              ENDERECO_PAIS ,'
      '              CIDADE_PAIS ,'
      '              CONJUGE ,'
      '              DT_NASC_CONJUGE ,'
      '              LOCAL_TRAB_CONJUGE ,'
      '              TEMPO_SERV_CONJUGE ,'
      '              FONE_LOCAL_CONJUGE ,'
      '              RAMAL_LOCAL_CONJUGE ,'
      '              RENDA_MENSAL,'
      '              PRAZO,'
      '              PERIODO_FATURAMENTO,'
      '              TOLERANCIA_FATURAMENTO,'
      '              AJUSTE_AUT_FATURAS,'
      '              TAXA_JUROS,'
      '              MEDIA_COMPRAS_MES,'
      '              NAO_COBR_JUR_ATE,'
      '              ASSINA_NOTA,'
      '              CONTROLA_PLACA,'
      '              CONTROLA_KM,'
      '              ADMISSAO,'
      '              ADMISSAO_CONJUGE,'
      '              NUMERO_TRABALHO ,'
      '              LIMITE_RETIRADAS_DIARIA ,'
      '              VALOR_MAXIMO_RETIRADA ,'
      '              NUMERO_PAIS,'
      '              CHEQUE           ,'
      '              ALIQUOTA_DESCONTO,'
      '              OPTANTE_SIMPLES,'
      '              CONS_REV,'
      '              SENHA_PDV, '
      'SUB_TRIBUTARIO, '
      'ret_pis, ret_inss, ret_irrf,'
      'BAIRRO,'
      'SINCRONIZA_FILIAIS'
      'FROM '
      'GLO_CLIENTES'
      'WHERE CNPJ = :CNPJ and PESSOA_FJ = :CODIGO'
      'ORDER BY CNPJ, PESSOA_FJ')
    ModifySQL.Strings = (
      'update GLO_CLIENTES'
      'set'
      '  ADMISSAO = :ADMISSAO,'
      '  ADMISSAO_CONJUGE = :ADMISSAO_CONJUGE,'
      '  AJUSTE_AUT_FATURAS = :AJUSTE_AUT_FATURAS,'
      '  ALIQUOTA_DESCONTO = :ALIQUOTA_DESCONTO,'
      '  ASSINA_NOTA = :ASSINA_NOTA,'
      '  ATIVIDADE = :ATIVIDADE,'
      '  BAIRRO = :BAIRRO,'
      '  BLOQUEADO = :BLOQUEADO,'
      '  CATEGORIA = :CATEGORIA,'
      '  CEP_TRABALHO = :CEP_TRABALHO,'
      '  CHEQUE = :CHEQUE,'
      '  CIDADE_PAIS = :CIDADE_PAIS,'
      '  CLASSIF = :CLASSIF,'
      '  CNPJ = :CNPJ,'
      '  CNPJ_CLASSIF = :CNPJ_CLASSIF,'
      '  CNPJ_FPAGTO = :CNPJ_FPAGTO,'
      '  CNPJ_VEND = :CNPJ_VEND,'
      '  COD_CLASSIF = :COD_CLASSIF,'
      '  COD_FPAGTO = :COD_FPAGTO,'
      '  COD_VEND = :COD_VEND,'
      '  COMPRADOR = :COMPRADOR,'
      '  CONJUGE = :CONJUGE,'
      '  CONS_REV = :CONS_REV,'
      '  CONTROLA_KM = :CONTROLA_KM,'
      '  CONTROLA_PLACA = :CONTROLA_PLACA,'
      '  DIA_PREF_FAT = :DIA_PREF_FAT,'
      '  DT_NASC_CONJUGE = :DT_NASC_CONJUGE,'
      '  ENDERECO_PAIS = :ENDERECO_PAIS,'
      '  ENDERECO_TRABALHO = :ENDERECO_TRABALHO,'
      '  FONE = :FONE,'
      '  FONE_LOCAL_CONJUGE = :FONE_LOCAL_CONJUGE,'
      '  FONE_TRABALHO = :FONE_TRABALHO,'
      '  FREQUENCIA = :FREQUENCIA,'
      '  LIMITE_CREDITO = :LIMITE_CREDITO,'
      '  LIMITE_RETIRADAS_DIARIA = :LIMITE_RETIRADAS_DIARIA,'
      '  LIMITE_TEMPO = :LIMITE_TEMPO,'
      '  LOCAL_TRAB_CONJUGE = :LOCAL_TRAB_CONJUGE,'
      '  LOCAL_TRABALHO = :LOCAL_TRABALHO,'
      '  MAE = :MAE,'
      '  MEDIA_COMPRAS_MES = :MEDIA_COMPRAS_MES,'
      '  NAO_COBR_JUR_ATE = :NAO_COBR_JUR_ATE,'
      '  NUMERO_PAIS = :NUMERO_PAIS,'
      '  NUMERO_TRABALHO = :NUMERO_TRABALHO,'
      '  OBS = :OBS,'
      '  OPTANTE_SIMPLES = :OPTANTE_SIMPLES,'
      '  PAI = :PAI,'
      '  PERIODO_FATURAMENTO = :PERIODO_FATURAMENTO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PRAZO = :PRAZO,'
      '  RAMAL_FONE_TRAB = :RAMAL_FONE_TRAB,'
      '  RAMAL_LOCAL_CONJUGE = :RAMAL_LOCAL_CONJUGE,'
      '  REFERENCIAS = :REFERENCIAS,'
      '  RENDA_MENSAL = :RENDA_MENSAL,'
      '  REQUISICAO = :REQUISICAO,'
      '  RET_INSS = :RET_INSS,'
      '  RET_IRRF = :RET_IRRF,'
      '  RET_PIS = :RET_PIS,'
      '  SENHA_PDV = :SENHA_PDV,'
      '  SINCRONIZA_FILIAIS = :SINCRONIZA_FILIAIS,'
      '  SUB_TRIBUTARIO = :SUB_TRIBUTARIO,'
      '  TAXA_JUROS = :TAXA_JUROS,'
      '  TEMPO_SERV_CONJUGE = :TEMPO_SERV_CONJUGE,'
      '  TEMPO_SERVICO = :TEMPO_SERVICO,'
      '  TOLERANCIA_FATURAMENTO = :TOLERANCIA_FATURAMENTO,'
      '  ULT_VENDEDOR = :ULT_VENDEDOR,'
      '  VALOR_MAXIMO_RETIRADA = :VALOR_MAXIMO_RETIRADA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    DataSource = dsPessoasFJ
    Left = 152
    Top = 64
    object ClientesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CLIENTES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object ClientesPESSOA_FJ: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_CLIENTES"."PESSOA_FJ"'
      Required = True
    end
    object ClientesCOMPRADOR: TIBStringField
      Tag = 1
      DisplayLabel = 'Comprador'
      FieldName = 'COMPRADOR'
      Origin = '"GLO_CLIENTES"."COMPRADOR"'
      Size = 50
    end
    object ClientesFONE: TIBStringField
      Tag = 1
      FieldName = 'FONE'
      Origin = '"GLO_CLIENTES"."FONE"'
    end
    object ClientesCNPJ_VEND: TIBStringField
      FieldName = 'CNPJ_VEND'
      Origin = '"GLO_CLIENTES"."CNPJ_VEND"'
      FixedChar = True
      Size = 14
    end
    object ClientesCOD_VEND: TIntegerField
      FieldName = 'COD_VEND'
      Origin = '"GLO_CLIENTES"."COD_VEND"'
    end
    object ClientesCNPJ_FPAGTO: TIBStringField
      FieldName = 'CNPJ_FPAGTO'
      Origin = '"GLO_CLIENTES"."CNPJ_FPAGTO"'
      FixedChar = True
      Size = 14
    end
    object ClientesCOD_FPAGTO: TIntegerField
      FieldName = 'COD_FPAGTO'
      Origin = '"GLO_CLIENTES"."COD_FPAGTO"'
    end
    object ClientesREQUISICAO: TIBStringField
      FieldName = 'REQUISICAO'
      Origin = '"GLO_CLIENTES"."REQUISICAO"'
      FixedChar = True
      Size = 1
    end
    object ClientesDIA_PREF_FAT: TIntegerField
      FieldName = 'DIA_PREF_FAT'
      Origin = '"GLO_CLIENTES"."DIA_PREF_FAT"'
    end
    object ClientesCLASSIF: TIBStringField
      FieldName = 'CLASSIF'
      Origin = '"GLO_CLIENTES"."CLASSIF"'
      OnGetText = ClientesCLASSIFGetText
      OnSetText = ClientesCLASSIFSetText
      FixedChar = True
      Size = 1
    end
    object ClientesLIMITE_TEMPO: TIntegerField
      FieldName = 'LIMITE_TEMPO'
      Origin = '"GLO_CLIENTES"."LIMITE_TEMPO"'
      DisplayFormat = '#,##0'
    end
    object ClientesLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
      Origin = '"GLO_CLIENTES"."LIMITE_CREDITO"'
      DisplayFormat = '#,##0.00'
    end
    object ClientesREFERENCIAS: TBlobField
      FieldName = 'REFERENCIAS'
      Origin = '"GLO_CLIENTES"."REFERENCIAS"'
      Size = 8
    end
    object ClientesOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"GLO_CLIENTES"."OBS"'
      Size = 8
    end
    object ClientesULT_VENDEDOR: TIntegerField
      DisplayLabel = #218'lt. Vendedor'
      FieldName = 'ULT_VENDEDOR'
      Origin = '"GLO_CLIENTES"."ULT_VENDEDOR"'
    end
    object ClientesBLOQUEADO: TIBStringField
      DisplayLabel = 'Bloqueado'
      FieldName = 'BLOQUEADO'
      Origin = '"GLO_CLIENTES"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object ClientesFREQUENCIA: TIBStringField
      DisplayLabel = 'Frequ'#234'ncia'
      FieldName = 'FREQUENCIA'
      Origin = '"GLO_CLIENTES"."FREQUENCIA"'
      Required = True
      OnGetText = ClientesFREQUENCIAGetText
      OnSetText = ClientesFREQUENCIASetText
      FixedChar = True
      Size = 3
    end
    object ClientesLOCAL_TRABALHO: TIBStringField
      DisplayLabel = 'Local Trabalho'
      FieldName = 'LOCAL_TRABALHO'
      Origin = '"GLO_CLIENTES"."LOCAL_TRABALHO"'
      Size = 50
    end
    object ClientesFONE_TRABALHO: TIBStringField
      DisplayLabel = 'Fone Trab.'
      FieldName = 'FONE_TRABALHO'
      Origin = '"GLO_CLIENTES"."FONE_TRABALHO"'
    end
    object ClientesRAMAL_FONE_TRAB: TIBStringField
      DisplayLabel = 'Ramal'
      FieldName = 'RAMAL_FONE_TRAB'
      Origin = '"GLO_CLIENTES"."RAMAL_FONE_TRAB"'
      FixedChar = True
      Size = 3
    end
    object ClientesCEP_TRABALHO: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP_TRABALHO'
      Origin = '"GLO_CLIENTES"."CEP_TRABALHO"'
      Size = 8
    end
    object ClientesATIVIDADE: TIntegerField
      DisplayLabel = 'Atividade'
      FieldName = 'ATIVIDADE'
      Origin = '"GLO_CLIENTES"."ATIVIDADE"'
    end
    object ClientesPAI: TIBStringField
      DisplayLabel = 'Pai'
      FieldName = 'PAI'
      Origin = '"GLO_CLIENTES"."PAI"'
      Size = 50
    end
    object ClientesMAE: TIBStringField
      DisplayLabel = 'Mae'
      FieldName = 'MAE'
      Origin = '"GLO_CLIENTES"."MAE"'
      Size = 50
    end
    object ClientesCONJUGE: TIBStringField
      DisplayLabel = 'C'#244'njuge'
      FieldName = 'CONJUGE'
      Origin = '"GLO_CLIENTES"."CONJUGE"'
      Size = 50
    end
    object ClientesDT_NASC_CONJUGE: TDateTimeField
      DisplayLabel = 'Dt Nasc. C'#244'njuge'
      FieldName = 'DT_NASC_CONJUGE'
      Origin = '"GLO_CLIENTES"."DT_NASC_CONJUGE"'
    end
    object ClientesLOCAL_TRAB_CONJUGE: TIBStringField
      DisplayLabel = 'Local Trabalho'
      FieldName = 'LOCAL_TRAB_CONJUGE'
      Origin = '"GLO_CLIENTES"."LOCAL_TRAB_CONJUGE"'
      Size = 50
    end
    object ClientesFONE_LOCAL_CONJUGE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE_LOCAL_CONJUGE'
      Origin = '"GLO_CLIENTES"."FONE_LOCAL_CONJUGE"'
    end
    object ClientesRAMAL_LOCAL_CONJUGE: TIBStringField
      DisplayLabel = 'Ramal'
      FieldName = 'RAMAL_LOCAL_CONJUGE'
      Origin = '"GLO_CLIENTES"."RAMAL_LOCAL_CONJUGE"'
      FixedChar = True
      Size = 3
    end
    object ClientesRENDA_MENSAL: TFloatField
      DisplayLabel = 'Renda Mensal'
      FieldName = 'RENDA_MENSAL'
      Origin = '"GLO_CLIENTES"."RENDA_MENSAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object ClientesTEMPO_SERVICO: TIBStringField
      FieldName = 'TEMPO_SERVICO'
      Origin = '"GLO_CLIENTES"."TEMPO_SERVICO"'
      Size = 10
    end
    object ClientesTEMPO_SERV_CONJUGE: TIBStringField
      FieldName = 'TEMPO_SERV_CONJUGE'
      Origin = '"GLO_CLIENTES"."TEMPO_SERV_CONJUGE"'
      Size = 10
    end
    object ClientesPRAZO: TIntegerField
      DisplayLabel = 'Prazo'
      FieldName = 'PRAZO'
      Origin = '"GLO_CLIENTES"."PRAZO"'
    end
    object ClientesCNPJ_CLASSIF: TIBStringField
      FieldName = 'CNPJ_CLASSIF'
      Origin = '"GLO_CLIENTES"."CNPJ_CLASSIF"'
      FixedChar = True
      Size = 14
    end
    object ClientesCOD_CLASSIF: TIntegerField
      DisplayLabel = 'Classifica'#231#227'o'
      FieldName = 'COD_CLASSIF'
      Origin = '"GLO_CLIENTES"."COD_CLASSIF"'
    end
    object ClientesPERIODO_FATURAMENTO: TIBStringField
      DisplayLabel = 'Per'#237'odo Faturamento'
      FieldName = 'PERIODO_FATURAMENTO'
      Origin = '"GLO_CLIENTES"."PERIODO_FATURAMENTO"'
      OnGetText = ClientesPERIODO_FATURAMENTOGetText
      OnSetText = ClientesPERIODO_FATURAMENTOSetText
      FixedChar = True
      Size = 1
    end
    object ClientesTOLERANCIA_FATURAMENTO: TIntegerField
      DisplayLabel = 'Toler'#226'ncia Faturamento'
      FieldName = 'TOLERANCIA_FATURAMENTO'
      Origin = '"GLO_CLIENTES"."TOLERANCIA_FATURAMENTO"'
    end
    object ClientesAJUSTE_AUT_FATURAS: TIBStringField
      DisplayLabel = 'Ajuste Aut. Faturas'
      FieldName = 'AJUSTE_AUT_FATURAS'
      Origin = '"GLO_CLIENTES"."AJUSTE_AUT_FATURAS"'
      FixedChar = True
      Size = 1
    end
    object ClientesTAXA_JUROS: TFloatField
      DisplayLabel = 'Taxa Juros'
      FieldName = 'TAXA_JUROS'
      Origin = '"GLO_CLIENTES"."TAXA_JUROS"'
      DisplayFormat = '% #,##0.00'
    end
    object ClientesMEDIA_COMPRAS_MES: TIntegerField
      DisplayLabel = 'M'#233'dia Compras'
      FieldName = 'MEDIA_COMPRAS_MES'
      Origin = '"GLO_CLIENTES"."MEDIA_COMPRAS_MES"'
    end
    object ClientesNAO_COBR_JUR_ATE: TIntegerField
      DisplayLabel = 'Prazo de Aceita'#231#227'o'
      FieldName = 'NAO_COBR_JUR_ATE'
      Origin = '"GLO_CLIENTES"."NAO_COBR_JUR_ATE"'
    end
    object ClientesASSINA_NOTA: TIBStringField
      FieldName = 'ASSINA_NOTA'
      Origin = '"GLO_CLIENTES"."ASSINA_NOTA"'
      FixedChar = True
      Size = 1
    end
    object ClientesCONTROLA_PLACA: TIBStringField
      FieldName = 'CONTROLA_PLACA'
      Origin = '"GLO_CLIENTES"."CONTROLA_PLACA"'
      FixedChar = True
      Size = 1
    end
    object ClientesCONTROLA_KM: TIBStringField
      FieldName = 'CONTROLA_KM'
      Origin = '"GLO_CLIENTES"."CONTROLA_KM"'
      FixedChar = True
      Size = 1
    end
    object ClientesENDERECO_TRABALHO: TIntegerField
      DisplayLabel = 'End. Trabalho'
      FieldName = 'ENDERECO_TRABALHO'
      Origin = '"GLO_CLIENTES"."ENDERECO_TRABALHO"'
    end
    object ClientesENDERECO_PAIS: TIntegerField
      DisplayLabel = 'End. Pais'
      FieldName = 'ENDERECO_PAIS'
      Origin = '"GLO_CLIENTES"."ENDERECO_PAIS"'
    end
    object ClientesCIDADE_PAIS: TIntegerField
      DisplayLabel = 'Cidade Pais'
      FieldName = 'CIDADE_PAIS'
      Origin = '"GLO_CLIENTES"."CIDADE_PAIS"'
    end
    object ClientesADMISSAO: TDateTimeField
      FieldName = 'ADMISSAO'
      Origin = '"GLO_CLIENTES"."ADMISSAO"'
    end
    object ClientesADMISSAO_CONJUGE: TDateTimeField
      FieldName = 'ADMISSAO_CONJUGE'
      Origin = '"GLO_CLIENTES"."ADMISSAO_CONJUGE"'
    end
    object ClientesNUMERO_TRABALHO: TIBStringField
      FieldName = 'NUMERO_TRABALHO'
      Origin = '"GLO_CLIENTES"."NUMERO_TRABALHO"'
      Size = 15
    end
    object ClientesLIMITE_RETIRADAS_DIARIA: TFloatField
      FieldName = 'LIMITE_RETIRADAS_DIARIA'
      Origin = '"GLO_CLIENTES"."LIMITE_RETIRADAS_DIARIA"'
      DisplayFormat = '#,##0.00'
    end
    object ClientesVALOR_MAXIMO_RETIRADA: TFloatField
      FieldName = 'VALOR_MAXIMO_RETIRADA'
      Origin = '"GLO_CLIENTES"."VALOR_MAXIMO_RETIRADA"'
      DisplayFormat = '#,##0.00'
    end
    object ClientesNUMERO_PAIS: TIBStringField
      FieldName = 'NUMERO_PAIS'
      Origin = '"GLO_CLIENTES"."NUMERO_PAIS"'
      Size = 15
    end
    object ClientesTMP_SERVICO: TStringField
      FieldKind = fkCalculated
      FieldName = 'TMP_SERVICO'
      Size = 0
      Calculated = True
    end
    object ClientesCHEQUE: TIBStringField
      FieldName = 'CHEQUE'
      Origin = '"GLO_CLIENTES"."CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object ClientesALIQUOTA_DESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'ALIQUOTA_DESCONTO'
      Origin = '"GLO_CLIENTES"."ALIQUOTA_DESCONTO"'
      DisplayFormat = '% ##0.00'
    end
    object ClientesOPTANTE_SIMPLES: TIBStringField
      FieldName = 'OPTANTE_SIMPLES'
      Origin = '"GLO_CLIENTES"."OPTANTE_SIMPLES"'
      FixedChar = True
      Size = 1
    end
    object ClientesCONS_REV: TIBStringField
      FieldName = 'CONS_REV'
      Origin = '"GLO_CLIENTES"."CONS_REV"'
      FixedChar = True
      Size = 1
    end
    object ClientesSENHA_PDV: TIBStringField
      FieldName = 'SENHA_PDV'
      Origin = '"GLO_CLIENTES"."SENHA_PDV"'
      OnValidate = ClientesSENHA_PDVValidate
      Size = 6
    end
    object ClientesSUB_TRIBUTARIO: TIBStringField
      FieldName = 'SUB_TRIBUTARIO'
      Origin = '"GLO_CLIENTES"."SUB_TRIBUTARIO"'
      FixedChar = True
      Size = 1
    end
    object ClientesRET_PIS: TIBStringField
      FieldName = 'RET_PIS'
      Origin = '"GLO_CLIENTES"."RET_PIS"'
      FixedChar = True
      Size = 1
    end
    object ClientesRET_INSS: TIBStringField
      FieldName = 'RET_INSS'
      Origin = '"GLO_CLIENTES"."RET_INSS"'
      FixedChar = True
      Size = 1
    end
    object ClientesRET_IRRF: TIBStringField
      FieldName = 'RET_IRRF'
      Origin = '"GLO_CLIENTES"."RET_IRRF"'
      FixedChar = True
      Size = 1
    end
    object ClientesBAIRRO: TIntegerField
      FieldName = 'BAIRRO'
      Origin = '"GLO_CLIENTES"."BAIRRO"'
    end
    object ClientesCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = '"GLO_CLIENTES"."CATEGORIA"'
    end
    object ClientesSINCRONIZA_FILIAIS: TIBStringField
      FieldName = 'SINCRONIZA_FILIAIS'
      Origin = '"GLO_CLIENTES"."SINCRONIZA_FILIAIS"'
      FixedChar = True
      Size = 1
    end
  end
  object Fornecedores: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = FornecedoresAfterInsert
    BeforeOpen = FornecedoresBeforeOpen
    BeforePost = FornecedoresBeforePost
    OnNewRecord = FornecedoresNewRecord
    DeleteSQL.Strings = (
      'delete from GLO_FORNECEDORES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    InsertSQL.Strings = (
      'insert into GLO_FORNECEDORES'
      
        '  (AGENCIA_C1, AGENCIA_C2, BANCO_C1, BANCO_C2, CC_C1, CC_C2, CNP' +
        'J, CONTABILIDADE, '
      
        '   FINANCEIRO, FONE_FIN, FONE_REP, FONE_VEN, FORMA_PAGTO, PESSOA' +
        '_FJ, REPRESENTANTE, '
      '   SINCRONIZA_FILIAIS, VENDEDOR)'
      'values'
      
        '  (:AGENCIA_C1, :AGENCIA_C2, :BANCO_C1, :BANCO_C2, :CC_C1, :CC_C' +
        '2, :CNPJ, '
      
        '   :CONTABILIDADE, :FINANCEIRO, :FONE_FIN, :FONE_REP, :FONE_VEN,' +
        ' :FORMA_PAGTO, '
      '   :PESSOA_FJ, :REPRESENTANTE, :SINCRONIZA_FILIAIS, :VENDEDOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PESSOA_FJ,'
      '  VENDEDOR,'
      '  FONE_VEN,'
      '  FINANCEIRO,'
      '  FONE_FIN,'
      '  REPRESENTANTE,'
      '  FONE_REP,'
      '  BANCO_C1,'
      '  AGENCIA_C1,'
      '  CC_C1,'
      '  BANCO_C2,'
      '  AGENCIA_C2,'
      '  CC_C2,'
      '  FORMA_PAGTO,'
      '  CONTABILIDADE,'
      '  SINCRONIZA_FILIAIS'
      'from GLO_FORNECEDORES '
      'where'
      '  CNPJ = :CNPJ and'
      '  PESSOA_FJ = :PESSOA_FJ')
    SelectSQL.Strings = (
      'SELECT CNPJ, '
      '               PESSOA_FJ, '
      '               VENDEDOR, '
      '               FONE_VEN, '
      '               FINANCEIRO, '
      '               FONE_FIN, '
      '               REPRESENTANTE, '
      '               FONE_REP, '
      '               BANCO_C1, '
      '               AGENCIA_C1, '
      '               CC_C1, '
      '               BANCO_C2, '
      '               AGENCIA_C2, '
      '               CC_C2 ,'
      '               FORMA_PAGTO,'
      '               CONTABILIDADE,'
      '              SINCRONIZA_FILIAIS'
      'FROM GLO_FORNECEDORES'
      'WHERE CNPJ = :CNPJ and PESSOA_FJ = :CODIGO'
      '')
    ModifySQL.Strings = (
      'update GLO_FORNECEDORES'
      'set'
      '  AGENCIA_C1 = :AGENCIA_C1,'
      '  AGENCIA_C2 = :AGENCIA_C2,'
      '  BANCO_C1 = :BANCO_C1,'
      '  BANCO_C2 = :BANCO_C2,'
      '  CC_C1 = :CC_C1,'
      '  CC_C2 = :CC_C2,'
      '  CNPJ = :CNPJ,'
      '  CONTABILIDADE = :CONTABILIDADE,'
      '  FINANCEIRO = :FINANCEIRO,'
      '  FONE_FIN = :FONE_FIN,'
      '  FONE_REP = :FONE_REP,'
      '  FONE_VEN = :FONE_VEN,'
      '  FORMA_PAGTO = :FORMA_PAGTO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  REPRESENTANTE = :REPRESENTANTE,'
      '  SINCRONIZA_FILIAIS = :SINCRONIZA_FILIAIS,'
      '  VENDEDOR = :VENDEDOR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    DataSource = dsEdtFornecedores
    Left = 720
    Top = 9
    object FornecedoresCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_FORNECEDORES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object FornecedoresPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_FORNECEDORES"."PESSOA_FJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FornecedoresVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = '"GLO_FORNECEDORES"."VENDEDOR"'
      Size = 50
    end
    object FornecedoresFONE_VEN: TIBStringField
      FieldName = 'FONE_VEN'
      Origin = '"GLO_FORNECEDORES"."FONE_VEN"'
    end
    object FornecedoresFINANCEIRO: TIBStringField
      FieldName = 'FINANCEIRO'
      Origin = '"GLO_FORNECEDORES"."FINANCEIRO"'
      Size = 50
    end
    object FornecedoresFONE_FIN: TIBStringField
      FieldName = 'FONE_FIN'
      Origin = '"GLO_FORNECEDORES"."FONE_FIN"'
    end
    object FornecedoresREPRESENTANTE: TIBStringField
      FieldName = 'REPRESENTANTE'
      Origin = '"GLO_FORNECEDORES"."REPRESENTANTE"'
      Size = 50
    end
    object FornecedoresFONE_REP: TIBStringField
      FieldName = 'FONE_REP'
      Origin = '"GLO_FORNECEDORES"."FONE_REP"'
    end
    object FornecedoresBANCO_C1: TIBStringField
      FieldName = 'BANCO_C1'
      Origin = '"GLO_FORNECEDORES"."BANCO_C1"'
      FixedChar = True
      Size = 3
    end
    object FornecedoresAGENCIA_C1: TIBStringField
      FieldName = 'AGENCIA_C1'
      Origin = '"GLO_FORNECEDORES"."AGENCIA_C1"'
      Size = 6
    end
    object FornecedoresCC_C1: TIBStringField
      FieldName = 'CC_C1'
      Origin = '"GLO_FORNECEDORES"."CC_C1"'
      Size = 15
    end
    object FornecedoresBANCO_C2: TIBStringField
      FieldName = 'BANCO_C2'
      Origin = '"GLO_FORNECEDORES"."BANCO_C2"'
      FixedChar = True
      Size = 3
    end
    object FornecedoresAGENCIA_C2: TIBStringField
      FieldName = 'AGENCIA_C2'
      Origin = '"GLO_FORNECEDORES"."AGENCIA_C2"'
      Size = 6
    end
    object FornecedoresCC_C2: TIBStringField
      FieldName = 'CC_C2'
      Origin = '"GLO_FORNECEDORES"."CC_C2"'
      Size = 15
    end
    object FornecedoresFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
      Origin = '"GLO_FORNECEDORES"."FORMA_PAGTO"'
    end
    object FornecedoresCONTABILIDADE: TIntegerField
      FieldName = 'CONTABILIDADE'
      Origin = '"GLO_FORNECEDORES"."CONTABILIDADE"'
    end
    object FornecedoresSINCRONIZA_FILIAIS: TIBStringField
      FieldName = 'SINCRONIZA_FILIAIS'
      Origin = '"GLO_FORNECEDORES"."SINCRONIZA_FILIAIS"'
      FixedChar = True
      Size = 1
    end
  end
  object Formas_Pagto: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = Formas_PagtoAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    OnNewRecord = Formas_PagtoNewRecord
    DeleteSQL.Strings = (
      'delete from FIN_FORMAS_PAGTO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_FORMAS_PAGTO'
      
        '  (ACRESCIMO, ATIVO, AVISTA, CNPJ, CODIGO, COMENTRADA, DESCONTO,' +
        ' DT_VENCTO_FIXO, '
      
        '   FATURA_FUTURA, FORMA_ECF, INTERVALO, INTERVALO_PRE_DEFINIDO, ' +
        'NOME, NPARCELAS, '
      '   OUTROS, TIPO_PAGAMENTO, VENCTO_FIXO)'
      'values'
      
        '  (:ACRESCIMO, :ATIVO, :AVISTA, :CNPJ, :CODIGO, :COMENTRADA, :DE' +
        'SCONTO, '
      
        '   :DT_VENCTO_FIXO, :FATURA_FUTURA, :FORMA_ECF, :INTERVALO, :INT' +
        'ERVALO_PRE_DEFINIDO, '
      '   :NOME, :NPARCELAS, :OUTROS, :TIPO_PAGAMENTO, :VENCTO_FIXO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  ACRESCIMO,'
      '  DESCONTO,'
      '  NPARCELAS,'
      '  COMENTRADA,'
      '  INTERVALO,'
      '  AVISTA,'
      '  FATURA_FUTURA,'
      '  FORMA_ECF,'
      '  TIPO_PAGAMENTO,'
      '  ATIVO,'
      '  INTERVALO_PRE_DEFINIDO,'
      '  VENCTO_FIXO,'
      '  DT_VENCTO_FIXO,'
      '  OUTROS'
      'from FIN_FORMAS_PAGTO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT * '
      'FROM FIN_FORMAS_PAGTO'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY CNPJ, CODIGO')
    ModifySQL.Strings = (
      'update FIN_FORMAS_PAGTO'
      'set'
      '  ACRESCIMO = :ACRESCIMO,'
      '  ATIVO = :ATIVO,'
      '  AVISTA = :AVISTA,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  COMENTRADA = :COMENTRADA,'
      '  DESCONTO = :DESCONTO,'
      '  DT_VENCTO_FIXO = :DT_VENCTO_FIXO,'
      '  FATURA_FUTURA = :FATURA_FUTURA,'
      '  FORMA_ECF = :FORMA_ECF,'
      '  INTERVALO = :INTERVALO,'
      '  INTERVALO_PRE_DEFINIDO = :INTERVALO_PRE_DEFINIDO,'
      '  NOME = :NOME,'
      '  NPARCELAS = :NPARCELAS,'
      '  OUTROS = :OUTROS,'
      '  TIPO_PAGAMENTO = :TIPO_PAGAMENTO,'
      '  VENCTO_FIXO = :VENCTO_FIXO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'FIN_FORMAS_PAGTO_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 16
    Top = 592
    object Formas_PagtoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_FORMAS_PAGTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Formas_PagtoCODIGO: TIntegerField
      Tag = 1
      FieldName = 'CODIGO'
      Origin = '"FIN_FORMAS_PAGTO"."CODIGO"'
      Required = True
    end
    object Formas_PagtoNOME: TIBStringField
      Tag = 1
      FieldName = 'NOME'
      Origin = '"FIN_FORMAS_PAGTO"."NOME"'
      Required = True
      Size = 50
    end
    object Formas_PagtoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Origin = '"FIN_FORMAS_PAGTO"."ACRESCIMO"'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object Formas_PagtoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = '"FIN_FORMAS_PAGTO"."DESCONTO"'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object Formas_PagtoNPARCELAS: TIntegerField
      FieldName = 'NPARCELAS'
      Origin = '"FIN_FORMAS_PAGTO"."NPARCELAS"'
      Required = True
      DisplayFormat = '#,##0'
    end
    object Formas_PagtoINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
      Origin = '"FIN_FORMAS_PAGTO"."INTERVALO"'
      Required = True
      DisplayFormat = '#,##0'
    end
    object Formas_PagtoFATURA_FUTURA: TIBStringField
      DisplayLabel = 'Fatura Futura'
      FieldName = 'FATURA_FUTURA'
      Origin = '"FIN_FORMAS_PAGTO"."FATURA_FUTURA"'
      OnValidate = Formas_PagtoFATURA_FUTURAValidate
      FixedChar = True
      Size = 1
    end
    object Formas_PagtoFORMA_ECF: TIBStringField
      DisplayLabel = 'Forma Ecf'
      FieldName = 'FORMA_ECF'
      Origin = '"FIN_FORMAS_PAGTO"."FORMA_ECF"'
      Size = 30
    end
    object Formas_PagtoTIPO_PAGAMENTO: TIBStringField
      DisplayLabel = 'Tipo Pagamento'
      FieldName = 'TIPO_PAGAMENTO'
      Origin = '"FIN_FORMAS_PAGTO"."TIPO_PAGAMENTO"'
      Size = 30
    end
    object Formas_PagtoATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"FIN_FORMAS_PAGTO"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object Formas_PagtoAVISTA: TIBStringField
      FieldName = 'AVISTA'
      Origin = '"FIN_FORMAS_PAGTO"."AVISTA"'
      OnValidate = Formas_PagtoNPARCELASValidate
      FixedChar = True
      Size = 1
    end
    object Formas_PagtoINTERVALO_PRE_DEFINIDO: TIBStringField
      FieldName = 'INTERVALO_PRE_DEFINIDO'
      Origin = '"FIN_FORMAS_PAGTO"."INTERVALO_PRE_DEFINIDO"'
      OnValidate = Formas_PagtoINTERVALO_PRE_DEFINIDOValidate
      FixedChar = True
      Size = 1
    end
    object Formas_PagtoVENCTO_FIXO: TIBStringField
      FieldName = 'VENCTO_FIXO'
      Origin = '"FIN_FORMAS_PAGTO"."VENCTO_FIXO"'
      OnValidate = Formas_PagtoVENCTO_FIXOValidate
      FixedChar = True
      Size = 1
    end
    object Formas_PagtoCOMENTRADA: TIBStringField
      FieldName = 'COMENTRADA'
      Origin = '"FIN_FORMAS_PAGTO"."COMENTRADA"'
      FixedChar = True
      Size = 1
    end
    object Formas_PagtoDT_VENCTO_FIXO: TDateField
      FieldName = 'DT_VENCTO_FIXO'
      Origin = '"FIN_FORMAS_PAGTO"."DT_VENCTO_FIXO"'
    end
    object Formas_PagtoOUTROS: TIBStringField
      FieldName = 'OUTROS'
      Origin = '"FIN_FORMAS_PAGTO"."OUTROS"'
      FixedChar = True
      Size = 1
    end
  end
  object Movimento: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterEdit = MovimentoAfterEdit
    AfterPost = MovimentoAfterPost
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = MovimentoBeforePost
    OnNewRecord = MovimentoNewRecord
    DeleteSQL.Strings = (
      'delete from CTB_MOVIMENTO_CONTABIL'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into CTB_MOVIMENTO_CONTABIL'
      
        '  (CNPJ, CODIGO, DATA, TIPO, DOCUMENTO, HISTORICO, MES, ANO, VAL' +
        'OR, '
      'CONTA, '
      '   ORIGEM, PLANILHA, CONTRA_PARTIDA, BANCO, DATA_CONCILIACAO, '
      'TIPO_LANCAMENTO, '
      '   COD_DOC, FORNECEDOR)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DATA, :TIPO, :DOCUMENTO, :HISTORICO, :MES, :' +
        'ANO, '
      ':VALOR, '
      '   :CONTA, :ORIGEM, :PLANILHA, :CONTRA_PARTIDA, :BANCO, '
      ':DATA_CONCILIACAO, '
      '   :TIPO_LANCAMENTO, :COD_DOC, :FORNECEDOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  DATA,'
      '  TIPO,'
      '  DOCUMENTO,'
      '  HISTORICO,'
      '  MES,'
      '  ANO,'
      '  VALOR,'
      '  CONTA,'
      '  ORIGEM,'
      '  PLANILHA,'
      '  CONTRA_PARTIDA,'
      '  BANCO,'
      '  DATA_CONCILIACAO,'
      '  TIPO_LANCAMENTO,'
      '  COD_DOC,'
      '  FORNECEDOR'
      'from CTB_MOVIMENTO_CONTABIL '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from ctb_movimento_contabil ctb'
      'where  ctb.cnpj = :cnpj'
      'and ((ctb.conta = :conta) or (:conta = 0))'
      
        'and (cast(ctb.data as date) between coalesce(:ini,cast('#39'01.01.20' +
        '01'#39' as date)) and coalesce(:fim,cast('#39'01.01.2050'#39' as date)))')
    ModifySQL.Strings = (
      'update CTB_MOVIMENTO_CONTABIL'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  TIPO = :TIPO,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  HISTORICO = :HISTORICO,'
      '  MES = :MES,'
      '  ANO = :ANO,'
      '  VALOR = :VALOR,'
      '  CONTA = :CONTA,'
      '  ORIGEM = :ORIGEM,'
      '  PLANILHA = :PLANILHA,'
      '  CONTRA_PARTIDA = :CONTRA_PARTIDA,'
      '  BANCO = :BANCO,'
      '  DATA_CONCILIACAO = :DATA_CONCILIACAO,'
      '  TIPO_LANCAMENTO = :TIPO_LANCAMENTO,'
      '  COD_DOC = :COD_DOC,'
      '  FORNECEDOR = :FORNECEDOR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 440
    Top = 344
    object MovimentoCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"MOVIMENTO_CONTABIL"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object MovimentoCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Required = True
    end
    object MovimentoBANCO: TIBStringField
      Tag = 1
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Required = True
      Size = 3
    end
    object MovimentoDOCUMENTO: TIBStringField
      Tag = 1
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
      Required = True
    end
    object MovimentoHISTORICO: TIBStringField
      Tag = 1
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Size = 100
    end
    object MovimentoTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Size = 1
    end
    object MovimentoTIPO_LANCAMENTO: TIBStringField
      DisplayLabel = 'Tipo de Lanc'
      FieldName = 'TIPO_LANCAMENTO'
      Required = True
      Size = 1
    end
    object MovimentoCOD_DOC: TIBStringField
      DisplayLabel = 'Tipo de Doc'
      FieldName = 'COD_DOC'
      Required = True
      Size = 3
    end
    object MovimentoFORNECEDOR: TIntegerField
      DisplayLabel = 'Forn'
      FieldName = 'FORNECEDOR'
    end
    object MovimentoPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
    end
    object MovimentoMES: TIntegerField
      FieldName = 'MES'
      Origin = '"MOVIMENTO_CONTABIL"."MES"'
      Required = True
    end
    object MovimentoANO: TIntegerField
      FieldName = 'ANO'
      Origin = '"MOVIMENTO_CONTABIL"."ANO"'
      Required = True
    end
    object MovimentoORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"MOVIMENTO_CONTABIL"."ORIGEM"'
      Required = True
      Size = 15
    end
    object MovimentoCONTRA_PARTIDA: TIntegerField
      FieldName = 'CONTRA_PARTIDA'
      Origin = '"MOVIMENTO_CONTABIL"."CONTRA_PARTIDA"'
    end
    object MovimentoCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"MOVIMENTO_CONTABIL"."CONTA"'
      Required = True
    end
    object MovimentoEXCLUIR: TIBStringField
      FieldName = 'EXCLUIR'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."EXCLUIR"'
      FixedChar = True
      Size = 1
    end
    object MovimentoVALOR_INDEXADO: TFloatField
      FieldName = 'VALOR_INDEXADO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."VALOR_INDEXADO"'
    end
    object MovimentoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."DATA"'
    end
    object MovimentoDATA_CONCILIACAO: TDateField
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."DATA_CONCILIACAO"'
    end
    object MovimentoCOD_ACERTOCONTA: TIntegerField
      FieldName = 'COD_ACERTOCONTA'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."COD_ACERTOCONTA"'
    end
    object MovimentoVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
  end
  object Bancos: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = BancosAfterInsert
    DeleteSQL.Strings = (
      'delete from FIN_BANCO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_BANCO'
      '  (CODIGO, NOME, BOLETO, GERA_ARQUIVO_MAGNETICO, PADRAO_BOLETO, '
      'CONFIG_CH, '
      '   CONFIG_CHEQUE)'
      'values'
      '  (:CODIGO, :NOME, :BOLETO, :GERA_ARQUIVO_MAGNETICO, '
      ':PADRAO_BOLETO, :CONFIG_CH, '
      '   :CONFIG_CHEQUE)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME,'
      '  BOLETO,'
      '  GERA_ARQUIVO_MAGNETICO,'
      '  PADRAO_BOLETO,'
      '  CONFIG_CH,'
      '  CONFIG_CHEQUE'
      'from FIN_BANCO '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT'
      '             * '
      'FROM FIN_BANCO'
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update FIN_BANCO'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  BOLETO = :BOLETO,'
      '  GERA_ARQUIVO_MAGNETICO = :GERA_ARQUIVO_MAGNETICO,'
      '  PADRAO_BOLETO = :PADRAO_BOLETO,'
      '  CONFIG_CH = :CONFIG_CH,'
      '  CONFIG_CHEQUE = :CONFIG_CHEQUE'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 232
    Top = 8
    object BancosCODIGO: TIBStringField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_BANCO"."CODIGO"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object BancosNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_BANCO"."NOME"'
      Required = True
      Size = 50
    end
    object BancosBOLETO: TIntegerField
      DisplayLabel = 'N'#186' de Boleto'
      FieldName = 'BOLETO'
      Origin = '"FIN_BANCO"."BOLETO"'
    end
    object BancosGERA_ARQUIVO_MAGNETICO: TIBStringField
      FieldName = 'GERA_ARQUIVO_MAGNETICO'
      Origin = '"FIN_BANCO"."GERA_ARQUIVO_MAGNETICO"'
      FixedChar = True
      Size = 1
    end
    object BancosPADRAO_BOLETO: TIBStringField
      FieldName = 'PADRAO_BOLETO'
      Origin = '"FIN_BANCO"."PADRAO_BOLETO"'
      FixedChar = True
      Size = 1
    end
    object BancosCONFIG_CH: TBlobField
      FieldName = 'CONFIG_CH'
      Origin = '"FIN_BANCO"."CONFIG_CH"'
      Size = 8
    end
    object BancosCONFIG_CHEQUE: TMemoField
      FieldName = 'CONFIG_CHEQUE'
      Origin = '"FIN_BANCO"."CONFIG_CHEQUE"'
      BlobType = ftMemo
      Size = 8
    end
    object BancosValor: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      Calculated = True
    end
    object BancosExtenso: TStringField
      FieldKind = fkCalculated
      FieldName = 'Extenso'
      Size = 100
      Calculated = True
    end
    object BancosNominal: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nominal'
      Size = 100
      Calculated = True
    end
    object BancosCidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'Cidade'
      Size = 100
      Calculated = True
    end
  end
  object Movimento_Contabil: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterPost = Movimento_ContabilAfterPost
    BeforePost = Movimento_ContabilBeforePost
    OnNewRecord = Movimento_ContabilNewRecord
    DeleteSQL.Strings = (
      'delete from CTB_MOVIMENTO_CONTABIL'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into CTB_MOVIMENTO_CONTABIL'
      
        '  (CNPJ, CODIGO, DATA, TIPO, DOCUMENTO, HISTORICO, MES, ANO, VAL' +
        'OR, CONTA, '
      
        '   ORIGEM, PLANILHA, CONTRA_PARTIDA, BANCO, DATA_CONCILIACAO, TI' +
        'PO_LANCAMENTO, '
      '   COD_DOC, FORNECEDOR)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DATA, :TIPO, :DOCUMENTO, :HISTORICO, :MES, :' +
        'ANO, :VALOR, '
      
        '   :CONTA, :ORIGEM, :PLANILHA, :CONTRA_PARTIDA, :BANCO, :DATA_CO' +
        'NCILIACAO, '
      '   :TIPO_LANCAMENTO, :COD_DOC, :FORNECEDOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  DATA,'
      '  TIPO,'
      '  DOCUMENTO,'
      '  HISTORICO,'
      '  MES,'
      '  ANO,'
      '  VALOR,'
      '  CONTA,'
      '  ORIGEM,'
      '  PLANILHA,'
      '  CONTRA_PARTIDA,'
      '  BANCO,'
      '  DATA_CONCILIACAO,'
      '  TIPO_LANCAMENTO,'
      '  COD_DOC,'
      '  FORNECEDOR'
      'from CTB_MOVIMENTO_CONTABIL '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select  *  from CTB_MOVIMENTO_CONTABIL'
      'WHERE CNPJ = :CNPJ')
    ModifySQL.Strings = (
      'update CTB_MOVIMENTO_CONTABIL'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  TIPO = :TIPO,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  HISTORICO = :HISTORICO,'
      '  MES = :MES,'
      '  ANO = :ANO,'
      '  VALOR = :VALOR,'
      '  CONTA = :CONTA,'
      '  ORIGEM = :ORIGEM,'
      '  PLANILHA = :PLANILHA,'
      '  CONTRA_PARTIDA = :CONTRA_PARTIDA,'
      '  BANCO = :BANCO,'
      '  DATA_CONCILIACAO = :DATA_CONCILIACAO,'
      '  TIPO_LANCAMENTO = :TIPO_LANCAMENTO,'
      '  COD_DOC = :COD_DOC,'
      '  FORNECEDOR = :FORNECEDOR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 504
    Top = 8
    object Movimento_ContabilCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"MOVIMENTO_CONTABIL"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Movimento_ContabilCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"MOVIMENTO_CONTABIL"."CODIGO"'
      Required = True
    end
    object Movimento_ContabilDATA: TDateTimeField
      Tag = 1
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"MOVIMENTO_CONTABIL"."DATA"'
    end
    object Movimento_ContabilTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"MOVIMENTO_CONTABIL"."TIPO"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Movimento_ContabilDOCUMENTO: TIBStringField
      Tag = 1
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
      Origin = '"MOVIMENTO_CONTABIL"."DOCUMENTO"'
      Required = True
    end
    object Movimento_ContabilHISTORICO: TIBStringField
      Tag = 1
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"MOVIMENTO_CONTABIL"."HISTORICO"'
      Size = 100
    end
    object Movimento_ContabilMES: TIntegerField
      DisplayLabel = 'M'#234's'
      FieldName = 'MES'
      Origin = '"MOVIMENTO_CONTABIL"."MES"'
      Required = True
    end
    object Movimento_ContabilANO: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"MOVIMENTO_CONTABIL"."ANO"'
      Required = True
    end
    object Movimento_ContabilVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"MOVIMENTO_CONTABIL"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object Movimento_ContabilCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"MOVIMENTO_CONTABIL"."CONTA"'
      Required = True
      OnValidate = Movimento_ContabilCONTAValidate
    end
    object Movimento_ContabilORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"MOVIMENTO_CONTABIL"."ORIGEM"'
      Required = True
      Size = 15
    end
    object Movimento_ContabilPLANILHA: TIntegerField
      Tag = 1
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"MOVIMENTO_CONTABIL"."PLANILHA"'
      Required = True
    end
    object Movimento_ContabilCONTRA_PARTIDA: TIntegerField
      DisplayLabel = 'Contra Partida'
      FieldName = 'CONTRA_PARTIDA'
      Origin = '"MOVIMENTO_CONTABIL"."CONTRA_PARTIDA"'
      OnValidate = Movimento_ContabilCONTAValidate
    end
    object Movimento_ContabilBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"MOVIMENTO_CONTABIL"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object Movimento_ContabilDATA_CONCILIACAO: TDateTimeField
      DisplayLabel = 'Concilia'#231#227'o'
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"MOVIMENTO_CONTABIL"."DATA_CONCILIACAO"'
    end
    object Movimento_ContabilTIPO_LANCAMENTO: TIBStringField
      DisplayLabel = 'Tipo Lanc'
      FieldName = 'TIPO_LANCAMENTO'
      Origin = '"MOVIMENTO_CONTABIL"."TIPO_LANCAMENTO"'
      FixedChar = True
      Size = 1
    end
    object Movimento_ContabilCOD_DOC: TIBStringField
      DisplayLabel = 'Cod Doc'
      FieldName = 'COD_DOC'
      Origin = '"MOVIMENTO_CONTABIL"."COD_DOC"'
      FixedChar = True
      Size = 3
    end
    object Movimento_ContabilFORNECEDOR: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FORNECEDOR'
      Origin = '"MOVIMENTO_CONTABIL"."FORNECEDOR"'
    end
    object Movimento_ContabilConta_D: TStringField
      FieldKind = fkLookup
      FieldName = 'Conta_D'
      LookupDataSet = DmPlano.Plano
      LookupKeyFields = 'CONTA;CNPJ'
      LookupResultField = 'NOME'
      KeyFields = 'CONTRA_PARTIDA;CNPJ'
      Size = 50
      Lookup = True
    end
    object Movimento_ContabilConta_C: TStringField
      FieldKind = fkLookup
      FieldName = 'Conta_C'
      LookupDataSet = DmPlano.Plano
      LookupKeyFields = 'CONTA;CNPJ'
      LookupResultField = 'NOME'
      KeyFields = 'CONTA;CNPJ'
      Size = 50
      Lookup = True
    end
  end
  object Vendedores: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    OnNewRecord = VendedoresNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_VENDEDOR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FAT_VENDEDOR'
      '  (CNPJ, CODIGO, NOME, COM_VISTA, COM_PRAZO, PESSOA_FJ, SENHA, '
      'ATIVO, COD_PERFIL, '
      '   COD_PERFIL_PAGTO)'
      'values'
      
        '  (:CNPJ, :CODIGO, :NOME, :COM_VISTA, :COM_PRAZO, :PESSOA_FJ, :S' +
        'ENHA, '
      ':ATIVO, '
      '   :COD_PERFIL, :COD_PERFIL_PAGTO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  COM_VISTA,'
      '  COM_PRAZO,'
      '  PESSOA_FJ,'
      '  SENHA,'
      '  ATIVO,'
      '  COD_PERFIL,'
      '  COD_PERFIL_PAGTO'
      'from FAT_VENDEDOR '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT CNPJ, '
      '               CODIGO, '
      '               NOME, '
      '               COM_VISTA, '
      '               COM_PRAZO,'
      '               PESSOA_FJ,'
      '               SENHA,'
      '               ATIVO,'
      '               COD_PERFIL, '
      '               COD_PERFIL_PAGTO'
      'FROM FAT_VENDEDOR'
      'WHERE CNPJ = :CNPJ '
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update FAT_VENDEDOR'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  COM_VISTA = :COM_VISTA,'
      '  COM_PRAZO = :COM_PRAZO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  SENHA = :SENHA,'
      '  ATIVO = :ATIVO,'
      '  COD_PERFIL = :COD_PERFIL,'
      '  COD_PERFIL_PAGTO = :COD_PERFIL_PAGTO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 96
    Top = 104
    object VendedoresCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDEDOR"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object VendedoresCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDEDOR"."CODIGO"'
      Required = True
    end
    object VendedoresNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object VendedoresCOM_VISTA: TFloatField
      DisplayLabel = 'Vista'
      FieldName = 'COM_VISTA'
      Origin = '"FAT_VENDEDOR"."COM_VISTA"'
      DisplayFormat = '#,##0.00'
    end
    object VendedoresCOM_PRAZO: TFloatField
      DisplayLabel = 'Prazo'
      FieldName = 'COM_PRAZO'
      Origin = '"FAT_VENDEDOR"."COM_PRAZO"'
      DisplayFormat = '#,##0.00'
    end
    object VendedoresPESSOA_FJ: TIntegerField
      DisplayLabel = 'Pessoa'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDEDOR"."PESSOA_FJ"'
      Required = True
    end
    object VendedoresSENHA: TIBStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Origin = '"FAT_VENDEDOR"."SENHA"'
      Size = 6
    end
    object VendedoresATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"FAT_VENDEDOR"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object VendedoresCOD_PERFIL: TIntegerField
      FieldName = 'COD_PERFIL'
      Origin = '"FAT_VENDEDOR"."COD_PERFIL"'
    end
    object VendedoresCOD_PERFIL_PAGTO: TIntegerField
      FieldName = 'COD_PERFIL_PAGTO'
      Origin = '"FAT_VENDEDOR"."COD_PERFIL_PAGTO"'
    end
  end
  object Terceiros: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    OnNewRecord = TerceirosNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_TERCEIROS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FAT_TERCEIROS'
      '  (CNPJ, CODIGO, COM_PRAZO, COM_VISTA, NOME, PESSOA_FJ)'
      'values'
      '  (:CNPJ, :CODIGO, :COM_PRAZO, :COM_VISTA, :NOME, :PESSOA_FJ)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  COM_VISTA,'
      '  COM_PRAZO,'
      '  PESSOA_FJ'
      'from FAT_TERCEIROS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          COM_PRAZO, '
      '          COM_VISTA, '
      '          NOME, '
      '          PESSOA_FJ '
      'from FAT_TERCEIROS'
      'WHERE CNPJ = :CNPJ'
      'Order  By Nome')
    ModifySQL.Strings = (
      'update FAT_TERCEIROS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  COM_PRAZO = :COM_PRAZO,'
      '  COM_VISTA = :COM_VISTA,'
      '  NOME = :NOME,'
      '  PESSOA_FJ = :PESSOA_FJ'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 152
    Top = 192
    object TerceirosCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_TERCEIROS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object TerceirosCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_TERCEIROS"."CODIGO"'
      Required = True
    end
    object TerceirosCOM_PRAZO: TFloatField
      DisplayLabel = 'Com. Prazo'
      FieldName = 'COM_PRAZO'
      Origin = '"FAT_TERCEIROS"."COM_PRAZO"'
      DisplayFormat = '#,##0.00'
    end
    object TerceirosCOM_VISTA: TFloatField
      DisplayLabel = 'Com. Vista'
      FieldName = 'COM_VISTA'
      Origin = '"FAT_TERCEIROS"."COM_VISTA"'
      DisplayFormat = '#,##0.00'
    end
    object TerceirosNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_TERCEIROS"."NOME"'
      Size = 50
    end
    object TerceirosPESSOA_FJ: TIntegerField
      DisplayLabel = 'Pessoa F'#237'sica'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_TERCEIROS"."PESSOA_FJ"'
      Required = True
    end
  end
  object Subgrupos_Cotas: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = Subgrupos_CotasAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    OnNewRecord = Subgrupos_CotasNewRecord
    DeleteSQL.Strings = (
      'delete from EST_SUBGRUPOS_COTAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  GRUPO = :OLD_GRUPO and'
      '  SUBGRUPO = :OLD_SUBGRUPO and'
      '  VENDEDOR = :OLD_VENDEDOR')
    InsertSQL.Strings = (
      'insert into EST_SUBGRUPOS_COTAS'
      
        '  (CNPJ, COMISSAO_PRAZO, COMISSAO_VISTA, GRUPO, SUBGRUPO, VALOR,' +
        ' VENDEDOR)'
      'values'
      
        '  (:CNPJ, :COMISSAO_PRAZO, :COMISSAO_VISTA, :GRUPO, :SUBGRUPO, :' +
        'VALOR, '
      '   :VENDEDOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  GRUPO,'
      '  SUBGRUPO,'
      '  VENDEDOR,'
      '  VALOR,'
      '  COMISSAO_VISTA,'
      '  COMISSAO_PRAZO'
      'from EST_SUBGRUPOS_COTAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  GRUPO = :GRUPO and'
      '  SUBGRUPO = :SUBGRUPO and'
      '  VENDEDOR = :VENDEDOR')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          COMISSAO_PRAZO, '
      '          COMISSAO_VISTA, '
      '          GRUPO, '
      '          SUBGRUPO, '
      '           VALOR, '
      '           VENDEDOR '
      'from EST_SUBGRUPOS_COTAS'
      'Where CNPJ = :CNPJ')
    ModifySQL.Strings = (
      'update EST_SUBGRUPOS_COTAS'
      'set'
      '  CNPJ = :CNPJ,'
      '  COMISSAO_PRAZO = :COMISSAO_PRAZO,'
      '  COMISSAO_VISTA = :COMISSAO_VISTA,'
      '  GRUPO = :GRUPO,'
      '  SUBGRUPO = :SUBGRUPO,'
      '  VALOR = :VALOR,'
      '  VENDEDOR = :VENDEDOR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  GRUPO = :OLD_GRUPO and'
      '  SUBGRUPO = :OLD_SUBGRUPO and'
      '  VENDEDOR = :OLD_VENDEDOR')
    Left = 296
    Top = 144
    object Subgrupos_CotasCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_SUBGRUPOS_COTAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Subgrupos_CotasGRUPO: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'GRUPO'
      Origin = '"EST_SUBGRUPOS_COTAS"."GRUPO"'
      Required = True
    end
    object Subgrupos_CotasSUBGRUPO: TIntegerField
      DisplayLabel = 'Sub-Grupo'
      FieldName = 'SUBGRUPO'
      Origin = '"EST_SUBGRUPOS_COTAS"."SUBGRUPO"'
      Required = True
    end
    object Subgrupos_CotasVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"EST_SUBGRUPOS_COTAS"."VENDEDOR"'
      Required = True
    end
    object Subgrupos_CotasVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"EST_SUBGRUPOS_COTAS"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object Subgrupos_CotasCOMISSAO_VISTA: TFloatField
      DisplayLabel = 'Vista'
      FieldName = 'COMISSAO_VISTA'
      Origin = '"EST_SUBGRUPOS_COTAS"."COMISSAO_VISTA"'
      DisplayFormat = '###,##0.00'
    end
    object Subgrupos_CotasCOMISSAO_PRAZO: TFloatField
      DisplayLabel = 'Prazo'
      FieldName = 'COMISSAO_PRAZO'
      Origin = '"EST_SUBGRUPOS_COTAS"."COMISSAO_PRAZO"'
      DisplayFormat = '###,##0.00'
    end
  end
  object SelVendedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    BeforeOpen = LogradourosBeforeOpen
    SQL.Strings = (
      'SELECT CNPJ,'
      '               PESSOA_FJ, '
      '               NOME,'
      '               CODIGO'
      'FROM FAT_VENDEDOR'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    Left = 296
    Top = 280
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelVendedorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDEDOR"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelVendedorPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDEDOR"."PESSOA_FJ"'
      Required = True
    end
    object SelVendedorNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object SelVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDEDOR"."CODIGO"'
      Required = True
    end
  end
  object Geral: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Left = 232
    Top = 192
  end
  object Motoristas: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = MotoristasAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    DeleteSQL.Strings = (
      'delete from CRG_MOTORISTAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    InsertSQL.Strings = (
      'insert into CRG_MOTORISTAS'
      '  (CNPJ, PESSOA_FJ, NOME, N_CNH, T_CNH)'
      'values'
      '  (:CNPJ, :PESSOA_FJ, :NOME, :N_CNH, :T_CNH)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PESSOA_FJ,'
      '  NOME,'
      '  N_CNH,'
      '  T_CNH'
      'from CRG_MOTORISTAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  PESSOA_FJ = :PESSOA_FJ')
    SelectSQL.Strings = (
      'SELECT CNPJ, '
      '               PESSOA_FJ, '
      '               NOME, '
      '               N_CNH, '
      '               T_CNH '
      'FROM CRG_MOTORISTAS'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY CNPJ, PESSOA_FJ')
    ModifySQL.Strings = (
      'update CRG_MOTORISTAS'
      'set'
      '  CNPJ = :CNPJ,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  NOME = :NOME,'
      '  N_CNH = :N_CNH,'
      '  T_CNH = :T_CNH'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    Left = 152
    Top = 8
    object MotoristasCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CRG_MOTORISTAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object MotoristasPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"CRG_MOTORISTAS"."PESSOA_FJ"'
      Required = True
    end
    object MotoristasNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"CRG_MOTORISTAS"."NOME"'
      Required = True
      Size = 50
    end
    object MotoristasN_CNH: TIBStringField
      DisplayLabel = 'Cnh'
      FieldName = 'N_CNH'
      Origin = '"CRG_MOTORISTAS"."N_CNH"'
      Required = True
      FixedChar = True
      Size = 11
    end
    object MotoristasT_CNH: TIBStringField
      DisplayLabel = 'Tipo Cnh'
      FieldName = 'T_CNH'
      Origin = '"CRG_MOTORISTAS"."T_CNH"'
      Required = True
      FixedChar = True
      Size = 3
    end
  end
  object Rotas: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    DeleteSQL.Strings = (
      'delete from CRG_ROTAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into CRG_ROTAS'
      '  (CNPJ, CODIGO, NOME, VENDEDOR)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME, :VENDEDOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  VENDEDOR'
      'from CRG_ROTAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT CNPJ, '
      '               CODIGO, '
      '               NOME, '
      '               VENDEDOR '
      'FROM CRG_ROTAS'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY CNPJ, CODIGO')
    ModifySQL.Strings = (
      'update CRG_ROTAS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  VENDEDOR = :VENDEDOR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 296
    Top = 8
    object RotasCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CRG_ROTAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object RotasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CRG_ROTAS"."CODIGO"'
      Required = True
    end
    object RotasNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CRG_ROTAS"."NOME"'
      Required = True
      Size = 50
    end
    object RotasVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"CRG_ROTAS"."VENDEDOR"'
      Required = True
    end
  end
  object Rotas_Cidades: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = Rotas_CidadesAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    DeleteSQL.Strings = (
      'delete from CRG_ROTAS_CIDADES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  ROTA = :OLD_ROTA and'
      '  CIDADE = :OLD_CIDADE')
    InsertSQL.Strings = (
      'insert into CRG_ROTAS_CIDADES'
      '  (CNPJ, ROTA, CIDADE)'
      'values'
      '  (:CNPJ, :ROTA, :CIDADE)')
    RefreshSQL.Strings = (
      'SELECT RC.CNPJ, '
      '               RC.ROTA, '
      '               RC.CIDADE ,'
      '               C.NOME NOME_CIDADE'
      'FROM CRG_ROTAS_CIDADES RC'
      '           INNER JOIN GLO_CIDADES C'
      '           ON (C.CNPJ = RC.CNPJ AND'
      '                  C.CODIGO = RC.CIDADE)'
      'WHERE RC.CNPJ = :CNPJ AND'
      '               RC.ROTA = :CODIGO'
      'ORDER BY RC.CNPJ, RC.ROTA, RC.CIDADE')
    SelectSQL.Strings = (
      'SELECT RC.CNPJ, '
      '               RC.ROTA, '
      '               RC.CIDADE ,'
      '               C.NOME NOME_CIDADE'
      'FROM CRG_ROTAS_CIDADES RC'
      '           INNER JOIN GLO_CIDADES C'
      '           ON (C.CNPJ = RC.CNPJ AND'
      '                  C.CODIGO = RC.CIDADE)'
      'WHERE RC.CNPJ = :CNPJ AND'
      '               RC.ROTA = :CODIGO'
      'ORDER BY RC.CNPJ, RC.ROTA, RC.CIDADE')
    ModifySQL.Strings = (
      'update CRG_ROTAS_CIDADES'
      'set'
      '  CNPJ = :CNPJ,'
      '  ROTA = :ROTA,'
      '  CIDADE = :CIDADE'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  ROTA = :OLD_ROTA and'
      '  CIDADE = :OLD_CIDADE')
    DataSource = dsRotas
    Left = 296
    Top = 56
    object Rotas_CidadesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CRG_ROTAS_CIDADES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Rotas_CidadesROTA: TIntegerField
      FieldName = 'ROTA'
      Origin = '"CRG_ROTAS_CIDADES"."ROTA"'
      Required = True
    end
    object Rotas_CidadesCIDADE: TIntegerField
      FieldName = 'CIDADE'
      Origin = '"CRG_ROTAS_CIDADES"."CIDADE"'
      Required = True
    end
    object Rotas_CidadesNOME_CIDADE: TIBStringField
      FieldName = 'NOME_CIDADE'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
  end
  object Veiculos: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = MotoristasAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    DeleteSQL.Strings = (
      'delete from CRG_VEICULOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PLACA = :OLD_PLACA')
    InsertSQL.Strings = (
      'insert into CRG_VEICULOS'
      '  (CNPJ, PLACA, DESCRICAO, KM)'
      'values'
      '  (:CNPJ, :PLACA, :DESCRICAO, :KM)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PLACA,'
      '  DESCRICAO,'
      '  KM'
      'from CRG_VEICULOS '
      'where'
      '  CNPJ = :CNPJ and'
      '  PLACA = :PLACA')
    SelectSQL.Strings = (
      'SELECT CNPJ, '
      '               PLACA, '
      '               DESCRICAO, '
      '               KM '
      'FROM CRG_VEICULOS'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY CNPJ, PLACA')
    ModifySQL.Strings = (
      'update CRG_VEICULOS'
      'set'
      '  CNPJ = :CNPJ,'
      '  PLACA = :PLACA,'
      '  DESCRICAO = :DESCRICAO,'
      '  KM = :KM'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PLACA = :OLD_PLACA')
    Left = 648
    Top = 56
    object VeiculosCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CRG_VEICULOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object VeiculosPLACA: TIBStringField
      DisplayLabel = 'Placa'
      FieldName = 'PLACA'
      Origin = '"CRG_VEICULOS"."PLACA"'
      Required = True
      FixedChar = True
      Size = 8
    end
    object VeiculosDESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"CRG_VEICULOS"."DESCRICAO"'
      Required = True
      Size = 50
    end
    object VeiculosKM: TFloatField
      DisplayLabel = 'Km'
      FieldName = 'KM'
      Origin = '"CRG_VEICULOS"."KM"'
      DisplayFormat = '#,##0'
    end
  end
  object Cargas: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    OnNewRecord = CargasNewRecord
    DeleteSQL.Strings = (
      'delete from CRG_CARGAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into CRG_CARGAS'
      
        '  (CNPJ, CODIGO, MOTORISTA, VEICULO, ROTA, KM_SAIDA, KM_CHEGADA,' +
        ' DATA_SAIDA, '
      '   DATA_CHEGADA, PESO, VOLUME)'
      'values'
      
        '  (:CNPJ, :CODIGO, :MOTORISTA, :VEICULO, :ROTA, :KM_SAIDA, :KM_C' +
        'HEGADA, '
      '   :DATA_SAIDA, :DATA_CHEGADA, :PESO, :VOLUME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  MOTORISTA,'
      '  VEICULO,'
      '  ROTA,'
      '  KM_SAIDA,'
      '  KM_CHEGADA,'
      '  DATA_SAIDA,'
      '  DATA_CHEGADA,'
      '  PESO,'
      '  VOLUME'
      'from CRG_CARGAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT CNPJ, '
      '               CODIGO, '
      '               MOTORISTA, '
      '               VEICULO, '
      '               ROTA, '
      '               KM_SAIDA, '
      '               KM_CHEGADA, '
      '               DATA_SAIDA, '
      '               DATA_CHEGADA, '
      '               PESO, '
      '               VOLUME '
      'FROM CRG_CARGAS'
      'WHERE CNPJ = :CNPJ '
      'ORDER BY CNPJ, CODIGO')
    ModifySQL.Strings = (
      'update CRG_CARGAS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  MOTORISTA = :MOTORISTA,'
      '  VEICULO = :VEICULO,'
      '  ROTA = :ROTA,'
      '  KM_SAIDA = :KM_SAIDA,'
      '  KM_CHEGADA = :KM_CHEGADA,'
      '  DATA_SAIDA = :DATA_SAIDA,'
      '  DATA_CHEGADA = :DATA_CHEGADA,'
      '  PESO = :PESO,'
      '  VOLUME = :VOLUME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 648
    Top = 96
    object CargasCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CRG_CARGAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CargasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CRG_CARGAS"."CODIGO"'
      Required = True
    end
    object CargasMOTORISTA: TIntegerField
      DisplayLabel = 'Motorista'
      FieldName = 'MOTORISTA'
      Origin = '"CRG_CARGAS"."MOTORISTA"'
      Required = True
    end
    object CargasVEICULO: TIBStringField
      DisplayLabel = 'Ve'#237'culo'
      FieldName = 'VEICULO'
      Origin = '"CRG_CARGAS"."VEICULO"'
      Required = True
      FixedChar = True
      Size = 8
    end
    object CargasROTA: TIntegerField
      DisplayLabel = 'Rota'
      FieldName = 'ROTA'
      Origin = '"CRG_CARGAS"."ROTA"'
      Required = True
    end
    object CargasKM_SAIDA: TFloatField
      DisplayLabel = 'Km Sa'#237'da'
      FieldName = 'KM_SAIDA'
      Origin = '"CRG_CARGAS"."KM_SAIDA"'
      DisplayFormat = '#,##0.##'
    end
    object CargasKM_CHEGADA: TFloatField
      DisplayLabel = 'Km Chegada'
      FieldName = 'KM_CHEGADA'
      Origin = '"CRG_CARGAS"."KM_CHEGADA"'
      DisplayFormat = '#,##0.##'
    end
    object CargasDATA_SAIDA: TDateTimeField
      DisplayLabel = 'Sa'#237'da'
      FieldName = 'DATA_SAIDA'
      Origin = '"CRG_CARGAS"."DATA_SAIDA"'
    end
    object CargasDATA_CHEGADA: TDateTimeField
      DisplayLabel = 'Chegada'
      FieldName = 'DATA_CHEGADA'
      Origin = '"CRG_CARGAS"."DATA_CHEGADA"'
    end
    object CargasPESO: TFloatField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"CRG_CARGAS"."PESO"'
      DisplayFormat = '#,##0.##'
    end
    object CargasVOLUME: TFloatField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"CRG_CARGAS"."VOLUME"'
      DisplayFormat = '#,##0.##'
    end
  end
  object dsRotas: TDataSource
    AutoEdit = False
    DataSet = Rotas
    Left = 648
    Top = 8
  end
  object SelCidades: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    BeforeOpen = LogradourosBeforeOpen
    SQL.Strings = (
      'SELECT CODIGO, '
      '               NOME '
      'FROM GLO_CIDADES'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    Left = 648
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelCidadesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_CIDADES"."CODIGO"'
      Required = True
    end
    object SelCidadesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_CIDADES"."NOME"'
      Required = True
      Size = 50
    end
  end
  object SelPessoas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    BeforeOpen = LogradourosBeforeOpen
    SQL.Strings = (
      'SELECT CODIGO, '
      '               NOME_RAZAO '
      'FROM GLO_PESSOAS_FJ'
      'WHERE CNPJ = :CNPJ'
      '')
    Left = 440
    Top = 192
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelPessoasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
    object SelPessoasNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
  end
  object Transportadores: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    SelectSQL.Strings = (
      'SELECT CNPJ, '
      '               PESSOA_FJ, '
      '               NOME '
      'FROM EST_TRANSPORTADORES'
      'WHERE CNPJ = :CNPJ '
      'ORDER BY CNPJ, PESSOA_FJ')
    Left = 368
    Top = 144
    object TransportadoresCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_TRANSPORTADORES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object TransportadoresPESSOA_FJ: TIntegerField
      DisplayLabel = 'Pessoa Fj'
      FieldName = 'PESSOA_FJ'
      Origin = '"EST_TRANSPORTADORES"."PESSOA_FJ"'
      Required = True
    end
    object TransportadoresNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"EST_TRANSPORTADORES"."NOME"'
      Required = True
      Size = 50
    end
  end
  object Serie: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AutoCalcFields = False
    AfterClose = LogradourosAfterClose
    AfterInsert = SerieAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    OnNewRecord = SerieNewRecord
    DeleteSQL.Strings = (
      'delete from Sis_SerieNf'
      'where'
      '  INDICE = :OLD_INDICE')
    InsertSQL.Strings = (
      'insert into Sis_SerieNf'
      
        '  (nfe_impressao, CLI_BAIRRO_ALT, CLI_BAIRRO_DST, CLI_CEP_ALT, C' +
        'LI_CEP_DST, CLI_CGCCPF_ALT, '
      
        '   CLI_CGCCPF_DST, CLI_CID_ALT, CLI_CID_DST, CLI_CID_PROP_ALT, C' +
        'LI_CID_PROP_DST, '
      
        '   CLI_DATEMIS_ALT, CLI_DATEMIS_DST, CLI_DATENTSAI_ALT, CLI_DATE' +
        'NTSAI_DST, '
      
        '   CLI_DATENTSAI_RODAPE_ALT, CLI_DATENTSAI_RODAPE_DST, CLI_DUPLL' +
        'ARGURA_COLUNA, '
      
        '   CLI_DUPLNUM_ALT, CLI_DUPLNUM_COLUNA, CLI_DUPLNUM_DST, CLI_DUP' +
        'LVALOR_ALT, '
      
        '   CLI_DUPLVALOR_DST, CLI_DUPLVENC_ALT, CLI_DUPLVENC_DST, CLI_EN' +
        'D_ALT, '
      
        '   CLI_END_DST, CLI_END_PROP_ALT, CLI_END_PROP_DST, CLI_FAX_ALT,' +
        ' CLI_FAX_DST, '
      
        '   CLI_FONE_ALT, CLI_FONE_DST, CLI_HORASAI_ALT, CLI_HORASAI_DST,' +
        ' CLI_INSCEST_ALT, '
      
        '   CLI_INSCEST_DST, CLI_INSCMUN_ALT, CLI_INSCMUN_DST, CLI_NOME_A' +
        'LT, CLI_NOME_DST, '
      
        '   CLI_NOME_PROP_ALT, CLI_NOME_PROP_DST, CLI_NOME_RODAPE_ALT, CL' +
        'I_NOME_RODAPE_DST, '
      
        '   CLI_PEDNUM_ALT, CLI_PEDNUM_DST, CLI_UF_ALT, CLI_UF_DST, CLI_U' +
        'F_PROP_ALT, '
      
        '   CLI_UF_PROP_DST, CNPJ, CONFIG_NF_GRAF, DATA_ANO_ALT, DATA_ANO' +
        '_DST, DATA_DIA_ALT, '
      
        '   DATA_DIA_DST, DATA_MES_ALT, DATA_MES_DST, FEC_BASECALCICMS_AL' +
        'T, FEC_BASECALCICMS_DST, '
      
        '   FEC_BASEICMS_ALT, FEC_BASEICMS_DST, FEC_DESPESAS_ALT, FEC_DES' +
        'PESAS_DST, '
      
        '   FEC_IPI_ALT, FEC_IPI_DST, FEC_ISS_ALT, FEC_ISS_DST, FEC_VALOR' +
        'FRETE_ALT, '
      
        '   FEC_VALORFRETE_DST, FEC_VALORICMS_ALT, FEC_VALORICMS_DST, FEC' +
        '_VALORICMSSUB_ALT, '
      
        '   FEC_VALORICMSSUB_DST, FEC_VALORNOTA_ALT, FEC_VALORNOTA_DST, F' +
        'EC_VALORNOTA_RODAPE_ALT, '
      
        '   FEC_VALORNOTA_RODAPE_DST, FEC_VALORSEGURO_ALT, FEC_VALORSEGUR' +
        'O_DST, '
      
        '   FEC_VALORTOTAL_ALT, FEC_VALORTOTAL_DST, IMPRESSORA_LPP, IMPRE' +
        'SSORA_PULO, '
      
        '   INDICE, LOCALDUPLICATAS, MODELO, NF_GRAFICA, NF_GRAFICA2, NFS' +
        'ERV_GRAFICA, '
      
        '   NOTA_CFOP_ALT, NOTA_CFOP_DST, NOTA_CNDPG_ALT, NOTA_CNDPG_DST,' +
        ' NOTA_DESCONTO_ALT, '
      
        '   NOTA_DESCONTO_ALT2, NOTA_DESCONTO_DST, NOTA_DESCONTO_DST2, NO' +
        'TA_DUPLICA_NUMERO, '
      
        '   NOTA_ECF_ALT, NOTA_ECF_DST, NOTA_EMPRESA_ALT, NOTA_EMPRESA_DS' +
        'T, NOTA_EMPRESA_UF_ALT, '
      
        '   NOTA_EMPRESA_UF_DST, NOTA_ENT_SAI_ALT, NOTA_ENT_SAI_DST, NOTA' +
        '_INDCOMPL_DST, '
      
        '   NOTA_INFCOMPL_ALT, NOTA_INSS_ALT, NOTA_INSS_DST, NOTA_IRRF_AL' +
        'T, NOTA_IRRF_DST, '
      
        '   NOTA_ISS_SUBST_ALT, NOTA_ISS_SUBST_DST, NOTA_MSGNAT_ALT, NOTA' +
        '_MSGNAT_DST, '
      
        '   NOTA_NATUREZA_ALT, NOTA_NATUREZA_DST, NOTA_NUM_ALT, NOTA_NUM_' +
        'DST, NOTA_NUMRDP_ALT, '
      
        '   NOTA_NUMRDP_DST, NOTA_NUMRECIBO_ALT, NOTA_NUMRECIBO_DST, NOTA' +
        '_PIS_ALT, '
      
        '   NOTA_PIS_DST, NOTA_SUBS_TRIB_ALT, NOTA_SUBS_TRIB_DST, NOTA_VE' +
        'NDEDOR_ALT, '
      
        '   NOTA_VENDEDOR_DST, NUMERODELINHASDANOTA, OBS_ALT, OBS_DST, PO' +
        'RTA_IMPRESSAO, '
      
        '   PROD_CF_ALT, PROD_CF_DST, PROD_COD_ALT, PROD_COD_DST, PROD_DE' +
        'SC_ALT, '
      
        '   PROD_DESC_DST, PROD_ICMS_ALT, PROD_ICMS_DST, PROD_IPI_ALT, PR' +
        'OD_IPI_DST, '
      
        '   PROD_LOTE_ALT, PROD_LOTE_DST, PROD_LOTE_VALIDADE_ALT, PROD_LO' +
        'TE_VALIDADE_DST, '
      
        '   PROD_MARCA_ALT, PROD_MARCA_DST, PROD_PROD_ALT, PROD_PROD_DST,' +
        ' PROD_QNTD_UNID_ALT, '
      
        '   PROD_QNTD_UNID_DST, PROD_QUANT_ALT, PROD_QUANT_DST, PROD_SITT' +
        'RIB_ALT, '
      
        '   PROD_SITTRIB_DST, PROD_TAM_NOME, PROD_TIPO_UNID_ALT, PROD_TIP' +
        'O_UNID_DST, '
      
        '   PROD_UNIDADE_ALT, PROD_UNIDADE_DST, PROD_VALORIPI_ALT, PROD_V' +
        'ALORIPI_DST, '
      
        '   PROD_VALORTOT_ALT, PROD_VALORTOT_DST, PROD_VALORUNIT_ALT, PRO' +
        'D_VALORUNIT_DST, '
      
        '   PRODUTOSNOTA, SERIE, TIPO, TIPO_DOCTO, TRANS_CGCCPF_ALT, TRAN' +
        'S_CGCCPF_DST, '
      
        '   TRANS_CID_ALT, TRANS_CID_DST, TRANS_END_ALT, TRANS_END_DST, T' +
        'RANS_ESPECIE_ALT, '
      
        '   TRANS_ESPECIE_DST, TRANS_FRETECONTA_ALT, TRANS_FRETECONTA_DST' +
        ', TRANS_INSCEST_ALT, '
      
        '   TRANS_INSCEST_DST, TRANS_MARCA_ALT, TRANS_MARCA_DST, TRANS_NO' +
        'ME_ALT, '
      
        '   TRANS_NOME_DST, TRANS_NUMERO_ALT, TRANS_NUMERO_DST, TRANS_OBS' +
        '_ALT, TRANS_OBS_DST, '
      
        '   TRANS_PESBRT_DST, TRANS_PESOBRT_ALT, TRANS_PESOLIQ_ALT, TRANS' +
        '_PESOLIQ_DST, '
      
        '   TRANS_PLACA_ALT, TRANS_PLACA_DST, TRANS_QUANTIDADE_ALT, TRANS' +
        '_QUANTIDADE_DST, '
      
        '   TRANS_UF_ALT, TRANS_UF_DST, TRANS_UFVEI_DST, TRANS_UFVEIALT, ' +
        'ULTIMO_NUMERO)'
      'values'
      
        '  (:nfe_impressao, :CLI_BAIRRO_ALT, :CLI_BAIRRO_DST, :CLI_CEP_AL' +
        'T, :CLI_CEP_DST, :CLI_CGCCPF_ALT, '
      
        '   :CLI_CGCCPF_DST, :CLI_CID_ALT, :CLI_CID_DST, :CLI_CID_PROP_AL' +
        'T, :CLI_CID_PROP_DST, '
      
        '   :CLI_DATEMIS_ALT, :CLI_DATEMIS_DST, :CLI_DATENTSAI_ALT, :CLI_' +
        'DATENTSAI_DST, '
      
        '   :CLI_DATENTSAI_RODAPE_ALT, :CLI_DATENTSAI_RODAPE_DST, :CLI_DU' +
        'PLLARGURA_COLUNA, '
      
        '   :CLI_DUPLNUM_ALT, :CLI_DUPLNUM_COLUNA, :CLI_DUPLNUM_DST, :CLI' +
        '_DUPLVALOR_ALT, '
      
        '   :CLI_DUPLVALOR_DST, :CLI_DUPLVENC_ALT, :CLI_DUPLVENC_DST, :CL' +
        'I_END_ALT, '
      
        '   :CLI_END_DST, :CLI_END_PROP_ALT, :CLI_END_PROP_DST, :CLI_FAX_' +
        'ALT, :CLI_FAX_DST, '
      
        '   :CLI_FONE_ALT, :CLI_FONE_DST, :CLI_HORASAI_ALT, :CLI_HORASAI_' +
        'DST, :CLI_INSCEST_ALT, '
      
        '   :CLI_INSCEST_DST, :CLI_INSCMUN_ALT, :CLI_INSCMUN_DST, :CLI_NO' +
        'ME_ALT, '
      
        '   :CLI_NOME_DST, :CLI_NOME_PROP_ALT, :CLI_NOME_PROP_DST, :CLI_N' +
        'OME_RODAPE_ALT, '
      
        '   :CLI_NOME_RODAPE_DST, :CLI_PEDNUM_ALT, :CLI_PEDNUM_DST, :CLI_' +
        'UF_ALT, '
      
        '   :CLI_UF_DST, :CLI_UF_PROP_ALT, :CLI_UF_PROP_DST, :CNPJ, :CONF' +
        'IG_NF_GRAF, '
      
        '   :DATA_ANO_ALT, :DATA_ANO_DST, :DATA_DIA_ALT, :DATA_DIA_DST, :' +
        'DATA_MES_ALT, '
      
        '   :DATA_MES_DST, :FEC_BASECALCICMS_ALT, :FEC_BASECALCICMS_DST, ' +
        ':FEC_BASEICMS_ALT, '
      
        '   :FEC_BASEICMS_DST, :FEC_DESPESAS_ALT, :FEC_DESPESAS_DST, :FEC' +
        '_IPI_ALT, '
      
        '   :FEC_IPI_DST, :FEC_ISS_ALT, :FEC_ISS_DST, :FEC_VALORFRETE_ALT' +
        ', :FEC_VALORFRETE_DST, '
      
        '   :FEC_VALORICMS_ALT, :FEC_VALORICMS_DST, :FEC_VALORICMSSUB_ALT' +
        ', :FEC_VALORICMSSUB_DST, '
      
        '   :FEC_VALORNOTA_ALT, :FEC_VALORNOTA_DST, :FEC_VALORNOTA_RODAPE' +
        '_ALT, :FEC_VALORNOTA_RODAPE_DST, '
      
        '   :FEC_VALORSEGURO_ALT, :FEC_VALORSEGURO_DST, :FEC_VALORTOTAL_A' +
        'LT, :FEC_VALORTOTAL_DST, '
      
        '   :IMPRESSORA_LPP, :IMPRESSORA_PULO, :INDICE, :LOCALDUPLICATAS,' +
        ' :MODELO, '
      
        '   :NF_GRAFICA, :NF_GRAFICA2, :NFSERV_GRAFICA, :NOTA_CFOP_ALT, :' +
        'NOTA_CFOP_DST, '
      
        '   :NOTA_CNDPG_ALT, :NOTA_CNDPG_DST, :NOTA_DESCONTO_ALT, :NOTA_D' +
        'ESCONTO_ALT2, '
      
        '   :NOTA_DESCONTO_DST, :NOTA_DESCONTO_DST2, :NOTA_DUPLICA_NUMERO' +
        ', :NOTA_ECF_ALT, '
      
        '   :NOTA_ECF_DST, :NOTA_EMPRESA_ALT, :NOTA_EMPRESA_DST, :NOTA_EM' +
        'PRESA_UF_ALT, '
      
        '   :NOTA_EMPRESA_UF_DST, :NOTA_ENT_SAI_ALT, :NOTA_ENT_SAI_DST, :' +
        'NOTA_INDCOMPL_DST, '
      
        '   :NOTA_INFCOMPL_ALT, :NOTA_INSS_ALT, :NOTA_INSS_DST, :NOTA_IRR' +
        'F_ALT, '
      
        '   :NOTA_IRRF_DST, :NOTA_ISS_SUBST_ALT, :NOTA_ISS_SUBST_DST, :NO' +
        'TA_MSGNAT_ALT, '
      
        '   :NOTA_MSGNAT_DST, :NOTA_NATUREZA_ALT, :NOTA_NATUREZA_DST, :NO' +
        'TA_NUM_ALT, '
      
        '   :NOTA_NUM_DST, :NOTA_NUMRDP_ALT, :NOTA_NUMRDP_DST, :NOTA_NUMR' +
        'ECIBO_ALT, '
      
        '   :NOTA_NUMRECIBO_DST, :NOTA_PIS_ALT, :NOTA_PIS_DST, :NOTA_SUBS' +
        '_TRIB_ALT, '
      
        '   :NOTA_SUBS_TRIB_DST, :NOTA_VENDEDOR_ALT, :NOTA_VENDEDOR_DST, ' +
        ':NUMERODELINHASDANOTA, '
      
        '   :OBS_ALT, :OBS_DST, :PORTA_IMPRESSAO, :PROD_CF_ALT, :PROD_CF_' +
        'DST, :PROD_COD_ALT, '
      
        '   :PROD_COD_DST, :PROD_DESC_ALT, :PROD_DESC_DST, :PROD_ICMS_ALT' +
        ', :PROD_ICMS_DST, '
      
        '   :PROD_IPI_ALT, :PROD_IPI_DST, :PROD_LOTE_ALT, :PROD_LOTE_DST,' +
        ' :PROD_LOTE_VALIDADE_ALT, '
      
        '   :PROD_LOTE_VALIDADE_DST, :PROD_MARCA_ALT, :PROD_MARCA_DST, :P' +
        'ROD_PROD_ALT, '
      
        '   :PROD_PROD_DST, :PROD_QNTD_UNID_ALT, :PROD_QNTD_UNID_DST, :PR' +
        'OD_QUANT_ALT, '
      
        '   :PROD_QUANT_DST, :PROD_SITTRIB_ALT, :PROD_SITTRIB_DST, :PROD_' +
        'TAM_NOME, '
      
        '   :PROD_TIPO_UNID_ALT, :PROD_TIPO_UNID_DST, :PROD_UNIDADE_ALT, ' +
        ':PROD_UNIDADE_DST, '
      
        '   :PROD_VALORIPI_ALT, :PROD_VALORIPI_DST, :PROD_VALORTOT_ALT, :' +
        'PROD_VALORTOT_DST, '
      
        '   :PROD_VALORUNIT_ALT, :PROD_VALORUNIT_DST, :PRODUTOSNOTA, :SER' +
        'IE, :TIPO, '
      
        '   :TIPO_DOCTO, :TRANS_CGCCPF_ALT, :TRANS_CGCCPF_DST, :TRANS_CID' +
        '_ALT, :TRANS_CID_DST, '
      
        '   :TRANS_END_ALT, :TRANS_END_DST, :TRANS_ESPECIE_ALT, :TRANS_ES' +
        'PECIE_DST, '
      
        '   :TRANS_FRETECONTA_ALT, :TRANS_FRETECONTA_DST, :TRANS_INSCEST_' +
        'ALT, :TRANS_INSCEST_DST, '
      
        '   :TRANS_MARCA_ALT, :TRANS_MARCA_DST, :TRANS_NOME_ALT, :TRANS_N' +
        'OME_DST, '
      
        '   :TRANS_NUMERO_ALT, :TRANS_NUMERO_DST, :TRANS_OBS_ALT, :TRANS_' +
        'OBS_DST, '
      
        '   :TRANS_PESBRT_DST, :TRANS_PESOBRT_ALT, :TRANS_PESOLIQ_ALT, :T' +
        'RANS_PESOLIQ_DST, '
      
        '   :TRANS_PLACA_ALT, :TRANS_PLACA_DST, :TRANS_QUANTIDADE_ALT, :T' +
        'RANS_QUANTIDADE_DST, '
      
        '   :TRANS_UF_ALT, :TRANS_UF_DST, :TRANS_UFVEI_DST, :TRANS_UFVEIA' +
        'LT, :ULTIMO_NUMERO)')
    RefreshSQL.Strings = (
      'Select * '
      'from Sis_SerieNf '
      'where'
      '  INDICE = :INDICE')
    SelectSQL.Strings = (
      'select *'
      'From Sis_SerieNf'
      'Where Cnpj = :CNPJ'
      'Order By Serie')
    ModifySQL.Strings = (
      'update Sis_SerieNf'
      'set'
      '  nfe_impressao = :nfe_impressao,'
      '  CLI_BAIRRO_ALT = :CLI_BAIRRO_ALT,'
      '  CLI_BAIRRO_DST = :CLI_BAIRRO_DST,'
      '  CLI_CEP_ALT = :CLI_CEP_ALT,'
      '  CLI_CEP_DST = :CLI_CEP_DST,'
      '  CLI_CGCCPF_ALT = :CLI_CGCCPF_ALT,'
      '  CLI_CGCCPF_DST = :CLI_CGCCPF_DST,'
      '  CLI_CID_ALT = :CLI_CID_ALT,'
      '  CLI_CID_DST = :CLI_CID_DST,'
      '  CLI_CID_PROP_ALT = :CLI_CID_PROP_ALT,'
      '  CLI_CID_PROP_DST = :CLI_CID_PROP_DST,'
      '  CLI_DATEMIS_ALT = :CLI_DATEMIS_ALT,'
      '  CLI_DATEMIS_DST = :CLI_DATEMIS_DST,'
      '  CLI_DATENTSAI_ALT = :CLI_DATENTSAI_ALT,'
      '  CLI_DATENTSAI_DST = :CLI_DATENTSAI_DST,'
      '  CLI_DATENTSAI_RODAPE_ALT = :CLI_DATENTSAI_RODAPE_ALT,'
      '  CLI_DATENTSAI_RODAPE_DST = :CLI_DATENTSAI_RODAPE_DST,'
      '  CLI_DUPLLARGURA_COLUNA = :CLI_DUPLLARGURA_COLUNA,'
      '  CLI_DUPLNUM_ALT = :CLI_DUPLNUM_ALT,'
      '  CLI_DUPLNUM_COLUNA = :CLI_DUPLNUM_COLUNA,'
      '  CLI_DUPLNUM_DST = :CLI_DUPLNUM_DST,'
      '  CLI_DUPLVALOR_ALT = :CLI_DUPLVALOR_ALT,'
      '  CLI_DUPLVALOR_DST = :CLI_DUPLVALOR_DST,'
      '  CLI_DUPLVENC_ALT = :CLI_DUPLVENC_ALT,'
      '  CLI_DUPLVENC_DST = :CLI_DUPLVENC_DST,'
      '  CLI_END_ALT = :CLI_END_ALT,'
      '  CLI_END_DST = :CLI_END_DST,'
      '  CLI_END_PROP_ALT = :CLI_END_PROP_ALT,'
      '  CLI_END_PROP_DST = :CLI_END_PROP_DST,'
      '  CLI_FAX_ALT = :CLI_FAX_ALT,'
      '  CLI_FAX_DST = :CLI_FAX_DST,'
      '  CLI_FONE_ALT = :CLI_FONE_ALT,'
      '  CLI_FONE_DST = :CLI_FONE_DST,'
      '  CLI_HORASAI_ALT = :CLI_HORASAI_ALT,'
      '  CLI_HORASAI_DST = :CLI_HORASAI_DST,'
      '  CLI_INSCEST_ALT = :CLI_INSCEST_ALT,'
      '  CLI_INSCEST_DST = :CLI_INSCEST_DST,'
      '  CLI_INSCMUN_ALT = :CLI_INSCMUN_ALT,'
      '  CLI_INSCMUN_DST = :CLI_INSCMUN_DST,'
      '  CLI_NOME_ALT = :CLI_NOME_ALT,'
      '  CLI_NOME_DST = :CLI_NOME_DST,'
      '  CLI_NOME_PROP_ALT = :CLI_NOME_PROP_ALT,'
      '  CLI_NOME_PROP_DST = :CLI_NOME_PROP_DST,'
      '  CLI_NOME_RODAPE_ALT = :CLI_NOME_RODAPE_ALT,'
      '  CLI_NOME_RODAPE_DST = :CLI_NOME_RODAPE_DST,'
      '  CLI_PEDNUM_ALT = :CLI_PEDNUM_ALT,'
      '  CLI_PEDNUM_DST = :CLI_PEDNUM_DST,'
      '  CLI_UF_ALT = :CLI_UF_ALT,'
      '  CLI_UF_DST = :CLI_UF_DST,'
      '  CLI_UF_PROP_ALT = :CLI_UF_PROP_ALT,'
      '  CLI_UF_PROP_DST = :CLI_UF_PROP_DST,'
      '  CNPJ = :CNPJ,'
      '  CONFIG_NF_GRAF = :CONFIG_NF_GRAF,'
      '  DATA_ANO_ALT = :DATA_ANO_ALT,'
      '  DATA_ANO_DST = :DATA_ANO_DST,'
      '  DATA_DIA_ALT = :DATA_DIA_ALT,'
      '  DATA_DIA_DST = :DATA_DIA_DST,'
      '  DATA_MES_ALT = :DATA_MES_ALT,'
      '  DATA_MES_DST = :DATA_MES_DST,'
      '  FEC_BASECALCICMS_ALT = :FEC_BASECALCICMS_ALT,'
      '  FEC_BASECALCICMS_DST = :FEC_BASECALCICMS_DST,'
      '  FEC_BASEICMS_ALT = :FEC_BASEICMS_ALT,'
      '  FEC_BASEICMS_DST = :FEC_BASEICMS_DST,'
      '  FEC_DESPESAS_ALT = :FEC_DESPESAS_ALT,'
      '  FEC_DESPESAS_DST = :FEC_DESPESAS_DST,'
      '  FEC_IPI_ALT = :FEC_IPI_ALT,'
      '  FEC_IPI_DST = :FEC_IPI_DST,'
      '  FEC_ISS_ALT = :FEC_ISS_ALT,'
      '  FEC_ISS_DST = :FEC_ISS_DST,'
      '  FEC_VALORFRETE_ALT = :FEC_VALORFRETE_ALT,'
      '  FEC_VALORFRETE_DST = :FEC_VALORFRETE_DST,'
      '  FEC_VALORICMS_ALT = :FEC_VALORICMS_ALT,'
      '  FEC_VALORICMS_DST = :FEC_VALORICMS_DST,'
      '  FEC_VALORICMSSUB_ALT = :FEC_VALORICMSSUB_ALT,'
      '  FEC_VALORICMSSUB_DST = :FEC_VALORICMSSUB_DST,'
      '  FEC_VALORNOTA_ALT = :FEC_VALORNOTA_ALT,'
      '  FEC_VALORNOTA_DST = :FEC_VALORNOTA_DST,'
      '  FEC_VALORNOTA_RODAPE_ALT = :FEC_VALORNOTA_RODAPE_ALT,'
      '  FEC_VALORNOTA_RODAPE_DST = :FEC_VALORNOTA_RODAPE_DST,'
      '  FEC_VALORSEGURO_ALT = :FEC_VALORSEGURO_ALT,'
      '  FEC_VALORSEGURO_DST = :FEC_VALORSEGURO_DST,'
      '  FEC_VALORTOTAL_ALT = :FEC_VALORTOTAL_ALT,'
      '  FEC_VALORTOTAL_DST = :FEC_VALORTOTAL_DST,'
      '  IMPRESSORA_LPP = :IMPRESSORA_LPP,'
      '  IMPRESSORA_PULO = :IMPRESSORA_PULO,'
      '  INDICE = :INDICE,'
      '  LOCALDUPLICATAS = :LOCALDUPLICATAS,'
      '  MODELO = :MODELO,'
      '  NF_GRAFICA = :NF_GRAFICA,'
      '  NF_GRAFICA2 = :NF_GRAFICA2,'
      '  NFSERV_GRAFICA = :NFSERV_GRAFICA,'
      '  NOTA_CFOP_ALT = :NOTA_CFOP_ALT,'
      '  NOTA_CFOP_DST = :NOTA_CFOP_DST,'
      '  NOTA_CNDPG_ALT = :NOTA_CNDPG_ALT,'
      '  NOTA_CNDPG_DST = :NOTA_CNDPG_DST,'
      '  NOTA_DESCONTO_ALT = :NOTA_DESCONTO_ALT,'
      '  NOTA_DESCONTO_ALT2 = :NOTA_DESCONTO_ALT2,'
      '  NOTA_DESCONTO_DST = :NOTA_DESCONTO_DST,'
      '  NOTA_DESCONTO_DST2 = :NOTA_DESCONTO_DST2,'
      '  NOTA_DUPLICA_NUMERO = :NOTA_DUPLICA_NUMERO,'
      '  NOTA_ECF_ALT = :NOTA_ECF_ALT,'
      '  NOTA_ECF_DST = :NOTA_ECF_DST,'
      '  NOTA_EMPRESA_ALT = :NOTA_EMPRESA_ALT,'
      '  NOTA_EMPRESA_DST = :NOTA_EMPRESA_DST,'
      '  NOTA_EMPRESA_UF_ALT = :NOTA_EMPRESA_UF_ALT,'
      '  NOTA_EMPRESA_UF_DST = :NOTA_EMPRESA_UF_DST,'
      '  NOTA_ENT_SAI_ALT = :NOTA_ENT_SAI_ALT,'
      '  NOTA_ENT_SAI_DST = :NOTA_ENT_SAI_DST,'
      '  NOTA_INDCOMPL_DST = :NOTA_INDCOMPL_DST,'
      '  NOTA_INFCOMPL_ALT = :NOTA_INFCOMPL_ALT,'
      '  NOTA_INSS_ALT = :NOTA_INSS_ALT,'
      '  NOTA_INSS_DST = :NOTA_INSS_DST,'
      '  NOTA_IRRF_ALT = :NOTA_IRRF_ALT,'
      '  NOTA_IRRF_DST = :NOTA_IRRF_DST,'
      '  NOTA_ISS_SUBST_ALT = :NOTA_ISS_SUBST_ALT,'
      '  NOTA_ISS_SUBST_DST = :NOTA_ISS_SUBST_DST,'
      '  NOTA_MSGNAT_ALT = :NOTA_MSGNAT_ALT,'
      '  NOTA_MSGNAT_DST = :NOTA_MSGNAT_DST,'
      '  NOTA_NATUREZA_ALT = :NOTA_NATUREZA_ALT,'
      '  NOTA_NATUREZA_DST = :NOTA_NATUREZA_DST,'
      '  NOTA_NUM_ALT = :NOTA_NUM_ALT,'
      '  NOTA_NUM_DST = :NOTA_NUM_DST,'
      '  NOTA_NUMRDP_ALT = :NOTA_NUMRDP_ALT,'
      '  NOTA_NUMRDP_DST = :NOTA_NUMRDP_DST,'
      '  NOTA_NUMRECIBO_ALT = :NOTA_NUMRECIBO_ALT,'
      '  NOTA_NUMRECIBO_DST = :NOTA_NUMRECIBO_DST,'
      '  NOTA_PIS_ALT = :NOTA_PIS_ALT,'
      '  NOTA_PIS_DST = :NOTA_PIS_DST,'
      '  NOTA_SUBS_TRIB_ALT = :NOTA_SUBS_TRIB_ALT,'
      '  NOTA_SUBS_TRIB_DST = :NOTA_SUBS_TRIB_DST,'
      '  NOTA_VENDEDOR_ALT = :NOTA_VENDEDOR_ALT,'
      '  NOTA_VENDEDOR_DST = :NOTA_VENDEDOR_DST,'
      '  NUMERODELINHASDANOTA = :NUMERODELINHASDANOTA,'
      '  OBS_ALT = :OBS_ALT,'
      '  OBS_DST = :OBS_DST,'
      '  PORTA_IMPRESSAO = :PORTA_IMPRESSAO,'
      '  PROD_CF_ALT = :PROD_CF_ALT,'
      '  PROD_CF_DST = :PROD_CF_DST,'
      '  PROD_COD_ALT = :PROD_COD_ALT,'
      '  PROD_COD_DST = :PROD_COD_DST,'
      '  PROD_DESC_ALT = :PROD_DESC_ALT,'
      '  PROD_DESC_DST = :PROD_DESC_DST,'
      '  PROD_ICMS_ALT = :PROD_ICMS_ALT,'
      '  PROD_ICMS_DST = :PROD_ICMS_DST,'
      '  PROD_IPI_ALT = :PROD_IPI_ALT,'
      '  PROD_IPI_DST = :PROD_IPI_DST,'
      '  PROD_LOTE_ALT = :PROD_LOTE_ALT,'
      '  PROD_LOTE_DST = :PROD_LOTE_DST,'
      '  PROD_LOTE_VALIDADE_ALT = :PROD_LOTE_VALIDADE_ALT,'
      '  PROD_LOTE_VALIDADE_DST = :PROD_LOTE_VALIDADE_DST,'
      '  PROD_MARCA_ALT = :PROD_MARCA_ALT,'
      '  PROD_MARCA_DST = :PROD_MARCA_DST,'
      '  PROD_PROD_ALT = :PROD_PROD_ALT,'
      '  PROD_PROD_DST = :PROD_PROD_DST,'
      '  PROD_QNTD_UNID_ALT = :PROD_QNTD_UNID_ALT,'
      '  PROD_QNTD_UNID_DST = :PROD_QNTD_UNID_DST,'
      '  PROD_QUANT_ALT = :PROD_QUANT_ALT,'
      '  PROD_QUANT_DST = :PROD_QUANT_DST,'
      '  PROD_SITTRIB_ALT = :PROD_SITTRIB_ALT,'
      '  PROD_SITTRIB_DST = :PROD_SITTRIB_DST,'
      '  PROD_TAM_NOME = :PROD_TAM_NOME,'
      '  PROD_TIPO_UNID_ALT = :PROD_TIPO_UNID_ALT,'
      '  PROD_TIPO_UNID_DST = :PROD_TIPO_UNID_DST,'
      '  PROD_UNIDADE_ALT = :PROD_UNIDADE_ALT,'
      '  PROD_UNIDADE_DST = :PROD_UNIDADE_DST,'
      '  PROD_VALORIPI_ALT = :PROD_VALORIPI_ALT,'
      '  PROD_VALORIPI_DST = :PROD_VALORIPI_DST,'
      '  PROD_VALORTOT_ALT = :PROD_VALORTOT_ALT,'
      '  PROD_VALORTOT_DST = :PROD_VALORTOT_DST,'
      '  PROD_VALORUNIT_ALT = :PROD_VALORUNIT_ALT,'
      '  PROD_VALORUNIT_DST = :PROD_VALORUNIT_DST,'
      '  PRODUTOSNOTA = :PRODUTOSNOTA,'
      '  SERIE = :SERIE,'
      '  TIPO = :TIPO,'
      '  TIPO_DOCTO = :TIPO_DOCTO,'
      '  TRANS_CGCCPF_ALT = :TRANS_CGCCPF_ALT,'
      '  TRANS_CGCCPF_DST = :TRANS_CGCCPF_DST,'
      '  TRANS_CID_ALT = :TRANS_CID_ALT,'
      '  TRANS_CID_DST = :TRANS_CID_DST,'
      '  TRANS_END_ALT = :TRANS_END_ALT,'
      '  TRANS_END_DST = :TRANS_END_DST,'
      '  TRANS_ESPECIE_ALT = :TRANS_ESPECIE_ALT,'
      '  TRANS_ESPECIE_DST = :TRANS_ESPECIE_DST,'
      '  TRANS_FRETECONTA_ALT = :TRANS_FRETECONTA_ALT,'
      '  TRANS_FRETECONTA_DST = :TRANS_FRETECONTA_DST,'
      '  TRANS_INSCEST_ALT = :TRANS_INSCEST_ALT,'
      '  TRANS_INSCEST_DST = :TRANS_INSCEST_DST,'
      '  TRANS_MARCA_ALT = :TRANS_MARCA_ALT,'
      '  TRANS_MARCA_DST = :TRANS_MARCA_DST,'
      '  TRANS_NOME_ALT = :TRANS_NOME_ALT,'
      '  TRANS_NOME_DST = :TRANS_NOME_DST,'
      '  TRANS_NUMERO_ALT = :TRANS_NUMERO_ALT,'
      '  TRANS_NUMERO_DST = :TRANS_NUMERO_DST,'
      '  TRANS_OBS_ALT = :TRANS_OBS_ALT,'
      '  TRANS_OBS_DST = :TRANS_OBS_DST,'
      '  TRANS_PESBRT_DST = :TRANS_PESBRT_DST,'
      '  TRANS_PESOBRT_ALT = :TRANS_PESOBRT_ALT,'
      '  TRANS_PESOLIQ_ALT = :TRANS_PESOLIQ_ALT,'
      '  TRANS_PESOLIQ_DST = :TRANS_PESOLIQ_DST,'
      '  TRANS_PLACA_ALT = :TRANS_PLACA_ALT,'
      '  TRANS_PLACA_DST = :TRANS_PLACA_DST,'
      '  TRANS_QUANTIDADE_ALT = :TRANS_QUANTIDADE_ALT,'
      '  TRANS_QUANTIDADE_DST = :TRANS_QUANTIDADE_DST,'
      '  TRANS_UF_ALT = :TRANS_UF_ALT,'
      '  TRANS_UF_DST = :TRANS_UF_DST,'
      '  TRANS_UFVEI_DST = :TRANS_UFVEI_DST,'
      '  TRANS_UFVEIALT = :TRANS_UFVEIALT,'
      '  ULTIMO_NUMERO = :ULTIMO_NUMERO'
      'where'
      '  INDICE = :OLD_INDICE')
    Left = 368
    Top = 96
    object SerieCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_SERIENF"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SerieSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"SIS_SERIENF"."SERIE"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object SerieULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      Origin = '"SIS_SERIENF"."ULTIMO_NUMERO"'
    end
    object SerieTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"SIS_SERIENF"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object SerieNOTA_NUM_DST: TIntegerField
      FieldName = 'NOTA_NUM_DST'
      Origin = '"SIS_SERIENF"."NOTA_NUM_DST"'
    end
    object SerieNOTA_NUM_ALT: TIntegerField
      FieldName = 'NOTA_NUM_ALT'
      Origin = '"SIS_SERIENF"."NOTA_NUM_ALT"'
    end
    object SerieNOTA_NUMRECIBO_DST: TIntegerField
      FieldName = 'NOTA_NUMRECIBO_DST'
      Origin = '"SIS_SERIENF"."NOTA_NUMRECIBO_DST"'
    end
    object SerieNOTA_NUMRECIBO_ALT: TIntegerField
      FieldName = 'NOTA_NUMRECIBO_ALT'
      Origin = '"SIS_SERIENF"."NOTA_NUMRECIBO_ALT"'
    end
    object SerieNOTA_ENT_SAI_DST: TIntegerField
      FieldName = 'NOTA_ENT_SAI_DST'
      Origin = '"SIS_SERIENF"."NOTA_ENT_SAI_DST"'
    end
    object SerieNOTA_ENT_SAI_ALT: TIntegerField
      FieldName = 'NOTA_ENT_SAI_ALT'
      Origin = '"SIS_SERIENF"."NOTA_ENT_SAI_ALT"'
    end
    object SerieNOTA_NATUREZA_DST: TIntegerField
      FieldName = 'NOTA_NATUREZA_DST'
      Origin = '"SIS_SERIENF"."NOTA_NATUREZA_DST"'
    end
    object SerieNOTA_NATUREZA_ALT: TIntegerField
      FieldName = 'NOTA_NATUREZA_ALT'
      Origin = '"SIS_SERIENF"."NOTA_NATUREZA_ALT"'
    end
    object SerieNOTA_CFOP_DST: TIntegerField
      FieldName = 'NOTA_CFOP_DST'
      Origin = '"SIS_SERIENF"."NOTA_CFOP_DST"'
    end
    object SerieNOTA_CFOP_ALT: TIntegerField
      FieldName = 'NOTA_CFOP_ALT'
      Origin = '"SIS_SERIENF"."NOTA_CFOP_ALT"'
    end
    object SerieNOTA_SUBS_TRIB_DST: TIntegerField
      FieldName = 'NOTA_SUBS_TRIB_DST'
      Origin = '"SIS_SERIENF"."NOTA_SUBS_TRIB_DST"'
    end
    object SerieNOTA_SUBS_TRIB_ALT: TIntegerField
      FieldName = 'NOTA_SUBS_TRIB_ALT'
      Origin = '"SIS_SERIENF"."NOTA_SUBS_TRIB_ALT"'
    end
    object SerieNOTA_CNDPG_DST: TIntegerField
      FieldName = 'NOTA_CNDPG_DST'
      Origin = '"SIS_SERIENF"."NOTA_CNDPG_DST"'
    end
    object SerieNOTA_CNDPG_ALT: TIntegerField
      FieldName = 'NOTA_CNDPG_ALT'
      Origin = '"SIS_SERIENF"."NOTA_CNDPG_ALT"'
    end
    object SerieCLI_NOME_DST: TIntegerField
      FieldName = 'CLI_NOME_DST'
      Origin = '"SIS_SERIENF"."CLI_NOME_DST"'
    end
    object SerieCLI_NOME_ALT: TIntegerField
      FieldName = 'CLI_NOME_ALT'
      Origin = '"SIS_SERIENF"."CLI_NOME_ALT"'
    end
    object SerieCLI_CGCCPF_DST: TIntegerField
      FieldName = 'CLI_CGCCPF_DST'
      Origin = '"SIS_SERIENF"."CLI_CGCCPF_DST"'
    end
    object SerieCLI_CGCCPF_ALT: TIntegerField
      FieldName = 'CLI_CGCCPF_ALT'
      Origin = '"SIS_SERIENF"."CLI_CGCCPF_ALT"'
    end
    object SerieCLI_END_DST: TIntegerField
      FieldName = 'CLI_END_DST'
      Origin = '"SIS_SERIENF"."CLI_END_DST"'
    end
    object SerieCLI_END_ALT: TIntegerField
      FieldName = 'CLI_END_ALT'
      Origin = '"SIS_SERIENF"."CLI_END_ALT"'
    end
    object SerieCLI_BAIRRO_DST: TIntegerField
      FieldName = 'CLI_BAIRRO_DST'
      Origin = '"SIS_SERIENF"."CLI_BAIRRO_DST"'
    end
    object SerieCLI_BAIRRO_ALT: TIntegerField
      FieldName = 'CLI_BAIRRO_ALT'
      Origin = '"SIS_SERIENF"."CLI_BAIRRO_ALT"'
    end
    object SerieCLI_CEP_DST: TIntegerField
      FieldName = 'CLI_CEP_DST'
      Origin = '"SIS_SERIENF"."CLI_CEP_DST"'
    end
    object SerieCLI_CEP_ALT: TIntegerField
      FieldName = 'CLI_CEP_ALT'
      Origin = '"SIS_SERIENF"."CLI_CEP_ALT"'
    end
    object SerieCLI_CID_DST: TIntegerField
      FieldName = 'CLI_CID_DST'
      Origin = '"SIS_SERIENF"."CLI_CID_DST"'
    end
    object SerieCLI_CID_ALT: TIntegerField
      FieldName = 'CLI_CID_ALT'
      Origin = '"SIS_SERIENF"."CLI_CID_ALT"'
    end
    object SerieCLI_FONE_DST: TIntegerField
      FieldName = 'CLI_FONE_DST'
      Origin = '"SIS_SERIENF"."CLI_FONE_DST"'
    end
    object SerieCLI_FONE_ALT: TIntegerField
      FieldName = 'CLI_FONE_ALT'
      Origin = '"SIS_SERIENF"."CLI_FONE_ALT"'
    end
    object SerieCLI_FAX_DST: TIntegerField
      FieldName = 'CLI_FAX_DST'
      Origin = '"SIS_SERIENF"."CLI_FAX_DST"'
    end
    object SerieCLI_FAX_ALT: TIntegerField
      FieldName = 'CLI_FAX_ALT'
      Origin = '"SIS_SERIENF"."CLI_FAX_ALT"'
    end
    object SerieCLI_UF_DST: TIntegerField
      FieldName = 'CLI_UF_DST'
      Origin = '"SIS_SERIENF"."CLI_UF_DST"'
    end
    object SerieCLI_UF_ALT: TIntegerField
      FieldName = 'CLI_UF_ALT'
      Origin = '"SIS_SERIENF"."CLI_UF_ALT"'
    end
    object SerieCLI_INSCEST_DST: TIntegerField
      FieldName = 'CLI_INSCEST_DST'
      Origin = '"SIS_SERIENF"."CLI_INSCEST_DST"'
    end
    object SerieCLI_INSCEST_ALT: TIntegerField
      FieldName = 'CLI_INSCEST_ALT'
      Origin = '"SIS_SERIENF"."CLI_INSCEST_ALT"'
    end
    object SerieCLI_DATEMIS_DST: TIntegerField
      FieldName = 'CLI_DATEMIS_DST'
      Origin = '"SIS_SERIENF"."CLI_DATEMIS_DST"'
    end
    object SerieCLI_DATEMIS_ALT: TIntegerField
      FieldName = 'CLI_DATEMIS_ALT'
      Origin = '"SIS_SERIENF"."CLI_DATEMIS_ALT"'
    end
    object SerieCLI_DATENTSAI_DST: TIntegerField
      FieldName = 'CLI_DATENTSAI_DST'
      Origin = '"SIS_SERIENF"."CLI_DATENTSAI_DST"'
    end
    object SerieCLI_DATENTSAI_ALT: TIntegerField
      FieldName = 'CLI_DATENTSAI_ALT'
      Origin = '"SIS_SERIENF"."CLI_DATENTSAI_ALT"'
    end
    object SerieCLI_HORASAI_DST: TIntegerField
      FieldName = 'CLI_HORASAI_DST'
      Origin = '"SIS_SERIENF"."CLI_HORASAI_DST"'
    end
    object SerieCLI_HORASAI_ALT: TIntegerField
      FieldName = 'CLI_HORASAI_ALT'
      Origin = '"SIS_SERIENF"."CLI_HORASAI_ALT"'
    end
    object SerieCLI_PEDNUM_DST: TIntegerField
      FieldName = 'CLI_PEDNUM_DST'
      Origin = '"SIS_SERIENF"."CLI_PEDNUM_DST"'
    end
    object SerieCLI_PEDNUM_ALT: TIntegerField
      FieldName = 'CLI_PEDNUM_ALT'
      Origin = '"SIS_SERIENF"."CLI_PEDNUM_ALT"'
    end
    object SerieCLI_INSCMUN_DST: TIntegerField
      FieldName = 'CLI_INSCMUN_DST'
      Origin = '"SIS_SERIENF"."CLI_INSCMUN_DST"'
    end
    object SerieCLI_INSCMUN_ALT: TIntegerField
      FieldName = 'CLI_INSCMUN_ALT'
      Origin = '"SIS_SERIENF"."CLI_INSCMUN_ALT"'
    end
    object SerieCLI_DUPLNUM_DST: TIntegerField
      FieldName = 'CLI_DUPLNUM_DST'
      Origin = '"SIS_SERIENF"."CLI_DUPLNUM_DST"'
    end
    object SerieCLI_DUPLNUM_ALT: TIntegerField
      FieldName = 'CLI_DUPLNUM_ALT'
      Origin = '"SIS_SERIENF"."CLI_DUPLNUM_ALT"'
    end
    object SerieCLI_DUPLVENC_DST: TIntegerField
      FieldName = 'CLI_DUPLVENC_DST'
      Origin = '"SIS_SERIENF"."CLI_DUPLVENC_DST"'
    end
    object SerieCLI_DUPLVENC_ALT: TIntegerField
      FieldName = 'CLI_DUPLVENC_ALT'
      Origin = '"SIS_SERIENF"."CLI_DUPLVENC_ALT"'
    end
    object SerieCLI_DUPLVALOR_DST: TIntegerField
      FieldName = 'CLI_DUPLVALOR_DST'
      Origin = '"SIS_SERIENF"."CLI_DUPLVALOR_DST"'
    end
    object SerieCLI_DUPLVALOR_ALT: TIntegerField
      FieldName = 'CLI_DUPLVALOR_ALT'
      Origin = '"SIS_SERIENF"."CLI_DUPLVALOR_ALT"'
    end
    object SeriePROD_COD_DST: TIntegerField
      FieldName = 'PROD_COD_DST'
      Origin = '"SIS_SERIENF"."PROD_COD_DST"'
    end
    object SeriePROD_COD_ALT: TIntegerField
      FieldName = 'PROD_COD_ALT'
      Origin = '"SIS_SERIENF"."PROD_COD_ALT"'
    end
    object SeriePROD_PROD_DST: TIntegerField
      FieldName = 'PROD_PROD_DST'
      Origin = '"SIS_SERIENF"."PROD_PROD_DST"'
    end
    object SeriePROD_PROD_ALT: TIntegerField
      FieldName = 'PROD_PROD_ALT'
      Origin = '"SIS_SERIENF"."PROD_PROD_ALT"'
    end
    object SeriePROD_CF_DST: TIntegerField
      FieldName = 'PROD_CF_DST'
      Origin = '"SIS_SERIENF"."PROD_CF_DST"'
    end
    object SeriePROD_CF_ALT: TIntegerField
      FieldName = 'PROD_CF_ALT'
      Origin = '"SIS_SERIENF"."PROD_CF_ALT"'
    end
    object SeriePROD_SITTRIB_DST: TIntegerField
      FieldName = 'PROD_SITTRIB_DST'
      Origin = '"SIS_SERIENF"."PROD_SITTRIB_DST"'
    end
    object SeriePROD_SITTRIB_ALT: TIntegerField
      FieldName = 'PROD_SITTRIB_ALT'
      Origin = '"SIS_SERIENF"."PROD_SITTRIB_ALT"'
    end
    object SeriePROD_UNIDADE_DST: TIntegerField
      FieldName = 'PROD_UNIDADE_DST'
      Origin = '"SIS_SERIENF"."PROD_UNIDADE_DST"'
    end
    object SeriePROD_UNIDADE_ALT: TIntegerField
      FieldName = 'PROD_UNIDADE_ALT'
      Origin = '"SIS_SERIENF"."PROD_UNIDADE_ALT"'
    end
    object SeriePROD_QUANT_DST: TIntegerField
      FieldName = 'PROD_QUANT_DST'
      Origin = '"SIS_SERIENF"."PROD_QUANT_DST"'
    end
    object SeriePROD_QUANT_ALT: TIntegerField
      FieldName = 'PROD_QUANT_ALT'
      Origin = '"SIS_SERIENF"."PROD_QUANT_ALT"'
    end
    object SeriePROD_VALORUNIT_DST: TIntegerField
      FieldName = 'PROD_VALORUNIT_DST'
      Origin = '"SIS_SERIENF"."PROD_VALORUNIT_DST"'
    end
    object SeriePROD_VALORUNIT_ALT: TIntegerField
      FieldName = 'PROD_VALORUNIT_ALT'
      Origin = '"SIS_SERIENF"."PROD_VALORUNIT_ALT"'
    end
    object SeriePROD_VALORTOT_DST: TIntegerField
      FieldName = 'PROD_VALORTOT_DST'
      Origin = '"SIS_SERIENF"."PROD_VALORTOT_DST"'
    end
    object SeriePROD_VALORTOT_ALT: TIntegerField
      FieldName = 'PROD_VALORTOT_ALT'
      Origin = '"SIS_SERIENF"."PROD_VALORTOT_ALT"'
    end
    object SeriePROD_ICMS_DST: TIntegerField
      FieldName = 'PROD_ICMS_DST'
      Origin = '"SIS_SERIENF"."PROD_ICMS_DST"'
    end
    object SeriePROD_ICMS_ALT: TIntegerField
      FieldName = 'PROD_ICMS_ALT'
      Origin = '"SIS_SERIENF"."PROD_ICMS_ALT"'
    end
    object SeriePROD_IPI_DST: TIntegerField
      FieldName = 'PROD_IPI_DST'
      Origin = '"SIS_SERIENF"."PROD_IPI_DST"'
    end
    object SeriePROD_IPI_ALT: TIntegerField
      FieldName = 'PROD_IPI_ALT'
      Origin = '"SIS_SERIENF"."PROD_IPI_ALT"'
    end
    object SeriePROD_VALORIPI_DST: TIntegerField
      FieldName = 'PROD_VALORIPI_DST'
      Origin = '"SIS_SERIENF"."PROD_VALORIPI_DST"'
    end
    object SeriePROD_VALORIPI_ALT: TIntegerField
      FieldName = 'PROD_VALORIPI_ALT'
      Origin = '"SIS_SERIENF"."PROD_VALORIPI_ALT"'
    end
    object SerieFEC_BASEICMS_DST: TIntegerField
      FieldName = 'FEC_BASEICMS_DST'
      Origin = '"SIS_SERIENF"."FEC_BASEICMS_DST"'
    end
    object SerieFEC_BASEICMS_ALT: TIntegerField
      FieldName = 'FEC_BASEICMS_ALT'
      Origin = '"SIS_SERIENF"."FEC_BASEICMS_ALT"'
    end
    object SerieFEC_VALORFRETE_DST: TIntegerField
      FieldName = 'FEC_VALORFRETE_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORFRETE_DST"'
    end
    object SerieFEC_VALORFRETE_ALT: TIntegerField
      FieldName = 'FEC_VALORFRETE_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORFRETE_ALT"'
    end
    object SerieFEC_VALORICMS_DST: TIntegerField
      FieldName = 'FEC_VALORICMS_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORICMS_DST"'
    end
    object SerieFEC_VALORICMS_ALT: TIntegerField
      FieldName = 'FEC_VALORICMS_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORICMS_ALT"'
    end
    object SerieFEC_VALORSEGURO_DST: TIntegerField
      FieldName = 'FEC_VALORSEGURO_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORSEGURO_DST"'
    end
    object SerieFEC_VALORSEGURO_ALT: TIntegerField
      FieldName = 'FEC_VALORSEGURO_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORSEGURO_ALT"'
    end
    object SerieFEC_BASECALCICMS_DST: TIntegerField
      FieldName = 'FEC_BASECALCICMS_DST'
      Origin = '"SIS_SERIENF"."FEC_BASECALCICMS_DST"'
    end
    object SerieFEC_BASECALCICMS_ALT: TIntegerField
      FieldName = 'FEC_BASECALCICMS_ALT'
      Origin = '"SIS_SERIENF"."FEC_BASECALCICMS_ALT"'
    end
    object SerieFEC_DESPESAS_DST: TIntegerField
      FieldName = 'FEC_DESPESAS_DST'
      Origin = '"SIS_SERIENF"."FEC_DESPESAS_DST"'
    end
    object SerieFEC_DESPESAS_ALT: TIntegerField
      FieldName = 'FEC_DESPESAS_ALT'
      Origin = '"SIS_SERIENF"."FEC_DESPESAS_ALT"'
    end
    object SerieFEC_VALORICMSSUB_DST: TIntegerField
      FieldName = 'FEC_VALORICMSSUB_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORICMSSUB_DST"'
    end
    object SerieFEC_VALORICMSSUB_ALT: TIntegerField
      FieldName = 'FEC_VALORICMSSUB_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORICMSSUB_ALT"'
    end
    object SerieFEC_IPI_DST: TIntegerField
      FieldName = 'FEC_IPI_DST'
      Origin = '"SIS_SERIENF"."FEC_IPI_DST"'
    end
    object SerieFEC_IPI_ALT: TIntegerField
      FieldName = 'FEC_IPI_ALT'
      Origin = '"SIS_SERIENF"."FEC_IPI_ALT"'
    end
    object SerieFEC_VALORTOTAL_DST: TIntegerField
      FieldName = 'FEC_VALORTOTAL_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORTOTAL_DST"'
    end
    object SerieFEC_ISS_DST: TIntegerField
      FieldName = 'FEC_ISS_DST'
      Origin = '"SIS_SERIENF"."FEC_ISS_DST"'
    end
    object SerieFEC_VALORTOTAL_ALT: TIntegerField
      FieldName = 'FEC_VALORTOTAL_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORTOTAL_ALT"'
    end
    object SerieFEC_ISS_ALT: TIntegerField
      FieldName = 'FEC_ISS_ALT'
      Origin = '"SIS_SERIENF"."FEC_ISS_ALT"'
    end
    object SerieFEC_VALORNOTA_DST: TIntegerField
      FieldName = 'FEC_VALORNOTA_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORNOTA_DST"'
    end
    object SerieFEC_VALORNOTA_ALT: TIntegerField
      FieldName = 'FEC_VALORNOTA_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORNOTA_ALT"'
    end
    object SerieTRANS_NOME_DST: TIntegerField
      FieldName = 'TRANS_NOME_DST'
      Origin = '"SIS_SERIENF"."TRANS_NOME_DST"'
    end
    object SerieTRANS_NOME_ALT: TIntegerField
      FieldName = 'TRANS_NOME_ALT'
      Origin = '"SIS_SERIENF"."TRANS_NOME_ALT"'
    end
    object SerieTRANS_END_DST: TIntegerField
      FieldName = 'TRANS_END_DST'
      Origin = '"SIS_SERIENF"."TRANS_END_DST"'
    end
    object SerieTRANS_END_ALT: TIntegerField
      FieldName = 'TRANS_END_ALT'
      Origin = '"SIS_SERIENF"."TRANS_END_ALT"'
    end
    object SerieTRANS_QUANTIDADE_DST: TIntegerField
      FieldName = 'TRANS_QUANTIDADE_DST'
      Origin = '"SIS_SERIENF"."TRANS_QUANTIDADE_DST"'
    end
    object SerieTRANS_QUANTIDADE_ALT: TIntegerField
      FieldName = 'TRANS_QUANTIDADE_ALT'
      Origin = '"SIS_SERIENF"."TRANS_QUANTIDADE_ALT"'
    end
    object SerieTRANS_ESPECIE_DST: TIntegerField
      FieldName = 'TRANS_ESPECIE_DST'
      Origin = '"SIS_SERIENF"."TRANS_ESPECIE_DST"'
    end
    object SerieTRANS_ESPECIE_ALT: TIntegerField
      FieldName = 'TRANS_ESPECIE_ALT'
      Origin = '"SIS_SERIENF"."TRANS_ESPECIE_ALT"'
    end
    object SerieTRANS_MARCA_DST: TIntegerField
      FieldName = 'TRANS_MARCA_DST'
      Origin = '"SIS_SERIENF"."TRANS_MARCA_DST"'
    end
    object SerieTRANS_MARCA_ALT: TIntegerField
      FieldName = 'TRANS_MARCA_ALT'
      Origin = '"SIS_SERIENF"."TRANS_MARCA_ALT"'
    end
    object SerieTRANS_FRETECONTA_DST: TIntegerField
      FieldName = 'TRANS_FRETECONTA_DST'
      Origin = '"SIS_SERIENF"."TRANS_FRETECONTA_DST"'
    end
    object SerieTRANS_FRETECONTA_ALT: TIntegerField
      FieldName = 'TRANS_FRETECONTA_ALT'
      Origin = '"SIS_SERIENF"."TRANS_FRETECONTA_ALT"'
    end
    object SerieTRANS_CID_DST: TIntegerField
      FieldName = 'TRANS_CID_DST'
      Origin = '"SIS_SERIENF"."TRANS_CID_DST"'
    end
    object SerieTRANS_CID_ALT: TIntegerField
      FieldName = 'TRANS_CID_ALT'
      Origin = '"SIS_SERIENF"."TRANS_CID_ALT"'
    end
    object SerieTRANS_NUMERO_DST: TIntegerField
      FieldName = 'TRANS_NUMERO_DST'
      Origin = '"SIS_SERIENF"."TRANS_NUMERO_DST"'
    end
    object SerieTRANS_NUMERO_ALT: TIntegerField
      FieldName = 'TRANS_NUMERO_ALT'
      Origin = '"SIS_SERIENF"."TRANS_NUMERO_ALT"'
    end
    object SerieTRANS_PLACA_DST: TIntegerField
      FieldName = 'TRANS_PLACA_DST'
      Origin = '"SIS_SERIENF"."TRANS_PLACA_DST"'
    end
    object SerieTRANS_PLACA_ALT: TIntegerField
      FieldName = 'TRANS_PLACA_ALT'
      Origin = '"SIS_SERIENF"."TRANS_PLACA_ALT"'
    end
    object SerieTRANS_UFVEI_DST: TIntegerField
      FieldName = 'TRANS_UFVEI_DST'
      Origin = '"SIS_SERIENF"."TRANS_UFVEI_DST"'
    end
    object SerieTRANS_UFVEIALT: TIntegerField
      FieldName = 'TRANS_UFVEIALT'
      Origin = '"SIS_SERIENF"."TRANS_UFVEIALT"'
    end
    object SerieTRANS_UF_DST: TIntegerField
      FieldName = 'TRANS_UF_DST'
      Origin = '"SIS_SERIENF"."TRANS_UF_DST"'
    end
    object SerieTRANS_UF_ALT: TIntegerField
      FieldName = 'TRANS_UF_ALT'
      Origin = '"SIS_SERIENF"."TRANS_UF_ALT"'
    end
    object SerieTRANS_CGCCPF_DST: TIntegerField
      FieldName = 'TRANS_CGCCPF_DST'
      Origin = '"SIS_SERIENF"."TRANS_CGCCPF_DST"'
    end
    object SerieTRANS_CGCCPF_ALT: TIntegerField
      FieldName = 'TRANS_CGCCPF_ALT'
      Origin = '"SIS_SERIENF"."TRANS_CGCCPF_ALT"'
    end
    object SerieTRANS_INSCEST_DST: TIntegerField
      FieldName = 'TRANS_INSCEST_DST'
      Origin = '"SIS_SERIENF"."TRANS_INSCEST_DST"'
    end
    object SerieTRANS_INSCEST_ALT: TIntegerField
      FieldName = 'TRANS_INSCEST_ALT'
      Origin = '"SIS_SERIENF"."TRANS_INSCEST_ALT"'
    end
    object SerieTRANS_PESBRT_DST: TIntegerField
      FieldName = 'TRANS_PESBRT_DST'
      Origin = '"SIS_SERIENF"."TRANS_PESBRT_DST"'
    end
    object SerieTRANS_PESOBRT_ALT: TIntegerField
      FieldName = 'TRANS_PESOBRT_ALT'
      Origin = '"SIS_SERIENF"."TRANS_PESOBRT_ALT"'
    end
    object SerieTRANS_PESOLIQ_DST: TIntegerField
      FieldName = 'TRANS_PESOLIQ_DST'
      Origin = '"SIS_SERIENF"."TRANS_PESOLIQ_DST"'
    end
    object SerieTRANS_PESOLIQ_ALT: TIntegerField
      FieldName = 'TRANS_PESOLIQ_ALT'
      Origin = '"SIS_SERIENF"."TRANS_PESOLIQ_ALT"'
    end
    object SerieTRANS_OBS_DST: TIntegerField
      FieldName = 'TRANS_OBS_DST'
      Origin = '"SIS_SERIENF"."TRANS_OBS_DST"'
    end
    object SerieTRANS_OBS_ALT: TIntegerField
      FieldName = 'TRANS_OBS_ALT'
      Origin = '"SIS_SERIENF"."TRANS_OBS_ALT"'
    end
    object SerieIMPRESSORA_PULO: TIntegerField
      FieldName = 'IMPRESSORA_PULO'
      Origin = '"SIS_SERIENF"."IMPRESSORA_PULO"'
    end
    object SerieIMPRESSORA_LPP: TIBStringField
      FieldName = 'IMPRESSORA_LPP'
      Origin = '"SIS_SERIENF"."IMPRESSORA_LPP"'
      Size = 10
    end
    object SeriePRODUTOSNOTA: TIntegerField
      FieldName = 'PRODUTOSNOTA'
      Origin = '"SIS_SERIENF"."PRODUTOSNOTA"'
    end
    object SerieLOCALDUPLICATAS: TIBStringField
      FieldName = 'LOCALDUPLICATAS'
      Origin = '"SIS_SERIENF"."LOCALDUPLICATAS"'
      FixedChar = True
      Size = 1
    end
    object SerieNUMERODELINHASDANOTA: TIntegerField
      FieldName = 'NUMERODELINHASDANOTA'
      Origin = '"SIS_SERIENF"."NUMERODELINHASDANOTA"'
    end
    object SeriePROD_DESC_DST: TIntegerField
      FieldName = 'PROD_DESC_DST'
      Origin = '"SIS_SERIENF"."PROD_DESC_DST"'
    end
    object SeriePROD_DESC_ALT: TIntegerField
      FieldName = 'PROD_DESC_ALT'
      Origin = '"SIS_SERIENF"."PROD_DESC_ALT"'
    end
    object SerieDATA_ANO_ALT: TIntegerField
      FieldName = 'DATA_ANO_ALT'
      Origin = '"SIS_SERIENF"."DATA_ANO_ALT"'
    end
    object SerieDATA_ANO_DST: TIntegerField
      FieldName = 'DATA_ANO_DST'
      Origin = '"SIS_SERIENF"."DATA_ANO_DST"'
    end
    object SerieDATA_DIA_ALT: TIntegerField
      FieldName = 'DATA_DIA_ALT'
      Origin = '"SIS_SERIENF"."DATA_DIA_ALT"'
    end
    object SerieDATA_DIA_DST: TIntegerField
      FieldName = 'DATA_DIA_DST'
      Origin = '"SIS_SERIENF"."DATA_DIA_DST"'
    end
    object SerieDATA_MES_ALT: TIntegerField
      FieldName = 'DATA_MES_ALT'
      Origin = '"SIS_SERIENF"."DATA_MES_ALT"'
    end
    object SerieDATA_MES_DST: TIntegerField
      FieldName = 'DATA_MES_DST'
      Origin = '"SIS_SERIENF"."DATA_MES_DST"'
    end
    object SerieOBS_ALT: TIntegerField
      FieldName = 'OBS_ALT'
      Origin = '"SIS_SERIENF"."OBS_ALT"'
    end
    object SerieOBS_DST: TIntegerField
      FieldName = 'OBS_DST'
      Origin = '"SIS_SERIENF"."OBS_DST"'
    end
    object SerieNOTA_VENDEDOR_DST: TIntegerField
      FieldName = 'NOTA_VENDEDOR_DST'
      Origin = '"SIS_SERIENF"."NOTA_VENDEDOR_DST"'
    end
    object SerieNOTA_VENDEDOR_ALT: TIntegerField
      FieldName = 'NOTA_VENDEDOR_ALT'
      Origin = '"SIS_SERIENF"."NOTA_VENDEDOR_ALT"'
    end
    object SerieNOTA_ECF_DST: TIntegerField
      FieldName = 'NOTA_ECF_DST'
      Origin = '"SIS_SERIENF"."NOTA_ECF_DST"'
    end
    object SerieNOTA_ECF_ALT: TIntegerField
      FieldName = 'NOTA_ECF_ALT'
      Origin = '"SIS_SERIENF"."NOTA_ECF_ALT"'
    end
    object SerieNOTA_DESCONTO_DST: TIntegerField
      FieldName = 'NOTA_DESCONTO_DST'
      Origin = '"SIS_SERIENF"."NOTA_DESCONTO_DST"'
    end
    object SerieNOTA_DESCONTO_ALT: TIntegerField
      FieldName = 'NOTA_DESCONTO_ALT'
      Origin = '"SIS_SERIENF"."NOTA_DESCONTO_ALT"'
    end
    object SerieNOTA_INDCOMPL_DST: TIntegerField
      FieldName = 'NOTA_INDCOMPL_DST'
      Origin = '"SIS_SERIENF"."NOTA_INDCOMPL_DST"'
    end
    object SerieNOTA_INFCOMPL_ALT: TIntegerField
      FieldName = 'NOTA_INFCOMPL_ALT'
      Origin = '"SIS_SERIENF"."NOTA_INFCOMPL_ALT"'
    end
    object SerieCLI_DUPLLARGURA_COLUNA: TIntegerField
      FieldName = 'CLI_DUPLLARGURA_COLUNA'
      Origin = '"SIS_SERIENF"."CLI_DUPLLARGURA_COLUNA"'
    end
    object SerieCLI_DUPLNUM_COLUNA: TIntegerField
      FieldName = 'CLI_DUPLNUM_COLUNA'
      Origin = '"SIS_SERIENF"."CLI_DUPLNUM_COLUNA"'
    end
    object SerieNOTA_MSGNAT_DST: TIntegerField
      FieldName = 'NOTA_MSGNAT_DST'
      Origin = '"SIS_SERIENF"."NOTA_MSGNAT_DST"'
    end
    object SerieNOTA_MSGNAT_ALT: TIntegerField
      FieldName = 'NOTA_MSGNAT_ALT'
      Origin = '"SIS_SERIENF"."NOTA_MSGNAT_ALT"'
    end
    object SerieNOTA_NUMRDP_DST: TIntegerField
      FieldName = 'NOTA_NUMRDP_DST'
      Origin = '"SIS_SERIENF"."NOTA_NUMRDP_DST"'
    end
    object SerieNOTA_NUMRDP_ALT: TIntegerField
      FieldName = 'NOTA_NUMRDP_ALT'
      Origin = '"SIS_SERIENF"."NOTA_NUMRDP_ALT"'
    end
    object SeriePORTA_IMPRESSAO: TIBStringField
      FieldName = 'PORTA_IMPRESSAO'
      Origin = '"SIS_SERIENF"."PORTA_IMPRESSAO"'
      Size = 30
    end
    object SerieNOTA_DESCONTO_ALT2: TIntegerField
      FieldName = 'NOTA_DESCONTO_ALT2'
      Origin = '"SIS_SERIENF"."NOTA_DESCONTO_ALT2"'
    end
    object SerieNOTA_DESCONTO_DST2: TIntegerField
      FieldName = 'NOTA_DESCONTO_DST2'
      Origin = '"SIS_SERIENF"."NOTA_DESCONTO_DST2"'
    end
    object SeriePROD_QNTD_UNID_ALT: TIntegerField
      FieldName = 'PROD_QNTD_UNID_ALT'
      Origin = '"SIS_SERIENF"."PROD_QNTD_UNID_ALT"'
    end
    object SeriePROD_QNTD_UNID_DST: TIntegerField
      FieldName = 'PROD_QNTD_UNID_DST'
      Origin = '"SIS_SERIENF"."PROD_QNTD_UNID_DST"'
    end
    object SeriePROD_TIPO_UNID_ALT: TIntegerField
      FieldName = 'PROD_TIPO_UNID_ALT'
      Origin = '"SIS_SERIENF"."PROD_TIPO_UNID_ALT"'
    end
    object SeriePROD_TIPO_UNID_DST: TIntegerField
      FieldName = 'PROD_TIPO_UNID_DST'
      Origin = '"SIS_SERIENF"."PROD_TIPO_UNID_DST"'
    end
    object SerieMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"SIS_SERIENF"."MODELO"'
      FixedChar = True
      Size = 3
    end
    object SerieNOTA_IRRF_DST: TIntegerField
      FieldName = 'NOTA_IRRF_DST'
      Origin = '"SIS_SERIENF"."NOTA_IRRF_DST"'
    end
    object SerieNOTA_IRRF_ALT: TIntegerField
      FieldName = 'NOTA_IRRF_ALT'
      Origin = '"SIS_SERIENF"."NOTA_IRRF_ALT"'
    end
    object SerieNOTA_INSS_DST: TIntegerField
      FieldName = 'NOTA_INSS_DST'
      Origin = '"SIS_SERIENF"."NOTA_INSS_DST"'
    end
    object SerieNOTA_INSS_ALT: TIntegerField
      FieldName = 'NOTA_INSS_ALT'
      Origin = '"SIS_SERIENF"."NOTA_INSS_ALT"'
    end
    object SerieNOTA_PIS_DST: TIntegerField
      FieldName = 'NOTA_PIS_DST'
      Origin = '"SIS_SERIENF"."NOTA_PIS_DST"'
    end
    object SerieNOTA_PIS_ALT: TIntegerField
      FieldName = 'NOTA_PIS_ALT'
      Origin = '"SIS_SERIENF"."NOTA_PIS_ALT"'
    end
    object SerieNOTA_ISS_SUBST_DST: TIntegerField
      FieldName = 'NOTA_ISS_SUBST_DST'
      Origin = '"SIS_SERIENF"."NOTA_ISS_SUBST_DST"'
    end
    object SerieNOTA_ISS_SUBST_ALT: TIntegerField
      FieldName = 'NOTA_ISS_SUBST_ALT'
      Origin = '"SIS_SERIENF"."NOTA_ISS_SUBST_ALT"'
    end
    object SeriePROD_TAM_NOME: TIntegerField
      FieldName = 'PROD_TAM_NOME'
      Origin = '"SIS_SERIENF"."PROD_TAM_NOME"'
    end
    object SerieCLI_NOME_RODAPE_DST: TIntegerField
      FieldName = 'CLI_NOME_RODAPE_DST'
      Origin = '"SIS_SERIENF"."CLI_NOME_RODAPE_DST"'
    end
    object SerieCLI_NOME_RODAPE_ALT: TIntegerField
      FieldName = 'CLI_NOME_RODAPE_ALT'
      Origin = '"SIS_SERIENF"."CLI_NOME_RODAPE_ALT"'
    end
    object SerieCLI_DATENTSAI_RODAPE_DST: TIntegerField
      FieldName = 'CLI_DATENTSAI_RODAPE_DST'
      Origin = '"SIS_SERIENF"."CLI_DATENTSAI_RODAPE_DST"'
    end
    object SerieCLI_DATENTSAI_RODAPE_ALT: TIntegerField
      FieldName = 'CLI_DATENTSAI_RODAPE_ALT'
      Origin = '"SIS_SERIENF"."CLI_DATENTSAI_RODAPE_ALT"'
    end
    object SerieFEC_VALORNOTA_RODAPE_ALT: TIntegerField
      FieldName = 'FEC_VALORNOTA_RODAPE_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORNOTA_RODAPE_ALT"'
    end
    object SerieFEC_VALORNOTA_RODAPE_DST: TIntegerField
      FieldName = 'FEC_VALORNOTA_RODAPE_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORNOTA_RODAPE_DST"'
    end
    object SerieNOTA_DUPLICA_NUMERO: TIBStringField
      FieldName = 'NOTA_DUPLICA_NUMERO'
      Origin = '"SIS_SERIENF"."NOTA_DUPLICA_NUMERO"'
      FixedChar = True
      Size = 1
    end
    object SerieNF_GRAFICA: TIBStringField
      FieldName = 'NF_GRAFICA'
      Origin = '"SIS_SERIENF"."NF_GRAFICA"'
      FixedChar = True
      Size = 1
    end
    object SerieNOTA_EMPRESA_ALT: TIntegerField
      FieldName = 'NOTA_EMPRESA_ALT'
      Origin = '"SIS_SERIENF"."NOTA_EMPRESA_ALT"'
    end
    object SerieNOTA_EMPRESA_DST: TIntegerField
      FieldName = 'NOTA_EMPRESA_DST'
      Origin = '"SIS_SERIENF"."NOTA_EMPRESA_DST"'
    end
    object SeriePROD_MARCA_ALT: TIntegerField
      FieldName = 'PROD_MARCA_ALT'
      Origin = '"SIS_SERIENF"."PROD_MARCA_ALT"'
    end
    object SeriePROD_MARCA_DST: TIntegerField
      FieldName = 'PROD_MARCA_DST'
      Origin = '"SIS_SERIENF"."PROD_MARCA_DST"'
    end
    object SeriePROD_LOTE_ALT: TIntegerField
      FieldName = 'PROD_LOTE_ALT'
      Origin = '"SIS_SERIENF"."PROD_LOTE_ALT"'
    end
    object SeriePROD_LOTE_DST: TIntegerField
      FieldName = 'PROD_LOTE_DST'
      Origin = '"SIS_SERIENF"."PROD_LOTE_DST"'
    end
    object SerieNOTA_EMPRESA_UF_ALT: TIntegerField
      FieldName = 'NOTA_EMPRESA_UF_ALT'
      Origin = '"SIS_SERIENF"."NOTA_EMPRESA_UF_ALT"'
    end
    object SerieNOTA_EMPRESA_UF_DST: TIntegerField
      FieldName = 'NOTA_EMPRESA_UF_DST'
      Origin = '"SIS_SERIENF"."NOTA_EMPRESA_UF_DST"'
    end
    object SerieCLI_CID_PROP_DST: TIntegerField
      FieldName = 'CLI_CID_PROP_DST'
      Origin = '"SIS_SERIENF"."CLI_CID_PROP_DST"'
    end
    object SerieCLI_CID_PROP_ALT: TIntegerField
      FieldName = 'CLI_CID_PROP_ALT'
      Origin = '"SIS_SERIENF"."CLI_CID_PROP_ALT"'
    end
    object SerieCLI_UF_PROP_DST: TIntegerField
      FieldName = 'CLI_UF_PROP_DST'
      Origin = '"SIS_SERIENF"."CLI_UF_PROP_DST"'
    end
    object SerieCLI_UF_PROP_ALT: TIntegerField
      FieldName = 'CLI_UF_PROP_ALT'
      Origin = '"SIS_SERIENF"."CLI_UF_PROP_ALT"'
    end
    object SeriePROD_LOTE_VALIDADE_ALT: TIntegerField
      FieldName = 'PROD_LOTE_VALIDADE_ALT'
      Origin = '"SIS_SERIENF"."PROD_LOTE_VALIDADE_ALT"'
    end
    object SeriePROD_LOTE_VALIDADE_DST: TIntegerField
      FieldName = 'PROD_LOTE_VALIDADE_DST'
      Origin = '"SIS_SERIENF"."PROD_LOTE_VALIDADE_DST"'
    end
    object SerieCLI_END_PROP_ALT: TIntegerField
      FieldName = 'CLI_END_PROP_ALT'
      Origin = '"SIS_SERIENF"."CLI_END_PROP_ALT"'
    end
    object SerieCLI_END_PROP_DST: TIntegerField
      FieldName = 'CLI_END_PROP_DST'
      Origin = '"SIS_SERIENF"."CLI_END_PROP_DST"'
    end
    object SerieCLI_NOME_PROP_ALT: TIntegerField
      FieldName = 'CLI_NOME_PROP_ALT'
      Origin = '"SIS_SERIENF"."CLI_NOME_PROP_ALT"'
    end
    object SerieCLI_NOME_PROP_DST: TIntegerField
      FieldName = 'CLI_NOME_PROP_DST'
      Origin = '"SIS_SERIENF"."CLI_NOME_PROP_DST"'
    end
    object SerieNFSERV_GRAFICA: TIBStringField
      FieldName = 'NFSERV_GRAFICA'
      Origin = '"SIS_SERIENF"."NFSERV_GRAFICA"'
      FixedChar = True
      Size = 1
    end
    object SerieNF_GRAFICA2: TIBStringField
      FieldName = 'NF_GRAFICA2'
      Origin = '"SIS_SERIENF"."NF_GRAFICA2"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SerieCONFIG_NF_GRAF: TMemoField
      FieldName = 'CONFIG_NF_GRAF'
      Origin = '"SIS_SERIENF"."CONFIG_NF_GRAF"'
      BlobType = ftMemo
      Size = 8
    end
    object SerieINDICE: TIBStringField
      FieldName = 'INDICE'
      Origin = '"SIS_SERIENF"."INDICE"'
    end
    object SerieTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"SIS_SERIENF"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object SerieNFE_IMPRESSAO: TIBStringField
      FieldName = 'NFE_IMPRESSAO'
      Origin = '"SIS_SERIENF"."NFE_IMPRESSAO"'
      FixedChar = True
      Size = 1
    end
  end
  object Funcionarios: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = FuncionariosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    DeleteSQL.Strings = (
      'delete from FIN_FUNCIONARIOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    InsertSQL.Strings = (
      'insert into FIN_FUNCIONARIOS'
      '  (CNPJ, PESSOA_FJ, DT_ADMISSAO, CARGO, CTPS, SERIE, OBS)'
      'values'
      '  (:CNPJ, :PESSOA_FJ, :DT_ADMISSAO, :CARGO, :CTPS, :SERIE, :OBS)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PESSOA_FJ,'
      '  DT_ADMISSAO,'
      '  CARGO,'
      '  CTPS,'
      '  SERIE,'
      '  OBS'
      'from FIN_FUNCIONARIOS '
      'where'
      '  CNPJ = :CNPJ and'
      '  PESSOA_FJ = :PESSOA_FJ')
    SelectSQL.Strings = (
      'SELECT CNPJ, '
      '               PESSOA_FJ, '
      '               DT_ADMISSAO,'
      '               CARGO,'
      '               CTPS,'
      '               SERIE,'
      '               OBS'
      'FROM FIN_FUNCIONARIOS'
      'WHERE CNPJ = :CNPJ '
      '')
    ModifySQL.Strings = (
      'update FIN_FUNCIONARIOS'
      'set'
      '  CNPJ = :CNPJ,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  DT_ADMISSAO = :DT_ADMISSAO,'
      '  CARGO = :CARGO,'
      '  CTPS = :CTPS,'
      '  SERIE = :SERIE,'
      '  OBS = :OBS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    Left = 296
    Top = 192
    object FuncionariosCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FIN_FUNCIONARIOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object FuncionariosPESSOA_FJ: TIntegerField
      Tag = 1
      DisplayLabel = 'Pessoa'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_FUNCIONARIOS"."PESSOA_FJ"'
      Required = True
    end
    object FuncionariosDT_ADMISSAO: TDateTimeField
      Tag = 1
      DisplayLabel = 'Admiss'#227'o'
      FieldName = 'DT_ADMISSAO'
      Origin = '"FIN_FUNCIONARIOS"."DT_ADMISSAO"'
    end
    object FuncionariosCARGO: TIBStringField
      DisplayLabel = 'Cargo'
      FieldName = 'CARGO'
      Origin = '"FIN_FUNCIONARIOS"."CARGO"'
      Size = 50
    end
    object FuncionariosCTPS: TIBStringField
      DisplayLabel = 'Ctps'
      FieldName = 'CTPS'
      Origin = '"FIN_FUNCIONARIOS"."CTPS"'
      Size = 15
    end
    object FuncionariosSERIE: TIBStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = '"FIN_FUNCIONARIOS"."SERIE"'
      Size = 5
    end
    object FuncionariosOBS: TBlobField
      DisplayLabel = 'Obs'
      FieldName = 'OBS'
      Origin = '"FIN_FUNCIONARIOS"."OBS"'
      Size = 8
    end
  end
  object Classificacoes: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    OnNewRecord = ClassificacoesNewRecord
    DeleteSQL.Strings = (
      'delete from GLO_CLASSIFICACAO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into GLO_CLASSIFICACAO'
      '  (CNPJ, CODIGO, NOME, DIG_SENHA)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME, :DIG_SENHA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  DIG_SENHA'
      'from GLO_CLASSIFICACAO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select '
      '        CNPJ, '
      '        CODIGO, '
      '        NOME,'
      '        DIG_SENHA '
      'from GLO_CLASSIFICACAO'
      'Where Cnpj = :CNPJ'
      'order by NOME')
    ModifySQL.Strings = (
      'update GLO_CLASSIFICACAO'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  DIG_SENHA = :DIG_SENHA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 648
    Top = 232
    object ClassificacoesCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"GLO_CLASSIFICACAO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object ClassificacoesCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_CLASSIFICACAO"."CODIGO"'
      Required = True
    end
    object ClassificacoesNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"GLO_CLASSIFICACAO"."NOME"'
      Required = True
      Size = 50
    end
    object ClassificacoesDIG_SENHA: TIBStringField
      DisplayLabel = 'Dig. Senha'
      FieldName = 'DIG_SENHA'
      Origin = '"GLO_CLASSIFICACAO"."DIG_SENHA"'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object SubUnidades: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    OnNewRecord = SubUnidadesNewRecord
    DeleteSQL.Strings = (
      'delete from EST_SUBUNIDADES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SIGLA = :OLD_SIGLA and'
      '  UNIDADES = :OLD_UNIDADES')
    InsertSQL.Strings = (
      'insert into EST_SUBUNIDADES'
      '  (CNPJ, SIGLA, UNIDADES)'
      'values'
      '  (:CNPJ, :SIGLA, :UNIDADES)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  SIGLA,'
      '  UNIDADES'
      'from EST_SUBUNIDADES '
      'where'
      '  CNPJ = :CNPJ and'
      '  SIGLA = :SIGLA and'
      '  UNIDADES = :UNIDADES')
    SelectSQL.Strings = (
      'select CNPJ, SIGLA, UNIDADES from EST_SUBUNIDADES'
      'WHERE CNPJ = :CNPJ AND SIGLA = :SIGLA')
    ModifySQL.Strings = (
      'update EST_SUBUNIDADES'
      'set'
      '  CNPJ = :CNPJ,'
      '  SIGLA = :SIGLA,'
      '  UNIDADES = :UNIDADES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SIGLA = :OLD_SIGLA and'
      '  UNIDADES = :OLD_UNIDADES')
    DataSource = DsSubUnidades
    Left = 368
    Top = 232
    object SubUnidadesCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"EST_SUBUNIDADES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SubUnidadesSIGLA: TIBStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
      Origin = '"EST_SUBUNIDADES"."SIGLA"'
      Required = True
      FixedChar = True
      Size = 4
    end
    object SubUnidadesUNIDADES: TIntegerField
      Tag = 1
      DisplayLabel = 'Undiades'
      FieldName = 'UNIDADES'
      Origin = '"EST_SUBUNIDADES"."UNIDADES"'
      Required = True
    end
  end
  object DsSubUnidades: TDataSource
    AutoEdit = False
    DataSet = Unidades
    Left = 368
    Top = 280
  end
  object BoletoBancario: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = MotoristasAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    OnNewRecord = BoletoBancarioNewRecord
    DeleteSQL.Strings = (
      'delete from SIS_BOLETOBANCARIO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  BANCO = :OLD_BANCO')
    InsertSQL.Strings = (
      'insert into SIS_BOLETOBANCARIO'
      
        '  (CNPJ, ACEITE_ALT, ACEITE_DST, BANCO, DATA_ALT, DATA_DST, DOCU' +
        'MENTO_ALT, '
      
        '   DOCUMENTO_DST, DTPROCESSAMENTO_ALT, DTPROCESSAMENTO_DST, ESPE' +
        'CIE_ALT, '
      
        '   ESPECIE_DST, INSTRUCOES_ALT, INSTRUCOES_DST, SACADO_ALT, SACA' +
        'DO_DST, '
      
        '   VALOR_ALT, VALOR_DST, VENCIMENTO_ALT, VENCIMENTO_DST, TAMANHO' +
        'PAGINA, '
      '   CIDADE_DST, CIDADE_ALT, PORTA_IMPRESSORA, LPP)'
      'values'
      
        '  (:CNPJ, :ACEITE_ALT, :ACEITE_DST, :BANCO, :DATA_ALT, :DATA_DST' +
        ', :DOCUMENTO_ALT, '
      
        '   :DOCUMENTO_DST, :DTPROCESSAMENTO_ALT, :DTPROCESSAMENTO_DST, :' +
        'ESPECIE_ALT, '
      
        '   :ESPECIE_DST, :INSTRUCOES_ALT, :INSTRUCOES_DST, :SACADO_ALT, ' +
        ':SACADO_DST, '
      
        '   :VALOR_ALT, :VALOR_DST, :VENCIMENTO_ALT, :VENCIMENTO_DST, :TA' +
        'MANHOPAGINA, '
      '   :CIDADE_DST, :CIDADE_ALT, :PORTA_IMPRESSORA, :LPP)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  BANCO,'
      '  VENCIMENTO_DST,'
      '  VENCIMENTO_ALT,'
      '  DATA_DST,'
      '  DATA_ALT,'
      '  DOCUMENTO_DST,'
      '  DOCUMENTO_ALT,'
      '  ESPECIE_DST,'
      '  ESPECIE_ALT,'
      '  ACEITE_DST,'
      '  ACEITE_ALT,'
      '  DTPROCESSAMENTO_DST,'
      '  DTPROCESSAMENTO_ALT,'
      '  VALOR_DST,'
      '  VALOR_ALT,'
      '  INSTRUCOES_DST,'
      '  INSTRUCOES_ALT,'
      '  SACADO_DST,'
      '  SACADO_ALT,'
      '  TAMANHOPAGINA,'
      '  CIDADE_DST,'
      '  CIDADE_ALT,'
      '  PORTA_IMPRESSORA,'
      '  LPP'
      'from SIS_BOLETOBANCARIO '
      'where'
      '  CNPJ = :CNPJ and'
      '  BANCO = :BANCO')
    SelectSQL.Strings = (
      'select'
      '         CNPJ, '
      '         ACEITE_ALT, '
      '         ACEITE_DST, '
      '         BANCO, '
      '         DATA_ALT, '
      '         DATA_DST, '
      '         DOCUMENTO_ALT, '
      '         DOCUMENTO_DST, '
      '         DTPROCESSAMENTO_ALT, '
      '         DTPROCESSAMENTO_DST, '
      '         ESPECIE_ALT, '
      '         ESPECIE_DST, '
      '         INSTRUCOES_ALT, '
      '         INSTRUCOES_DST, '
      '         SACADO_ALT, '
      '         SACADO_DST, '
      '         VALOR_ALT, '
      '         VALOR_DST, '
      '         VENCIMENTO_ALT, '
      '         VENCIMENTO_DST,'
      '         TAMANHOPAGINA ,'
      '         CIDADE_DST,'
      '         CIDADE_ALT,'
      '         PORTA_IMPRESSORA,'
      '         LPP '
      'from SIS_BOLETOBANCARIO'
      'WHERE CNPJ = :CNPJ')
    ModifySQL.Strings = (
      'update SIS_BOLETOBANCARIO'
      'set'
      '  CNPJ = :CNPJ,'
      '  ACEITE_ALT = :ACEITE_ALT,'
      '  ACEITE_DST = :ACEITE_DST,'
      '  BANCO = :BANCO,'
      '  DATA_ALT = :DATA_ALT,'
      '  DATA_DST = :DATA_DST,'
      '  DOCUMENTO_ALT = :DOCUMENTO_ALT,'
      '  DOCUMENTO_DST = :DOCUMENTO_DST,'
      '  DTPROCESSAMENTO_ALT = :DTPROCESSAMENTO_ALT,'
      '  DTPROCESSAMENTO_DST = :DTPROCESSAMENTO_DST,'
      '  ESPECIE_ALT = :ESPECIE_ALT,'
      '  ESPECIE_DST = :ESPECIE_DST,'
      '  INSTRUCOES_ALT = :INSTRUCOES_ALT,'
      '  INSTRUCOES_DST = :INSTRUCOES_DST,'
      '  SACADO_ALT = :SACADO_ALT,'
      '  SACADO_DST = :SACADO_DST,'
      '  VALOR_ALT = :VALOR_ALT,'
      '  VALOR_DST = :VALOR_DST,'
      '  VENCIMENTO_ALT = :VENCIMENTO_ALT,'
      '  VENCIMENTO_DST = :VENCIMENTO_DST,'
      '  TAMANHOPAGINA = :TAMANHOPAGINA,'
      '  CIDADE_DST = :CIDADE_DST,'
      '  CIDADE_ALT = :CIDADE_ALT,'
      '  PORTA_IMPRESSORA = :PORTA_IMPRESSORA,'
      '  LPP = :LPP'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  BANCO = :OLD_BANCO')
    Left = 368
    Top = 8
    object BoletoBancarioCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"SIS_BOLETOBANCARIO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object BoletoBancarioACEITE_ALT: TIntegerField
      FieldName = 'ACEITE_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."ACEITE_ALT"'
    end
    object BoletoBancarioACEITE_DST: TIntegerField
      FieldName = 'ACEITE_DST'
      Origin = '"SIS_BOLETOBANCARIO"."ACEITE_DST"'
    end
    object BoletoBancarioBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"SIS_BOLETOBANCARIO"."BANCO"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object BoletoBancarioDATA_ALT: TIntegerField
      FieldName = 'DATA_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."DATA_ALT"'
    end
    object BoletoBancarioDATA_DST: TIntegerField
      FieldName = 'DATA_DST'
      Origin = '"SIS_BOLETOBANCARIO"."DATA_DST"'
    end
    object BoletoBancarioDOCUMENTO_ALT: TIntegerField
      FieldName = 'DOCUMENTO_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."DOCUMENTO_ALT"'
    end
    object BoletoBancarioDOCUMENTO_DST: TIntegerField
      FieldName = 'DOCUMENTO_DST'
      Origin = '"SIS_BOLETOBANCARIO"."DOCUMENTO_DST"'
    end
    object BoletoBancarioDTPROCESSAMENTO_ALT: TIntegerField
      FieldName = 'DTPROCESSAMENTO_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."DTPROCESSAMENTO_ALT"'
    end
    object BoletoBancarioDTPROCESSAMENTO_DST: TIntegerField
      FieldName = 'DTPROCESSAMENTO_DST'
      Origin = '"SIS_BOLETOBANCARIO"."DTPROCESSAMENTO_DST"'
    end
    object BoletoBancarioESPECIE_ALT: TIntegerField
      FieldName = 'ESPECIE_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."ESPECIE_ALT"'
    end
    object BoletoBancarioESPECIE_DST: TIntegerField
      FieldName = 'ESPECIE_DST'
      Origin = '"SIS_BOLETOBANCARIO"."ESPECIE_DST"'
    end
    object BoletoBancarioINSTRUCOES_ALT: TIntegerField
      FieldName = 'INSTRUCOES_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."INSTRUCOES_ALT"'
    end
    object BoletoBancarioINSTRUCOES_DST: TIntegerField
      FieldName = 'INSTRUCOES_DST'
      Origin = '"SIS_BOLETOBANCARIO"."INSTRUCOES_DST"'
    end
    object BoletoBancarioSACADO_ALT: TIntegerField
      FieldName = 'SACADO_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."SACADO_ALT"'
    end
    object BoletoBancarioSACADO_DST: TIntegerField
      FieldName = 'SACADO_DST'
      Origin = '"SIS_BOLETOBANCARIO"."SACADO_DST"'
    end
    object BoletoBancarioVALOR_ALT: TIntegerField
      FieldName = 'VALOR_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."VALOR_ALT"'
    end
    object BoletoBancarioVALOR_DST: TIntegerField
      FieldName = 'VALOR_DST'
      Origin = '"SIS_BOLETOBANCARIO"."VALOR_DST"'
    end
    object BoletoBancarioVENCIMENTO_ALT: TIntegerField
      FieldName = 'VENCIMENTO_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."VENCIMENTO_ALT"'
    end
    object BoletoBancarioVENCIMENTO_DST: TIntegerField
      FieldName = 'VENCIMENTO_DST'
      Origin = '"SIS_BOLETOBANCARIO"."VENCIMENTO_DST"'
    end
    object BoletoBancarioTAMANHOPAGINA: TIntegerField
      FieldName = 'TAMANHOPAGINA'
      Origin = '"SIS_BOLETOBANCARIO"."TAMANHOPAGINA"'
    end
    object BoletoBancarioCIDADE_DST: TIntegerField
      FieldName = 'CIDADE_DST'
      Origin = '"SIS_BOLETOBANCARIO"."CIDADE_DST"'
    end
    object BoletoBancarioCIDADE_ALT: TIntegerField
      FieldName = 'CIDADE_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."CIDADE_ALT"'
    end
    object BoletoBancarioPORTA_IMPRESSORA: TIBStringField
      FieldName = 'PORTA_IMPRESSORA'
      Origin = '"SIS_BOLETOBANCARIO"."PORTA_IMPRESSORA"'
      Size = 50
    end
    object BoletoBancarioLPP: TIntegerField
      FieldName = 'LPP'
      Origin = '"SIS_BOLETOBANCARIO"."LPP"'
    end
  end
  object Agrupadores: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    DeleteSQL.Strings = (
      'delete from est_produtos'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into est_produtos'
      '  (CNPJ_AGRUP, COD_AGRUP)'
      'values'
      '  (:CNPJ_AGRUP, :COD_AGRUP)')
    RefreshSQL.Strings = (
      'Select *'
      'from est_produtos '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select'
      '         CNPJ, '
      '         CODIGO,'
      '         CODIGO_2,'
      '         CNPJ_AGRUP,'
      '         COD_AGRUP,'
      '         NOME'
      'from est_produtos'
      'where CNPJ_AGRUP = :CNPJ  and COD_AGRUP = :CODIGO'
      'order by NOME')
    ModifySQL.Strings = (
      'update est_produtos'
      'set'
      '  CNPJ_AGRUP = :CNPJ_AGRUP,'
      '  COD_AGRUP = :COD_AGRUP'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    DataSource = dsProdutos
    Left = 16
    Top = 344
    object AgrupadoresCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"EST_PRODUTOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object AgrupadoresCODIGO: TIBStringField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Required = True
      Size = 15
    end
    object AgrupadoresCODIGO_2: TIBStringField
      Tag = 1
      DisplayLabel = 'C'#243'digo Sec.'
      FieldName = 'CODIGO_2'
      Origin = '"EST_PRODUTOS"."CODIGO_2"'
      Required = True
      Size = 15
    end
    object AgrupadoresCNPJ_AGRUP: TIBStringField
      FieldName = 'CNPJ_AGRUP'
      Origin = '"EST_PRODUTOS"."CNPJ_AGRUP"'
      FixedChar = True
      Size = 14
    end
    object AgrupadoresCOD_AGRUP: TIBStringField
      Tag = 1
      DisplayLabel = 'Agrupador'
      FieldName = 'COD_AGRUP'
      Origin = '"EST_PRODUTOS"."COD_AGRUP"'
      Size = 15
    end
    object AgrupadoresNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
  end
  object AlteraPessoas_FJ: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    BeforeOpen = LogradourosBeforeOpen
    DeleteSQL.Strings = (
      'delete from GLO_PESSOAS_FJ'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into GLO_PESSOAS_FJ'
      
        '  (CNPJ, CODIGO, NOME_RAZAO, FANTASIA, ATIVIDADE, ENDERECO, NUME' +
        'RO, COMPLEMENTO, '
      
        '   BAIRRO, CIDADE, UF, CEP, FONE, FAX, CELULAR, PESSOA, CPF_CGC,' +
        ' RG_IE, '
      
        '   CONTATO, DT_NASCIMENTO, DT_CADASTRO, EMAIL, OBS, INSC_MUNIC, ' +
        'CONVENIO)'
      'values'
      
        '  (:CNPJ, :CODIGO, :NOME_RAZAO, :FANTASIA, :ATIVIDADE, :ENDERECO' +
        ', :NUMERO, '
      
        '   :COMPLEMENTO, :BAIRRO, :CIDADE, :UF, :CEP, :FONE, :FAX, :CELU' +
        'LAR, :PESSOA, '
      
        '   :CPF_CGC, :RG_IE, :CONTATO, :DT_NASCIMENTO, :DT_CADASTRO, :EM' +
        'AIL, :OBS, '
      '   :INSC_MUNIC, :CONVENIO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME_RAZAO,'
      '  FANTASIA,'
      '  ATIVIDADE,'
      '  ENDERECO,'
      '  NUMERO,'
      '  COMPLEMENTO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  FONE,'
      '  FAX,'
      '  CELULAR,'
      '  PESSOA,'
      '  CPF_CGC,'
      '  RG_IE,'
      '  CONTATO,'
      '  DT_NASCIMENTO,'
      '  DT_CADASTRO,'
      '  EMAIL,'
      '  OBS,'
      '  INSC_MUNIC,'
      '  CONVENIO'
      'from GLO_PESSOAS_FJ '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               NOME_RAZAO, '
      '               FANTASIA, '
      '               ATIVIDADE,'
      '               ENDERECO, '
      '               NUMERO, '
      '               COMPLEMENTO, '
      '               BAIRRO, '
      '               CIDADE, '
      '               UF, '
      '               CEP, '
      '               FONE,'
      '               FAX, '
      '               CELULAR, '
      '               PESSOA, '
      '               CPF_CGC, '
      '               RG_IE, 7'
      '               CONTATO, '
      '               DT_NASCIMENTO, '
      '               DT_CADASTRO, '
      '               EMAIL, '
      '               OBS,'
      '               INSC_MUNIC,'
      '               CONVENIO'
      'FROM GLO_PESSOAS_FJ'
      'WHERE CNPJ = :CNPJ and CODIGO = :CODIGO'
      'ORDER BY NOME_RAZAO')
    ModifySQL.Strings = (
      'update GLO_PESSOAS_FJ'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME_RAZAO = :NOME_RAZAO,'
      '  FANTASIA = :FANTASIA,'
      '  ATIVIDADE = :ATIVIDADE,'
      '  ENDERECO = :ENDERECO,'
      '  NUMERO = :NUMERO,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CEP = :CEP,'
      '  FONE = :FONE,'
      '  FAX = :FAX,'
      '  CELULAR = :CELULAR,'
      '  PESSOA = :PESSOA,'
      '  CPF_CGC = :CPF_CGC,'
      '  RG_IE = :RG_IE,'
      '  CONTATO = :CONTATO,'
      '  DT_NASCIMENTO = :DT_NASCIMENTO,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  EMAIL = :EMAIL,'
      '  OBS = :OBS,'
      '  INSC_MUNIC = :INSC_MUNIC,'
      '  CONVENIO = :CONVENIO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 88
    Top = 392
    object AlteraPessoas_FJCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_PESSOAS_FJ"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object AlteraPessoas_FJCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
    object AlteraPessoas_FJNOME_RAZAO: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome/Raz'#227'o Social'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
    object AlteraPessoas_FJFANTASIA: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object AlteraPessoas_FJATIVIDADE: TIntegerField
      FieldName = 'ATIVIDADE'
      Origin = '"GLO_PESSOAS_FJ"."ATIVIDADE"'
    end
    object AlteraPessoas_FJENDERECO: TIntegerField
      FieldName = 'ENDERECO'
      Origin = '"GLO_PESSOAS_FJ"."ENDERECO"'
      Required = True
    end
    object AlteraPessoas_FJNUMERO: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = '"GLO_PESSOAS_FJ"."NUMERO"'
      Size = 15
    end
    object AlteraPessoas_FJCOMPLEMENTO: TIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_PESSOAS_FJ"."COMPLEMENTO"'
      Size = 30
    end
    object AlteraPessoas_FJBAIRRO: TIntegerField
      FieldName = 'BAIRRO'
      Origin = '"GLO_PESSOAS_FJ"."BAIRRO"'
      Required = True
    end
    object AlteraPessoas_FJCIDADE: TIntegerField
      FieldName = 'CIDADE'
      Origin = '"GLO_PESSOAS_FJ"."CIDADE"'
      Required = True
    end
    object AlteraPessoas_FJUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PESSOAS_FJ"."UF"'
      FixedChar = True
      Size = 2
    end
    object AlteraPessoas_FJCEP: TIBStringField
      Tag = 1
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"GLO_PESSOAS_FJ"."CEP"'
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object AlteraPessoas_FJFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object AlteraPessoas_FJFAX: TIBStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object AlteraPessoas_FJCELULAR: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = '"GLO_PESSOAS_FJ"."CELULAR"'
    end
    object AlteraPessoas_FJPESSOA: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"GLO_PESSOAS_FJ"."PESSOA"'
      OnGetText = AlteraPessoas_FJPESSOAGetText
      OnSetText = AlteraPessoas_FJPESSOASetText
      FixedChar = True
      Size = 1
    end
    object AlteraPessoas_FJINSC_MUNIC: TIBStringField
      DisplayLabel = 'Inscri'#231#227'o Municipal'
      FieldName = 'INSC_MUNIC'
      Origin = '"GLO_PESSOAS_FJ"."INSC_MUNIC"'
      Size = 15
    end
    object AlteraPessoas_FJCPF_CGC: TIBStringField
      Tag = 1
      DisplayLabel = 'C.P.F. ou C.G.C.'
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object AlteraPessoas_FJRG_IE: TIBStringField
      Tag = 1
      DisplayLabel = 'R.G. ou I.E.'
      FieldName = 'RG_IE'
      Origin = '"GLO_PESSOAS_FJ"."RG_IE"'
      Size = 15
    end
    object AlteraPessoas_FJDT_NASCIMENTO: TDateTimeField
      DisplayLabel = 'Dt. Nascimento'
      FieldName = 'DT_NASCIMENTO'
      Origin = '"GLO_PESSOAS_FJ"."DT_NASCIMENTO"'
    end
    object AlteraPessoas_FJDT_CADASTRO: TDateTimeField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'DT_CADASTRO'
      Origin = '"GLO_PESSOAS_FJ"."DT_CADASTRO"'
    end
    object AlteraPessoas_FJEMAIL: TIBStringField
      Tag = 1
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Origin = '"GLO_PESSOAS_FJ"."EMAIL"'
      Size = 80
    end
    object AlteraPessoas_FJOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"GLO_PESSOAS_FJ"."OBS"'
      Size = 8
    end
    object AlteraPessoas_FJCONVENIO: TIntegerField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'CONVENIO'
      Origin = '"GLO_PESSOAS_FJ"."CONVENIO"'
    end
  end
  object Tipo_Veiculo: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    DeleteSQL.Strings = (
      'delete from GLO_TIPO_VEICULOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into GLO_TIPO_VEICULOS'
      '  (CNPJ, CODIGO, NOME)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME'
      'from GLO_TIPO_VEICULOS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               NOME '
      'FROM GLO_TIPO_VEICULOS'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update GLO_TIPO_VEICULOS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 152
    Top = 344
    object Tipo_VeiculoCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"GLO_TIPO_VEICULOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Tipo_VeiculoCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_TIPO_VEICULOS"."CODIGO"'
      Required = True
    end
    object Tipo_VeiculoNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"GLO_TIPO_VEICULOS"."NOME"'
      Required = True
      Size = 50
    end
  end
  object Marca_Veiculo: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    DeleteSQL.Strings = (
      'delete from GLO_MARCA_VEICULOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into GLO_MARCA_VEICULOS'
      '  (CNPJ, CODIGO, NOME)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME'
      'from GLO_MARCA_VEICULOS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               NOME '
      'FROM GLO_MARCA_VEICULOS'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update GLO_MARCA_VEICULOS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 232
    Top = 344
    object Marca_VeiculoCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"GLO_MARCA_VEICULOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Marca_VeiculoCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_MARCA_VEICULOS"."CODIGO"'
      Required = True
    end
    object Marca_VeiculoNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"GLO_MARCA_VEICULOS"."NOME"'
      Required = True
      Size = 50
    end
  end
  object Veiculo: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = VeiculoAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    OnNewRecord = VeiculoNewRecord
    DeleteSQL.Strings = (
      'delete from GLO_VEICULOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    InsertSQL.Strings = (
      'insert into GLO_VEICULOS'
      
        '  (ANO, ATIVO, CNPJ, CODIGO, COMBUSTIVEL, COR, KM_ATUAL, MARCA_V' +
        'EICULO, '
      
        '   MEDIA_KM, MODELO, MOTORISTA, N_CHASSI, PESSOA_FJ, PLACA, TIPO' +
        '_VEICULO)'
      'values'
      
        '  (:ANO, :ATIVO, :CNPJ, :CODIGO, :COMBUSTIVEL, :COR, :KM_ATUAL, ' +
        ':MARCA_VEICULO, '
      
        '   :MEDIA_KM, :MODELO, :MOTORISTA, :N_CHASSI, :PESSOA_FJ, :PLACA' +
        ', :TIPO_VEICULO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  PESSOA_FJ,'
      '  TIPO_VEICULO,'
      '  MARCA_VEICULO,'
      '  MODELO,'
      '  PLACA,'
      '  KM_ATUAL,'
      '  COMBUSTIVEL,'
      '  MEDIA_KM,'
      '  ATIVO,'
      '  MOTORISTA,'
      '  N_CHASSI,'
      '  COR,'
      '  ANO'
      'from GLO_VEICULOS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  PESSOA_FJ = :PESSOA_FJ')
    SelectSQL.Strings = (
      'SELECT'
      '   ANO, '
      '    CNPJ,'
      '    CODIGO,'
      '    PESSOA_FJ,'
      '    TIPO_VEICULO,'
      '    MARCA_VEICULO,'
      '    MODELO,'
      '    PLACA, '
      '    KM_ATUAL,'
      '    COMBUSTIVEL,'
      '    MEDIA_KM,'
      '    ATIVO,'
      '    MOTORISTA,'
      '    COR, '
      '    N_CHASSI'
      'FROM GLO_VEICULOS'
      'WHERE CNPJ = :CNPJ AND'
      '               PESSOA_FJ = :CODIGO'
      '')
    ModifySQL.Strings = (
      'update GLO_VEICULOS'
      'set'
      '  ANO = :ANO,'
      '  ATIVO = :ATIVO,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  COMBUSTIVEL = :COMBUSTIVEL,'
      '  COR = :COR,'
      '  KM_ATUAL = :KM_ATUAL,'
      '  MARCA_VEICULO = :MARCA_VEICULO,'
      '  MEDIA_KM = :MEDIA_KM,'
      '  MODELO = :MODELO,'
      '  MOTORISTA = :MOTORISTA,'
      '  N_CHASSI = :N_CHASSI,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PLACA = :PLACA,'
      '  TIPO_VEICULO = :TIPO_VEICULO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_GLO_VEICULOS_ID'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = dsPessoasFJ
    Left = 296
    Top = 344
    object VeiculoCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"GLO_VEICULOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object VeiculoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_VEICULOS"."CODIGO"'
      Required = True
    end
    object VeiculoPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_VEICULOS"."PESSOA_FJ"'
      Required = True
    end
    object VeiculoTIPO_VEICULO: TIntegerField
      Tag = 1
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VEICULO'
      Origin = '"GLO_VEICULOS"."TIPO_VEICULO"'
      Required = True
    end
    object VeiculoMARCA_VEICULO: TIntegerField
      Tag = 1
      DisplayLabel = 'Marca'
      FieldName = 'MARCA_VEICULO'
      Origin = '"GLO_VEICULOS"."MARCA_VEICULO"'
      Required = True
    end
    object VeiculoMODELO: TIBStringField
      Tag = 1
      DisplayLabel = 'Modelo'
      DisplayWidth = 50
      FieldName = 'MODELO'
      Origin = '"GLO_VEICULOS"."MODELO"'
      Size = 50
    end
    object VeiculoPLACA: TIBStringField
      DisplayLabel = 'Placa'
      FieldName = 'PLACA'
      Origin = '"GLO_VEICULOS"."PLACA"'
      FixedChar = True
      Size = 8
    end
    object VeiculoKM_ATUAL: TFloatField
      DisplayLabel = 'Km Atual'
      FieldName = 'KM_ATUAL'
      Origin = '"GLO_VEICULOS"."KM_ATUAL"'
    end
    object VeiculoCOMBUSTIVEL: TIBStringField
      DisplayLabel = 'Combust'#237'vel'
      FieldName = 'COMBUSTIVEL'
      Origin = '"GLO_VEICULOS"."COMBUSTIVEL"'
      Size = 15
    end
    object VeiculoMEDIA_KM: TFloatField
      DisplayLabel = 'Media Km/Lt'
      FieldName = 'MEDIA_KM'
      Origin = '"GLO_VEICULOS"."MEDIA_KM"'
      DisplayFormat = '###,###,##0.00'
    end
    object VeiculoATIVO: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = '"GLO_VEICULOS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object VeiculoMOTORISTA: TIBStringField
      FieldName = 'MOTORISTA'
      Origin = '"GLO_VEICULOS"."MOTORISTA"'
      Size = 50
    end
    object VeiculoCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"GLO_VEICULOS"."COR"'
      Size = 50
    end
    object VeiculoN_CHASSI: TIBStringField
      FieldName = 'N_CHASSI'
      Origin = '"GLO_VEICULOS"."N_CHASSI"'
      Size = 50
    end
    object VeiculoANO: TSmallintField
      FieldName = 'ANO'
      Origin = '"GLO_VEICULOS"."ANO"'
    end
  end
  object SelPessoasFJ: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    BeforeOpen = LogradourosBeforeOpen
    SQL.Strings = (
      'SELECT '
      '    CODIGO ,'
      '    PESSOA_FJ ,'
      '    NOME_RAZAO ,'
      '    FONE ,'
      '    FANTASIA ,'
      '    CPF_CGC,'
      '    BLOQUEADO,'
      '    CLASSIFICACAO,'
      '    UF,'
      '    EMPRESA,'
      '    ORDEM,'
      '    ENDERECO'
      'FROM VER_PESSOA_FJ ( :CNPJ )'
      'ORDER BY NOME_RAZAO')
    Left = 584
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelPessoasFJCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_PESSOA_FJ"."CODIGO"'
    end
    object SelPessoasFJPESSOA_FJ: TIntegerField
      Tag = 1
      DisplayLabel = 'Pessoa'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_PESSOA_FJ"."PESSOA_FJ"'
    end
    object SelPessoasFJNOME_RAZAO: TIBStringField
      Tag = 2
      DisplayLabel = 'Nome'
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_PESSOA_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object SelPessoasFJFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_PESSOA_FJ"."FONE"'
    end
    object SelPessoasFJFANTASIA: TIBStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Origin = '"VER_PESSOA_FJ"."FANTASIA"'
      Size = 50
    end
    object SelPessoasFJCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cnpj'
      FieldName = 'CPF_CGC'
      Origin = '"VER_PESSOA_FJ"."CPF_CGC"'
      Size = 15
    end
    object SelPessoasFJBLOQUEADO: TIBStringField
      DisplayLabel = 'Bloqueado'
      FieldName = 'BLOQUEADO'
      Origin = '"VER_PESSOA_FJ"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object SelPessoasFJCLASSIFICACAO: TIBStringField
      DisplayLabel = 'Classifica'#231#227'o'
      FieldName = 'CLASSIFICACAO'
      Origin = '"VER_PESSOA_FJ"."CLASSIFICACAO"'
      Size = 50
    end
    object SelPessoasFJUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"VER_PESSOA_FJ"."UF"'
      FixedChar = True
      Size = 2
    end
    object SelPessoasFJEMPRESA: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRESA'
      Origin = '"VER_PESSOA_FJ"."EMPRESA"'
      FixedChar = True
      Size = 14
    end
    object SelPessoasFJORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = '"VER_PESSOA_FJ"."ORDEM"'
    end
    object SelPessoasFJENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"VER_PESSOA_FJ"."ENDERECO"'
      Size = 65
    end
  end
  object Altera_Propriedade: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterInsert = Altera_PropriedadeAfterInsert
    BeforePost = Altera_PropriedadeBeforePost
    DeleteSQL.Strings = (
      'delete from GLO_PROPRIEDADES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ and'
      '  PROPRIEDADE = :OLD_PROPRIEDADE')
    InsertSQL.Strings = (
      'insert into GLO_PROPRIEDADES'
      
        '  (AREA_TOTAL, BAIRRO, CEP, CIDADE, CNPJ, COMPLEMENTO, ENDERECO,' +
        ' IE, NOME, '
      '   NUMERO, OBS, PESSOA_FJ, PROPRIEDADE, PROPRIETARIO, UF)'
      'values'
      
        '  (:AREA_TOTAL, :BAIRRO, :CEP, :CIDADE, :CNPJ, :COMPLEMENTO, :EN' +
        'DERECO, '
      
        '   :IE, :NOME, :NUMERO, :OBS, :PESSOA_FJ, :PROPRIEDADE, :PROPRIE' +
        'TARIO, '
      '   :UF)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PESSOA_FJ,'
      '  PROPRIEDADE,'
      '  NOME,'
      '  PROPRIETARIO,'
      '  IE,'
      '  ENDERECO,'
      '  COMPLEMENTO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  AREA_TOTAL,'
      '  OBS,'
      '  NUMERO,'
      '  BAIRRO'
      'from GLO_PROPRIEDADES '
      'where'
      '  CNPJ = :CNPJ and'
      '  PESSOA_FJ = :PESSOA_FJ and'
      '  PROPRIEDADE = :PROPRIEDADE')
    SelectSQL.Strings = (
      'select '
      '         AREA_TOTAL, '
      '         BAIRRO, '
      '         CEP, '
      '         CIDADE, '
      '         CNPJ, '
      '         COMPLEMENTO, '
      '         ENDERECO, '
      '         IE, '
      '         NOME, '
      '         NUMERO, '
      '         OBS, '
      '         PESSOA_FJ, '
      '         PROPRIEDADE, '
      '         PROPRIETARIO, '
      '         UF '
      'from GLO_PROPRIEDADES'
      'WHERE PESSOA_FJ = :CODIGO AND CNPJ = :CNPJ')
    ModifySQL.Strings = (
      'update GLO_PROPRIEDADES'
      'set'
      '  AREA_TOTAL = :AREA_TOTAL,'
      '  BAIRRO = :BAIRRO,'
      '  CEP = :CEP,'
      '  CIDADE = :CIDADE,'
      '  CNPJ = :CNPJ,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  ENDERECO = :ENDERECO,'
      '  IE = :IE,'
      '  NOME = :NOME,'
      '  NUMERO = :NUMERO,'
      '  OBS = :OBS,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PROPRIEDADE = :PROPRIEDADE,'
      '  PROPRIETARIO = :PROPRIETARIO,'
      '  UF = :UF'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ and'
      '  PROPRIEDADE = :OLD_PROPRIEDADE')
    Left = 440
    Top = 98
    object Altera_PropriedadeAREA_TOTAL: TIBStringField
      DisplayLabel = #193'rea'
      FieldName = 'AREA_TOTAL'
      Origin = '"GLO_PROPRIEDADES"."AREA_TOTAL"'
      Size = 30
    end
    object Altera_PropriedadeBAIRRO: TIntegerField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"GLO_PROPRIEDADES"."BAIRRO"'
    end
    object Altera_PropriedadeCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"GLO_PROPRIEDADES"."CEP"'
      Size = 8
    end
    object Altera_PropriedadeCIDADE: TIntegerField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"GLO_PROPRIEDADES"."CIDADE"'
    end
    object Altera_PropriedadeCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"GLO_PROPRIEDADES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Altera_PropriedadeCOMPLEMENTO: TIBStringField
      DisplayLabel = 'Compl'
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_PROPRIEDADES"."COMPLEMENTO"'
      Size = 30
    end
    object Altera_PropriedadeENDERECO: TIntegerField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"GLO_PROPRIEDADES"."ENDERECO"'
    end
    object Altera_PropriedadeIE: TIBStringField
      DisplayLabel = 'Ie'
      FieldName = 'IE'
      Origin = '"GLO_PROPRIEDADES"."IE"'
      Size = 15
    end
    object Altera_PropriedadeNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"GLO_PROPRIEDADES"."NOME"'
      Size = 50
    end
    object Altera_PropriedadeNUMERO: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = '"GLO_PROPRIEDADES"."NUMERO"'
      Size = 15
    end
    object Altera_PropriedadeOBS: TBlobField
      DisplayLabel = 'Obs'
      FieldName = 'OBS'
      Origin = '"GLO_PROPRIEDADES"."OBS"'
      Size = 8
    end
    object Altera_PropriedadePESSOA_FJ: TIntegerField
      DisplayLabel = 'Pessoa'
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_PROPRIEDADES"."PESSOA_FJ"'
      Required = True
    end
    object Altera_PropriedadePROPRIEDADE: TIntegerField
      DisplayLabel = 'Propriedade'
      FieldName = 'PROPRIEDADE'
      Origin = '"GLO_PROPRIEDADES"."PROPRIEDADE"'
      Required = True
    end
    object Altera_PropriedadePROPRIETARIO: TIBStringField
      DisplayLabel = 'Propriet'#225'rio'
      FieldName = 'PROPRIETARIO'
      Origin = '"GLO_PROPRIEDADES"."PROPRIETARIO"'
      Size = 50
    end
    object Altera_PropriedadeUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"GLO_PROPRIEDADES"."UF"'
      FixedChar = True
      Size = 2
    end
    object Altera_PropriedadeNome_End: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome_End'
      LookupDataSet = Logradouros
      LookupKeyFields = 'CNPJ;CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CNPJ;ENDERECO'
      Size = 50
      Lookup = True
    end
  end
  object SelFornecedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    BeforeOpen = LogradourosBeforeOpen
    SQL.Strings = (
      'SELECT '
      '    EMPRESA ,'
      '    CODIGO ,'
      '    PESSOA_FJ,'
      '    NOME_RAZAO,'
      '    FONE,'
      '    FANTASIA,'
      '    CPF_CGC,'
      '    UF'
      'FROM VER_FORNECEDOR (:CNPJ)'
      'ORDER BY NOME_RAZAO')
    Left = 648
    Top = 192
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelFornecedorPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_FORNECEDORES"."PESSOA_FJ"'
      Required = True
    end
    object SelFornecedorNOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
    object SelFornecedorFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object SelFornecedorFANTASIA: TIBStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object SelFornecedorCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cnpj'
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object SelFornecedorEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"VER_FORNECEDOR"."EMPRESA"'
      FixedChar = True
      Size = 14
    end
    object SelFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_FORNECEDOR"."CODIGO"'
    end
    object SelFornecedorUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_FORNECEDOR"."UF"'
      FixedChar = True
      Size = 2
    end
  end
  object Contas_Pessoas: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    BeforeOpen = LogradourosBeforeOpen
    OnNewRecord = Contas_PessoasNewRecord
    DeleteSQL.Strings = (
      'delete from GLO_CONTAS_PESSOAS'
      'where'
      '  AGENCIA = :OLD_AGENCIA and'
      '  BANCO = :OLD_BANCO and'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    InsertSQL.Strings = (
      'insert into GLO_CONTAS_PESSOAS'
      '  (AGENCIA, BANCO, CNPJ, CONTA, PESSOA_FJ, DV_AGENCIA, DV_CONTA)'
      'values'
      
        '  (:AGENCIA, :BANCO, :CNPJ, :CONTA, :PESSOA_FJ, :DV_AGENCIA, :DV' +
        '_CONTA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PESSOA_FJ,'
      '  BANCO,'
      '  AGENCIA,'
      '  CONTA,'
      '  DV_AGENCIA,'
      '  DV_CONTA'
      'from GLO_CONTAS_PESSOAS '
      'where'
      '  AGENCIA = :AGENCIA and'
      '  BANCO = :BANCO and'
      '  CNPJ = :CNPJ and'
      '  CONTA = :CONTA and'
      '  PESSOA_FJ = :PESSOA_FJ')
    SelectSQL.Strings = (
      'select '
      '          AGENCIA, '
      '          BANCO, '
      '          CNPJ, '
      '          CONTA, '
      '          PESSOA_FJ ,'
      '          DV_AGENCIA,'
      '          DV_CONTA'
      'from GLO_CONTAS_PESSOAS'
      'where CNPJ = :CNPJ AND Pessoa_Fj = :CODIGO')
    ModifySQL.Strings = (
      'update GLO_CONTAS_PESSOAS'
      'set'
      '  AGENCIA = :AGENCIA,'
      '  BANCO = :BANCO,'
      '  CNPJ = :CNPJ,'
      '  CONTA = :CONTA,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  DV_AGENCIA = :DV_AGENCIA,'
      '  DV_CONTA = :DV_CONTA'
      'where'
      '  AGENCIA = :OLD_AGENCIA and'
      '  BANCO = :OLD_BANCO and'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    DataSource = dsPessoasFJ
    Left = 440
    Top = 232
    object Contas_PessoasAGENCIA: TIBStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Origin = '"GLO_CONTAS_PESSOAS"."AGENCIA"'
      Required = True
      Size = 15
    end
    object Contas_PessoasBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"GLO_CONTAS_PESSOAS"."BANCO"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object Contas_PessoasCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"GLO_CONTAS_PESSOAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Contas_PessoasCONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"GLO_CONTAS_PESSOAS"."CONTA"'
      Required = True
      Size = 15
    end
    object Contas_PessoasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_CONTAS_PESSOAS"."PESSOA_FJ"'
      Required = True
    end
    object Contas_PessoasDV_AGENCIA: TIBStringField
      FieldName = 'DV_AGENCIA'
      Origin = '"GLO_CONTAS_PESSOAS"."DV_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object Contas_PessoasDV_CONTA: TIBStringField
      FieldName = 'DV_CONTA'
      Origin = '"GLO_CONTAS_PESSOAS"."DV_CONTA"'
      FixedChar = True
      Size = 1
    end
  end
  object SelCentroCusto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    BeforeOpen = LogradourosBeforeOpen
    SQL.Strings = (
      'select AGRUPADOR, '
      '          CNPJ, '
      '          CODIGO, '
      '          NOME '
      'from FIN_CENTRO_CUSTO'
      'where CNPJ = :CNPJ ')
    Left = 504
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelCentroCustoAGRUPADOR: TIntegerField
      DisplayLabel = 'Agrupador'
      FieldName = 'AGRUPADOR'
      Origin = '"FIN_CENTRO_CUSTO"."AGRUPADOR"'
    end
    object SelCentroCustoCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FIN_CENTRO_CUSTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelCentroCustoCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_CENTRO_CUSTO"."CODIGO"'
      Required = True
    end
    object SelCentroCustoNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_CENTRO_CUSTO"."NOME"'
      Required = True
      Size = 50
    end
  end
  object Lote: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LoteBeforePost
    OnNewRecord = LoteNewRecord
    DeleteSQL.Strings = (
      'delete from EST_LOTE_PRODUTO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO')
    InsertSQL.Strings = (
      'insert into EST_LOTE_PRODUTO'
      '  (CNPJ, CODIGO, ESTOQUE, LOTE, PRODUTO, PENEIRA, ATESTADO, '
      'GERMINACAO, '
      '   PUREZA, VALIDADE, DT_ULTIMA_COMPRA, DT_ULTIMA_VENDA, PESO)'
      'values'
      
        '  (:CNPJ, :CODIGO, :ESTOQUE, :LOTE, :PRODUTO, :PENEIRA, :ATESTAD' +
        'O, '
      ':GERMINACAO, '
      
        '   :PUREZA, :VALIDADE, :DT_ULTIMA_COMPRA, :DT_ULTIMA_VENDA, :PES' +
        'O)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PRODUTO,'
      '  CODIGO,'
      '  LOTE,'
      '  ESTOQUE,'
      '  PENEIRA,'
      '  ATESTADO,'
      '  GERMINACAO,'
      '  PUREZA,'
      '  VALIDADE,'
      '  DT_ULTIMA_COMPRA,'
      '  DT_ULTIMA_VENDA,'
      '  PESO'
      'from EST_LOTE_PRODUTO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  PRODUTO = :PRODUTO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          ESTOQUE, '
      '          LOTE, '
      '          PRODUTO,'
      '          PENEIRA,'
      '          ATESTADO,'
      '          GERMINACAO,'
      '          PUREZA,'
      '          VALIDADE,'
      '         DT_ULTIMA_COMPRA,'
      '         DT_ULTIMA_VENDA,'
      'PESO'
      'from EST_LOTE_PRODUTO'
      'where CNPJ = :CNPJ and PRODUTO = :CODIGO')
    ModifySQL.Strings = (
      'update EST_LOTE_PRODUTO'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  ESTOQUE = :ESTOQUE,'
      '  LOTE = :LOTE,'
      '  PRODUTO = :PRODUTO,'
      '  PENEIRA = :PENEIRA,'
      '  ATESTADO = :ATESTADO,'
      '  GERMINACAO = :GERMINACAO,'
      '  PUREZA = :PUREZA,'
      '  VALIDADE = :VALIDADE,'
      '  DT_ULTIMA_COMPRA = :DT_ULTIMA_COMPRA,'
      '  DT_ULTIMA_VENDA = :DT_ULTIMA_VENDA,'
      '  PESO = :PESO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO')
    DataSource = dsProdutos
    Left = 648
    Top = 344
    object LoteCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"EST_LOTE_PRODUTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object LoteCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_LOTE_PRODUTO"."CODIGO"'
      Required = True
    end
    object LoteESTOQUE: TFloatField
      DisplayLabel = 'Estoque'
      FieldName = 'ESTOQUE'
      Origin = '"EST_LOTE_PRODUTO"."ESTOQUE"'
      DisplayFormat = '###,##0.00'
    end
    object LoteLOTE: TIBStringField
      Tag = 1
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
      Origin = '"EST_LOTE_PRODUTO"."LOTE"'
      Required = True
      Size = 10
    end
    object LotePRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"EST_LOTE_PRODUTO"."PRODUTO"'
      Required = True
      Size = 15
    end
    object LotePENEIRA: TIBStringField
      Tag = 1
      DisplayLabel = 'Peneira'
      FieldName = 'PENEIRA'
      Origin = '"EST_LOTE_PRODUTO"."PENEIRA"'
      Size = 10
    end
    object LoteATESTADO: TIBStringField
      DisplayLabel = 'Atestado'
      FieldName = 'ATESTADO'
      Origin = '"EST_LOTE_PRODUTO"."ATESTADO"'
      EditMask = '!999/99;1; '
      Size = 6
    end
    object LoteGERMINACAO: TFloatField
      DisplayLabel = 'Germina'#231#227'o'
      FieldName = 'GERMINACAO'
      Origin = '"EST_LOTE_PRODUTO"."GERMINACAO"'
      DisplayFormat = '% ###,##0.00'
    end
    object LotePUREZA: TFloatField
      DisplayLabel = 'Pureza'
      FieldName = 'PUREZA'
      Origin = '"EST_LOTE_PRODUTO"."PUREZA"'
      DisplayFormat = '% ###,##0.00'
    end
    object LoteVALIDADE: TDateTimeField
      DisplayLabel = 'Validade'
      FieldName = 'VALIDADE'
      Origin = '"EST_LOTE_PRODUTO"."VALIDADE"'
    end
    object LoteDT_ULTIMA_COMPRA: TDateTimeField
      DisplayLabel = #218'lt. Compra'
      FieldName = 'DT_ULTIMA_COMPRA'
      Origin = '"EST_LOTE_PRODUTO"."DT_ULTIMA_COMPRA"'
    end
    object LoteDT_ULTIMA_VENDA: TDateTimeField
      DisplayLabel = #218'lt. Venda'
      FieldName = 'DT_ULTIMA_VENDA'
      Origin = '"EST_LOTE_PRODUTO"."DT_ULTIMA_VENDA"'
    end
    object LotePESO: TFloatField
      FieldName = 'PESO'
      Origin = '"EST_LOTE_PRODUTO"."PESO"'
      DisplayFormat = '###,##0.00'
    end
  end
  object Valida_Produto: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'VALIDA_PRODUTO'
    Left = 368
    Top = 344
    ParamData = <
      item
        DataType = ftBCD
        Name = 'PRC_REPOS'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'PRC_VENDA'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'VOLUME'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'PESO_LIQ'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'ATIVO'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'ALIQUOTA_ECF'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'QTDADE_1'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'QTDADE_2'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'NEG_QTDADE_2'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'SUBUNIDADE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'COMPLEMENTO_NF'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'ORIGEM'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'CTE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'CTIE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'REDUCAO'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'IPI'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'VENDE_FRACIONADO'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'POSSUI_LOTE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'MARCA'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'MARGEM_BRUTA'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRODUTO'
        ParamType = ptInput
      end>
  end
  object NotaPromissoria: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = MotoristasAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    OnNewRecord = NotaPromissoriaNewRecord
    DeleteSQL.Strings = (
      'delete from SIS_NOTAPROMISSORIA'
      'where'
      '  CNPJ = :OLD_CNPJ')
    InsertSQL.Strings = (
      'insert into SIS_NOTAPROMISSORIA'
      '  (CNPJ, VENDA1_DST, VENDA1_ALT, PARCELA1_DST, PARCELA1_ALT, '
      'VENCIMENTO1_DST, '
      '   VENCIMENTO1_ALT, SACADO1_DST, SACADO1_ALT, VALOR1_DST, '
      'VALOR1_ALT, VENDA2_DST, '
      '   VENDA2_ALT, PARCELA2_DST, PARCELA2_ALT, VENCIMENTO2_DST, '
      'VENCIMENTO2_ALT, '
      '   SACADO2_DST, SACADO2_ALT, VALOR2_DST, VALOR2_ALT, DATA_DST, '
      'DATA_ALT, '
      '   DOCUMENTO_DST, DOCUMENTO_ALT, INSTRUCOES_DST, '
      'INSTRUCOES_ALT, EXTENSO_DST, '
      
        '   EXTENSO_ALT, LPP, TAMANHOPAGINA, VECTO_EXT_DST, VECTO_EXT_ALT' +
        ', '
      'EMPRESA_DST, '
      '   EMPRESA_ALT, EMPRESA, PORTA, CODIGO_DST, CODIGO_ALT, '
      'CODIGO2_DST, CODIGO2_ALT, '
      '   DATA2_DST, DATA2_ALT, TAMANHO_NOME, DATA3_DST, DATA3_ALT, '
      'IMPRIME_TOTALIZADOR, '
      '   DESCRICAO_CANHOTO, VENDEDOR_DST, VENDEDOR_ALT, '
      'VENDEDOR1_DST, VENDEDOR1_ALT, '
      '   MENSAGEM_NP, MENSAGEM_DST, MENSAGEM_ALT, PR_GRAF, '
      'PR_GRAF_LEIAUTE, CAN_PARC_DST, '
      '   CAN_PARC_ALT, CAN_VALOR_DST, CAN_VALOR_ALT, CAN_COD_CLI_DST, '
      'CAN_COD_CLI_ALT, '
      '   CAN_COD_VENDA_DST, CAN_COD_VENDA_ALT, CAN_VENCTO_DST, '
      'CAN_VENCTO_ALT)'
      'values'
      
        '  (:CNPJ, :VENDA1_DST, :VENDA1_ALT, :PARCELA1_DST, :PARCELA1_ALT' +
        ', '
      ':VENCIMENTO1_DST, '
      '   :VENCIMENTO1_ALT, :SACADO1_DST, :SACADO1_ALT, :VALOR1_DST, '
      ':VALOR1_ALT, '
      '   :VENDA2_DST, :VENDA2_ALT, :PARCELA2_DST, :PARCELA2_ALT, '
      ':VENCIMENTO2_DST, '
      '   :VENCIMENTO2_ALT, :SACADO2_DST, :SACADO2_ALT, :VALOR2_DST, '
      ':VALOR2_ALT, '
      '   :DATA_DST, :DATA_ALT, :DOCUMENTO_DST, :DOCUMENTO_ALT, '
      ':INSTRUCOES_DST, '
      '   :INSTRUCOES_ALT, :EXTENSO_DST, :EXTENSO_ALT, :LPP, '
      ':TAMANHOPAGINA, :VECTO_EXT_DST, '
      
        '   :VECTO_EXT_ALT, :EMPRESA_DST, :EMPRESA_ALT, :EMPRESA, :PORTA,' +
        ' '
      ':CODIGO_DST, '
      
        '   :CODIGO_ALT, :CODIGO2_DST, :CODIGO2_ALT, :DATA2_DST, :DATA2_A' +
        'LT, '
      ':TAMANHO_NOME, '
      '   :DATA3_DST, :DATA3_ALT, :IMPRIME_TOTALIZADOR, '
      ':DESCRICAO_CANHOTO, :VENDEDOR_DST, '
      '   :VENDEDOR_ALT, :VENDEDOR1_DST, :VENDEDOR1_ALT, :MENSAGEM_NP, '
      ':MENSAGEM_DST, '
      '   :MENSAGEM_ALT, :PR_GRAF, :PR_GRAF_LEIAUTE, :CAN_PARC_DST, '
      ':CAN_PARC_ALT, '
      '   :CAN_VALOR_DST, :CAN_VALOR_ALT, :CAN_COD_CLI_DST, '
      ':CAN_COD_CLI_ALT, '
      '   :CAN_COD_VENDA_DST, :CAN_COD_VENDA_ALT, :CAN_VENCTO_DST, '
      ':CAN_VENCTO_ALT)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  VENDA1_DST,'
      '  VENDA1_ALT,'
      '  PARCELA1_DST,'
      '  PARCELA1_ALT,'
      '  VENCIMENTO1_DST,'
      '  VENCIMENTO1_ALT,'
      '  SACADO1_DST,'
      '  SACADO1_ALT,'
      '  VALOR1_DST,'
      '  VALOR1_ALT,'
      '  VENDA2_DST,'
      '  VENDA2_ALT,'
      '  PARCELA2_DST,'
      '  PARCELA2_ALT,'
      '  VENCIMENTO2_DST,'
      '  VENCIMENTO2_ALT,'
      '  SACADO2_DST,'
      '  SACADO2_ALT,'
      '  VALOR2_DST,'
      '  VALOR2_ALT,'
      '  DATA_DST,'
      '  DATA_ALT,'
      '  DOCUMENTO_DST,'
      '  DOCUMENTO_ALT,'
      '  INSTRUCOES_DST,'
      '  INSTRUCOES_ALT,'
      '  EXTENSO_DST,'
      '  EXTENSO_ALT,'
      '  LPP,'
      '  TAMANHOPAGINA,'
      '  VECTO_EXT_DST,'
      '  VECTO_EXT_ALT,'
      '  EMPRESA_DST,'
      '  EMPRESA_ALT,'
      '  EMPRESA,'
      '  PORTA,'
      '  CODIGO_DST,'
      '  CODIGO_ALT,'
      '  CODIGO2_DST,'
      '  CODIGO2_ALT,'
      '  DATA2_DST,'
      '  DATA2_ALT,'
      '  TAMANHO_NOME,'
      '  DATA3_DST,'
      '  DATA3_ALT,'
      '  IMPRIME_TOTALIZADOR,'
      '  DESCRICAO_CANHOTO,'
      '  VENDEDOR_DST,'
      '  VENDEDOR_ALT,'
      '  VENDEDOR1_DST,'
      '  VENDEDOR1_ALT,'
      '  MENSAGEM_NP,'
      '  MENSAGEM_DST,'
      '  MENSAGEM_ALT,'
      '  PR_GRAF,'
      '  PR_GRAF_LEIAUTE,'
      '  CAN_PARC_DST,'
      '  CAN_PARC_ALT,'
      '  CAN_VALOR_DST,'
      '  CAN_VALOR_ALT,'
      '  CAN_COD_CLI_DST,'
      '  CAN_COD_CLI_ALT,'
      '  CAN_COD_VENDA_DST,'
      '  CAN_COD_VENDA_ALT,'
      '  CAN_VENCTO_DST,'
      '  CAN_VENCTO_ALT'
      'from SIS_NOTAPROMISSORIA '
      'where'
      '  CNPJ = :CNPJ')
    SelectSQL.Strings = (
      'select * '
      'from SIS_NOTAPROMISSORIA'
      'where CNPJ = :CNPJ')
    ModifySQL.Strings = (
      'update SIS_NOTAPROMISSORIA'
      'set'
      '  CNPJ = :CNPJ,'
      '  VENDA1_DST = :VENDA1_DST,'
      '  VENDA1_ALT = :VENDA1_ALT,'
      '  PARCELA1_DST = :PARCELA1_DST,'
      '  PARCELA1_ALT = :PARCELA1_ALT,'
      '  VENCIMENTO1_DST = :VENCIMENTO1_DST,'
      '  VENCIMENTO1_ALT = :VENCIMENTO1_ALT,'
      '  SACADO1_DST = :SACADO1_DST,'
      '  SACADO1_ALT = :SACADO1_ALT,'
      '  VALOR1_DST = :VALOR1_DST,'
      '  VALOR1_ALT = :VALOR1_ALT,'
      '  VENDA2_DST = :VENDA2_DST,'
      '  VENDA2_ALT = :VENDA2_ALT,'
      '  PARCELA2_DST = :PARCELA2_DST,'
      '  PARCELA2_ALT = :PARCELA2_ALT,'
      '  VENCIMENTO2_DST = :VENCIMENTO2_DST,'
      '  VENCIMENTO2_ALT = :VENCIMENTO2_ALT,'
      '  SACADO2_DST = :SACADO2_DST,'
      '  SACADO2_ALT = :SACADO2_ALT,'
      '  VALOR2_DST = :VALOR2_DST,'
      '  VALOR2_ALT = :VALOR2_ALT,'
      '  DATA_DST = :DATA_DST,'
      '  DATA_ALT = :DATA_ALT,'
      '  DOCUMENTO_DST = :DOCUMENTO_DST,'
      '  DOCUMENTO_ALT = :DOCUMENTO_ALT,'
      '  INSTRUCOES_DST = :INSTRUCOES_DST,'
      '  INSTRUCOES_ALT = :INSTRUCOES_ALT,'
      '  EXTENSO_DST = :EXTENSO_DST,'
      '  EXTENSO_ALT = :EXTENSO_ALT,'
      '  LPP = :LPP,'
      '  TAMANHOPAGINA = :TAMANHOPAGINA,'
      '  VECTO_EXT_DST = :VECTO_EXT_DST,'
      '  VECTO_EXT_ALT = :VECTO_EXT_ALT,'
      '  EMPRESA_DST = :EMPRESA_DST,'
      '  EMPRESA_ALT = :EMPRESA_ALT,'
      '  EMPRESA = :EMPRESA,'
      '  PORTA = :PORTA,'
      '  CODIGO_DST = :CODIGO_DST,'
      '  CODIGO_ALT = :CODIGO_ALT,'
      '  CODIGO2_DST = :CODIGO2_DST,'
      '  CODIGO2_ALT = :CODIGO2_ALT,'
      '  DATA2_DST = :DATA2_DST,'
      '  DATA2_ALT = :DATA2_ALT,'
      '  TAMANHO_NOME = :TAMANHO_NOME,'
      '  DATA3_DST = :DATA3_DST,'
      '  DATA3_ALT = :DATA3_ALT,'
      '  IMPRIME_TOTALIZADOR = :IMPRIME_TOTALIZADOR,'
      '  DESCRICAO_CANHOTO = :DESCRICAO_CANHOTO,'
      '  VENDEDOR_DST = :VENDEDOR_DST,'
      '  VENDEDOR_ALT = :VENDEDOR_ALT,'
      '  VENDEDOR1_DST = :VENDEDOR1_DST,'
      '  VENDEDOR1_ALT = :VENDEDOR1_ALT,'
      '  MENSAGEM_NP = :MENSAGEM_NP,'
      '  MENSAGEM_DST = :MENSAGEM_DST,'
      '  MENSAGEM_ALT = :MENSAGEM_ALT,'
      '  PR_GRAF = :PR_GRAF,'
      '  PR_GRAF_LEIAUTE = :PR_GRAF_LEIAUTE,'
      '  CAN_PARC_DST = :CAN_PARC_DST,'
      '  CAN_PARC_ALT = :CAN_PARC_ALT,'
      '  CAN_VALOR_DST = :CAN_VALOR_DST,'
      '  CAN_VALOR_ALT = :CAN_VALOR_ALT,'
      '  CAN_COD_CLI_DST = :CAN_COD_CLI_DST,'
      '  CAN_COD_CLI_ALT = :CAN_COD_CLI_ALT,'
      '  CAN_COD_VENDA_DST = :CAN_COD_VENDA_DST,'
      '  CAN_COD_VENDA_ALT = :CAN_COD_VENDA_ALT,'
      '  CAN_VENCTO_DST = :CAN_VENCTO_DST,'
      '  CAN_VENCTO_ALT = :CAN_VENCTO_ALT'
      'where'
      '  CNPJ = :OLD_CNPJ')
    Left = 584
    Top = 344
    object NotaPromissoriaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_NOTAPROMISSORIA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object NotaPromissoriaDATA_ALT: TIntegerField
      FieldName = 'DATA_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."DATA_ALT"'
    end
    object NotaPromissoriaDATA_DST: TIntegerField
      FieldName = 'DATA_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."DATA_DST"'
    end
    object NotaPromissoriaDOCUMENTO_ALT: TIntegerField
      FieldName = 'DOCUMENTO_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."DOCUMENTO_ALT"'
    end
    object NotaPromissoriaDOCUMENTO_DST: TIntegerField
      FieldName = 'DOCUMENTO_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."DOCUMENTO_DST"'
    end
    object NotaPromissoriaEXTENSO_ALT: TIntegerField
      FieldName = 'EXTENSO_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."EXTENSO_ALT"'
    end
    object NotaPromissoriaEXTENSO_DST: TIntegerField
      FieldName = 'EXTENSO_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."EXTENSO_DST"'
    end
    object NotaPromissoriaINSTRUCOES_ALT: TIntegerField
      FieldName = 'INSTRUCOES_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."INSTRUCOES_ALT"'
    end
    object NotaPromissoriaINSTRUCOES_DST: TIntegerField
      FieldName = 'INSTRUCOES_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."INSTRUCOES_DST"'
    end
    object NotaPromissoriaLPP: TIntegerField
      FieldName = 'LPP'
      Origin = '"SIS_NOTAPROMISSORIA"."LPP"'
      OnGetText = NotaPromissoriaLPPGetText
      OnSetText = NotaPromissoriaLPPSetText
    end
    object NotaPromissoriaPARCELA1_ALT: TIntegerField
      FieldName = 'PARCELA1_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."PARCELA1_ALT"'
    end
    object NotaPromissoriaPARCELA1_DST: TIntegerField
      FieldName = 'PARCELA1_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."PARCELA1_DST"'
    end
    object NotaPromissoriaPARCELA2_ALT: TIntegerField
      FieldName = 'PARCELA2_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."PARCELA2_ALT"'
    end
    object NotaPromissoriaPARCELA2_DST: TIntegerField
      FieldName = 'PARCELA2_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."PARCELA2_DST"'
    end
    object NotaPromissoriaSACADO1_ALT: TIntegerField
      FieldName = 'SACADO1_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."SACADO1_ALT"'
    end
    object NotaPromissoriaSACADO1_DST: TIntegerField
      FieldName = 'SACADO1_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."SACADO1_DST"'
    end
    object NotaPromissoriaSACADO2_ALT: TIntegerField
      FieldName = 'SACADO2_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."SACADO2_ALT"'
    end
    object NotaPromissoriaSACADO2_DST: TIntegerField
      FieldName = 'SACADO2_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."SACADO2_DST"'
    end
    object NotaPromissoriaTAMANHOPAGINA: TIntegerField
      FieldName = 'TAMANHOPAGINA'
      Origin = '"SIS_NOTAPROMISSORIA"."TAMANHOPAGINA"'
    end
    object NotaPromissoriaVALOR1_ALT: TIntegerField
      FieldName = 'VALOR1_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."VALOR1_ALT"'
    end
    object NotaPromissoriaVALOR1_DST: TIntegerField
      FieldName = 'VALOR1_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."VALOR1_DST"'
    end
    object NotaPromissoriaVALOR2_ALT: TIntegerField
      FieldName = 'VALOR2_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."VALOR2_ALT"'
    end
    object NotaPromissoriaVALOR2_DST: TIntegerField
      FieldName = 'VALOR2_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."VALOR2_DST"'
    end
    object NotaPromissoriaVENCIMENTO1_ALT: TIntegerField
      FieldName = 'VENCIMENTO1_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."VENCIMENTO1_ALT"'
    end
    object NotaPromissoriaVENCIMENTO1_DST: TIntegerField
      FieldName = 'VENCIMENTO1_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."VENCIMENTO1_DST"'
    end
    object NotaPromissoriaVENCIMENTO2_ALT: TIntegerField
      FieldName = 'VENCIMENTO2_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."VENCIMENTO2_ALT"'
    end
    object NotaPromissoriaVENCIMENTO2_DST: TIntegerField
      FieldName = 'VENCIMENTO2_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."VENCIMENTO2_DST"'
    end
    object NotaPromissoriaVENDA1_ALT: TIntegerField
      FieldName = 'VENDA1_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."VENDA1_ALT"'
    end
    object NotaPromissoriaVENDA1_DST: TIntegerField
      FieldName = 'VENDA1_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."VENDA1_DST"'
    end
    object NotaPromissoriaVENDA2_ALT: TIntegerField
      FieldName = 'VENDA2_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."VENDA2_ALT"'
    end
    object NotaPromissoriaVENDA2_DST: TIntegerField
      FieldName = 'VENDA2_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."VENDA2_DST"'
    end
    object NotaPromissoriaVECTO_EXT_DST: TIntegerField
      FieldName = 'VECTO_EXT_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."VENDA2_DST"'
    end
    object NotaPromissoriaVECTO_EXT_ALT: TIntegerField
      FieldName = 'VECTO_EXT_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."VECTO_EXT_ALT"'
    end
    object NotaPromissoriaEMPRESA_DST: TIntegerField
      FieldName = 'EMPRESA_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."EMPRESA_DST"'
    end
    object NotaPromissoriaEMPRESA_ALT: TIntegerField
      FieldName = 'EMPRESA_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."EMPRESA_ALT"'
    end
    object NotaPromissoriaEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"SIS_NOTAPROMISSORIA"."EMPRESA"'
      Size = 50
    end
    object NotaPromissoriaPORTA: TIBStringField
      FieldName = 'PORTA'
      Origin = '"SIS_NOTAPROMISSORIA"."PORTA"'
      Size = 50
    end
    object NotaPromissoriaCODIGO_DST: TIntegerField
      FieldName = 'CODIGO_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."CODIGO_DST"'
    end
    object NotaPromissoriaCODIGO_ALT: TIntegerField
      FieldName = 'CODIGO_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."CODIGO_ALT"'
    end
    object NotaPromissoriaCODIGO2_DST: TIntegerField
      FieldName = 'CODIGO2_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."CODIGO2_DST"'
    end
    object NotaPromissoriaCODIGO2_ALT: TIntegerField
      FieldName = 'CODIGO2_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."CODIGO2_ALT"'
    end
    object NotaPromissoriaDATA2_DST: TIntegerField
      FieldName = 'DATA2_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."DATA2_DST"'
    end
    object NotaPromissoriaDATA2_ALT: TIntegerField
      FieldName = 'DATA2_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."DATA2_ALT"'
    end
    object NotaPromissoriaTAMANHO_NOME: TIntegerField
      FieldName = 'TAMANHO_NOME'
      Origin = '"SIS_NOTAPROMISSORIA"."TAMANHO_NOME"'
    end
    object NotaPromissoriaDATA3_DST: TIntegerField
      FieldName = 'DATA3_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."TAMANHO_NOME"'
    end
    object NotaPromissoriaDATA3_ALT: TIntegerField
      FieldName = 'DATA3_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."DATA3_ALT"'
    end
    object NotaPromissoriaIMPRIME_TOTALIZADOR: TIBStringField
      FieldName = 'IMPRIME_TOTALIZADOR'
      Origin = '"SIS_NOTAPROMISSORIA"."IMPRIME_TOTALIZADOR"'
      FixedChar = True
      Size = 1
    end
    object NotaPromissoriaDESCRICAO_CANHOTO: TIBStringField
      FieldName = 'DESCRICAO_CANHOTO'
      Origin = '"SIS_NOTAPROMISSORIA"."DESCRICAO_CANHOTO"'
      FixedChar = True
      Size = 1
    end
    object NotaPromissoriaVENDEDOR_DST: TIntegerField
      FieldName = 'VENDEDOR_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."VENDEDOR_DST"'
    end
    object NotaPromissoriaVENDEDOR_ALT: TIntegerField
      FieldName = 'VENDEDOR_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."VENDEDOR_ALT"'
    end
    object NotaPromissoriaVENDEDOR1_DST: TIntegerField
      FieldName = 'VENDEDOR1_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."VENDEDOR1_DST"'
    end
    object NotaPromissoriaVENDEDOR1_ALT: TIntegerField
      FieldName = 'VENDEDOR1_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."VENDEDOR1_ALT"'
    end
    object NotaPromissoriaMENSAGEM_NP: TIBStringField
      FieldName = 'MENSAGEM_NP'
      Origin = '"SIS_NOTAPROMISSORIA"."MENSAGEM_NP"'
      Size = 200
    end
    object NotaPromissoriaMENSAGEM_DST: TIntegerField
      FieldName = 'MENSAGEM_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."MENSAGEM_DST"'
    end
    object NotaPromissoriaMENSAGEM_ALT: TIntegerField
      FieldName = 'MENSAGEM_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."MENSAGEM_ALT"'
    end
    object NotaPromissoriaPR_GRAF: TIBStringField
      FieldName = 'PR_GRAF'
      Origin = '"SIS_NOTAPROMISSORIA"."PR_GRAF"'
      FixedChar = True
      Size = 1
    end
    object NotaPromissoriaPR_GRAF_LEIAUTE: TMemoField
      FieldName = 'PR_GRAF_LEIAUTE'
      Origin = '"SIS_NOTAPROMISSORIA"."PR_GRAF_LEIAUTE"'
      BlobType = ftMemo
      Size = 8
    end
    object NotaPromissoriaCAN_PARC_DST: TIntegerField
      FieldName = 'CAN_PARC_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."CAN_PARC_DST"'
    end
    object NotaPromissoriaCAN_PARC_ALT: TIntegerField
      FieldName = 'CAN_PARC_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."CAN_PARC_ALT"'
    end
    object NotaPromissoriaCAN_VALOR_DST: TIntegerField
      FieldName = 'CAN_VALOR_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."CAN_VALOR_DST"'
    end
    object NotaPromissoriaCAN_VALOR_ALT: TIntegerField
      FieldName = 'CAN_VALOR_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."CAN_VALOR_ALT"'
    end
    object NotaPromissoriaCAN_COD_CLI_DST: TIntegerField
      FieldName = 'CAN_COD_CLI_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."CAN_COD_CLI_DST"'
    end
    object NotaPromissoriaCAN_COD_CLI_ALT: TIntegerField
      FieldName = 'CAN_COD_CLI_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."CAN_COD_CLI_ALT"'
    end
    object NotaPromissoriaCAN_COD_VENDA_DST: TIntegerField
      FieldName = 'CAN_COD_VENDA_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."CAN_COD_VENDA_DST"'
    end
    object NotaPromissoriaCAN_COD_VENDA_ALT: TIntegerField
      FieldName = 'CAN_COD_VENDA_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."CAN_COD_VENDA_ALT"'
    end
    object NotaPromissoriaCAN_VENCTO_DST: TIntegerField
      FieldName = 'CAN_VENCTO_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."CAN_VENCTO_DST"'
    end
    object NotaPromissoriaCAN_VENCTO_ALT: TIntegerField
      FieldName = 'CAN_VENCTO_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."CAN_VENCTO_ALT"'
    end
  end
  object Indicados: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = DsVendedores
    SQL.Strings = (
      'select'
      '    INDICADO ,'
      '    PORCENTAGEM ,'
      '    NOME ,'
      '    INICIO '
      'from VER_GLO_INDICACOES'
      '( :CNPJ, :CODIGO )'
      'order by NOME')
    Left = 16
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object IndicadosINDICADO: TIntegerField
      DisplayLabel = 'Indicado'
      FieldName = 'INDICADO'
      Origin = '"VER_GLO_INDICACOES"."INDICADO"'
    end
    object IndicadosPORCENTAGEM: TIBBCDField
      DisplayLabel = 'Porcentagem'
      FieldName = 'PORCENTAGEM'
      Origin = '"VER_GLO_INDICACOES"."PORCENTAGEM"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object IndicadosNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_GLO_INDICACOES"."NOME"'
      Size = 50
    end
    object IndicadosINICIO: TDateTimeField
      DisplayLabel = #205'nicio'
      FieldName = 'INICIO'
      Origin = '"VER_GLO_INDICACOES"."INICIO"'
    end
  end
  object Ver_Cotas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = DsVendedores
    SQL.Strings = (
      'select   '
      '   GRUPO,'
      '   SUBGRUPO,'
      '   NOME_GRUPO,'
      '   NOME_SUBGRUPO,'
      '   VALOR,'
      '   COMISSAO_VISTA,'
      '   COMISSAO_PRAZO'
      'from VER_COTAS_VENDEDORES'
      '( :CNPJ, :CODIGO )')
    Left = 152
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object Ver_CotasGRUPO: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'GRUPO'
      Origin = '"VER_COTAS_VENDEDORES"."GRUPO"'
    end
    object Ver_CotasSUBGRUPO: TIntegerField
      DisplayLabel = 'SubGrupo'
      FieldName = 'SUBGRUPO'
      Origin = '"VER_COTAS_VENDEDORES"."SUBGRUPO"'
    end
    object Ver_CotasNOME_GRUPO: TIBStringField
      DisplayLabel = 'SubGrupo'
      FieldName = 'NOME_GRUPO'
      Origin = '"VER_COTAS_VENDEDORES"."NOME_GRUPO"'
      Size = 50
    end
    object Ver_CotasNOME_SUBGRUPO: TIBStringField
      DisplayLabel = 'SubGrupo'
      FieldName = 'NOME_SUBGRUPO'
      Origin = '"VER_COTAS_VENDEDORES"."NOME_SUBGRUPO"'
      Size = 50
    end
    object Ver_CotasVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_COTAS_VENDEDORES"."VALOR"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_CotasCOMISSAO_VISTA: TIBBCDField
      DisplayLabel = 'Vista'
      FieldName = 'COMISSAO_VISTA'
      Origin = '"VER_COTAS_VENDEDORES"."COMISSAO_VISTA"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_CotasCOMISSAO_PRAZO: TIBBCDField
      DisplayLabel = 'Prazo'
      FieldName = 'COMISSAO_PRAZO'
      Origin = '"VER_COTAS_VENDEDORES"."COMISSAO_PRAZO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object DsVendedores: TDataSource
    AutoEdit = False
    DataSet = SelVendedor
    Left = 504
    Top = 280
  end
  object Cidades: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    DeleteSQL.Strings = (
      'delete from glo_cidades'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into glo_cidades'
      '  (CNPJ, COD_IAGRO, COD_IBGE, CODIGO, NOME, UF)'
      'values'
      '  (:CNPJ, :COD_IAGRO, :COD_IBGE, :CODIGO, :NOME, :UF)')
    RefreshSQL.Strings = (
      'Select * '
      'from glo_cidades '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select c.*'
      'from glo_cidades c'
      'where c.cnpj = :cnpj'
      'order by c.nome')
    ModifySQL.Strings = (
      'update glo_cidades'
      'set'
      '  CNPJ = :CNPJ,'
      '  COD_IAGRO = :COD_IAGRO,'
      '  COD_IBGE = :COD_IBGE,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  UF = :UF'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GLO_CIDADES_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 784
    Top = 280
    object CidadesCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"GLO_CIDADES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CidadesCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_CIDADES"."CODIGO"'
      Required = True
    end
    object CidadesNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"GLO_CIDADES"."NOME"'
      Required = True
      Size = 50
    end
    object CidadesUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"GLO_CIDADES"."UF"'
      FixedChar = True
      Size = 2
    end
    object CidadesCOD_IAGRO: TIntegerField
      FieldName = 'COD_IAGRO'
      Origin = '"GLO_CIDADES"."COD_IAGRO"'
    end
    object CidadesCOD_IBGE: TIBStringField
      FieldName = 'COD_IBGE'
      Origin = '"GLO_CIDADES"."COD_IBGE"'
      Size = 7
    end
  end
  object Precos_Especiais: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = Precos_EspeciaisAfterInsert
    DeleteSQL.Strings = (
      'delete from GLO_PRECOS_ESPECIAIS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ and'
      '  PRODUTO = :OLD_PRODUTO')
    InsertSQL.Strings = (
      'insert into GLO_PRECOS_ESPECIAIS'
      '  (CNPJ, PESSOA_FJ, PORCENTAGEM, PRODUTO, ORIGINAL, RESULTADO)'
      'values'
      
        '  (:CNPJ, :PESSOA_FJ, :PORCENTAGEM, :PRODUTO, :ORIGINAL, :RESULT' +
        'ADO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PESSOA_FJ,'
      '  PORCENTAGEM,'
      '  PRODUTO,'
      '  ORIGINAL,'
      '  RESULTADO'
      'from GLO_PRECOS_ESPECIAIS '
      'where'
      '  CNPJ = :CNPJ and'
      '  PESSOA_FJ = :PESSOA_FJ and'
      '  PRODUTO = :PRODUTO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          PESSOA_FJ, '
      '          PORCENTAGEM, '
      '          PRODUTO,'
      '          ORIGINAL,'
      '          RESULTADO'
      'from GLO_PRECOS_ESPECIAIS'
      'Where CNPJ = :CNPJ AND PESSOA_FJ = :CODIGO')
    ModifySQL.Strings = (
      'update GLO_PRECOS_ESPECIAIS'
      'set'
      '  CNPJ = :CNPJ,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PORCENTAGEM = :PORCENTAGEM,'
      '  PRODUTO = :PRODUTO,'
      '  ORIGINAL = :ORIGINAL,'
      '  RESULTADO = :RESULTADO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ and'
      '  PRODUTO = :OLD_PRODUTO')
    DataSource = dsPessoasFJ
    Left = 88
    Top = 344
    object Precos_EspeciaisCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"GLO_PRECOS_ESPECIAIS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Precos_EspeciaisPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_PRECOS_ESPECIAIS"."PESSOA_FJ"'
      Required = True
    end
    object Precos_EspeciaisPORCENTAGEM: TFloatField
      DisplayLabel = '%'
      FieldName = 'PORCENTAGEM'
      Origin = '"GLO_PRECOS_ESPECIAIS"."PORCENTAGEM"'
      DisplayFormat = '##0.00000'
    end
    object Precos_EspeciaisPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"GLO_PRECOS_ESPECIAIS"."PRODUTO"'
      Required = True
      OnValidate = Precos_EspeciaisPRODUTOValidate
      Size = 15
    end
    object Precos_EspeciaisORIGINAL: TFloatField
      DisplayLabel = 'Original'
      FieldName = 'ORIGINAL'
      Origin = '"GLO_PRECOS_ESPECIAIS"."ORIGINAL"'
      DisplayFormat = '##0.00000'
    end
    object Precos_EspeciaisRESULTADO: TFloatField
      DisplayLabel = 'Resultado'
      FieldName = 'RESULTADO'
      Origin = '"GLO_PRECOS_ESPECIAIS"."RESULTADO"'
      DisplayFormat = '##0.00000'
    end
  end
  object Transportadoras: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    DeleteSQL.Strings = (
      'delete from GLO_TRANSPORTADORAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into GLO_TRANSPORTADORAS'
      
        '  (CNPJ, CODIGO, NOME, PLACA, UF, CPF_CNPJ, ENDERECO, CIDADE, IE' +
        ')'
      'values'
      
        '  (:CNPJ, :CODIGO, :NOME, :PLACA, :UF, :CPF_CNPJ, :ENDERECO, :CI' +
        'DADE, :IE)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  PLACA,'
      '  UF,'
      '  CPF_CNPJ,'
      '  ENDERECO,'
      '  CIDADE,'
      '  IE'
      'from GLO_TRANSPORTADORAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME ,'
      '          PLACA ,'
      '          UF        ,'
      '          CPF_CNPJ  ,'
      '          ENDERECO  ,'
      '          CIDADE    ,'
      '          IE        '
      'from GLO_TRANSPORTADORAS'
      'Where CNPJ = :CNPJ')
    ModifySQL.Strings = (
      'update GLO_TRANSPORTADORAS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  PLACA = :PLACA,'
      '  UF = :UF,'
      '  CPF_CNPJ = :CPF_CNPJ,'
      '  ENDERECO = :ENDERECO,'
      '  CIDADE = :CIDADE,'
      '  IE = :IE'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 296
    Top = 392
    object TransportadorasCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"GLO_TRANSPORTADORAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object TransportadorasCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_TRANSPORTADORAS"."CODIGO"'
      Required = True
    end
    object TransportadorasNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"GLO_TRANSPORTADORAS"."NOME"'
      Required = True
      Size = 50
    end
    object TransportadorasPLACA: TIBStringField
      DisplayLabel = 'Placa'
      FieldName = 'PLACA'
      Origin = '"GLO_TRANSPORTADORAS"."PLACA"'
      FixedChar = True
      Size = 8
    end
    object TransportadorasUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"GLO_TRANSPORTADORAS"."UF"'
      FixedChar = True
      Size = 2
    end
    object TransportadorasCPF_CNPJ: TIBStringField
      DisplayLabel = 'Cpf/Cnpj'
      FieldName = 'CPF_CNPJ'
      Origin = '"GLO_TRANSPORTADORAS"."CPF_CNPJ"'
      Size = 15
    end
    object TransportadorasENDERECO: TIBStringField
      DisplayLabel = 'End'
      FieldName = 'ENDERECO'
      Origin = '"GLO_TRANSPORTADORAS"."ENDERECO"'
      Size = 50
    end
    object TransportadorasCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"GLO_TRANSPORTADORAS"."CIDADE"'
      Size = 50
    end
    object TransportadorasIE: TIBStringField
      FieldName = 'IE'
      Origin = '"GLO_TRANSPORTADORAS"."IE"'
      Size = 15
    end
  end
  object Mecanicos: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    OnNewRecord = MecanicosNewRecord
    DeleteSQL.Strings = (
      'delete from OFC_MECANICOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into OFC_MECANICOS'
      
        '  (ASSINATURA, CNPJ, COD_USUARIO, CODIGO, COM_PRAZO, COM_VISTA, ' +
        'CREA, CTPS, '
      '   CUSTO_HORA, EMAIL, NOME, PESSOA_FJ, SENHA)'
      'values'
      
        '  (:ASSINATURA, :CNPJ, :COD_USUARIO, :CODIGO, :COM_PRAZO, :COM_V' +
        'ISTA, :CREA, '
      '   :CTPS, :CUSTO_HORA, :EMAIL, :NOME, :PESSOA_FJ, :SENHA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  COM_VISTA,'
      '  COM_PRAZO,'
      '  PESSOA_FJ,'
      '  SENHA,'
      '  CREA,'
      '  CTPS,'
      '  EMAIL,'
      '  CUSTO_HORA,'
      '  COD_USUARIO,'
      '  ASSINATURA'
      'from OFC_MECANICOS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          COM_PRAZO, '
      '          COM_VISTA, '
      '          NOME, '
      '          PESSOA_FJ,'
      '          SENHA,'
      '          CREA, CTPS,'
      '          email,'
      '          cod_usuario,'
      'custo_hora, assinatura'
      'from OFC_MECANICOS'
      'Where CNPJ = :CNPJ'
      'Order by NOME')
    ModifySQL.Strings = (
      'update OFC_MECANICOS'
      'set'
      '  ASSINATURA = :ASSINATURA,'
      '  CNPJ = :CNPJ,'
      '  COD_USUARIO = :COD_USUARIO,'
      '  CODIGO = :CODIGO,'
      '  COM_PRAZO = :COM_PRAZO,'
      '  COM_VISTA = :COM_VISTA,'
      '  CREA = :CREA,'
      '  CTPS = :CTPS,'
      '  CUSTO_HORA = :CUSTO_HORA,'
      '  EMAIL = :EMAIL,'
      '  NOME = :NOME,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  SENHA = :SENHA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 656
    Top = 392
    object MecanicosCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"OFC_MECANICOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object MecanicosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_MECANICOS"."CODIGO"'
      Required = True
    end
    object MecanicosCOM_PRAZO: TFloatField
      DisplayLabel = 'Prazo'
      FieldName = 'COM_PRAZO'
      Origin = '"OFC_MECANICOS"."COM_PRAZO"'
      DisplayFormat = '% ###,##0.00'
    end
    object MecanicosCOM_VISTA: TFloatField
      DisplayLabel = 'Vista'
      FieldName = 'COM_VISTA'
      Origin = '"OFC_MECANICOS"."COM_VISTA"'
      DisplayFormat = '% ###,##0.00'
    end
    object MecanicosNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object MecanicosPESSOA_FJ: TIntegerField
      DisplayLabel = 'Pessoa'
      FieldName = 'PESSOA_FJ'
      Origin = '"OFC_MECANICOS"."PESSOA_FJ"'
      Required = True
    end
    object MecanicosSENHA: TIBStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Origin = '"OFC_MECANICOS"."SENHA"'
      Size = 6
    end
    object MecanicosCREA: TIBStringField
      FieldName = 'CREA'
      Origin = '"OFC_MECANICOS"."CREA"'
    end
    object MecanicosCTPS: TIBStringField
      FieldName = 'CTPS'
      Origin = '"OFC_MECANICOS"."CTPS"'
    end
    object MecanicosEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"OFC_MECANICOS"."EMAIL"'
      Size = 80
    end
    object MecanicosCUSTO_HORA: TFloatField
      FieldName = 'CUSTO_HORA'
      Origin = '"OFC_MECANICOS"."CUSTO_HORA"'
      DisplayFormat = '###,##0.00'
    end
    object MecanicosCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = '"OFC_MECANICOS"."COD_USUARIO"'
    end
    object MecanicosASSINATURA: TMemoField
      FieldName = 'ASSINATURA'
      Origin = '"OFC_MECANICOS"."ASSINATURA"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object Viajante: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    OnNewRecord = ViajanteNewRecord
    DeleteSQL.Strings = (
      'delete from OFC_VIAJANTES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into OFC_VIAJANTES'
      '  (CNPJ, CODIGO, COM_PRAZO, COM_VISTA, NOME, PESSOA_FJ, SENHA)'
      'values'
      
        '  (:CNPJ, :CODIGO, :COM_PRAZO, :COM_VISTA, :NOME, :PESSOA_FJ, :S' +
        'ENHA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  COM_VISTA,'
      '  COM_PRAZO,'
      '  PESSOA_FJ,'
      '  SENHA'
      'from OFC_VIAJANTES '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          COM_PRAZO, '
      '          COM_VISTA, '
      '          NOME, '
      '          PESSOA_FJ,'
      '          SENHA '
      'from OFC_VIAJANTES'
      'Where CNPJ = :CNPJ'
      'Order by NOME')
    ModifySQL.Strings = (
      'update OFC_VIAJANTES'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  COM_PRAZO = :COM_PRAZO,'
      '  COM_VISTA = :COM_VISTA,'
      '  NOME = :NOME,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  SENHA = :SENHA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 368
    Top = 392
    object ViajanteCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"OFC_VIAJANTES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object ViajanteCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_VIAJANTES"."CODIGO"'
      Required = True
    end
    object ViajanteCOM_PRAZO: TFloatField
      DisplayLabel = 'Prazo'
      FieldName = 'COM_PRAZO'
      Origin = '"OFC_VIAJANTES"."COM_PRAZO"'
      DisplayFormat = '% ##0.00'
    end
    object ViajanteCOM_VISTA: TFloatField
      DisplayLabel = 'Vista'
      FieldName = 'COM_VISTA'
      Origin = '"OFC_VIAJANTES"."COM_VISTA"'
      DisplayFormat = '% ##0.00'
    end
    object ViajanteNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"OFC_VIAJANTES"."NOME"'
      Size = 50
    end
    object ViajantePESSOA_FJ: TIntegerField
      DisplayLabel = 'Pessoa'
      FieldName = 'PESSOA_FJ'
      Origin = '"OFC_VIAJANTES"."PESSOA_FJ"'
      Required = True
    end
    object ViajanteSENHA: TIBStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Origin = '"OFC_VIAJANTES"."SENHA"'
      Size = 6
    end
  end
  object Agrupador: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = AgrupadorAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = AgrupadorBeforePost
    DeleteSQL.Strings = (
      'delete from EST_AGRUPADORES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into EST_AGRUPADORES'
      '  (CNPJ, CODIGO, NOME)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME'
      'from EST_AGRUPADORES '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME '
      'from EST_AGRUPADORES'
      'Where CNPJ = :CNPJ'
      'Order by NOME')
    ModifySQL.Strings = (
      'update EST_AGRUPADORES'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 440
    Top = 392
    object AgrupadorCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"EST_AGRUPADORES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object AgrupadorCODIGO: TIBStringField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_AGRUPADORES"."CODIGO"'
      Required = True
      Size = 15
    end
    object AgrupadorNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"EST_AGRUPADORES"."NOME"'
      Required = True
      Size = 50
    end
  end
  object VENDEDOR_FAIXA: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterInsert = VENDEDOR_FAIXAAfterInsert
    OnNewRecord = VENDEDOR_FAIXANewRecord
    DeleteSQL.Strings = (
      'delete from FAT_VENDEDOR_FAIXAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  VALOR = :OLD_VALOR')
    InsertSQL.Strings = (
      'insert into FAT_VENDEDOR_FAIXAS'
      '  (CNPJ, CODIGO, PRAZO, VALOR, VISTA)'
      'values'
      '  (:CNPJ, :CODIGO, :PRAZO, :VALOR, :VISTA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  VALOR,'
      '  VISTA,'
      '  PRAZO'
      'from FAT_VENDEDOR_FAIXAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  VALOR = :VALOR')
    SelectSQL.Strings = (
      'select CNPJ, '
      '           CODIGO, '
      '            PRAZO, '
      '            VALOR, '
      '            VISTA '
      'from FAT_VENDEDOR_FAIXAS'
      'WHERE CNPJ = :CNPJ AND CODIGO = :CODIGO'
      'ORDER BY VALOR')
    ModifySQL.Strings = (
      'update FAT_VENDEDOR_FAIXAS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  PRAZO = :PRAZO,'
      '  VALOR = :VALOR,'
      '  VISTA = :VISTA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  VALOR = :OLD_VALOR')
    DataSource = DsVendedor
    Left = 16
    Top = 440
    object VENDEDOR_FAIXACNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDEDOR_FAIXAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object VENDEDOR_FAIXACODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDEDOR_FAIXAS"."CODIGO"'
      Required = True
    end
    object VENDEDOR_FAIXAPRAZO: TFloatField
      DisplayLabel = 'Prazo'
      FieldName = 'PRAZO'
      Origin = '"FAT_VENDEDOR_FAIXAS"."PRAZO"'
      DisplayFormat = '###,###,##0.00'
    end
    object VENDEDOR_FAIXAVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FAT_VENDEDOR_FAIXAS"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object VENDEDOR_FAIXAVISTA: TFloatField
      DisplayLabel = 'Vista'
      FieldName = 'VISTA'
      Origin = '"FAT_VENDEDOR_FAIXAS"."VISTA"'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object DsVendedor: TDataSource
    DataSet = Vendedores
    Left = 504
    Top = 344
  end
  object Cor: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    DeleteSQL.Strings = (
      'delete from EST_COR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into EST_COR'
      '  (CNPJ, CODIGO, NOME)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME'
      'from EST_COR '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME '
      'from EST_COR'
      'Where CNPJ = :CNPJ'
      'Order by NOME')
    ModifySQL.Strings = (
      'update EST_COR'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 88
    Top = 440
    object CorCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"EST_COR"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CorCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_COR"."CODIGO"'
      Required = True
    end
    object CorNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"EST_COR"."NOME"'
      Required = True
      Size = 50
    end
  end
  object Material: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    DeleteSQL.Strings = (
      'delete from EST_MATERIAL'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into EST_MATERIAL'
      '  (CNPJ, CODIGO, NOME)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME'
      'from EST_MATERIAL '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME '
      'from EST_MATERIAL'
      'Where CNPJ = :CNPJ'
      'Order by NOME')
    ModifySQL.Strings = (
      'update EST_MATERIAL'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 232
    Top = 392
    object MaterialCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"EST_MATERIAL"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object MaterialCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_MATERIAL"."CODIGO"'
      Required = True
    end
    object MaterialNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"EST_MATERIAL"."NOME"'
      Required = True
      Size = 50
    end
  end
  object Grades: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = GradesAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = GradesBeforePost
    OnNewRecord = GradesNewRecord
    DeleteSQL.Strings = (
      'delete from EST_PRODUTOS_GRADES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  GRADE = :OLD_GRADE')
    InsertSQL.Strings = (
      'insert into EST_PRODUTOS_GRADES'
      
        '  (CNPJ, PRODUTO, GRADE, MATERIAL, COR, ULTIMA_COMPRA, QTDADE_CO' +
        'MPRA, ULTIMA_VENDA, '
      
        '   QTDADE_VENDA, ESTOQUE, NOME_MATERIAL, NOME_COR, PERFIL, NOME_' +
        'PERFIL)'
      'values'
      
        '  (:CNPJ, :PRODUTO, :GRADE, :MATERIAL, :COR, :ULTIMA_COMPRA, :QT' +
        'DADE_COMPRA, '
      
        '   :ULTIMA_VENDA, :QTDADE_VENDA, :ESTOQUE, :NOME_MATERIAL, :NOME' +
        '_COR, :PERFIL, '
      '   :NOME_PERFIL)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PRODUTO,'
      '  GRADE,'
      '  MATERIAL,'
      '  COR,'
      '  ULTIMA_COMPRA,'
      '  QTDADE_COMPRA,'
      '  ULTIMA_VENDA,'
      '  QTDADE_VENDA,'
      '  ESTOQUE,'
      '  NOME_MATERIAL,'
      '  NOME_COR,'
      '  PERFIL,'
      '  NOME_PERFIL'
      'from EST_PRODUTOS_GRADES '
      'where'
      '  CNPJ = :CNPJ and'
      '  PRODUTO = :PRODUTO and'
      '  GRADE = :GRADE')
    SelectSQL.Strings = (
      'select '
      '    CNPJ,'
      '    PRODUTO,'
      '    GRADE,'
      '    MATERIAL,'
      '    COR,'
      '    ULTIMA_COMPRA,'
      '    QTDADE_COMPRA,'
      '    ULTIMA_VENDA,'
      '    QTDADE_VENDA,'
      '    ESTOQUE,'
      '    NOME_MATERIAL,'
      '    NOME_COR,'
      '    PERFIL,'
      '    NOME_PERFIL'
      'from EST_PRODUTOS_GRADES'
      'where CNPJ = :CNPJ and PRODUTO = :CODIGO')
    ModifySQL.Strings = (
      'update EST_PRODUTOS_GRADES'
      'set'
      '  CNPJ = :CNPJ,'
      '  PRODUTO = :PRODUTO,'
      '  GRADE = :GRADE,'
      '  MATERIAL = :MATERIAL,'
      '  COR = :COR,'
      '  ULTIMA_COMPRA = :ULTIMA_COMPRA,'
      '  QTDADE_COMPRA = :QTDADE_COMPRA,'
      '  ULTIMA_VENDA = :ULTIMA_VENDA,'
      '  QTDADE_VENDA = :QTDADE_VENDA,'
      '  ESTOQUE = :ESTOQUE,'
      '  NOME_MATERIAL = :NOME_MATERIAL,'
      '  NOME_COR = :NOME_COR,'
      '  PERFIL = :PERFIL,'
      '  NOME_PERFIL = :NOME_PERFIL'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  GRADE = :OLD_GRADE')
    DataSource = dsProdutos
    Left = 216
    Top = 440
    object GradesCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"EST_PRODUTOS_GRADES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object GradesPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"EST_PRODUTOS_GRADES"."PRODUTO"'
      Required = True
      Size = 15
    end
    object GradesMATERIAL: TIntegerField
      DisplayLabel = 'Material'
      FieldName = 'MATERIAL'
      Origin = '"EST_PRODUTOS_GRADES"."MATERIAL"'
      Required = True
    end
    object GradesCOR: TIntegerField
      DisplayLabel = 'Cor'
      FieldName = 'COR'
      Origin = '"EST_PRODUTOS_GRADES"."COR"'
      Required = True
    end
    object GradesULTIMA_COMPRA: TDateTimeField
      DisplayLabel = #218'lt. Compra'
      FieldName = 'ULTIMA_COMPRA'
      Origin = '"EST_PRODUTOS_GRADES"."ULTIMA_COMPRA"'
    end
    object GradesQTDADE_COMPRA: TFloatField
      DisplayLabel = 'Qtdade'
      FieldName = 'QTDADE_COMPRA'
      Origin = '"EST_PRODUTOS_GRADES"."QTDADE_COMPRA"'
      DisplayFormat = '###,##0.00'
    end
    object GradesULTIMA_VENDA: TDateTimeField
      DisplayLabel = #218'lt. Venda'
      FieldName = 'ULTIMA_VENDA'
      Origin = '"EST_PRODUTOS_GRADES"."ULTIMA_VENDA"'
    end
    object GradesQTDADE_VENDA: TFloatField
      DisplayLabel = 'Qtdade'
      FieldName = 'QTDADE_VENDA'
      Origin = '"EST_PRODUTOS_GRADES"."QTDADE_VENDA"'
      DisplayFormat = '###,##0.00'
    end
    object GradesESTOQUE: TFloatField
      DisplayLabel = 'Estoque'
      FieldName = 'ESTOQUE'
      Origin = '"EST_PRODUTOS_GRADES"."ESTOQUE"'
      DisplayFormat = '###,##0.00'
    end
    object GradesNOME_MATERIAL: TIBStringField
      DisplayLabel = 'Material'
      FieldName = 'NOME_MATERIAL'
      Origin = '"EST_PRODUTOS_GRADES"."NOME_MATERIAL"'
      Size = 50
    end
    object GradesNOME_COR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'NOME_COR'
      Origin = '"EST_PRODUTOS_GRADES"."NOME_COR"'
      Size = 50
    end
    object GradesPERFIL: TIntegerField
      DisplayLabel = 'Perfil'
      FieldName = 'PERFIL'
      Origin = '"EST_PRODUTOS_GRADES"."PERFIL"'
    end
    object GradesNOME_PERFIL: TIBStringField
      DisplayLabel = 'Perfil'
      FieldName = 'NOME_PERFIL'
      Origin = '"EST_PRODUTOS_GRADES"."NOME_PERFIL"'
      Size = 50
    end
    object GradesGRADE: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'GRADE'
      Origin = '"EST_PRODUTOS_GRADES"."GRADE"'
      Required = True
      FixedChar = True
      Size = 4
    end
  end
  object GRADES_NUMEROS: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    BeforeOpen = LogradourosBeforeOpen
    OnNewRecord = GRADES_NUMEROSNewRecord
    DeleteSQL.Strings = (
      'delete from EST_PRODUTOS_GRADES_NUMEROS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  GRADE = :OLD_GRADE and'
      '  NUMERO = :OLD_NUMERO and'
      '  PRODUTO = :OLD_PRODUTO')
    InsertSQL.Strings = (
      'insert into EST_PRODUTOS_GRADES_NUMEROS'
      '  (CNPJ, GRADE, NUMERO, PRODUTO, ESTOQUE, ORDEM)'
      'values'
      '  (:CNPJ, :GRADE, :NUMERO, :PRODUTO, :ESTOQUE, :ORDEM)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PRODUTO,'
      '  GRADE,'
      '  NUMERO,'
      '  ESTOQUE,'
      '  ORDEM'
      'from EST_PRODUTOS_GRADES_NUMEROS '
      'where'
      '  CNPJ = :CNPJ and'
      '  GRADE = :GRADE and'
      '  NUMERO = :NUMERO and'
      '  PRODUTO = :PRODUTO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '           GRADE, '
      '           NUMERO, '
      '           PRODUTO,'
      '           ESTOQUE, '
      '           ORDEM'
      'from EST_PRODUTOS_GRADES_NUMEROS'
      'WHERE CNPJ = :CNPJ AND GRADE = :GRADE AND'
      'PRODUTO = :PRODUTO'
      'ORDER BY ORDEM, NUMERO')
    ModifySQL.Strings = (
      'update EST_PRODUTOS_GRADES_NUMEROS'
      'set'
      '  ORDEM = :ORDEM'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  GRADE = :OLD_GRADE and'
      '  NUMERO = :OLD_NUMERO and'
      '  PRODUTO = :OLD_PRODUTO')
    DataSource = DsGrade
    Left = 296
    Top = 440
    object GRADES_NUMEROSCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"EST_PRODUTOS_GRADES_NUMEROS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object GRADES_NUMEROSPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"EST_PRODUTOS_GRADES_NUMEROS"."PRODUTO"'
      Required = True
      Size = 15
    end
    object GRADES_NUMEROSESTOQUE: TFloatField
      DisplayLabel = 'Estoque'
      FieldName = 'ESTOQUE'
      Origin = '"EST_PRODUTOS_GRADES_NUMEROS"."ESTOQUE"'
      DisplayFormat = '###,##0.00'
    end
    object GRADES_NUMEROSNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"EST_PRODUTOS_GRADES_NUMEROS"."NUMERO"'
      Size = 6
    end
    object GRADES_NUMEROSGRADE: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'GRADE'
      Origin = '"EST_PRODUTOS_GRADES_NUMEROS"."GRADE"'
      Required = True
      FixedChar = True
      Size = 4
    end
    object GRADES_NUMEROSORDEM: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'ORDEM'
      Origin = '"EST_PRODUTOS_GRADES_NUMEROS"."ORDEM"'
    end
  end
  object DsGrade: TDataSource
    AutoEdit = False
    DataSet = Grades
    Left = 648
    Top = 440
  end
  object Perfil_Grades: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = Perfil_GradesBeforePost
    DeleteSQL.Strings = (
      'delete from EST_GRADES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into EST_GRADES'
      '  (CNPJ, CODIGO, NOME, INICIAL, FINAL, INTERVALO)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME, :INICIAL, :FINAL, :INTERVALO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  INICIAL,'
      '  FINAL,'
      '  INTERVALO'
      'from EST_GRADES '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME,'
      '          INICIAL,'
      '          FINAL,'
      '          INTERVALO '
      'from EST_GRADES'
      'Where CNPJ = :CNPJ'
      'Order by NOME')
    ModifySQL.Strings = (
      'update EST_GRADES'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  INICIAL = :INICIAL,'
      '  FINAL = :FINAL,'
      '  INTERVALO = :INTERVALO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 368
    Top = 440
    object Perfil_GradesCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"EST_GRADES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Perfil_GradesCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_GRADES"."CODIGO"'
      Required = True
    end
    object Perfil_GradesNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"EST_GRADES"."NOME"'
      Required = True
      Size = 50
    end
    object Perfil_GradesINICIAL: TIntegerField
      FieldName = 'INICIAL'
      Origin = '"EST_GRADES"."INICIAL"'
    end
    object Perfil_GradesFINAL: TIntegerField
      FieldName = 'FINAL'
      Origin = '"EST_GRADES"."FINAL"'
    end
    object Perfil_GradesINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
      Origin = '"EST_GRADES"."INTERVALO"'
    end
  end
  object Carta_Garantia: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    OnPostError = AtividadesPostError
    DeleteSQL.Strings = (
      'delete from FAT_CARTA_GARANTIAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FAT_CARTA_GARANTIAS'
      '  (CNPJ, CODIGO, NOME, TEXTO)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME, :TEXTO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  TEXTO'
      'from FAT_CARTA_GARANTIAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME, '
      '          TEXTO '
      'from FAT_CARTA_GARANTIAS'
      'WHERE CNPJ = :CNPJ'
      'Order by NOME')
    ModifySQL.Strings = (
      'update FAT_CARTA_GARANTIAS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  TEXTO = :TEXTO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 440
    Top = 440
    object Carta_GarantiaCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_CARTA_GARANTIAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Carta_GarantiaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_CARTA_GARANTIAS"."CODIGO"'
      Required = True
    end
    object Carta_GarantiaNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_CARTA_GARANTIAS"."NOME"'
      Required = True
      Size = 50
    end
    object Carta_GarantiaTEXTO: TBlobField
      DisplayLabel = 'Texto'
      FieldName = 'TEXTO'
      Origin = '"FAT_CARTA_GARANTIAS"."TEXTO"'
      Size = 8
    end
  end
  object Perfil_Grades_Adicional: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnNewRecord = Perfil_Grades_AdicionalNewRecord
    DeleteSQL.Strings = (
      'delete from EST_GRADES_ADICIONAL'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  GRADE = :OLD_GRADE')
    InsertSQL.Strings = (
      'insert into EST_GRADES_ADICIONAL'
      '  (CNPJ, CODIGO, GRADE, ORDEM)'
      'values'
      '  (:CNPJ, :CODIGO, :GRADE, :ORDEM)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  GRADE,'
      '  ORDEM'
      'from EST_GRADES_ADICIONAL '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  GRADE = :GRADE')
    SelectSQL.Strings = (
      'select'
      '    CNPJ,'
      '    CODIGO,'
      '    GRADE,'
      '    ORDEM'
      'from EST_GRADES_ADICIONAL'
      'Where CNPJ = :CNPJ AND GRADE = :CODIGO')
    ModifySQL.Strings = (
      'update EST_GRADES_ADICIONAL'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  GRADE = :GRADE,'
      '  ORDEM = :ORDEM'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  GRADE = :OLD_GRADE')
    DataSource = DsPerfil_Grade
    Left = 16
    Top = 496
    object Perfil_Grades_AdicionalCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_GRADES_ADICIONAL"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Perfil_Grades_AdicionalCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_GRADES_ADICIONAL"."CODIGO"'
      Required = True
      OnSetText = Perfil_Grades_AdicionalCODIGOSetText
      Size = 6
    end
    object Perfil_Grades_AdicionalGRADE: TIntegerField
      DisplayLabel = 'Grade'
      FieldName = 'GRADE'
      Origin = '"EST_GRADES_ADICIONAL"."GRADE"'
      Required = True
    end
    object Perfil_Grades_AdicionalORDEM: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'ORDEM'
      Origin = '"EST_GRADES_ADICIONAL"."ORDEM"'
    end
  end
  object DsPerfil_Grade: TDataSource
    AutoEdit = False
    DataSet = Perfil_Grades
    Left = 504
    Top = 392
  end
  object Contratos: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    OnPostError = AtividadesPostError
    DeleteSQL.Strings = (
      'delete from GLO_TIPO_CONTRATO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into GLO_TIPO_CONTRATO'
      '  (CNPJ, CODIGO, NOME)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME'
      'from GLO_TIPO_CONTRATO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               NOME '
      'FROM GLO_TIPO_CONTRATO'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update GLO_TIPO_CONTRATO'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 440
    Top = 8
    object ContratosCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"GLO_TIPO_CONTRATO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object ContratosCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_TIPO_CONTRATO"."CODIGO"'
      Required = True
    end
    object ContratosNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"GLO_TIPO_CONTRATO"."NOME"'
      Required = True
      Size = 50
    end
  end
  object SelPropriedades: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    BeforeOpen = LogradourosBeforeOpen
    SQL.Strings = (
      'SELECT'
      '    NOME,'
      '    PROPRIETARIO,'
      '    IE,'
      '    ENDERECO,'
      '    COMPLEMENTO,'
      '    CIDADE,'
      '    NUMERO,'
      '    BAIRRO,'
      '    UF,'
      '    CEP,'
      '    AREA_TOTAL,'
      '    OBS,'
      '    ATIVA,'
      '    TIPO_CONTRATO,'
      '    NOME_CONTRATO,'
      '    PESSOA_FJ'
      'FROM VER_PROPRIEDADE_IE'
      '( :CNPJ, :IE_SERIE )'
      '')
    Left = 368
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'IE_SERIE'
        ParamType = ptUnknown
      end>
    object SelPropriedadesNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_PROPRIEDADE_IE"."NOME"'
      Size = 50
    end
    object SelPropriedadesPROPRIETARIO: TIBStringField
      DisplayLabel = 'Propriet'#225'rio'
      FieldName = 'PROPRIETARIO'
      Origin = '"VER_PROPRIEDADE_IE"."PROPRIETARIO"'
      Size = 50
    end
    object SelPropriedadesIE: TIBStringField
      DisplayLabel = 'Ie/S'#233'rie'
      FieldName = 'IE'
      Origin = '"VER_PROPRIEDADE_IE"."IE"'
      Size = 15
    end
    object SelPropriedadesENDERECO: TIBStringField
      DisplayLabel = 'End'
      FieldName = 'ENDERECO'
      Origin = '"VER_PROPRIEDADE_IE"."ENDERECO"'
      Size = 50
    end
    object SelPropriedadesCOMPLEMENTO: TIBStringField
      DisplayLabel = 'Compl'
      FieldName = 'COMPLEMENTO'
      Origin = '"VER_PROPRIEDADE_IE"."COMPLEMENTO"'
      Size = 30
    end
    object SelPropriedadesCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_PROPRIEDADE_IE"."CIDADE"'
      Size = 50
    end
    object SelPropriedadesNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"VER_PROPRIEDADE_IE"."NUMERO"'
      Size = 15
    end
    object SelPropriedadesBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_PROPRIEDADE_IE"."BAIRRO"'
      Size = 50
    end
    object SelPropriedadesUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"VER_PROPRIEDADE_IE"."UF"'
      FixedChar = True
      Size = 2
    end
    object SelPropriedadesCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"VER_PROPRIEDADE_IE"."CEP"'
      Size = 8
    end
    object SelPropriedadesAREA_TOTAL: TIBStringField
      DisplayLabel = #193'rea/Contador'
      FieldName = 'AREA_TOTAL'
      Origin = '"VER_PROPRIEDADE_IE"."AREA_TOTAL"'
      Size = 30
    end
    object SelPropriedadesOBS: TBlobField
      DisplayLabel = 'Obs'
      FieldName = 'OBS'
      Origin = '"VER_PROPRIEDADE_IE"."OBS"'
      Size = 8
    end
    object SelPropriedadesATIVA: TIBStringField
      DisplayLabel = 'Ativa'
      FieldName = 'ATIVA'
      Origin = '"VER_PROPRIEDADE_IE"."ATIVA"'
      FixedChar = True
      Size = 1
    end
    object SelPropriedadesTIPO_CONTRATO: TIntegerField
      DisplayLabel = 'Tipo Contrato'
      FieldName = 'TIPO_CONTRATO'
      Origin = '"VER_PROPRIEDADE_IE"."TIPO_CONTRATO"'
    end
    object SelPropriedadesNOME_CONTRATO: TIBStringField
      DisplayLabel = 'Contrato'
      FieldName = 'NOME_CONTRATO'
      Origin = '"VER_PROPRIEDADE_IE"."NOME_CONTRATO"'
      Size = 50
    end
    object SelPropriedadesPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_PROPRIEDADE_IE"."PESSOA_FJ"'
    end
  end
  object Modelo_Propriedade: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = LogradourosAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    OnPostError = AtividadesPostError
    DeleteSQL.Strings = (
      'delete from GLO_MODELO_PROPRIEDADE'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into GLO_MODELO_PROPRIEDADE'
      '  (CNPJ, CODIGO, NOME)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME'
      'from GLO_MODELO_PROPRIEDADE '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT'
      '    CNPJ,'
      '    CODIGO,'
      '    NOME'
      'FROM GLO_MODELO_PROPRIEDADE'
      'Where CNPJ = :CNPJ '
      'Order by Nome')
    ModifySQL.Strings = (
      'update GLO_MODELO_PROPRIEDADE'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 440
    Top = 56
    object Modelo_PropriedadeCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_MODELO_PROPRIEDADE"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Modelo_PropriedadeCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_MODELO_PROPRIEDADE"."CODIGO"'
      Required = True
    end
    object Modelo_PropriedadeNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"GLO_MODELO_PROPRIEDADE"."NOME"'
      Required = True
      Size = 50
    end
  end
  object Produtos_Tributacao: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnNewRecord = Produtos_TributacaoNewRecord
    DeleteSQL.Strings = (
      'delete from EST_PRODUTOS_TRIBUT_REVENDA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PRODUTO = :OLD_PRODUTO')
    InsertSQL.Strings = (
      'insert into EST_PRODUTOS_TRIBUT_REVENDA'
      '  (CNPJ, CTE, CTIE, PRODUTO)'
      'values'
      '  (:CNPJ, :CTE, :CTIE, :PRODUTO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PRODUTO,'
      '  CTE,'
      '  CTIE'
      'from EST_PRODUTOS_TRIBUT_REVENDA '
      'where'
      '  CNPJ = :CNPJ and'
      '  PRODUTO = :PRODUTO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CTE, '
      '          CTIE, '
      '          PRODUTO '
      'from EST_PRODUTOS_TRIBUT_REVENDA'
      'where CNPJ = :CNPJ AND PRODUTO = :CODIGO')
    ModifySQL.Strings = (
      'update EST_PRODUTOS_TRIBUT_REVENDA'
      'set'
      '  CNPJ = :CNPJ,'
      '  CTE = :CTE,'
      '  CTIE = :CTIE,'
      '  PRODUTO = :PRODUTO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PRODUTO = :OLD_PRODUTO')
    DataSource = dsProdutos
    Left = 504
    Top = 232
    object Produtos_TributacaoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_PRODUTOS_TRIBUT_REVENDA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Produtos_TributacaoCTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"EST_PRODUTOS_TRIBUT_REVENDA"."CTE"'
      Required = True
      OnGetText = Produtos_TributacaoCTEGetText
      OnSetText = Produtos_TributacaoCTIESetText
    end
    object Produtos_TributacaoCTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"EST_PRODUTOS_TRIBUT_REVENDA"."CTIE"'
      Required = True
      OnGetText = Produtos_TributacaoCTEGetText
      OnSetText = Produtos_TributacaoCTIESetText
    end
    object Produtos_TributacaoPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"EST_PRODUTOS_TRIBUT_REVENDA"."PRODUTO"'
      Required = True
      Size = 15
    end
  end
  object Tecnico: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = TecnicoAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LogradourosBeforePost
    DeleteSQL.Strings = (
      'delete from OFC_MECANICOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into OFC_MECANICOS'
      '  (CNPJ, CODIGO, NOME)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  COM_VISTA,'
      '  COM_PRAZO,'
      '  PESSOA_FJ,'
      '  SENHA'
      'from OFC_MECANICOS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, CODIGO, NOME from OFC_MECANICOS'
      'where CNPJ = :CNPJ'
      'order by NOME'
      '')
    ModifySQL.Strings = (
      'update OFC_MECANICOS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 504
    Top = 98
    object TecnicoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_MECANICOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object TecnicoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_MECANICOS"."CODIGO"'
      Required = True
    end
    object TecnicoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
  end
  object dsEdtSerieNF: TDataSource
    AutoEdit = False
    DataSet = EdtSerieNF
    Left = 584
    Top = 232
  end
  object EdtSerieNF: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from sis_empresas'
      'where'
      '  CNPJ = :OLD_CNPJ')
    InsertSQL.Strings = (
      'insert into sis_empresas'
      '  (CNPJ, CONFIG_SERIE_NF)'
      'values'
      '  (:CNPJ, :CONFIG_SERIE_NF)')
    RefreshSQL.Strings = (
      'select cnpj, config_serie_nf from sis_empresas'
      'where cnpj = :cnpj')
    SelectSQL.Strings = (
      'select cnpj, config_serie_nf from sis_empresas'
      'where cnpj = :cnpj')
    ModifySQL.Strings = (
      'update sis_empresas'
      'set'
      '  CNPJ = :CNPJ,'
      '  CONFIG_SERIE_NF = :CONFIG_SERIE_NF'
      'where'
      '  CNPJ = :OLD_CNPJ')
    Left = 152
    Top = 440
    object EdtSerieNFCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_EMPRESAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object EdtSerieNFCONFIG_SERIE_NF: TMemoField
      FieldName = 'CONFIG_SERIE_NF'
      Origin = '"SIS_EMPRESAS"."CONFIG_SERIE_NF"'
      BlobType = ftMemo
      Size = 8
    end
  end
  object edtCT13: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from sis_empresas'
      'where'
      '  CNPJ = :OLD_CNPJ')
    InsertSQL.Strings = (
      'insert into sis_empresas'
      '  (CNPJ, CONFIG_CT13)'
      'values'
      '  (:CNPJ, :CONFIG_CT13)')
    RefreshSQL.Strings = (
      'select cnpj, config_ct13 from sis_empresas'
      'where cnpj = :cnpj'
      '')
    SelectSQL.Strings = (
      'select cnpj, config_ct13 from sis_empresas'
      'where cnpj = :cnpj')
    ModifySQL.Strings = (
      'update sis_empresas'
      'set'
      '  CNPJ = :CNPJ,'
      '  CONFIG_CT13 = :CONFIG_CT13'
      'where'
      '  CNPJ = :OLD_CNPJ')
    Left = 232
    Top = 496
    object edtCT13CONFIG_CT13: TMemoField
      FieldName = 'CONFIG_CT13'
      Origin = '"SIS_EMPRESAS"."CONFIG_CT13"'
      BlobType = ftMemo
      Size = 8
    end
    object edtCT13CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_EMPRESAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
  end
  object dsEdtCT13: TDataSource
    AutoEdit = False
    DataSet = edtCT13
    Left = 296
    Top = 496
  end
  object edtServicoNF: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from sis_empresas'
      'where'
      '  CNPJ = :OLD_CNPJ')
    InsertSQL.Strings = (
      'insert into sis_empresas'
      '  (CNPJ, CONFIG_NF_SERV)'
      'values'
      '  (:CNPJ, :CONFIG_NF_SERV)')
    RefreshSQL.Strings = (
      'Select * '
      'from sis_empresas '
      'where'
      '  CNPJ = :CNPJ')
    SelectSQL.Strings = (
      'select cnpj, CONFIG_NF_SERV from sis_empresas'
      'where cnpj = :cnpj')
    ModifySQL.Strings = (
      'update sis_empresas'
      'set'
      '  CNPJ = :CNPJ,'
      '  CONFIG_NF_SERV = :CONFIG_NF_SERV'
      'where'
      '  CNPJ = :OLD_CNPJ')
    Left = 368
    Top = 496
    object edtServicoNFCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_EMPRESAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object edtServicoNFCONFIG_NF_SERV: TMemoField
      FieldName = 'CONFIG_NF_SERV'
      Origin = '"SIS_EMPRESAS"."CONFIG_NF_SERV"'
      BlobType = ftMemo
      Size = 8
    end
  end
  object dsEdtServicoNF: TDataSource
    AutoEdit = False
    DataSet = edtServicoNF
    Left = 432
    Top = 488
  end
  object edtFornecedores: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = Pessoas_FJAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = Pessoas_FJBeforePost
    DeleteSQL.Strings = (
      'delete from GLO_PESSOAS_FJ'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into GLO_PESSOAS_FJ'
      
        '  (CNPJ, CODIGO, NOME_RAZAO, FANTASIA, ATIVIDADE, ENDERECO, NUME' +
        'RO, '
      'COMPLEMENTO, '
      
        '   BAIRRO, CIDADE, UF, CEP, FONE, FAX, CELULAR, PESSOA, CPF_CGC,' +
        ' RG_IE, '
      '   CONTATO, DT_NASCIMENTO, DT_CADASTRO, EMAIL, OBS, INSC_MUNIC, '
      'CONVENIO, '
      '   EMISSOR, ORDEM)'
      'values'
      
        '  (:CNPJ, :CODIGO, :NOME_RAZAO, :FANTASIA, :ATIVIDADE, :ENDERECO' +
        ', '
      ':NUMERO, '
      
        '   :COMPLEMENTO, :BAIRRO, :CIDADE, :UF, :CEP, :FONE, :FAX, :CELU' +
        'LAR, '
      ':PESSOA, '
      
        '   :CPF_CGC, :RG_IE, :CONTATO, :DT_NASCIMENTO, :DT_CADASTRO, :EM' +
        'AIL, '
      ':OBS, '
      '   :INSC_MUNIC, :CONVENIO, :EMISSOR, :ORDEM)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME_RAZAO,'
      '  FANTASIA,'
      '  ATIVIDADE,'
      '  ENDERECO,'
      '  NUMERO,'
      '  COMPLEMENTO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  FONE,'
      '  FAX,'
      '  CELULAR,'
      '  PESSOA,'
      '  CPF_CGC,'
      '  RG_IE,'
      '  CONTATO,'
      '  DT_NASCIMENTO,'
      '  DT_CADASTRO,'
      '  EMAIL,'
      '  OBS,'
      '  INSC_MUNIC,'
      '  CONVENIO,'
      '  EMISSOR,'
      '  CONTATO1,'
      '  CONTATO2,'
      '  CONTATO3,'
      '  ORDEM'
      'from GLO_PESSOAS_FJ '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '       CODIGO,'
      '       NOME_RAZAO,'
      '       FANTASIA, '
      '       ATIVIDADE,'
      '       ENDERECO, '
      '       NUMERO, '
      '       COMPLEMENTO, '
      '       BAIRRO, '
      '       CIDADE, '
      '       UF, '
      '       CEP, '
      '       FONE,'
      '       FAX, '
      '       CELULAR, '
      '       PESSOA, '
      '       CPF_CGC, '
      '       RG_IE, '
      '       CONTATO, '
      '       DT_NASCIMENTO, '
      '       DT_CADASTRO, '
      '       EMAIL, '
      '       OBS,'
      '       INSC_MUNIC,'
      '       CONVENIO,'
      '       EMISSOR,'
      '       ORDEM'
      '       '
      'FROM GLO_PESSOAS_FJ psa'
      'WHERE psa.CNPJ = :CNPJ'
      'ORDER BY NOME_RAZAO')
    ModifySQL.Strings = (
      'update GLO_PESSOAS_FJ'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME_RAZAO = :NOME_RAZAO,'
      '  FANTASIA = :FANTASIA,'
      '  ATIVIDADE = :ATIVIDADE,'
      '  ENDERECO = :ENDERECO,'
      '  NUMERO = :NUMERO,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CEP = :CEP,'
      '  FONE = :FONE,'
      '  FAX = :FAX,'
      '  CELULAR = :CELULAR,'
      '  PESSOA = :PESSOA,'
      '  CPF_CGC = :CPF_CGC,'
      '  RG_IE = :RG_IE,'
      '  CONTATO = :CONTATO,'
      '  DT_NASCIMENTO = :DT_NASCIMENTO,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  EMAIL = :EMAIL,'
      '  OBS = :OBS,'
      '  INSC_MUNIC = :INSC_MUNIC,'
      '  CONVENIO = :CONVENIO,'
      '  EMISSOR = :EMISSOR,'
      '  ORDEM = :ORDEM'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 584
    Top = 192
    object edtFornecedoresCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_PESSOAS_FJ"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object edtFornecedoresCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
    object edtFornecedoresNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
    object edtFornecedoresFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object edtFornecedoresATIVIDADE: TIntegerField
      FieldName = 'ATIVIDADE'
      Origin = '"GLO_PESSOAS_FJ"."ATIVIDADE"'
      Required = True
    end
    object edtFornecedoresENDERECO: TIntegerField
      FieldName = 'ENDERECO'
      Origin = '"GLO_PESSOAS_FJ"."ENDERECO"'
      Required = True
    end
    object edtFornecedoresNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"GLO_PESSOAS_FJ"."NUMERO"'
      Size = 15
    end
    object edtFornecedoresCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_PESSOAS_FJ"."COMPLEMENTO"'
      Size = 30
    end
    object edtFornecedoresBAIRRO: TIntegerField
      FieldName = 'BAIRRO'
      Origin = '"GLO_PESSOAS_FJ"."BAIRRO"'
      Required = True
    end
    object edtFornecedoresCIDADE: TIntegerField
      FieldName = 'CIDADE'
      Origin = '"GLO_PESSOAS_FJ"."CIDADE"'
      Required = True
      OnValidate = edtFornecedoresCIDADEValidate
    end
    object edtFornecedoresUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PESSOAS_FJ"."UF"'
      FixedChar = True
      Size = 2
    end
    object edtFornecedoresCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"GLO_PESSOAS_FJ"."CEP"'
      Size = 8
    end
    object edtFornecedoresFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object edtFornecedoresFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object edtFornecedoresCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"GLO_PESSOAS_FJ"."CELULAR"'
    end
    object edtFornecedoresPESSOA: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"GLO_PESSOAS_FJ"."PESSOA"'
      OnGetText = edtFornecedoresPESSOAGetText
      OnSetText = edtFornecedoresPESSOASetText
      FixedChar = True
      Size = 1
    end
    object edtFornecedoresCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      OnValidate = edtFornecedoresCPF_CGCValidate
      EditMask = '00.000.000/0000-00;0;_'
      Size = 15
    end
    object edtFornecedoresRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"GLO_PESSOAS_FJ"."RG_IE"'
      Size = 15
    end
    object edtFornecedoresCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO"'
      Size = 30
    end
    object edtFornecedoresDT_NASCIMENTO: TDateTimeField
      FieldName = 'DT_NASCIMENTO'
      Origin = '"GLO_PESSOAS_FJ"."DT_NASCIMENTO"'
    end
    object edtFornecedoresDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
      Origin = '"GLO_PESSOAS_FJ"."DT_CADASTRO"'
      Required = True
    end
    object edtFornecedoresEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"GLO_PESSOAS_FJ"."EMAIL"'
      Size = 80
    end
    object edtFornecedoresOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"GLO_PESSOAS_FJ"."OBS"'
      Size = 8
    end
    object edtFornecedoresINSC_MUNIC: TIBStringField
      FieldName = 'INSC_MUNIC'
      Origin = '"GLO_PESSOAS_FJ"."INSC_MUNIC"'
      Size = 15
    end
    object edtFornecedoresCONVENIO: TIntegerField
      FieldName = 'CONVENIO'
      Origin = '"GLO_PESSOAS_FJ"."CONVENIO"'
    end
    object edtFornecedoresEMISSOR: TIBStringField
      FieldName = 'EMISSOR'
      Origin = '"GLO_PESSOAS_FJ"."EMISSOR"'
      Size = 6
    end
    object edtFornecedoresORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = '"GLO_PESSOAS_FJ"."ORDEM"'
    end
  end
  object dsPessoaForn: TDataSource
    AutoEdit = False
    DataSet = edtFornecedores
    Left = 88
    Top = 56
  end
  object dsEdtFornecedores: TDataSource
    AutoEdit = False
    DataSet = edtFornecedores
    Left = 152
    Top = 496
  end
  object Mesas: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    BeforeOpen = LogradourosBeforeOpen
    OnNewRecord = MesasNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_MESAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FAT_MESAS'
      '  (CNPJ, CODIGO, CODIGO_2, ATIVO)'
      'values'
      '  (:CNPJ, :CODIGO, :CODIGO_2, :ATIVO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  CODIGO_2,'
      '  CNPJ,'
      '  ATIVO'
      'from FAT_MESAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT CNPJ, '
      '               CODIGO, '
      '               CODIGO_2, '
      '               ATIVO'
      'FROM FAT_MESAS'
      'WHERE CNPJ = :CNPJ '
      'ORDER BY CODIGO_2')
    ModifySQL.Strings = (
      'update FAT_MESAS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  CODIGO_2 = :CODIGO_2,'
      '  ATIVO = :ATIVO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'FAT_MESAS_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 232
    Top = 56
    object MesasCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_MESAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object MesasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_MESAS"."CODIGO"'
      Required = True
    end
    object MesasCODIGO_2: TIBStringField
      FieldName = 'CODIGO_2'
      Origin = '"FAT_MESAS"."CODIGO_2"'
      Size = 10
    end
    object MesasATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"FAT_MESAS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
  end
  object lstEstados: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = LogradourosBeforeOpen
    SQL.Strings = (
      'select e.sigla, e.nome from glo_estados e'
      'where e.cnpj=:cnpj')
    Left = 368
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object lstEstadosSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = '"GLO_ESTADOS"."SIGLA"'
      FixedChar = True
      Size = 2
    end
    object lstEstadosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_ESTADOS"."NOME"'
      Required = True
      Size = 50
    end
  end
  object Regioes: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = RegioesAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    DeleteSQL.Strings = (
      'delete from glo_regioes'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into glo_regioes'
      '  (CNPJ, CODIGO, NOME, VENDEDOR, TERCEIRO, DESCRICAO, TECNICO)'
      'values'
      
        '  (:CNPJ, :CODIGO, :NOME, :VENDEDOR, :TERCEIRO, :DESCRICAO, :TEC' +
        'NICO)')
    RefreshSQL.Strings = (
      'Select *'
      'from glo_regioes '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from glo_regioes r'
      'where r.cnpj = :cnpj')
    ModifySQL.Strings = (
      'update glo_regioes'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  VENDEDOR = :VENDEDOR,'
      '  TERCEIRO = :TERCEIRO,'
      '  DESCRICAO = :DESCRICAO,'
      '  TECNICO = :TECNICO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GLO_REGIAO_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 784
    Top = 184
    object RegioesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_REGIOES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object RegioesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_REGIOES"."CODIGO"'
      Required = True
    end
    object RegioesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_REGIOES"."NOME"'
      Size = 50
    end
    object RegioesVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"GLO_REGIOES"."VENDEDOR"'
    end
    object RegioesTERCEIRO: TIntegerField
      FieldName = 'TERCEIRO'
      Origin = '"GLO_REGIOES"."TERCEIRO"'
    end
    object RegioesDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"GLO_REGIOES"."DESCRICAO"'
      Size = 100
    end
    object RegioesTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = '"GLO_REGIOES"."TECNICO"'
    end
  end
  object SelProdutos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = LogradourosBeforeOpen
    SQL.Strings = (
      'SELECT CODIGO, '
      '               NOME ,'
      '              serie'
      'FROM EST_PRODUTOS'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    Left = 16
    Top = 544
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelProdutosCODIGO: TIBStringField
      DisplayWidth = 15
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Required = True
      Size = 15
    end
    object SelProdutosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object SelProdutos_Cod_Nome: TStringField
      DisplayWidth = 66
      FieldKind = fkCalculated
      FieldName = '_Cod_Nome'
      Size = 65
      Calculated = True
    end
    object SelProdutosSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
  end
  object SelSubGrupo: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = LogradourosBeforeOpen
    DataSource = dsLinkGrupo
    SQL.Strings = (
      'select CNPJ, GRUPO, NOME, SUBGRUPO from EST_SUBGRUPOS'
      'Where CNPJ = :CNPJ AND GRUPO = :CODIGO'
      'ORDER BY NOME')
    Left = 440
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object SelSubGrupoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_SUBGRUPOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelSubGrupoGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"EST_SUBGRUPOS"."GRUPO"'
      Required = True
    end
    object SelSubGrupoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_SUBGRUPOS"."NOME"'
      Required = True
      Size = 50
    end
    object SelSubGrupoSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = '"EST_SUBGRUPOS"."SUBGRUPO"'
      Required = True
    end
  end
  object SelGrupo: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = LogradourosBeforeOpen
    SQL.Strings = (
      'SELECT CODIGO, '
      '               NOME ,'
      '               SELECIONADO'
      'FROM EST_GRUPOS'
      'WHERE CNPJ = :CNPJ '
      'ORDER BY NOME')
    Left = 88
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelGrupoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_GRUPOS"."CODIGO"'
      Required = True
    end
    object SelGrupoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_GRUPOS"."NOME"'
      Required = True
      Size = 50
    end
    object SelGrupoSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"EST_GRUPOS"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
  end
  object SelMarca: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = LogradourosBeforeOpen
    SQL.Strings = (
      'select CNPJ, CODIGO, NOME, SELECIONADO '
      'from EST_MARCAS'
      'WHERE CNPJ = :CNPJ'
      'order by NOME')
    Left = 248
    Top = 544
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelMarcaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_MARCAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelMarcaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_MARCAS"."CODIGO"'
      Required = True
    end
    object SelMarcaNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"EST_MARCAS"."NOME"'
      Required = True
      Size = 50
    end
    object SelMarcaSELECIONADO: TIBStringField
      DisplayLabel = 'Sel'
      FieldName = 'SELECIONADO'
      Origin = '"EST_MARCAS"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
  end
  object qryLocalizarProduto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = LogradourosBeforeOpen
    SQL.Strings = (
      
        'select prd.codigo, prd.codigo_fabricante, prd.complemento, prd.n' +
        'ome , prd.qtdade_2 , prd.qtdade_1,'
      
        'prd.prc_venda, prd.codigo_2, prd.PRC_REPOS, mr.nome marca, prd.s' +
        'erie,'
      'mdl.codigo mdl_codigo, mdl.nome modelo,'
      
        's.nome secao, prd.localizacao_1, prd.localizacao_2, prd.localiza' +
        'cao_3'
      'from est_produtos prd'
      
        'left join est_marcas mr on (mr.cnpj = prd.cnpj and mr.codigo = p' +
        'rd.marca)'
      
        'left join est_secao s on (s.cnpj = prd.cnpj and s.cod_secao = pr' +
        'd.secao)'
      
        'left join glo_modelo_propriedade mdl on (mdl.cnpj = prd.cnpj and' +
        ' mdl.codigo = prd.modelo)')
    Left = 336
    Top = 544
    object qryLocalizarProdutoCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Required = True
      Size = 15
    end
    object qryLocalizarProdutoNOME: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object qryLocalizarProdutoQTDADE_2: TFloatField
      DisplayLabel = 'Estoque F'#237'sico'
      FieldName = 'QTDADE_2'
      Origin = '"EST_PRODUTOS"."QTDADE_2"'
      DisplayFormat = '###,##0.00'
    end
    object qryLocalizarProdutoQTDADE_1: TFloatField
      DisplayLabel = 'Estoque Fiscal'
      FieldName = 'QTDADE_1'
      Origin = '"EST_PRODUTOS"."QTDADE_1"'
      DisplayFormat = '###,##0.00'
    end
    object qryLocalizarProdutoPRC_VENDA: TFloatField
      DisplayLabel = 'Prc. Venda'
      FieldName = 'PRC_VENDA'
      Origin = '"EST_PRODUTOS"."PRC_VENDA"'
      DisplayFormat = '###,##0.00'
    end
    object qryLocalizarProdutoCODIGO_2: TIBStringField
      DisplayLabel = 'C'#243'digo Aux.'
      FieldName = 'CODIGO_2'
      Origin = '"EST_PRODUTOS"."CODIGO_2"'
      Size = 15
    end
    object qryLocalizarProdutoPRC_REPOS: TFloatField
      DisplayLabel = 'Prc. Reposi'#231#227'o'
      FieldName = 'PRC_REPOS'
      Origin = '"EST_PRODUTOS"."PRC_REPOS"'
      DisplayFormat = '###,##0.00'
    end
    object qryLocalizarProdutoMARCA: TIBStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Origin = '"EST_MARCAS"."NOME"'
      Size = 50
    end
    object qryLocalizarProdutoSERIE: TIBStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
    object qryLocalizarProdutoMDL_CODIGO: TIntegerField
      FieldName = 'MDL_CODIGO'
      Origin = '"GLO_MODELO_PROPRIEDADE"."CODIGO"'
    end
    object qryLocalizarProdutoMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"GLO_MODELO_PROPRIEDADE"."NOME"'
      Size = 50
    end
    object qryLocalizarProdutoSECAO: TIBStringField
      DisplayLabel = 'Se'#231#227'o'
      FieldName = 'SECAO'
      Origin = '"EST_SECAO"."NOME"'
      Size = 50
    end
    object qryLocalizarProdutoLOCALIZACAO_1: TIBStringField
      DisplayLabel = 'Localiza'#231#227'o 1'
      FieldName = 'LOCALIZACAO_1'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_1"'
      Size = 30
    end
    object qryLocalizarProdutoLOCALIZACAO_2: TIBStringField
      DisplayLabel = 'Localiza'#231#227'o 2'
      FieldName = 'LOCALIZACAO_2'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_2"'
      Size = 30
    end
    object qryLocalizarProdutoLOCALIZACAO_3: TIBStringField
      DisplayLabel = 'Localiza'#231#227'o 3'
      FieldName = 'LOCALIZACAO_3'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_3"'
      Size = 30
    end
    object qryLocalizarProdutoCODIGO_FABRICANTE: TIBStringField
      DisplayLabel = 'C'#243'd. Frabricante'
      FieldName = 'CODIGO_FABRICANTE'
      Origin = '"EST_PRODUTOS"."CODIGO_FABRICANTE"'
      Size = 50
    end
    object qryLocalizarProdutoCOMPLEMENTO: TIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Origin = '"EST_PRODUTOS"."COMPLEMENTO"'
      Size = 100
    end
  end
  object Paises: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    BeforeOpen = LogradourosBeforeOpen
    OnNewRecord = EstadosNewRecord
    DeleteSQL.Strings = (
      'delete from glo_pais'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into glo_pais'
      
        '  (CNPJ, CODIGO, NOME, SISCOMEX, NACIONALIDADE, COD_MOEDA, SIGLA' +
        ')'
      'values'
      
        '  (:CNPJ, :CODIGO, :NOME, :SISCOMEX, :NACIONALIDADE, :COD_MOEDA,' +
        ' :SIGLA)')
    RefreshSQL.Strings = (
      'Select * '
      'from glo_pais '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from glo_pais'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update glo_pais'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  SISCOMEX = :SISCOMEX,'
      '  NACIONALIDADE = :NACIONALIDADE,'
      '  COD_MOEDA = :COD_MOEDA,'
      '  SIGLA = :SIGLA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_GLO_PAIS_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 648
    Top = 544
    object PaisesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_PAIS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object PaisesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PAIS"."CODIGO"'
      Required = True
    end
    object PaisesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_PAIS"."NOME"'
      Size = 50
    end
    object PaisesSISCOMEX: TIBStringField
      FieldName = 'SISCOMEX'
      Origin = '"GLO_PAIS"."SISCOMEX"'
    end
    object PaisesNACIONALIDADE: TIBStringField
      FieldName = 'NACIONALIDADE'
      Origin = '"GLO_PAIS"."NACIONALIDADE"'
    end
    object PaisesCOD_MOEDA: TIntegerField
      FieldName = 'COD_MOEDA'
      Origin = '"GLO_PAIS"."COD_MOEDA"'
    end
    object PaisesSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = '"GLO_PAIS"."SIGLA"'
      Size = 6
    end
  end
  object EdtCopiaCheque: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from sis_empresas'
      'where'
      '  CNPJ = :OLD_CNPJ')
    InsertSQL.Strings = (
      'insert into sis_empresas'
      '  (CNPJ, CONFIG_COPIA_CHEQUE)'
      'values'
      '  (:CNPJ, :CONFIG_COPIA_CHEQUE)')
    RefreshSQL.Strings = (
      'Select *'
      'from sis_empresas '
      'where'
      '  CNPJ = :CNPJ')
    SelectSQL.Strings = (
      'select cnpj, CONFIG_COPIA_CHEQUE from sis_empresas')
    ModifySQL.Strings = (
      'update sis_empresas'
      'set'
      '  CNPJ = :CNPJ,'
      '  CONFIG_COPIA_CHEQUE = :CONFIG_COPIA_CHEQUE'
      'where'
      '  CNPJ = :OLD_CNPJ')
    Left = 584
    Top = 392
    object EdtCopiaChequeCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_EMPRESAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object EdtCopiaChequeCONFIG_COPIA_CHEQUE: TMemoField
      FieldName = 'CONFIG_COPIA_CHEQUE'
      Origin = '"SIS_EMPRESAS"."CONFIG_COPIA_CHEQUE"'
      BlobType = ftMemo
      Size = 8
    end
  end
  object EdtSerieOrcNF: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from sis_empresas'
      'where'
      '  CNPJ = :OLD_CNPJ')
    InsertSQL.Strings = (
      'insert into sis_empresas'
      '  (CNPJ, CONFIG_SERIE_ORC_NF)'
      'values'
      '  (:CNPJ, :CONFIG_SERIE_ORC_NF)')
    RefreshSQL.Strings = (
      'Select *'
      'from sis_empresas '
      'where'
      '  CNPJ = :CNPJ')
    SelectSQL.Strings = (
      'select cnpj, config_serie_orc_nf from sis_empresas'
      'where cnpj = :cnpj')
    ModifySQL.Strings = (
      'update sis_empresas'
      'set'
      '  CNPJ = :CNPJ,'
      '  CONFIG_SERIE_ORC_NF = :CONFIG_SERIE_ORC_NF'
      'where'
      '  CNPJ = :OLD_CNPJ')
    Left = 504
    Top = 440
    object EdtSerieOrcNFCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_EMPRESAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object EdtSerieOrcNFCONFIG_SERIE_ORC_NF: TMemoField
      FieldName = 'CONFIG_SERIE_ORC_NF'
      Origin = '"SIS_EMPRESAS"."CONFIG_SERIE_ORC_NF"'
      BlobType = ftMemo
      Size = 8
    end
  end
  object dsSerieOrcNF: TDataSource
    DataSet = EdtSerieOrcNF
    Left = 584
    Top = 488
  end
  object Produtos: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterEdit = ProdutosAfterEdit
    AfterInsert = ProdutosAfterInsert
    AfterPost = ProdutosAfterPost
    BeforeOpen = ProdutosBeforeOpen
    BeforePost = ProdutosBeforePost
    OnCalcFields = ProdutosCalcFields
    OnNewRecord = ProdutosNewRecord
    DeleteSQL.Strings = (
      'delete from EST_PRODUTOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into EST_PRODUTOS'
      '  (CNPJ, '
      '   CODIGO,'
      '   CSOSN,'
      '   COD_GETIN,'
      '   VENCTO_PRC_VENDA,'
      '   trib_ipi,'
      '   trib_cofins,'
      '   trib_pis,'
      '   cor,'
      '   material,'
      '   CODIGO_FABRICANTE,'
      '   APLICACAO ,'
      '   IMG_2,'
      '   IMG_1,'
      '   IMG_3,'
      '   IMG_4,'
      '   codigo_ncm,'
      '   trib_aliq_est,'
      '   trib_aliq_int,'
      '   trib_modalidade, '
      '   und_carregamento, '
      '   qntde_pdr_carga, '
      '   sincroniza_filiais, '
      '   und_primaria, '
      '   fator_conversao ,'
      '   valida_mult_qtde_min, '
      '   qntde_minima_venda, '
      '   debita_icms, '
      '   SECAO,  '
      '   ALIQUOTA_ECF, '
      '   ATIVO,  '
      '   ATUALIZA_ARQ_EXTERNO, '
      '   ATUALIZAR, '
      '  CNPJ_AGRUP, '
      '  COD_AGRUP, '
      '  CODIGO_2, '
      '  CODIGO_INTERNO, '
      '  COFINS,  '
      '  COM_VENDA_PCT, '
      '  COM_VENDA_VLR, '
      '  COMPLEMENTO, '
      '  COMPLEMENTO_NF, '
      '  CTE, '
      '  CTIE, '
      '  CUSTO_AQUISICAO, '
      '  CUSTO_INDEXADO, '
      '  DT_ULT_ATU_PRECO, '
      '  DT_ULT_COMPRA, '
      '  DT_ULT_VENDA, '
      '  EST_MAX, '
      '  EST_MIN, '
      '  ETIQUETA_ENT, '
      '  FORNECEDOR, '
      '  GRUPO, '
      '  IPI, '
      '  LOCALIZACAO_1, '
      '  LOCALIZACAO_2, '
      '  LOCALIZACAO_3, '
      '  MARCA, '
      '  MARGEM_BRUTA, '
      '  MODELO, '
      '  NAO_COBR_JUR_ATE, '
      '  NEG_QTDADE_2, '
      '  NOME, '
      '  NOME_MARCA, '
      '  NOME_MODELO, '
      '  ORIGEM, '
      '  PARTICIP_LUCRO, '
      '  PERC_FRETE, '
      '  PESO_LIQ, '
      '  PIS, '
      '  POSSUI_LOTE, '
      '  PRC_CUSTO_ANT, '
      '  PRC_CUSTO_CODIF, '
      '  PRC_CUSTO_MED, '
      '  PRC_REPOS, '
      '  PRC_VENDA, '
      '  PRC_VENDA_ANT, '
      '  PRC_VENDA_MED, '
      '  PREVISAO_ENTREGA, '
      '  PROD_PESAVEL, '
      '  QNTDE_EXPOSTA, '
      '  QNTDE_MAXIMA_VENDA, '
      '  QNTDE_PEDIDA, '
      '  QT_ULT_COMPRA, '
      '  QTDADE_1, '
      '  QTDADE_2, '
      '  QTDADE_MAX, '
      '  QTDADE_MIN, '
      '  REDUCAO, '
      '  SERIE, '
      '  SERVICO, '
      '  SUBGRUPO, '
      '  SUBUNIDADE, '
      '  ULTIMO_FORNECEDOR, '
      '  UNIDADE, '
      '  VALIDADE, '
      '  VENDE_FRACIONADO, '
      '  VOLUME,'
      'cod_localizacao_1,'
      'cod_localizacao_2,'
      'cod_localizacao_3,'
      'COD_TECNICO'
      ')'
      'values'
      '  (:CNPJ, '
      '   :CODIGO,'
      '   :CSOSN,'
      '   :COD_GETIN,'
      '   :VENCTO_PRC_VENDA,'
      '   :trib_ipi,'
      '   :trib_cofins,'
      '   :trib_pis,'
      '   :cor,'
      '   :material,'
      '   :CODIGO_FABRICANTE,'
      '   :APLICACAO ,'
      '   :IMG_2,'
      '   :IMG_1,'
      '   :IMG_3,'
      '   :IMG_4,  '
      '   :codigo_ncm,'
      '   :trib_aliq_est,'
      '   :trib_aliq_int,'
      '   :trib_modalidade,  '
      
        '  :und_carregamento,  :qntde_pdr_carga, :sincroniza_filiais, :un' +
        'd_primaria, :fator_conversao, :valida_mult_qtde_min,  :qntde_min' +
        'ima_venda, :debita_icms, :SECAO,  :ALIQUOTA_ECF, :ATIVO, '
      ':ATUALIZA_ARQ_EXTERNO, '
      ':ATUALIZAR, '
      ':CNPJ_AGRUP, '
      
        '   :COD_AGRUP, :CODIGO_2, :CODIGO_INTERNO, :COFINS, :COM_VENDA_P' +
        'CT, '
      ':COM_VENDA_VLR, '
      
        '   :COMPLEMENTO, :COMPLEMENTO_NF, :CTE, :CTIE, :CUSTO_AQUISICAO,' +
        ' '
      ':CUSTO_INDEXADO, '
      '   :DT_ULT_ATU_PRECO, :DT_ULT_COMPRA, :DT_ULT_VENDA, :EST_MAX, '
      ':EST_MIN, '
      '   :ETIQUETA_ENT, :FORNECEDOR, :GRUPO, :IPI, :LOCALIZACAO_1, '
      ':LOCALIZACAO_2, '
      '   :LOCALIZACAO_3, :MARCA, :MARGEM_BRUTA, :MODELO, '
      ':NAO_COBR_JUR_ATE, :NEG_QTDADE_2, '
      '   :NOME, :NOME_MARCA, :NOME_MODELO, :ORIGEM, :PARTICIP_LUCRO, '
      ':PERC_FRETE, '
      
        '   :PESO_LIQ, :PIS, :POSSUI_LOTE, :PRC_CUSTO_ANT, :PRC_CUSTO_COD' +
        'IF, '
      ':PRC_CUSTO_MED, '
      '   :PRC_REPOS, :PRC_VENDA, :PRC_VENDA_ANT, :PRC_VENDA_MED, '
      ':PREVISAO_ENTREGA, '
      '   :PROD_PESAVEL, :QNTDE_EXPOSTA, :QNTDE_MAXIMA_VENDA, '
      ':QNTDE_PEDIDA, :QT_ULT_COMPRA, '
      
        '   :QTDADE_1, :QTDADE_2, :QTDADE_MAX, :QTDADE_MIN, :REDUCAO, :SE' +
        'RIE, '
      ':SERVICO, '
      
        '   :SUBGRUPO, :SUBUNIDADE, :ULTIMO_FORNECEDOR, :UNIDADE, :VALIDA' +
        'DE, '
      ':VENDE_FRACIONADO, '
      '   :VOLUME,'
      ':cod_localizacao_1,'
      ':cod_localizacao_2,'
      ':cod_localizacao_3,'
      ':COD_TECNICO)')
    RefreshSQL.Strings = (
      'select * from pcd_lista_produto(:empresa, :produto)'
      'ORDER BY NOME')
    SelectSQL.Strings = (
      'select *  from pcd_lista_produto(:empresa, :produto)'
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update EST_PRODUTOS'
      'set'
      'VENCTO_PRC_VENDA = :VENCTO_PRC_VENDA,'
      'COD_TECNICO = :COD_TECNICO,'
      'trib_ipi = :trib_ipi,'
      'CSOSN = :CSOSN,'
      'trib_cofins = :trib_cofins,'
      'trib_pis = :trib_pis,'
      'cor = :cor,'
      'material = :material,'
      'COD_GETIN = :COD_GETIN,'
      'CODIGO_FABRICANTE = :CODIGO_FABRICANTE,'
      'APLICACAO = :APLICACAO ,'
      'IMG_2 = :IMG_2,'
      'IMG_1 = :IMG_1,'
      'IMG_3 = :IMG_3,'
      'IMG_4 = :IMG_4,'
      'codigo_ncm = :codigo_ncm,'
      'TRIB_ALIQ_EST = :TRIB_ALIQ_EST,'
      'TRIB_ALIQ_INT =     :TRIB_ALIQ_INT,'
      'TRIB_MODALIDADE =   :TRIB_MODALIDADE,'
      'und_carregamento = :und_carregamento,'
      'qntde_pdr_carga = :qntde_pdr_carga,'
      'sincroniza_filiais = :sincroniza_filiais, '
      'und_primaria = :und_primaria, '
      ' fator_conversao = :fator_conversao,'
      ' SECAO = :SECAO, '
      ' qntde_minima_venda = :qntde_minima_venda,'
      ' valida_mult_qtde_min = :valida_mult_qtde_min, '
      ' debita_icms = :debita_icms,'
      '  ALIQUOTA_ECF = :ALIQUOTA_ECF,'
      '  ATIVO = :ATIVO,'
      '  ATUALIZA_ARQ_EXTERNO = :ATUALIZA_ARQ_EXTERNO,'
      '  ATUALIZAR = :ATUALIZAR,'
      '  CNPJ_AGRUP = :CNPJ_AGRUP,'
      '  COD_AGRUP = :COD_AGRUP,'
      '  CODIGO_2 = :CODIGO_2,'
      '  CODIGO_INTERNO = :CODIGO_INTERNO,'
      '  COFINS = :COFINS,'
      '  COM_VENDA_PCT = :COM_VENDA_PCT,'
      '  COM_VENDA_VLR = :COM_VENDA_VLR,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  COMPLEMENTO_NF = :COMPLEMENTO_NF,'
      '  CTE = :CTE,'
      '  CTIE = :CTIE,'
      '  CUSTO_AQUISICAO = :CUSTO_AQUISICAO,'
      '  CUSTO_INDEXADO = :CUSTO_INDEXADO,'
      '  DT_ULT_ATU_PRECO = :DT_ULT_ATU_PRECO,'
      '  DT_ULT_COMPRA = :DT_ULT_COMPRA,'
      '  DT_ULT_VENDA = :DT_ULT_VENDA,'
      '  EST_MAX = :EST_MAX,'
      '  EST_MIN = :EST_MIN,'
      '  ETIQUETA_ENT = :ETIQUETA_ENT,'
      '  FORNECEDOR = :FORNECEDOR,'
      '  GRUPO = :GRUPO,'
      '  IPI = :IPI,'
      '  LOCALIZACAO_1 = :LOCALIZACAO_1,'
      '  LOCALIZACAO_2 = :LOCALIZACAO_2,'
      '  LOCALIZACAO_3 = :LOCALIZACAO_3,'
      '  MARCA = :MARCA,'
      '  MARGEM_BRUTA = :MARGEM_BRUTA,'
      '  MODELO = :MODELO,'
      '  NAO_COBR_JUR_ATE = :NAO_COBR_JUR_ATE,'
      '  NEG_QTDADE_2 = :NEG_QTDADE_2,'
      '  NOME = :NOME,'
      '  NOME_MARCA = :NOME_MARCA,'
      '  NOME_MODELO = :NOME_MODELO,'
      '  ORIGEM = :ORIGEM,'
      '  PARTICIP_LUCRO = :PARTICIP_LUCRO,'
      '  PERC_FRETE = :PERC_FRETE,'
      '  PESO_LIQ = :PESO_LIQ,'
      '  PIS = :PIS,'
      '  POSSUI_LOTE = :POSSUI_LOTE,'
      '  PRC_CUSTO_ANT = :PRC_CUSTO_ANT,'
      '  PRC_CUSTO_CODIF = :PRC_CUSTO_CODIF,'
      '  PRC_CUSTO_MED = :PRC_CUSTO_MED,'
      '  PRC_REPOS = :PRC_REPOS,'
      '  PRC_VENDA = :PRC_VENDA,'
      '  PRC_VENDA_ANT = :PRC_VENDA_ANT,'
      '  PRC_VENDA_MED = :PRC_VENDA_MED,'
      '  PREVISAO_ENTREGA = :PREVISAO_ENTREGA,'
      '  PROD_PESAVEL = :PROD_PESAVEL,'
      '  QNTDE_EXPOSTA = :QNTDE_EXPOSTA,'
      '  QNTDE_MAXIMA_VENDA = :QNTDE_MAXIMA_VENDA,'
      '  QNTDE_PEDIDA = :QNTDE_PEDIDA,'
      '  QT_ULT_COMPRA = :QT_ULT_COMPRA,'
      '  QTDADE_1 = :QTDADE_1,'
      '  QTDADE_2 = :QTDADE_2,'
      '  QTDADE_MAX = :QTDADE_MAX,'
      '  QTDADE_MIN = :QTDADE_MIN,'
      '  REDUCAO = :REDUCAO,'
      '  SERIE = :SERIE,'
      '  SERVICO = :SERVICO,'
      '  SUBGRUPO = :SUBGRUPO,'
      '  SUBUNIDADE = :SUBUNIDADE,'
      '  ULTIMO_FORNECEDOR = :ULTIMO_FORNECEDOR,'
      '  UNIDADE = :UNIDADE,'
      '  VALIDADE = :VALIDADE,'
      '  VENDE_FRACIONADO = :VENDE_FRACIONADO,'
      '  VOLUME = :VOLUME, '
      '  COD_LOCALIZACAO_1 = :COD_LOCALIZACAO_1,'
      '  cod_localizacao_2 =     :cod_localizacao_2,'
      '  cod_localizacao_3 =  :cod_localizacao_3'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 712
    Top = 296
    object ProdutosCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"PCD_LISTA_PRODUTO"."COMPLEMENTO"'
      Size = 100
    end
    object ProdutosCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"PCD_LISTA_PRODUTO"."CNPJ"'
      Size = 14
    end
    object ProdutosCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PCD_LISTA_PRODUTO"."CODIGO"'
      OnValidate = ProdutosCODIGOValidate
      Size = 15
    end
    object ProdutosCODIGO_INTERNO: TIntegerField
      FieldName = 'CODIGO_INTERNO'
      Origin = '"PCD_LISTA_PRODUTO"."CODIGO_INTERNO"'
    end
    object ProdutosCODIGO_2: TIBStringField
      FieldName = 'CODIGO_2'
      Origin = '"PCD_LISTA_PRODUTO"."CODIGO_2"'
      Size = 15
    end
    object ProdutosCNPJ_AGRUP: TIBStringField
      FieldName = 'CNPJ_AGRUP'
      Origin = '"PCD_LISTA_PRODUTO"."CNPJ_AGRUP"'
      Size = 14
    end
    object ProdutosCOD_AGRUP: TIBStringField
      FieldName = 'COD_AGRUP'
      Origin = '"PCD_LISTA_PRODUTO"."COD_AGRUP"'
      OnValidate = ProdutosCOD_AGRUPValidate
      Size = 15
    end
    object ProdutosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"PCD_LISTA_PRODUTO"."NOME"'
      Size = 50
    end
    object ProdutosMARCA: TIntegerField
      FieldName = 'MARCA'
      Origin = '"PCD_LISTA_PRODUTO"."MARCA"'
    end
    object ProdutosMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = '"PCD_LISTA_PRODUTO"."MODELO"'
    end
    object ProdutosGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"PCD_LISTA_PRODUTO"."GRUPO"'
      OnChange = ProdutosGRUPOChange
      OnValidate = ProdutosGRUPOValidate
    end
    object ProdutosSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = '"PCD_LISTA_PRODUTO"."SUBGRUPO"'
    end
    object ProdutosREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"PCD_LISTA_PRODUTO"."REDUCAO"'
    end
    object ProdutosUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PCD_LISTA_PRODUTO"."UNIDADE"'
      OnValidate = ProdutosUNIDADEValidate
      Size = 4
    end
    object ProdutosCTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"PCD_LISTA_PRODUTO"."CTE"'
      OnGetText = ProdutosCTEGetText
      OnSetText = ProdutosCTESetText
      OnValidate = ProdutosCTEValidate
    end
    object ProdutosCTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"PCD_LISTA_PRODUTO"."CTIE"'
      OnGetText = ProdutosCTEGetText
      OnSetText = ProdutosCTESetText
    end
    object ProdutosQTDADE_1: TFloatField
      FieldName = 'QTDADE_1'
      Origin = '"PCD_LISTA_PRODUTO"."QTDADE_1"'
      DisplayFormat = '###,##0.00'
    end
    object ProdutosQTDADE_2: TFloatField
      FieldName = 'QTDADE_2'
      Origin = '"PCD_LISTA_PRODUTO"."QTDADE_2"'
      DisplayFormat = '###,##0.00'
    end
    object ProdutosLOCALIZACAO_1: TIBStringField
      FieldName = 'LOCALIZACAO_1'
      Origin = '"PCD_LISTA_PRODUTO"."LOCALIZACAO_1"'
      Size = 30
    end
    object ProdutosLOCALIZACAO_2: TIBStringField
      FieldName = 'LOCALIZACAO_2'
      Origin = '"PCD_LISTA_PRODUTO"."LOCALIZACAO_2"'
      Size = 30
    end
    object ProdutosLOCALIZACAO_3: TIBStringField
      FieldName = 'LOCALIZACAO_3'
      Origin = '"PCD_LISTA_PRODUTO"."LOCALIZACAO_3"'
      Size = 30
    end
    object ProdutosNEG_QTDADE_2: TIBStringField
      FieldName = 'NEG_QTDADE_2'
      Origin = '"PCD_LISTA_PRODUTO"."NEG_QTDADE_2"'
      Size = 1
    end
    object ProdutosQTDADE_MIN: TIntegerField
      FieldName = 'QTDADE_MIN'
      Origin = '"PCD_LISTA_PRODUTO"."QTDADE_MIN"'
    end
    object ProdutosQTDADE_MAX: TIntegerField
      FieldName = 'QTDADE_MAX'
      Origin = '"PCD_LISTA_PRODUTO"."QTDADE_MAX"'
      OnValidate = ClientesSENHA_PDVValidate
    end
    object ProdutosCOMPLEMENTO_NF: TIBStringField
      FieldName = 'COMPLEMENTO_NF'
      Origin = '"PCD_LISTA_PRODUTO"."COMPLEMENTO_NF"'
      Size = 1
    end
    object ProdutosDT_ULT_COMPRA: TDateField
      FieldName = 'DT_ULT_COMPRA'
      Origin = '"PCD_LISTA_PRODUTO"."DT_ULT_COMPRA"'
    end
    object ProdutosQT_ULT_COMPRA: TIntegerField
      FieldName = 'QT_ULT_COMPRA'
      Origin = '"PCD_LISTA_PRODUTO"."QT_ULT_COMPRA"'
    end
    object ProdutosDT_ULT_VENDA: TDateField
      FieldName = 'DT_ULT_VENDA'
      Origin = '"PCD_LISTA_PRODUTO"."DT_ULT_VENDA"'
    end
    object ProdutosMARGEM_BRUTA: TFloatField
      FieldName = 'MARGEM_BRUTA'
      Origin = '"PCD_LISTA_PRODUTO"."MARGEM_BRUTA"'
      OnValidate = ProdutosMARGEM_BRUTAValidate
      DisplayFormat = '###,##0.00'
    end
    object ProdutosPRC_REPOS: TFloatField
      FieldName = 'PRC_REPOS'
      Origin = '"PCD_LISTA_PRODUTO"."PRC_REPOS"'
      DisplayFormat = '###,##0.00'
    end
    object ProdutosPRC_CUSTO_ANT: TFloatField
      FieldName = 'PRC_CUSTO_ANT'
      Origin = '"PCD_LISTA_PRODUTO"."PRC_CUSTO_ANT"'
      DisplayFormat = '###,##0.00'
    end
    object ProdutosPRC_CUSTO_MED: TFloatField
      FieldName = 'PRC_CUSTO_MED'
      Origin = '"PCD_LISTA_PRODUTO"."PRC_CUSTO_MED"'
      DisplayFormat = '###,##0.00'
    end
    object ProdutosPRC_VENDA_ANT: TFloatField
      FieldName = 'PRC_VENDA_ANT'
      Origin = '"PCD_LISTA_PRODUTO"."PRC_VENDA_ANT"'
      DisplayFormat = '###,##0.00'
    end
    object ProdutosPRC_VENDA_MED: TFloatField
      FieldName = 'PRC_VENDA_MED'
      Origin = '"PCD_LISTA_PRODUTO"."PRC_VENDA_MED"'
      DisplayFormat = '###,##0.00'
    end
    object ProdutosALIQUOTA_ECF: TIBStringField
      FieldName = 'ALIQUOTA_ECF'
      Origin = '"PCD_LISTA_PRODUTO"."ALIQUOTA_ECF"'
      Size = 5
    end
    object ProdutosORIGEM: TSmallintField
      FieldName = 'ORIGEM'
      Origin = '"PCD_LISTA_PRODUTO"."ORIGEM"'
      OnGetText = ProdutosORIGEMGetText
      OnSetText = ProdutosORIGEMSetText
    end
    object ProdutosPESO_LIQ: TFloatField
      FieldName = 'PESO_LIQ'
      Origin = '"PCD_LISTA_PRODUTO"."PESO_LIQ"'
      DisplayFormat = '###,##0.000'
    end
    object ProdutosPERC_FRETE: TFloatField
      FieldName = 'PERC_FRETE'
      Origin = '"PCD_LISTA_PRODUTO"."PERC_FRETE"'
      DisplayFormat = '###,##0.00'
    end
    object ProdutosIPI: TFloatField
      FieldName = 'IPI'
      Origin = '"PCD_LISTA_PRODUTO"."IPI"'
      DisplayFormat = '###,##0.00'
    end
    object ProdutosVOLUME: TFloatField
      FieldName = 'VOLUME'
      Origin = '"PCD_LISTA_PRODUTO"."VOLUME"'
      DisplayFormat = '###,##0.000'
    end
    object ProdutosPROD_PESAVEL: TIBStringField
      FieldName = 'PROD_PESAVEL'
      Origin = '"PCD_LISTA_PRODUTO"."PROD_PESAVEL"'
      Size = 1
    end
    object ProdutosETIQUETA_ENT: TIBStringField
      FieldName = 'ETIQUETA_ENT'
      Origin = '"PCD_LISTA_PRODUTO"."ETIQUETA_ENT"'
      Size = 1
    end
    object ProdutosATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"PCD_LISTA_PRODUTO"."ATIVO"'
      Size = 1
    end
    object ProdutosULTIMO_FORNECEDOR: TIntegerField
      FieldName = 'ULTIMO_FORNECEDOR'
      Origin = '"PCD_LISTA_PRODUTO"."ULTIMO_FORNECEDOR"'
    end
    object ProdutosFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = '"PCD_LISTA_PRODUTO"."FORNECEDOR"'
    end
    object ProdutosSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"PCD_LISTA_PRODUTO"."SUBUNIDADE"'
    end
    object ProdutosNOME_MARCA: TIBStringField
      FieldName = 'NOME_MARCA'
      Origin = '"PCD_LISTA_PRODUTO"."NOME_MARCA"'
      Size = 50
    end
    object ProdutosNOME_MODELO: TIBStringField
      FieldName = 'NOME_MODELO'
      Origin = '"PCD_LISTA_PRODUTO"."NOME_MODELO"'
      Size = 80
    end
    object ProdutosPRC_CUSTO_CODIF: TIBStringField
      FieldName = 'PRC_CUSTO_CODIF'
      Origin = '"PCD_LISTA_PRODUTO"."PRC_CUSTO_CODIF"'
      Size = 15
    end
    object ProdutosDT_ULT_ATU_PRECO: TDateField
      FieldName = 'DT_ULT_ATU_PRECO'
      Origin = '"PCD_LISTA_PRODUTO"."DT_ULT_ATU_PRECO"'
    end
    object ProdutosVENDE_FRACIONADO: TIBStringField
      FieldName = 'VENDE_FRACIONADO'
      Origin = '"PCD_LISTA_PRODUTO"."VENDE_FRACIONADO"'
      FixedChar = True
      Size = 1
    end
    object ProdutosQNTDE_EXPOSTA: TFloatField
      FieldName = 'QNTDE_EXPOSTA'
      Origin = '"PCD_LISTA_PRODUTO"."QNTDE_EXPOSTA"'
      DisplayFormat = '###,##0.000'
    end
    object ProdutosPOSSUI_LOTE: TIBStringField
      FieldName = 'POSSUI_LOTE'
      Origin = '"PCD_LISTA_PRODUTO"."POSSUI_LOTE"'
      FixedChar = True
      Size = 1
    end
    object ProdutosCUSTO_AQUISICAO: TFloatField
      FieldName = 'CUSTO_AQUISICAO'
      Origin = '"PCD_LISTA_PRODUTO"."CUSTO_AQUISICAO"'
      DisplayFormat = '###,##0.000'
    end
    object ProdutosQNTDE_PEDIDA: TFloatField
      FieldName = 'QNTDE_PEDIDA'
      Origin = '"PCD_LISTA_PRODUTO"."QNTDE_PEDIDA"'
      DisplayFormat = '###,##0.000'
    end
    object ProdutosPREVISAO_ENTREGA: TDateField
      FieldName = 'PREVISAO_ENTREGA'
      Origin = '"PCD_LISTA_PRODUTO"."PREVISAO_ENTREGA"'
    end
    object ProdutosQNTDE_MAXIMA_VENDA: TFloatField
      FieldName = 'QNTDE_MAXIMA_VENDA'
      Origin = '"PCD_LISTA_PRODUTO"."QNTDE_MAXIMA_VENDA"'
      DisplayFormat = '###,##0.000'
    end
    object ProdutosPIS: TIBStringField
      FieldName = 'PIS'
      Origin = '"PCD_LISTA_PRODUTO"."PIS"'
      FixedChar = True
      Size = 1
    end
    object ProdutosCOFINS: TIBStringField
      FieldName = 'COFINS'
      Origin = '"PCD_LISTA_PRODUTO"."COFINS"'
      FixedChar = True
      Size = 1
    end
    object ProdutosCOM_VENDA_VLR: TFloatField
      FieldName = 'COM_VENDA_VLR'
      Origin = '"PCD_LISTA_PRODUTO"."COM_VENDA_VLR"'
      DisplayFormat = '###,##0.000'
    end
    object ProdutosCOM_VENDA_PCT: TFloatField
      FieldName = 'COM_VENDA_PCT'
      Origin = '"PCD_LISTA_PRODUTO"."COM_VENDA_PCT"'
      DisplayFormat = '###,##0.000'
    end
    object ProdutosPARTICIP_LUCRO: TFloatField
      FieldName = 'PARTICIP_LUCRO'
      Origin = '"PCD_LISTA_PRODUTO"."PARTICIP_LUCRO"'
      DisplayFormat = '###,##0.000'
    end
    object ProdutosNAO_COBR_JUR_ATE: TIntegerField
      FieldName = 'NAO_COBR_JUR_ATE'
      Origin = '"PCD_LISTA_PRODUTO"."NAO_COBR_JUR_ATE"'
    end
    object ProdutosATUALIZA_ARQ_EXTERNO: TIBStringField
      FieldName = 'ATUALIZA_ARQ_EXTERNO'
      Origin = '"PCD_LISTA_PRODUTO"."ATUALIZA_ARQ_EXTERNO"'
      FixedChar = True
      Size = 1
    end
    object ProdutosSERVICO: TIBStringField
      FieldName = 'SERVICO'
      Origin = '"PCD_LISTA_PRODUTO"."SERVICO"'
      FixedChar = True
      Size = 1
    end
    object ProdutosVALIDADE: TIntegerField
      FieldName = 'VALIDADE'
      Origin = '"PCD_LISTA_PRODUTO"."VALIDADE"'
    end
    object ProdutosSECAO: TIntegerField
      FieldName = 'SECAO'
      Origin = '"PCD_LISTA_PRODUTO"."SECAO"'
    end
    object ProdutosCUSTO_INDEXADO: TIBBCDField
      FieldName = 'CUSTO_INDEXADO'
      Origin = '"PCD_LISTA_PRODUTO"."CUSTO_INDEXADO"'
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 4
    end
    object ProdutosCOMPROMETIDO: TIBBCDField
      FieldName = 'COMPROMETIDO'
      Origin = '"PCD_LISTA_PRODUTO"."COMPROMETIDO"'
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 4
    end
    object ProdutosEST_MIN: TIBBCDField
      FieldName = 'EST_MIN'
      Origin = '"PCD_LISTA_PRODUTO"."EST_MIN"'
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 4
    end
    object ProdutosEST_MAX: TIBBCDField
      FieldName = 'EST_MAX'
      Origin = '"PCD_LISTA_PRODUTO"."EST_MAX"'
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 4
    end
    object ProdutosSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"PCD_LISTA_PRODUTO"."SERIE"'
      Size = 30
    end
    object ProdutosDEBITA_ICMS: TIBStringField
      FieldName = 'DEBITA_ICMS'
      Origin = '"PCD_LISTA_PRODUTO"."DEBITA_ICMS"'
      FixedChar = True
      Size = 1
    end
    object ProdutosQTD_UM: TFloatField
      FieldKind = fkCalculated
      FieldName = 'QTD_UM'
      DisplayFormat = '###,##0.000'
      Calculated = True
    end
    object ProdutosQTD_UNIT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'QTD_UNIT'
      DisplayFormat = '###,##0.000'
      Calculated = True
    end
    object ProdutosEstoque_Fisico: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Estoque_Fisico'
      DisplayFormat = '###,##0.000'
      Calculated = True
    end
    object ProdutosPRC_VENDA: TFloatField
      FieldName = 'PRC_VENDA'
      Origin = '"PCD_LISTA_PRODUTO"."PRC_VENDA"'
      DisplayFormat = '###,##0.00'
    end
    object ProdutosQNTDE_MINIMA_VENDA: TFloatField
      FieldName = 'QNTDE_MINIMA_VENDA'
      Origin = '"PCD_LISTA_PRODUTO"."QNTDE_MINIMA_VENDA"'
      DisplayFormat = '###,##0.00'
    end
    object ProdutosVALIDA_MULT_QTDE_MIN: TIBStringField
      FieldName = 'VALIDA_MULT_QTDE_MIN'
      Origin = '"PCD_LISTA_PRODUTO"."VALIDA_MULT_QTDE_MIN"'
      FixedChar = True
      Size = 1
    end
    object ProdutosUND_PRIMARIA: TIBStringField
      FieldName = 'UND_PRIMARIA'
      Origin = '"PCD_LISTA_PRODUTO"."UND_PRIMARIA"'
      FixedChar = True
      Size = 4
    end
    object ProdutosFATOR_CONVERSAO: TIBBCDField
      FieldName = 'FATOR_CONVERSAO'
      Origin = '"PCD_LISTA_PRODUTO"."FATOR_CONVERSAO"'
      DisplayFormat = '###,##0.0000'
      Precision = 18
      Size = 4
    end
    object ProdutosSINCRONIZA_FILIAIS: TIBStringField
      FieldName = 'SINCRONIZA_FILIAIS'
      Origin = '"PCD_LISTA_PRODUTO"."SINCRONIZA_FILIAIS"'
      FixedChar = True
      Size = 1
    end
    object ProdutosQNTDE_PDR_CARGA: TIBBCDField
      FieldName = 'QNTDE_PDR_CARGA'
      Origin = '"PCD_LISTA_PRODUTO"."QNTDE_PDR_CARGA"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ProdutosUND_CARREGAMENTO: TIBStringField
      FieldName = 'UND_CARREGAMENTO'
      Origin = '"PCD_LISTA_PRODUTO"."UND_CARREGAMENTO"'
      FixedChar = True
      Size = 4
    end
    object ProdutosTRIB_ALIQ_EST: TIBBCDField
      FieldName = 'TRIB_ALIQ_EST'
      Origin = '"PCD_LISTA_PRODUTO"."TRIB_ALIQ_EST"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ProdutosTRIB_ALIQ_INT: TIBBCDField
      FieldName = 'TRIB_ALIQ_INT'
      Origin = '"PCD_LISTA_PRODUTO"."TRIB_ALIQ_INT"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ProdutosTRIB_MODALIDADE: TIBStringField
      FieldName = 'TRIB_MODALIDADE'
      Origin = '"PCD_LISTA_PRODUTO"."TRIB_MODALIDADE"'
      Size = 50
    end
    object ProdutosCODIGO_NCM: TIBStringField
      FieldName = 'CODIGO_NCM'
      Origin = '"PCD_LISTA_PRODUTO"."CODIGO_NCM"'
      Size = 50
    end
    object ProdutosAPLICACAO: TMemoField
      FieldName = 'APLICACAO'
      Origin = '"PCD_LISTA_PRODUTO"."APLICACAO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object ProdutosIMG_2: TBlobField
      FieldName = 'IMG_2'
      Origin = '"PCD_LISTA_PRODUTO"."IMG_2"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ProdutosIMG_1: TBlobField
      FieldName = 'IMG_1'
      Origin = '"PCD_LISTA_PRODUTO"."IMG_1"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ProdutosIMG_3: TBlobField
      FieldName = 'IMG_3'
      Origin = '"PCD_LISTA_PRODUTO"."IMG_3"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ProdutosIMG_4: TBlobField
      FieldName = 'IMG_4'
      Origin = '"PCD_LISTA_PRODUTO"."IMG_4"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object ProdutosCODIGO_FABRICANTE: TIBStringField
      FieldName = 'CODIGO_FABRICANTE'
      Origin = '"PCD_LISTA_PRODUTO"."CODIGO_FABRICANTE"'
      Size = 50
    end
    object ProdutosCOR: TIntegerField
      FieldName = 'COR'
      Origin = '"PCD_LISTA_PRODUTO"."COR"'
    end
    object ProdutosMATERIAL: TIntegerField
      FieldName = 'MATERIAL'
      Origin = '"PCD_LISTA_PRODUTO"."MATERIAL"'
    end
    object ProdutosTRIB_PIS: TIBStringField
      FieldName = 'TRIB_PIS'
      Origin = '"PCD_LISTA_PRODUTO"."TRIB_PIS"'
      OnGetText = ProdutosTRIB_PISGetText
      OnSetText = ProdutosTRIB_PISSetText
      FixedChar = True
      Size = 2
    end
    object ProdutosTRIB_COFINS: TIBStringField
      FieldName = 'TRIB_COFINS'
      Origin = '"PCD_LISTA_PRODUTO"."TRIB_COFINS"'
      OnGetText = ProdutosTRIB_COFINSGetText
      OnSetText = ProdutosTRIB_COFINSSetText
      FixedChar = True
      Size = 2
    end
    object ProdutosTRIB_IPI: TIBStringField
      FieldName = 'TRIB_IPI'
      Origin = '"PCD_LISTA_PRODUTO"."TRIB_IPI"'
      OnGetText = ProdutosTRIB_IPIGetText
      OnSetText = ProdutosTRIB_IPISetText
      FixedChar = True
      Size = 2
    end
    object ProdutosBCH_CODIGO: TIntegerField
      FieldName = 'BCH_CODIGO'
      Origin = '"PCD_LISTA_PRODUTO"."BCH_CODIGO"'
    end
    object ProdutosVENCTO_PRC_VENDA: TDateField
      FieldName = 'VENCTO_PRC_VENDA'
      Origin = '"PCD_LISTA_PRODUTO"."VENCTO_PRC_VENDA"'
    end
    object ProdutosCSOSN: TIntegerField
      FieldName = 'CSOSN'
      Origin = '"PCD_LISTA_PRODUTO"."CSOSN"'
      OnGetText = ProdutosCSOSNGetText
      OnSetText = ProdutosCSOSNSetText
    end
    object ProdutosCOD_GETIN: TIBStringField
      FieldName = 'COD_GETIN'
      Origin = '"PCD_LISTA_PRODUTO"."COD_GETIN"'
      Size = 15
    end
    object ProdutosCOD_LOCALIZACAO_1: TIntegerField
      FieldName = 'COD_LOCALIZACAO_1'
      Origin = '"PCD_LISTA_PRODUTO"."COD_LOCALIZACAO_1"'
    end
    object ProdutosCOD_LOCALIZACAO_2: TIntegerField
      FieldName = 'COD_LOCALIZACAO_2'
      Origin = '"PCD_LISTA_PRODUTO"."COD_LOCALIZACAO_2"'
    end
    object ProdutosCOD_LOCALIZACAO_3: TIntegerField
      FieldName = 'COD_LOCALIZACAO_3'
      Origin = '"PCD_LISTA_PRODUTO"."COD_LOCALIZACAO_3"'
    end
    object ProdutosCOD_TECNICO: TIntegerField
      FieldName = 'COD_TECNICO'
      Origin = '"PCD_LISTA_PRODUTO"."COD_TECNICO"'
    end
  end
  object SerieLeiute: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from Sis_SerieNf'
      'where'
      '  INDICE = :OLD_INDICE')
    InsertSQL.Strings = (
      'insert into Sis_SerieNf'
      
        '  (CNPJ, SERIE, ULTIMO_NUMERO, TIPO, NOTA_NUM_DST, NOTA_NUM_ALT,' +
        ' '
      'NOTA_NUMRECIBO_DST, '
      '   NOTA_NUMRECIBO_ALT, NOTA_ENT_SAI_DST, NOTA_ENT_SAI_ALT, '
      'NOTA_NATUREZA_DST, '
      '   NOTA_NATUREZA_ALT, NOTA_CFOP_DST, NOTA_CFOP_ALT, '
      'NOTA_SUBS_TRIB_DST, '
      '   NOTA_SUBS_TRIB_ALT, NOTA_CNDPG_DST, NOTA_CNDPG_ALT, '
      'CLI_NOME_DST, CLI_NOME_ALT, '
      '   CLI_CGCCPF_DST, CLI_CGCCPF_ALT, CLI_END_DST, CLI_END_ALT, '
      'CLI_BAIRRO_DST, '
      
        '   CLI_BAIRRO_ALT, CLI_CEP_DST, CLI_CEP_ALT, CLI_CID_DST, CLI_CI' +
        'D_ALT, '
      
        '   CLI_FONE_DST, CLI_FONE_ALT, CLI_FAX_DST, CLI_FAX_ALT, CLI_UF_' +
        'DST, '
      'CLI_UF_ALT, '
      '   CLI_INSCEST_DST, CLI_INSCEST_ALT, CLI_DATEMIS_DST, '
      'CLI_DATEMIS_ALT, '
      '   CLI_DATENTSAI_DST, CLI_DATENTSAI_ALT, CLI_HORASAI_DST, '
      'CLI_HORASAI_ALT, '
      '   CLI_PEDNUM_DST, CLI_PEDNUM_ALT, CLI_INSCMUN_DST, '
      'CLI_INSCMUN_ALT, CLI_DUPLNUM_DST, '
      '   CLI_DUPLNUM_ALT, CLI_DUPLVENC_DST, CLI_DUPLVENC_ALT, '
      'CLI_DUPLVALOR_DST, '
      '   CLI_DUPLVALOR_ALT, PROD_COD_DST, PROD_COD_ALT, '
      'PROD_PROD_DST, PROD_PROD_ALT, '
      
        '   PROD_CF_DST, PROD_CF_ALT, PROD_SITTRIB_DST, PROD_SITTRIB_ALT,' +
        ' '
      'PROD_UNIDADE_DST, '
      '   PROD_UNIDADE_ALT, PROD_QUANT_DST, PROD_QUANT_ALT, '
      'PROD_VALORUNIT_DST, '
      '   PROD_VALORUNIT_ALT, PROD_VALORTOT_DST, PROD_VALORTOT_ALT, '
      'PROD_ICMS_DST, '
      
        '   PROD_ICMS_ALT, PROD_IPI_DST, PROD_IPI_ALT, PROD_VALORIPI_DST,' +
        ' '
      'PROD_VALORIPI_ALT, '
      '   FEC_BASEICMS_DST, FEC_BASEICMS_ALT, FEC_VALORFRETE_DST, '
      'FEC_VALORFRETE_ALT, '
      '   FEC_VALORICMS_DST, FEC_VALORICMS_ALT, FEC_VALORSEGURO_DST, '
      'FEC_VALORSEGURO_ALT, '
      
        '   FEC_BASECALCICMS_DST, FEC_BASECALCICMS_ALT, FEC_DESPESAS_DST,' +
        ' '
      'FEC_DESPESAS_ALT, '
      '   FEC_VALORICMSSUB_DST, FEC_VALORICMSSUB_ALT, FEC_IPI_DST, '
      'FEC_IPI_ALT, '
      '   FEC_VALORTOTAL_DST, FEC_ISS_DST, FEC_VALORTOTAL_ALT, '
      'FEC_ISS_ALT, FEC_VALORNOTA_DST, '
      '   FEC_VALORNOTA_ALT, TRANS_NOME_DST, TRANS_NOME_ALT, '
      'TRANS_END_DST, TRANS_END_ALT, '
      '   TRANS_QUANTIDADE_DST, TRANS_QUANTIDADE_ALT, '
      'TRANS_ESPECIE_DST, TRANS_ESPECIE_ALT, '
      '   TRANS_MARCA_DST, TRANS_MARCA_ALT, TRANS_FRETECONTA_DST, '
      'TRANS_FRETECONTA_ALT, '
      '   TRANS_CID_DST, TRANS_CID_ALT, TRANS_NUMERO_DST, '
      'TRANS_NUMERO_ALT, TRANS_PLACA_DST, '
      '   TRANS_PLACA_ALT, TRANS_UFVEI_DST, TRANS_UFVEIALT, '
      'TRANS_UF_DST, TRANS_UF_ALT, '
      '   TRANS_CGCCPF_DST, TRANS_CGCCPF_ALT, TRANS_INSCEST_DST, '
      'TRANS_INSCEST_ALT, '
      '   TRANS_PESBRT_DST, TRANS_PESOBRT_ALT, TRANS_PESOLIQ_DST, '
      'TRANS_PESOLIQ_ALT, '
      '   TRANS_OBS_DST, TRANS_OBS_ALT, IMPRESSORA_PULO, '
      'IMPRESSORA_LPP, PRODUTOSNOTA, '
      '   LOCALDUPLICATAS, NUMERODELINHASDANOTA, PROD_DESC_DST, '
      'PROD_DESC_ALT, '
      '   DATA_ANO_ALT, DATA_ANO_DST, DATA_DIA_ALT, DATA_DIA_DST, '
      'DATA_MES_ALT, '
      '   DATA_MES_DST, OBS_ALT, OBS_DST, NOTA_VENDEDOR_DST, '
      'NOTA_VENDEDOR_ALT, '
      '   NOTA_ECF_DST, NOTA_ECF_ALT, NOTA_DESCONTO_DST, '
      'NOTA_DESCONTO_ALT, NOTA_INDCOMPL_DST, '
      '   NOTA_INFCOMPL_ALT, CLI_DUPLLARGURA_COLUNA, '
      'CLI_DUPLNUM_COLUNA, NOTA_MSGNAT_DST, '
      '   NOTA_MSGNAT_ALT, NOTA_NUMRDP_DST, NOTA_NUMRDP_ALT, '
      'PORTA_IMPRESSAO, '
      '   NOTA_DESCONTO_ALT2, NOTA_DESCONTO_DST2, PROD_QNTD_UNID_ALT, '
      'PROD_QNTD_UNID_DST, '
      
        '   PROD_TIPO_UNID_ALT, PROD_TIPO_UNID_DST, MODELO, NOTA_IRRF_DST' +
        ', '
      'NOTA_IRRF_ALT, '
      '   NOTA_INSS_DST, NOTA_INSS_ALT, NOTA_PIS_DST, NOTA_PIS_ALT, '
      'NOTA_ISS_SUBST_DST, '
      '   NOTA_ISS_SUBST_ALT, PROD_TAM_NOME, CLI_NOME_RODAPE_DST, '
      'CLI_NOME_RODAPE_ALT, '
      '   CLI_DATENTSAI_RODAPE_DST, CLI_DATENTSAI_RODAPE_ALT, '
      'FEC_VALORNOTA_RODAPE_ALT, '
      '   FEC_VALORNOTA_RODAPE_DST, NOTA_DUPLICA_NUMERO, NF_GRAFICA, '
      'NOTA_EMPRESA_ALT, '
      '   NOTA_EMPRESA_DST, PROD_MARCA_ALT, PROD_MARCA_DST, '
      'PROD_LOTE_ALT, PROD_LOTE_DST, '
      '   NOTA_EMPRESA_UF_ALT, NOTA_EMPRESA_UF_DST, CLI_CID_PROP_DST, '
      'CLI_CID_PROP_ALT, '
      '   CLI_UF_PROP_DST, CLI_UF_PROP_ALT, PROD_LOTE_VALIDADE_ALT, '
      'PROD_LOTE_VALIDADE_DST, '
      '   CLI_END_PROP_ALT, CLI_END_PROP_DST, CLI_NOME_PROP_ALT, '
      'CLI_NOME_PROP_DST, '
      '   NFSERV_GRAFICA, NF_GRAFICA2, CONFIG_NF_GRAF, INDICE)'
      'values'
      '  (:CNPJ, :SERIE, :ULTIMO_NUMERO, :TIPO, :NOTA_NUM_DST, '
      ':NOTA_NUM_ALT, '
      '   :NOTA_NUMRECIBO_DST, :NOTA_NUMRECIBO_ALT, :NOTA_ENT_SAI_DST, '
      ':NOTA_ENT_SAI_ALT, '
      '   :NOTA_NATUREZA_DST, :NOTA_NATUREZA_ALT, :NOTA_CFOP_DST, '
      ':NOTA_CFOP_ALT, '
      '   :NOTA_SUBS_TRIB_DST, :NOTA_SUBS_TRIB_ALT, :NOTA_CNDPG_DST, '
      ':NOTA_CNDPG_ALT, '
      
        '   :CLI_NOME_DST, :CLI_NOME_ALT, :CLI_CGCCPF_DST, :CLI_CGCCPF_AL' +
        'T, '
      ':CLI_END_DST, '
      
        '   :CLI_END_ALT, :CLI_BAIRRO_DST, :CLI_BAIRRO_ALT, :CLI_CEP_DST,' +
        ' '
      ':CLI_CEP_ALT, '
      
        '   :CLI_CID_DST, :CLI_CID_ALT, :CLI_FONE_DST, :CLI_FONE_ALT, :CL' +
        'I_FAX_DST, '
      '   :CLI_FAX_ALT, :CLI_UF_DST, :CLI_UF_ALT, :CLI_INSCEST_DST, '
      ':CLI_INSCEST_ALT, '
      '   :CLI_DATEMIS_DST, :CLI_DATEMIS_ALT, :CLI_DATENTSAI_DST, '
      ':CLI_DATENTSAI_ALT, '
      '   :CLI_HORASAI_DST, :CLI_HORASAI_ALT, :CLI_PEDNUM_DST, '
      ':CLI_PEDNUM_ALT, '
      '   :CLI_INSCMUN_DST, :CLI_INSCMUN_ALT, :CLI_DUPLNUM_DST, '
      ':CLI_DUPLNUM_ALT, '
      '   :CLI_DUPLVENC_DST, :CLI_DUPLVENC_ALT, :CLI_DUPLVALOR_DST, '
      ':CLI_DUPLVALOR_ALT, '
      
        '   :PROD_COD_DST, :PROD_COD_ALT, :PROD_PROD_DST, :PROD_PROD_ALT,' +
        ' '
      ':PROD_CF_DST, '
      '   :PROD_CF_ALT, :PROD_SITTRIB_DST, :PROD_SITTRIB_ALT, '
      ':PROD_UNIDADE_DST, '
      '   :PROD_UNIDADE_ALT, :PROD_QUANT_DST, :PROD_QUANT_ALT, '
      ':PROD_VALORUNIT_DST, '
      '   :PROD_VALORUNIT_ALT, :PROD_VALORTOT_DST, :PROD_VALORTOT_ALT, '
      ':PROD_ICMS_DST, '
      
        '   :PROD_ICMS_ALT, :PROD_IPI_DST, :PROD_IPI_ALT, :PROD_VALORIPI_' +
        'DST, '
      ':PROD_VALORIPI_ALT, '
      '   :FEC_BASEICMS_DST, :FEC_BASEICMS_ALT, :FEC_VALORFRETE_DST, '
      ':FEC_VALORFRETE_ALT, '
      
        '   :FEC_VALORICMS_DST, :FEC_VALORICMS_ALT, :FEC_VALORSEGURO_DST,' +
        ' '
      ':FEC_VALORSEGURO_ALT, '
      '   :FEC_BASECALCICMS_DST, :FEC_BASECALCICMS_ALT, '
      ':FEC_DESPESAS_DST, :FEC_DESPESAS_ALT, '
      '   :FEC_VALORICMSSUB_DST, :FEC_VALORICMSSUB_ALT, :FEC_IPI_DST, '
      ':FEC_IPI_ALT, '
      '   :FEC_VALORTOTAL_DST, :FEC_ISS_DST, :FEC_VALORTOTAL_ALT, '
      ':FEC_ISS_ALT, '
      '   :FEC_VALORNOTA_DST, :FEC_VALORNOTA_ALT, :TRANS_NOME_DST, '
      ':TRANS_NOME_ALT, '
      '   :TRANS_END_DST, :TRANS_END_ALT, :TRANS_QUANTIDADE_DST, '
      ':TRANS_QUANTIDADE_ALT, '
      '   :TRANS_ESPECIE_DST, :TRANS_ESPECIE_ALT, :TRANS_MARCA_DST, '
      ':TRANS_MARCA_ALT, '
      
        '   :TRANS_FRETECONTA_DST, :TRANS_FRETECONTA_ALT, :TRANS_CID_DST,' +
        ' '
      ':TRANS_CID_ALT, '
      '   :TRANS_NUMERO_DST, :TRANS_NUMERO_ALT, :TRANS_PLACA_DST, '
      ':TRANS_PLACA_ALT, '
      
        '   :TRANS_UFVEI_DST, :TRANS_UFVEIALT, :TRANS_UF_DST, :TRANS_UF_A' +
        'LT, '
      ':TRANS_CGCCPF_DST, '
      '   :TRANS_CGCCPF_ALT, :TRANS_INSCEST_DST, :TRANS_INSCEST_ALT, '
      ':TRANS_PESBRT_DST, '
      '   :TRANS_PESOBRT_ALT, :TRANS_PESOLIQ_DST, :TRANS_PESOLIQ_ALT, '
      ':TRANS_OBS_DST, '
      '   :TRANS_OBS_ALT, :IMPRESSORA_PULO, :IMPRESSORA_LPP, '
      ':PRODUTOSNOTA, :LOCALDUPLICATAS, '
      '   :NUMERODELINHASDANOTA, :PROD_DESC_DST, :PROD_DESC_ALT, '
      ':DATA_ANO_ALT, '
      '   :DATA_ANO_DST, :DATA_DIA_ALT, :DATA_DIA_DST, :DATA_MES_ALT, '
      ':DATA_MES_DST, '
      '   :OBS_ALT, :OBS_DST, :NOTA_VENDEDOR_DST, :NOTA_VENDEDOR_ALT, '
      ':NOTA_ECF_DST, '
      '   :NOTA_ECF_ALT, :NOTA_DESCONTO_DST, :NOTA_DESCONTO_ALT, '
      ':NOTA_INDCOMPL_DST, '
      '   :NOTA_INFCOMPL_ALT, :CLI_DUPLLARGURA_COLUNA, '
      ':CLI_DUPLNUM_COLUNA, :NOTA_MSGNAT_DST, '
      '   :NOTA_MSGNAT_ALT, :NOTA_NUMRDP_DST, :NOTA_NUMRDP_ALT, '
      ':PORTA_IMPRESSAO, '
      '   :NOTA_DESCONTO_ALT2, :NOTA_DESCONTO_DST2, '
      ':PROD_QNTD_UNID_ALT, :PROD_QNTD_UNID_DST, '
      '   :PROD_TIPO_UNID_ALT, :PROD_TIPO_UNID_DST, :MODELO, '
      ':NOTA_IRRF_DST, :NOTA_IRRF_ALT, '
      
        '   :NOTA_INSS_DST, :NOTA_INSS_ALT, :NOTA_PIS_DST, :NOTA_PIS_ALT,' +
        ' '
      ':NOTA_ISS_SUBST_DST, '
      '   :NOTA_ISS_SUBST_ALT, :PROD_TAM_NOME, :CLI_NOME_RODAPE_DST, '
      ':CLI_NOME_RODAPE_ALT, '
      '   :CLI_DATENTSAI_RODAPE_DST, :CLI_DATENTSAI_RODAPE_ALT, '
      ':FEC_VALORNOTA_RODAPE_ALT, '
      
        '   :FEC_VALORNOTA_RODAPE_DST, :NOTA_DUPLICA_NUMERO, :NF_GRAFICA,' +
        ' '
      ':NOTA_EMPRESA_ALT, '
      '   :NOTA_EMPRESA_DST, :PROD_MARCA_ALT, :PROD_MARCA_DST, '
      ':PROD_LOTE_ALT, '
      '   :PROD_LOTE_DST, :NOTA_EMPRESA_UF_ALT, :NOTA_EMPRESA_UF_DST, '
      ':CLI_CID_PROP_DST, '
      '   :CLI_CID_PROP_ALT, :CLI_UF_PROP_DST, :CLI_UF_PROP_ALT, '
      ':PROD_LOTE_VALIDADE_ALT, '
      
        '   :PROD_LOTE_VALIDADE_DST, :CLI_END_PROP_ALT, :CLI_END_PROP_DST' +
        ', '
      ':CLI_NOME_PROP_ALT, '
      '   :CLI_NOME_PROP_DST, :NFSERV_GRAFICA, :NF_GRAFICA2, '
      ':CONFIG_NF_GRAF, '
      '   :INDICE)')
    RefreshSQL.Strings = (
      'Select * '
      'from Sis_SerieNf '
      'where'
      '  INDICE = :INDICE')
    SelectSQL.Strings = (
      'select *'
      'From Sis_SerieNf'
      'Where indice = :indice'
      'Order By Serie')
    ModifySQL.Strings = (
      'update Sis_SerieNf'
      'set'
      '  CNPJ = :CNPJ,'
      '  SERIE = :SERIE,'
      '  ULTIMO_NUMERO = :ULTIMO_NUMERO,'
      '  TIPO = :TIPO,'
      '  NOTA_NUM_DST = :NOTA_NUM_DST,'
      '  NOTA_NUM_ALT = :NOTA_NUM_ALT,'
      '  NOTA_NUMRECIBO_DST = :NOTA_NUMRECIBO_DST,'
      '  NOTA_NUMRECIBO_ALT = :NOTA_NUMRECIBO_ALT,'
      '  NOTA_ENT_SAI_DST = :NOTA_ENT_SAI_DST,'
      '  NOTA_ENT_SAI_ALT = :NOTA_ENT_SAI_ALT,'
      '  NOTA_NATUREZA_DST = :NOTA_NATUREZA_DST,'
      '  NOTA_NATUREZA_ALT = :NOTA_NATUREZA_ALT,'
      '  NOTA_CFOP_DST = :NOTA_CFOP_DST,'
      '  NOTA_CFOP_ALT = :NOTA_CFOP_ALT,'
      '  NOTA_SUBS_TRIB_DST = :NOTA_SUBS_TRIB_DST,'
      '  NOTA_SUBS_TRIB_ALT = :NOTA_SUBS_TRIB_ALT,'
      '  NOTA_CNDPG_DST = :NOTA_CNDPG_DST,'
      '  NOTA_CNDPG_ALT = :NOTA_CNDPG_ALT,'
      '  CLI_NOME_DST = :CLI_NOME_DST,'
      '  CLI_NOME_ALT = :CLI_NOME_ALT,'
      '  CLI_CGCCPF_DST = :CLI_CGCCPF_DST,'
      '  CLI_CGCCPF_ALT = :CLI_CGCCPF_ALT,'
      '  CLI_END_DST = :CLI_END_DST,'
      '  CLI_END_ALT = :CLI_END_ALT,'
      '  CLI_BAIRRO_DST = :CLI_BAIRRO_DST,'
      '  CLI_BAIRRO_ALT = :CLI_BAIRRO_ALT,'
      '  CLI_CEP_DST = :CLI_CEP_DST,'
      '  CLI_CEP_ALT = :CLI_CEP_ALT,'
      '  CLI_CID_DST = :CLI_CID_DST,'
      '  CLI_CID_ALT = :CLI_CID_ALT,'
      '  CLI_FONE_DST = :CLI_FONE_DST,'
      '  CLI_FONE_ALT = :CLI_FONE_ALT,'
      '  CLI_FAX_DST = :CLI_FAX_DST,'
      '  CLI_FAX_ALT = :CLI_FAX_ALT,'
      '  CLI_UF_DST = :CLI_UF_DST,'
      '  CLI_UF_ALT = :CLI_UF_ALT,'
      '  CLI_INSCEST_DST = :CLI_INSCEST_DST,'
      '  CLI_INSCEST_ALT = :CLI_INSCEST_ALT,'
      '  CLI_DATEMIS_DST = :CLI_DATEMIS_DST,'
      '  CLI_DATEMIS_ALT = :CLI_DATEMIS_ALT,'
      '  CLI_DATENTSAI_DST = :CLI_DATENTSAI_DST,'
      '  CLI_DATENTSAI_ALT = :CLI_DATENTSAI_ALT,'
      '  CLI_HORASAI_DST = :CLI_HORASAI_DST,'
      '  CLI_HORASAI_ALT = :CLI_HORASAI_ALT,'
      '  CLI_PEDNUM_DST = :CLI_PEDNUM_DST,'
      '  CLI_PEDNUM_ALT = :CLI_PEDNUM_ALT,'
      '  CLI_INSCMUN_DST = :CLI_INSCMUN_DST,'
      '  CLI_INSCMUN_ALT = :CLI_INSCMUN_ALT,'
      '  CLI_DUPLNUM_DST = :CLI_DUPLNUM_DST,'
      '  CLI_DUPLNUM_ALT = :CLI_DUPLNUM_ALT,'
      '  CLI_DUPLVENC_DST = :CLI_DUPLVENC_DST,'
      '  CLI_DUPLVENC_ALT = :CLI_DUPLVENC_ALT,'
      '  CLI_DUPLVALOR_DST = :CLI_DUPLVALOR_DST,'
      '  CLI_DUPLVALOR_ALT = :CLI_DUPLVALOR_ALT,'
      '  PROD_COD_DST = :PROD_COD_DST,'
      '  PROD_COD_ALT = :PROD_COD_ALT,'
      '  PROD_PROD_DST = :PROD_PROD_DST,'
      '  PROD_PROD_ALT = :PROD_PROD_ALT,'
      '  PROD_CF_DST = :PROD_CF_DST,'
      '  PROD_CF_ALT = :PROD_CF_ALT,'
      '  PROD_SITTRIB_DST = :PROD_SITTRIB_DST,'
      '  PROD_SITTRIB_ALT = :PROD_SITTRIB_ALT,'
      '  PROD_UNIDADE_DST = :PROD_UNIDADE_DST,'
      '  PROD_UNIDADE_ALT = :PROD_UNIDADE_ALT,'
      '  PROD_QUANT_DST = :PROD_QUANT_DST,'
      '  PROD_QUANT_ALT = :PROD_QUANT_ALT,'
      '  PROD_VALORUNIT_DST = :PROD_VALORUNIT_DST,'
      '  PROD_VALORUNIT_ALT = :PROD_VALORUNIT_ALT,'
      '  PROD_VALORTOT_DST = :PROD_VALORTOT_DST,'
      '  PROD_VALORTOT_ALT = :PROD_VALORTOT_ALT,'
      '  PROD_ICMS_DST = :PROD_ICMS_DST,'
      '  PROD_ICMS_ALT = :PROD_ICMS_ALT,'
      '  PROD_IPI_DST = :PROD_IPI_DST,'
      '  PROD_IPI_ALT = :PROD_IPI_ALT,'
      '  PROD_VALORIPI_DST = :PROD_VALORIPI_DST,'
      '  PROD_VALORIPI_ALT = :PROD_VALORIPI_ALT,'
      '  FEC_BASEICMS_DST = :FEC_BASEICMS_DST,'
      '  FEC_BASEICMS_ALT = :FEC_BASEICMS_ALT,'
      '  FEC_VALORFRETE_DST = :FEC_VALORFRETE_DST,'
      '  FEC_VALORFRETE_ALT = :FEC_VALORFRETE_ALT,'
      '  FEC_VALORICMS_DST = :FEC_VALORICMS_DST,'
      '  FEC_VALORICMS_ALT = :FEC_VALORICMS_ALT,'
      '  FEC_VALORSEGURO_DST = :FEC_VALORSEGURO_DST,'
      '  FEC_VALORSEGURO_ALT = :FEC_VALORSEGURO_ALT,'
      '  FEC_BASECALCICMS_DST = :FEC_BASECALCICMS_DST,'
      '  FEC_BASECALCICMS_ALT = :FEC_BASECALCICMS_ALT,'
      '  FEC_DESPESAS_DST = :FEC_DESPESAS_DST,'
      '  FEC_DESPESAS_ALT = :FEC_DESPESAS_ALT,'
      '  FEC_VALORICMSSUB_DST = :FEC_VALORICMSSUB_DST,'
      '  FEC_VALORICMSSUB_ALT = :FEC_VALORICMSSUB_ALT,'
      '  FEC_IPI_DST = :FEC_IPI_DST,'
      '  FEC_IPI_ALT = :FEC_IPI_ALT,'
      '  FEC_VALORTOTAL_DST = :FEC_VALORTOTAL_DST,'
      '  FEC_ISS_DST = :FEC_ISS_DST,'
      '  FEC_VALORTOTAL_ALT = :FEC_VALORTOTAL_ALT,'
      '  FEC_ISS_ALT = :FEC_ISS_ALT,'
      '  FEC_VALORNOTA_DST = :FEC_VALORNOTA_DST,'
      '  FEC_VALORNOTA_ALT = :FEC_VALORNOTA_ALT,'
      '  TRANS_NOME_DST = :TRANS_NOME_DST,'
      '  TRANS_NOME_ALT = :TRANS_NOME_ALT,'
      '  TRANS_END_DST = :TRANS_END_DST,'
      '  TRANS_END_ALT = :TRANS_END_ALT,'
      '  TRANS_QUANTIDADE_DST = :TRANS_QUANTIDADE_DST,'
      '  TRANS_QUANTIDADE_ALT = :TRANS_QUANTIDADE_ALT,'
      '  TRANS_ESPECIE_DST = :TRANS_ESPECIE_DST,'
      '  TRANS_ESPECIE_ALT = :TRANS_ESPECIE_ALT,'
      '  TRANS_MARCA_DST = :TRANS_MARCA_DST,'
      '  TRANS_MARCA_ALT = :TRANS_MARCA_ALT,'
      '  TRANS_FRETECONTA_DST = :TRANS_FRETECONTA_DST,'
      '  TRANS_FRETECONTA_ALT = :TRANS_FRETECONTA_ALT,'
      '  TRANS_CID_DST = :TRANS_CID_DST,'
      '  TRANS_CID_ALT = :TRANS_CID_ALT,'
      '  TRANS_NUMERO_DST = :TRANS_NUMERO_DST,'
      '  TRANS_NUMERO_ALT = :TRANS_NUMERO_ALT,'
      '  TRANS_PLACA_DST = :TRANS_PLACA_DST,'
      '  TRANS_PLACA_ALT = :TRANS_PLACA_ALT,'
      '  TRANS_UFVEI_DST = :TRANS_UFVEI_DST,'
      '  TRANS_UFVEIALT = :TRANS_UFVEIALT,'
      '  TRANS_UF_DST = :TRANS_UF_DST,'
      '  TRANS_UF_ALT = :TRANS_UF_ALT,'
      '  TRANS_CGCCPF_DST = :TRANS_CGCCPF_DST,'
      '  TRANS_CGCCPF_ALT = :TRANS_CGCCPF_ALT,'
      '  TRANS_INSCEST_DST = :TRANS_INSCEST_DST,'
      '  TRANS_INSCEST_ALT = :TRANS_INSCEST_ALT,'
      '  TRANS_PESBRT_DST = :TRANS_PESBRT_DST,'
      '  TRANS_PESOBRT_ALT = :TRANS_PESOBRT_ALT,'
      '  TRANS_PESOLIQ_DST = :TRANS_PESOLIQ_DST,'
      '  TRANS_PESOLIQ_ALT = :TRANS_PESOLIQ_ALT,'
      '  TRANS_OBS_DST = :TRANS_OBS_DST,'
      '  TRANS_OBS_ALT = :TRANS_OBS_ALT,'
      '  IMPRESSORA_PULO = :IMPRESSORA_PULO,'
      '  IMPRESSORA_LPP = :IMPRESSORA_LPP,'
      '  PRODUTOSNOTA = :PRODUTOSNOTA,'
      '  LOCALDUPLICATAS = :LOCALDUPLICATAS,'
      '  NUMERODELINHASDANOTA = :NUMERODELINHASDANOTA,'
      '  PROD_DESC_DST = :PROD_DESC_DST,'
      '  PROD_DESC_ALT = :PROD_DESC_ALT,'
      '  DATA_ANO_ALT = :DATA_ANO_ALT,'
      '  DATA_ANO_DST = :DATA_ANO_DST,'
      '  DATA_DIA_ALT = :DATA_DIA_ALT,'
      '  DATA_DIA_DST = :DATA_DIA_DST,'
      '  DATA_MES_ALT = :DATA_MES_ALT,'
      '  DATA_MES_DST = :DATA_MES_DST,'
      '  OBS_ALT = :OBS_ALT,'
      '  OBS_DST = :OBS_DST,'
      '  NOTA_VENDEDOR_DST = :NOTA_VENDEDOR_DST,'
      '  NOTA_VENDEDOR_ALT = :NOTA_VENDEDOR_ALT,'
      '  NOTA_ECF_DST = :NOTA_ECF_DST,'
      '  NOTA_ECF_ALT = :NOTA_ECF_ALT,'
      '  NOTA_DESCONTO_DST = :NOTA_DESCONTO_DST,'
      '  NOTA_DESCONTO_ALT = :NOTA_DESCONTO_ALT,'
      '  NOTA_INDCOMPL_DST = :NOTA_INDCOMPL_DST,'
      '  NOTA_INFCOMPL_ALT = :NOTA_INFCOMPL_ALT,'
      '  CLI_DUPLLARGURA_COLUNA = :CLI_DUPLLARGURA_COLUNA,'
      '  CLI_DUPLNUM_COLUNA = :CLI_DUPLNUM_COLUNA,'
      '  NOTA_MSGNAT_DST = :NOTA_MSGNAT_DST,'
      '  NOTA_MSGNAT_ALT = :NOTA_MSGNAT_ALT,'
      '  NOTA_NUMRDP_DST = :NOTA_NUMRDP_DST,'
      '  NOTA_NUMRDP_ALT = :NOTA_NUMRDP_ALT,'
      '  PORTA_IMPRESSAO = :PORTA_IMPRESSAO,'
      '  NOTA_DESCONTO_ALT2 = :NOTA_DESCONTO_ALT2,'
      '  NOTA_DESCONTO_DST2 = :NOTA_DESCONTO_DST2,'
      '  PROD_QNTD_UNID_ALT = :PROD_QNTD_UNID_ALT,'
      '  PROD_QNTD_UNID_DST = :PROD_QNTD_UNID_DST,'
      '  PROD_TIPO_UNID_ALT = :PROD_TIPO_UNID_ALT,'
      '  PROD_TIPO_UNID_DST = :PROD_TIPO_UNID_DST,'
      '  MODELO = :MODELO,'
      '  NOTA_IRRF_DST = :NOTA_IRRF_DST,'
      '  NOTA_IRRF_ALT = :NOTA_IRRF_ALT,'
      '  NOTA_INSS_DST = :NOTA_INSS_DST,'
      '  NOTA_INSS_ALT = :NOTA_INSS_ALT,'
      '  NOTA_PIS_DST = :NOTA_PIS_DST,'
      '  NOTA_PIS_ALT = :NOTA_PIS_ALT,'
      '  NOTA_ISS_SUBST_DST = :NOTA_ISS_SUBST_DST,'
      '  NOTA_ISS_SUBST_ALT = :NOTA_ISS_SUBST_ALT,'
      '  PROD_TAM_NOME = :PROD_TAM_NOME,'
      '  CLI_NOME_RODAPE_DST = :CLI_NOME_RODAPE_DST,'
      '  CLI_NOME_RODAPE_ALT = :CLI_NOME_RODAPE_ALT,'
      '  CLI_DATENTSAI_RODAPE_DST = :CLI_DATENTSAI_RODAPE_DST,'
      '  CLI_DATENTSAI_RODAPE_ALT = :CLI_DATENTSAI_RODAPE_ALT,'
      '  FEC_VALORNOTA_RODAPE_ALT = :FEC_VALORNOTA_RODAPE_ALT,'
      '  FEC_VALORNOTA_RODAPE_DST = :FEC_VALORNOTA_RODAPE_DST,'
      '  NOTA_DUPLICA_NUMERO = :NOTA_DUPLICA_NUMERO,'
      '  NF_GRAFICA = :NF_GRAFICA,'
      '  NOTA_EMPRESA_ALT = :NOTA_EMPRESA_ALT,'
      '  NOTA_EMPRESA_DST = :NOTA_EMPRESA_DST,'
      '  PROD_MARCA_ALT = :PROD_MARCA_ALT,'
      '  PROD_MARCA_DST = :PROD_MARCA_DST,'
      '  PROD_LOTE_ALT = :PROD_LOTE_ALT,'
      '  PROD_LOTE_DST = :PROD_LOTE_DST,'
      '  NOTA_EMPRESA_UF_ALT = :NOTA_EMPRESA_UF_ALT,'
      '  NOTA_EMPRESA_UF_DST = :NOTA_EMPRESA_UF_DST,'
      '  CLI_CID_PROP_DST = :CLI_CID_PROP_DST,'
      '  CLI_CID_PROP_ALT = :CLI_CID_PROP_ALT,'
      '  CLI_UF_PROP_DST = :CLI_UF_PROP_DST,'
      '  CLI_UF_PROP_ALT = :CLI_UF_PROP_ALT,'
      '  PROD_LOTE_VALIDADE_ALT = :PROD_LOTE_VALIDADE_ALT,'
      '  PROD_LOTE_VALIDADE_DST = :PROD_LOTE_VALIDADE_DST,'
      '  CLI_END_PROP_ALT = :CLI_END_PROP_ALT,'
      '  CLI_END_PROP_DST = :CLI_END_PROP_DST,'
      '  CLI_NOME_PROP_ALT = :CLI_NOME_PROP_ALT,'
      '  CLI_NOME_PROP_DST = :CLI_NOME_PROP_DST,'
      '  NFSERV_GRAFICA = :NFSERV_GRAFICA,'
      '  NF_GRAFICA2 = :NF_GRAFICA2,'
      '  CONFIG_NF_GRAF = :CONFIG_NF_GRAF,'
      '  INDICE = :INDICE'
      'where'
      '  INDICE = :OLD_INDICE')
    Left = 504
    Top = 56
    object SerieLeiuteCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_SERIENF"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SerieLeiuteSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"SIS_SERIENF"."SERIE"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object SerieLeiuteULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      Origin = '"SIS_SERIENF"."ULTIMO_NUMERO"'
    end
    object SerieLeiuteTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"SIS_SERIENF"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object SerieLeiuteNOTA_NUM_DST: TIntegerField
      FieldName = 'NOTA_NUM_DST'
      Origin = '"SIS_SERIENF"."NOTA_NUM_DST"'
    end
    object SerieLeiuteNOTA_NUM_ALT: TIntegerField
      FieldName = 'NOTA_NUM_ALT'
      Origin = '"SIS_SERIENF"."NOTA_NUM_ALT"'
    end
    object SerieLeiuteNOTA_NUMRECIBO_DST: TIntegerField
      FieldName = 'NOTA_NUMRECIBO_DST'
      Origin = '"SIS_SERIENF"."NOTA_NUMRECIBO_DST"'
    end
    object SerieLeiuteNOTA_NUMRECIBO_ALT: TIntegerField
      FieldName = 'NOTA_NUMRECIBO_ALT'
      Origin = '"SIS_SERIENF"."NOTA_NUMRECIBO_ALT"'
    end
    object SerieLeiuteNOTA_ENT_SAI_DST: TIntegerField
      FieldName = 'NOTA_ENT_SAI_DST'
      Origin = '"SIS_SERIENF"."NOTA_ENT_SAI_DST"'
    end
    object SerieLeiuteNOTA_ENT_SAI_ALT: TIntegerField
      FieldName = 'NOTA_ENT_SAI_ALT'
      Origin = '"SIS_SERIENF"."NOTA_ENT_SAI_ALT"'
    end
    object SerieLeiuteNOTA_NATUREZA_DST: TIntegerField
      FieldName = 'NOTA_NATUREZA_DST'
      Origin = '"SIS_SERIENF"."NOTA_NATUREZA_DST"'
    end
    object SerieLeiuteNOTA_NATUREZA_ALT: TIntegerField
      FieldName = 'NOTA_NATUREZA_ALT'
      Origin = '"SIS_SERIENF"."NOTA_NATUREZA_ALT"'
    end
    object SerieLeiuteNOTA_CFOP_DST: TIntegerField
      FieldName = 'NOTA_CFOP_DST'
      Origin = '"SIS_SERIENF"."NOTA_CFOP_DST"'
    end
    object SerieLeiuteNOTA_CFOP_ALT: TIntegerField
      FieldName = 'NOTA_CFOP_ALT'
      Origin = '"SIS_SERIENF"."NOTA_CFOP_ALT"'
    end
    object SerieLeiuteNOTA_SUBS_TRIB_DST: TIntegerField
      FieldName = 'NOTA_SUBS_TRIB_DST'
      Origin = '"SIS_SERIENF"."NOTA_SUBS_TRIB_DST"'
    end
    object SerieLeiuteNOTA_SUBS_TRIB_ALT: TIntegerField
      FieldName = 'NOTA_SUBS_TRIB_ALT'
      Origin = '"SIS_SERIENF"."NOTA_SUBS_TRIB_ALT"'
    end
    object SerieLeiuteNOTA_CNDPG_DST: TIntegerField
      FieldName = 'NOTA_CNDPG_DST'
      Origin = '"SIS_SERIENF"."NOTA_CNDPG_DST"'
    end
    object SerieLeiuteNOTA_CNDPG_ALT: TIntegerField
      FieldName = 'NOTA_CNDPG_ALT'
      Origin = '"SIS_SERIENF"."NOTA_CNDPG_ALT"'
    end
    object SerieLeiuteCLI_NOME_DST: TIntegerField
      FieldName = 'CLI_NOME_DST'
      Origin = '"SIS_SERIENF"."CLI_NOME_DST"'
    end
    object SerieLeiuteCLI_NOME_ALT: TIntegerField
      FieldName = 'CLI_NOME_ALT'
      Origin = '"SIS_SERIENF"."CLI_NOME_ALT"'
    end
    object SerieLeiuteCLI_CGCCPF_DST: TIntegerField
      FieldName = 'CLI_CGCCPF_DST'
      Origin = '"SIS_SERIENF"."CLI_CGCCPF_DST"'
    end
    object SerieLeiuteCLI_CGCCPF_ALT: TIntegerField
      FieldName = 'CLI_CGCCPF_ALT'
      Origin = '"SIS_SERIENF"."CLI_CGCCPF_ALT"'
    end
    object SerieLeiuteCLI_END_DST: TIntegerField
      FieldName = 'CLI_END_DST'
      Origin = '"SIS_SERIENF"."CLI_END_DST"'
    end
    object SerieLeiuteCLI_END_ALT: TIntegerField
      FieldName = 'CLI_END_ALT'
      Origin = '"SIS_SERIENF"."CLI_END_ALT"'
    end
    object SerieLeiuteCLI_BAIRRO_DST: TIntegerField
      FieldName = 'CLI_BAIRRO_DST'
      Origin = '"SIS_SERIENF"."CLI_BAIRRO_DST"'
    end
    object SerieLeiuteCLI_BAIRRO_ALT: TIntegerField
      FieldName = 'CLI_BAIRRO_ALT'
      Origin = '"SIS_SERIENF"."CLI_BAIRRO_ALT"'
    end
    object SerieLeiuteCLI_CEP_DST: TIntegerField
      FieldName = 'CLI_CEP_DST'
      Origin = '"SIS_SERIENF"."CLI_CEP_DST"'
    end
    object SerieLeiuteCLI_CEP_ALT: TIntegerField
      FieldName = 'CLI_CEP_ALT'
      Origin = '"SIS_SERIENF"."CLI_CEP_ALT"'
    end
    object SerieLeiuteCLI_CID_DST: TIntegerField
      FieldName = 'CLI_CID_DST'
      Origin = '"SIS_SERIENF"."CLI_CID_DST"'
    end
    object SerieLeiuteCLI_CID_ALT: TIntegerField
      FieldName = 'CLI_CID_ALT'
      Origin = '"SIS_SERIENF"."CLI_CID_ALT"'
    end
    object SerieLeiuteCLI_FONE_DST: TIntegerField
      FieldName = 'CLI_FONE_DST'
      Origin = '"SIS_SERIENF"."CLI_FONE_DST"'
    end
    object SerieLeiuteCLI_FONE_ALT: TIntegerField
      FieldName = 'CLI_FONE_ALT'
      Origin = '"SIS_SERIENF"."CLI_FONE_ALT"'
    end
    object SerieLeiuteCLI_FAX_DST: TIntegerField
      FieldName = 'CLI_FAX_DST'
      Origin = '"SIS_SERIENF"."CLI_FAX_DST"'
    end
    object SerieLeiuteCLI_FAX_ALT: TIntegerField
      FieldName = 'CLI_FAX_ALT'
      Origin = '"SIS_SERIENF"."CLI_FAX_ALT"'
    end
    object SerieLeiuteCLI_UF_DST: TIntegerField
      FieldName = 'CLI_UF_DST'
      Origin = '"SIS_SERIENF"."CLI_UF_DST"'
    end
    object SerieLeiuteCLI_UF_ALT: TIntegerField
      FieldName = 'CLI_UF_ALT'
      Origin = '"SIS_SERIENF"."CLI_UF_ALT"'
    end
    object SerieLeiuteCLI_INSCEST_DST: TIntegerField
      FieldName = 'CLI_INSCEST_DST'
      Origin = '"SIS_SERIENF"."CLI_INSCEST_DST"'
    end
    object SerieLeiuteCLI_INSCEST_ALT: TIntegerField
      FieldName = 'CLI_INSCEST_ALT'
      Origin = '"SIS_SERIENF"."CLI_INSCEST_ALT"'
    end
    object SerieLeiuteCLI_DATEMIS_DST: TIntegerField
      FieldName = 'CLI_DATEMIS_DST'
      Origin = '"SIS_SERIENF"."CLI_DATEMIS_DST"'
    end
    object SerieLeiuteCLI_DATEMIS_ALT: TIntegerField
      FieldName = 'CLI_DATEMIS_ALT'
      Origin = '"SIS_SERIENF"."CLI_DATEMIS_ALT"'
    end
    object SerieLeiuteCLI_DATENTSAI_DST: TIntegerField
      FieldName = 'CLI_DATENTSAI_DST'
      Origin = '"SIS_SERIENF"."CLI_DATENTSAI_DST"'
    end
    object SerieLeiuteCLI_DATENTSAI_ALT: TIntegerField
      FieldName = 'CLI_DATENTSAI_ALT'
      Origin = '"SIS_SERIENF"."CLI_DATENTSAI_ALT"'
    end
    object SerieLeiuteCLI_HORASAI_DST: TIntegerField
      FieldName = 'CLI_HORASAI_DST'
      Origin = '"SIS_SERIENF"."CLI_HORASAI_DST"'
    end
    object SerieLeiuteCLI_HORASAI_ALT: TIntegerField
      FieldName = 'CLI_HORASAI_ALT'
      Origin = '"SIS_SERIENF"."CLI_HORASAI_ALT"'
    end
    object SerieLeiuteCLI_PEDNUM_DST: TIntegerField
      FieldName = 'CLI_PEDNUM_DST'
      Origin = '"SIS_SERIENF"."CLI_PEDNUM_DST"'
    end
    object SerieLeiuteCLI_PEDNUM_ALT: TIntegerField
      FieldName = 'CLI_PEDNUM_ALT'
      Origin = '"SIS_SERIENF"."CLI_PEDNUM_ALT"'
    end
    object SerieLeiuteCLI_INSCMUN_DST: TIntegerField
      FieldName = 'CLI_INSCMUN_DST'
      Origin = '"SIS_SERIENF"."CLI_INSCMUN_DST"'
    end
    object SerieLeiuteCLI_INSCMUN_ALT: TIntegerField
      FieldName = 'CLI_INSCMUN_ALT'
      Origin = '"SIS_SERIENF"."CLI_INSCMUN_ALT"'
    end
    object SerieLeiuteCLI_DUPLNUM_DST: TIntegerField
      FieldName = 'CLI_DUPLNUM_DST'
      Origin = '"SIS_SERIENF"."CLI_DUPLNUM_DST"'
    end
    object SerieLeiuteCLI_DUPLNUM_ALT: TIntegerField
      FieldName = 'CLI_DUPLNUM_ALT'
      Origin = '"SIS_SERIENF"."CLI_DUPLNUM_ALT"'
    end
    object SerieLeiuteCLI_DUPLVENC_DST: TIntegerField
      FieldName = 'CLI_DUPLVENC_DST'
      Origin = '"SIS_SERIENF"."CLI_DUPLVENC_DST"'
    end
    object SerieLeiuteCLI_DUPLVENC_ALT: TIntegerField
      FieldName = 'CLI_DUPLVENC_ALT'
      Origin = '"SIS_SERIENF"."CLI_DUPLVENC_ALT"'
    end
    object SerieLeiuteCLI_DUPLVALOR_DST: TIntegerField
      FieldName = 'CLI_DUPLVALOR_DST'
      Origin = '"SIS_SERIENF"."CLI_DUPLVALOR_DST"'
    end
    object SerieLeiuteCLI_DUPLVALOR_ALT: TIntegerField
      FieldName = 'CLI_DUPLVALOR_ALT'
      Origin = '"SIS_SERIENF"."CLI_DUPLVALOR_ALT"'
    end
    object SerieLeiutePROD_COD_DST: TIntegerField
      FieldName = 'PROD_COD_DST'
      Origin = '"SIS_SERIENF"."PROD_COD_DST"'
    end
    object SerieLeiutePROD_COD_ALT: TIntegerField
      FieldName = 'PROD_COD_ALT'
      Origin = '"SIS_SERIENF"."PROD_COD_ALT"'
    end
    object SerieLeiutePROD_PROD_DST: TIntegerField
      FieldName = 'PROD_PROD_DST'
      Origin = '"SIS_SERIENF"."PROD_PROD_DST"'
    end
    object SerieLeiutePROD_PROD_ALT: TIntegerField
      FieldName = 'PROD_PROD_ALT'
      Origin = '"SIS_SERIENF"."PROD_PROD_ALT"'
    end
    object SerieLeiutePROD_CF_DST: TIntegerField
      FieldName = 'PROD_CF_DST'
      Origin = '"SIS_SERIENF"."PROD_CF_DST"'
    end
    object SerieLeiutePROD_CF_ALT: TIntegerField
      FieldName = 'PROD_CF_ALT'
      Origin = '"SIS_SERIENF"."PROD_CF_ALT"'
    end
    object SerieLeiutePROD_SITTRIB_DST: TIntegerField
      FieldName = 'PROD_SITTRIB_DST'
      Origin = '"SIS_SERIENF"."PROD_SITTRIB_DST"'
    end
    object SerieLeiutePROD_SITTRIB_ALT: TIntegerField
      FieldName = 'PROD_SITTRIB_ALT'
      Origin = '"SIS_SERIENF"."PROD_SITTRIB_ALT"'
    end
    object SerieLeiutePROD_UNIDADE_DST: TIntegerField
      FieldName = 'PROD_UNIDADE_DST'
      Origin = '"SIS_SERIENF"."PROD_UNIDADE_DST"'
    end
    object SerieLeiutePROD_UNIDADE_ALT: TIntegerField
      FieldName = 'PROD_UNIDADE_ALT'
      Origin = '"SIS_SERIENF"."PROD_UNIDADE_ALT"'
    end
    object SerieLeiutePROD_QUANT_DST: TIntegerField
      FieldName = 'PROD_QUANT_DST'
      Origin = '"SIS_SERIENF"."PROD_QUANT_DST"'
    end
    object SerieLeiutePROD_QUANT_ALT: TIntegerField
      FieldName = 'PROD_QUANT_ALT'
      Origin = '"SIS_SERIENF"."PROD_QUANT_ALT"'
    end
    object SerieLeiutePROD_VALORUNIT_DST: TIntegerField
      FieldName = 'PROD_VALORUNIT_DST'
      Origin = '"SIS_SERIENF"."PROD_VALORUNIT_DST"'
    end
    object SerieLeiutePROD_VALORUNIT_ALT: TIntegerField
      FieldName = 'PROD_VALORUNIT_ALT'
      Origin = '"SIS_SERIENF"."PROD_VALORUNIT_ALT"'
    end
    object SerieLeiutePROD_VALORTOT_DST: TIntegerField
      FieldName = 'PROD_VALORTOT_DST'
      Origin = '"SIS_SERIENF"."PROD_VALORTOT_DST"'
    end
    object SerieLeiutePROD_VALORTOT_ALT: TIntegerField
      FieldName = 'PROD_VALORTOT_ALT'
      Origin = '"SIS_SERIENF"."PROD_VALORTOT_ALT"'
    end
    object SerieLeiutePROD_ICMS_DST: TIntegerField
      FieldName = 'PROD_ICMS_DST'
      Origin = '"SIS_SERIENF"."PROD_ICMS_DST"'
    end
    object SerieLeiutePROD_ICMS_ALT: TIntegerField
      FieldName = 'PROD_ICMS_ALT'
      Origin = '"SIS_SERIENF"."PROD_ICMS_ALT"'
    end
    object SerieLeiutePROD_IPI_DST: TIntegerField
      FieldName = 'PROD_IPI_DST'
      Origin = '"SIS_SERIENF"."PROD_IPI_DST"'
    end
    object SerieLeiutePROD_IPI_ALT: TIntegerField
      FieldName = 'PROD_IPI_ALT'
      Origin = '"SIS_SERIENF"."PROD_IPI_ALT"'
    end
    object SerieLeiutePROD_VALORIPI_DST: TIntegerField
      FieldName = 'PROD_VALORIPI_DST'
      Origin = '"SIS_SERIENF"."PROD_VALORIPI_DST"'
    end
    object SerieLeiutePROD_VALORIPI_ALT: TIntegerField
      FieldName = 'PROD_VALORIPI_ALT'
      Origin = '"SIS_SERIENF"."PROD_VALORIPI_ALT"'
    end
    object SerieLeiuteFEC_BASEICMS_DST: TIntegerField
      FieldName = 'FEC_BASEICMS_DST'
      Origin = '"SIS_SERIENF"."FEC_BASEICMS_DST"'
    end
    object SerieLeiuteFEC_BASEICMS_ALT: TIntegerField
      FieldName = 'FEC_BASEICMS_ALT'
      Origin = '"SIS_SERIENF"."FEC_BASEICMS_ALT"'
    end
    object SerieLeiuteFEC_VALORFRETE_DST: TIntegerField
      FieldName = 'FEC_VALORFRETE_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORFRETE_DST"'
    end
    object SerieLeiuteFEC_VALORFRETE_ALT: TIntegerField
      FieldName = 'FEC_VALORFRETE_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORFRETE_ALT"'
    end
    object SerieLeiuteFEC_VALORICMS_DST: TIntegerField
      FieldName = 'FEC_VALORICMS_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORICMS_DST"'
    end
    object SerieLeiuteFEC_VALORICMS_ALT: TIntegerField
      FieldName = 'FEC_VALORICMS_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORICMS_ALT"'
    end
    object SerieLeiuteFEC_VALORSEGURO_DST: TIntegerField
      FieldName = 'FEC_VALORSEGURO_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORSEGURO_DST"'
    end
    object SerieLeiuteFEC_VALORSEGURO_ALT: TIntegerField
      FieldName = 'FEC_VALORSEGURO_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORSEGURO_ALT"'
    end
    object SerieLeiuteFEC_BASECALCICMS_DST: TIntegerField
      FieldName = 'FEC_BASECALCICMS_DST'
      Origin = '"SIS_SERIENF"."FEC_BASECALCICMS_DST"'
    end
    object SerieLeiuteFEC_BASECALCICMS_ALT: TIntegerField
      FieldName = 'FEC_BASECALCICMS_ALT'
      Origin = '"SIS_SERIENF"."FEC_BASECALCICMS_ALT"'
    end
    object SerieLeiuteFEC_DESPESAS_DST: TIntegerField
      FieldName = 'FEC_DESPESAS_DST'
      Origin = '"SIS_SERIENF"."FEC_DESPESAS_DST"'
    end
    object SerieLeiuteFEC_DESPESAS_ALT: TIntegerField
      FieldName = 'FEC_DESPESAS_ALT'
      Origin = '"SIS_SERIENF"."FEC_DESPESAS_ALT"'
    end
    object SerieLeiuteFEC_VALORICMSSUB_DST: TIntegerField
      FieldName = 'FEC_VALORICMSSUB_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORICMSSUB_DST"'
    end
    object SerieLeiuteFEC_VALORICMSSUB_ALT: TIntegerField
      FieldName = 'FEC_VALORICMSSUB_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORICMSSUB_ALT"'
    end
    object SerieLeiuteFEC_IPI_DST: TIntegerField
      FieldName = 'FEC_IPI_DST'
      Origin = '"SIS_SERIENF"."FEC_IPI_DST"'
    end
    object SerieLeiuteFEC_IPI_ALT: TIntegerField
      FieldName = 'FEC_IPI_ALT'
      Origin = '"SIS_SERIENF"."FEC_IPI_ALT"'
    end
    object SerieLeiuteFEC_VALORTOTAL_DST: TIntegerField
      FieldName = 'FEC_VALORTOTAL_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORTOTAL_DST"'
    end
    object SerieLeiuteFEC_ISS_DST: TIntegerField
      FieldName = 'FEC_ISS_DST'
      Origin = '"SIS_SERIENF"."FEC_ISS_DST"'
    end
    object SerieLeiuteFEC_VALORTOTAL_ALT: TIntegerField
      FieldName = 'FEC_VALORTOTAL_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORTOTAL_ALT"'
    end
    object SerieLeiuteFEC_ISS_ALT: TIntegerField
      FieldName = 'FEC_ISS_ALT'
      Origin = '"SIS_SERIENF"."FEC_ISS_ALT"'
    end
    object SerieLeiuteFEC_VALORNOTA_DST: TIntegerField
      FieldName = 'FEC_VALORNOTA_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORNOTA_DST"'
    end
    object SerieLeiuteFEC_VALORNOTA_ALT: TIntegerField
      FieldName = 'FEC_VALORNOTA_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORNOTA_ALT"'
    end
    object SerieLeiuteTRANS_NOME_DST: TIntegerField
      FieldName = 'TRANS_NOME_DST'
      Origin = '"SIS_SERIENF"."TRANS_NOME_DST"'
    end
    object SerieLeiuteTRANS_NOME_ALT: TIntegerField
      FieldName = 'TRANS_NOME_ALT'
      Origin = '"SIS_SERIENF"."TRANS_NOME_ALT"'
    end
    object SerieLeiuteTRANS_END_DST: TIntegerField
      FieldName = 'TRANS_END_DST'
      Origin = '"SIS_SERIENF"."TRANS_END_DST"'
    end
    object SerieLeiuteTRANS_END_ALT: TIntegerField
      FieldName = 'TRANS_END_ALT'
      Origin = '"SIS_SERIENF"."TRANS_END_ALT"'
    end
    object SerieLeiuteTRANS_QUANTIDADE_DST: TIntegerField
      FieldName = 'TRANS_QUANTIDADE_DST'
      Origin = '"SIS_SERIENF"."TRANS_QUANTIDADE_DST"'
    end
    object SerieLeiuteTRANS_QUANTIDADE_ALT: TIntegerField
      FieldName = 'TRANS_QUANTIDADE_ALT'
      Origin = '"SIS_SERIENF"."TRANS_QUANTIDADE_ALT"'
    end
    object SerieLeiuteTRANS_ESPECIE_DST: TIntegerField
      FieldName = 'TRANS_ESPECIE_DST'
      Origin = '"SIS_SERIENF"."TRANS_ESPECIE_DST"'
    end
    object SerieLeiuteTRANS_ESPECIE_ALT: TIntegerField
      FieldName = 'TRANS_ESPECIE_ALT'
      Origin = '"SIS_SERIENF"."TRANS_ESPECIE_ALT"'
    end
    object SerieLeiuteTRANS_MARCA_DST: TIntegerField
      FieldName = 'TRANS_MARCA_DST'
      Origin = '"SIS_SERIENF"."TRANS_MARCA_DST"'
    end
    object SerieLeiuteTRANS_MARCA_ALT: TIntegerField
      FieldName = 'TRANS_MARCA_ALT'
      Origin = '"SIS_SERIENF"."TRANS_MARCA_ALT"'
    end
    object SerieLeiuteTRANS_FRETECONTA_DST: TIntegerField
      FieldName = 'TRANS_FRETECONTA_DST'
      Origin = '"SIS_SERIENF"."TRANS_FRETECONTA_DST"'
    end
    object SerieLeiuteTRANS_FRETECONTA_ALT: TIntegerField
      FieldName = 'TRANS_FRETECONTA_ALT'
      Origin = '"SIS_SERIENF"."TRANS_FRETECONTA_ALT"'
    end
    object SerieLeiuteTRANS_CID_DST: TIntegerField
      FieldName = 'TRANS_CID_DST'
      Origin = '"SIS_SERIENF"."TRANS_CID_DST"'
    end
    object SerieLeiuteTRANS_CID_ALT: TIntegerField
      FieldName = 'TRANS_CID_ALT'
      Origin = '"SIS_SERIENF"."TRANS_CID_ALT"'
    end
    object SerieLeiuteTRANS_NUMERO_DST: TIntegerField
      FieldName = 'TRANS_NUMERO_DST'
      Origin = '"SIS_SERIENF"."TRANS_NUMERO_DST"'
    end
    object SerieLeiuteTRANS_NUMERO_ALT: TIntegerField
      FieldName = 'TRANS_NUMERO_ALT'
      Origin = '"SIS_SERIENF"."TRANS_NUMERO_ALT"'
    end
    object SerieLeiuteTRANS_PLACA_DST: TIntegerField
      FieldName = 'TRANS_PLACA_DST'
      Origin = '"SIS_SERIENF"."TRANS_PLACA_DST"'
    end
    object SerieLeiuteTRANS_PLACA_ALT: TIntegerField
      FieldName = 'TRANS_PLACA_ALT'
      Origin = '"SIS_SERIENF"."TRANS_PLACA_ALT"'
    end
    object SerieLeiuteTRANS_UFVEI_DST: TIntegerField
      FieldName = 'TRANS_UFVEI_DST'
      Origin = '"SIS_SERIENF"."TRANS_UFVEI_DST"'
    end
    object SerieLeiuteTRANS_UFVEIALT: TIntegerField
      FieldName = 'TRANS_UFVEIALT'
      Origin = '"SIS_SERIENF"."TRANS_UFVEIALT"'
    end
    object SerieLeiuteTRANS_UF_DST: TIntegerField
      FieldName = 'TRANS_UF_DST'
      Origin = '"SIS_SERIENF"."TRANS_UF_DST"'
    end
    object SerieLeiuteTRANS_UF_ALT: TIntegerField
      FieldName = 'TRANS_UF_ALT'
      Origin = '"SIS_SERIENF"."TRANS_UF_ALT"'
    end
    object SerieLeiuteTRANS_CGCCPF_DST: TIntegerField
      FieldName = 'TRANS_CGCCPF_DST'
      Origin = '"SIS_SERIENF"."TRANS_CGCCPF_DST"'
    end
    object SerieLeiuteTRANS_CGCCPF_ALT: TIntegerField
      FieldName = 'TRANS_CGCCPF_ALT'
      Origin = '"SIS_SERIENF"."TRANS_CGCCPF_ALT"'
    end
    object SerieLeiuteTRANS_INSCEST_DST: TIntegerField
      FieldName = 'TRANS_INSCEST_DST'
      Origin = '"SIS_SERIENF"."TRANS_INSCEST_DST"'
    end
    object SerieLeiuteTRANS_INSCEST_ALT: TIntegerField
      FieldName = 'TRANS_INSCEST_ALT'
      Origin = '"SIS_SERIENF"."TRANS_INSCEST_ALT"'
    end
    object SerieLeiuteTRANS_PESBRT_DST: TIntegerField
      FieldName = 'TRANS_PESBRT_DST'
      Origin = '"SIS_SERIENF"."TRANS_PESBRT_DST"'
    end
    object SerieLeiuteTRANS_PESOBRT_ALT: TIntegerField
      FieldName = 'TRANS_PESOBRT_ALT'
      Origin = '"SIS_SERIENF"."TRANS_PESOBRT_ALT"'
    end
    object SerieLeiuteTRANS_PESOLIQ_DST: TIntegerField
      FieldName = 'TRANS_PESOLIQ_DST'
      Origin = '"SIS_SERIENF"."TRANS_PESOLIQ_DST"'
    end
    object SerieLeiuteTRANS_PESOLIQ_ALT: TIntegerField
      FieldName = 'TRANS_PESOLIQ_ALT'
      Origin = '"SIS_SERIENF"."TRANS_PESOLIQ_ALT"'
    end
    object SerieLeiuteTRANS_OBS_DST: TIntegerField
      FieldName = 'TRANS_OBS_DST'
      Origin = '"SIS_SERIENF"."TRANS_OBS_DST"'
    end
    object SerieLeiuteTRANS_OBS_ALT: TIntegerField
      FieldName = 'TRANS_OBS_ALT'
      Origin = '"SIS_SERIENF"."TRANS_OBS_ALT"'
    end
    object SerieLeiuteIMPRESSORA_PULO: TIntegerField
      FieldName = 'IMPRESSORA_PULO'
      Origin = '"SIS_SERIENF"."IMPRESSORA_PULO"'
    end
    object SerieLeiuteIMPRESSORA_LPP: TIBStringField
      FieldName = 'IMPRESSORA_LPP'
      Origin = '"SIS_SERIENF"."IMPRESSORA_LPP"'
      Size = 10
    end
    object SerieLeiutePRODUTOSNOTA: TIntegerField
      FieldName = 'PRODUTOSNOTA'
      Origin = '"SIS_SERIENF"."PRODUTOSNOTA"'
    end
    object SerieLeiuteLOCALDUPLICATAS: TIBStringField
      FieldName = 'LOCALDUPLICATAS'
      Origin = '"SIS_SERIENF"."LOCALDUPLICATAS"'
      FixedChar = True
      Size = 1
    end
    object SerieLeiuteNUMERODELINHASDANOTA: TIntegerField
      FieldName = 'NUMERODELINHASDANOTA'
      Origin = '"SIS_SERIENF"."NUMERODELINHASDANOTA"'
    end
    object SerieLeiutePROD_DESC_DST: TIntegerField
      FieldName = 'PROD_DESC_DST'
      Origin = '"SIS_SERIENF"."PROD_DESC_DST"'
    end
    object SerieLeiutePROD_DESC_ALT: TIntegerField
      FieldName = 'PROD_DESC_ALT'
      Origin = '"SIS_SERIENF"."PROD_DESC_ALT"'
    end
    object SerieLeiuteDATA_ANO_ALT: TIntegerField
      FieldName = 'DATA_ANO_ALT'
      Origin = '"SIS_SERIENF"."DATA_ANO_ALT"'
    end
    object SerieLeiuteDATA_ANO_DST: TIntegerField
      FieldName = 'DATA_ANO_DST'
      Origin = '"SIS_SERIENF"."DATA_ANO_DST"'
    end
    object SerieLeiuteDATA_DIA_ALT: TIntegerField
      FieldName = 'DATA_DIA_ALT'
      Origin = '"SIS_SERIENF"."DATA_DIA_ALT"'
    end
    object SerieLeiuteDATA_DIA_DST: TIntegerField
      FieldName = 'DATA_DIA_DST'
      Origin = '"SIS_SERIENF"."DATA_DIA_DST"'
    end
    object SerieLeiuteDATA_MES_ALT: TIntegerField
      FieldName = 'DATA_MES_ALT'
      Origin = '"SIS_SERIENF"."DATA_MES_ALT"'
    end
    object SerieLeiuteDATA_MES_DST: TIntegerField
      FieldName = 'DATA_MES_DST'
      Origin = '"SIS_SERIENF"."DATA_MES_DST"'
    end
    object SerieLeiuteOBS_ALT: TIntegerField
      FieldName = 'OBS_ALT'
      Origin = '"SIS_SERIENF"."OBS_ALT"'
    end
    object SerieLeiuteOBS_DST: TIntegerField
      FieldName = 'OBS_DST'
      Origin = '"SIS_SERIENF"."OBS_DST"'
    end
    object SerieLeiuteNOTA_VENDEDOR_DST: TIntegerField
      FieldName = 'NOTA_VENDEDOR_DST'
      Origin = '"SIS_SERIENF"."NOTA_VENDEDOR_DST"'
    end
    object SerieLeiuteNOTA_VENDEDOR_ALT: TIntegerField
      FieldName = 'NOTA_VENDEDOR_ALT'
      Origin = '"SIS_SERIENF"."NOTA_VENDEDOR_ALT"'
    end
    object SerieLeiuteNOTA_ECF_DST: TIntegerField
      FieldName = 'NOTA_ECF_DST'
      Origin = '"SIS_SERIENF"."NOTA_ECF_DST"'
    end
    object SerieLeiuteNOTA_ECF_ALT: TIntegerField
      FieldName = 'NOTA_ECF_ALT'
      Origin = '"SIS_SERIENF"."NOTA_ECF_ALT"'
    end
    object SerieLeiuteNOTA_DESCONTO_DST: TIntegerField
      FieldName = 'NOTA_DESCONTO_DST'
      Origin = '"SIS_SERIENF"."NOTA_DESCONTO_DST"'
    end
    object SerieLeiuteNOTA_DESCONTO_ALT: TIntegerField
      FieldName = 'NOTA_DESCONTO_ALT'
      Origin = '"SIS_SERIENF"."NOTA_DESCONTO_ALT"'
    end
    object SerieLeiuteNOTA_INDCOMPL_DST: TIntegerField
      FieldName = 'NOTA_INDCOMPL_DST'
      Origin = '"SIS_SERIENF"."NOTA_INDCOMPL_DST"'
    end
    object SerieLeiuteNOTA_INFCOMPL_ALT: TIntegerField
      FieldName = 'NOTA_INFCOMPL_ALT'
      Origin = '"SIS_SERIENF"."NOTA_INFCOMPL_ALT"'
    end
    object SerieLeiuteCLI_DUPLLARGURA_COLUNA: TIntegerField
      FieldName = 'CLI_DUPLLARGURA_COLUNA'
      Origin = '"SIS_SERIENF"."CLI_DUPLLARGURA_COLUNA"'
    end
    object SerieLeiuteCLI_DUPLNUM_COLUNA: TIntegerField
      FieldName = 'CLI_DUPLNUM_COLUNA'
      Origin = '"SIS_SERIENF"."CLI_DUPLNUM_COLUNA"'
    end
    object SerieLeiuteNOTA_MSGNAT_DST: TIntegerField
      FieldName = 'NOTA_MSGNAT_DST'
      Origin = '"SIS_SERIENF"."NOTA_MSGNAT_DST"'
    end
    object SerieLeiuteNOTA_MSGNAT_ALT: TIntegerField
      FieldName = 'NOTA_MSGNAT_ALT'
      Origin = '"SIS_SERIENF"."NOTA_MSGNAT_ALT"'
    end
    object SerieLeiuteNOTA_NUMRDP_DST: TIntegerField
      FieldName = 'NOTA_NUMRDP_DST'
      Origin = '"SIS_SERIENF"."NOTA_NUMRDP_DST"'
    end
    object SerieLeiuteNOTA_NUMRDP_ALT: TIntegerField
      FieldName = 'NOTA_NUMRDP_ALT'
      Origin = '"SIS_SERIENF"."NOTA_NUMRDP_ALT"'
    end
    object SerieLeiutePORTA_IMPRESSAO: TIBStringField
      FieldName = 'PORTA_IMPRESSAO'
      Origin = '"SIS_SERIENF"."PORTA_IMPRESSAO"'
      Size = 30
    end
    object SerieLeiuteNOTA_DESCONTO_ALT2: TIntegerField
      FieldName = 'NOTA_DESCONTO_ALT2'
      Origin = '"SIS_SERIENF"."NOTA_DESCONTO_ALT2"'
    end
    object SerieLeiuteNOTA_DESCONTO_DST2: TIntegerField
      FieldName = 'NOTA_DESCONTO_DST2'
      Origin = '"SIS_SERIENF"."NOTA_DESCONTO_DST2"'
    end
    object SerieLeiutePROD_QNTD_UNID_ALT: TIntegerField
      FieldName = 'PROD_QNTD_UNID_ALT'
      Origin = '"SIS_SERIENF"."PROD_QNTD_UNID_ALT"'
    end
    object SerieLeiutePROD_QNTD_UNID_DST: TIntegerField
      FieldName = 'PROD_QNTD_UNID_DST'
      Origin = '"SIS_SERIENF"."PROD_QNTD_UNID_DST"'
    end
    object SerieLeiutePROD_TIPO_UNID_ALT: TIntegerField
      FieldName = 'PROD_TIPO_UNID_ALT'
      Origin = '"SIS_SERIENF"."PROD_TIPO_UNID_ALT"'
    end
    object SerieLeiutePROD_TIPO_UNID_DST: TIntegerField
      FieldName = 'PROD_TIPO_UNID_DST'
      Origin = '"SIS_SERIENF"."PROD_TIPO_UNID_DST"'
    end
    object SerieLeiuteMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"SIS_SERIENF"."MODELO"'
      FixedChar = True
      Size = 3
    end
    object SerieLeiuteNOTA_IRRF_DST: TIntegerField
      FieldName = 'NOTA_IRRF_DST'
      Origin = '"SIS_SERIENF"."NOTA_IRRF_DST"'
    end
    object SerieLeiuteNOTA_IRRF_ALT: TIntegerField
      FieldName = 'NOTA_IRRF_ALT'
      Origin = '"SIS_SERIENF"."NOTA_IRRF_ALT"'
    end
    object SerieLeiuteNOTA_INSS_DST: TIntegerField
      FieldName = 'NOTA_INSS_DST'
      Origin = '"SIS_SERIENF"."NOTA_INSS_DST"'
    end
    object SerieLeiuteNOTA_INSS_ALT: TIntegerField
      FieldName = 'NOTA_INSS_ALT'
      Origin = '"SIS_SERIENF"."NOTA_INSS_ALT"'
    end
    object SerieLeiuteNOTA_PIS_DST: TIntegerField
      FieldName = 'NOTA_PIS_DST'
      Origin = '"SIS_SERIENF"."NOTA_PIS_DST"'
    end
    object SerieLeiuteNOTA_PIS_ALT: TIntegerField
      FieldName = 'NOTA_PIS_ALT'
      Origin = '"SIS_SERIENF"."NOTA_PIS_ALT"'
    end
    object SerieLeiuteNOTA_ISS_SUBST_DST: TIntegerField
      FieldName = 'NOTA_ISS_SUBST_DST'
      Origin = '"SIS_SERIENF"."NOTA_ISS_SUBST_DST"'
    end
    object SerieLeiuteNOTA_ISS_SUBST_ALT: TIntegerField
      FieldName = 'NOTA_ISS_SUBST_ALT'
      Origin = '"SIS_SERIENF"."NOTA_ISS_SUBST_ALT"'
    end
    object SerieLeiutePROD_TAM_NOME: TIntegerField
      FieldName = 'PROD_TAM_NOME'
      Origin = '"SIS_SERIENF"."PROD_TAM_NOME"'
    end
    object SerieLeiuteCLI_NOME_RODAPE_DST: TIntegerField
      FieldName = 'CLI_NOME_RODAPE_DST'
      Origin = '"SIS_SERIENF"."CLI_NOME_RODAPE_DST"'
    end
    object SerieLeiuteCLI_NOME_RODAPE_ALT: TIntegerField
      FieldName = 'CLI_NOME_RODAPE_ALT'
      Origin = '"SIS_SERIENF"."CLI_NOME_RODAPE_ALT"'
    end
    object SerieLeiuteCLI_DATENTSAI_RODAPE_DST: TIntegerField
      FieldName = 'CLI_DATENTSAI_RODAPE_DST'
      Origin = '"SIS_SERIENF"."CLI_DATENTSAI_RODAPE_DST"'
    end
    object SerieLeiuteCLI_DATENTSAI_RODAPE_ALT: TIntegerField
      FieldName = 'CLI_DATENTSAI_RODAPE_ALT'
      Origin = '"SIS_SERIENF"."CLI_DATENTSAI_RODAPE_ALT"'
    end
    object SerieLeiuteFEC_VALORNOTA_RODAPE_ALT: TIntegerField
      FieldName = 'FEC_VALORNOTA_RODAPE_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORNOTA_RODAPE_ALT"'
    end
    object SerieLeiuteFEC_VALORNOTA_RODAPE_DST: TIntegerField
      FieldName = 'FEC_VALORNOTA_RODAPE_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORNOTA_RODAPE_DST"'
    end
    object SerieLeiuteNOTA_DUPLICA_NUMERO: TIBStringField
      FieldName = 'NOTA_DUPLICA_NUMERO'
      Origin = '"SIS_SERIENF"."NOTA_DUPLICA_NUMERO"'
      FixedChar = True
      Size = 1
    end
    object SerieLeiuteNF_GRAFICA: TIBStringField
      FieldName = 'NF_GRAFICA'
      Origin = '"SIS_SERIENF"."NF_GRAFICA"'
      FixedChar = True
      Size = 1
    end
    object SerieLeiuteNOTA_EMPRESA_ALT: TIntegerField
      FieldName = 'NOTA_EMPRESA_ALT'
      Origin = '"SIS_SERIENF"."NOTA_EMPRESA_ALT"'
    end
    object SerieLeiuteNOTA_EMPRESA_DST: TIntegerField
      FieldName = 'NOTA_EMPRESA_DST'
      Origin = '"SIS_SERIENF"."NOTA_EMPRESA_DST"'
    end
    object SerieLeiutePROD_MARCA_ALT: TIntegerField
      FieldName = 'PROD_MARCA_ALT'
      Origin = '"SIS_SERIENF"."PROD_MARCA_ALT"'
    end
    object SerieLeiutePROD_MARCA_DST: TIntegerField
      FieldName = 'PROD_MARCA_DST'
      Origin = '"SIS_SERIENF"."PROD_MARCA_DST"'
    end
    object SerieLeiutePROD_LOTE_ALT: TIntegerField
      FieldName = 'PROD_LOTE_ALT'
      Origin = '"SIS_SERIENF"."PROD_LOTE_ALT"'
    end
    object SerieLeiutePROD_LOTE_DST: TIntegerField
      FieldName = 'PROD_LOTE_DST'
      Origin = '"SIS_SERIENF"."PROD_LOTE_DST"'
    end
    object SerieLeiuteNOTA_EMPRESA_UF_ALT: TIntegerField
      FieldName = 'NOTA_EMPRESA_UF_ALT'
      Origin = '"SIS_SERIENF"."NOTA_EMPRESA_UF_ALT"'
    end
    object SerieLeiuteNOTA_EMPRESA_UF_DST: TIntegerField
      FieldName = 'NOTA_EMPRESA_UF_DST'
      Origin = '"SIS_SERIENF"."NOTA_EMPRESA_UF_DST"'
    end
    object SerieLeiuteCLI_CID_PROP_DST: TIntegerField
      FieldName = 'CLI_CID_PROP_DST'
      Origin = '"SIS_SERIENF"."CLI_CID_PROP_DST"'
    end
    object SerieLeiuteCLI_CID_PROP_ALT: TIntegerField
      FieldName = 'CLI_CID_PROP_ALT'
      Origin = '"SIS_SERIENF"."CLI_CID_PROP_ALT"'
    end
    object SerieLeiuteCLI_UF_PROP_DST: TIntegerField
      FieldName = 'CLI_UF_PROP_DST'
      Origin = '"SIS_SERIENF"."CLI_UF_PROP_DST"'
    end
    object SerieLeiuteCLI_UF_PROP_ALT: TIntegerField
      FieldName = 'CLI_UF_PROP_ALT'
      Origin = '"SIS_SERIENF"."CLI_UF_PROP_ALT"'
    end
    object SerieLeiutePROD_LOTE_VALIDADE_ALT: TIntegerField
      FieldName = 'PROD_LOTE_VALIDADE_ALT'
      Origin = '"SIS_SERIENF"."PROD_LOTE_VALIDADE_ALT"'
    end
    object SerieLeiutePROD_LOTE_VALIDADE_DST: TIntegerField
      FieldName = 'PROD_LOTE_VALIDADE_DST'
      Origin = '"SIS_SERIENF"."PROD_LOTE_VALIDADE_DST"'
    end
    object SerieLeiuteCLI_END_PROP_ALT: TIntegerField
      FieldName = 'CLI_END_PROP_ALT'
      Origin = '"SIS_SERIENF"."CLI_END_PROP_ALT"'
    end
    object SerieLeiuteCLI_END_PROP_DST: TIntegerField
      FieldName = 'CLI_END_PROP_DST'
      Origin = '"SIS_SERIENF"."CLI_END_PROP_DST"'
    end
    object SerieLeiuteCLI_NOME_PROP_ALT: TIntegerField
      FieldName = 'CLI_NOME_PROP_ALT'
      Origin = '"SIS_SERIENF"."CLI_NOME_PROP_ALT"'
    end
    object SerieLeiuteCLI_NOME_PROP_DST: TIntegerField
      FieldName = 'CLI_NOME_PROP_DST'
      Origin = '"SIS_SERIENF"."CLI_NOME_PROP_DST"'
    end
    object SerieLeiuteNFSERV_GRAFICA: TIBStringField
      FieldName = 'NFSERV_GRAFICA'
      Origin = '"SIS_SERIENF"."NFSERV_GRAFICA"'
      FixedChar = True
      Size = 1
    end
    object SerieLeiuteNF_GRAFICA2: TIBStringField
      FieldName = 'NF_GRAFICA2'
      Origin = '"SIS_SERIENF"."NF_GRAFICA2"'
      FixedChar = True
      Size = 1
    end
    object SerieLeiuteCONFIG_NF_GRAF: TMemoField
      FieldName = 'CONFIG_NF_GRAF'
      Origin = '"SIS_SERIENF"."CONFIG_NF_GRAF"'
      BlobType = ftMemo
      Size = 8
    end
    object SerieLeiuteINDICE: TIBStringField
      FieldName = 'INDICE'
      Origin = '"SIS_SERIENF"."INDICE"'
      Required = True
    end
  end
  object Formas_Pagto_Parcelas: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = Formas_Pagto_ParcelasNewRecord
    OnNewRecord = Formas_Pagto_ParcelasNewRecord
    DeleteSQL.Strings = (
      'delete from FIN_FORMAS_PAGTO_PARCELAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_FORMAS_PAGTO_PARCELAS'
      '  (CNPJ, COD_FORMA_PAGTO, CODIGO, DIAS_VENCIMENTO, PARCELA)'
      'values'
      '  (:CNPJ, :COD_FORMA_PAGTO, :CODIGO, :DIAS_VENCIMENTO, :PARCELA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  COD_FORMA_PAGTO,'
      '  PARCELA,'
      '  DIAS_VENCIMENTO'
      'from FIN_FORMAS_PAGTO_PARCELAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from FIN_FORMAS_PAGTO_PARCELAS pc'
      'where pc.cnpj = :cnpj and pc.cod_forma_pagto = :codigo')
    ModifySQL.Strings = (
      'update FIN_FORMAS_PAGTO_PARCELAS'
      'set'
      '  CNPJ = :CNPJ,'
      '  COD_FORMA_PAGTO = :COD_FORMA_PAGTO,'
      '  CODIGO = :CODIGO,'
      '  DIAS_VENCIMENTO = :DIAS_VENCIMENTO,'
      '  PARCELA = :PARCELA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_FORMAS_PAGTO_PARC_ID'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = dsLinkParcelas
    Left = 152
    Top = 544
    object Formas_Pagto_ParcelasCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_FORMAS_PAGTO_PARCELAS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object Formas_Pagto_ParcelasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_FORMAS_PAGTO_PARCELAS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Formas_Pagto_ParcelasCOD_FORMA_PAGTO: TIntegerField
      FieldName = 'COD_FORMA_PAGTO'
      Origin = '"FIN_FORMAS_PAGTO_PARCELAS"."COD_FORMA_PAGTO"'
    end
    object Formas_Pagto_ParcelasPARCELA: TIntegerField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"FIN_FORMAS_PAGTO_PARCELAS"."PARCELA"'
    end
    object Formas_Pagto_ParcelasDIAS_VENCIMENTO: TIntegerField
      DisplayLabel = 'Dias Vencimento'
      FieldName = 'DIAS_VENCIMENTO'
      Origin = '"FIN_FORMAS_PAGTO_PARCELAS"."DIAS_VENCIMENTO"'
    end
  end
  object dsLinkParcelas: TDataSource
    DataSet = Formas_Pagto
    Left = 88
    Top = 592
  end
  object UndPrimaria: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = UnidadesAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    DeleteSQL.Strings = (
      'delete from EST_UNIDADES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SIGLA = :OLD_SIGLA')
    InsertSQL.Strings = (
      'insert into EST_UNIDADES'
      '  (CNPJ, SIGLA, NOME, UNIDADES)'
      'values'
      '  (:CNPJ, :SIGLA, :NOME, :UNIDADES)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  SIGLA,'
      '  NOME,'
      '  UNIDADES'
      'from EST_UNIDADES '
      'where'
      '  CNPJ = :CNPJ and'
      '  SIGLA = :SIGLA')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               SIGLA, '
      '               NOME,'
      '               UNIDADES'
      'FROM EST_UNIDADES'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update EST_UNIDADES'
      'set'
      '  CNPJ = :CNPJ,'
      '  SIGLA = :SIGLA,'
      '  NOME = :NOME,'
      '  UNIDADES = :UNIDADES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SIGLA = :OLD_SIGLA')
    Left = 584
    Top = 146
    object UndPrimariaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_UNIDADES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object UndPrimariaSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = '"EST_UNIDADES"."SIGLA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 4
    end
    object UndPrimariaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_UNIDADES"."NOME"'
      Size = 50
    end
    object UndPrimariaUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = '"EST_UNIDADES"."UNIDADES"'
    end
  end
  object dsLinkGrupo: TDataSource
    DataSet = SelGrupo
    Left = 504
    Top = 496
  end
  object SeletorPessoas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    BeforeOpen = LogradourosBeforeOpen
    SQL.Strings = (
      'select psa.codigo, psa.nome_razao from glo_pessoas_fj psa'
      'where psa.cnpj = :cnpj')
    Left = 584
    Top = 440
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SeletorPessoasCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SeletorPessoasNOME_RAZAO: TIBStringField
      Tag = 2
      DisplayLabel = 'Nome'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
  end
  object SelProdutos2: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT CODIGO, '
      '               NOME ,'
      '              serie'
      'FROM EST_PRODUTOS'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    Left = 88
    Top = 544
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelProdutos2CODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object SelProdutos2NOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object SelProdutos2SERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
  end
  object VALIDA_PRODUTO2: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = LogradourosBeforeOpen
    SQL.Strings = (
      'select * from VALIDA_PRODUTO(:cnpj,:produto,:vendedor)')
    Left = 456
    Top = 544
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'produto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vendedor'
        ParamType = ptUnknown
      end>
    object VALIDA_PRODUTO2PRC_REPOS: TIBBCDField
      FieldName = 'PRC_REPOS'
      Origin = '"VALIDA_PRODUTO"."PRC_REPOS"'
      Precision = 18
      Size = 4
    end
    object VALIDA_PRODUTO2VALIDA_MULT_QTDE_MIN: TIBStringField
      FieldName = 'VALIDA_MULT_QTDE_MIN'
      Origin = '"VALIDA_PRODUTO"."VALIDA_MULT_QTDE_MIN"'
      FixedChar = True
      Size = 1
    end
    object VALIDA_PRODUTO2PRC_VENDA: TIBBCDField
      FieldName = 'PRC_VENDA'
      Origin = '"VALIDA_PRODUTO"."PRC_VENDA"'
      Precision = 18
      Size = 4
    end
    object VALIDA_PRODUTO2VOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VALIDA_PRODUTO"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object VALIDA_PRODUTO2PESO_LIQ: TIBBCDField
      FieldName = 'PESO_LIQ'
      Origin = '"VALIDA_PRODUTO"."PESO_LIQ"'
      Precision = 18
      Size = 4
    end
    object VALIDA_PRODUTO2UNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VALIDA_PRODUTO"."UNIDADE"'
      Size = 4
    end
    object VALIDA_PRODUTO2NOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VALIDA_PRODUTO"."NOME"'
      Size = 50
    end
    object VALIDA_PRODUTO2ATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"VALIDA_PRODUTO"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object VALIDA_PRODUTO2ALIQUOTA_ECF: TIBStringField
      FieldName = 'ALIQUOTA_ECF'
      Origin = '"VALIDA_PRODUTO"."ALIQUOTA_ECF"'
      FixedChar = True
      Size = 5
    end
    object VALIDA_PRODUTO2QTDADE_1: TIBBCDField
      FieldName = 'QTDADE_1'
      Origin = '"VALIDA_PRODUTO"."QTDADE_1"'
      Precision = 18
      Size = 4
    end
    object VALIDA_PRODUTO2QTDADE_2: TIBBCDField
      FieldName = 'QTDADE_2'
      Origin = '"VALIDA_PRODUTO"."QTDADE_2"'
      Precision = 18
      Size = 4
    end
    object VALIDA_PRODUTO2NEG_QTDADE_2: TIBStringField
      FieldName = 'NEG_QTDADE_2'
      Origin = '"VALIDA_PRODUTO"."NEG_QTDADE_2"'
      FixedChar = True
      Size = 1
    end
    object VALIDA_PRODUTO2SUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VALIDA_PRODUTO"."SUBUNIDADE"'
    end
    object VALIDA_PRODUTO2COMPLEMENTO_NF: TIBStringField
      FieldName = 'COMPLEMENTO_NF'
      Origin = '"VALIDA_PRODUTO"."COMPLEMENTO_NF"'
      FixedChar = True
      Size = 1
    end
    object VALIDA_PRODUTO2ORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = '"VALIDA_PRODUTO"."ORIGEM"'
    end
    object VALIDA_PRODUTO2CTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"VALIDA_PRODUTO"."CTE"'
    end
    object VALIDA_PRODUTO2CTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"VALIDA_PRODUTO"."CTIE"'
    end
    object VALIDA_PRODUTO2REDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"VALIDA_PRODUTO"."REDUCAO"'
    end
    object VALIDA_PRODUTO2IPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"VALIDA_PRODUTO"."IPI"'
      Precision = 18
      Size = 4
    end
    object VALIDA_PRODUTO2VENDE_FRACIONADO: TIBStringField
      FieldName = 'VENDE_FRACIONADO'
      Origin = '"VALIDA_PRODUTO"."VENDE_FRACIONADO"'
      FixedChar = True
      Size = 1
    end
    object VALIDA_PRODUTO2POSSUI_LOTE: TIBStringField
      FieldName = 'POSSUI_LOTE'
      Origin = '"VALIDA_PRODUTO"."POSSUI_LOTE"'
      FixedChar = True
      Size = 1
    end
    object VALIDA_PRODUTO2MARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"VALIDA_PRODUTO"."MARCA"'
      Size = 50
    end
    object VALIDA_PRODUTO2MARGEM_BRUTA: TIBBCDField
      FieldName = 'MARGEM_BRUTA'
      Origin = '"VALIDA_PRODUTO"."MARGEM_BRUTA"'
      Precision = 18
      Size = 4
    end
    object VALIDA_PRODUTO2QTDADE_CONVERSAO: TIBBCDField
      FieldName = 'QTDADE_CONVERSAO'
      Origin = '"VALIDA_PRODUTO"."QTDADE_CONVERSAO"'
      Precision = 18
      Size = 4
    end
    object VALIDA_PRODUTO2SERVICO: TIBStringField
      FieldName = 'SERVICO'
      Origin = '"VALIDA_PRODUTO"."SERVICO"'
      FixedChar = True
      Size = 1
    end
    object VALIDA_PRODUTO2SECUNDARIO: TIBStringField
      FieldName = 'SECUNDARIO'
      Origin = '"VALIDA_PRODUTO"."SECUNDARIO"'
      Size = 15
    end
    object VALIDA_PRODUTO2COMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"VALIDA_PRODUTO"."COMPLEMENTO"'
      Size = 100
    end
    object VALIDA_PRODUTO2PERC_FRETE: TIBBCDField
      FieldName = 'PERC_FRETE'
      Origin = '"VALIDA_PRODUTO"."PERC_FRETE"'
      Precision = 18
      Size = 4
    end
    object VALIDA_PRODUTO2QNTDE_MINIMA_VENDA: TIBBCDField
      FieldName = 'QNTDE_MINIMA_VENDA'
      Origin = '"VALIDA_PRODUTO"."QNTDE_MINIMA_VENDA"'
      Precision = 18
      Size = 4
    end
    object VALIDA_PRODUTO2UND_PRIMARIA: TIBStringField
      FieldName = 'UND_PRIMARIA'
      Origin = '"VALIDA_PRODUTO"."UND_PRIMARIA"'
      FixedChar = True
      Size = 4
    end
    object VALIDA_PRODUTO2FATOR_CONVERSAO: TFloatField
      FieldName = 'FATOR_CONVERSAO'
      Origin = '"VALIDA_PRODUTO"."FATOR_CONVERSAO"'
    end
  end
  object SubgruposProd: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SubgruposProdBeforeOpen
    DeleteSQL.Strings = (
      'delete from EST_SUBGRUPOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  GRUPO = :OLD_GRUPO and'
      '  SUBGRUPO = :OLD_SUBGRUPO')
    InsertSQL.Strings = (
      'insert into EST_SUBGRUPOS'
      '  (CNPJ, GRUPO, SUBGRUPO, NOME, DESCONTO_MAX, DIGITA_PRC, '
      'COMPRAS_C, COMPRAS_D, '
      
        '   TRANSFERENCIA_C, TRANSFERENCIA_D, VENDAS_C, VENDAS_D, ESTOQUE' +
        ', '
      'ESTOQUE_INI, '
      '   ESTOQUE_FIM, OBS)'
      'values'
      '  (:CNPJ, :GRUPO, :SUBGRUPO, :NOME, :DESCONTO_MAX, :DIGITA_PRC, '
      ':COMPRAS_C, '
      '   :COMPRAS_D, :TRANSFERENCIA_C, :TRANSFERENCIA_D, :VENDAS_C, '
      ':VENDAS_D, '
      '   :ESTOQUE, :ESTOQUE_INI, :ESTOQUE_FIM, :OBS)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  GRUPO,'
      '  SUBGRUPO,'
      '  NOME,'
      '  DESCONTO_MAX,'
      '  DIGITA_PRC,'
      '  COMPRAS_C,'
      '  COMPRAS_D,'
      '  TRANSFERENCIA_C,'
      '  TRANSFERENCIA_D,'
      '  VENDAS_C,'
      '  VENDAS_D,'
      '  ESTOQUE,'
      '  ESTOQUE_INI,'
      '  ESTOQUE_FIM,'
      '  OBS'
      'from EST_SUBGRUPOS '
      'where'
      '  CNPJ = :CNPJ and'
      '  GRUPO = :GRUPO and'
      '  SUBGRUPO = :SUBGRUPO')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               GRUPO, '
      '               SUBGRUPO, '
      '               NOME, '
      '               DESCONTO_MAX, '
      '               DIGITA_PRC ,'
      '               COMPRAS_C,'
      '               COMPRAS_D,'
      '               TRANSFERENCIA_C,'
      '               TRANSFERENCIA_D,'
      '                VENDAS_C,'
      '                VENDAS_D,'
      '                ESTOQUE,'
      '                ESTOQUE_INI,'
      '                ESTOQUE_FIM,'
      '                OBS'
      'FROM EST_SUBGRUPOS'
      'WHERE CNPJ = :CNPJ AND'
      '      GRUPO = :GRUPO'
      
        '      and ((subgrupo = :subgrupo) or (coalesce(:subgrupo,0) = 0)' +
        ')'
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update EST_SUBGRUPOS'
      'set'
      '  CNPJ = :CNPJ,'
      '  GRUPO = :GRUPO,'
      '  SUBGRUPO = :SUBGRUPO,'
      '  NOME = :NOME,'
      '  DESCONTO_MAX = :DESCONTO_MAX,'
      '  DIGITA_PRC = :DIGITA_PRC,'
      '  COMPRAS_C = :COMPRAS_C,'
      '  COMPRAS_D = :COMPRAS_D,'
      '  TRANSFERENCIA_C = :TRANSFERENCIA_C,'
      '  TRANSFERENCIA_D = :TRANSFERENCIA_D,'
      '  VENDAS_C = :VENDAS_C,'
      '  VENDAS_D = :VENDAS_D,'
      '  ESTOQUE = :ESTOQUE,'
      '  ESTOQUE_INI = :ESTOQUE_INI,'
      '  ESTOQUE_FIM = :ESTOQUE_FIM,'
      '  OBS = :OBS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  GRUPO = :OLD_GRUPO and'
      '  SUBGRUPO = :OLD_SUBGRUPO')
    Left = 712
    Top = 352
    object SubgruposProdCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_SUBGRUPOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 14
    end
    object SubgruposProdGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"EST_SUBGRUPOS"."GRUPO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SubgruposProdSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = '"EST_SUBGRUPOS"."SUBGRUPO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SubgruposProdNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_SUBGRUPOS"."NOME"'
      Size = 50
    end
    object SubgruposProdDESCONTO_MAX: TFloatField
      FieldName = 'DESCONTO_MAX'
      Origin = '"EST_SUBGRUPOS"."DESCONTO_MAX"'
    end
    object SubgruposProdDIGITA_PRC: TIBStringField
      FieldName = 'DIGITA_PRC'
      Origin = '"EST_SUBGRUPOS"."DIGITA_PRC"'
      FixedChar = True
      Size = 1
    end
    object SubgruposProdCOMPRAS_C: TIntegerField
      FieldName = 'COMPRAS_C'
      Origin = '"EST_SUBGRUPOS"."COMPRAS_C"'
    end
    object SubgruposProdCOMPRAS_D: TIntegerField
      FieldName = 'COMPRAS_D'
      Origin = '"EST_SUBGRUPOS"."COMPRAS_D"'
    end
    object SubgruposProdTRANSFERENCIA_C: TIntegerField
      FieldName = 'TRANSFERENCIA_C'
      Origin = '"EST_SUBGRUPOS"."TRANSFERENCIA_C"'
    end
    object SubgruposProdTRANSFERENCIA_D: TIntegerField
      FieldName = 'TRANSFERENCIA_D'
      Origin = '"EST_SUBGRUPOS"."TRANSFERENCIA_D"'
    end
    object SubgruposProdVENDAS_C: TIntegerField
      FieldName = 'VENDAS_C'
      Origin = '"EST_SUBGRUPOS"."VENDAS_C"'
    end
    object SubgruposProdVENDAS_D: TIntegerField
      FieldName = 'VENDAS_D'
      Origin = '"EST_SUBGRUPOS"."VENDAS_D"'
    end
    object SubgruposProdESTOQUE: TIntegerField
      FieldName = 'ESTOQUE'
      Origin = '"EST_SUBGRUPOS"."ESTOQUE"'
    end
    object SubgruposProdESTOQUE_INI: TIntegerField
      FieldName = 'ESTOQUE_INI'
      Origin = '"EST_SUBGRUPOS"."ESTOQUE_INI"'
    end
    object SubgruposProdESTOQUE_FIM: TIntegerField
      FieldName = 'ESTOQUE_FIM'
      Origin = '"EST_SUBGRUPOS"."ESTOQUE_FIM"'
    end
    object SubgruposProdOBS: TMemoField
      FieldName = 'OBS'
      Origin = '"EST_SUBGRUPOS"."OBS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object QryIndices: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        ' select m.nome, (coalesce(:total,0.00)/coalesce(ct.valor,1.00)) ' +
        'total,'
      ' (select count(*) from fat_vendas vd'
      
        '  where vd.codigo = :venda and vd.cod_indexador = m.codigo) uso ' +
        ' from fin_moeda m'
      ' inner join fin_cotacoes ct on (m.codigo = ct.cod_moeda)'
      ' where ct.data = :data'
      '')
    Left = 89
    Top = 490
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'total'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'venda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end>
    object QryIndicesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_MOEDA"."NOME"'
      Size = 50
    end
    object QryIndicesUSO: TIntegerField
      FieldName = 'USO'
      ProviderFlags = []
    end
    object QryIndicesTOTAL: TFloatField
      FieldName = 'TOTAL'
      ProviderFlags = []
    end
  end
  object dsIndice: TDataSource
    DataSet = QryIndices
    Left = 160
    Top = 482
  end
  object TP_Contato: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    BeforeOpen = LogradourosBeforeOpen
    DeleteSQL.Strings = (
      'delete from GLO_TIPO_CONTATO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into GLO_TIPO_CONTATO'
      '  (CNPJ, CODIGO, DESCRICAO, NOME)'
      'values'
      '  (:CNPJ, :CODIGO, :DESCRICAO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  NOME,'
      '  DESCRICAO,'
      '  CODIGO,'
      '  CNPJ'
      'from GLO_TIPO_CONTATO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select  CODIGO, NOME,DESCRICAO,CNPJ'
      'from GLO_TIPO_CONTATO'
      'where (CNPJ = :CNPJ)')
    ModifySQL.Strings = (
      'update GLO_TIPO_CONTATO'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_GLO_TIPO_CONTATO_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 720
    Top = 224
    object TP_ContatoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_TIPO_CONTATO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TP_ContatoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_TIPO_CONTATO"."NOME"'
      Required = True
      Size = 50
    end
    object TP_ContatoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"GLO_TIPO_CONTATO"."DESCRICAO"'
      Size = 80
    end
    object TP_ContatoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_TIPO_CONTATO"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
  end
  object Localizar_Pessoa: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = LogradourosBeforeOpen
    DeleteSQL.Strings = (
      'delete from GLO_PESSOAS_FJ'
      'where'
      '  ATIVIDADE = :OLD_ATIVIDADE and'
      '  BAIRRO = :OLD_BAIRRO and'
      '  CELULAR = :OLD_CELULAR and'
      '  CEP = :OLD_CEP and'
      '  CIDADE = :OLD_CIDADE and'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  COMPLEMENTO = :OLD_COMPLEMENTO and'
      '  CONTATO = :OLD_CONTATO and'
      '  CONVENIO = :OLD_CONVENIO and'
      '  CPF_CGC = :OLD_CPF_CGC and'
      '  DT_CADASTRO = :OLD_DT_CADASTRO and'
      '  DT_NASCIMENTO = :OLD_DT_NASCIMENTO and'
      '  EMAIL = :OLD_EMAIL and'
      '  EMISSOR = :OLD_EMISSOR and'
      '  ENDERECO = :OLD_ENDERECO and'
      '  FANTASIA = :OLD_FANTASIA and'
      '  FAX = :OLD_FAX and'
      '  FONE = :OLD_FONE and'
      '  INSC_MUNIC = :OLD_INSC_MUNIC and'
      '  NOME_RAZAO = :OLD_NOME_RAZAO and'
      '  NUMERO = :OLD_NUMERO and'
      '  OBS = :OLD_OBS and'
      '  ORDEM = :OLD_ORDEM and'
      '  PESSOA = :OLD_PESSOA and'
      '  REGIAO = :OLD_REGIAO and'
      '  RG_IE = :OLD_RG_IE and'
      '  UF = :OLD_UF')
    InsertSQL.Strings = (
      'insert into GLO_PESSOAS_FJ'
      
        '  (ATIVIDADE, BAIRRO, CELULAR, CEP, CIDADE, CNPJ, CODIGO, COMPLE' +
        'MENTO, '
      
        '   CONTATO, CONVENIO, CPF_CGC, DT_CADASTRO, DT_NASCIMENTO, EMAIL' +
        ', EMISSOR, '
      
        '   ENDERECO, FANTASIA, FAX, FONE, INSC_MUNIC, NOME_RAZAO, NUMERO' +
        ', OBS, '
      '   ORDEM, PESSOA, REGIAO, RG_IE, UF)'
      'values'
      
        '  (:ATIVIDADE, :BAIRRO, :CELULAR, :CEP, :CIDADE, :CNPJ, :CODIGO,' +
        ' :COMPLEMENTO, '
      
        '   :CONTATO, :CONVENIO, :CPF_CGC, :DT_CADASTRO, :DT_NASCIMENTO, ' +
        ':EMAIL, '
      
        '   :EMISSOR, :ENDERECO, :FANTASIA, :FAX, :FONE, :INSC_MUNIC, :NO' +
        'ME_RAZAO, '
      '   :NUMERO, :OBS, :ORDEM, :PESSOA, :REGIAO, :RG_IE, :UF)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME_RAZAO,'
      '  FANTASIA,'
      '  ATIVIDADE,'
      '  ENDERECO,'
      '  NUMERO,'
      '  COMPLEMENTO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  FONE,'
      '  FAX,'
      '  CELULAR,'
      '  PESSOA,'
      '  CPF_CGC,'
      '  RG_IE,'
      '  CONTATO,'
      '  DT_NASCIMENTO,'
      '  DT_CADASTRO,'
      '  EMAIL,'
      '  OBS,'
      '  INSC_MUNIC,'
      '  CONVENIO,'
      '  EMISSOR,'
      '  CONTATO1,'
      '  CONTATO2,'
      '  CONTATO3,'
      '  ORDEM,'
      '  REGIAO,'
      '  NFE_EXP,'
      '  SELECIONADO,'
      '  CODIGO_2,'
      '  FJ'
      'from GLO_PESSOAS_FJ '
      'where'
      '  ATIVIDADE = :ATIVIDADE and'
      '  BAIRRO = :BAIRRO and'
      '  CELULAR = :CELULAR and'
      '  CEP = :CEP and'
      '  CIDADE = :CIDADE and'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  COMPLEMENTO = :COMPLEMENTO and'
      '  CONTATO = :CONTATO and'
      '  CONVENIO = :CONVENIO and'
      '  CPF_CGC = :CPF_CGC and'
      '  DT_CADASTRO = :DT_CADASTRO and'
      '  DT_NASCIMENTO = :DT_NASCIMENTO and'
      '  EMAIL = :EMAIL and'
      '  EMISSOR = :EMISSOR and'
      '  ENDERECO = :ENDERECO and'
      '  FANTASIA = :FANTASIA and'
      '  FAX = :FAX and'
      '  FONE = :FONE and'
      '  INSC_MUNIC = :INSC_MUNIC and'
      '  NOME_RAZAO = :NOME_RAZAO and'
      '  NUMERO = :NUMERO and'
      '  OBS = :OBS and'
      '  ORDEM = :ORDEM and'
      '  PESSOA = :PESSOA and'
      '  REGIAO = :REGIAO and'
      '  RG_IE = :RG_IE and'
      '  UF = :UF')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               Regiao,'
      '               NOME_RAZAO, '
      '               FANTASIA, '
      '               ATIVIDADE,'
      '               ENDERECO, '
      '               NUMERO, '
      '               COMPLEMENTO, '
      '               BAIRRO, '
      '               CIDADE, '
      '               UF, '
      '               CEP, '
      '               FONE,'
      '               FAX, '
      '               CELULAR, '
      '               PESSOA, '
      '               CPF_CGC, '
      '               SUBSTRING (RG_IE FROM 1 FOR 15) RG_IE  , '
      '               CONTATO, '
      '               DT_NASCIMENTO, '
      '               DT_CADASTRO, '
      '               EMAIL, '
      '               OBS,'
      '               INSC_MUNIC,'
      '               CONVENIO,'
      '               EMISSOR,'
      '               ORDEM'
      'FROM GLO_PESSOAS_FJ'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME_RAZAO')
    ModifySQL.Strings = (
      'update GLO_PESSOAS_FJ'
      'set'
      '  ATIVIDADE = :ATIVIDADE,'
      '  BAIRRO = :BAIRRO,'
      '  CELULAR = :CELULAR,'
      '  CEP = :CEP,'
      '  CIDADE = :CIDADE,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  CONTATO = :CONTATO,'
      '  CONVENIO = :CONVENIO,'
      '  CPF_CGC = :CPF_CGC,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  DT_NASCIMENTO = :DT_NASCIMENTO,'
      '  EMAIL = :EMAIL,'
      '  EMISSOR = :EMISSOR,'
      '  ENDERECO = :ENDERECO,'
      '  FANTASIA = :FANTASIA,'
      '  FAX = :FAX,'
      '  FONE = :FONE,'
      '  INSC_MUNIC = :INSC_MUNIC,'
      '  NOME_RAZAO = :NOME_RAZAO,'
      '  NUMERO = :NUMERO,'
      '  OBS = :OBS,'
      '  ORDEM = :ORDEM,'
      '  PESSOA = :PESSOA,'
      '  REGIAO = :REGIAO,'
      '  RG_IE = :RG_IE,'
      '  UF = :UF'
      'where'
      '  ATIVIDADE = :OLD_ATIVIDADE and'
      '  BAIRRO = :OLD_BAIRRO and'
      '  CELULAR = :OLD_CELULAR and'
      '  CEP = :OLD_CEP and'
      '  CIDADE = :OLD_CIDADE and'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  COMPLEMENTO = :OLD_COMPLEMENTO and'
      '  CONTATO = :OLD_CONTATO and'
      '  CONVENIO = :OLD_CONVENIO and'
      '  CPF_CGC = :OLD_CPF_CGC and'
      '  DT_CADASTRO = :OLD_DT_CADASTRO and'
      '  DT_NASCIMENTO = :OLD_DT_NASCIMENTO and'
      '  EMAIL = :OLD_EMAIL and'
      '  EMISSOR = :OLD_EMISSOR and'
      '  ENDERECO = :OLD_ENDERECO and'
      '  FANTASIA = :OLD_FANTASIA and'
      '  FAX = :OLD_FAX and'
      '  FONE = :OLD_FONE and'
      '  INSC_MUNIC = :OLD_INSC_MUNIC and'
      '  NOME_RAZAO = :OLD_NOME_RAZAO and'
      '  NUMERO = :OLD_NUMERO and'
      '  OBS = :OLD_OBS and'
      '  ORDEM = :OLD_ORDEM and'
      '  PESSOA = :OLD_PESSOA and'
      '  REGIAO = :OLD_REGIAO and'
      '  RG_IE = :OLD_RG_IE and'
      '  UF = :OLD_UF')
    Left = 720
    Top = 112
    object IBStringField3: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_PESSOAS_FJ"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object IntegerField2: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
    object IBStringField4: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome/Raz'#227'o Social'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
    object IBStringField5: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object IntegerField3: TIntegerField
      FieldName = 'ATIVIDADE'
      Origin = '"GLO_PESSOAS_FJ"."ATIVIDADE"'
    end
    object IntegerField4: TIntegerField
      FieldName = 'ENDERECO'
      Origin = '"GLO_PESSOAS_FJ"."ENDERECO"'
      Required = True
    end
    object IBStringField6: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = '"GLO_PESSOAS_FJ"."NUMERO"'
      Size = 15
    end
    object IBStringField7: TIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_PESSOAS_FJ"."COMPLEMENTO"'
      Size = 30
    end
    object IntegerField5: TIntegerField
      FieldName = 'BAIRRO'
      Origin = '"GLO_PESSOAS_FJ"."BAIRRO"'
      Required = True
    end
    object IntegerField6: TIntegerField
      FieldName = 'CIDADE'
      Origin = '"GLO_PESSOAS_FJ"."CIDADE"'
      Required = True
      OnValidate = Pessoas_FJCIDADEValidate
    end
    object IBStringField8: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PESSOAS_FJ"."UF"'
      OnValidate = Pessoas_FJUFValidate
      FixedChar = True
      Size = 2
    end
    object IBStringField9: TIBStringField
      Tag = 1
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"GLO_PESSOAS_FJ"."CEP"'
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object IBStringField10: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object IBStringField11: TIBStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object IBStringField12: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = '"GLO_PESSOAS_FJ"."CELULAR"'
    end
    object IBStringField13: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"GLO_PESSOAS_FJ"."PESSOA"'
      OnGetText = Pessoas_FJPESSOAGetText
      OnSetText = Pessoas_FJPESSOASetText
      OnValidate = Pessoas_FJPESSOAValidate
      FixedChar = True
      Size = 1
    end
    object IBStringField14: TIBStringField
      DisplayLabel = 'Inscri'#231#227'o Municipal'
      FieldName = 'INSC_MUNIC'
      Origin = '"GLO_PESSOAS_FJ"."INSC_MUNIC"'
      Size = 15
    end
    object IBStringField15: TIBStringField
      Tag = 1
      DisplayLabel = 'C.P.F. ou C.G.C.'
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      OnValidate = Pessoas_FJCPF_CGCValidate
      EditMask = '00.000.000/0000-00;0;_'
      Size = 15
    end
    object IBStringField16: TIBStringField
      Tag = 1
      DisplayLabel = 'R.G. ou I.E.'
      FieldName = 'RG_IE'
      Origin = '"GLO_PESSOAS_FJ"."RG_IE"'
      Size = 15
    end
    object IBStringField17: TIBStringField
      DisplayLabel = 'Contato'
      FieldName = 'CONTATO'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO"'
      Size = 30
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = 'Dt. Nascimento'
      FieldName = 'DT_NASCIMENTO'
      Origin = '"GLO_PESSOAS_FJ"."DT_NASCIMENTO"'
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'DT_CADASTRO'
      Origin = '"GLO_PESSOAS_FJ"."DT_CADASTRO"'
    end
    object IBStringField18: TIBStringField
      Tag = 1
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Origin = '"GLO_PESSOAS_FJ"."EMAIL"'
      Size = 80
    end
    object BlobField1: TBlobField
      FieldName = 'OBS'
      Origin = '"GLO_PESSOAS_FJ"."OBS"'
      Size = 8
    end
    object IntegerField7: TIntegerField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'CONVENIO'
      Origin = '"GLO_PESSOAS_FJ"."CONVENIO"'
    end
    object IBStringField19: TIBStringField
      DisplayLabel = 'Emissor'
      FieldName = 'EMISSOR'
      Origin = '"GLO_PESSOAS_FJ"."EMISSOR"'
      Size = 6
    end
    object IntegerField8: TIntegerField
      Tag = 1
      DisplayLabel = 'Ordem'
      FieldName = 'ORDEM'
      Origin = '"GLO_PESSOAS_FJ"."ORDEM"'
    end
    object IntegerField9: TIntegerField
      FieldName = 'REGIAO'
      Origin = '"GLO_PESSOAS_FJ"."REGIAO"'
    end
  end
  object Contato: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterPost = ContatoAfterPost
    BeforeOpen = Cliente_EnderecoBeforeOpen
    BeforePost = ContatoBeforePost
    DeleteSQL.Strings = (
      'delete from glo_contatos'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  IDCLIENTE = :OLD_IDCLIENTE')
    InsertSQL.Strings = (
      'insert into glo_contatos'
      
        '  (CELULAR, CNPJ, CODIGO, IDCLIENTE, IDCLIENTE_RELACIONADO, OBSE' +
        'RVACAO, '
      '   RESIDENCIAL, TIPO_CONTATO)'
      'values'
      
        '  (:CELULAR, :CNPJ, :CODIGO, :IDCLIENTE, :IDCLIENTE_RELACIONADO,' +
        ' :OBSERVACAO, '
      '   :RESIDENCIAL, :TIPO_CONTATO)')
    RefreshSQL.Strings = (
      'Select *'
      'from glo_contatos '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  IDCLIENTE = :IDCLIENTE')
    SelectSQL.Strings = (
      'select  glo_pessoas_fj.nome_razao as contato_nome,'
      '        glo_contatos.observacao,'
      '        glo_contatos.idcliente_relacionado,'
      '        glo_tipo_contato.nome as tipocontato,'
      '        glo_contatos.CNPJ,'
      '        glo_contatos.IDCLIENTE as ID_Cliente,'
      '        glo_contatos.IDCLIENTE,'
      '        glo_contatos.tipo_contato,'
      '        glo_contatos.celular,'
      '        glo_contatos.residencial,'
      '        glo_contatos.Codigo'
      'from    glo_contatos'
      
        'left join glo_pessoas_fj on (glo_contatos.idcliente_relacionado ' +
        '= GLO_PESSOAS_FJ.codigo'
      'AND glo_pessoas_fj.cnpj = glo_contatos.cnpj)'
      
        'left join glo_TIPO_contato on (glo_contatos.tipo_contato = glo_t' +
        'ipo_contato.CODIGO'
      'and glo_tipo_contato.cnpj = glo_contatos.cnpj)'
      
        'where(glo_contatos.idcliente = :ID_CLIENTE and glo_contatos.CNPJ' +
        ' = :CNPJ)'
      'order by contato_nome'
      '')
    ModifySQL.Strings = (
      'update glo_contatos'
      'set'
      '  CELULAR = :CELULAR,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  IDCLIENTE = :IDCLIENTE,'
      '  IDCLIENTE_RELACIONADO = :IDCLIENTE_RELACIONADO,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  RESIDENCIAL = :RESIDENCIAL,'
      '  TIPO_CONTATO = :TIPO_CONTATO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  IDCLIENTE = :OLD_IDCLIENTE')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_GLO_CONTATOS_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 720
    Top = 64
    object ContatoCONTATO_NOME: TIBStringField
      FieldName = 'CONTATO_NOME'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object ContatoOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"GLO_CONTATOS"."OBSERVACAO"'
      Size = 80
    end
    object ContatoIDCLIENTE_RELACIONADO: TIntegerField
      FieldName = 'IDCLIENTE_RELACIONADO'
      Origin = '"GLO_CONTATOS"."IDCLIENTE_RELACIONADO"'
    end
    object ContatoTIPOCONTATO: TIBStringField
      FieldName = 'TIPOCONTATO'
      Origin = '"GLO_TIPO_CONTATO"."NOME"'
      Size = 50
    end
    object ContatoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CONTATOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object ContatoTIPO_CONTATO: TIntegerField
      FieldName = 'TIPO_CONTATO'
      Origin = '"GLO_CONTATOS"."TIPO_CONTATO"'
    end
    object ContatoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_CONTATOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ContatoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = '"GLO_CONTATOS"."IDCLIENTE"'
    end
    object ContatoIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = '"GLO_CONTATOS"."IDCLIENTE"'
    end
    object ContatoCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"GLO_CONTATOS"."CELULAR"'
    end
    object ContatoRESIDENCIAL: TIBStringField
      FieldName = 'RESIDENCIAL'
      Origin = '"GLO_CONTATOS"."RESIDENCIAL"'
    end
  end
  object Cliente_Endereco: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = Cliente_EnderecoAfterInsert
    AfterPost = Cliente_EnderecoAfterPost
    BeforeOpen = Cliente_EnderecoBeforeOpen
    BeforePost = Cliente_EnderecoBeforePost
    DeleteSQL.Strings = (
      'delete from GLO_CLIENTE_ENDERECO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  ID_CLIENTE = :OLD_ID_CLIENTE')
    InsertSQL.Strings = (
      'insert into GLO_CLIENTE_ENDERECO'
      
        '  (CEP, CNPJ, CODIGO, COMPLEMENTO, DATA_FINAL, DATA_INICIAL, END' +
        'ERECO_PADRAO, '
      
        '   ID_BAIRRO, ID_CIDADE, ID_CLIENTE, ID_LOGRADOURO, ID_REGIOES, ' +
        'ID_TIPO_ENDERECO, '
      '   NUMERO_END, UF_SIGLA)'
      'values'
      
        '  (:CEP, :CNPJ, :CODIGO, :COMPLEMENTO, :DATA_FINAL, :DATA_INICIA' +
        'L, :ENDERECO_PADRAO, '
      
        '   :ID_BAIRRO, :ID_CIDADE, :ID_CLIENTE, :ID_LOGRADOURO, :ID_REGI' +
        'OES, :ID_TIPO_ENDERECO, '
      '   :NUMERO_END, :UF_SIGLA)')
    RefreshSQL.Strings = (
      'SELECT glo_cliente_endereco.*,'
      '     glo_bairros.nome as bairronome,'
      '     glo_estados.nome as estadonome,'
      '     glo_cidades.nome as cidadenome,'
      '     glo_logradouros.nome as logradourosnome,'
      '     glo_regioes.nome as regioesnome,'
      '     glo_tipo_endereco.tipo_endereco as nometpendereco'
      'FROM GLO_CLIENTE_ENDERECO'
      
        'left join glo_estados on (glo_estados.cnpj = glo_cliente_enderec' +
        'o.cnpj and'
      'glo_estados.sigla = glo_cliente_endereco.uf_sigla)'
      ''
      
        'left join glo_bairros on (glo_bairros.cnpj = glo_cliente_enderec' +
        'o.cnpj and'
      'glo_bairros.codigo = glo_cliente_endereco.id_bairro)'
      ''
      
        'left join glo_cidades on (glo_cidades.cnpj = glo_cliente_enderec' +
        'o.cnpj and'
      'glo_cidades.codigo = glo_cliente_endereco.id_cidade)'
      ''
      
        'left join glo_logradouros on (glo_logradouros.cnpj = glo_cliente' +
        '_endereco.cnpj and'
      'glo_logradouros.codigo = glo_cliente_endereco.id_logradouro)'
      ''
      
        'left join glo_regioes on (glo_regioes.cnpj = glo_cliente_enderec' +
        'o.cnpj and'
      'glo_regioes.codigo = glo_cliente_endereco.id_regioes)'
      ''
      
        'left join glo_tipo_endereco on (glo_tipo_endereco.cnpj = glo_cli' +
        'ente_endereco.cnpj and'
      
        'glo_tipo_endereco.codigo = glo_cliente_endereco.id_tipo_endereco' +
        ')'
      'where'
      '  GLO_CLIENTE_ENDERECO.CNPJ = :CNPJ and'
      '  GLO_CLIENTE_ENDERECO.CODIGO = :CODIGO and'
      '  GLO_CLIENTE_ENDERECO.ID_CLIENTE = :ID_CLIENTE')
    SelectSQL.Strings = (
      'SELECT glo_cliente_endereco.*,'
      '     glo_bairros.nome as bairronome,'
      '     glo_estados.nome as estadonome,'
      '     glo_cidades.nome as cidadenome,'
      '     glo_logradouros.nome as logradourosnome,'
      '     glo_regioes.nome as regioesnome,'
      '     glo_tipo_endereco.tipo_endereco as nometpendereco'
      'FROM GLO_CLIENTE_ENDERECO'
      
        'left join glo_estados on (glo_estados.cnpj = glo_cliente_enderec' +
        'o.cnpj and'
      'glo_estados.sigla = glo_cliente_endereco.uf_sigla)'
      ''
      
        'left join glo_bairros on (glo_bairros.cnpj = glo_cliente_enderec' +
        'o.cnpj and'
      'glo_bairros.codigo = glo_cliente_endereco.id_bairro)'
      ''
      
        'left join glo_cidades on (glo_cidades.cnpj = glo_cliente_enderec' +
        'o.cnpj and'
      'glo_cidades.codigo = glo_cliente_endereco.id_cidade)'
      ''
      
        'left join glo_logradouros on (glo_logradouros.cnpj = glo_cliente' +
        '_endereco.cnpj and'
      'glo_logradouros.codigo = glo_cliente_endereco.id_logradouro)'
      ''
      
        'left join glo_regioes on (glo_regioes.cnpj = glo_cliente_enderec' +
        'o.cnpj and'
      'glo_regioes.codigo = glo_cliente_endereco.id_regioes)'
      ''
      
        'left join glo_tipo_endereco on (glo_tipo_endereco.cnpj = glo_cli' +
        'ente_endereco.cnpj and'
      
        'glo_tipo_endereco.codigo = glo_cliente_endereco.id_tipo_endereco' +
        ')'
      
        'WHERE glo_cliente_endereco.cnpj = :CNPJ and ID_CLIENTE  = :ID_CL' +
        'IENTE')
    ModifySQL.Strings = (
      'update GLO_CLIENTE_ENDERECO'
      'set'
      '  CEP = :CEP,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  DATA_FINAL = :DATA_FINAL,'
      '  DATA_INICIAL = :DATA_INICIAL,'
      '  ENDERECO_PADRAO = :ENDERECO_PADRAO,'
      '  ID_BAIRRO = :ID_BAIRRO,'
      '  ID_CIDADE = :ID_CIDADE,'
      '  ID_CLIENTE = :ID_CLIENTE,'
      '  ID_LOGRADOURO = :ID_LOGRADOURO,'
      '  ID_REGIOES = :ID_REGIOES,'
      '  ID_TIPO_ENDERECO = :ID_TIPO_ENDERECO,'
      '  NUMERO_END = :NUMERO_END,'
      '  UF_SIGLA = :UF_SIGLA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  ID_CLIENTE = :OLD_ID_CLIENTE')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GLO_CLIENTE_ENDERECO'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = dsLinkEndereco
    Left = 848
    Top = 224
    object Cliente_EnderecoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_CLIENTE_ENDERECO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cliente_EnderecoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CLIENTE_ENDERECO"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object Cliente_EnderecoID_LOGRADOURO: TIntegerField
      FieldName = 'ID_LOGRADOURO'
      Origin = '"GLO_CLIENTE_ENDERECO"."ID_LOGRADOURO"'
    end
    object Cliente_EnderecoID_BAIRRO: TIntegerField
      FieldName = 'ID_BAIRRO'
      Origin = '"GLO_CLIENTE_ENDERECO"."ID_BAIRRO"'
    end
    object Cliente_EnderecoID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = '"GLO_CLIENTE_ENDERECO"."ID_CIDADE"'
    end
    object Cliente_EnderecoUF_SIGLA: TIBStringField
      FieldName = 'UF_SIGLA'
      Origin = '"GLO_CLIENTE_ENDERECO"."UF_SIGLA"'
      FixedChar = True
      Size = 2
    end
    object Cliente_EnderecoDATA_INICIAL: TDateTimeField
      FieldName = 'DATA_INICIAL'
      Origin = '"GLO_CLIENTE_ENDERECO"."DATA_INICIAL"'
    end
    object Cliente_EnderecoDATA_FINAL: TDateTimeField
      FieldName = 'DATA_FINAL'
      Origin = '"GLO_CLIENTE_ENDERECO"."DATA_FINAL"'
    end
    object Cliente_EnderecoNUMERO_END: TIBStringField
      FieldName = 'NUMERO_END'
      Origin = '"GLO_CLIENTE_ENDERECO"."NUMERO_END"'
      Size = 15
    end
    object Cliente_EnderecoID_REGIOES: TIntegerField
      FieldName = 'ID_REGIOES'
      Origin = '"GLO_CLIENTE_ENDERECO"."ID_REGIOES"'
    end
    object Cliente_EnderecoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = '"GLO_CLIENTE_ENDERECO"."ID_CLIENTE"'
      Required = True
    end
    object Cliente_EnderecoCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"GLO_CLIENTE_ENDERECO"."CEP"'
      Size = 8
    end
    object Cliente_EnderecoID_TIPO_ENDERECO: TIntegerField
      FieldName = 'ID_TIPO_ENDERECO'
      Origin = '"GLO_CLIENTE_ENDERECO"."ID_TIPO_ENDERECO"'
    end
    object Cliente_EnderecoCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_CLIENTE_ENDERECO"."COMPLEMENTO"'
      Size = 80
    end
    object Cliente_EnderecoBAIRRONOME: TIBStringField
      FieldName = 'BAIRRONOME'
      Origin = '"GLO_BAIRROS"."NOME"'
      Size = 50
    end
    object Cliente_EnderecoESTADONOME: TIBStringField
      FieldName = 'ESTADONOME'
      Origin = '"GLO_ESTADOS"."NOME"'
      Size = 50
    end
    object Cliente_EnderecoCIDADENOME: TIBStringField
      FieldName = 'CIDADENOME'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object Cliente_EnderecoLOGRADOUROSNOME: TIBStringField
      FieldName = 'LOGRADOUROSNOME'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      Size = 50
    end
    object Cliente_EnderecoREGIOESNOME: TIBStringField
      FieldName = 'REGIOESNOME'
      Origin = '"GLO_REGIOES"."NOME"'
      Size = 50
    end
    object Cliente_EnderecoNOMETPENDERECO: TIBStringField
      FieldName = 'NOMETPENDERECO'
      Origin = '"GLO_TIPO_ENDERECO"."TIPO_ENDERECO"'
      Size = 50
    end
    object Cliente_EnderecoENDERECO_PADRAO: TIBStringField
      FieldName = 'ENDERECO_PADRAO'
      Origin = '"GLO_CLIENTE_ENDERECO"."ENDERECO_PADRAO"'
      FixedChar = True
      Size = 1
    end
  end
  object Tipo_Endereco: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AutoCalcFields = False
    AfterClose = LogradourosAfterClose
    AfterPost = Cliente_EnderecoAfterPost
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = Tipo_EnderecoBeforePost
    DeleteSQL.Strings = (
      'delete from glo_tipo_endereco'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  TIPO_ENDERECO = :OLD_TIPO_ENDERECO')
    InsertSQL.Strings = (
      'insert into glo_tipo_endereco'
      '  (CNPJ, CODIGO, TIPO_ENDERECO)'
      'values'
      '  (:CNPJ, :CODIGO, :TIPO_ENDERECO)')
    RefreshSQL.Strings = (
      'Select *'
      'from glo_tipo_endereco '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  TIPO_ENDERECO = :TIPO_ENDERECO')
    SelectSQL.Strings = (
      'SELECT glo_tipo_endereco.CNPJ,'
      '       glo_tipo_endereco.Tipo_Endereco,'
      '       glo_tipo_endereco.CODIGO'
      'FROM glo_tipo_endereco'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY TIPO_ENDERECO')
    ModifySQL.Strings = (
      'update glo_tipo_endereco'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  TIPO_ENDERECO = :TIPO_ENDERECO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  TIPO_ENDERECO = :OLD_TIPO_ENDERECO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_TIPO_ENDERECO'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 776
    Top = 480
    object Tipo_EnderecoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_TIPO_ENDERECO"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object Tipo_EnderecoTIPO_ENDERECO: TIBStringField
      FieldName = 'TIPO_ENDERECO'
      Origin = '"GLO_TIPO_ENDERECO"."TIPO_ENDERECO"'
      Size = 50
    end
    object Tipo_EnderecoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_TIPO_ENDERECO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object Clientes_Imagens: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterPost = Cliente_EnderecoAfterPost
    BeforeOpen = Cliente_EnderecoBeforeOpen
    BeforePost = Cliente_EnderecoBeforePost
    DeleteSQL.Strings = (
      'delete from glo_clientes_imagens'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  ID_CLIENTE = :OLD_ID_CLIENTE')
    InsertSQL.Strings = (
      'insert into glo_clientes_imagens'
      '  (CNPJ, CODIGO, DESCRICAO, ID_CLIENTE, IMAGEM)'
      'values'
      '  (:CNPJ, :CODIGO, :DESCRICAO, :ID_CLIENTE, :IMAGEM)')
    RefreshSQL.Strings = (
      'Select *'
      'from glo_clientes_imagens '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  ID_CLIENTE = :ID_CLIENTE')
    SelectSQL.Strings = (
      'SELEct  glo_clientes_imagens.*,'
      '        glo_clientes.cnpj,'
      '        glo_clientes.pessoa_fj'
      'from glo_clientes_imagens'
      
        'inner join glo_clientes on(glo_clientes.cnpj = glo_clientes_imag' +
        'ens.cnpj and glo_clientes.pessoa_fj = glo_clientes_imagens.id_cl' +
        'iente)'
      
        'where(glo_clientes_imagens.cnpj = :CNPJ  and  glo_clientes_image' +
        'ns.id_cliente = :ID_CLIENTE)')
    ModifySQL.Strings = (
      'update glo_clientes_imagens'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  ID_CLIENTE = :ID_CLIENTE,'
      '  IMAGEM = :IMAGEM'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  ID_CLIENTE = :OLD_ID_CLIENTE')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GLO_CLIENTE_IMAGENS'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 872
    Top = 384
    object Clientes_ImagensCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CLIENTES_IMAGENS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object Clientes_ImagensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_CLIENTES_IMAGENS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Clientes_ImagensID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = '"GLO_CLIENTES_IMAGENS"."ID_CLIENTE"'
    end
    object Clientes_ImagensDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"GLO_CLIENTES_IMAGENS"."DESCRICAO"'
      Size = 80
    end
    object Clientes_ImagensCNPJ1: TIBStringField
      FieldName = 'CNPJ1'
      Origin = '"GLO_CLIENTES"."CNPJ"'
      FixedChar = True
      Size = 14
    end
    object Clientes_ImagensPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_CLIENTES"."PESSOA_FJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object Pessoa_PFJ: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    AfterInsert = Pessoas_FJAfterInsert
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = Pessoas_FJBeforePost
    DeleteSQL.Strings = (
      'delete from GLO_PESSOAS_FJ'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into GLO_PESSOAS_FJ'
      
        '  (CNPJ, CODIGO, REGIAO, NOME_RAZAO, FANTASIA, ATIVIDADE, ENDERE' +
        'CO, '
      'NUMERO, '
      
        '   COMPLEMENTO, BAIRRO, CIDADE, UF, CEP, FONE, FAX, CELULAR, PES' +
        'SOA, '
      'CPF_CGC, '
      '   RG_IE, CONTATO, DT_NASCIMENTO, DT_CADASTRO, EMAIL, OBS, '
      'INSC_MUNIC, '
      '   CONVENIO, EMISSOR, ORDEM)'
      'values'
      '  (:CNPJ, :CODIGO, :REGIAO, :NOME_RAZAO, :FANTASIA, :ATIVIDADE, '
      ':ENDERECO, '
      
        '   :NUMERO, :COMPLEMENTO, :BAIRRO, :CIDADE, :UF, :CEP, :FONE, :F' +
        'AX, '
      ':CELULAR, '
      
        '   :PESSOA, :CPF_CGC, :RG_IE, :CONTATO, :DT_NASCIMENTO, :DT_CADA' +
        'STRO, '
      ':EMAIL, '
      '   :OBS, :INSC_MUNIC, :CONVENIO, :EMISSOR, :ORDEM)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME_RAZAO,'
      '  FANTASIA,'
      '  ATIVIDADE,'
      '  ENDERECO,'
      '  NUMERO,'
      '  COMPLEMENTO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  FONE,'
      '  FAX,'
      '  CELULAR,'
      '  PESSOA,'
      '  CPF_CGC,'
      '  RG_IE,'
      '  CONTATO,'
      '  DT_NASCIMENTO,'
      '  DT_CADASTRO,'
      '  EMAIL,'
      '  OBS,'
      '  INSC_MUNIC,'
      '  CONVENIO,'
      '  EMISSOR,'
      '  CONTATO1,'
      '  CONTATO2,'
      '  CONTATO3,'
      '  ORDEM,'
      '  REGIAO'
      'from GLO_PESSOAS_FJ '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               Regiao,'
      '               NOME_RAZAO, '
      '               FANTASIA, '
      '               ATIVIDADE,'
      '               ENDERECO, '
      '               NUMERO, '
      '               COMPLEMENTO, '
      '               BAIRRO, '
      '               CIDADE, '
      '               UF, '
      '               CEP, '
      '               FONE,'
      '               FAX, '
      '               CELULAR, '
      '               PESSOA, '
      '               CPF_CGC, '
      '               SUBSTRING (RG_IE FROM 1 FOR 15) RG_IE  , '
      '               CONTATO, '
      '               DT_NASCIMENTO, '
      '               DT_CADASTRO, '
      '               EMAIL, '
      '               OBS,'
      '               INSC_MUNIC,'
      '               CONVENIO,'
      '               EMISSOR,'
      '               ORDEM'
      'FROM GLO_PESSOAS_FJ'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME_RAZAO')
    ModifySQL.Strings = (
      'update GLO_PESSOAS_FJ'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  REGIAO = :REGIAO,'
      '  NOME_RAZAO = :NOME_RAZAO,'
      '  FANTASIA = :FANTASIA,'
      '  ATIVIDADE = :ATIVIDADE,'
      '  ENDERECO = :ENDERECO,'
      '  NUMERO = :NUMERO,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  BAIRRO = :BAIRRO,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CEP = :CEP,'
      '  FONE = :FONE,'
      '  FAX = :FAX,'
      '  CELULAR = :CELULAR,'
      '  PESSOA = :PESSOA,'
      '  CPF_CGC = :CPF_CGC,'
      '  RG_IE = :RG_IE,'
      '  CONTATO = :CONTATO,'
      '  DT_NASCIMENTO = :DT_NASCIMENTO,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  EMAIL = :EMAIL,'
      '  OBS = :OBS,'
      '  INSC_MUNIC = :INSC_MUNIC,'
      '  CONVENIO = :CONVENIO,'
      '  EMISSOR = :EMISSOR,'
      '  ORDEM = :ORDEM'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 840
    Top = 104
    object IBStringField1: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_PESSOAS_FJ"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object IntegerField1: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
    object IBStringField2: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome/Raz'#227'o Social'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
    object IBStringField20: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object IntegerField10: TIntegerField
      FieldName = 'ATIVIDADE'
      Origin = '"GLO_PESSOAS_FJ"."ATIVIDADE"'
    end
    object IntegerField11: TIntegerField
      FieldName = 'ENDERECO'
      Origin = '"GLO_PESSOAS_FJ"."ENDERECO"'
      Required = True
    end
    object IBStringField21: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = '"GLO_PESSOAS_FJ"."NUMERO"'
      Size = 15
    end
    object IBStringField22: TIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_PESSOAS_FJ"."COMPLEMENTO"'
      Size = 30
    end
    object IntegerField12: TIntegerField
      FieldName = 'BAIRRO'
      Origin = '"GLO_PESSOAS_FJ"."BAIRRO"'
      Required = True
    end
    object IntegerField13: TIntegerField
      FieldName = 'CIDADE'
      Origin = '"GLO_PESSOAS_FJ"."CIDADE"'
      Required = True
      OnValidate = Pessoas_FJCIDADEValidate
    end
    object IBStringField23: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PESSOAS_FJ"."UF"'
      OnValidate = Pessoas_FJUFValidate
      FixedChar = True
      Size = 2
    end
    object IBStringField24: TIBStringField
      Tag = 1
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"GLO_PESSOAS_FJ"."CEP"'
      EditMask = '99999\-999;0;_'
      Size = 8
    end
    object IBStringField25: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object IBStringField26: TIBStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object IBStringField27: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = '"GLO_PESSOAS_FJ"."CELULAR"'
    end
    object IBStringField28: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"GLO_PESSOAS_FJ"."PESSOA"'
      OnGetText = Pessoas_FJPESSOAGetText
      OnSetText = Pessoas_FJPESSOASetText
      OnValidate = Pessoas_FJPESSOAValidate
      FixedChar = True
      Size = 1
    end
    object IBStringField29: TIBStringField
      DisplayLabel = 'Inscri'#231#227'o Municipal'
      FieldName = 'INSC_MUNIC'
      Origin = '"GLO_PESSOAS_FJ"."INSC_MUNIC"'
      Size = 15
    end
    object IBStringField30: TIBStringField
      Tag = 1
      DisplayLabel = 'C.P.F. ou C.G.C.'
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      OnValidate = Pessoas_FJCPF_CGCValidate
      EditMask = '00.000.000/0000-00;0;_'
      Size = 15
    end
    object IBStringField31: TIBStringField
      Tag = 1
      DisplayLabel = 'R.G. ou I.E.'
      FieldName = 'RG_IE'
      Origin = '"GLO_PESSOAS_FJ"."RG_IE"'
      Size = 15
    end
    object IBStringField32: TIBStringField
      DisplayLabel = 'Contato'
      FieldName = 'CONTATO'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO"'
      Size = 30
    end
    object DateTimeField3: TDateTimeField
      DisplayLabel = 'Dt. Nascimento'
      FieldName = 'DT_NASCIMENTO'
      Origin = '"GLO_PESSOAS_FJ"."DT_NASCIMENTO"'
    end
    object DateTimeField4: TDateTimeField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'DT_CADASTRO'
      Origin = '"GLO_PESSOAS_FJ"."DT_CADASTRO"'
    end
    object IBStringField33: TIBStringField
      Tag = 1
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Origin = '"GLO_PESSOAS_FJ"."EMAIL"'
      Size = 80
    end
    object BlobField2: TBlobField
      FieldName = 'OBS'
      Origin = '"GLO_PESSOAS_FJ"."OBS"'
      Size = 8
    end
    object IntegerField14: TIntegerField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'CONVENIO'
      Origin = '"GLO_PESSOAS_FJ"."CONVENIO"'
    end
    object IBStringField34: TIBStringField
      DisplayLabel = 'Emissor'
      FieldName = 'EMISSOR'
      Origin = '"GLO_PESSOAS_FJ"."EMISSOR"'
      Size = 6
    end
    object IntegerField15: TIntegerField
      Tag = 1
      DisplayLabel = 'Ordem'
      FieldName = 'ORDEM'
      Origin = '"GLO_PESSOAS_FJ"."ORDEM"'
    end
    object IntegerField16: TIntegerField
      FieldName = 'REGIAO'
      Origin = '"GLO_PESSOAS_FJ"."REGIAO"'
    end
  end
  object dsLinkEndereco: TDataSource
    DataSet = Pessoas_FJ
    Left = 853
    Top = 160
  end
  object Localizacao: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = LogradourosAfterClose
    BeforeOpen = LogradourosBeforeOpen
    BeforePost = LocalizacaoBeforePost
    DeleteSQL.Strings = (
      'delete from EST_LOCALIZACAO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into EST_LOCALIZACAO'
      '  (CNPJ, CODIGO, DESCRICAO)'
      'values'
      '  (:CNPJ, :CODIGO, :DESCRICAO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  CNPJ,'
      '  DESCRICAO'
      'from EST_LOCALIZACAO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from est_localizacao l'
      'where l.cnpj = :cnpj'
      'order by l.descricao')
    ModifySQL.Strings = (
      'update EST_LOCALIZACAO'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_EST_LOCALIZACAO_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 856
    Top = 296
    object LocalizacaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_LOCALIZACAO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object LocalizacaoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_LOCALIZACAO"."CNPJ"'
      FixedChar = True
      Size = 14
    end
    object LocalizacaoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"EST_LOCALIZACAO"."DESCRICAO"'
      Size = 50
    end
  end
end
