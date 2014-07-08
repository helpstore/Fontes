object FrmFaturaVenda: TFrmFaturaVenda
  Left = 170
  Top = 146
  Width = 405
  Height = 399
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 397
    Height = 372
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clCaptionText
    TabOrder = 0
    object Shape10: TShape
      Left = 274
      Top = 299
      Width = 115
      Height = 25
      Pen.Color = clBtnShadow
    end
    object Shape9: TShape
      Left = 274
      Top = 275
      Width = 115
      Height = 25
      Pen.Color = clBtnShadow
    end
    object Shape8: TShape
      Left = 274
      Top = 251
      Width = 115
      Height = 25
      Pen.Color = clBtnShadow
    end
    object LblTitulo: TRxLabel
      Left = 6
      Top = 8
      Width = 151
      Height = 23
      Caption = 'Fatura no Caixa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clSilver
      ShadowPos = spRightBottom
    end
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 174
      Height = 2
      Shape = bsTopLine
    end
    object RxLabel1: TRxLabel
      Left = 307
      Top = 10
      Width = 77
      Height = 32
      Caption = '      F10 '#13#10'Calculadora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clSilver
      ShadowPos = spRightBottom
    end
    object Label28: TcxLabel
Transparent = True
      Left = 21
      Top = 46
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Histórico'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TcxLabel
Transparent = True
      Left = 19
      Top = 69
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'Frm Pgto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object BtnForma: TcxButton
      Left = 365
      Top = 67
      Width = 22
      Height = 22
      Cursor = crHandPoint
      Flat = True
      Glyph.Data = {
        06030000424D06030000000000003600000028000000100000000F0000000100
        180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
        0000000000000000000000000000000000000000000000000000000000000000
        00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
        000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
        FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
        000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
        FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
        000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
        FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
        0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
        BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
        FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
        BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
        00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
        00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBF}
      OnClick = BtnFormaClick
    end
    object Label34: TcxLabel
Transparent = True
      Left = 199
      Top = 94
      Width = 38
      Height = 13
      Alignment = taRightJustify
      Caption = 'Entrada'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TcxLabel
Transparent = True
      Left = 8
      Top = 94
      Width = 54
      Height = 13
      Alignment = taRightJustify
      Caption = 'Desc/Acrés'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label29: TcxLabel
Transparent = True
      Left = 21
      Top = 121
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Tipo Doc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label35: TcxLabel
Transparent = True
      Left = 213
      Top = 220
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
    object Label1: TcxLabel
Transparent = True
      Left = 23
      Top = 146
      Width = 39
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dinheiro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TcxLabel
Transparent = True
      Left = 25
      Top = 172
      Width = 37
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cheque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TcxLabel
Transparent = True
      Left = 29
      Top = 198
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cartão'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TcxLabel
Transparent = True
      Left = 34
      Top = 224
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = 'Ticket'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label31: TcxLabel
Transparent = True
      Left = 190
      Top = 258
      Width = 80
      Height = 13
      Caption = 'Total Parcelas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBCoolText2: TDBCoolText
      Left = 311
      Top = 257
      Width = 72
      Height = 13
      ShadowColor = clBtnFace
      ShadowPos = spRightBottom
      Alignment = taRightJustify
      AutoSize = True
      Caption = 'DBCoolText2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowAccelChar = False
      DataField = 'VLR_PARC_LC'
      DataSource = DataSource
    end
    object DBCoolText3: TDBCoolText
      Left = 311
      Top = 281
      Width = 72
      Height = 13
      ShadowColor = clBtnFace
      ShadowPos = spRightBottom
      Alignment = taRightJustify
      AutoSize = True
      Caption = 'DBCoolText3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowAccelChar = False
      DataField = 'Total_Parcelar'
      DataSource = DataSource
    end
    object Label32: TcxLabel
Transparent = True
      Left = 187
      Top = 282
      Width = 83
      Height = 13
      Caption = 'Total Faturado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBCoolText4: TDBCoolText
      Left = 311
      Top = 305
      Width = 72
      Height = 13
      ShadowColor = clBtnFace
      ShadowPos = spRightBottom
      Alignment = taRightJustify
      AutoSize = True
      Caption = 'DBCoolText4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShowAccelChar = False
      DataField = 'Diferenca'
      DataSource = DataSource
    end
    object Label33: TcxLabel
