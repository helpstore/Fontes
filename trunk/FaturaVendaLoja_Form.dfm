object FrmFaturaVendaLoja: TFrmFaturaVendaLoja
  Left = 148
  Top = 119
  Width = 640
  Height = 452
  BorderIcons = [biMinimize, biMaximize]
  Caption = ' Fatura Venda no Caixa '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 425
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clCaptionText
    TabOrder = 0
    object Shape1: TShape
      Left = 240
      Top = 336
      Width = 115
      Height = 17
      Brush.Color = clScrollBar
      Pen.Color = clBtnShadow
    end
    object Bevel3: TBevel
      Left = 356
      Top = 8
      Width = 274
      Height = 377
      Shape = bsFrame
    end
    object Bevel4: TBevel
      Left = 360
      Top = 359
      Width = 266
      Height = 20
      Shape = bsFrame
    end
    object Shape10: TShape
      Left = 240
      Top = 370
      Width = 115
      Height = 17
      Brush.Color = clScrollBar
      Pen.Color = clBtnShadow
    end
    object Shape9: TShape
      Left = 240
      Top = 302
      Width = 115
      Height = 17
      Brush.Color = clScrollBar
      Pen.Color = clBtnShadow
    end
    object Shape8: TShape
      Left = 240
      Top = 319
      Width = 115
      Height = 17
      Brush.Color = clScrollBar
      Pen.Color = clBtnShadow
    end
    object DBCoolText2: TDBText
      Left = 277
      Top = 320
      Width = 72
      Height = 13
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'VLR_PARC_LC'
      DataSource = DataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBCoolText3: TDBText
      Left = 277
      Top = 304
      Width = 72
      Height = 13
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'TOTAL'
      DataSource = DataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object DBCoolText4: TDBText
      Left = 276
      Top = 372
      Width = 72
      Height = 13
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'Diferenca'
      DataSource = DataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Bevel2: TBevel
      Left = 8
      Top = 352
      Width = 137
      Height = 2
      Shape = bsTopLine
    end
    object DBCoolText1: TDBText
      Left = 277
      Top = 337
      Width = 72
      Height = 13
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'ENTRADA'
      DataSource = DataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Shape2: TShape
      Left = 240
      Top = 353
      Width = 115
      Height = 17
      Brush.Color = clScrollBar
      Pen.Color = clBtnShadow
    end
    object DBCoolText5: TDBText
      Left = 276
      Top = 355
      Width = 72
      Height = 13
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'DESC_ACRES'
      DataSource = DataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label28: TcxLabel
      Left = 21
      Top = 103
      Caption = 'Hist'#243'rico'
      ParentFont = False
      Transparent = True
    end
    object Label34: TcxLabel
      Left = 26
      Top = 127
      Caption = 'Entrada'
      ParentFont = False
      Transparent = True
    end
    object Label17: TcxLabel
      Left = 8
      Top = 152
      Caption = 'Desc/Acr'#233's'
      ParentFont = False
      Transparent = True
    end
    object Label35: TcxLabel
      Left = 213
      Top = 220
      Caption = 'Local'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 23
      Top = 202
      Caption = 'Dinheiro'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 6
      Top = 228
      Caption = 'Cheque Pr'#233
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 29
      Top = 254
      Caption = 'Cart'#227'o'
      ParentFont = False
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 34
      Top = 280
      Caption = 'Ticket'
      ParentFont = False
      Transparent = True
    end
    object Label31: TcxLabel
      Left = 156
      Top = 322
      Caption = 'Total Parcelas'
      ParentFont = False
      Transparent = True
    end
    object Label32: TcxLabel
      Left = 153
      Top = 305
      Caption = 'Total Faturado'
      ParentFont = False
      Transparent = True
    end
    object Label33: TcxLabel
      Left = 182
      Top = 372
      Caption = 'Diferen'#231'a'
      ParentFont = False
      Transparent = True
    end
    object Label6: TcxLabel
      Left = 13
      Top = 177
      Caption = 'Recebidas'
      ParentFont = False
      Transparent = True
    end
    object Label9: TcxLabel
      Left = 14
      Top = 327
      Caption = 'Controle N'#186
      ParentFont = False
      Transparent = True
    end
    object Label10: TcxLabel
      Left = 14
      Top = 367
      Caption = 'Calculadora ( F10 )'
      ParentFont = False
      Transparent = True
    end
    object Label16: TcxLabel
      Left = 361
      Top = 345
      Caption = 'Arquivos Selecionados'
      ParentFont = False
      Transparent = True
    end
    object Label14: TcxLabel
      Left = 369
      Top = 361
      Caption = 'N'#186' de Arquivos'
      ParentFont = False
      Transparent = True
    end
    object LBLNUMARQ: TcxLabel
      Left = 482
      Top = 361
      Caption = '0'
      ParentFont = False
      Transparent = True
    end
    object LBLSOMA: TcxLabel
      Left = 595
      Top = 361
      Caption = '0,00'
      ParentFont = False
      Transparent = True
    end
    object Label15: TcxLabel
      Left = 519
      Top = 361
      Caption = 'Soma'
      ParentFont = False
      Transparent = True
    end
    object Label11: TcxLabel
      Left = 192
      Top = 339
      Caption = 'Entrada'
      ParentFont = False
      Transparent = True
    end
    object Label12: TcxLabel
      Left = 118
      Top = 355
      Caption = 'Desconto/Acr'#233'scimo'
      ParentFont = False
      Transparent = True
    end
    object edHistorico: TdxDBEdit
      Left = 64
      Top = 99
      Width = 287
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
      OnEnter = edHistoricoEnter
      OnExit = edHistoricoExit
      OnKeyDown = DataKeyDown
      DataField = 'HISTORICO'
      DataSource = DataSource
    end
    object EdEntrada: TdxDBCalcEdit
      Left = 64
      Top = 124
      Width = 95
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
      OnEnter = edHistoricoEnter
      OnExit = EdDescAcresExit
      OnKeyDown = DataKeyDown
      DataField = 'ENTRADA'
      DataSource = DataSource
      ButtonGlyph.Data = {
        46020000424D460200000000000036000000280000000E0000000C0000000100
        1800000000001002000000000000000000000000000000000000CED3D6000000
        0000000000000000000000000000000000000000000000000000000000000000
        00CED3D600008486008486008400008400008400008400008400008400008400
        008400008400008400008400000000000000848600FFFFFF8486008486008486
        0084860084860084860084860084860084860084860084000000000000008486
        00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
        00008400000000000000848600FFFFFF84860084860084860084860084860084
        86008486008486008486008486008400000000000000848600FFFF0084860000
        0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
        0000848600FFFFFF848600848600848600848600848600848600848600848600
        8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
        C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
        000000000000848600FFFF000000000000000000000000000000000000000000
        000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
        00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
        D684860084860084860084860084860084860084860084860084860084860084
        8600848600CED3D60000}
      PopupBorder = pbFrame3D
    end
    object EdDescAcres: TdxDBCalcEdit
      Left = 64
      Top = 149
      Width = 95
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
      OnEnter = edHistoricoEnter
      OnExit = EdDescAcresExit
      OnKeyDown = DataKeyDown
      DataField = 'DESC_ACRES'
      DataSource = DataSource
      ButtonGlyph.Data = {
        46020000424D460200000000000036000000280000000E0000000C0000000100
        1800000000001002000000000000000000000000000000000000CED3D6000000
        0000000000000000000000000000000000000000000000000000000000000000
        00CED3D600008486008486008400008400008400008400008400008400008400
        008400008400008400008400000000000000848600FFFFFF8486008486008486
        0084860084860084860084860084860084860084860084000000000000008486
        00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
        00008400000000000000848600FFFFFF84860084860084860084860084860084
        86008486008486008486008486008400000000000000848600FFFF0084860000
        0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
        0000848600FFFFFF848600848600848600848600848600848600848600848600
        8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
        C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
        000000000000848600FFFF000000000000000000000000000000000000000000
        000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
        00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
        D684860084860084860084860084860084860084860084860084860084860084
        8600848600CED3D60000}
      PopupBorder = pbFrame3D
    end
    object GRIDFATURAMENTO: TDBGrid
      Left = 161
      Top = 124
      Width = 194
      Height = 177
      BorderStyle = bsNone
      Color = clBtnFace
      DataSource = DsParcelas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgRowLines, dgTabs, dgCancelOnExit]
      ParentFont = False
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = 8404992
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = GRIDFATURAMENTOEnter
      OnExit = GRIDFATURAMENTOExit
      Columns = <
        item
          Expanded = False
          FieldName = 'VENCTO'
          Title.Caption = 'Vencimento'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Width = 67
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PARCELA'
          Width = 30
          Visible = True
        end>
    end
    object EdDinheiro: TdxDBCalcEdit
      Left = 64
      Top = 199
      Width = 95
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 4
      OnEnter = edHistoricoEnter
      OnExit = edHistoricoExit
      OnKeyDown = DataKeyDown
      DataField = 'DINHEIRO'
      DataSource = DataSource
      ButtonGlyph.Data = {
        46020000424D460200000000000036000000280000000E0000000C0000000100
        1800000000001002000000000000000000000000000000000000CED3D6000000
        0000000000000000000000000000000000000000000000000000000000000000
        00CED3D600008486008486008400008400008400008400008400008400008400
        008400008400008400008400000000000000848600FFFFFF8486008486008486
        0084860084860084860084860084860084860084860084000000000000008486
        00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
        00008400000000000000848600FFFFFF84860084860084860084860084860084
        86008486008486008486008486008400000000000000848600FFFF0084860000
        0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
        0000848600FFFFFF848600848600848600848600848600848600848600848600
        8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
        C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
        000000000000848600FFFF000000000000000000000000000000000000000000
        000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
        00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
        D684860084860084860084860084860084860084860084860084860084860084
        8600848600CED3D60000}
      PopupBorder = pbFrame3D
    end
    object EdCheque: TdxDBCalcEdit
      Left = 64
      Top = 225
      Width = 95
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
      OnEnter = edHistoricoEnter
      OnExit = edHistoricoExit
      OnKeyDown = DataKeyDown
      DataField = 'CHEQUE'
      DataSource = DataSource
      ButtonGlyph.Data = {
        46020000424D460200000000000036000000280000000E0000000C0000000100
        1800000000001002000000000000000000000000000000000000CED3D6000000
        0000000000000000000000000000000000000000000000000000000000000000
        00CED3D600008486008486008400008400008400008400008400008400008400
        008400008400008400008400000000000000848600FFFFFF8486008486008486
        0084860084860084860084860084860084860084860084000000000000008486
        00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
        00008400000000000000848600FFFFFF84860084860084860084860084860084
        86008486008486008486008486008400000000000000848600FFFF0084860000
        0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
        0000848600FFFFFF848600848600848600848600848600848600848600848600
        8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
        C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
        000000000000848600FFFF000000000000000000000000000000000000000000
        000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
        00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
        D684860084860084860084860084860084860084860084860084860084860084
        8600848600CED3D60000}
      PopupBorder = pbFrame3D
    end
    object EdCartao: TdxDBCalcEdit
      Left = 64
      Top = 251
      Width = 95
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
      OnEnter = edHistoricoEnter
      OnExit = edHistoricoExit
      OnKeyDown = DataKeyDown
      DataField = 'CARTAO'
      DataSource = DataSource
      ButtonGlyph.Data = {
        46020000424D460200000000000036000000280000000E0000000C0000000100
        1800000000001002000000000000000000000000000000000000CED3D6000000
        0000000000000000000000000000000000000000000000000000000000000000
        00CED3D600008486008486008400008400008400008400008400008400008400
        008400008400008400008400000000000000848600FFFFFF8486008486008486
        0084860084860084860084860084860084860084860084000000000000008486
        00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
        00008400000000000000848600FFFFFF84860084860084860084860084860084
        86008486008486008486008486008400000000000000848600FFFF0084860000
        0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
        0000848600FFFFFF848600848600848600848600848600848600848600848600
        8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
        C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
        000000000000848600FFFF000000000000000000000000000000000000000000
        000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
        00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
        D684860084860084860084860084860084860084860084860084860084860084
        8600848600CED3D60000}
      PopupBorder = pbFrame3D
    end
    object EdTicket: TdxDBCalcEdit
      Left = 64
      Top = 277
      Width = 95
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 7
      OnEnter = edHistoricoEnter
      OnExit = edHistoricoExit
      OnKeyDown = DataKeyDown
      DataField = 'TICKET'
      DataSource = DataSource
      ButtonGlyph.Data = {
        46020000424D460200000000000036000000280000000E0000000C0000000100
        1800000000001002000000000000000000000000000000000000CED3D6000000
        0000000000000000000000000000000000000000000000000000000000000000
        00CED3D600008486008486008400008400008400008400008400008400008400
        008400008400008400008400000000000000848600FFFFFF8486008486008486
        0084860084860084860084860084860084860084860084000000000000008486
        00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
        00008400000000000000848600FFFFFF84860084860084860084860084860084
        86008486008486008486008486008400000000000000848600FFFF0084860000
        0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
        0000848600FFFFFF848600848600848600848600848600848600848600848600
        8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
        C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
        000000000000848600FFFF000000000000000000000000000000000000000000
        000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
        00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
        D684860084860084860084860084860084860084860084860084860084860084
        8600848600CED3D60000}
      PopupBorder = pbFrame3D
    end
    object Panel2: TPanel
      Left = 2
      Top = 383
      Width = 628
      Height = 40
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 9
      object RzBitBtn1: TcxButton
        Left = 264
        Top = 3
        Width = 91
        Height = 36
        Cursor = crHandPoint
        Action = ActImprimir
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
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
      object RzBitBtn2: TcxButton
        Left = 3
        Top = 3
        Width = 91
        Height = 36
        Cursor = crHandPoint
        Action = ActOk
        Cancel = True
        Caption = '&Ok ( F12 )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555555555555555555555555555555555555555FF55555555555559055555
          55555555577FF5555555555599905555555555557777F5555555555599905555
          555555557777FF5555555559999905555555555777777F555555559999990555
          5555557777777FF5555557990599905555555777757777F55555790555599055
          55557775555777FF5555555555599905555555555557777F5555555555559905
          555555555555777FF5555555555559905555555555555777FF55555555555579
          05555555555555777FF5555555555557905555555555555777FF555555555555
          5990555555555555577755555555555555555555555555555555}
        NumGlyphs = 2
      end
      object RzBitBtn3: TcxButton
        Left = 355
        Top = 3
        Width = 128
        Height = 36
        Cursor = crHandPoint
        Action = ActSelecionaContas
        Caption = 'Seleciona Contas ( F8 )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Glyph.Data = {
          9E050000424D9E05000000000000360400002800000012000000120000000100
          0800000000006801000000000000000000000001000000000000000000009484
          7B00948C8C00A5948C00A5949400A59C9400B5A59400A5A59C00ADA59C00B5A5
          9C00A5A5A500B5ADA500BDADA500ADADAD00B5ADAD00B5B5AD00CEBDAD00D6BD
          AD00B5B5B500BDB5B500D6BDB500D6C6B500BDBDBD00C6BDBD00C6C6BD00D6C6
          BD00C6C6C600CEC6C600E7D6C600CECECE00DED6CE00E7D6CE00F7DECE00DED6
          D600E7DED600F7DED600F7E7D600DEDEDE00EFE7DE00F7E7DE00F7EFDE00E7E7
          E700F7EFE700FFF7EF00F7F7F700FFF7F700FFFFF700FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001D1D1D1D1D1D
          1D1D1D1D1D1D1D1D1D1D1D1D00001D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D
          00001D1D1D1D1B170B0301030B171B1D1D1D1D1D00001D1D1D1A0E0B191C201C
          100609181D1D1D1D00001D1D1A0E1E2A2727272423201008181D1D1D00001D1D
          12212B2A2A2A002A27242014091B1D1D00001D1A162D2D2D2D0000002A2A2420
          09171D1D00001D16252F2F2F00002F00002B2A27150B1D1D00001D0D2C2F2F00
          002F2F2F00002A2A1F051D1D00001D0A2F2F2F2F2F2F002F2F2D2B2A27021D1D
          00001D122C2F2F2F2F0000002F2E2D2B26071D1D00001D1A252F2F2F00002F00
          002F2D2D1E131D1D00001D1D1A2F2F00002F2F2F00002F2F161A1D1D00001D1D
          1A292F2F2F2F2F2F2F2F2F25161D1D1D00001D1D1D16292F2F2F2F2F2F2F2512
          1A1D1D1D00001D1D1D1D1A1D252C2F2C251A161D1D1D1D1D00001D1D1D1D1D1D
          1A120D121A1A1D1D1D1D1D1D00001D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D
          0000}
      end
      object RzBitBtn4: TcxButton
        Left = 483
        Top = 3
        Width = 135
        Height = 36
        Cursor = crHandPoint
        Action = ActMarca
        Caption = 'Marcar para Baixa ( F11 )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        Glyph.Data = {
          9E050000424D9E05000000000000360400002800000012000000120000000100
          0800000000006801000000000000000000000001000000000000000000009484
          7B00948C8C00A5948C00A5949400A59C9400B5A59400A5A59C00ADA59C00B5A5
          9C00A5A5A500B5ADA500BDADA500ADADAD00B5ADAD00B5B5AD00CEBDAD00D6BD
          AD00B5B5B500BDB5B500D6BDB500D6C6B500BDBDBD00C6BDBD00C6C6BD00D6C6
          BD00C6C6C600CEC6C600E7D6C600CECECE00DED6CE00E7D6CE00F7DECE00DED6
          D600E7DED600F7DED600F7E7D600DEDEDE00EFE7DE00F7E7DE00F7EFDE00E7E7
          E700F7EFE700FFF7EF00F7F7F700FFF7F700FFFFF700FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001D1D1D1D1D1D
          1D1D1D1D1D1D1D1D1D1D1D1D00001D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D
          00001D1D1D1D1B170B0301030B171B1D1D1D1D1D00001D1D1D1A0E0B191C201C
          100609181D1D1D1D00001D1D1A0E1E2A2727272423201008181D1D1D00001D1D
          12212B2A2A2A002A27242014091B1D1D00001D1A162D2D2D2D0000002A2A2420
          09171D1D00001D16252F2F2F00002F00002B2A27150B1D1D00001D0D2C2F2F00
          002F2F2F00002A2A1F051D1D00001D0A2F2F2F2F2F2F002F2F2D2B2A27021D1D
          00001D122C2F2F2F2F0000002F2E2D2B26071D1D00001D1A252F2F2F00002F00
          002F2D2D1E131D1D00001D1D1A2F2F00002F2F2F00002F2F161A1D1D00001D1D
          1A292F2F2F2F2F2F2F2F2F25161D1D1D00001D1D1D16292F2F2F2F2F2F2F2512
          1A1D1D1D00001D1D1D1D1A1D252C2F2C251A161D1D1D1D1D00001D1D1D1D1D1D
          1A120D121A1A1D1D1D1D1D1D00001D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D
          0000}
      end
      object BtnDesdobrar: TcxButton
        Left = 94
        Top = 3
        Width = 170
        Height = 36
        Cursor = crHandPoint
        Action = ActReiniciar
        Cancel = True
        Caption = 'Desdobramento ( F9 )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888800008088877777777777778800008088444444444444478800008088
          4FFFFFFFFFFF4788000080004FFFFFFFFFFF4788000080884FFFFFFFFFFF4788
          0000808844444444444448880000808888888888888888880000808888880000
          000008880000808800000FBFBFBF088800008088088800000000088800008088
          08888888888888880000808808880000000008880000800000000FBFBFBF0888
          0000808888880000000008880000808888888888888888880000808800000000
          08888888000080000FBFBFBF0888888800008088000000000888888800008888
          88888888888888880000}
      end
    end
    object dxDBEdit1: TdxDBEdit
      Left = 80
      Top = 318
      Width = 65
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 10
      OnKeyDown = DataKeyDown
      DataField = 'CODIGO'
      DataSource = DataSource
    end
    object GRID: TdxDBGrid
      Left = 358
      Top = 11
      Width = 269
      Height = 334
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CODIGO'
      SummaryGroups = <>
      SummarySeparator = ', '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnExit = GRIDExit
      OnKeyDown = GRIDKeyDown
      AutoExpandOnSearch = False
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = DsReceber
      Filter.Criteria = {00000000}
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoPartialLoad, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      object GRIDSELECIONADO: TdxDBGridCheckColumn
        Caption = 'S'
        Width = 20
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = GRIDSELECIONADOCustomDrawCell
        FieldName = 'SELECIONADO'
        ValueChecked = 'S'
        ValueGrayed = 'N'
        ValueUnchecked = 'N'
      end
      object GRIDCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'd'
        Width = 23
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = GRIDSELECIONADOCustomDrawCell
        FieldName = 'CODIGO'
      end
      object GRIDVENCIMENTO: TdxDBGridDateColumn
        Width = 95
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = GRIDSELECIONADOCustomDrawCell
        FieldName = 'DT_VENCTO'
      end
      object GRIDDOCUMENTO: TdxDBGridMaskColumn
        Width = 110
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = GRIDSELECIONADOCustomDrawCell
        FieldName = 'DOCTO'
      end
      object GRIDTOTAL: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = GRIDSELECIONADOCustomDrawCell
        FieldName = 'Total'
      end
      object GRIDPARCELA: TdxDBGridMaskColumn
        Width = 40
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = GRIDSELECIONADOCustomDrawCell
        FieldName = 'PARCELA'
      end
      object GRIDHISTORICO: TdxDBGridMaskColumn
        Width = 364
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = GRIDSELECIONADOCustomDrawCell
        FieldName = 'HISTORICO'
      end
      object GRIDLANCAMENTO: TdxDBGridDateColumn
        Width = 65
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = GRIDSELECIONADOCustomDrawCell
        FieldName = 'DT_LANCTO'
      end
      object GRIDVALOR: TdxDBGridMaskColumn
        Width = 103
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = GRIDSELECIONADOCustomDrawCell
        FieldName = 'VALOR'
      end
      object GRIDPARCIAL: TdxDBGridColumn
        Width = 118
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = GRIDSELECIONADOCustomDrawCell
        FieldName = 'VLR_PARCIAL'
      end
      object GRIDDESCONTOS: TdxDBGridColumn
        Width = 118
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = GRIDSELECIONADOCustomDrawCell
        FieldName = 'DESCONTOS'
      end
      object GRIDJUROS: TdxDBGridColumn
        Width = 118
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = GRIDSELECIONADOCustomDrawCell
        FieldName = 'JUROS_REC'
      end
      object GRIDTIPO: TdxDBGridColumn
        Width = 59
        BandIndex = 0
        RowIndex = 0
        OnCustomDrawCell = GRIDSELECIONADOCustomDrawCell
        FieldName = 'TIPO_DOCTO'
      end
    end
    object dxDBCalcEdit1: TdxDBCalcEdit
      Left = 64
      Top = 174
      Width = 95
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 12
      OnEnter = edHistoricoEnter
      OnExit = edHistoricoExit
      OnKeyDown = DataKeyDown
      DataField = 'RECEBIDAS'
      DataSource = DataSource
      ButtonGlyph.Data = {
        46020000424D460200000000000036000000280000000E0000000C0000000100
        1800000000001002000000000000000000000000000000000000CED3D6000000
        0000000000000000000000000000000000000000000000000000000000000000
        00CED3D600008486008486008400008400008400008400008400008400008400
        008400008400008400008400000000000000848600FFFFFF8486008486008486
        0084860084860084860084860084860084860084860084000000000000008486
        00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
        00008400000000000000848600FFFFFF84860084860084860084860084860084
        86008486008486008486008486008400000000000000848600FFFF0084860000
        0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
        0000848600FFFFFF848600848600848600848600848600848600848600848600
        8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
        C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
        000000000000848600FFFF000000000000000000000000000000000000000000
        000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
        00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
        D684860084860084860084860084860084860084860084860084860084860084
        8600848600CED3D60000}
      PopupBorder = pbFrame3D
    end
    object Panel1: TPanel
      Left = 2
      Top = 8
      Width = 353
      Height = 89
      TabOrder = 0
      OnExit = Panel1Exit
      object b2: TBevel
        Left = 6
        Top = 30
        Width = 174
        Height = 2
        Shape = bsTopLine
      end
      object Label5: TcxLabel
        Left = 23
        Top = 63
        Caption = 'Cliente'
        ParentFont = False
        Transparent = True
      end
      object LblTitulo: TcxLabel
        Left = 6
        Top = 3
        Caption = 'Fatura no Caixa'
        ParentFont = False
        Transparent = True
      end
      object Label7: TcxLabel
        Left = 143
        Top = 37
        Caption = 'Parcelas'
        ParentFont = False
        Transparent = True
      end
      object Label8: TcxLabel
        Left = 261
        Top = 37
        Caption = 'Intervalo'
        ParentFont = False
        Transparent = True
      end
      object dxDBEdit2: TdxDBEdit
        Left = 124
        Top = 60
        Width = 226
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 4
        OnKeyDown = DataKeyDown
        DataField = 'NOME'
        DataSource = DataSource
      end
      object CkAVista: TRadioButton
        Left = 188
        Top = 11
        Width = 62
        Height = 17
        Caption = #193' Vista'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnClick = CkAVistaClick
        OnEnter = edHistoricoEnter
        OnExit = edHistoricoExit
        OnKeyDown = DataKeyDown
      end
      object CkPrazo: TRadioButton
        Left = 274
        Top = 11
        Width = 66
        Height = 17
        Caption = #193' Prazo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = CkPrazoClick
        OnEnter = edHistoricoEnter
        OnExit = edHistoricoExit
        OnKeyDown = DataKeyDown
      end
      object CMBpessoa: TdxDBButtonEdit
        Left = 62
        Top = 60
        Width = 62
        Enabled = False
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
        OnEnter = edHistoricoEnter
        OnExit = edHistoricoExit
        OnKeyDown = DataKeyDown
        DataField = 'PESSOA_FJ'
        DataSource = DataSource
        Buttons = <
          item
            Default = True
          end>
        ClickKey = 40
        OnButtonClick = CMBpessoaButtonClick
        ExistButtons = True
      end
      object Parcelas: TdxSpinEdit
        Left = 196
        Top = 34
        Width = 33
        Enabled = False
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
        OnEnter = edHistoricoEnter
        OnExit = edHistoricoExit
        OnKeyDown = DataKeyDown
        Value = 1.000000000000000000
      end
      object Intervalo: TdxSpinEdit
        Left = 313
        Top = 34
        Width = 36
        Enabled = False
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
        OnEnter = edHistoricoEnter
        OnExit = edHistoricoExit
        OnKeyDown = DataKeyDown
        Value = 30.000000000000000000
      end
    end
  end
  object Actions: TActionList
    Left = 433
    Top = 100
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActOk: TAction
      Caption = '&Ok'
      ShortCut = 123
      OnExecute = ActOkExecute
    end
    object ActCalculadora: TAction
      Caption = 'ActCalculadora'
      ShortCut = 121
      OnExecute = ActCalculadoraExecute
    end
    object ActImprimir: TAction
      Caption = 'Imprimir'
      ShortCut = 16464
      OnExecute = ActImprimirExecute
    end
    object ActSelecionaContas: TAction
      Caption = 'Seleciona Contas'
      ShortCut = 119
      OnExecute = ActSelecionaContasExecute
    end
    object ActMarca: TAction
      Caption = 'Marcar para Baixa'
      ShortCut = 122
      OnExecute = ActMarcaExecute
    end
    object ActReiniciar: TAction
      Caption = 'Reiniciar o Desdobramento'
      ShortCut = 120
      OnExecute = ActReiniciarExecute
    end
    object VisualizarVenda: TAction
      Caption = 'Visualizar a Venda'
      ShortCut = 13
    end
  end
  object DsParcelas: TDataSource
    Left = 498
    Top = 47
  end
  object DataSource: TDataSource
    Left = 496
    Top = 104
  end
  object DsReceber: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.VerReceber
    Left = 432
    Top = 48
  end
end
