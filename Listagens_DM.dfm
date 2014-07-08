object DMListagens: TDMListagens
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 372
  Top = 102
  Height = 561
  Width = 741
  object print: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = True
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 115
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    Autor = Deltress
    About = 'RDprint 3.0h - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = ' Configurar Impress'#227'o'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    TestarPorta = False
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumeroPaginaInicial = 1
    PaginaInicial = 1
    PaginaFinal = 9999
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    OnNewPage = printNewPage
    OnBeforeNewPage = printBeforeNewPage
    Left = 32
    Top = 32
  end
  object NAOCONCILIADOS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT * FROM NAOCONCILIADOS ('#39#39','#39'01/01/1989'#39')')
    Left = 168
    Top = 16
    object NAOCONCILIADOSDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object NAOCONCILIADOSCOD_DOC: TIBStringField
      DisplayLabel = 'Cod Doc'
      FieldName = 'COD_DOC'
      Size = 3
    end
    object NAOCONCILIADOSDOCUMENTO: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
      Size = 40
    end
    object NAOCONCILIADOSHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      DisplayWidth = 80
      FieldName = 'HISTORICO'
      Size = 80
    end
    object NAOCONCILIADOSVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Precision = 18
      Size = 4
    end
    object NAOCONCILIADOSTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object FUTUROS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT * FROM FUTUROS ('#39#39','#39'01/01/1989'#39')')
    Left = 240
    Top = 65528
    object FUTUROSDATA: TDateField
      FieldName = 'DATA'
    end
    object FUTUROSCOD_DOC: TIBStringField
      FieldName = 'COD_DOC'
      Size = 3
    end
    object FUTUROSDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Size = 40
    end
    object FUTUROSHISTORICO: TIBStringField
      DisplayWidth = 80
      FieldName = 'HISTORICO'
      Size = 80
    end
    object FUTUROSVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 4
    end
    object FUTUROSTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object SLDANT: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT * FROM SALDOANT_CONTA ( '#39#39','#39'01/01/1989'#39')')
    Left = 96
    Top = 24
    object SLDANTSOMAC: TIBBCDField
      FieldName = 'SOMAC'
      Precision = 18
      Size = 4
    end
    object SLDANTSOMAD: TIBBCDField
      FieldName = 'SOMAD'
      Precision = 18
      Size = 4
    end
  end
  object SLDANTCONC: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT * FROM SALDOANT_CONTACONC ( '#39#39','#39'01/01/1989'#39')')
    Left = 504
    Top = 32
    object IBBCDField2: TIBBCDField
      FieldName = 'SOMAC'
      Precision = 18
      Size = 4
    end
    object IBBCDField3: TIBBCDField
      FieldName = 'SOMAD'
      Precision = 18
      Size = 4
    end
  end
  object CONCPERIODO: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'SELECT * FROM CONCILIADOSPERIODO ( '#39#39','#39'01/01/1989'#39', '#39'01/01/1989'#39 +
        ')')
    Left = 120
    Top = 104
    object CONCPERIODODATA: TDateField
      FieldName = 'DATA'
    end
    object CONCPERIODOCOD_DOC: TIBStringField
      FieldName = 'COD_DOC'
      Size = 3
    end
    object CONCPERIODODOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Size = 40
    end
    object CONCPERIODOHISTORICO: TIBStringField
      DisplayWidth = 80
      FieldName = 'HISTORICO'
      Size = 80
    end
    object CONCPERIODOVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 4
    end
    object CONCPERIODOTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object LANCAMENTO: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT * '
      'FROM CONCILIADOSPERIODO'
      '( '#39#39' ,'#39#39','#39'01/01/1989'#39', '#39'01/01/1989'#39')')
    Left = 208
    Top = 120
    object LANCAMENTODATA: TDateField
      FieldName = 'DATA'
    end
    object LANCAMENTOCOD_DOC: TIBStringField
      FieldName = 'COD_DOC'
      Size = 3
    end
    object LANCAMENTODOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Size = 40
    end
    object LANCAMENTOHISTORICO: TIBStringField
      DisplayWidth = 80
      FieldName = 'HISTORICO'
      Size = 80
    end
    object LANCAMENTOVALOR: TIBBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 4
    end
    object LANCAMENTOTIPO: TIBStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object LANCAMENTODATA_CONCILIACAO: TDateField
      DisplayLabel = 'Concilia'#231#227'o'
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"CONCILIADOSPERIODO"."DATA_CONCILIACAO"'
    end
  end
  object CHEQUE: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'Select'
      '    CHEQUE ,'
      '    DATA ,'
      '    BANCO,'
      '    VALOR ,'
      '    HISTORICO ,'
      '    IMPRESSO ,'
      '    PESSOA_FJ ,'
      '    ORIGEM ,'
      '    PLANILHA ,'
      '    CONTABILIDADE '
      '    NOME,'
      '    NOMINAL'
      'from VER_CTB_CHEQUE ( :CNPJ, :CONTA )'
      'ORDER BY CHEQUE'
      ''
      '')
    Left = 88
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTA'
        ParamType = ptUnknown
      end>
    object CHEQUECHEQUE: TIntegerField
      FieldName = 'CHEQUE'
      Origin = '"VER_CTB_CHEQUE"."CHEQUE"'
    end
    object CHEQUEDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_CTB_CHEQUE"."DATA"'
    end
    object CHEQUEVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_CTB_CHEQUE"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object CHEQUEHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_CTB_CHEQUE"."HISTORICO"'
      Size = 100
    end
    object CHEQUEIMPRESSO: TIBStringField
      FieldName = 'IMPRESSO'
      Origin = '"VER_CTB_CHEQUE"."IMPRESSO"'
      FixedChar = True
      Size = 1
    end
    object CHEQUEPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_CTB_CHEQUE"."PESSOA_FJ"'
    end
    object CHEQUEORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"VER_CTB_CHEQUE"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object CHEQUEPLANILHA: TIntegerField
      FieldName = 'PLANILHA'
      Origin = '"VER_CTB_CHEQUE"."PLANILHA"'
    end
    object CHEQUEBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"VER_CTB_CHEQUE"."BANCO"'
      Size = 50
    end
    object CHEQUENOME: TIBStringField
      DisplayWidth = 50
      FieldName = 'NOME'
      FixedChar = True
      Size = 50
    end
    object CHEQUENOMINAL: TIBStringField
      FieldName = 'NOMINAL'
      Origin = '"VER_CTB_CHEQUE"."NOMINAL"'
      FixedChar = True
      Size = 1
    end
  end
  object IMPRESSORA: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = True
    OpcoesPreview.CaptionPreview = 'Visuaizar Impress'#227'o'
    OpcoesPreview.PreviewZoom = 115
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    Autor = Deltress
    About = 'RDprint 3.0h - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = ' Configurar Impress'#227'o'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    TestarPorta = False
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumeroPaginaInicial = 1
    PaginaInicial = 1
    PaginaFinal = 9999
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 32
    Top = 88
  end
  object GERAL: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      '')
    Left = 344
    Top = 24
  end
  object RECEBER: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT * FROM RECEBER_LANCAMENTO  ('#39'01/01/1989'#39','#39'01/01/1989'#39')')
    Left = 280
    Top = 24
    object RECEBERCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object RECEBERPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
    end
    object RECEBERNOME_RAZAO: TIBStringField
      DisplayLabel = ' '
      FieldName = 'NOME_RAZAO'
      Size = 50
    end
    object RECEBERFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
    end
    object RECEBERFAX: TIBStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
    end
    object RECEBERENDERECO: TIBStringField
      DisplayLabel = 'End'
      FieldName = 'ENDERECO'
      Size = 60
    end
    object RECEBERNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Size = 15
    end
    object RECEBERCOMPLEMENTO: TIBStringField
      DisplayLabel = 'Compl'
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object RECEBERBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 50
    end
    object RECEBERCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Size = 50
    end
    object RECEBERUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Size = 2
    end
    object RECEBERCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Size = 8
    end
    object RECEBERCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Size = 15
    end
    object RECEBERRG_IE: TIBStringField
      DisplayLabel = 'Rg/Ie'
      FieldName = 'RG_IE'
      Size = 15
    end
    object RECEBERVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object RECEBERDOCUMENTO: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
    end
    object RECEBERPARCELA: TIBStringField
      DisplayLabel = 'Parc'
      FieldName = 'PARCELA'
      Size = 6
    end
    object RECEBERVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Precision = 18
      Size = 4
    end
    object RECEBERJUROS: TIBBCDField
      FieldName = 'JUROS'
      DisplayFormat = 'Juros'
      Precision = 18
      Size = 4
    end
    object RECEBERDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      DisplayFormat = 'Desconto'
      Precision = 18
      Size = 4
    end
    object RECEBERDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
      DisplayFormat = 'Baixa'
    end
    object RECEBERHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Size = 60
    end
    object RECEBERLANCAMENTO: TDateField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'LANCAMENTO'
    end
    object RECEBERBOLETO: TIBStringField
      DisplayLabel = 'Bol'
      FieldName = 'BOLETO'
      Size = 1
    end
    object RECEBERBANCO: TIBStringField
      DisplayLabel = 'Bnc'
      FieldName = 'BANCO'
      Size = 3
    end
    object RECEBERCONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
    end
    object RECEBERVENDA: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'VENDA'
    end
    object RECEBERUSUARIO: TIntegerField
      DisplayLabel = 'Usr'
      FieldName = 'USUARIO'
    end
    object RECEBERMOVIMENTO: TIntegerField
      DisplayLabel = 'Movimento'
      FieldName = 'MOVIMENTO'
    end
    object RECEBERPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
    end
  end
  object PAGAR: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT * FROM PAGAR_LANCAMENTO  ('#39'01/01/1989'#39','#39'01/01/1989'#39')')
    Left = 264
    Top = 80
    object PAGARCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object PAGARPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
    end
    object PAGARNOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_RAZAO'
      Size = 50
    end
    object PAGARFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
    end
    object PAGARFAX: TIBStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
    end
    object PAGARENDERECO: TIBStringField
      DisplayLabel = 'End'
      FieldName = 'ENDERECO'
      Size = 60
    end
    object PAGARNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Size = 15
    end
    object PAGARCOMPLEMENTO: TIBStringField
      DisplayLabel = 'Compl'
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object PAGARBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 50
    end
    object PAGARCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Size = 50
    end
    object PAGARUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Size = 2
    end
    object PAGARCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Size = 8
    end
    object PAGARCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Size = 15
    end
    object PAGARRG_IE: TIBStringField
      DisplayLabel = 'Rg/Ie'
      FieldName = 'RG_IE'
      Size = 15
    end
    object PAGARVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object PAGARDOCUMENTO: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
    end
    object PAGARPARCELA: TIBStringField
      DisplayLabel = 'Parc'
      FieldName = 'PARCELA'
      Size = 6
    end
    object PAGARVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Precision = 18
      Size = 4
    end
    object PAGARJUROS: TIBBCDField
      FieldName = 'JUROS'
      DisplayFormat = 'Juros'
      Precision = 18
      Size = 4
    end
    object PAGARDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      DisplayFormat = 'Desconto'
      Precision = 18
      Size = 4
    end
    object PAGARDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
      DisplayFormat = 'Baixa'
    end
    object PAGARHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Size = 60
    end
    object PAGARLANCAMENTO: TDateField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'LANCAMENTO'
    end
    object PAGARBANCO: TIBStringField
      DisplayLabel = 'Bnc'
      FieldName = 'BANCO'
      Size = 3
    end
    object PAGARCONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
    end
    object PAGARUSUARIO: TIntegerField
      DisplayLabel = 'Usr'
      FieldName = 'USUARIO'
    end
    object PAGARMOVIMENTO: TIntegerField
      DisplayLabel = 'Movimento'
      FieldName = 'MOVIMENTO'
    end
    object PAGARPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
    end
  end
  object Faturas_Carregadas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Faturas_CarregadasAfterClose
    BeforeOpen = Faturas_CarregadasBeforeOpen
    SQL.Strings = (
      'Select'
      '          CODIGO, '
      '          DATA, '
      '          FECHADA,'
      '          PESSOA_FJ, '
      '          USUARIO, '
      '          VENDEDOR,'
      '          NUM_NF, '
      '          DESC_ACRES, '
      '          TOTAL,'
      '          VOLUME, '
      '          PESO,  '
      '          ORCAMENTO, '
      '          NOME'
      'FROM FAT_VENDAS_CARREGADAS ( :CNPJ, :CARGA )')
    Left = 264
    Top = 141
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CARGA'
        ParamType = ptUnknown
      end>
    object Faturas_CarregadasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS"."CODIGO"'
      Required = True
    end
    object Faturas_CarregadasDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FAT_VENDAS"."DATA"'
    end
    object Faturas_CarregadasFECHADA: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'FECHADA'
      Origin = '"FAT_VENDAS"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object Faturas_CarregadasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDAS"."PESSOA_FJ"'
      Required = True
    end
    object Faturas_CarregadasUSUARIO: TIntegerField
      DisplayLabel = 'Usr'
      FieldName = 'USUARIO'
      Origin = '"FAT_VENDAS"."USUARIO"'
      Required = True
    end
    object Faturas_CarregadasVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDAS"."VENDEDOR"'
      Required = True
    end
    object Faturas_CarregadasNUM_NF: TIntegerField
      DisplayLabel = 'Nf'
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDAS"."NUM_NF"'
    end
    object Faturas_CarregadasORCAMENTO: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'ORCAMENTO'
      Origin = '"FAT_VENDAS"."ORCAMENTO"'
    end
    object Faturas_CarregadasNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_VENDAS"."NOME"'
      Size = 50
    end
    object Faturas_CarregadasDESC_ACRES: TIBBCDField
      DisplayLabel = 'Desc/Acres'
      FieldName = 'DESC_ACRES'
      Origin = '"FAT_VENDAS_CARREGAR"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Faturas_CarregadasTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"FAT_VENDAS_CARREGAR"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Faturas_CarregadasVOLUME: TIBBCDField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"FAT_VENDAS_CARREGAR"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Faturas_CarregadasPESO: TIBBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"FAT_VENDAS_CARREGAR"."PESO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object Venda_Itens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Faturas_CarregadasAfterClose
    BeforeOpen = Faturas_CarregadasBeforeOpen
    SQL.Strings = (
      'SELECT'
      '    DESCONTO ,'
      '    ICM ,'
      '    ICM_SUBS ,'
      '    IPI ,'
      '    PESO ,'
      '    PORC_DESC ,'
      '    PRC_CUSTO ,'
      '    PRC_UNIT_ORIGINAL ,'
      '    PRC_UNITARIO ,'
      '    PRODUTO ,'
      '    PRODUTOFIS ,'
      '    QUANTIDADE ,'
      '    SEQUENCIA ,'
      '    UNIDADE ,'
      '    SUBUNIDADE ,'
      '    VOLUME ,'
      '    NOME_PRODUTO ,'
      '    NOME_FIS ,'
      '    ALIQUOTA ,'
      '    ORIGEM ,'
      '    CTE ,'
      '    CTIE ,'
      '    REDUCAO '
      'FROM VER_FATURA_ITENS (:CNPJ, :CODIGO)')
    Left = 352
    Top = 80
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
    object Venda_ItensPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."PRODUTO"'
      Required = True
      Size = 15
    end
    object Venda_ItensSEQUENCIA: TSmallintField
      DisplayLabel = 'Seq'
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_VENDAS_ITENS"."SEQUENCIA"'
      Required = True
    end
    object Venda_ItensUNIDADE: TIBStringField
      DisplayLabel = 'Unid'
      FieldName = 'UNIDADE'
      Origin = '"FAT_VENDAS_ITENS"."UNIDADE"'
      Required = True
      FixedChar = True
      Size = 4
    end
    object Venda_ItensNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."NOME_PRODUTO"'
      Size = 50
    end
    object Venda_ItensALIQUOTA: TIBStringField
      FieldName = 'ALIQUOTA'
      Origin = '"FAT_VENDAS_ITENS"."ALIQUOTA"'
      FixedChar = True
      Size = 3
    end
    object Venda_ItensORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = '"FAT_VENDAS_ITENS"."ORIGEM"'
    end
    object Venda_ItensCTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"FAT_VENDAS_ITENS"."CTE"'
    end
    object Venda_ItensCTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"FAT_VENDAS_ITENS"."CTIE"'
    end
    object Venda_ItensREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"FAT_VENDAS_ITENS"."REDUCAO"'
    end
    object Venda_ItensPRODUTOFIS: TIBStringField
      FieldName = 'PRODUTOFIS'
      Origin = '"VER_FATURA_ITENS"."PRODUTOFIS"'
      Size = 15
    end
    object Venda_ItensSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_FATURA_ITENS"."SUBUNIDADE"'
    end
    object Venda_ItensNOME_FIS: TIBStringField
      FieldName = 'NOME_FIS'
      Origin = '"VER_FATURA_ITENS"."NOME_FIS"'
      Size = 50
    end
    object Venda_ItensDESCONTO: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"VER_FATURA_ITENS"."DESCONTO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Venda_ItensICM: TIBBCDField
      DisplayLabel = 'Icm'
      FieldName = 'ICM'
      Origin = '"VER_FATURA_ITENS"."ICM"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Venda_ItensICM_SUBS: TIBBCDField
      DisplayLabel = 'Icm Sub'
      FieldName = 'ICM_SUBS'
      Origin = '"VER_FATURA_ITENS"."ICM_SUBS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Venda_ItensIPI: TIBBCDField
      DisplayLabel = 'Ipi'
      FieldName = 'IPI'
      Origin = '"VER_FATURA_ITENS"."IPI"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Venda_ItensPESO: TIBBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"VER_FATURA_ITENS"."PESO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Venda_ItensPORC_DESC: TIBBCDField
      DisplayLabel = 'Porc. Desc'
      FieldName = 'PORC_DESC'
      Origin = '"VER_FATURA_ITENS"."PORC_DESC"'
      DisplayFormat = '###,###,##0.00 %'
      Precision = 18
      Size = 4
    end
    object Venda_ItensPRC_CUSTO: TIBBCDField
      DisplayLabel = 'Custo'
      FieldName = 'PRC_CUSTO'
      Origin = '"VER_FATURA_ITENS"."PRC_CUSTO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Venda_ItensPRC_UNIT_ORIGINAL: TIBBCDField
      DisplayLabel = 'Unit. Orig'
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"VER_FATURA_ITENS"."PRC_UNIT_ORIGINAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Venda_ItensPRC_UNITARIO: TIBBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'PRC_UNITARIO'
      Origin = '"VER_FATURA_ITENS"."PRC_UNITARIO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Venda_ItensQUANTIDADE: TIBBCDField
      DisplayLabel = 'Qntde'
      FieldName = 'QUANTIDADE'
      Origin = '"VER_FATURA_ITENS"."QUANTIDADE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Venda_ItensVOLUME: TIBBCDField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"VER_FATURA_ITENS"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object Centro_Custo: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Faturas_CarregadasAfterClose
    BeforeOpen = Faturas_CarregadasBeforeOpen
    SQL.Strings = (
      'select'
      '    CODIGO ,'
      '    NOME ,'
      '    CODIGO_AGRUPADO ,'
      '    NOME_AGRUPADO ,'
      '    AGRUPADOR '
      'from VER_FIN_CENTRO_CUSTO ( :CNPJ )'
      'order by NOME, CODIGO, NOME_AGRUPADO, CODIGO_AGRUPADO')
    Left = 432
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object Centro_CustoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_FIN_CENTRO_CUSTO"."CODIGO"'
    end
    object Centro_CustoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_FIN_CENTRO_CUSTO"."NOME"'
      Size = 50
    end
    object Centro_CustoCODIGO_AGRUPADO: TIntegerField
      FieldName = 'CODIGO_AGRUPADO'
      Origin = '"VER_FIN_CENTRO_CUSTO"."CODIGO_AGRUPADO"'
    end
    object Centro_CustoNOME_AGRUPADO: TIBStringField
      FieldName = 'NOME_AGRUPADO'
      Origin = '"VER_FIN_CENTRO_CUSTO"."NOME_AGRUPADO"'
      Size = 50
    end
    object Centro_CustoAGRUPADOR: TIntegerField
      FieldName = 'AGRUPADOR'
      Origin = '"VER_FIN_CENTRO_CUSTO"."AGRUPADOR"'
    end
  end
  object Vendedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Faturas_CarregadasAfterClose
    BeforeOpen = Faturas_CarregadasBeforeOpen
    SQL.Strings = (
      'select'
      '    CNPJ,'
      '    CODIGO,'
      '    NOME,'
      '    COM_VISTA,'
      '    COM_PRAZO,'
      '    PESSOA_FJ,'
      '    SENHA '
      'from FAT_VENDEDOR'
      'WHERE CNPJ = :CNPJ '
      'ORDER BY NOME')
    Left = 392
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object VendedorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDEDOR"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object VendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDEDOR"."CODIGO"'
      Required = True
    end
    object VendedorNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object VendedorCOM_VISTA: TFloatField
      FieldName = 'COM_VISTA'
      Origin = '"FAT_VENDEDOR"."COM_VISTA"'
    end
    object VendedorCOM_PRAZO: TFloatField
      FieldName = 'COM_PRAZO'
      Origin = '"FAT_VENDEDOR"."COM_PRAZO"'
    end
    object VendedorPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDEDOR"."PESSOA_FJ"'
      Required = True
    end
    object VendedorSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"FAT_VENDEDOR"."SENHA"'
      Size = 6
    end
  end
  object Consulta_Venda_Parc: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Faturas_CarregadasBeforeOpen
    SQL.Strings = (
      'select '
      '    VENCTO,'
      '    PARCELA,'
      '    VALOR,'
      '    BOLETO'
      'from VER_FAT_VENDAS_PARCELAMENTO'
      '( :CNPJ, :CODIGO )'
      'Order by VENCTO')
    Left = 503
    Top = 200
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object Consulta_Venda_ParcVENCTO: TDateTimeField
      FieldName = 'VENCTO'
      Origin = '"VER_FAT_VENDAS_PARCELAMENTO"."VENCTO"'
    end
    object Consulta_Venda_ParcPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"VER_FAT_VENDAS_PARCELAMENTO"."PARCELA"'
      Size = 6
    end
    object Consulta_Venda_ParcVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_FAT_VENDAS_PARCELAMENTO"."VALOR"'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ParcBOLETO: TIntegerField
      FieldName = 'BOLETO'
      Origin = '"VER_FAT_VENDAS_PARCELAMENTO"."BOLETO"'
    end
  end
  object Cargas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Faturas_CarregadasBeforeOpen
    SQL.Strings = (
      'select'
      '    MOTORISTA ,'
      '    NOME_MOTORISTA ,'
      '    VEICULO ,'
      '    ROTA ,'
      '    NOME_ROTA ,'
      '    KM_SAIDA ,'
      '    KM_CHEGADA ,'
      '    DATA_SAIDA ,'
      '    DATA_CHEGADA ,'
      '    PESO ,'
      '    VOLUME '
      'FROM VER_CRG_CARGAS ( :CNPJ, :CODIGO )')
    Left = 24
    Top = 272
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
    object CargasMOTORISTA: TIntegerField
      FieldName = 'MOTORISTA'
      Origin = '"VER_CRG_CARGAS"."MOTORISTA"'
    end
    object CargasNOME_MOTORISTA: TIBStringField
      FieldName = 'NOME_MOTORISTA'
      Origin = '"VER_CRG_CARGAS"."NOME_MOTORISTA"'
      Size = 50
    end
    object CargasVEICULO: TIBStringField
      FieldName = 'VEICULO'
      Origin = '"VER_CRG_CARGAS"."VEICULO"'
      FixedChar = True
      Size = 8
    end
    object CargasROTA: TIntegerField
      FieldName = 'ROTA'
      Origin = '"VER_CRG_CARGAS"."ROTA"'
    end
    object CargasNOME_ROTA: TIBStringField
      FieldName = 'NOME_ROTA'
      Origin = '"VER_CRG_CARGAS"."NOME_ROTA"'
      Size = 50
    end
    object CargasKM_SAIDA: TIBBCDField
      FieldName = 'KM_SAIDA'
      Origin = '"VER_CRG_CARGAS"."KM_SAIDA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object CargasKM_CHEGADA: TIBBCDField
      FieldName = 'KM_CHEGADA'
      Origin = '"VER_CRG_CARGAS"."KM_CHEGADA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object CargasPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_CRG_CARGAS"."PESO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object CargasVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_CRG_CARGAS"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object CargasDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = '"VER_CRG_CARGAS"."DATA_SAIDA"'
    end
    object CargasDATA_CHEGADA: TDateField
      FieldName = 'DATA_CHEGADA'
      Origin = '"VER_CRG_CARGAS"."DATA_CHEGADA"'
    end
  end
  object Cargas_Itens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Faturas_CarregadasBeforeOpen
    SQL.Strings = (
      'select'
      '    CODIGO ,'
      '    DATA ,'
      '    PRODUTO ,'
      '    GRUPO ,'
      '    SEQUENCIA ,'
      '    QUANTIDADE ,'
      '    PRC_UNITARIO ,'
      '    PRC_CUSTO ,'
      '    ICM ,'
      '    ICM_SUBS ,'
      '    IPI ,'
      '    VOLUME ,'
      '    PESO ,'
      '    DESCONTO ,'
      '    PORC_DESC ,'
      '    UNIDADE ,'
      '    PRC_UNIT_ORIGINAL ,'
      '    NOME_PRODUTO ,'
      '    ALIQUOTA ,'
      '    PRODUTOFIS ,'
      '    NOME_FIS ,'
      '    CTE ,'
      '    CTIE ,'
      '    ORIGEM ,'
      '    REDUCAO ,'
      '    SUBUNIDADE '
      'FROM'
      'VER_FAT_VENDAS_PRODUTOS_CARGA'
      '( :CNPJ, :CARGA )'
      'ORDER BY NOME_PRODUTO, PRODUTO')
    Left = 280
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CARGA'
        ParamType = ptUnknown
      end>
    object Cargas_ItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."CODIGO"'
    end
    object Cargas_ItensDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."DATA"'
    end
    object Cargas_ItensPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."PRODUTO"'
      Size = 15
    end
    object Cargas_ItensGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."GRUPO"'
    end
    object Cargas_ItensSEQUENCIA: TSmallintField
      FieldName = 'SEQUENCIA'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."SEQUENCIA"'
    end
    object Cargas_ItensQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."QUANTIDADE"'
      Precision = 18
      Size = 4
    end
    object Cargas_ItensPRC_UNITARIO: TIBBCDField
      FieldName = 'PRC_UNITARIO'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."PRC_UNITARIO"'
      Precision = 18
      Size = 4
    end
    object Cargas_ItensPRC_CUSTO: TIBBCDField
      FieldName = 'PRC_CUSTO'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."PRC_CUSTO"'
      Precision = 18
      Size = 4
    end
    object Cargas_ItensICM: TIBBCDField
      FieldName = 'ICM'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."ICM"'
      Precision = 18
      Size = 4
    end
    object Cargas_ItensICM_SUBS: TIBBCDField
      FieldName = 'ICM_SUBS'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."ICM_SUBS"'
      Precision = 18
      Size = 4
    end
    object Cargas_ItensIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."IPI"'
      Precision = 18
      Size = 4
    end
    object Cargas_ItensVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object Cargas_ItensPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."PESO"'
      Precision = 18
      Size = 4
    end
    object Cargas_ItensDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."DESCONTO"'
      Precision = 18
      Size = 4
    end
    object Cargas_ItensPORC_DESC: TIBBCDField
      FieldName = 'PORC_DESC'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."PORC_DESC"'
      Precision = 18
      Size = 4
    end
    object Cargas_ItensUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object Cargas_ItensPRC_UNIT_ORIGINAL: TIBBCDField
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."PRC_UNIT_ORIGINAL"'
      Precision = 18
      Size = 4
    end
    object Cargas_ItensNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."NOME_PRODUTO"'
      Size = 50
    end
    object Cargas_ItensALIQUOTA: TIBStringField
      FieldName = 'ALIQUOTA'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."ALIQUOTA"'
      FixedChar = True
      Size = 3
    end
    object Cargas_ItensPRODUTOFIS: TIBStringField
      FieldName = 'PRODUTOFIS'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."PRODUTOFIS"'
      Size = 15
    end
    object Cargas_ItensNOME_FIS: TIBStringField
      FieldName = 'NOME_FIS'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."NOME_FIS"'
      Size = 50
    end
    object Cargas_ItensCTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."CTE"'
    end
    object Cargas_ItensCTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."CTIE"'
    end
    object Cargas_ItensORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."ORIGEM"'
    end
    object Cargas_ItensREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."REDUCAO"'
    end
    object Cargas_ItensSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_CARGA"."SUBUNIDADE"'
    end
  end
  object TBImpressora: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from SIS_CONF_CHEQUE'
      'where'
      '  CONTA = :OLD_CONTA')
    InsertSQL.Strings = (
      'insert into SIS_CONF_CHEQUE'
      
        '  (ALTURA, ANOALT, ANODST, CIDALT, CIDDST, CONTA, DESCRICAO, DIA' +
        'ALT, DIADST, '
      
        '   DISTANCIA, EXTENSOALT, EXTENSODST, FAVALT, FAVDST, FAVORECIDO' +
        ', MESALT, '
      '   MESDST, NOME, PRECISAO, VALORALT, VALORDST)'
      'values'
      
        '  (:ALTURA, :ANOALT, :ANODST, :CIDALT, :CIDDST, :CONTA, :DESCRIC' +
        'AO, :DIAALT, '
      
        '   :DIADST, :DISTANCIA, :EXTENSOALT, :EXTENSODST, :FAVALT, :FAVD' +
        'ST, :FAVORECIDO, '
      '   :MESALT, :MESDST, :NOME, :PRECISAO, :VALORALT, :VALORDST)')
    RefreshSQL.Strings = (
      'Select '
      '  CONTA,'
      '  VALORALT,'
      '  VALORDST,'
      '  EXTENSOALT,'
      '  EXTENSODST,'
      '  FAVALT,'
      '  FAVDST,'
      '  CIDALT,'
      '  CIDDST,'
      '  DIAALT,'
      '  DIADST,'
      '  MESALT,'
      '  MESDST,'
      '  ANOALT,'
      '  ANODST,'
      '  ALTURA,'
      '  DISTANCIA,'
      '  PRECISAO,'
      '  FAVORECIDO,'
      '  NOME,'
      '  DESCRICAO'
      'from SIS_CONF_CHEQUE '
      'where'
      '  CONTA = :CONTA')
    SelectSQL.Strings = (
      'select ALTURA, '
      '          ANOALT, '
      '          ANODST, '
      '          CIDALT, '
      '          CIDDST, '
      '          CONTA, '
      '          DESCRICAO, '
      '          DIAALT, '
      '          DIADST, '
      '          DISTANCIA, '
      '          EXTENSOALT, '
      '          EXTENSODST, '
      '          FAVALT, '
      '          FAVDST, '
      '          FAVORECIDO, '
      '          MESALT, '
      '          MESDST, '
      '          NOME, '
      '          PRECISAO, '
      '          VALORALT, '
      '          VALORDST '
      'from SIS_CONF_CHEQUE')
    ModifySQL.Strings = (
      'update SIS_CONF_CHEQUE'
      'set'
      '  ALTURA = :ALTURA,'
      '  ANOALT = :ANOALT,'
      '  ANODST = :ANODST,'
      '  CIDALT = :CIDALT,'
      '  CIDDST = :CIDDST,'
      '  CONTA = :CONTA,'
      '  DESCRICAO = :DESCRICAO,'
      '  DIAALT = :DIAALT,'
      '  DIADST = :DIADST,'
      '  DISTANCIA = :DISTANCIA,'
      '  EXTENSOALT = :EXTENSOALT,'
      '  EXTENSODST = :EXTENSODST,'
      '  FAVALT = :FAVALT,'
      '  FAVDST = :FAVDST,'
      '  FAVORECIDO = :FAVORECIDO,'
      '  MESALT = :MESALT,'
      '  MESDST = :MESDST,'
      '  NOME = :NOME,'
      '  PRECISAO = :PRECISAO,'
      '  VALORALT = :VALORALT,'
      '  VALORDST = :VALORDST'
      'where'
      '  CONTA = :OLD_CONTA')
    Left = 528
    Top = 152
    object TBImpressoraALTURA: TIntegerField
      FieldName = 'ALTURA'
      Origin = '"SIS_CONF_CHEQUE"."ALTURA"'
    end
    object TBImpressoraANOALT: TIntegerField
      FieldName = 'ANOALT'
      Origin = '"SIS_CONF_CHEQUE"."ANOALT"'
    end
    object TBImpressoraANODST: TIntegerField
      FieldName = 'ANODST'
      Origin = '"SIS_CONF_CHEQUE"."ANODST"'
    end
    object TBImpressoraCIDALT: TIntegerField
      FieldName = 'CIDALT'
      Origin = '"SIS_CONF_CHEQUE"."CIDALT"'
    end
    object TBImpressoraCIDDST: TIntegerField
      FieldName = 'CIDDST'
      Origin = '"SIS_CONF_CHEQUE"."CIDDST"'
    end
    object TBImpressoraCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = '"SIS_CONF_CHEQUE"."CONTA"'
      Required = True
    end
    object TBImpressoraDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"SIS_CONF_CHEQUE"."DESCRICAO"'
      Size = 30
    end
    object TBImpressoraDIAALT: TIntegerField
      FieldName = 'DIAALT'
      Origin = '"SIS_CONF_CHEQUE"."DIAALT"'
    end
    object TBImpressoraDIADST: TIntegerField
      FieldName = 'DIADST'
      Origin = '"SIS_CONF_CHEQUE"."DIADST"'
    end
    object TBImpressoraDISTANCIA: TIntegerField
      FieldName = 'DISTANCIA'
      Origin = '"SIS_CONF_CHEQUE"."DISTANCIA"'
    end
    object TBImpressoraEXTENSOALT: TIntegerField
      FieldName = 'EXTENSOALT'
      Origin = '"SIS_CONF_CHEQUE"."EXTENSOALT"'
    end
    object TBImpressoraEXTENSODST: TIntegerField
      FieldName = 'EXTENSODST'
      Origin = '"SIS_CONF_CHEQUE"."EXTENSODST"'
    end
    object TBImpressoraFAVALT: TIntegerField
      FieldName = 'FAVALT'
      Origin = '"SIS_CONF_CHEQUE"."FAVALT"'
    end
    object TBImpressoraFAVDST: TIntegerField
      FieldName = 'FAVDST'
      Origin = '"SIS_CONF_CHEQUE"."FAVDST"'
    end
    object TBImpressoraFAVORECIDO: TIBStringField
      FieldName = 'FAVORECIDO'
      Origin = '"SIS_CONF_CHEQUE"."FAVORECIDO"'
      FixedChar = True
      Size = 1
    end
    object TBImpressoraMESALT: TIntegerField
      FieldName = 'MESALT'
      Origin = '"SIS_CONF_CHEQUE"."MESALT"'
    end
    object TBImpressoraMESDST: TIntegerField
      FieldName = 'MESDST'
      Origin = '"SIS_CONF_CHEQUE"."MESDST"'
    end
    object TBImpressoraNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"SIS_CONF_CHEQUE"."NOME"'
      Size = 30
    end
    object TBImpressoraPRECISAO: TIBStringField
      FieldName = 'PRECISAO'
      Origin = '"SIS_CONF_CHEQUE"."PRECISAO"'
    end
    object TBImpressoraVALORALT: TIntegerField
      FieldName = 'VALORALT'
      Origin = '"SIS_CONF_CHEQUE"."VALORALT"'
    end
    object TBImpressoraVALORDST: TIntegerField
      FieldName = 'VALORDST'
      Origin = '"SIS_CONF_CHEQUE"."VALORDST"'
    end
  end
  object GRUPOS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select CNPJ, CODIGO, NOME from EST_GRUPOS'
      'Where CNPJ = :CNPJ'
      'Order by NOME')
    Left = 224
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object GRUPOSCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_GRUPOS"."CODIGO"'
      Required = True
    end
    object GRUPOSNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"EST_GRUPOS"."NOME"'
      Required = True
      Size = 50
    end
    object GRUPOSCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_GRUPOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
  end
  object DsGrupo: TDataSource
    AutoEdit = False
    DataSet = GRUPOS
    Left = 328
    Top = 256
  end
  object SUBGRUPO: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = DsGrupo
    SQL.Strings = (
      'select CNPJ, SUBGRUPO, NOME from EST_SUBGRUPOS'
      'WHERE CNPJ = :CNPJ AND GRUPO = :CODIGO'
      'ORDER BY NOME')
    Left = 264
    Top = 312
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
    object SUBGRUPOCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_SUBGRUPOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SUBGRUPONOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_SUBGRUPOS"."NOME"'
      Required = True
      Size = 50
    end
    object SUBGRUPOSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = '"EST_SUBGRUPOS"."SUBGRUPO"'
      Required = True
    end
  end
  object Ver_Pessoa: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'Select * from Ver_Pessoa ( :CNPJ, :COD )')
    Left = 332
    Top = 311
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD'
        ParamType = ptUnknown
      end>
    object Ver_PessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_PESSOA"."CODIGO"'
    end
    object Ver_PessoaNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_PESSOA"."NOME_RAZAO"'
      Size = 50
    end
    object Ver_PessoaFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"VER_PESSOA"."FANTASIA"'
      Size = 50
    end
    object Ver_PessoaCOD_ATIVIDADE: TIntegerField
      FieldName = 'COD_ATIVIDADE'
      Origin = '"VER_PESSOA"."COD_ATIVIDADE"'
    end
    object Ver_PessoaATIVIDADE: TIBStringField
      FieldName = 'ATIVIDADE'
      Origin = '"VER_PESSOA"."ATIVIDADE"'
      Size = 50
    end
    object Ver_PessoaCOD_ENDERECO: TIntegerField
      FieldName = 'COD_ENDERECO'
      Origin = '"VER_PESSOA"."COD_ENDERECO"'
    end
    object Ver_PessoaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"VER_PESSOA"."ENDERECO"'
      Size = 50
    end
    object Ver_PessoaNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"VER_PESSOA"."NUMERO"'
      Size = 15
    end
    object Ver_PessoaCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"VER_PESSOA"."COMPLEMENTO"'
      Size = 30
    end
    object Ver_PessoaCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
      Origin = '"VER_PESSOA"."COD_BAIRRO"'
    end
    object Ver_PessoaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"VER_PESSOA"."BAIRRO"'
      Size = 50
    end
    object Ver_PessoaCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = '"VER_PESSOA"."COD_CIDADE"'
    end
    object Ver_PessoaCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"VER_PESSOA"."CIDADE"'
      Size = 50
    end
    object Ver_PessoaUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_PESSOA"."UF"'
      FixedChar = True
      Size = 2
    end
    object Ver_PessoaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_PESSOA"."CEP"'
      Size = 8
    end
    object Ver_PessoaFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_PESSOA"."FONE"'
    end
    object Ver_PessoaFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"VER_PESSOA"."FAX"'
    end
    object Ver_PessoaCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"VER_PESSOA"."CELULAR"'
    end
    object Ver_PessoaPESSOA: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"VER_PESSOA"."PESSOA"'
      FixedChar = True
      Size = 1
    end
    object Ver_PessoaCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_PESSOA"."CPF_CGC"'
      Size = 15
    end
    object Ver_PessoaRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"VER_PESSOA"."RG_IE"'
      Size = 15
    end
    object Ver_PessoaCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"VER_PESSOA"."CONTATO"'
      Size = 30
    end
    object Ver_PessoaDT_NASCIMENTO: TDateTimeField
      FieldName = 'DT_NASCIMENTO'
      Origin = '"VER_PESSOA"."DT_NASCIMENTO"'
    end
    object Ver_PessoaDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
      Origin = '"VER_PESSOA"."DT_CADASTRO"'
    end
    object Ver_PessoaEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"VER_PESSOA"."EMAIL"'
      Size = 80
    end
    object Ver_PessoaOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"VER_PESSOA"."OBS"'
      Size = 8
    end
    object Ver_PessoaINSC_MUNIC: TIBStringField
      FieldName = 'INSC_MUNIC'
      Origin = '"VER_PESSOA"."INSC_MUNIC"'
      Size = 15
    end
  end
  object LOG: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select CNPJ, CODIGO, COMPUTADOR, DATA, DOCUMENTO, HORA, ORIGEM, ' +
        'USUARIO from SIS_LOG_TRANSACOES'
      'WHERE CNPJ = :CNPJ AND DATA >= :DINI AND'
      'DATA <= :DFIM')
    Left = 200
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DFIM'
        ParamType = ptUnknown
      end>
    object LOGCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"SIS_LOG_TRANSACOES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object LOGCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"SIS_LOG_TRANSACOES"."CODIGO"'
      Required = True
    end
    object LOGCOMPUTADOR: TIBStringField
      DisplayLabel = 'Computador'
      FieldName = 'COMPUTADOR'
      Origin = '"SIS_LOG_TRANSACOES"."COMPUTADOR"'
      Size = 50
    end
    object LOGDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"SIS_LOG_TRANSACOES"."DATA"'
    end
    object LOGDOCUMENTO: TIBStringField
      DisplayLabel = 'Dcto'
      FieldName = 'DOCUMENTO'
      Origin = '"SIS_LOG_TRANSACOES"."DOCUMENTO"'
      Required = True
    end
    object LOGHORA: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'HORA'
      Origin = '"SIS_LOG_TRANSACOES"."HORA"'
    end
    object LOGORIGEM2: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"SIS_LOG_TRANSACOES"."ORIGEM"'
      Size = 6
    end
    object LOGUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"SIS_LOG_TRANSACOES"."USUARIO"'
    end
  end
  object CONFERE_ESTOQUE_GRADE: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM CONFERE_ESTOQUE_GRADE'
      '( :CNPJ )'
      'order by NOME')
    Left = 80
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object CONFERE_ESTOQUE_GRADEPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"CONFERE_ESTOQUE_GRADE"."PRODUTO"'
      Size = 15
    end
    object CONFERE_ESTOQUE_GRADENOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"CONFERE_ESTOQUE_GRADE"."NOME"'
      Size = 50
    end
    object CONFERE_ESTOQUE_GRADEQUANTIDADE: TIBBCDField
      DisplayLabel = 'Qntde'
      FieldName = 'QUANTIDADE'
      Origin = '"CONFERE_ESTOQUE_GRADE"."QUANTIDADE"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object CONFERE_ESTOQUE_GRADEQUANTIDADE_GRADE: TIBBCDField
      DisplayLabel = 'Qntde Grade'
      FieldName = 'QUANTIDADE_GRADE'
      Origin = '"CONFERE_ESTOQUE_GRADE"."QUANTIDADE_GRADE"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object ClientesInativos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'SELECT * FROM  CLIENTES_INATIVOS_PERIODO ( :CNPJ, :TEMPO, :MOVIM' +
        'ENTO )')
    Left = 152
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TEMPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MOVIMENTO'
        ParamType = ptUnknown
      end>
    object ClientesInativosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CLIENTES_INATIVOS_PERIODO"."CODIGO"'
    end
    object ClientesInativosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTES_INATIVOS_PERIODO"."NOME"'
      Size = 50
    end
    object ClientesInativosULTIMA_COMPRA: TDateField
      FieldName = 'ULTIMA_COMPRA'
      Origin = '"CLIENTES_INATIVOS_PERIODO"."ULTIMA_COMPRA"'
    end
    object ClientesInativosFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"CLIENTES_INATIVOS_PERIODO"."FONE"'
    end
    object ClientesInativosFONE1: TIBStringField
      FieldName = 'FONE1'
      Origin = '"CLIENTES_INATIVOS_PERIODO"."FONE1"'
    end
    object ClientesInativosFONE2: TIBStringField
      FieldName = 'FONE2'
      Origin = '"CLIENTES_INATIVOS_PERIODO"."FONE2"'
    end
    object ClientesInativosRECEBER: TIBBCDField
      FieldName = 'RECEBER'
      Origin = '"CLIENTES_INATIVOS_PERIODO"."RECEBER"'
      Precision = 18
      Size = 4
    end
  end
  object qryRelFormaPagto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Faturas_CarregadasBeforeOpen
    SQL.Strings = (
      'select p.codigo, p.nome,'
      ' case p.ativo'
      '  when '#39'S'#39' then '#39'Sim'#39
      '  when '#39'N'#39' then '#39'N'#227'o'#39
      ' end ativo'
      'from fin_formas_pagto p'
      'where p.cnpj = :cnpj')
    Left = 488
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object qryRelFormaPagtoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_FORMAS_PAGTO"."CODIGO"'
      Required = True
    end
    object qryRelFormaPagtoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_FORMAS_PAGTO"."NOME"'
      Required = True
      Size = 50
    end
    object qryRelFormaPagtoATIVO: TIBStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 3
    end
  end
  object dsForma: TDataSource
    DataSet = qryRelFormaPagto
    Left = 80
    Top = 280
  end
  object qryRelTerceiro: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Faturas_CarregadasBeforeOpen
    SQL.Strings = (
      'select    t.CODIGO,'
      '          t.COM_PRAZO, '
      '          t.COM_VISTA, '
      '          coalesce(t.codigo,'#39#39')||'#39'-'#39'||coalesce(t.NOME,'#39#39') nome'
      'from FAT_TERCEIROS t'
      'where t.cnpj = :cnpj'
      'Order  By t.Nome'
      '')
    Left = 48
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object qryRelTerceiroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_TERCEIROS"."CODIGO"'
      Required = True
    end
    object qryRelTerceiroCOM_PRAZO: TFloatField
      FieldName = 'COM_PRAZO'
      Origin = '"FAT_TERCEIROS"."COM_PRAZO"'
    end
    object qryRelTerceiroCOM_VISTA: TFloatField
      FieldName = 'COM_VISTA'
      Origin = '"FAT_TERCEIROS"."COM_VISTA"'
    end
    object qryRelTerceiroNOME: TIBStringField
      FieldName = 'NOME'
      Size = 62
    end
  end
  object dsTerceiro: TDataSource
    DataSet = qryRelTerceiro
    Left = 160
    Top = 352
  end
  object dsPagasChequePlanilha: TDataSource
    DataSet = PagasChequePlanilha
    Left = 408
    Top = 24
  end
  object PagasChequePlanilha: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = PagasChequePlanilhaCalcFields
    SQL.Strings = (
      
        'SELECT ch.*, bx.docto, bx.historico, bx.nome, bx.vlr_baixa from ' +
        'VER_CTB_CHEQUE (:cnpj, :conta ) ch, fin_baixas_pagar bx'
      
        'WHERE ch.cheque = :cheque and ((bx.cod_acertoconta = ch.cod_acer' +
        'to ) or (bx.planilha = ch.planilha ))'
      'ORDER BY ch.CHEQUE')
    Left = 464
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'conta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cheque'
        ParamType = ptUnknown
      end>
    object PagasChequePlanilhaCHEQUE: TIntegerField
      FieldName = 'CHEQUE'
      Origin = '"VER_CTB_CHEQUE"."CHEQUE"'
    end
    object PagasChequePlanilhaDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_CTB_CHEQUE"."DATA"'
    end
    object PagasChequePlanilhaBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"VER_CTB_CHEQUE"."BANCO"'
      Size = 50
    end
    object PagasChequePlanilhaVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_CTB_CHEQUE"."VALOR"'
      Precision = 18
      Size = 4
    end
    object PagasChequePlanilhaHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_CTB_CHEQUE"."HISTORICO"'
      Size = 100
    end
    object PagasChequePlanilhaIMPRESSO: TIBStringField
      FieldName = 'IMPRESSO'
      Origin = '"VER_CTB_CHEQUE"."IMPRESSO"'
      FixedChar = True
      Size = 1
    end
    object PagasChequePlanilhaPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_CTB_CHEQUE"."PESSOA_FJ"'
    end
    object PagasChequePlanilhaORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"VER_CTB_CHEQUE"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object PagasChequePlanilhaPLANILHA: TIntegerField
      FieldName = 'PLANILHA'
      Origin = '"VER_CTB_CHEQUE"."PLANILHA"'
    end
    object PagasChequePlanilhaCONTABILIDADE: TIBStringField
      FieldName = 'CONTABILIDADE'
      Origin = '"VER_CTB_CHEQUE"."CONTABILIDADE"'
      FixedChar = True
      Size = 1
    end
    object PagasChequePlanilhaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_CTB_CHEQUE"."NOME"'
      Size = 50
    end
    object PagasChequePlanilhaNOMINAL: TIBStringField
      FieldName = 'NOMINAL'
      Origin = '"VER_CTB_CHEQUE"."NOMINAL"'
      FixedChar = True
      Size = 1
    end
    object PagasChequePlanilhaPRE_DATE: TDateField
      FieldName = 'PRE_DATE'
      Origin = '"VER_CTB_CHEQUE"."PRE_DATE"'
    end
    object PagasChequePlanilhaDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"FIN_BAIXAS_PAGAR"."DOCTO"'
      Required = True
    end
    object PagasChequePlanilhaHISTORICO1: TIBStringField
      FieldName = 'HISTORICO1'
      Origin = '"FIN_BAIXAS_PAGAR"."HISTORICO"'
      Size = 100
    end
    object PagasChequePlanilhaNOME1: TIBStringField
      FieldName = 'NOME1'
      Origin = '"FIN_BAIXAS_PAGAR"."NOME"'
      Size = 50
    end
    object PagasChequePlanilhaVLR_BAIXA: TFloatField
      FieldName = 'VLR_BAIXA'
      Origin = '"FIN_BAIXAS_PAGAR"."VLR_BAIXA"'
    end
    object PagasChequePlanilhatmp_EMPRESA: TStringField
      FieldKind = fkCalculated
      FieldName = 'tmp_EMPRESA'
      Size = 100
      Calculated = True
    end
    object PagasChequePlanilhatmp_VALOR: TStringField
      FieldKind = fkCalculated
      FieldName = 'tmp_VALOR'
      Size = 15
      Calculated = True
    end
    object PagasChequePlanilhatmpMUNICIPIO: TStringField
      FieldKind = fkCalculated
      FieldName = 'tmpMUNICIPIO'
      Size = 50
      Calculated = True
    end
    object PagasChequePlanilhatmp_VLR_EXTENSO: TStringField
      FieldKind = fkCalculated
      FieldName = 'tmp_VLR_EXTENSO'
      Size = 100
      Calculated = True
    end
    object PagasChequePlanilhatmp_BANCO: TStringField
      FieldKind = fkCalculated
      FieldName = 'tmp_BANCO'
      Size = 50
      Calculated = True
    end
    object PagasChequePlanilhaCOD_ACERTO: TIntegerField
      FieldName = 'COD_ACERTO'
      Origin = '"VER_CTB_CHEQUE"."COD_ACERTO"'
    end
  end
  object VALOR: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 32
    Top = 144
  end
  object Extenso: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 152
    Top = 176
  end
end
