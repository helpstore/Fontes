object FrmConfirmaExtorno: TFrmConfirmaExtorno
  Left = 334
  Top = 191
  Width = 455
  Height = 243
  BorderIcons = [biSystemMenu]
  Caption = ' Confirmar Estorno '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 447
    Height = 216
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
      Caption = 'Confirmar Estorno'
      ParentFont = False
      Transparent = True
    end
    object LBLVENCIMENTO: TcxLabel
      Left = 13
      Top = 70
      Caption = 'Data Baixa'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 9
      Top = 94
      Caption = 'Lan'#231'amento'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 40
      Top = 46
      Caption = 'Nome'
      ParentFont = False
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 315
      Top = 70
      Caption = 'Valor'
      ParentFont = False
      Transparent = True
    end
    object Label5: TcxLabel
      Left = 159
      Top = 70
      Caption = 'Docto'
      ParentFont = False
      Transparent = True
    end
    object Label6: TcxLabel
      Left = 169
      Top = 96
      Caption = 'Hist'
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 30
      Top = 128
      Caption = 
        'Aten'#231#227'o! Todos  os demais movimentos pertencentes a planilha ser' +
        #227'o automaticamente estornados'
      ParentFont = False
      Transparent = True
    end
    object Panel2: TPanel
      Left = 2
      Top = 174
      Width = 443
      Height = 40
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object BtnOk: TcxButton
        Left = 241
        Top = 7
        Width = 91
        Height = 25
        Cursor = crHandPoint
        Caption = '&Confirmar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ModalResult = 1
        ParentFont = False
        TabOrder = 0
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555555555555555555555905555555555555999055555555555599905555
          5555555999990555555555999999055555555799059990555555790555599055
          5555555555599905555555555555990555555555555559905555555555555579
          0555555555555557905555555555555559905555555555555555}
      end
      object RzBitBtn2: TcxButton
        Left = 333
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
        ModalResult = 2
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
    object DataBaixa: TdxEdit
      Left = 71
      Top = 65
      Width = 86
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 1
    end
    object DataLancamento: TdxEdit
      Left = 71
      Top = 90
      Width = 86
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 2
    end
    object Nome: TdxEdit
      Left = 71
      Top = 40
      Width = 356
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 3
    end
    object Documento: TdxEdit
      Left = 192
      Top = 65
      Width = 108
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 4
    end
    object Historico: TdxEdit
      Left = 192
      Top = 91
      Width = 235
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 5
    end
    object Valor: TdxEdit
      Left = 346
      Top = 65
      Width = 81
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 6
      Alignment = taRightJustify
      StoredValues = 1
    end
  end
  object Actions: TActionList
    Left = 377
    Top = 8
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
end
