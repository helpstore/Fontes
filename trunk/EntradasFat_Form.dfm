object FrmEntradasFat: TFrmEntradasFat
  Left = 275
  Top = 183
  BorderStyle = bsDialog
  Caption = 'Inserir Parcelamento'
  ClientHeight = 183
  ClientWidth = 359
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PNLCLIENT: TPanel
    Left = 0
    Top = 0
    Width = 359
    Height = 183
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 0
    object Label4: TcxLabel
      Left = 155
      Top = 18
      Caption = 'Duplicata'
      ParentFont = False
      Transparent = True
    end
    object Label5: TcxLabel
      Left = 105
      Top = 60
      Caption = 'Obs'
      ParentFont = False
      Transparent = True
    end
    object Label9: TcxLabel
      Left = 271
      Top = 18
      Caption = 'Conferida'
      ParentFont = False
      Transparent = True
    end
    object Label30: TcxLabel
      Left = 11
      Top = 17
      Caption = 'N'#186' Parcelas'
      ParentFont = False
      Transparent = True
    end
    object Label6: TcxLabel
      Left = 73
      Top = 17
      Caption = 'Intervalo (Dias)'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 12
      Top = 59
      Caption = 'Dt. 1'#170' Parcela'
      ParentFont = False
      Transparent = True
    end
    object Panel2: TPanel
      Left = 2
      Top = 146
      Width = 355
      Height = 35
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 6
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 355
        Height = 2
        Align = alTop
        Shape = bsFrame
      end
      object RzBitBtn1: TcxButton
        Left = 5
        Top = 6
        Width = 84
        Height = 25
        Caption = '&Ok'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = RzBitBtn1Click
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object RzBitBtn2: TcxButton
        Left = 91
        Top = 6
        Width = 84
        Height = 25
        Cancel = True
        Caption = '&Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = RzBitBtn2Click
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333333333333333000033338833333333333333333F333333333333
          0000333911833333983333333388F333333F3333000033391118333911833333
          38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
          911118111118333338F3338F833338F3000033333911111111833333338F3338
          3333F8330000333333911111183333333338F333333F83330000333333311111
          8333333333338F3333383333000033333339111183333333333338F333833333
          00003333339111118333333333333833338F3333000033333911181118333333
          33338333338F333300003333911183911183333333383338F338F33300003333
          9118333911183333338F33838F338F33000033333913333391113333338FF833
          38F338F300003333333333333919333333388333338FFF830000333333333333
          3333333333333333333888330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
    end
    object edtDPL: TdxEdit
      Left = 153
      Top = 32
      Width = 116
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
      OnEnter = edVenctoEnter
      OnExit = edParcelaExit
      OnKeyDown = edParcelaKeyDown
      AutoSelect = False
    end
    object edtObs: TdxEdit
      Left = 104
      Top = 72
      Width = 244
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
      OnEnter = edVenctoEnter
      OnExit = edParcelaExit
      OnKeyDown = edParcelaKeyDown
      AutoSelect = False
    end
    object CmbTipo: TdxPickEdit
      Left = 271
      Top = 32
      Width = 77
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      TabOrder = 3
      OnEnter = edVenctoEnter
      OnExit = edParcelaExit
      OnKeyDown = edParcelaKeyDown
      PopupBorder = pbFlat
      Items.Strings = (
        'Sim'
        'N'#227'o')
    end
    object edtParcela: TcxSpinEdit
      Left = 11
      Top = 33
      ParentFont = False
      TabOrder = 0
      OnEnter = edVenctoEnter
      OnExit = edParcelaExit
      OnKeyDown = edParcelaKeyDown
      Width = 57
    end
    object Intervalo: TcxSpinEdit
      Left = 73
      Top = 33
      ParentFont = False
      TabOrder = 1
      Value = 30
      OnEnter = edVenctoEnter
      OnExit = edParcelaExit
      OnKeyDown = edParcelaKeyDown
      Width = 75
    end
    object DataBase: TdxDateEdit
      Left = 11
      Top = 72
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
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      TabOrder = 4
      OnEnter = edVenctoEnter
      OnExit = edParcelaExit
      OnKeyDown = edParcelaKeyDown
      Alignment = taLeftJustify
      ReadOnly = False
      Date = -700000.000000000000000000
      DateOnError = deToday
      DateValidation = True
      SaveTime = False
      UseEditMask = True
      StoredValues = 69
    end
  end
  object DataSource: TDataSource
    DataSet = DMEntradas.Entradas_Fat
    Left = 248
    Top = 150
  end
  object DsCentro: TDataSource
    AutoEdit = False
    DataSet = DMEntradas.SelCentro
    Left = 216
    Top = 150
  end
  object Actions: TActionList
    Left = 185
    Top = 150
    object actLookup: TAction
      Caption = 'actLookup'
      ShortCut = 115
    end
  end
end