Transparent = True
      Left = 216
      Top = 306
      Width = 54
      Height = 13
      Caption = 'Diferença'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 190
      Top = 243
      Width = 198
      Height = 2
      Shape = bsTopLine
    end
    object edHistorico: TdxDBEdit
      Left = 69
      Top = 41
      Width = 294
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
      OnKeyDown = DataKeyDown
      DataField = 'HISTORICO'
      DataSource = DataSource
    end
    object CmbFormaPgto: TdxDBLookupEdit
      Left = 69
      Top = 66
      Width = 294
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = True
      Style.Shadow = False
      TabOrder = 1
      OnExit = CmbFormaPgtoExit
      OnKeyDown = DataKeyDown
      DataField = 'FORMA_PGTO'
      DataSource = DataSource
      ReadOnly = False
      DropDownWidth = 294
      ClearKey = 46
      ListFieldName = 'NOME'
      Revertable = True
      KeyFieldName = 'CODIGO'
      ListSource = DsForma
      LookupKeyValue = Null
      StoredValues = 64
    end
    object EdEntrada: TdxDBCalcEdit
      Left = 242
      Top = 91
      Width = 121
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
      OnExit = CmbFormaPgtoExit
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
      Left = 69
      Top = 91
      Width = 121
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
      OnExit = CmbFormaPgtoExit
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
    object cmbTipoDocto: TdxDBLookupEdit
      Left = 69
      Top = 116
      Width = 121
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
      DataField = 'TIPO_DOCTO'
      DataSource = DataSource
      ClearKey = 46
      ListFieldName = 'NOME'
      KeyFieldName = 'SIGLA'
      LookupKeyValue = Null
    end
    object CmbLocal: TdxDBLookupEdit
      Left = 242
      Top = 116
      Width = 121
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
      OnKeyDown = DataKeyDown
      DataField = 'LOCAL_COBRANCA'
      DataSource = DataSource
      ClearKey = 46
      ListFieldName = 'NOME'
      KeyFieldName = 'CONTA'
      LookupKeyValue = Null
    end
    object GRIDFATURAMENTO: TDBGrid
      Left = 191
      Top = 142
      Width = 198
      Height = 100
      BorderStyle = bsNone
      DataSource = DsParcelas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgRowLines, dgTabs, dgCancelOnExit]
      ParentFont = False
      TabOrder = 10
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = 8404992
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = GRIDFATURAMENTOEnter
      Columns = <
        item
          Expanded = False
          FieldName = 'VENCTO'
          Title.Caption = 'Vencimento'
          Width = 65
          Visible = True
        end
        item
          Color = clBtnFace
          Expanded = False
          FieldName = 'VALOR'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PARCELA'
          Width = 39
          Visible = True
        end>
    end
    object EdDinheiro: TdxDBCalcEdit
      Left = 69
      Top = 143
      Width = 121
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
      Left = 69
      Top = 169
      Width = 121
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
      Left = 69
      Top = 195
      Width = 121
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 8
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
      Left = 69
      Top = 221
      Width = 121
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 9
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
      Top = 330
      Width = 393
      Height = 40
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 11
      object RzBitBtn1: TcxButton
        Left = 297
        Top = 7
        Width = 91
        Cursor = crHandPoint
        FrameFlat = True
        Caption = '&Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
         
         
        TabOrder = 1
        TextStyle = tsNormal
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
        Left = 6
        Top = 7
        Width = 91
        Cursor = crHandPoint
        Cancel = True
        FrameFlat = True
        Caption = '&Ok ( F12 )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
         
         
        TabOrder = 0
        TextStyle = tsNormal
        Action = ActOk
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
    end
  end
  object Actions: TActionList
    Left = 25
    Top = 156
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
  end
  object DsParcelas: TDataSource
    DataSet = DmVendas.Vendas_Parc
    Left = 26
    Top = 103
  end
  object DataSource: TDataSource
    DataSet = DmVendas.Vendas
    Left = 24
    Top = 208
  end
  object DsForma: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelFormaPgto
    Left = 24
    Top = 256
  end
end
