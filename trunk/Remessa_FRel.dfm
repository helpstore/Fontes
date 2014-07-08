object FRemessa: TFRemessa
  Left = 351
  Top = 262
  BorderStyle = bsDialog
  Caption = 'Gerar remessa'
  ClientHeight = 206
  ClientWidth = 322
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 322
    Height = 166
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 0
    object lblNomeArquivoRemessa: TcxLabel
      Left = 8
      Top = 72
      Caption = 'Nome do arquivo remessa'
    end
    object GroupBox1: TGroupBox
      Left = 3
      Top = 3
      Width = 315
      Height = 161
      Caption = 'Todos os T'#237'tulos do Per'#237'odo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label1: TcxLabel
        Left = 129
        Top = 23
        Caption = 'Data Final'
        ParentFont = False
      end
      object Label2: TcxLabel
        Left = 13
        Top = 23
        Caption = 'Data Inicial'
        ParentFont = False
      end
      object edDtFinal: TdxDateEdit
        Left = 127
        Top = 40
        Width = 98
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 1
        OnEnter = edDtInicialEnter
        OnExit = edDtInicialExit
        OnKeyDown = cmbPessoaKeyDown
        Date = -700000.000000000000000000
        UseEditMask = True
        StoredValues = 4
      end
      object edDtInicial: TdxDateEdit
        Left = 11
        Top = 40
        Width = 98
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 0
        OnEnter = edDtInicialEnter
        OnExit = edDtInicialExit
        OnKeyDown = cmbPessoaKeyDown
        Date = -700000.000000000000000000
        UseEditMask = True
        StoredValues = 4
      end
      object CheckBoxList: TCheckBox
        Left = 12
        Top = 118
        Width = 261
        Height = 17
        Caption = 'Imprimir Listagem dos T'#237'tulos Remetidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object CheckBoxUpd: TCheckBox
        Left = 12
        Top = 135
        Width = 261
        Height = 17
        Caption = 'Marcar T'#237'tulos como Remetidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 166
    Width = 322
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object LblStatus: TcxLabel
      Left = 205
      Top = 13
      Caption = 'Status'
      ParentFont = False
      Visible = False
    end
    object RzBitBtn1: TcxButton
      Left = 9
      Top = 7
      Width = 90
      Height = 28
      Cursor = crHandPoint
      Action = ActPreview
      Caption = '&Gerar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF908E8E908E8E908E8E908E8E908E
        8E908E8E908E8E908E8EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8F8E8D908E8EBBB9B9D7D6D6
        D3D3D3CDCDCFCACACAD3CBCBD3CBCBB8B3B3908E8E908E8EFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF908E8E908E8EB9B7B7E6
        E5E5CDCDCFAAA9AA918F8D89857D8C877B8E8885A29A99C6B9BADECCCCB6AAAA
        908E8E908E8EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF908E8E908E
        8EEBEAEBDADADB9696968C897DAEA993CAC4ADBAB8BDA6A9BDCDC6B0B3AA948B
        83748B7C79CFBCBDE5CCCB908E8E908E8EFF00FFFF00FFFF00FFFF00FFFF00FF
        908E8E908E8EF3F2F3D5D4D584827EAEA993F6F1DAFFFFF4FFFFF2AAB5F15774
        F5FFFFF8FFFFFFFCFAEBBAB5A16E675FBBA5A5F0D0D0908E8E908E8EFF00FFFF
        00FFFF00FFFF00FF908E8EF5F4F4D4D3D44D7B4A509248FFFFF0F8EAD6F6D7B4
        F3C99BEABD94EABD94F4CCA2F9E4C8FFFDF6FFFFFFDEDBCB7A7164BBA5A5EECC
        CB908E8EFF00FFFF00FFFF00FF908E8EC2C0C0F2F1F26985670C85180C85188C
        B273F7DBACF4D1A1F3CA98F3C38EF2BB83EFBA83F3CC99FBEBC4FFFCEDFFFFFF
        DEDBCB6B6158D8BABABEABAB908E8EFF00FFFF00FF908E8EFEFDFD90A7910C85
        184ED27759E2890C85189CBF7EFDF0C6FAE9BEF8DDB0F4D1A1F1C491F2C997F6
        D9ABFAE6BBFBF4E2FFFFFFB3AA94887673F5CECE908E8EFF00FF908E8ECFCECE
        C4D8C50C85183DC25F57E1855BE48C50D67B0C8518B6D59BFFFDD7FDF6CEFAE9
        BEF5D4A8F2C998F2C997F3CC99F4D1A1FDF6EBFBF4E27A7164DBB9B9CEB5B490
        8E8E908E8EF9F8F80C851843D26943D26949D47153DC7F5DE68E4ACE730C8518
        D7E8B9FFFFDCFFFFDAFDF0C6F6D9ABF2C794EFBE89EFBA83F6D7B4FFFFFFA695
        8BA6958BF7CFCE908E8E908E8E0C85182FC24B2FC24B35C3543ECB6147D36F52
        DB7E5DE68D40BF620C8518D2DAB4CDCAB0FFFDD7FFFCD0FFE0AEFCCA93F2BB83
        F1C497FFFFF7C2B9A78B7C79F7CECD908E8E0C85180C85180C85180C851829B9
        4232C2513FCD6230B14C0C85180C85180C85180C851861686376776CA2A28F9E
        937B9D876DCDA479F3C38EAAB5F1A6A9BD8A786FF1C9C8908E8E908E8EFFFFFF
        719B6E187C1E1CAC2F28B94134C4521992289AC387DEECC0BFCEA46375647F82
        82282829363636343636343536CDA479F5C4925774F57987BB928173F1C9C890
        8E8E908E8EFFFEFEC6C6C6488C410C85181DB23229BA42148B20CCE1C4FFFFDC
        FFFFDABFBFA782827631313276776CEBEACAEDD8AEEDC290F2C794FDF6EBBDBA
        A5958583F6CDCC908E8E908E8EF9F7F8DADADB739A650C851813AA221DB13111
        8D1EAED0B0FFFFF7FFFFDFFFFFDFFFFFE4B9B9A33131327A786BFAE9BEFAD19C
        F5D4A8FFFFEEA9A490AE9697F7CECD908E8E908E8ECFCDCEF9F7F89EA5910C85
        180DA11A12A92110951D5DA160FFFFFFFFFFF8FFFFE6FFFFDAFFFFE2C0C0A92E
        30326B6559ECCC9EFCEBCCF8F4D98A857BDAB9BACEB4B4908E8EFF00FF908E8E
        FDFCFCC9C9C94A8B400B91150EA71C0FA21C0C8518C9E0CAFFFFFFFFFFFFFFFF
        F4FFFFE4FFFFE6D0CFB5353534716C66FFFFE8BDBAA5958583F7CFCE908E8EFF
        00FFFF00FF908E8EC4C2C2EFF0F09FA995127D170EA01A0FA81C0D97180C8518
        B5D4B7FFFFFFFFFFFFFFFFFFFFFFF8FFFFEACDCAB0CAC8BAEBEACA87857FD8BA
        BABFABAB908E8EFF00FFFF00FFFF00FF908E8EF5F4F4DBDCDD74976C087B0E0D
        9D190FA91D0E9D190C851847984B88BB8CB6D5B8D3E6D4DAEAD5E6F1D4F2F3D2
        96948AC6AEAFEECCCB908E8EFF00FFFF00FFFF00FFFF00FF908E8E908E8EEFF0
        F0D6D7D9829E780C85180C85180C9A180EA01B109B1D108E1B0C85180C85180C
        8518609C579D9992BCAAABEDCECD908E8E908E8EFF00FFFF00FFFF00FFFF00FF
        FF00FF908E8E908E8EEBEAEBDEDEDFAEB5AC7297670C85180C85180C85180C85
        180C851873A46C8CA181A3A09AD5C0C1E5CCCB908E8E908E8EFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF908E8E908E8EB9B8B9E1E1E1D0D2D3BEBCBB
        B8B4B0BBB5ADBDB5ACB4AFAAB7B0AECABDBEDECCCCB6AAAA908E8E908E8EFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8F8F8F90
        8E8EB7B6B6D1D1D1CECECFC8C9CAC6C6C6CEC6C6CEC6C6B5B0B0908E8E908E8E
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF908E8E908E8E908E8E908E8E908E8E908E8E908E8E90
        8E8EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object RzBitBtn2: TcxButton
      Left = 100
      Top = 7
      Width = 72
      Height = 28
      Cursor = crHandPoint
      Action = ActFechar
      Cancel = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
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
      Left = 176
      Top = 12
      Width = 133
      Height = 16
      TabOrder = 2
      Visible = False
    end
  end
  object Actions: TActionList
    Left = 276
    Top = 20
    object ActPreview: TAction
      Tag = 1
      Caption = '&Imprimir'
      OnExecute = ActPreviewExecute
    end
    object ActFechar: TAction
      Caption = '&Fechar'
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActBuscarProd: TAction
      Caption = '&Buscar F4'
      ShortCut = 115
    end
  end
  object ppTitulos: TppDBPipeline
    DataSource = DmApp.dsTitulos
    UserName = 'Titulos'
    Left = 231
    Top = 71
    object ppTitulosppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'Total'
      FieldName = 'Total'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 0
    end
    object ppTitulosppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'Juros_Calculadors'
      FieldName = 'Juros_Calculadors'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object ppTitulosppField3: TppField
      FieldAlias = 'SAC_NOME'
      FieldName = 'SAC_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppTitulosppField4: TppField
      FieldAlias = 'SAC_RUA'
      FieldName = 'SAC_RUA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object ppTitulosppField5: TppField
      FieldAlias = 'BLT_CONVENIO'
      FieldName = 'BLT_CONVENIO'
      FieldLength = 10
      DisplayWidth = 10
      Position = 4
    end
    object ppTitulosppField6: TppField
      FieldAlias = 'SAC_COMPLEMENTO'
      FieldName = 'SAC_COMPLEMENTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object ppTitulosppField7: TppField
      FieldAlias = 'SAC_NUM'
      FieldName = 'SAC_NUM'
      FieldLength = 15
      DisplayWidth = 15
      Position = 6
    end
    object ppTitulosppField8: TppField
      FieldAlias = 'SAC_EMAIL'
      FieldName = 'SAC_EMAIL'
      FieldLength = 80
      DisplayWidth = 80
      Position = 7
    end
    object ppTitulosppField9: TppField
      FieldAlias = 'SAC_CEP'
      FieldName = 'SAC_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 8
    end
    object ppTitulosppField10: TppField
      FieldAlias = 'SAC_CIDADE'
      FieldName = 'SAC_CIDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object ppTitulosppField11: TppField
      FieldAlias = 'SAC_UF'
      FieldName = 'SAC_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 10
    end
    object ppTitulosppField12: TppField
      FieldAlias = 'SAC_BAIRRO'
      FieldName = 'SAC_BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 11
    end
    object ppTitulosppField13: TppField
      FieldAlias = 'SAC_PESSOA'
      FieldName = 'SAC_PESSOA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 12
    end
    object ppTitulosppField14: TppField
      FieldAlias = 'SAC_CPF_CGC'
      FieldName = 'SAC_CPF_CGC'
      FieldLength = 14
      DisplayWidth = 14
      Position = 13
    end
    object ppTitulosppField15: TppField
      FieldAlias = 'BLT_AGENCIA'
      FieldName = 'BLT_AGENCIA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 14
    end
    object ppTitulosppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'CED_CODIGOCED'
      FieldName = 'CED_CODIGOCED'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppTitulosppField17: TppField
      FieldAlias = 'CED_DIG_CODIGOCED'
      FieldName = 'CED_DIG_CODIGOCED'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object ppTitulosppField18: TppField
      FieldAlias = 'BLT_CARTEIRA'
      FieldName = 'BLT_CARTEIRA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 17
    end
    object ppTitulosppField19: TppField
      FieldAlias = 'BLT_INSTRUCAO'
      FieldName = 'BLT_INSTRUCAO'
      FieldLength = 8
      DataType = dtMemo
      DisplayWidth = 10
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppTitulosppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'BLT_LAYOUT'
      FieldName = 'BLT_LAYOUT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppTitulosppField21: TppField
      FieldAlias = 'BLT_DIG_CONTA'
      FieldName = 'BLT_DIG_CONTA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 20
    end
    object ppTitulosppField22: TppField
      FieldAlias = 'BLT_DIG_AGENCIA'
      FieldName = 'BLT_DIG_AGENCIA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 21
    end
    object ppTitulosppField23: TppField
      FieldAlias = 'BLT_CONTA'
      FieldName = 'BLT_CONTA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 22
    end
    object ppTitulosppField24: TppField
      FieldAlias = 'BLT_LOCAL_PAGTO'
      FieldName = 'BLT_LOCAL_PAGTO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 23
    end
    object ppTitulosppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'BLT_BANCO'
      FieldName = 'BLT_BANCO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object ppTitulosppField26: TppField
      FieldAlias = 'BLT_ACEITE_DOCTO'
      FieldName = 'BLT_ACEITE_DOCTO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 25
    end
    object ppTitulosppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'BLT_DIAS_ABATIMENTO'
      FieldName = 'BLT_DIAS_ABATIMENTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object ppTitulosppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'BLT_DIAS_DESCONTO'
      FieldName = 'BLT_DIAS_DESCONTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object ppTitulosppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'BLT_DIAS_MORA_JUROS'
      FieldName = 'BLT_DIAS_MORA_JUROS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 28
    end
    object ppTitulosppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'BLT_DIAS_PROTESTO'
      FieldName = 'BLT_DIAS_PROTESTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object ppTitulosppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'BLT_PCT_ABATIMENTO'
      FieldName = 'BLT_PCT_ABATIMENTO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 30
    end
    object ppTitulosppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'BLT_PCT_DESCONTO'
      FieldName = 'BLT_PCT_DESCONTO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 31
    end
    object ppTitulosppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'BLT_VLR_DESPESA'
      FieldName = 'BLT_VLR_DESPESA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 32
    end
    object ppTitulosppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'BLT_VLR_IOF'
      FieldName = 'BLT_VLR_IOF'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 33
    end
    object ppTitulosppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'BLT_VLR_MORA_JUROS'
      FieldName = 'BLT_VLR_MORA_JUROS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 34
    end
    object ppTitulosppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'BLT_VLR_OUTRAS_DESP'
      FieldName = 'BLT_VLR_OUTRAS_DESP'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 35
    end
    object ppTitulosppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'BLT_VALOR'
      FieldName = 'BLT_VALOR'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 36
    end
    object ppTitulosppField38: TppField
      FieldAlias = 'BLT_DT_LANCTO'
      FieldName = 'BLT_DT_LANCTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 37
    end
    object ppTitulosppField39: TppField
      FieldAlias = 'BLT_DT_VENCTO'
      FieldName = 'BLT_DT_VENCTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 38
    end
    object ppTitulosppField40: TppField
      FieldAlias = 'BLT_NOME_BANCO'
      FieldName = 'BLT_NOME_BANCO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 39
    end
    object ppTitulosppField41: TppField
      FieldAlias = 'NOSSO_NUMERO'
      FieldName = 'NOSSO_NUMERO'
      FieldLength = 0
      DataType = dtLargeInt
      DisplayWidth = 15
      Position = 40
    end
    object ppTitulosppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_DESCONTO'
      FieldName = 'REC_DESCONTO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 41
    end
    object ppTitulosppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_VLR_PARCIAL'
      FieldName = 'REC_VLR_PARCIAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 42
    end
    object ppTitulosppField44: TppField
      FieldAlias = 'REC_DATA_ULT_BAIXA'
      FieldName = 'REC_DATA_ULT_BAIXA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 43
    end
    object ppTitulosppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_DESCONTOS'
      FieldName = 'REC_DESCONTOS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 44
    end
    object ppTitulosppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'BLT_MULTA'
      FieldName = 'BLT_MULTA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 45
    end
    object ppTitulosppField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_CODIGO'
      FieldName = 'REC_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 46
    end
    object ppTitulosppField48: TppField
      FieldAlias = 'CED_EMAIL'
      FieldName = 'CED_EMAIL'
      FieldLength = 80
      DisplayWidth = 80
      Position = 47
    end
    object ppTitulosppField49: TppField
      FieldAlias = 'CED_NOME'
      FieldName = 'CED_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 48
    end
    object ppTitulosppField50: TppField
      FieldAlias = 'CED_RUA'
      FieldName = 'CED_RUA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 49
    end
    object ppTitulosppField51: TppField
      FieldAlias = 'CED_NUM'
      FieldName = 'CED_NUM'
      FieldLength = 15
      DisplayWidth = 15
      Position = 50
    end
    object ppTitulosppField52: TppField
      FieldAlias = 'CED_CEP'
      FieldName = 'CED_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 51
    end
    object ppTitulosppField53: TppField
      FieldAlias = 'CED_CIDADE'
      FieldName = 'CED_CIDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 52
    end
    object ppTitulosppField54: TppField
      FieldAlias = 'CED_UF'
      FieldName = 'CED_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 53
    end
    object ppTitulosppField55: TppField
      FieldAlias = 'CED_BAIRRO'
      FieldName = 'CED_BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 54
    end
    object ppTitulosppField56: TppField
      FieldAlias = 'CED_CPF_CGC'
      FieldName = 'CED_CPF_CGC'
      FieldLength = 14
      DisplayWidth = 14
      Position = 55
    end
    object ppTitulosppField57: TppField
      FieldAlias = 'BLT_MODALIDADE'
      FieldName = 'BLT_MODALIDADE'
      FieldLength = 10
      DisplayWidth = 10
      Position = 56
    end
    object ppTitulosppField58: TppField
      FieldAlias = 'BLT_LAYOUT_IMPRESSAO'
      FieldName = 'BLT_LAYOUT_IMPRESSAO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 57
    end
    object ppTitulosppField59: TppField
      Alignment = taRightJustify
      FieldAlias = 'BLT_NUM_COPIAS'
      FieldName = 'BLT_NUM_COPIAS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 58
    end
  end
  object rptTitulos: TppReport
    AutoStop = False
    DataPipeline = ppTitulos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 196
    Top = 72
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppTitulos'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 16404
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 16140
        mmLeft = 0
        mmTop = 264
        mmWidth = 197644
        BandType = 1
      end
      object lblRelatorio: TppLabel
        UserName = 'lblRelatorio'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblRelatorio'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4868
        mmLeft = 1058
        mmTop = 10054
        mmWidth = 21209
        BandType = 1
      end
      object lblTitulo: TppLabel
        UserName = 'lblTitulo'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblTitulo'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5842
        mmLeft = 794
        mmTop = 1852
        mmWidth = 19262
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy h:nn:ss AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 162984
        mmTop = 1323
        mmWidth = 33338
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 12700
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'N'#186' Docto '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 7938
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt. Lancto'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 139171
        mmTop = 7938
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt. Vencto'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 158221
        mmTop = 7938
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Blt. Valor'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 180975
        mmTop = 7938
        mmWidth = 15409
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Nosso N'#250'mero'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 28575
        mmTop = 7938
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sacado'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 55827
        mmTop = 7938
        mmWidth = 12435
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1588
        mmTop = 12435
        mmWidth = 194469
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 3969
        mmLeft = 1852
        mmTop = 0
        mmWidth = 195263
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'BLT_NUM_DOCTO'
        DataPipeline = ppTitulos
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppTitulos'
        mmHeight = 3598
        mmLeft = 1323
        mmTop = 0
        mmWidth = 16140
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'BLT_DT_LANCTO'
        DataPipeline = ppTitulos
        DisplayFormat = 'dd/mm/yyyy'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppTitulos'
        mmHeight = 3704
        mmLeft = 138907
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'BLT_DT_VENCTO'
        DataPipeline = ppTitulos
        DisplayFormat = 'dd/mm/yyyy'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppTitulos'
        mmHeight = 3704
        mmLeft = 158486
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'BLT_VALOR'
        DataPipeline = ppTitulos
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppTitulos'
        mmHeight = 3704
        mmLeft = 179388
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOSSO_NUMERO'
        DataPipeline = ppTitulos
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppTitulos'
        mmHeight = 3704
        mmLeft = 20108
        mmTop = 0
        mmWidth = 33867
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAC_NOME'
        DataPipeline = ppTitulos
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppTitulos'
        mmHeight = 3704
        mmLeft = 55563
        mmTop = 0
        mmWidth = 81227
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 18785
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 54504
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 137584
        mmTop = 265
        mmWidth = 2117
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 177536
        mmTop = 0
        mmWidth = 2117
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppShape14: TppShape
        UserName = 'Shape14'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 7144
        mmLeft = 1852
        mmTop = 265
        mmWidth = 195792
        BandType = 8
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 180182
        mmTop = 1852
        mmWidth = 14552
        BandType = 8
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PARC_TEXTO_RELATORIO'
        DataPipeline = ppAppRepresentante
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppAppRepresentante'
        mmHeight = 3704
        mmLeft = 3969
        mmTop = 2117
        mmWidth = 104246
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 10319
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 8996
        mmLeft = 150284
        mmTop = 529
        mmWidth = 47096
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'BLT_VALOR'
        DataPipeline = ppTitulos
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppTitulos'
        mmHeight = 3810
        mmLeft = 176477
        mmTop = 3175
        mmWidth = 20108
        BandType = 7
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total de t'#237'tulos'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 151607
        mmTop = 3440
        mmWidth = 22754
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object dsApp: TDataSource
    DataSet = DmApp.QryParceiro
    Left = 222
    Top = 9
  end
  object ppAppRepresentante: TppDBPipeline
    DataSource = dsApp
    UserName = 'ppAppRepresentante'
    Left = 191
    Top = 9
    object ppAppRepresentanteppField1: TppField
      FieldAlias = 'PARC_RAZAO_SOCIAL'
      FieldName = 'PARC_RAZAO_SOCIAL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 0
    end
    object ppAppRepresentanteppField2: TppField
      FieldAlias = 'PARC_NOME_FANTASIA'
      FieldName = 'PARC_NOME_FANTASIA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppAppRepresentanteppField3: TppField
      FieldAlias = 'PARC_CNPJ'
      FieldName = 'PARC_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 2
    end
    object ppAppRepresentanteppField4: TppField
      FieldAlias = 'PARC_FONE'
      FieldName = 'PARC_FONE'
      FieldLength = 16
      DisplayWidth = 16
      Position = 3
    end
    object ppAppRepresentanteppField5: TppField
      FieldAlias = 'PARC_SITE'
      FieldName = 'PARC_SITE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object ppAppRepresentanteppField6: TppField
      FieldAlias = 'PARC_EMAIL'
      FieldName = 'PARC_EMAIL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object ppAppRepresentanteppField7: TppField
      FieldAlias = 'PARC_SLOGAN'
      FieldName = 'PARC_SLOGAN'
      FieldLength = 200
      DisplayWidth = 200
      Position = 6
    end
    object ppAppRepresentanteppField8: TppField
      FieldAlias = 'PARC_SUPORTE_EMAIL'
      FieldName = 'PARC_SUPORTE_EMAIL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object ppAppRepresentanteppField9: TppField
      FieldAlias = 'PARC_SUPORTE_FONE'
      FieldName = 'PARC_SUPORTE_FONE'
      FieldLength = 16
      DisplayWidth = 16
      Position = 8
    end
    object ppAppRepresentanteppField10: TppField
      FieldAlias = 'PARC_SUPORTE_SITE'
      FieldName = 'PARC_SUPORTE_SITE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object ppAppRepresentanteppField11: TppField
      FieldAlias = 'PARC_LOGO'
      FieldName = 'PARC_LOGO'
      FieldLength = 8
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppAppRepresentanteppField12: TppField
      FieldAlias = 'PARC_TEXTO_RELATORIO'
      FieldName = 'PARC_TEXTO_RELATORIO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 11
    end
  end
end
