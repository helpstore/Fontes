object frmFiltraCobranca: TfrmFiltraCobranca
  Left = 217
  Top = 137
  Width = 445
  Height = 487
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Manuten'#231#227'o Cobran'#231'as'
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
    Width = 429
    Height = 449
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
    object LblTitulo: TLabel
      Left = 6
      Top = 8
      Width = 221
      Height = 23
      Caption = 'Manuten'#231#227'o Cobran'#231'as'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 174
      Height = 2
      Shape = bsTopLine
    end
    object Panel2: TPanel
      Left = 2
      Top = 407
      Width = 425
      Height = 40
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 5
      object BtnOk: TcxButton
        Left = 263
        Top = 8
        Width = 77
        Height = 25
        Cursor = crHandPoint
        Action = ActOk
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
        Left = 343
        Top = 8
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
    object gbData: TGroupBox
      Left = 16
      Top = 168
      Width = 409
      Height = 120
      Caption = 'Data'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object Label2: TLabel
        Left = 13
        Top = 88
        Width = 22
        Height = 13
        Alignment = taRightJustify
        Caption = 'Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 10
        Top = 50
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edAs1: TLabel
        Left = 133
        Top = 43
        Width = 7
        Height = 13
        Cursor = crHandPoint
        Hint = 'Campo Requerido'
        Alignment = taRightJustify
        Caption = '*'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object edAs3: TLabel
        Tag = 1
        Left = 133
        Top = 82
        Width = 7
        Height = 13
        Cursor = crHandPoint
        Hint = 'Campo Requerido'
        Alignment = taRightJustify
        Caption = '*'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Rd1: TRadioButton
        Left = 16
        Top = 18
        Width = 79
        Height = 17
        Caption = 'Vencimento'
        TabOrder = 0
        OnClick = Rd1Click
      end
      object Rd2: TRadioButton
        Left = 106
        Top = 18
        Width = 89
        Height = 17
        Caption = 'Agendamento'
        TabOrder = 1
        OnClick = Rd1Click
      end
      object Rd3: TRadioButton
        Left = 201
        Top = 18
        Width = 57
        Height = 17
        Caption = 'Ambos'
        Checked = True
        TabOrder = 2
        TabStop = True
        OnClick = Rd1Click
      end
      object GroupBox1: TGroupBox
        Left = 165
        Top = 42
        Width = 228
        Height = 63
        Caption = 'Hor'#225'rio'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 5
        object Label7: TLabel
          Left = 111
          Top = 25
          Width = 11
          Height = 13
          Alignment = taRightJustify
          Caption = #224's'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object tedtCobrar: TcxTimeEdit
          Left = 15
          Top = 22
          EditValue = 0d
          TabOrder = 0
          Width = 89
        end
        object tedtCobrado: TcxTimeEdit
          Left = 127
          Top = 22
          EditValue = 0d
          TabOrder = 1
          Width = 89
        end
      end
      object DataInicial: TcxDateEdit
        Left = 41
        Top = 49
        EditValue = 36526.3833060185d
        ParentFont = False
        TabOrder = 3
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        Width = 89
      end
      object DataFinal: TcxDateEdit
        Left = 40
        Top = 84
        EditValue = 40542.3833060185d
        ParentFont = False
        TabOrder = 4
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        Width = 89
      end
    end
    object gbSituacao: TGroupBox
      Left = 15
      Top = 289
      Width = 410
      Height = 45
      Caption = 'Situa'#231#227'o'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      object Rd4: TRadioButton
        Left = 8
        Top = 18
        Width = 105
        Height = 17
        Caption = 'Bx. Parcialmente'
        TabOrder = 0
      end
      object Rd5: TRadioButton
        Left = 176
        Top = 18
        Width = 65
        Height = 17
        Caption = 'Abertas'
        TabOrder = 1
      end
      object Rd6: TRadioButton
        Left = 335
        Top = 18
        Width = 57
        Height = 17
        Caption = 'Ambos'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
    end
    object gpAgendamentos: TGroupBox
      Left = 15
      Top = 339
      Width = 177
      Height = 66
      Caption = 'N'#186' Agendamentos'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      object Label1: TLabel
        Left = 8
        Top = 30
        Width = 27
        Height = 13
        Caption = 'Inicial'
      end
      object Label3: TLabel
        Left = 96
        Top = 30
        Width = 22
        Height = 13
        Caption = 'Final'
      end
      object rdAgend1: TcxSpinEdit
        Left = 41
        Top = 27
        TabOrder = 0
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        Width = 47
      end
      object rdAgend2: TcxSpinEdit
        Left = 123
        Top = 27
        TabOrder = 1
        Value = 20
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        Width = 47
      end
    end
    object gbValor: TGroupBox
      Left = 204
      Top = 339
      Width = 221
      Height = 65
      Caption = 'Valores (R$) '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      object Label4: TLabel
        Left = 9
        Top = 30
        Width = 27
        Height = 13
        Caption = 'Inicial'
      end
      object Label6: TLabel
        Left = 110
        Top = 30
        Width = 22
        Height = 13
        Caption = 'Final'
      end
      object edtVlrInicial: TcxCurrencyEdit
        Left = 40
        Top = 26
        EditValue = 0c
        Properties.DisplayFormat = '0'
        TabOrder = 0
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        Width = 62
      end
      object edtVlrFinal: TcxCurrencyEdit
        Left = 136
        Top = 26
        EditValue = 1000000000c
        Properties.DisplayFormat = '###,##0.00'
        TabOrder = 1
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        Width = 73
      end
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 46
      Width = 409
      Height = 117
      Caption = 'Informa'#231#245'es do Cedente'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object Label10: TLabel
        Left = 9
        Top = 26
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cobrador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 22
        Top = 54
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'Local'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edAs2: TLabel
        Left = 394
        Top = 19
        Width = 7
        Height = 13
        Cursor = crHandPoint
        Hint = 'Campo Requerido'
        Alignment = taRightJustify
        Caption = '*'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label9: TLabel
        Left = 13
        Top = 86
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object CmbLocal: TdxLookupEdit
        Left = 60
        Top = 50
        Width = 333
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
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = DsLocal
        LookupKeyValue = Null
      end
      object CmbCobrador: TdxLookupEdit
        Left = 60
        Top = 22
        Width = 333
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
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = DsCobrador
        LookupKeyValue = Null
      end
      object cmbCliente: TdxLookupEdit
        Left = 60
        Top = 82
        Width = 333
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
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        ClearKey = 46
        ListFieldName = 'NOME_RAZAO'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsPessoas
        LookupKeyValue = Null
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
  object dsPessoas: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.SelPessoasFJ
    Left = 312
    Top = 3
  end
  object DsCobrador: TDataSource
    AutoEdit = False
    DataSet = dmCadastros2.SelCobrador
    Left = 264
    Top = 64
  end
  object DsLocal: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.Local_Cobranca
    Left = 224
  end
  object stgfrmFiltraCobranca: TcxPropertiesStore
    Components = <
      item
        Component = DataFinal
        Properties.Strings = (
          'Date')
      end
      item
        Component = DataInicial
        Properties.Strings = (
          'Date')
      end
      item
        Component = edAs1
        Properties.Strings = (
          'Align'
          'Alignment'
          'Anchors'
          'AutoSize'
          'BiDiMode'
          'Caption'
          'Color'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FocusControl'
          'Font'
          'Height'
          'Hint'
          'Layout'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowAccelChar'
          'ShowHint'
          'Tag'
          'Top'
          'Transparent'
          'Visible'
          'Width'
          'WordWrap')
      end
      item
        Component = edAs2
        Properties.Strings = (
          'Align'
          'Alignment'
          'Anchors'
          'AutoSize'
          'BiDiMode'
          'Caption'
          'Color'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FocusControl'
          'Font'
          'Height'
          'Hint'
          'Layout'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowAccelChar'
          'ShowHint'
          'Tag'
          'Top'
          'Transparent'
          'Visible'
          'Width'
          'WordWrap')
      end
      item
        Component = edAs3
        Properties.Strings = (
          'Align'
          'Alignment'
          'Anchors'
          'AutoSize'
          'BiDiMode'
          'Caption'
          'Color'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FocusControl'
          'Font'
          'Height'
          'Hint'
          'Layout'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowAccelChar'
          'ShowHint'
          'Tag'
          'Top'
          'Transparent'
          'Visible'
          'Width'
          'WordWrap')
      end
      item
        Component = edtVlrFinal
        Properties.Strings = (
          'Value')
      end
      item
        Component = edtVlrInicial
        Properties.Strings = (
          'Value')
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
        Component = Rd4
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
        Component = Rd5
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
        Component = Rd6
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
        Component = rdAgend1
        Properties.Strings = (
          'Anchors'
          'AutoSize'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
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
          'Value'
          'Visible'
          'Width')
      end
      item
        Component = rdAgend2
        Properties.Strings = (
          'Anchors'
          'AutoSize'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
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
          'Value'
          'Visible'
          'Width')
      end>
    StorageName = 'stgfrmFiltraCobranca'
    Left = 160
    Top = 263
  end
end
