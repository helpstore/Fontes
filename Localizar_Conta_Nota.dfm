object Frm_Localizar_ContaNota: TFrm_Localizar_ContaNota
  Left = 123
  Top = 98
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = ' Localizar Contas Banc'#225'rias'
  ClientHeight = 347
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 534
    Height = 347
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWindowFrame
    TabOrder = 0
    OnResize = pnlClientResize
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 313
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 8
      Caption = 'Contas Banc'#225'rias'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel1: TcxLabel
      Left = 321
      Top = 8
      Caption = 'Nova Conta'
      Enabled = False
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object BtnBanco: TcxButton
      Left = 504
      Top = 93
      Width = 23
      Height = 25
      Cursor = crHandPoint
      Enabled = False
      TabOrder = 20
      OnClick = BtnBancoClick
      Glyph.Data = {
        06030000424D06030000000000003600000028000000100000000F0000000100
        180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
        0000000000000000000000000000000000000000000000000000000000000000
        00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
        000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
        FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
        FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
        000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
        FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
        0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
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
    end
    object RxLabel2: TcxLabel
      Left = 415
      Top = 125
      Caption = 'Conta'
      Enabled = False
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel3: TcxLabel
      Left = 321
      Top = 120
      Caption = 'Ag'#234'ncia'
      Enabled = False
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel4: TcxLabel
      Left = 321
      Top = 69
      Caption = 'Banco'
      Enabled = False
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel5: TcxLabel
      Left = 321
      Top = 233
      Caption = 'Cheque'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel6: TcxLabel
      Left = 321
      Top = 275
      Caption = 'Pr'#233'-Date'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel7: TcxLabel
      Left = 9
      Top = 171
      Caption = 'Banco'
      Enabled = False
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object BtnBancoTerceiro: TcxButton
      Left = 289
      Top = 196
      Width = 23
      Height = 24
      Cursor = crHandPoint
      Enabled = False
      TabOrder = 27
      OnClick = BtnBancoTerceiroClick
      Glyph.Data = {
        06030000424D06030000000000003600000028000000100000000F0000000100
        180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
        0000000000000000000000000000000000000000000000000000000000000000
        00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
        000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
        FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
        FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
        000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
        FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
        0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
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
    end
    object RxLabel8: TcxLabel
      Left = 9
      Top = 217
      Caption = 'Ag'#234'ncia'
      Enabled = False
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel9: TcxLabel
      Left = 121
      Top = 219
      Caption = 'Conta'
      Enabled = False
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel10: TcxLabel
      Left = 9
      Top = 275
      Caption = 'Cheque'
      Enabled = False
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object BtnConta: TcxButton
      Left = 297
      Top = 12
      Width = 23
      Height = 24
      Cursor = crHandPoint
      TabOrder = 31
      OnClick = BtnContaClick
      Glyph.Data = {
        06030000424D06030000000000003600000028000000100000000F0000000100
        180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
        0000000000000000000000000000000000000000000000000000000000000000
        00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
        000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
        FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
        FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
        000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
        FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
        0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
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
    end
    object RxLabel11: TcxLabel
      Left = 319
      Top = 170
      Caption = 'Dv Cnt'
      Enabled = False
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel12: TcxLabel
      Left = 153
      Top = 170
      Caption = 'Dv Agc'
      Enabled = False
      ParentColor = False
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object GRID: TdxDBGrid
      Left = 6
      Top = 40
      Width = 312
      Height = 132
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CONTA'
      SummaryGroups = <>
      SummarySeparator = ', '
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      AutoExpandOnSearch = False
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = DSource
      Filter.Criteria = {00000000}
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      object GRIDNOME_BANCO: TdxDBGridMaskColumn
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME_BANCO'
      end
      object GRIDAGENCIA: TdxDBGridMaskColumn
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AGENCIA'
      end
      object GRIDCONTA: TdxDBGridMaskColumn
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA'
      end
      object GRIDBANCO: TdxDBGridMaskColumn
        Width = 37
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BANCO'
      end
      object GRIDColumn5: TdxDBGridColumn
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DV_AGENCIA'
      end
      object GRIDColumn6: TdxDBGridColumn
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DV_CONTA'
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 308
      Width = 530
      Height = 37
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 9
      object BTNCANCELA: TcxButton
        Left = 437
        Top = 6
        Width = 89
        Height = 25
        Action = ActCancelar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
          33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
          993337777F777F3377F3393999707333993337F77737333337FF993399933333
          399377F3777FF333377F993339903333399377F33737FF33377F993333707333
          399377F333377FF3377F993333101933399377F333777FFF377F993333000993
          399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
          99333773FF777F777733339993707339933333773FF7FFF77333333999999999
          3333333777333777333333333999993333333333377777333333}
        NumGlyphs = 2
      end
      object lbldados: TcxLabel
        Left = 7
        Top = 10
        AutoSize = False
        Caption = 'Dados Selecionados'
        ParentColor = False
        ParentFont = False
        Transparent = True
        Height = 17
        Width = 306
      end
    end
    object RzBitBtn1: TcxButton
      Left = 321
      Top = 36
      Width = 104
      Height = 32
      Cursor = crHandPoint
      Action = ActNovaConta
      Caption = '&Nova Conta ( F10 )'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        777770000000777777770000000770000000777777770FFFFF07700000007777
        77770FCCCF0770000000777777770FFFFF0770000000777000000FCCCF077000
        0000777077770FFFFF077000000070007CCC0FCCCF0770000000706077770FFF
        FF077000000070607CCC00000007700000007060777770777777700000007060
        7CCC707777747000000070607777707777444000000070600000007777747000
        0000706666607774777470000000700000007777444770000000777777777777
        777770000000}
    end
    object cmbBanco: TdxDBLookupEdit
      Left = 321
      Top = 92
      Width = 184
      Color = clMenu
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = True
      Style.Shadow = False
      TabOrder = 2
      OnEnter = cmbBancoEnter
      OnExit = cmbBancoExit
      OnKeyDown = cmbBancoKeyDown
      DataField = 'BANCO'
      DataSource = DsConta
      ReadOnly = False
      ClearKey = 46
      ListFieldName = 'NOME'
      Revertable = True
      KeyFieldName = 'CODIGO'
      ListSource = DsBanco
      LookupKeyValue = Null
      StoredValues = 64
    end
    object EdConta: TdxDBEdit
      Left = 415
      Top = 147
      Width = 114
      Color = clMenu
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 4
      OnEnter = cmbBancoEnter
      OnExit = cmbBancoExit
      OnKeyDown = cmbBancoKeyDown
      CharCase = ecUpperCase
      DataField = 'CONTA'
      DataSource = DsConta
    end
    object BtnCadastrar: TcxButton
      Left = 437
      Top = 194
      Width = 92
      Height = 25
      Cursor = crHandPoint
      Caption = '&Cadastrar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = BtnCadastrarClick
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
    object EdPredate: TdxDateEdit
      Left = 416
      Top = 272
      Width = 115
      Color = clBtnFace
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 10
      OnEnter = EdPredateEnter
      OnExit = EdChequeExit
      OnKeyDown = cmbBancoKeyDown
      OnKeyPress = EdPredateKeyPress
      ReadOnly = False
      Date = -700000.000000000000000000
      UseEditMask = True
      StoredValues = 68
    end
    object BtnTaerceiro: TcxButton
      Left = 425
      Top = 36
      Width = 103
      Height = 32
      Cursor = crHandPoint
      Action = ActTerceiros
      Caption = 'Chq Terc. (F11)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        777770000000777777770000000770000000777777770FFFFF07700000007777
        77770FCCCF0770000000777777770FFFFF0770000000777000000FCCCF077000
        0000777077770FFFFF077000000070007CCC0FCCCF0770000000706077770FFF
        FF077000000070607CCC00000007700000007060777770777777700000007060
        7CCC707777747000000070607777707777444000000070600000007777747000
        0000706666607774777470000000700000007777444770000000777777777777
        777770000000}
    end
    object CmbBancoTerceiro: TdxLookupEdit
      Left = 9
      Top = 194
      Width = 281
      Color = clMenu
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 12
      OnEnter = cmbBancoEnter
      OnExit = cmbBancoExit
      OnKeyDown = cmbBancoKeyDown
      ListFieldName = 'NOME'
      KeyFieldName = 'CODIGO'
      ListSource = DsBanco
      LookupKeyValue = Null
    end
    object EdContaTerceiro: TdxEdit
      Left = 120
      Top = 240
      Width = 161
      Color = clMenu
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 14
      OnEnter = cmbBancoEnter
      OnExit = cmbBancoExit
      OnKeyDown = cmbBancoKeyDown
    end
    object BtnCadastraTerceiro: TcxButton
      Left = 220
      Top = 274
      Width = 92
      Height = 25
      Cursor = crHandPoint
      Caption = '&Cadastrar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 17
      OnClick = BtnCadastraTerceiroClick
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
    object EdCheque: TdxMaskEdit
      Left = 414
      Top = 232
      Width = 116
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 8
      OnEnter = EdChequeEnter
      OnExit = EdChequeExit
      OnKeyDown = cmbBancoKeyDown
      EditMask = '######-#'
      IgnoreMaskBlank = False
      Text = '      - '
      StoredValues = 4
    end
    object EdAgenciaTerceiro: TdxMaskEdit
      Left = 10
      Top = 240
      Width = 103
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 13
      OnEnter = cmbBancoEnter
      OnExit = EdChequeExit
      OnKeyDown = cmbBancoKeyDown
      EditMask = '####-#'
      IgnoreMaskBlank = False
      Text = '    - '
      StoredValues = 4
    end
    object EDAGENCIA: TdxDBMaskEdit
      Left = 321
      Top = 147
      Width = 94
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.HotTrack = True
      TabOrder = 3
      OnEnter = cmbBancoEnter
      OnExit = cmbBancoExit
      OnKeyDown = cmbBancoKeyDown
      CharCase = ecUpperCase
      DataField = 'AGENCIA'
      DataSource = DsConta
      EditMask = '####-#;1; '
      IgnoreMaskBlank = False
      MaxLength = 6
      StoredValues = 6
    end
    object EDCHEQUETERCEIRO: TdxMaskEdit
      Left = 98
      Top = 272
      Width = 116
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 16
      OnEnter = cmbBancoEnter
      OnExit = cmbBancoExit
      OnKeyDown = cmbBancoKeyDown
      EditMask = '######-#'
      IgnoreMaskBlank = False
      Text = '      - '
      StoredValues = 4
    end
    object EDDVCONTA: TdxDBEdit
      Left = 321
      Top = 192
      Width = 24
      Color = clMenu
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 6
      OnEnter = cmbBancoEnter
      OnExit = cmbBancoExit
      OnKeyDown = cmbBancoKeyDown
      CharCase = ecUpperCase
      DataField = 'DV_CONTA'
      DataSource = DsConta
    end
    object EDDVAGENCIA: TdxDBEdit
      Left = 225
      Top = 168
      Width = 24
      Color = clMenu
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 5
      Visible = False
      OnEnter = cmbBancoEnter
      OnExit = cmbBancoExit
      OnKeyDown = cmbBancoKeyDown
      CharCase = ecUpperCase
      DataField = 'DV_AGENCIA'
      DataSource = DsConta
    end
    object DVCONTATERCEIRO: TdxEdit
      Left = 280
      Top = 240
      Width = 33
      Color = clMenu
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 15
      OnEnter = cmbBancoEnter
      OnExit = cmbBancoExit
      OnKeyDown = cmbBancoKeyDown
    end
  end
  object Act: TActionList
    Left = 220
    Top = 72
    object ActCancelar: TAction
      Caption = 'Cancelar'
      ShortCut = 27
      OnExecute = ActCancelarExecute
    end
    object ActLookup: TAction
      Caption = 'ActLookup'
      ShortCut = 115
      OnExecute = ActLookupExecute
    end
    object ActNovaConta: TAction
      Caption = 'Processar'
      ShortCut = 121
      OnExecute = ActNovaContaExecute
    end
    object ActSelecionar: TAction
      Caption = 'Selecionar'
      OnExecute = ActSelecionarExecute
    end
    object ActTerceiros: TAction
      Caption = 'Terceiros'
      ShortCut = 122
      OnExecute = ActTerceirosExecute
    end
    object ActEnter: TAction
      Caption = 'ActEnter'
      ShortCut = 13
      OnExecute = ActEnterExecute
    end
  end
  object DSource: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelConta
    Left = 272
    Top = 72
  end
  object DsBanco: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelBanco
    Left = 168
    Top = 128
  end
  object DsConta: TDataSource
    AutoEdit = False
    DataSet = DmVendas.Contas_Pessoas
    OnStateChange = DsContaStateChange
    Left = 216
    Top = 128
  end
  object stgFrm_Localizar_ContaNota: TcxPropertiesStore
    Components = <
      item
        Component = GRID
        Properties.Strings = (
          'Align'
          'Anchors'
          'ArrowsColor'
          'AutoExpandOnSearch'
          'AutoSearchColor'
          'AutoSearchTextColor'
          'BandColor'
          'BandFont'
          'BandMaxRowCount'
          'BandRowCount'
          'Bands'
          'BorderStyle'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'CustomizingRowCount'
          'DataSource'
          'DblClkExpanding'
          'DefaultFields'
          'DefaultLayout'
          'DefaultRowHeight'
          'DragCursor'
          'DragMode'
          'Enabled'
          'Filter'
          'FixedBandLineColor'
          'FixedBandLineWidth'
          'Font'
          'GridLineColor'
          'GrIndicatorWidth'
          'GroupNodeColor'
          'GroupNodeTextColor'
          'GroupPanelColor'
          'GroupPanelFontColor'
          'HeaderColor'
          'HeaderFont'
          'HeaderMinRowCount'
          'HeaderPanelMaxRowCount'
          'HeaderPanelRowCount'
          'Height'
          'HelpContext'
          'HideFocusRect'
          'HideSelection'
          'HideSelectionColor'
          'HideSelectionTextColor'
          'HighlightColor'
          'HighlightTextColor'
          'Hint'
          'IndentDesc'
          'IniFileName'
          'IniSectionName'
          'KeyField'
          'Left'
          'LookAndFeel'
          'MaxRowLineCount'
          'Name'
          'Options'
          'OptionsBehavior'
          'OptionsCustomize'
          'OptionsDB'
          'OptionsEx'
          'OptionsView'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PartialLoad'
          'PartialLoadBufferCount'
          'PopupMenu'
          'PreviewFieldName'
          'PreviewFont'
          'PreviewLines'
          'PreviewMaxLength'
          'RegistryPath'
          'RowFooterColor'
          'RowFooterTextColor'
          'RowSeparatorLineWidth'
          'ScrollBars'
          'ShowBands'
          'ShowGrid'
          'ShowGroupPanel'
          'ShowHeader'
          'ShowHiddenInCustomizeBox'
          'ShowHint'
          'ShowNewItemRow'
          'ShowPreviewGrid'
          'ShowRowFooter'
          'ShowSummaryFooter'
          'SimpleCustomizeBox'
          'SummaryGroups'
          'SummarySeparator'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'UseBookmarks'
          'Visible'
          'WaitForExpandNodeTime'
          'Width')
      end
      item
        Component = GRIDAGENCIA
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GRIDBANCO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GRIDColumn5
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GRIDColumn6
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GRIDCONTA
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GRIDNOME_BANCO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end>
    StorageName = 'stgFrm_Localizar_ContaNota'
    Left = 136
    Top = 88
  end
end
