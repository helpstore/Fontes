object FrmFiltraContasPagasCentro: TFrmFiltraContasPagasCentro
  Left = 244
  Top = 216
  Width = 382
  Height = 332
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Rel. Contas Pagas p/Centro de Custo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 366
    Height = 294
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentColor = True
    TabOrder = 0
    OnResize = pnlClientResize
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 174
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 8
      Caption = 'Rel. Contas Pagas p/Centro de Custo'
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 17
      Top = 51
      Caption = 'Data Inicial'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 191
      Top = 51
      Caption = 'Data Final'
      ParentFont = False
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 35
      Top = 77
      Caption = 'Pessoa'
      ParentFont = False
      Transparent = True
    end
    object Label6: TcxLabel
      Left = 15
      Top = 128
      Caption = 'Documento'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 9
      Top = 103
      Caption = 'Centro Custo'
      ParentFont = False
      Transparent = True
    end
    object Label5: TcxLabel
      Left = 10
      Top = 159
      Caption = 'Agrupadores'
      ParentFont = False
      Transparent = True
    end
    object Ini: TdxDateEdit
      Left = 80
      Top = 45
      Width = 100
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
      OnEnter = IniEnter
      OnExit = IniExit
      OnKeyDown = IniKeyDown
      Date = -700000.000000000000000000
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
    object Fim: TdxDateEdit
      Left = 248
      Top = 45
      Width = 100
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
      OnEnter = IniEnter
      OnExit = FimExit
      OnKeyDown = IniKeyDown
      Date = -700000.000000000000000000
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
    object CmbPessoa: TdxLookupEdit
      Left = 80
      Top = 72
      Width = 268
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
      OnEnter = IniEnter
      OnExit = CmbPessoaExit
      OnKeyDown = IniKeyDown
      ClearKey = 46
      ListFieldName = 'NOME_RAZAO'
      KeyFieldName = 'CODIGO'
      ListSource = dsPessoas
      LookupKeyValue = Null
    end
    object EdDocumento: TdxEdit
      Left = 80
      Top = 124
      Width = 268
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 4
      OnEnter = IniEnter
      OnExit = CmbPessoaExit
      OnKeyDown = IniKeyDown
    end
    object CmbCentro: TdxLookupEdit
      Left = 80
      Top = 98
      Width = 268
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
      OnEnter = IniEnter
      OnExit = CmbPessoaExit
      OnKeyDown = IniKeyDown
      ClearKey = 46
      ListFieldName = 'NOME'
      KeyFieldName = 'CODIGO'
      ListSource = DsCentro
      LookupKeyValue = Null
    end
    object Panel2: TPanel
      Left = 2
      Top = 252
      Width = 362
      Height = 40
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 8
      object LblStatus: TcxLabel
        Left = 205
        Top = 13
        Caption = 'Status'
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object RzBitBtn2: TcxButton
        Left = 9
        Top = 7
        Width = 91
        Height = 25
        Cursor = crHandPoint
        Action = ActPreview
        Caption = '&Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Glyph.Data = {
          EE030000424DEE03000000000000360000002800000012000000110000000100
          180000000000B8030000C30E0000C30E00000000000000000000BFBFBF000000
          000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBF000000000000000000BFBFBF00000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000
          0000000000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000000000FFFFFF
          C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
          C00000FF0000FFC0C0C0C0C0C00000000000000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF000000000080808000000000000080808080808080808080808080
          8080808080808080808080808080808080808080808080000000000000808080
          0000BFBFBFBFBFBF000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000BFBFBFBFBFBF0000BFBFBFBFBFBF
          000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF000000000000BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFF
          FF000000000000000000000000000000000000000000000000FFFFFF000000BF
          BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF
          0000BFBFBFBFBFBFBFBFBF000000FFFFFF000000000000000000000000000000
          000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
          BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFF
          FF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BF
          BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF
          0000BFBFBFBFBFBFBFBFBF000000000000000000000000000000000000000000
          000000000000000000000000000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000}
      end
      object RzBitBtn3: TcxButton
        Left = 100
        Top = 7
        Width = 91
        Height = 25
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
        Left = 205
        Top = 12
        Width = 152
        Height = 16
        TabOrder = 2
        Visible = False
      end
    end
    object CKSELECIONADO: TCheckBox
      Left = 81
      Top = 225
      Width = 58
      Height = 17
      Caption = 'Sint'#233'tico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnEnter = IniEnter
      OnExit = CmbPessoaExit
      OnKeyDown = IniKeyDown
    end
    object CmbAgrupador: TdxLookupEdit
      Left = 80
      Top = 152
      Width = 268
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 5
      OnEnter = IniEnter
      OnExit = CmbPessoaExit
      OnKeyDown = IniKeyDown
      ClearKey = 46
      ListFieldName = 'NOME'
      CanDeleteText = True
      KeyFieldName = 'CODIGO'
      ListSource = DsAgrupador
      LookupKeyValue = Null
    end
    object cmbContrato: TdxLookupEdit
      Left = 80
      Top = 180
      Width = 268
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 6
      ClearKey = 46
      ListFieldName = 'DESCRICAO'
      CanDeleteText = True
      KeyFieldName = 'CODIGO'
      ListSource = dsSelContrato
      LookupKeyValue = Null
    end
    object Label11: TcxLabel
      Left = 30
      Top = 181
      Caption = 'Contrato'
      ParentFont = False
    end
  end
  object Actions: TActionList
    Left = 257
    Top = 4
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActPreview: TAction
      Tag = 1
      Caption = '&Ok'
      OnExecute = ActPreviewExecute
    end
  end
  object dsPessoas: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.SelFornecedor
    Left = 312
    Top = 3
  end
  object DsCentro: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.SelCentro
    Left = 312
    Top = 67
  end
  object DsAgrupador: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.SelAgrupador
    Left = 80
    Top = 16
  end
  object qryContratos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select ct.codigo, ct.descricao from ctr_contrato ct'
      'where ct.ativo = '#39'S'#39)
    Left = 302
    Top = 147
    object qryContratosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CTR_CONTRATO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryContratosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"CTR_CONTRATO"."DESCRICAO"'
      Size = 50
    end
  end
  object dsSelContrato: TDataSource
    AutoEdit = False
    DataSet = qryContratos
    Left = 270
    Top = 146
  end
end
