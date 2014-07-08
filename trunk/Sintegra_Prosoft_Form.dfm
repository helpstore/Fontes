object FrmProsoftSintegra: TFrmProsoftSintegra
  Left = 297
  Top = 150
  Width = 477
  Height = 348
  BorderIcons = [biSystemMenu]
  Caption = 'Prosoft'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TcxLabel
    Left = 47
    Top = 127
    Caption = 'Caminho do Arquivo'
    ParentFont = False
    Transparent = True
  end
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 469
    Height = 321
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Bevel1: TBevel
      Left = 2
      Top = 277
      Width = 465
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object b2: TBevel
      Left = 10
      Top = 35
      Width = 184
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 8
      Caption = 'Prosoft'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 117
      Top = 48
      Caption = 'Data Final'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 12
      Top = 48
      Caption = 'Data Inicial'
      ParentFont = False
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 13
      Top = 222
      Caption = 'Caminho do Arquivo'
      ParentFont = False
      Transparent = True
    end
    object Panel2: TPanel
      Left = 2
      Top = 279
      Width = 465
      Height = 40
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object LblStatus: TcxLabel
        Left = 197
        Top = 13
        Caption = 'Status'
        ParentFont = False
        Transparent = True
      end
      object RzBitBtn2: TcxButton
        Left = 8
        Top = 7
        Width = 91
        Height = 25
        Cursor = crHandPoint
        Cancel = True
        Caption = '&Fechar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = RzBitBtn2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
          0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
          0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
          0333337F777FFFFF7F3333000000000003333377777777777333}
        NumGlyphs = 2
      end
      object pgb: TProgressBar
        Left = 238
        Top = 10
        Width = 212
        Height = 17
        TabOrder = 1
      end
      object btnExporta: TcxButton
        Left = 102
        Top = 7
        Width = 91
        Height = 25
        Cursor = crHandPoint
        Action = ActExporta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADAD0DADADADDADADADA00DADADAADADADAD0D0DADADDADADADA0AD0
          DADA000000000DAD0DADD0DADADADADAD0DAAD0DADADADADAD0DDAD0DADADADA
          DAD0AD0DADADADADAD0DD0DADADADADAD0DA000000000DAD0DADDADADADA0AD0
          DADAADADADAD0D0DADADDADADADA00DADADAADADADAD0DADADAD}
      end
    end
    object PathDestino: TdxEdit
      Left = 11
      Top = 236
      Width = 421
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 1
    end
    object Ini: TdxDateEdit
      Left = 12
      Top = 64
      Width = 97
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      Date = -700000.000000000000000000
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
    object Fim: TdxDateEdit
      Left = 117
      Top = 64
      Width = 98
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      Date = -700000.000000000000000000
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
    object BtnDir: TcxButton
      Left = 430
      Top = 236
      Width = 23
      Height = 23
      Cursor = crHandPoint
      Action = ActAbre
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object GroupBox1: TGroupBox
      Left = 12
      Top = 94
      Width = 437
      Height = 119
      Caption = 'Tipos de Arquivo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object rdNF: TRadioButton
        Left = 8
        Top = 16
        Width = 113
        Height = 17
        Caption = 'Nota Fiscal - Sa'#237'da'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object rdNFI: TRadioButton
        Left = 8
        Top = 40
        Width = 145
        Height = 17
        Caption = 'Itens Nota Fiscal - Sa'#237'da '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object rdTerc: TRadioButton
        Left = 168
        Top = 64
        Width = 73
        Height = 17
        Caption = 'Parceiro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object rdNFET: TRadioButton
        Left = 168
        Top = 16
        Width = 150
        Height = 17
        Caption = 'Nota Fiscal - Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object rdNFETI: TRadioButton
        Left = 168
        Top = 40
        Width = 153
        Height = 17
        Caption = 'Itens Nota Fiscal - Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object rdCF: TRadioButton
        Left = 8
        Top = 66
        Width = 129
        Height = 17
        Caption = 'Cupom Fiscal - Mestre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object rdCFI: TRadioButton
        Left = 8
        Top = 90
        Width = 145
        Height = 17
        Caption = 'Cupom Fiscal - Itens'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object rdProduto: TRadioButton
        Left = 168
        Top = 88
        Width = 73
        Height = 17
        Caption = 'Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
    end
  end
  object DIR: TOpenDialog
    DefaultExt = 'txt'
    Filter = '*.txt'
    Left = 352
    Top = 8
  end
  object Actions: TActionList
    Left = 392
    Top = 8
    object ActFechar: TAction
      Caption = '&Fechar'
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActAbre: TAction
      Caption = 'Abre'
      OnExecute = ActAbreExecute
    end
    object ActExporta: TAction
      Caption = 'Exporta'
      OnExecute = ActExportaExecute
    end
    object ActImporta: TAction
      Caption = 'Importa Dados'
    end
    object ActAbreElgin: TAction
      Caption = 'AbreElgin'
    end
    object ActImportaElgin: TAction
      Caption = 'Importa Elgin'
    end
  end
  object Parceiros: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select psa.codigo, case coalesce(psa.pessoa,'#39'F'#39')'
      '         when '#39'J'#39' then '#39'0'#39
      '         else '#39'1'#39
      
        '       end  as personalidade, psa.cpf_cgc, psa.nome_razao, psa.f' +
        'antasia, lgd.nome logradouro, psa.numero, psa.complemento,'
      
        'psa.cep, br.nome bairro, cdd.nome municipio, psa.uf, psa.dt_nasc' +
        'imento, psa.fone, psa.fax,'
      'psa.email, psa.rg_ie, psa.insc_munic,'
      'case coalesce(psa.pessoa,'#39'M'#39')'
      '     when '#39'F'#39' then '#39'1'#39
      '     when '#39'M'#39' then '#39'0'#39
      'end as sexo,'
      'cdd.cod_ibge'
      '  from glo_pessoas_fj psa'
      
        'left  join glo_logradouros lgd on (psa.cnpj = lgd.cnpj and psa.e' +
        'ndereco = lgd.codigo)'
      
        'left join glo_bairros br on (psa.cnpj = br.cnpj and psa.bairro =' +
        ' br.codigo)'
      
        'left join glo_cidades cdd on (psa.cnpj = cdd.cnpj and psa.cidade' +
        ' = cdd.codigo)'
      
        'inner join est_entradas et on (et.cnpj = psa.cnpj and et.pessoa_' +
        'fj = psa.codigo)'
      'where (et.data_ent between :data1 and :data2)'
      'union'
      'select psa.codigo, case coalesce(psa.pessoa,'#39'F'#39')'
      '         when '#39'J'#39' then '#39'0'#39
      '         else '#39'1'#39
      
        '       end  as personalidade, psa.cpf_cgc, psa.nome_razao, psa.f' +
        'antasia, lgd.nome logradouro, psa.numero, psa.complemento,'
      
        'psa.cep, br.nome bairro, cdd.nome municipio, psa.uf, psa.dt_nasc' +
        'imento, psa.fone, psa.fax,'
      'psa.email, psa.rg_ie, psa.insc_munic,'
      'case coalesce(psa.pessoa,'#39'M'#39')'
      '     when '#39'F'#39' then '#39'1'#39
      '     when '#39'M'#39' then '#39'0'#39
      'end as sexo,'
      'cdd.cod_ibge'
      '  from glo_pessoas_fj psa'
      
        'left  join glo_logradouros lgd on (psa.cnpj = lgd.cnpj and psa.e' +
        'ndereco = lgd.codigo)'
      
        'left join glo_bairros br on (psa.cnpj = br.cnpj and psa.bairro =' +
        ' br.codigo)'
      
        'left join glo_cidades cdd on (psa.cnpj = cdd.cnpj and psa.cidade' +
        ' = cdd.codigo)'
      
        'inner join fat_vendas vd on (vd.cnpj = psa.cnpj and vd.pessoa_fj' +
        ' = psa.codigo)'
      'where (vd.dt_emissao_nf  between :data1 and :data2)')
    Left = 250
    Top = 35
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object ParceirosPERSONALIDADE: TIBStringField
      FieldName = 'PERSONALIDADE'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object ParceirosCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object ParceirosNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object ParceirosFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object ParceirosLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      Size = 50
    end
    object ParceirosNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"GLO_PESSOAS_FJ"."NUMERO"'
      Size = 15
    end
    object ParceirosCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_PESSOAS_FJ"."COMPLEMENTO"'
      Size = 30
    end
    object ParceirosCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"GLO_PESSOAS_FJ"."CEP"'
      Size = 8
    end
    object ParceirosBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"GLO_BAIRROS"."NOME"'
      Size = 50
    end
    object ParceirosMUNICIPIO: TIBStringField
      FieldName = 'MUNICIPIO'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object ParceirosUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PESSOAS_FJ"."UF"'
      FixedChar = True
      Size = 2
    end
    object ParceirosDT_NASCIMENTO: TDateTimeField
      FieldName = 'DT_NASCIMENTO'
      Origin = '"GLO_PESSOAS_FJ"."DT_NASCIMENTO"'
    end
    object ParceirosFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object ParceirosFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object ParceirosEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"GLO_PESSOAS_FJ"."EMAIL"'
      Size = 80
    end
    object ParceirosRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"GLO_PESSOAS_FJ"."RG_IE"'
    end
    object ParceirosINSC_MUNIC: TIBStringField
      FieldName = 'INSC_MUNIC'
      Origin = '"GLO_PESSOAS_FJ"."INSC_MUNIC"'
      Size = 15
    end
    object ParceirosSEXO: TIBStringField
      FieldName = 'SEXO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object ParceirosCOD_IBGE: TIBStringField
      FieldName = 'COD_IBGE'
      Origin = '"GLO_CIDADES"."COD_IBGE"'
      Size = 7
    end
    object ParceirosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object NFSaida: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from PCD_NFS_EXPORTA_PROSOFT(:cnpj,:data1,:data2)')
    Left = 176
    Top = 3
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object NFSaidaNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"PCD_NFS_EXPORTA_PROSOFT"."NUM_NF"'
    end
    object NFSaidaSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"PCD_NFS_EXPORTA_PROSOFT"."SERIE"'
      FixedChar = True
      Size = 10
    end
    object NFSaidaDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = '"PCD_NFS_EXPORTA_PROSOFT"."DATA_SAIDA"'
    end
    object NFSaidaVALOR_CONTABIL: TFloatField
      FieldName = 'VALOR_CONTABIL'
      Origin = '"PCD_NFS_EXPORTA_PROSOFT"."VALOR_CONTABIL"'
    end
    object NFSaidaVALOR_MERCADORIAS: TFloatField
      FieldName = 'VALOR_MERCADORIAS'
      Origin = '"PCD_NFS_EXPORTA_PROSOFT"."VALOR_MERCADORIAS"'
    end
    object NFSaidaBASE_CALCULO_ICMS: TFloatField
      FieldName = 'BASE_CALCULO_ICMS'
      Origin = '"PCD_NFS_EXPORTA_PROSOFT"."BASE_CALCULO_ICMS"'
    end
    object NFSaidaICMS_DEBITADO: TFloatField
      FieldName = 'ICMS_DEBITADO'
      Origin = '"PCD_NFS_EXPORTA_PROSOFT"."ICMS_DEBITADO"'
    end
    object NFSaidaALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
      Origin = '"PCD_NFS_EXPORTA_PROSOFT"."ALIQUOTA_ICMS"'
    end
    object NFSaidaCLIENTE_CPF_CNPJ: TIBStringField
      FieldName = 'CLIENTE_CPF_CNPJ'
      Origin = '"PCD_NFS_EXPORTA_PROSOFT"."CLIENTE_CPF_CNPJ"'
      Size = 15
    end
    object NFSaidaCLIENTE_UF: TIBStringField
      FieldName = 'CLIENTE_UF'
      Origin = '"PCD_NFS_EXPORTA_PROSOFT"."CLIENTE_UF"'
      Size = 2
    end
    object NFSaidaCLIENTE_IE: TIBStringField
      FieldName = 'CLIENTE_IE'
      Origin = '"PCD_NFS_EXPORTA_PROSOFT"."CLIENTE_IE"'
    end
    object NFSaidaTIPO_FRETE: TIBStringField
      FieldName = 'TIPO_FRETE'
      Origin = '"PCD_NFS_EXPORTA_PROSOFT"."TIPO_FRETE"'
      FixedChar = True
      Size = 1
    end
    object NFSaidaCONDICAO_VENDA: TIBStringField
      FieldName = 'CONDICAO_VENDA'
      Origin = '"PCD_NFS_EXPORTA_PROSOFT"."CONDICAO_VENDA"'
      FixedChar = True
      Size = 1
    end
    object NFSaidaDATA_DOCUMENTO: TDateField
      FieldName = 'DATA_DOCUMENTO'
      Origin = '"PCD_NFS_EXPORTA_PROSOFT"."DATA_DOCUMENTO"'
    end
    object NFSaidaCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"PCD_NFS_EXPORTA_PROSOFT"."CFOP"'
    end
    object NFSaidaBASE_CALCULO_ICMS_SUB: TFloatField
      FieldName = 'BASE_CALCULO_ICMS_SUB'
      Origin = '"PCD_NFS_EXPORTA_PROSOFT"."BASE_CALCULO_ICMS_SUB"'
    end
    object NFSaidaIMPOSTO_RETIDO_ICMS_SUB: TFloatField
      FieldName = 'IMPOSTO_RETIDO_ICMS_SUB'
      Origin = '"PCD_NFS_EXPORTA_PROSOFT"."IMPOSTO_RETIDO_ICMS_SUB"'
    end
    object NFSaidaNOTA_CANCELADA: TIBStringField
      FieldName = 'NOTA_CANCELADA'
      Origin = '"PCD_NFS_EXPORTA_PROSOFT"."NOTA_CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object NFSaidaVLR_OUTROS: TFloatField
      FieldName = 'VLR_OUTROS'
      Origin = '"PCD_NFS_EXPORTA_PROSOFT"."VLR_OUTROS"'
    end
    object NFSaidaPSA_CODIGO: TIntegerField
      FieldName = 'PSA_CODIGO'
      Origin = '"PCD_NFS_EXPORTA_PROSOFT"."PSA_CODIGO"'
    end
    object NFSaidaMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"PCD_NFS_EXPORTA_PROSOFT"."MODELO"'
      Size = 4
    end
  end
  object NFSaidaItens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select * from PCD_NFS_EXPORTA_ITENS_PROSOFT (:cnpj,:data1,:data2' +
        ')')
    Left = 210
    Top = 3
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object NFSaidaItensNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"PCD_NFS_EXPORTA_ITENS_PROSOFT"."NUM_NF"'
    end
    object NFSaidaItensSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"PCD_NFS_EXPORTA_ITENS_PROSOFT"."SERIE"'
      FixedChar = True
      Size = 10
    end
    object NFSaidaItensDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = '"PCD_NFS_EXPORTA_ITENS_PROSOFT"."DATA_SAIDA"'
    end
    object NFSaidaItensICMS_DEBITADO: TFloatField
      FieldName = 'ICMS_DEBITADO'
      Origin = '"PCD_NFS_EXPORTA_ITENS_PROSOFT"."ICMS_DEBITADO"'
    end
    object NFSaidaItensALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
      Origin = '"PCD_NFS_EXPORTA_ITENS_PROSOFT"."ALIQUOTA_ICMS"'
    end
    object NFSaidaItensCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"PCD_NFS_EXPORTA_ITENS_PROSOFT"."CFOP"'
    end
    object NFSaidaItensIMPOSTO_RETIDO_ICMS_SUB: TFloatField
      FieldName = 'IMPOSTO_RETIDO_ICMS_SUB'
      Origin = '"PCD_NFS_EXPORTA_ITENS_PROSOFT"."IMPOSTO_RETIDO_ICMS_SUB"'
    end
    object NFSaidaItensNUM_ITEM: TIntegerField
      FieldName = 'NUM_ITEM'
      Origin = '"PCD_NFS_EXPORTA_ITENS_PROSOFT"."NUM_ITEM"'
    end
    object NFSaidaItensCOD_PRODUTO: TIBStringField
      FieldName = 'COD_PRODUTO'
      Origin = '"PCD_NFS_EXPORTA_ITENS_PROSOFT"."COD_PRODUTO"'
      Size = 15
    end
    object NFSaidaItensUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PCD_NFS_EXPORTA_ITENS_PROSOFT"."UNIDADE"'
      Size = 3
    end
    object NFSaidaItensSIT_TRIB: TIBStringField
      FieldName = 'SIT_TRIB'
      Origin = '"PCD_NFS_EXPORTA_ITENS_PROSOFT"."SIT_TRIB"'
      FixedChar = True
      Size = 3
    end
    object NFSaidaItensQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = '"PCD_NFS_EXPORTA_ITENS_PROSOFT"."QTDE"'
    end
    object NFSaidaItensPRECO_UNITARIO: TFloatField
      FieldName = 'PRECO_UNITARIO'
      Origin = '"PCD_NFS_EXPORTA_ITENS_PROSOFT"."PRECO_UNITARIO"'
    end
    object NFSaidaItensDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = '"PCD_NFS_EXPORTA_ITENS_PROSOFT"."DESCONTO"'
    end
    object NFSaidaItensVALOR_ITEM: TFloatField
      FieldName = 'VALOR_ITEM'
      Origin = '"PCD_NFS_EXPORTA_ITENS_PROSOFT"."VALOR_ITEM"'
    end
    object NFSaidaItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      Origin = '"PCD_NFS_EXPORTA_ITENS_PROSOFT"."BASE_ICMS"'
    end
    object NFSaidaItensBASE_ICMS_SUB: TFloatField
      FieldName = 'BASE_ICMS_SUB'
      Origin = '"PCD_NFS_EXPORTA_ITENS_PROSOFT"."BASE_ICMS_SUB"'
    end
    object NFSaidaItensPRODUTO_DESCRICAO: TIBStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = '"PCD_NFS_EXPORTA_ITENS_PROSOFT"."PRODUTO_DESCRICAO"'
      Size = 50
    end
    object NFSaidaItensPRODUTO_SIT_TRIB: TIBStringField
      FieldName = 'PRODUTO_SIT_TRIB'
      Origin = '"PCD_NFS_EXPORTA_ITENS_PROSOFT"."PRODUTO_SIT_TRIB"'
      FixedChar = True
      Size = 3
    end
    object NFSaidaItensPRODUTO_FANTASIA: TIBStringField
      FieldName = 'PRODUTO_FANTASIA'
      Origin = '"PCD_NFS_EXPORTA_ITENS_PROSOFT"."PRODUTO_FANTASIA"'
      Size = 50
    end
    object NFSaidaItensMOVIMENTA_MERCADORIA: TIBStringField
      FieldName = 'MOVIMENTA_MERCADORIA'
      Origin = '"PCD_NFS_EXPORTA_ITENS_PROSOFT"."MOVIMENTA_MERCADORIA"'
      FixedChar = True
      Size = 1
    end
    object NFSaidaItensINDICACAO_TRIBUTACAO: TIBStringField
      FieldName = 'INDICACAO_TRIBUTACAO'
      Origin = '"PCD_NFS_EXPORTA_ITENS_PROSOFT"."INDICACAO_TRIBUTACAO"'
      FixedChar = True
      Size = 1
    end
    object NFSaidaItensVLR_OUTROS: TFloatField
      FieldName = 'VLR_OUTROS'
      Origin = '"PCD_NFS_EXPORTA_ITENS_PROSOFT"."VLR_OUTROS"'
    end
  end
  object CFMestre: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from  EXP_CTB_CF_PROSOFT cf'
      
        'where cf.cnpj = :cnpj and (cf.data_movimento between :data1 and ' +
        ':data2)')
    Left = 250
    Top = 3
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object CFMestreCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EXP_CTB_CF_PROSOFT"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object CFMestreCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EXP_CTB_CF_PROSOFT"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CFMestreDATA_MOVIMENTO: TDateField
      FieldName = 'DATA_MOVIMENTO'
      Origin = '"EXP_CTB_CF_PROSOFT"."DATA_MOVIMENTO"'
    end
    object CFMestreNUM_SEQ_ECF: TIBStringField
      FieldName = 'NUM_SEQ_ECF'
      Origin = '"EXP_CTB_CF_PROSOFT"."NUM_SEQ_ECF"'
      FixedChar = True
      Size = 3
    end
    object CFMestreNUM_SER_ECF: TIBStringField
      FieldName = 'NUM_SER_ECF'
      Origin = '"EXP_CTB_CF_PROSOFT"."NUM_SER_ECF"'
    end
    object CFMestreCT_OO_ANT: TIntegerField
      FieldName = 'CT_OO_ANT'
      Origin = '"EXP_CTB_CF_PROSOFT"."CT_OO_ANT"'
    end
    object CFMestreCT_OO_FIN: TIntegerField
      FieldName = 'CT_OO_FIN'
      Origin = '"EXP_CTB_CF_PROSOFT"."CT_OO_FIN"'
    end
    object CFMestreCT_RED_Z_FIN: TIntegerField
      FieldName = 'CT_RED_Z_FIN'
      Origin = '"EXP_CTB_CF_PROSOFT"."CT_RED_Z_FIN"'
    end
    object CFMestreNUM_ULT_DOC_IMP: TIntegerField
      FieldName = 'NUM_ULT_DOC_IMP'
      Origin = '"EXP_CTB_CF_PROSOFT"."NUM_ULT_DOC_IMP"'
    end
    object CFMestreNUM_CONT_R_OO: TIntegerField
      FieldName = 'NUM_CONT_R_OO'
      Origin = '"EXP_CTB_CF_PROSOFT"."NUM_CONT_R_OO"'
    end
    object CFMestreTT_GERAL_INI: TFloatField
      FieldName = 'TT_GERAL_INI'
      Origin = '"EXP_CTB_CF_PROSOFT"."TT_GERAL_INI"'
    end
    object CFMestreTT_GERAL_FIN: TFloatField
      FieldName = 'TT_GERAL_FIN'
      Origin = '"EXP_CTB_CF_PROSOFT"."TT_GERAL_FIN"'
    end
    object CFMestreMOVIMENTO_DIA: TFloatField
      FieldName = 'MOVIMENTO_DIA'
      Origin = '"EXP_CTB_CF_PROSOFT"."MOVIMENTO_DIA"'
    end
    object CFMestreCANCELAMENTOS: TFloatField
      FieldName = 'CANCELAMENTOS'
      Origin = '"EXP_CTB_CF_PROSOFT"."CANCELAMENTOS"'
    end
    object CFMestreDESCCONTOS: TFloatField
      FieldName = 'DESCCONTOS'
      Origin = '"EXP_CTB_CF_PROSOFT"."DESCCONTOS"'
    end
    object CFMestreTT_OP_ISS: TFloatField
      FieldName = 'TT_OP_ISS'
      Origin = '"EXP_CTB_CF_PROSOFT"."TT_OP_ISS"'
    end
    object CFMestreACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Origin = '"EXP_CTB_CF_PROSOFT"."ACRESCIMO"'
    end
    object CFMestreVALOR_CONTABIL: TFloatField
      FieldName = 'VALOR_CONTABIL'
      Origin = '"EXP_CTB_CF_PROSOFT"."VALOR_CONTABIL"'
    end
    object CFMestreF_SUB_TRIB: TFloatField
      FieldName = 'F_SUB_TRIB'
      Origin = '"EXP_CTB_CF_PROSOFT"."F_SUB_TRIB"'
    end
    object CFMestreI_ISENTAS: TFloatField
      FieldName = 'I_ISENTAS'
      Origin = '"EXP_CTB_CF_PROSOFT"."I_ISENTAS"'
    end
    object CFMestreN_INCIDENCIA: TFloatField
      FieldName = 'N_INCIDENCIA'
      Origin = '"EXP_CTB_CF_PROSOFT"."N_INCIDENCIA"'
    end
    object CFMestreSUSPENSAO: TFloatField
      FieldName = 'SUSPENSAO'
      Origin = '"EXP_CTB_CF_PROSOFT"."SUSPENSAO"'
    end
    object CFMestreALIQ_ICMS_01: TFloatField
      FieldName = 'ALIQ_ICMS_01'
      Origin = '"EXP_CTB_CF_PROSOFT"."ALIQ_ICMS_01"'
    end
    object CFMestreDEBITO_ICMS_01: TFloatField
      FieldName = 'DEBITO_ICMS_01'
      Origin = '"EXP_CTB_CF_PROSOFT"."DEBITO_ICMS_01"'
    end
    object CFMestreBASE_ICMS_01: TFloatField
      FieldName = 'BASE_ICMS_01'
      Origin = '"EXP_CTB_CF_PROSOFT"."BASE_ICMS_01"'
    end
    object CFMestrePCT_REDUCAO_01: TFloatField
      FieldName = 'PCT_REDUCAO_01'
      Origin = '"EXP_CTB_CF_PROSOFT"."PCT_REDUCAO_01"'
    end
    object CFMestreVALOR_S_REDUCAO_01: TFloatField
      FieldName = 'VALOR_S_REDUCAO_01'
      Origin = '"EXP_CTB_CF_PROSOFT"."VALOR_S_REDUCAO_01"'
    end
    object CFMestreVALOR_C_REDUCAO_01: TFloatField
      FieldName = 'VALOR_C_REDUCAO_01'
      Origin = '"EXP_CTB_CF_PROSOFT"."VALOR_C_REDUCAO_01"'
    end
    object CFMestreVALOR_ICMS_01: TFloatField
      FieldName = 'VALOR_ICMS_01'
      Origin = '"EXP_CTB_CF_PROSOFT"."VALOR_ICMS_01"'
    end
    object CFMestreVALOR_OUTRAS_01: TFloatField
      FieldName = 'VALOR_OUTRAS_01'
      Origin = '"EXP_CTB_CF_PROSOFT"."VALOR_OUTRAS_01"'
    end
    object CFMestreVALOR_ISENTAS_01: TFloatField
      FieldName = 'VALOR_ISENTAS_01'
      Origin = '"EXP_CTB_CF_PROSOFT"."VALOR_ISENTAS_01"'
    end
  end
  object CFCabecalho: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select cast(vd.data_caixa as date) DT_EMISSAO_CF, coalesce(vd.n_' +
        'seq_ecf,1) n_seq_ecf, vd.n_serie_ecf,  vd.num_cupom, vd.total_no' +
        'ta, coalesce(vd.serie,1) serie from fat_vendas vd'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj = vd.cnpj and psa.cod' +
        'igo = vd.pessoa_fj)'
      
        'inner join est_natureza nat on (nat.cnpj = vd.cnpj and nat.codig' +
        'o = vd.natureza)'
      
        'where vd.cnpj = :cnpj and (vd.data_caixa between :data1 and :dat' +
        'a2)'
      
        'and coalesce(vd.num_cupom,0) > 0 and vd.enviada_cx = '#39'S'#39' and vd.' +
        'fechada = '#39'S'#39' and nat.es = '#39'S'#39)
    Left = 282
    Top = 3
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object CFCabecalhoDT_EMISSAO_CF: TDateField
      FieldName = 'DT_EMISSAO_CF'
      Origin = '"FAT_VENDAS"."DT_EMISSAO_CF"'
    end
    object CFCabecalhoNUM_CUPOM: TIntegerField
      FieldName = 'NUM_CUPOM'
      Origin = '"FAT_VENDAS"."NUM_CUPOM"'
    end
    object CFCabecalhoTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
      Origin = '"FAT_VENDAS"."TOTAL_NOTA"'
    end
    object CFCabecalhoSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"FAT_VENDAS"."SERIE"'
      FixedChar = True
      Size = 3
    end
    object CFCabecalhoN_SEQ_ECF: TIBStringField
      FieldName = 'N_SEQ_ECF'
      Origin = '"FAT_VENDAS"."N_SEQ_ECF"'
      FixedChar = True
      Size = 3
    end
    object CFCabecalhoN_SERIE_ECF: TIBStringField
      FieldName = 'N_SERIE_ECF'
      Origin = '"FAT_VENDAS"."N_SERIE_ECF"'
    end
  end
  object CFItens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select vd.dt_emissao_cf, coalesce(vd.n_seq_ecf,'#39'001'#39') n_seq_ecf,' +
        ' vd.num_cupom,'
      'case coalesce(prd.servico,'#39'N'#39')'
      ' when '#39'S'#39' then '#39'0'#39
      ' else '#39'1'#39
      'end tipo_item,'
      'prd.codigo produto,'
      'case vdi.cte'
      '  when 1 then '#39'010'#39
      '  when 2 then '#39'020'#39
      '  when 3 then '#39'040'#39
      '  when 5 then '#39'051'#39
      '  when 6 then '#39'060'#39
      '  when 7 then '#39'090'#39
      '  else  '#39'000'#39
      'end CST,'
      'VDI.quantidade,'
      'vdi.prc_unitario,'
      '(VDI.quantidade * vdi.prc_unitario) valortotal,'
      '(VDI.quantidade * vdi.prc_unitario) basecalculoicm,'
      '(((VDI.quantidade * vdi.prc_unitario) * 17)/100) icm,'
      'cast(17 as float) as aliquota_icms'
      '/*vdi.basecalculoicm,'
      'vdi.icm,'
      'vdi.aliquota_icms */'
      'from fat_vendas vd'
      
        'inner join fat_vendas_itens vdi on (vdi.cnpj = vd.cnpj and vd.co' +
        'digo = vdi.codigo)'
      
        'inner join est_produtos prd on (prd.cnpj = vdi.cnpj and prd.codi' +
        'go = vdi.produto)'
      'where vd.cnpj = :cnpj and vd.num_cupom = :num_cf')
    Left = 314
    Top = 3
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_cf'
        ParamType = ptUnknown
      end>
    object CFItensDT_EMISSAO_CF: TDateField
      FieldName = 'DT_EMISSAO_CF'
      Origin = '"FAT_VENDAS"."DT_EMISSAO_CF"'
    end
    object CFItensN_SEQ_ECF: TIBStringField
      FieldName = 'N_SEQ_ECF'
      Origin = '"FAT_VENDAS"."N_SEQ_ECF"'
      FixedChar = True
      Size = 3
    end
    object CFItensNUM_CUPOM: TIntegerField
      FieldName = 'NUM_CUPOM'
      Origin = '"FAT_VENDAS"."NUM_CUPOM"'
    end
    object CFItensTIPO_ITEM: TIBStringField
      FieldName = 'TIPO_ITEM'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object CFItensPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Size = 15
    end
    object CFItensCST: TIBStringField
      FieldName = 'CST'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object CFItensQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_VENDAS_ITENS"."QUANTIDADE"'
    end
    object CFItensPRC_UNITARIO: TFloatField
      FieldName = 'PRC_UNITARIO'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNITARIO"'
    end
    object CFItensVALORTOTAL: TFloatField
      FieldName = 'VALORTOTAL'
      ProviderFlags = []
    end
    object CFItensBASECALCULOICM: TFloatField
      FieldName = 'BASECALCULOICM'
      Origin = '"FAT_VENDAS_ITENS"."BASECALCULOICM"'
    end
    object CFItensICM: TFloatField
      FieldName = 'ICM'
      Origin = '"FAT_VENDAS_ITENS"."ICM"'
    end
    object CFItensALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
      Origin = '"FAT_VENDAS_ITENS"."ALIQUOTA_ICMS"'
    end
  end
  object NFEntrada: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select psa.cpf_cgc,'
      '       et.data_ent,'
      '       et.data_nf,'
      '       et.ndocto ndocto,'
      '       et.serie_nf,'
      '       et.vlr_produtos,'
      '       et.VLR_BC_ICM,'
      '       et.vlr_icm,'
      '       et.vlr_ipi,'
      '       et.perc_icm,'
      '       et.vlr_ipi base_ipi,'
      '       case et.frete_lf'
      '         when '#39'S'#39' then ('
      '                        coalesce(et.vlr_produtos,0) +'
      '                        coalesce(et.VLR_EMBALAGEM,0)  +'
      '                        coalesce(et.VLR_SEGURO,0)  +'
      '                        coalesce(et.VLR_FRETE,0)  +'
      '                        coalesce(et.VLR_IPI,0)  +'
      '                        coalesce(et.TAXAS,0)  -'
      '                        coalesce(et.VLR_DESCONTO,0) +'
      '                        coalesce(et.VLR_ICM_SUBS,0)'
      '                       )'
      '         else  ('
      '                        coalesce(et.vlr_produtos,0) +'
      '                        coalesce(et.VLR_EMBALAGEM,0)  +'
      '                        coalesce(et.VLR_SEGURO,0)  +'
      '                        coalesce(et.VLR_IPI,0)  +'
      '                        coalesce(et.TAXAS,0)  -'
      '                        coalesce(et.VLR_DESCONTO,0) +'
      '                        coalesce(et.VLR_ICM_SUBS,0)'
      '                       )'
      '       end VLR_TOTAL_NF,'
      '       '#39'0'#39' CONDICAO_PAGTO,'
      '       psa.rg_ie,'
      '       psa.uf,'
      '       et.natureza,'
      '       et.vlr_bc_icm base_icms_sub,'
      '       et.vlr_icm_subs,'
      '       et.vlr_frete,'
      '       et.vlr_seguro,'
      
        '       (coalesce(et.VLR_EMBALAGEM,0) + coalesce(et.TAXAS,0)) vlr' +
        '_outras_desp,'
      '       tp.codigo_fiscal MODELO,'
      '       tp.nome tp_nome'
      'from est_entradas et'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj = et.cnpj and psa.cod' +
        'igo = et.pessoa_fj)'
      
        'left join GLO_TIPOS_DOCTO tp on (tp.cnpj = et.cnpj and tp.sigla ' +
        '= et.TIPO_DOCTO)'
      'where et.cnpj = :cnpj and'
      '((coalesce(et.proc_qtd,'#39'N'#39') = '#39'S'#39')'
      'or (coalesce(et.proc_fin,'#39'N'#39') = '#39'S'#39')'
      'or (coalesce(et.proc_custo,'#39'N'#39') = '#39'S'#39'))'
      'and (et.data_ent between :data1 and :data2)'
      '/*and et.natureza in (1407,1556,1933,1253,1353)*/')
    Left = 281
    Top = 35
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object NFEntradaCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object NFEntradaDATA_ENT: TDateTimeField
      FieldName = 'DATA_ENT'
      Origin = '"EST_ENTRADAS"."DATA_ENT"'
    end
    object NFEntradaDATA_NF: TDateTimeField
      FieldName = 'DATA_NF'
      Origin = '"EST_ENTRADAS"."DATA_NF"'
    end
    object NFEntradaSERIE_NF: TIBStringField
      FieldName = 'SERIE_NF'
      Origin = '"EST_ENTRADAS"."SERIE_NF"'
      FixedChar = True
      Size = 3
    end
    object NFEntradaVLR_PRODUTOS: TFloatField
      FieldName = 'VLR_PRODUTOS'
      Origin = '"EST_ENTRADAS"."VLR_PRODUTOS"'
    end
    object NFEntradaVLR_BC_ICM: TFloatField
      FieldName = 'VLR_BC_ICM'
      Origin = '"EST_ENTRADAS"."VLR_BC_ICM"'
    end
    object NFEntradaVLR_ICM: TFloatField
      FieldName = 'VLR_ICM'
      Origin = '"EST_ENTRADAS"."VLR_ICM"'
    end
    object NFEntradaVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      Origin = '"EST_ENTRADAS"."VLR_IPI"'
    end
    object NFEntradaPERC_ICM: TFloatField
      FieldName = 'PERC_ICM'
      Origin = '"EST_ENTRADAS"."PERC_ICM"'
    end
    object NFEntradaBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
      Origin = '"EST_ENTRADAS"."VLR_IPI"'
    end
    object NFEntradaVLR_TOTAL_NF: TFloatField
      FieldName = 'VLR_TOTAL_NF'
      ProviderFlags = []
    end
    object NFEntradaCONDICAO_PAGTO: TIBStringField
      FieldName = 'CONDICAO_PAGTO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object NFEntradaRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"GLO_PESSOAS_FJ"."RG_IE"'
    end
    object NFEntradaUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PESSOAS_FJ"."UF"'
      FixedChar = True
      Size = 2
    end
    object NFEntradaNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"EST_ENTRADAS"."NATUREZA"'
    end
    object NFEntradaBASE_ICMS_SUB: TFloatField
      FieldName = 'BASE_ICMS_SUB'
      Origin = '"EST_ENTRADAS"."VLR_BC_ICM"'
    end
    object NFEntradaVLR_ICM_SUBS: TFloatField
      FieldName = 'VLR_ICM_SUBS'
      Origin = '"EST_ENTRADAS"."VLR_ICM_SUBS"'
    end
    object NFEntradaVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      Origin = '"EST_ENTRADAS"."VLR_FRETE"'
    end
    object NFEntradaVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
      Origin = '"EST_ENTRADAS"."VLR_SEGURO"'
    end
    object NFEntradaVLR_OUTRAS_DESP: TFloatField
      FieldName = 'VLR_OUTRAS_DESP'
      ProviderFlags = []
    end
    object NFEntradaNDOCTO: TIBStringField
      FieldName = 'NDOCTO'
      ProviderFlags = []
    end
    object NFEntradaTP_NOME: TIBStringField
      FieldName = 'TP_NOME'
      Origin = '"GLO_TIPOS_DOCTO"."NOME"'
      Size = 50
    end
    object NFEntradaMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"GLO_TIPOS_DOCTO"."CODIGO_FISCAL"'
      Size = 4
    end
  end
  object NFEntradasItens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select * from PCD_NFENT_EXPORTA_ITENS_PROSOFT(:cnpj,:data1,:data' +
        '2)'
      '/*where cfop in (1407,1556,1933,1253,1353)*/'
      '')
    Left = 313
    Top = 35
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object NFEntradasItensNUM_NF: TIBStringField
      FieldName = 'NUM_NF'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."NUM_NF"'
    end
    object NFEntradasItensSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."SERIE"'
      FixedChar = True
      Size = 10
    end
    object NFEntradasItensDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."DATA_ENTRADA"'
    end
    object NFEntradasItensICMS_DEBITADO: TFloatField
      FieldName = 'ICMS_DEBITADO'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."ICMS_DEBITADO"'
    end
    object NFEntradasItensALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."ALIQUOTA_ICMS"'
    end
    object NFEntradasItensCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."CFOP"'
    end
    object NFEntradasItensIMPOSTO_RETIDO_ICMS_SUB: TFloatField
      FieldName = 'IMPOSTO_RETIDO_ICMS_SUB'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."IMPOSTO_RETIDO_ICMS_SUB"'
    end
    object NFEntradasItensNUM_ITEM: TIntegerField
      FieldName = 'NUM_ITEM'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."NUM_ITEM"'
    end
    object NFEntradasItensCOD_PRODUTO: TIBStringField
      FieldName = 'COD_PRODUTO'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."COD_PRODUTO"'
      Size = 15
    end
    object NFEntradasItensUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."UNIDADE"'
      Size = 3
    end
    object NFEntradasItensSIT_TRIB: TIBStringField
      FieldName = 'SIT_TRIB'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."SIT_TRIB"'
      FixedChar = True
      Size = 3
    end
    object NFEntradasItensQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."QTDE"'
    end
    object NFEntradasItensPRECO_UNITARIO: TFloatField
      FieldName = 'PRECO_UNITARIO'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."PRECO_UNITARIO"'
    end
    object NFEntradasItensDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."DESCONTO"'
    end
    object NFEntradasItensVALOR_ITEM: TFloatField
      FieldName = 'VALOR_ITEM'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."VALOR_ITEM"'
    end
    object NFEntradasItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."BASE_ICMS"'
    end
    object NFEntradasItensBASE_ICMS_SUB: TFloatField
      FieldName = 'BASE_ICMS_SUB'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."BASE_ICMS_SUB"'
    end
    object NFEntradasItensBASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."BASE_IPI"'
    end
    object NFEntradasItensIND_TRIB_IPI: TIBStringField
      FieldName = 'IND_TRIB_IPI'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."IND_TRIB_IPI"'
      FixedChar = True
      Size = 1
    end
    object NFEntradasItensIND_TRIB_ICMS: TIBStringField
      FieldName = 'IND_TRIB_ICMS'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."IND_TRIB_ICMS"'
      FixedChar = True
      Size = 1
    end
    object NFEntradasItensPRODUTO_DESCRICAO: TIBStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."PRODUTO_DESCRICAO"'
      Size = 50
    end
    object NFEntradasItensPRODUTO_PCT_RED_BASE: TFloatField
      FieldName = 'PRODUTO_PCT_RED_BASE'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."PRODUTO_PCT_RED_BASE"'
    end
    object NFEntradasItensPRODUTO_ALIQ_IPI: TFloatField
      FieldName = 'PRODUTO_ALIQ_IPI'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."PRODUTO_ALIQ_IPI"'
    end
    object NFEntradasItensPRODUTO_ALIQ_ICMS: TFloatField
      FieldName = 'PRODUTO_ALIQ_ICMS'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."PRODUTO_ALIQ_ICMS"'
    end
    object NFEntradasItensPRODUTO_SIT_TRIB: TIBStringField
      FieldName = 'PRODUTO_SIT_TRIB'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."PRODUTO_SIT_TRIB"'
      FixedChar = True
      Size = 3
    end
    object NFEntradasItensPRODUTO_FANTASIA: TIBStringField
      FieldName = 'PRODUTO_FANTASIA'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."PRODUTO_FANTASIA"'
      Size = 50
    end
    object NFEntradasItensMOVIMENTA_MERCADORIA: TIBStringField
      FieldName = 'MOVIMENTA_MERCADORIA'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."MOVIMENTA_MERCADORIA"'
      FixedChar = True
      Size = 1
    end
    object NFEntradasItensINDICACAO_TRIBUTACAO: TIBStringField
      FieldName = 'INDICACAO_TRIBUTACAO'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."INDICACAO_TRIBUTACAO"'
      FixedChar = True
      Size = 1
    end
    object NFEntradasItensALIQUOTA_ISS: TFloatField
      FieldName = 'ALIQUOTA_ISS'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."ALIQUOTA_ISS"'
    end
    object NFEntradasItensALIQUOTA_IPI: TFloatField
      FieldName = 'ALIQUOTA_IPI'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."ALIQUOTA_IPI"'
    end
    object NFEntradasItensVALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."VALOR_IPI"'
    end
    object NFEntradasItensREDUCAO: TFloatField
      FieldName = 'REDUCAO'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."REDUCAO"'
    end
    object NFEntradasItensCNPJ_EMITENTE: TIBStringField
      FieldName = 'CNPJ_EMITENTE'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."CNPJ_EMITENTE"'
      Size = 15
    end
    object NFEntradasItensDESP_ACESSORIAS: TFloatField
      FieldName = 'DESP_ACESSORIAS'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."DESP_ACESSORIAS"'
    end
    object NFEntradasItensVLR_ICM_SUBS_ITEM: TFloatField
      FieldName = 'VLR_ICM_SUBS_ITEM'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_PROSOFT"."VLR_ICM_SUBS_ITEM"'
    end
  end
  object stgExportaProsoft: TcxPropertiesStore
    Components = <
      item
        Component = Fim
        Properties.Strings = (
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'ButtonGlyph'
          'Color'
          'Constraints'
          'Cursor'
          'Date'
          'DateButtons'
          'DateOnError'
          'DateValidation'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupAlignment'
          'PopupBorder'
          'PopupMenu'
          'ReadOnly'
          'SaveTime'
          'ShowHint'
          'Style'
          'StyleController'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'UseEditMask'
          'Visible'
          'Width')
      end
      item
        Component = GroupBox1
        Properties.Strings = (
          'Align'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DockSite'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'Left'
          'Name'
          'ParentBackground'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = Ini
        Properties.Strings = (
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'ButtonGlyph'
          'Color'
          'Constraints'
          'Cursor'
          'Date'
          'DateButtons'
          'DateOnError'
          'DateValidation'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupAlignment'
          'PopupBorder'
          'PopupMenu'
          'ReadOnly'
          'SaveTime'
          'ShowHint'
          'Style'
          'StyleController'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'UseEditMask'
          'Visible'
          'Width')
      end
      item
        Component = PathDestino
        Properties.Strings = (
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'CharCase'
          'Color'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'MaxLength'
          'Name'
          'OEMConvert'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PasswordChar'
          'PopupMenu'
          'ReadOnly'
          'ShowHint'
          'Style'
          'StyleController'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'Top'
          'Visible'
          'Width')
      end>
    StorageName = 'stgExportaProsoft'
    Left = 352
    Top = 72
  end
  object qryProdutos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select distinct prd.codigo, prd.nome, '#39'UN'#39' unidade,'#39'85044021'#39' co' +
        'd_class_fiscal, '#39'060'#39' sit_tributaria,'#39'11'#39' codigo_medida_padrao,'
      
        #39'N'#39' incentivo_fiscal, '#39'F'#39' sit_tributaria_cf, prd.nome nome_fanta' +
        'sia, '#39'S'#39' suj_sub_trib'
      '  from fat_vendas vd'
      
        'inner join fat_vendas_itens vdi on (vdi.cnpj = vd.cnpj and vdi.c' +
        'odigo = vd.codigo)'
      
        'inner join est_produtos prd on (prd.cnpj = vdi.cnpj and prd.codi' +
        'go = vdi.produto)'
      
        'where (vd.dt_emissao_nf  between :data1 and :data2) and vd.num_c' +
        'upom > 0'
      
        'and vd.enviada_cx = '#39'S'#39' and vd.fechada  = '#39'S'#39' and vd.cnpj = :cnp' +
        'j')
    Left = 250
    Top = 67
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryProdutosCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object qryProdutosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object qryProdutosUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object qryProdutosCOD_CLASS_FISCAL: TIBStringField
      FieldName = 'COD_CLASS_FISCAL'
      ProviderFlags = []
      FixedChar = True
      Size = 8
    end
    object qryProdutosSIT_TRIBUTARIA: TIBStringField
      FieldName = 'SIT_TRIBUTARIA'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object qryProdutosCODIGO_MEDIDA_PADRAO: TIBStringField
      FieldName = 'CODIGO_MEDIDA_PADRAO'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object qryProdutosINCENTIVO_FISCAL: TIBStringField
      FieldName = 'INCENTIVO_FISCAL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qryProdutosSIT_TRIBUTARIA_CF: TIBStringField
      FieldName = 'SIT_TRIBUTARIA_CF'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qryProdutosNOME_FANTASIA: TIBStringField
      FieldName = 'NOME_FANTASIA'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object qryProdutosSUJ_SUB_TRIB: TIBStringField
      FieldName = 'SUJ_SUB_TRIB'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
  end
end
