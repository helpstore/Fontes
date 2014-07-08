object frmFiltraManComissoes: TfrmFiltraManComissoes
  Left = 262
  Top = 128
  Width = 422
  Height = 312
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Manuten'#231#227'o de Comiss'#245'es'
  Color = clWhite
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
    Width = 414
    Height = 285
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
      Top = 28
      Width = 248
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 6
      Caption = 'Manuten'#231#227'o de Comiss'#245'es'
      ParentFont = False
      Transparent = True
    end
    object Panel2: TPanel
      Left = 2
      Top = 251
      Width = 410
      Height = 32
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 4
      object BtnOk: TcxButton
        Left = 238
        Top = 4
        Width = 77
        Height = 25
        Cursor = crHandPoint
        Action = ActPreview
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
        Left = 318
        Top = 4
        Width = 85
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
    end
    object GroupBox2: TGroupBox
      Left = 11
      Top = 37
      Width = 393
      Height = 63
      Caption = 'Geral'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object Label12: TcxLabel
        Left = 11
        Top = 27
        Caption = 'Vendedor'
        ParentFont = False
        Transparent = True
      end
      object cmbVendedor: TdxLookupEdit
        Left = 59
        Top = 23
        Width = 326
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
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        ClearKey = 46
        ListFieldName = 'NOME_RAZAO'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsVendedor
        LookupKeyValue = Null
      end
    end
    object GroupBox1: TGroupBox
      Left = 234
      Top = 107
      Width = 170
      Height = 71
      Caption = 'Acesso ao Registro'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      object Label13: TcxLabel
        Left = 6
        Top = 22
        Caption = 'C'#243'd. Comiss'#227'o'
        Transparent = True
      end
      object Label7: TcxLabel
        Left = 86
        Top = 22
        Caption = 'C'#243'd. Venda'
        Transparent = True
      end
      object edtCom: TcxCurrencyEdit
        Left = 7
        Top = 37
        ParentFont = False
        TabOrder = 0
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        Width = 74
      end
      object edtVenda: TcxCurrencyEdit
        Left = 88
        Top = 37
        ParentFont = False
        TabOrder = 1
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        Width = 74
      end
    end
    object gbData: TGroupBox
      Left = 11
      Top = 107
      Width = 218
      Height = 71
      Caption = 'Data Gera'#231#227'o'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object Label4: TcxLabel
        Left = 118
        Top = 22
        Caption = 'Final'
        ParentFont = False
        Transparent = True
      end
      object Label5: TcxLabel
        Left = 10
        Top = 22
        Caption = 'Inicial'
        ParentFont = False
        Transparent = True
      end
      object Label1: TcxLabel
        Left = 104
        Top = 44
        Caption = #224
        ParentFont = False
        Transparent = True
      end
      object DataInicial: TdxDateEdit
        Left = 8
        Top = 38
        Width = 89
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
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        Date = -700000.000000000000000000
        UseEditMask = True
        StoredValues = 4
      end
      object DataFinal: TdxDateEdit
        Left = 118
        Top = 38
        Width = 89
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
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        Date = -700000.000000000000000000
        UseEditMask = True
        StoredValues = 4
      end
    end
    object GroupBox3: TGroupBox
      Left = 10
      Top = 182
      Width = 395
      Height = 55
      Caption = 'Status'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      object Rd1: TRadioButton
        Left = 11
        Top = 23
        Width = 105
        Height = 17
        Caption = 'Abertas'
        TabOrder = 0
      end
      object Rd2: TRadioButton
        Left = 79
        Top = 23
        Width = 65
        Height = 17
        Caption = 'Geradas'
        TabOrder = 1
      end
      object rd5: TRadioButton
        Left = 322
        Top = 23
        Width = 57
        Height = 17
        Caption = 'Todas'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
      object Rd3: TRadioButton
        Left = 153
        Top = 23
        Width = 74
        Height = 17
        Caption = 'Quitadas'
        TabOrder = 3
      end
      object rd4: TRadioButton
        Left = 235
        Top = 23
        Width = 79
        Height = 17
        Caption = 'Canceladas'
        TabOrder = 4
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
    object ActPreview: TAction
      Caption = '&Ok'
      OnExecute = ActPreviewExecute
    end
  end
  object dsVendedor: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelVendedor
    Left = 208
    Top = 12
  end
  object stgfrmFiltraCobranca: TcxPropertiesStore
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
      end
      item
        Component = DataFinal
        Properties.Strings = (
          'Anchors'
          'Color'
          'Constraints'
          'Cursor'
          'Date'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentColor'
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
        Component = DataInicial
        Properties.Strings = (
          'Anchors'
          'Color'
          'Constraints'
          'Cursor'
          'Date'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentColor'
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
        Component = edtCom
        Properties.Strings = (
          'About'
          'Align'
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'BiDiMode'
          'CharCase'
          'CheckRange'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DisplayFormat'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'FrameColor'
          'FrameController'
          'FrameFlat'
          'FrameFlatStyle'
          'FrameFocusStyle'
          'FrameSides'
          'FrameStyle'
          'FrameVisible'
          'Height'
          'HelpContext'
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'IntegersOnly'
          'Left'
          'Max'
          'MaxLength'
          'Min'
          'Name'
          'OEMConvert'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PasswordChar'
          'PopupMenu'
          'ReadOnly'
          'ShowHint'
          'TabOnEnter'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'Top'
          'UseFrameController'
          'Value'
          'Visible'
          'Width')
      end
      item
        Component = edtVenda
        Properties.Strings = (
          'About'
          'Align'
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'BiDiMode'
          'CharCase'
          'CheckRange'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DisplayFormat'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'FrameColor'
          'FrameController'
          'FrameFlat'
          'FrameFlatStyle'
          'FrameFocusStyle'
          'FrameSides'
          'FrameStyle'
          'FrameVisible'
          'Height'
          'HelpContext'
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'IntegersOnly'
          'Left'
          'Max'
          'MaxLength'
          'Min'
          'Name'
          'OEMConvert'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PasswordChar'
          'PopupMenu'
          'ReadOnly'
          'ShowHint'
          'TabOnEnter'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'Top'
          'UseFrameController'
          'Value'
          'Visible'
          'Width')
      end
      item
        Component = Rd1
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
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
        Component = Rd2
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
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
        Component = Rd3
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
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
        Component = rd4
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
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
        Component = rd5
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
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
      end>
    StorageName = 'stgfrmFiltraCobranca'
    Left = 160
    Top = 71
  end
end
