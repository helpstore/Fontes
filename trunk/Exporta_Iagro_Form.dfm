object FrmExportaIagro: TFrmExportaIagro
  Left = 309
  Top = 146
  Width = 467
  Height = 277
  BorderIcons = [biSystemMenu]
  Caption = 'Arquivo de Exporta'#231#227'o IAGRO'
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
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 459
    Height = 250
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
      Top = 246
      Width = 455
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 289
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 8
      Caption = 'Arquivo de Exporta'#231#227'o IAGRO'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 15
      Top = 143
      Caption = 'Caminho do Arquivo'
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
    object Label3: TcxLabel
      Left = 13
      Top = 48
      Caption = 'Data Inicial'
      ParentFont = False
      Transparent = True
    end
    object Panel2: TPanel
      Left = 2
      Top = 206
      Width = 455
      Height = 40
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 4
      object LblStatus: TcxLabel
        Left = 205
        Top = 13
        Caption = 'Status'
        ParentFont = False
        Transparent = True
        Visible = False
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
        TabOrder = 1
        OnClick = RzBitBtn2Click
        OnKeyDown = RzBitBtn2KeyDown
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
      object ANDA: TProgressBar
        Left = 248
        Top = 12
        Width = 193
        Height = 16
        TabOrder = 0
      end
      object BtnCriar: TcxButton
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
        OnKeyDown = BtnCriarKeyDown
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
      Left = 13
      Top = 158
      Width = 411
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 5
    end
    object BtnDir: TcxButton
      Left = 420
      Top = 158
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
      TabOrder = 3
      OnKeyDown = BtnDirKeyDown
    end
    object TipoRegistro: TRadioGroup
      Left = 15
      Top = 95
      Width = 431
      Height = 41
      Caption = 'Tipo de Movimento'
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        '&Normal'
        '&Retificadora'
        '&Sem Movimento')
      ParentFont = False
      TabOrder = 2
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
      TabOrder = 1
      OnKeyDown = FimKeyDown
      Date = -700000.000000000000000000
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
    object Ini: TdxDateEdit
      Left = 13
      Top = 64
      Width = 99
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      OnKeyDown = IniKeyDown
      Date = -700000.000000000000000000
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
  end
  object DIR: TOpenDialog
    DefaultExt = 'txt'
    Filter = '*.TXT'
    Left = 344
    Top = 8
  end
  object Actions: TActionList
    Left = 312
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
  end
  object Produtores: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select distinct psa.codigo cod_pessoa,'
      'coalesce(pp.ie,'#39#39') ie,'
      'psa.nome_razao,'
      'vd.propriedade cod_propriedade,'
      'pp.nome propriedade,'
      'case psa.pessoa'
      '  when '#39'J'#39' then '#39'CNPJ'#39
      '  else '#39'CPF'#39
      'end TIPO_CPF_CNPJ,'
      'psa.cpf_cgc cpf_cnpj,'
      'psa.fone,'
      #39'RUA'#39' TipoLogradouro,'
      'lgd.nome logradouro,'
      'psa.numero,'
      'psa.complemento complemento_psa,'
      #39'BAI'#39' TipoBairro,'
      'br.nome bairro,'
      'cdd.cod_iagro cod_iagro_psa,'
      'cdd.uf,'
      'psa.cep,'
      #39'ETR'#39' TipoLogradouroProp,'
      'lgd2.nome logradouro_prop,'
      'pp.numero numero_prop,'
      'pp.complemento complemento_prop,'
      #39'OUT'#39' TipoBairroProp,'
      'br2.nome Bairro_prop,'
      'pp.uf uf_prop,'
      'pp.cep cep_prop,'
      'cdd2.cod_iagro cod_iagro_prop,'
      'cdd2.nome cidade_prop,'
      'cdd.nome cidade_psa'
      ''
      'from fat_vendas vd'
      
        'inner join est_natureza nat on (nat.cnpj = vd.cnpj and vd.nature' +
        'za = nat.codigo)'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj = vd.cnpj and psa.cod' +
        'igo = vd.pessoa_fj)'
      
        'left join glo_logradouros lgd on (psa.cnpj = lgd.cnpj and psa.en' +
        'dereco = lgd.codigo)'
      
        'left join glo_bairros br on (psa.cnpj = br.cnpj and psa.bairro =' +
        ' br.codigo)'
      
        'left join glo_cidades cdd on (psa.cnpj = cdd.cnpj and psa.cidade' +
        ' = cdd.codigo)'
      ''
      
        'left join glo_propriedades pp on (pp.cnpj = vd.cnpj and pp.pesso' +
        'a_fj = vd.pessoa_fj and pp.propriedade = vd.propriedade)'
      
        'left join glo_logradouros lgd2 on (pp.cnpj = lgd2.cnpj and pp.en' +
        'dereco = lgd2.codigo)'
      
        'left join glo_bairros br2 on (pp.cnpj = br2.cnpj and pp.bairro =' +
        ' br2.codigo)'
      
        'left join glo_cidades cdd2 on (pp.cnpj = cdd2.cnpj and pp.cidade' +
        ' = cdd2.codigo)'
      ''
      
        'inner join fat_vendas_itens vdi on (vdi.cnpj = vd.cnpj and vdi.c' +
        'odigo = vd.codigo)'
      
        'inner join est_produtos prd on (prd.codigo = vdi.produto and prd' +
        '.cnpj = vdi.cnpj)'
      
        'inner join agr_defensivo_agricola def on (def.cnpj = prd.cnpj an' +
        'd def.cod_produto = prd.codigo)'
      
        'where vd.cnpj = :cnpj and (vd.data_caixa between :data1 and :dat' +
        'a2)'
      
        'and coalesce(vd.fechada,'#39'N'#39') = '#39'S'#39' and coalesce(vd.cancelada,'#39'N'#39 +
        ') = '#39'N'#39
      
        'and vd.propriedade is not null and nat.es = '#39'S'#39'  and psa.pessoa ' +
        '<> '#39'J'#39)
    Left = 312
    Top = 43
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
    object ProdutoresCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
    object ProdutoresIE: TIBStringField
      FieldName = 'IE'
      ProviderFlags = []
      Size = 15
    end
    object ProdutoresNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object ProdutoresPROPRIEDADE: TIBStringField
      FieldName = 'PROPRIEDADE'
      Origin = '"GLO_PROPRIEDADES"."NOME"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object ProdutoresTIPO_CPF_CNPJ: TIBStringField
      FieldName = 'TIPO_CPF_CNPJ'
      ProviderFlags = []
      FixedChar = True
      Size = 4
    end
    object ProdutoresCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object ProdutoresFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object ProdutoresTIPOLOGRADOURO: TIBStringField
      FieldName = 'TIPOLOGRADOURO'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object ProdutoresLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      Size = 50
    end
    object ProdutoresNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"GLO_PESSOAS_FJ"."NUMERO"'
      Size = 15
    end
    object ProdutoresCOMPLEMENTO_PSA: TIBStringField
      FieldName = 'COMPLEMENTO_PSA'
      Origin = '"GLO_PESSOAS_FJ"."COMPLEMENTO"'
      Size = 30
    end
    object ProdutoresTIPOBAIRRO: TIBStringField
      FieldName = 'TIPOBAIRRO'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object ProdutoresBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"GLO_BAIRROS"."NOME"'
      Size = 50
    end
    object ProdutoresCOD_IAGRO_PSA: TIntegerField
      FieldName = 'COD_IAGRO_PSA'
      Origin = '"GLO_CIDADES"."COD_IAGRO"'
    end
    object ProdutoresUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_CIDADES"."UF"'
      FixedChar = True
      Size = 2
    end
    object ProdutoresCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"GLO_PESSOAS_FJ"."CEP"'
      Size = 8
    end
    object ProdutoresTIPOLOGRADOUROPROP: TIBStringField
      FieldName = 'TIPOLOGRADOUROPROP'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object ProdutoresLOGRADOURO_PROP: TIBStringField
      FieldName = 'LOGRADOURO_PROP'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      Size = 50
    end
    object ProdutoresCOMPLEMENTO_PROP: TIBStringField
      FieldName = 'COMPLEMENTO_PROP'
      Origin = '"GLO_PROPRIEDADES"."COMPLEMENTO"'
      Size = 30
    end
    object ProdutoresTIPOBAIRROPROP: TIBStringField
      FieldName = 'TIPOBAIRROPROP'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object ProdutoresBAIRRO_PROP: TIBStringField
      FieldName = 'BAIRRO_PROP'
      Origin = '"GLO_BAIRROS"."NOME"'
      Size = 50
    end
    object ProdutoresUF_PROP: TIBStringField
      FieldName = 'UF_PROP'
      Origin = '"GLO_PROPRIEDADES"."UF"'
      FixedChar = True
      Size = 2
    end
    object ProdutoresCEP_PROP: TIBStringField
      FieldName = 'CEP_PROP'
      Origin = '"GLO_PROPRIEDADES"."CEP"'
      Size = 8
    end
    object ProdutoresCOD_IAGRO_PROP: TIntegerField
      FieldName = 'COD_IAGRO_PROP'
      Origin = '"GLO_CIDADES"."COD_IAGRO"'
    end
    object ProdutoresCIDADE_PROP: TIBStringField
      FieldName = 'CIDADE_PROP'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object ProdutoresCIDADE_PSA: TIBStringField
      FieldName = 'CIDADE_PSA'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object ProdutoresNUMERO_PROP: TIBStringField
      FieldName = 'NUMERO_PROP'
      Origin = '"GLO_PROPRIEDADES"."NUMERO"'
      Size = 15
    end
    object ProdutoresCOD_PROPRIEDADE: TIntegerField
      FieldName = 'COD_PROPRIEDADE'
      Origin = '"FAT_VENDAS"."PROPRIEDADE"'
    end
  end
  object Lancamentos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select distinct vd.data_caixa data, vd.num_nf, vdi.quantidade, p' +
        'rd.volume,'
      'case prd.unidade'
      '  when '#39'L'#39' then '#39'1'#39
      '  when '#39'KG'#39' then '#39'2'#39
      '  else '#39'1'#39
      'end undmed,'
      'case mat.descricao'
      ' when '#39'METAL'#39' then '#39'1'#39
      ' when '#39'PLASTICO'#39' then '#39'2'#39
      ' when '#39'VIDRO'#39' then '#39'3'#39
      ' when '#39'NAO LAVAVEL'#39' then '#39'4'#39
      ' else '#39'2'#39
      'end matembalagem'
      'from fat_vendas vd'
      
        'inner join fat_vendas_itens vdi on (vdi.cnpj = vd.cnpj and vdi.c' +
        'odigo = vd.codigo)'
      
        'inner join est_natureza nat on (nat.cnpj = vd.cnpj and vd.nature' +
        'za = nat.codigo)'
      
        'inner join est_produtos prd on (prd.codigo = vdi.produto and prd' +
        '.cnpj = vdi.cnpj)'
      
        'inner join agr_defensivo_agricola def on (def.cnpj = prd.cnpj an' +
        'd def.cod_produto = prd.codigo)'
      
        'inner join agr_mat_embalagem mat on (def.cnpj = mat.cnpj and def' +
        '.cod_mat_embalagem = mat.codigo)'
      
        'where vd.cnpj = :cnpj and (vd.data_caixa between :data1 and :dat' +
        'a2)'
      
        'and coalesce(vd.fechada,'#39'N'#39') = '#39'S'#39' and coalesce(vd.cancelada,'#39'N'#39 +
        ') = '#39'N'#39' and coalesce(vd.es,'#39'E'#39') = '#39'S'#39
      'and vd.pessoa_fj = :pessoa_fj and vd.propriedade = :propriedade')
    Left = 352
    Top = 43
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
      end
      item
        DataType = ftUnknown
        Name = 'pessoa_fj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'propriedade'
        ParamType = ptUnknown
      end>
    object LancamentosDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"FAT_VENDAS"."DATA_CAIXA"'
    end
    object LancamentosNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDAS"."NUM_NF"'
    end
    object LancamentosQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_VENDAS_ITENS"."QUANTIDADE"'
    end
    object LancamentosVOLUME: TFloatField
      FieldName = 'VOLUME'
      Origin = '"EST_PRODUTOS"."VOLUME"'
      DisplayFormat = '###,##0.00'
    end
    object LancamentosUNDMED: TIBStringField
      FieldName = 'UNDMED'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object LancamentosMATEMBALAGEM: TIBStringField
      FieldName = 'MATEMBALAGEM'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
  end
end
