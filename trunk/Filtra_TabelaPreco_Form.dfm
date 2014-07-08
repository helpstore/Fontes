object frmFiltraTabelaPreco: TfrmFiltraTabelaPreco
  Left = 289
  Top = 138
  Width = 404
  Height = 329
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Gerar Tabela de Pre'#231'os'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 396
    Height = 302
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnResize = pnlClientResize
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 193
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 8
      Caption = 'Gerar Tabela de Pre'#231'os'
      ParentFont = False
      Transparent = True
    end
    object Panel2: TPanel
      Left = 2
      Top = 260
      Width = 392
      Height = 40
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 2
      DesignSize = (
        392
        40)
      object BtnOk: TcxButton
        Left = 221
        Top = 8
        Width = 77
        Height = 25
        Cursor = crHandPoint
        Action = ActOk
        Anchors = [akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
          66666666666666666666666666666666666666666666666666666666AC666666
          66666666F86666666666666A22C666666666666F88866666666666A2222C6666
          666666F88888666666666A222222C66666666F888888866666666A22CA222C66
          66666F888F88886666666A2C66A222C666666F8866F8888666666AC6666A222C
          66666F86666F8888666666666666A222C66666666666F8888666666666666A22
          2C66666666666F8888666666666666A222C66666666666F8888666666666666A
          22C666666666666F8886666666666666A2C6666666666666F886666666666666
          6AC66666666666666F8666666666666666666666666666666666}
        NumGlyphs = 2
      end
      object RzBitBtn2: TcxButton
        Left = 301
        Top = 8
        Width = 85
        Height = 25
        Cursor = crHandPoint
        Action = ActFechar
        Anchors = [akRight, akBottom]
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
    end
    object GroupBox2: TGroupBox
      Left = 9
      Top = 42
      Width = 373
      Height = 151
      Caption = 'Geral'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label8: TcxLabel
        Left = 8
        Top = 113
        Caption = 'Produto'
        ParentFont = False
        Transparent = True
      end
      object Label3: TcxLabel
        Left = 7
        Top = 54
        Caption = 'SubGrupo'
        ParentFont = False
        Transparent = True
      end
      object Label4: TcxLabel
        Left = 9
        Top = 25
        Caption = 'Grupo'
        ParentFont = False
        Transparent = True
      end
      object Label5: TcxLabel
        Left = 18
        Top = 84
        Caption = 'Marca'
        ParentFont = False
        Transparent = True
      end
      object cmbMarca: TdxLookupEdit
        Left = 56
        Top = 81
        Width = 306
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 2
        OnEnter = cmbGrupoEnter
        OnExit = cmbGrupoExit
        OnKeyDown = cmbGrupoKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsMarca
        LookupKeyValue = Null
      end
      object cmbSubGrupo: TdxLookupEdit
        Left = 56
        Top = 52
        Width = 306
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
        OnEnter = cmbGrupoEnter
        OnExit = cmbGrupoExit
        OnKeyDown = cmbGrupoKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'SUBGRUPO'
        ListSource = dsSubGrupo
        LookupKeyValue = Null
      end
      object cmbGrupo: TdxLookupEdit
        Left = 56
        Top = 23
        Width = 306
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
        OnEnter = cmbGrupoEnter
        OnExit = cmbGrupoExit
        OnKeyDown = cmbGrupoKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsGrupo
        LookupKeyValue = Null
      end
      object cmbProduto: TdxLookupEdit
        Left = 56
        Top = 110
        Width = 305
        DragMode = dmAutomatic
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 3
        OnEnter = cmbGrupoEnter
        OnExit = cmbGrupoExit
        OnKeyDown = cmbGrupoKeyDown
        DropDownWidth = 500
        ClearKey = 46
        ListFieldName = 'NOME;CODIGO'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsProduto
        LookupKeyValue = Null
      end
    end
    object gbValor: TGroupBox
      Left = 8
      Top = 197
      Width = 376
      Height = 50
      Caption = 'Par'#226'metros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label1: TcxLabel
        Left = 8
        Top = 23
        Caption = 'Atualiza'#231#227'o (%)'
        Transparent = True
      end
      object edtVlrInicial: TcxCurrencyEdit
        Left = 83
        Top = 19
        TabOrder = 0
        OnEnter = cmbGrupoEnter
        OnExit = cmbGrupoExit
        OnKeyDown = cmbGrupoKeyDown
        Width = 57
      end
      object ckIncremental: TcxCheckBox
        Left = 278
        Top = 21
        Caption = 'Incremental'
        ParentFont = False
        State = cbsGrayed
        TabOrder = 1
        OnEnter = cmbGrupoEnter
        OnExit = cmbGrupoExit
        OnKeyDown = cmbGrupoKeyDown
        Width = 91
      end
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
    object ActOk: TAction
      Caption = '&Ok'
      OnExecute = ActOkExecute
    end
  end
  object dsMarca: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelMarca
    Left = 264
    Top = 131
  end
  object dsGrupo: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelGrupo
    Left = 264
    Top = 64
  end
  object dsSubGrupo: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelSubGrupo
    Left = 264
    Top = 98
  end
  object stgfrmFiltraTabelaPreco: TcxPropertiesStore
    Components = <
      item
        Component = ActFechar
        Properties.Strings = (
          'Caption'
          'Category'
          'Checked'
          'Enabled'
          'HelpContext'
          'Hint'
          'ImageIndex'
          'Name'
          'ShortCut'
          'Tag'
          'Visible')
      end>
    StorageName = 'stgfrmFiltraTabelaPreco'
    Left = 168
    Top = 119
  end
  object dsProduto: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelProdutos
    Left = 264
    Top = 163
  end
end
