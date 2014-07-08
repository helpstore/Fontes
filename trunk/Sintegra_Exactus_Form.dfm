object FrmExactusSintegra: TFrmExactusSintegra
  Left = 303
  Top = 139
  Width = 477
  Height = 348
  BorderIcons = [biSystemMenu]
  Caption = 'Exactus'
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
      Caption = 'Exactus'
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
        Left = 176
        Top = 16
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
        Left = 8
        Top = 64
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
        Left = 8
        Top = 88
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
      object rdProduto: TRadioButton
        Left = 176
        Top = 40
        Width = 73
        Height = 17
        Caption = 'Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
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
      'select distinct * from (  select psa.codigo'
      '                       ,psa.nome_razao'
      '                       ,psa.fantasia'
      '                       ,psa.cpf_cgc'
      '                       ,psa.rg_ie'
      '                       ,psa.uf'
      '                       ,cdd.cod_ibge'
      '                       ,psa.insc_munic'
      '                       ,lgd.nome logradouro'
      '                       ,psa.numero'
      '                       ,psa.complemento'
      '                       ,br.nome bairro'
      '                       ,psa.cep'
      '                       ,psa.fone'
      '                       ,psa.email'
      '                       ,(select count(*) from glo_clientes cli'
      
        '                        where cli.cnpj = psa.cnpj and cli.pessoa' +
        '_fj = psa.codigo) cliente,'
      
        '                        (select count(*) from glo_fornecedores f' +
        'orn'
      
        '                        where forn.cnpj = psa.cnpj and forn.pess' +
        'oa_fj = psa.codigo) fornecedor'
      '                       from fat_vendas vd'
      
        '                       inner join glo_pessoas_fj psa on (psa.cnp' +
        'j = vd.cnpj and psa.codigo = vd.pessoa_fj)'
      
        '                       left join glo_cidades cdd on (cdd.cnpj = ' +
        'psa.cnpj and cdd.codigo = psa.cidade)'
      
        '                       left join glo_logradouros lgd on (lgd.cnp' +
        'j = psa.cnpj and lgd.codigo = psa.endereco)'
      
        '                       left join glo_bairros br on (br.cnpj = ps' +
        'a.cnpj and br.codigo = psa.bairro)'
      
        '                       where (vd.data_caixa between :data1 and :' +
        'data2)'
      
        '                       and vd.enviada_cx = '#39'S'#39' and vd.fechada  =' +
        ' '#39'S'#39' and vd.cnpj = :cnpj'
      '                      union'
      '                      select psa.codigo'
      '                       ,psa.nome_razao'
      '                       ,psa.fantasia'
      '                       ,psa.cpf_cgc'
      '                       ,psa.rg_ie'
      '                       ,psa.uf'
      '                       ,cdd.cod_ibge'
      '                       ,psa.insc_munic'
      '                       ,lgd.nome logradouro'
      '                       ,psa.numero'
      '                       ,psa.complemento'
      '                       ,br.nome bairro'
      '                       ,psa.cep'
      '                       ,psa.fone'
      '                       ,psa.email'
      '                       ,(select count(*) from glo_clientes cli'
      
        '                        where cli.cnpj = psa.cnpj and cli.pessoa' +
        '_fj = psa.codigo) cliente,'
      
        '                        (select count(*) from glo_fornecedores f' +
        'orn'
      
        '                        where forn.cnpj = psa.cnpj and forn.pess' +
        'oa_fj = psa.codigo) fornecedor'
      ''
      '                      from est_entradas et'
      
        '                      inner join glo_pessoas_fj psa on (psa.cnpj' +
        ' = et.cnpj and psa.codigo = et.pessoa_fj)'
      
        '                      left join glo_cidades cdd on (cdd.cnpj = p' +
        'sa.cnpj and cdd.codigo = psa.cidade)'
      
        '                      left join glo_logradouros lgd on (lgd.cnpj' +
        ' = psa.cnpj and lgd.codigo = psa.endereco)'
      
        '                      left join glo_bairros br on (br.cnpj = psa' +
        '.cnpj and br.codigo = psa.bairro)'
      
        '                      where (et.data_ent between :data1 and :dat' +
        'a2)'
      
        '                      and ((et.proc_custo = '#39'S'#39') or (et.proc_fin' +
        ' = '#39'S'#39') or (et.proc_qtd = '#39'S'#39')) and et.cnpj = :cnpj'
      '                   )')
    Left = 282
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
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object ParceirosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = []
    end
    object ParceirosNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      ProviderFlags = []
      Size = 50
    end
    object ParceirosFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 50
    end
    object ParceirosCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      ProviderFlags = []
      Size = 15
    end
    object ParceirosRG_IE: TIBStringField
      FieldName = 'RG_IE'
      ProviderFlags = []
    end
    object ParceirosUF: TIBStringField
      FieldName = 'UF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object ParceirosCOD_IBGE: TIBStringField
      FieldName = 'COD_IBGE'
      ProviderFlags = []
      Size = 7
    end
    object ParceirosINSC_MUNIC: TIBStringField
      FieldName = 'INSC_MUNIC'
      ProviderFlags = []
      Size = 15
    end
    object ParceirosLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
      ProviderFlags = []
      Size = 50
    end
    object ParceirosNUMERO: TIBStringField
      FieldName = 'NUMERO'
      ProviderFlags = []
      Size = 15
    end
    object ParceirosCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = []
      Size = 30
    end
    object ParceirosBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      ProviderFlags = []
      Size = 50
    end
    object ParceirosCEP: TIBStringField
      FieldName = 'CEP'
      ProviderFlags = []
      Size = 8
    end
    object ParceirosFONE: TIBStringField
      FieldName = 'FONE'
      ProviderFlags = []
    end
    object ParceirosEMAIL: TIBStringField
      FieldName = 'EMAIL'
      ProviderFlags = []
      Size = 80
    end
    object ParceirosCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      ProviderFlags = []
    end
    object ParceirosFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      ProviderFlags = []
    end
  end
  object NFSaida: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from PCD_NFS_EXPORTA_EXACTUS(:cnpj,:data1,:data2)')
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
  end
  object NFSaidaItens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select * from PCD_NFS_EXPORTA_ITENS_EXACTUS (:cnpj,:data1,:data2' +
        ')')
    Left = 207
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
      Origin = '"PCD_NFS_EXPORTA_ITENS_EXACTUS"."NUM_NF"'
    end
    object NFSaidaItensSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"PCD_NFS_EXPORTA_ITENS_EXACTUS"."SERIE"'
      FixedChar = True
      Size = 10
    end
    object NFSaidaItensDATA_SAIDA: TDateField
      FieldName = 'DATA_SAIDA'
      Origin = '"PCD_NFS_EXPORTA_ITENS_EXACTUS"."DATA_SAIDA"'
    end
    object NFSaidaItensICMS_DEBITADO: TFloatField
      FieldName = 'ICMS_DEBITADO'
      Origin = '"PCD_NFS_EXPORTA_ITENS_EXACTUS"."ICMS_DEBITADO"'
    end
    object NFSaidaItensALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
      Origin = '"PCD_NFS_EXPORTA_ITENS_EXACTUS"."ALIQUOTA_ICMS"'
    end
    object NFSaidaItensCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"PCD_NFS_EXPORTA_ITENS_EXACTUS"."CFOP"'
    end
    object NFSaidaItensIMPOSTO_RETIDO_ICMS_SUB: TFloatField
      FieldName = 'IMPOSTO_RETIDO_ICMS_SUB'
      Origin = '"PCD_NFS_EXPORTA_ITENS_EXACTUS"."IMPOSTO_RETIDO_ICMS_SUB"'
    end
    object NFSaidaItensNUM_ITEM: TIntegerField
      FieldName = 'NUM_ITEM'
      Origin = '"PCD_NFS_EXPORTA_ITENS_EXACTUS"."NUM_ITEM"'
    end
    object NFSaidaItensCOD_PRODUTO: TIBStringField
      FieldName = 'COD_PRODUTO'
      Origin = '"PCD_NFS_EXPORTA_ITENS_EXACTUS"."COD_PRODUTO"'
      Size = 15
    end
    object NFSaidaItensUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PCD_NFS_EXPORTA_ITENS_EXACTUS"."UNIDADE"'
      Size = 3
    end
    object NFSaidaItensSIT_TRIB: TIBStringField
      FieldName = 'SIT_TRIB'
      Origin = '"PCD_NFS_EXPORTA_ITENS_EXACTUS"."SIT_TRIB"'
      FixedChar = True
      Size = 3
    end
    object NFSaidaItensQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = '"PCD_NFS_EXPORTA_ITENS_EXACTUS"."QTDE"'
    end
    object NFSaidaItensPRECO_UNITARIO: TFloatField
      FieldName = 'PRECO_UNITARIO'
      Origin = '"PCD_NFS_EXPORTA_ITENS_EXACTUS"."PRECO_UNITARIO"'
    end
    object NFSaidaItensDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = '"PCD_NFS_EXPORTA_ITENS_EXACTUS"."DESCONTO"'
    end
    object NFSaidaItensVALOR_ITEM: TFloatField
      FieldName = 'VALOR_ITEM'
      Origin = '"PCD_NFS_EXPORTA_ITENS_EXACTUS"."VALOR_ITEM"'
    end
    object NFSaidaItensVLR_OUTROS: TFloatField
      FieldName = 'VLR_OUTROS'
      Origin = '"PCD_NFS_EXPORTA_ITENS_EXACTUS"."VLR_OUTROS"'
    end
    object NFSaidaItensBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      Origin = '"PCD_NFS_EXPORTA_ITENS_EXACTUS"."BASE_ICMS"'
    end
    object NFSaidaItensBASE_ICMS_SUB: TFloatField
      FieldName = 'BASE_ICMS_SUB'
      Origin = '"PCD_NFS_EXPORTA_ITENS_EXACTUS"."BASE_ICMS_SUB"'
    end
    object NFSaidaItensPRODUTO_DESCRICAO: TIBStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = '"PCD_NFS_EXPORTA_ITENS_EXACTUS"."PRODUTO_DESCRICAO"'
      Size = 50
    end
    object NFSaidaItensPRODUTO_SIT_TRIB: TIBStringField
      FieldName = 'PRODUTO_SIT_TRIB'
      Origin = '"PCD_NFS_EXPORTA_ITENS_EXACTUS"."PRODUTO_SIT_TRIB"'
      FixedChar = True
      Size = 3
    end
    object NFSaidaItensPRODUTO_FANTASIA: TIBStringField
      FieldName = 'PRODUTO_FANTASIA'
      Origin = '"PCD_NFS_EXPORTA_ITENS_EXACTUS"."PRODUTO_FANTASIA"'
      Size = 50
    end
    object NFSaidaItensMOVIMENTA_MERCADORIA: TIBStringField
      FieldName = 'MOVIMENTA_MERCADORIA'
      Origin = '"PCD_NFS_EXPORTA_ITENS_EXACTUS"."MOVIMENTA_MERCADORIA"'
      FixedChar = True
      Size = 1
    end
    object NFSaidaItensINDICACAO_TRIBUTACAO: TIBStringField
      FieldName = 'INDICACAO_TRIBUTACAO'
      Origin = '"PCD_NFS_EXPORTA_ITENS_EXACTUS"."INDICACAO_TRIBUTACAO"'
      FixedChar = True
      Size = 1
    end
  end
  object NFEntrada: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select psa.cpf_cgc,'
      '       psa.codigo psa_codigo,'
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
        '_outras_desp'
      'from est_entradas et'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj = et.cnpj and psa.cod' +
        'igo = et.pessoa_fj)'
      'where et.cnpj = :cnpj and'
      '((coalesce(et.proc_qtd,'#39'N'#39') = '#39'S'#39')'
      'or (coalesce(et.proc_fin,'#39'N'#39') = '#39'S'#39')'
      'or (coalesce(et.proc_custo,'#39'N'#39') = '#39'S'#39'))'
      'and (et.data_nf between :data1 and :data2)')
    Left = 273
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
    object NFEntradaPSA_CODIGO: TIntegerField
      FieldName = 'PSA_CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
    end
  end
  object NFEntradasItens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select * from PCD_NFENT_EXPORTA_ITENS_EXACTUS(:cnpj,:data1,:data' +
        '2)')
    Left = 303
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
    object NFEntradasItensPSA_CODIGO: TIntegerField
      FieldName = 'PSA_CODIGO'
      Origin = '"PCD_NFENT_EXPORTA_ITENS_EXACTUS"."PSA_CODIGO"'
    end
  end
  object stgSintegraExactus: TcxPropertiesStore
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
    StorageName = 'stgSintegraExactus'
    Left = 352
    Top = 72
  end
  object qryProdutos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select distinct * from (select prd.codigo , prd.nome,'
      '                         prd.unidade ,'
      '                         '#39'0'#39' CST_ORIG,'
      '                         case prd.cte'
      '                           when 1 then '#39'10'#39
      '                           when 2 then '#39'20'#39
      '                           when 3 then '#39'40'#39
      '                           when 5 then '#39'51'#39
      '                           when 6 then '#39'60'#39
      '                           when 7 then '#39'90'#39
      '                         end CST_TRIB,'
      '                         '#39'17.00'#39' ALIQ_ICM'
      '                       from fat_vendas vd'
      
        '                       inner join fat_vendas_itens vdi on (vdi.c' +
        'npj = vd.cnpj and vdi.codigo = vd.codigo)'
      
        '                       inner join est_produtos prd on (prd.cnpj ' +
        '= vdi.cnpj and prd.codigo = vdi.produto)'
      
        '                       where (vd.data_caixa between :data1 and :' +
        'data2)'
      
        '                       and vd.enviada_cx = '#39'S'#39' and vd.fechada  =' +
        ' '#39'S'#39' and vd.cnpj = :cnpj'
      '                       union'
      '                       select prd.codigo , prd.nome,'
      '                         prd.unidade ,'
      '                         '#39'0'#39' CST_ORIG,'
      '                         case prd.cte'
      '                           when 1 then '#39'10'#39
      '                           when 2 then '#39'20'#39
      '                           when 3 then '#39'40'#39
      '                           when 5 then '#39'51'#39
      '                           when 6 then '#39'60'#39
      '                           when 7 then '#39'90'#39
      '                         end CST_TRIB,'
      '                         '#39'17.00'#39' ALIQ_ICM'
      '                       from est_entradas et'
      
        '                       inner join est_entradas_itens eti on (eti' +
        '.cnpj = et.cnpj and eti.ndocto = et.ndocto)'
      
        '                       inner join est_produtos prd on (prd.cnpj ' +
        '= eti.cnpj and prd.codigo = eti.produto)'
      
        '                       where (et.data_ent between :data1 and :da' +
        'ta2)'
      
        '                       and ((et.proc_custo = '#39'S'#39') or (et.proc_fi' +
        'n = '#39'S'#39') or (et.proc_qtd = '#39'S'#39')) and et.cnpj = :cnpj'
      '                     )')
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
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryProdutosCODIGO: TIBStringField
      FieldName = 'CODIGO'
      ProviderFlags = []
      Size = 15
    end
    object qryProdutosNOME: TIBStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object qryProdutosUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      ProviderFlags = []
      FixedChar = True
      Size = 4
    end
    object qryProdutosCST_ORIG: TIBStringField
      FieldName = 'CST_ORIG'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object qryProdutosCST_TRIB: TIBStringField
      FieldName = 'CST_TRIB'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object qryProdutosALIQ_ICM: TIBStringField
      FieldName = 'ALIQ_ICM'
      ProviderFlags = []
      FixedChar = True
      Size = 5
    end
  end
end
