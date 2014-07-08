object FrmConsultaTroca: TFrmConsultaTroca
  Left = 10
  Top = 113
  BorderStyle = bsDialog
  Caption = ' Consulta Troca'
  ClientHeight = 492
  ClientWidth = 742
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = ActFecharExecute
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TcxLabel
    Left = 223
    Top = 462
    Caption = 'Tipo Documento'
    ParentFont = False
    Transparent = True
  end
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 742
    Height = 452
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 0
    object Image1: TImage
      Left = 8
      Top = 2
      Width = 32
      Height = 32
      AutoSize = True
      Picture.Data = {
        055449636F6E0000010001002020000100000000A80800001600000028000000
        2000000040000000010008000000000080040000000000000000000000000000
        0000000000000000000080000080000000808000800000008000800080800000
        C0C0C000C0DCC000F0CAA6000020400000206000002080000020A0000020C000
        0020E00000400000004020000040400000406000004080000040A0000040C000
        0040E00000600000006020000060400000606000006080000060A0000060C000
        0060E00000800000008020000080400000806000008080000080A0000080C000
        0080E00000A0000000A0200000A0400000A0600000A0800000A0A00000A0C000
        00A0E00000C0000000C0200000C0400000C0600000C0800000C0A00000C0C000
        00C0E00000E0000000E0200000E0400000E0600000E0800000E0A00000E0C000
        00E0E00040000000400020004000400040006000400080004000A0004000C000
        4000E00040200000402020004020400040206000402080004020A0004020C000
        4020E00040400000404020004040400040406000404080004040A0004040C000
        4040E00040600000406020004060400040606000406080004060A0004060C000
        4060E00040800000408020004080400040806000408080004080A0004080C000
        4080E00040A0000040A0200040A0400040A0600040A0800040A0A00040A0C000
        40A0E00040C0000040C0200040C0400040C0600040C0800040C0A00040C0C000
        40C0E00040E0000040E0200040E0400040E0600040E0800040E0A00040E0C000
        40E0E00080000000800020008000400080006000800080008000A0008000C000
        8000E00080200000802020008020400080206000802080008020A0008020C000
        8020E00080400000804020008040400080406000804080008040A0008040C000
        8040E00080600000806020008060400080606000806080008060A0008060C000
        8060E00080800000808020008080400080806000808080008080A0008080C000
        8080E00080A0000080A0200080A0400080A0600080A0800080A0A00080A0C000
        80A0E00080C0000080C0200080C0400080C0600080C0800080C0A00080C0C000
        80C0E00080E0000080E0200080E0400080E0600080E0800080E0A00080E0C000
        80E0E000C0000000C0002000C0004000C0006000C0008000C000A000C000C000
        C000E000C0200000C0202000C0204000C0206000C0208000C020A000C020C000
        C020E000C0400000C0402000C0404000C0406000C0408000C040A000C040C000
        C040E000C0600000C0602000C0604000C0606000C0608000C060A000C060C000
        C060E000C0800000C0802000C0804000C0806000C0808000C080A000C080C000
        C080E000C0A00000C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000
        C0A0E000C0C00000C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00
        A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
        FFFFFF000000000000000000000000000000A4A4A4A4000000A4A4A400000000
        00000000000000000000000000000000A4A4FFFF00009E9E0D00A4A4A4000000
        0000000000000000000000000000A4A4FFFF00009E9E9E9E0D0100A4A4A40000
        0000000000000000000000000000000000009E9E9E9E9E9E0D0D0100A4A4A400
        000000000000000000000000A4A4A4A4000000009E9E9E9E0D0D010D00A4A4A4
        00000000000000000000000000A4A4A4009E9E9E00009E9E0D0D010D0D00A4A4
        A40000000000000000000000FF00A4A4009E9E9E9E9E00000D0D010D0D0100A4
        A4A4000000000000000000FFF6FF00A4009E9E9E9E9E9E9E00000D0D0D0100A4
        0000000000000000000000FFF6FFFF00009E9E9E9E9E9E9E0D0D00000D010000
        00000000000000000000FFFFF6F6F6FF009E9E9E9E9EFFFFAF0D010D000D0000
        00000000000000000000BFBFF6F6F6F6009E9E9EFFFFAFAFAFAF0D010D000000
        000000000000000000FFBFBFF6F6F6F6009EFFFFAFAFAFAFAFAFAF0D010D0000
        000000000000000000FFBFBFF6F6F6F6F600AFAFAFAFAFAFAFAFAFAF0D010000
        0000000000000000FFBFBFBFF65B5BF6F6F600AFAFAFAFAFAFAFAFAFAF0D0000
        0000000000000000FFBFBFBFF65B5BF6F6F6F600AFAFAFAFAFAFAFAFAFAF0000
        00000000000000FFFFBFBFBF5B5B5B5BF6F6F6F600AFAFAFAFAFAFAF00000000
        00000000000000FBFBBFBFBF5BADADB6B6B6F6000000AFAFAFAF000092000000
        000000000000FFFBFBBF5B5B5B5B5BB6F6F6F600EDED00AF0000929292000000
        000000000000FFFBFBBF5B5B5B5B5BB6F6F600EDEDEDED00EDED929292000000
        0000000000FFFBFBFBBF5B5BADB6B6B6F6F600EDEDEDEDEDEDED929292000000
        000000000000FFFBFBBFBFBF5BB6B6F6F60000EDEDEDEDEDEDED929292000000
        00000000000000FBFBBFBFBF5BB6B6F6F60000EDEDEDEDEDFFFF929292000000
        0000000000000000FFBFBFBFF6B6B6F6000000EDEDEDFFFF0909090992000000
        000000000000000000FFBFBFF6F6F6F6000000EDFFFF92929292929209000000
        00000000000000000000BFBFF6F6F600000000FF095B00000000920000000000
        0000000000000000000000FFF6F6F6000000000009005B5B525B000000000000
        000000000000000000000000FFF60000000000000052F7F7F75B520000000000
        00000000000000000000000000F600000000000049F7080807F7520000000000
        00000000000000000000000000000000000000000008FFFF08F75B0000000000
        00000000000000000000000000000000000000004908FFFF08F7520000000000
        000000000000000000000000000000000000000000490807F752000000000000
        0000000000000000000000000000000000000000000000000052000000000000
        00000000FFFC00FFFFF0007FFFC0003FFC00001FF300000FEF000007DE000003
        DC00000FDC00001FD800001FD800001FD000001FE000000FE000000FE0000017
        C0000037C000003B8000003B8000003B0000003B8000003BC0000037E0040037
        F004000FF80C003FFC0E01FFFE1F00FFFF1F00FFFFBF00FFFFFF00FFFFFF81FF
        FFFFC3FF}
      Transparent = True
    end
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 184
      Height = 2
      Shape = bsTopLine
    end
    object Bevel1: TBevel
      Left = 8
      Top = 321
      Width = 546
      Height = 1
      Shape = bsTopLine
    end
    object Label1: TcxLabel
      Left = 33
      Top = 49
      Caption = 'C'#243'digo'
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 276
      Top = 45
      Caption = 'Data'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 33
      Top = 74
      Caption = 'Cliente'
      ParentFont = False
      Transparent = True
    end
    object Label5: TcxLabel
      Left = 396
      Top = 47
      Caption = 'Vendedor'
      ParentFont = False
      Transparent = True
    end
    object Label7: TcxLabel
      Left = 423
      Top = 72
      Caption = 'Obs'
      ParentFont = False
      Transparent = True
    end
    object LblTitulo: TcxLabel
      Left = 48
      Top = 6
      Caption = 'Consulta Troca Efetuada'
      ParentFont = False
      Transparent = True
    end
    object Label34: TcxLabel
      Left = 262
      Top = 352
      Caption = 'Entrada'
      ParentFont = False
      Transparent = True
    end
    object Label29: TcxLabel
      Left = 50
      Top = 379
      Caption = 'Tipo Documento'
      ParentFont = False
      Transparent = True
    end
    object Label9: TcxLabel
      Left = 88
      Top = 405
      Caption = 'Dinheiro'
      ParentFont = False
      Transparent = True
    end
    object Label11: TcxLabel
      Left = 263
      Top = 405
      Caption = 'Cheque'
      ParentFont = False
      Transparent = True
    end
    object Label12: TcxLabel
      Left = 94
      Top = 431
      Caption = 'Cart'#227'o'
      ParentFont = False
      Transparent = True
    end
    object Label13: TcxLabel
      Left = 272
      Top = 431
      Caption = 'Ticket'
      ParentFont = False
      Transparent = True
    end
    object Label8: TcxLabel
      Left = 40
      Top = 327
      Caption = 'Forma Pagamento'
      ParentFont = False
      Transparent = True
    end
    object EdDocumento: TdxDBEdit
      Left = 73
      Top = 43
      Width = 94
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
      Style.HotTrack = True
      TabOrder = 0
      DataField = 'CODIGO'
      DataSource = DsTroca
      ReadOnly = False
      StoredValues = 64
    end
    object cbFrete: TdxDBCheckEdit
      Left = 174
      Top = 43
      Width = 70
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      Alignment = taRightJustify
      Caption = 'Fechada'
      DataField = 'FECHADO'
      DataSource = DsTroca
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      StoredValues = 1
    end
    object EdDataNota: TdxDBDateEdit
      Left = 306
      Top = 42
      Width = 87
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
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      TabOrder = 2
      Alignment = taLeftJustify
      DataField = 'DATA'
      DataSource = DsTroca
      ReadOnly = False
      DateOnError = deToday
      DateValidation = True
      SaveTime = False
      UseEditMask = True
      StoredValues = 69
    end
    object dxDBEdit3: TdxDBEdit
      Left = 126
      Top = 68
      Width = 267
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
      DataField = 'NOME'
      DataSource = DsTroca
    end
    object EdPessoa: TdxDBEdit
      Left = 73
      Top = 68
      Width = 54
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
      DataField = 'PESSOA_FJ'
      DataSource = DsTroca
    end
    object EdVendedor: TdxDBEdit
      Left = 449
      Top = 42
      Width = 54
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
      DataField = 'VENDEDOR'
      DataSource = DsTroca
    end
    object dxDBEdit2: TdxDBEdit
      Left = 449
      Top = 67
      Width = 287
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
      TabOrder = 6
      DataField = 'OBSERVACAO'
      DataSource = DsTroca
    end
    object dxDBEdit4: TdxDBEdit
      Left = 502
      Top = 42
      Width = 234
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
      TabOrder = 7
      DataField = 'NOME_VENDEDOR'
      DataSource = DsTroca
    end
    object GridItens: TdxDBGrid
      Left = 4
      Top = 120
      Width = 576
      Height = 201
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'PRODUTO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 8
      DataSource = dsProdutos
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsCustomize = []
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
      object GridItensTipo: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPO'
      end
      object GridItensPRODUTO: TdxDBGridMaskColumn
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRODUTO'
      end
      object GridItensNome_Produto: TdxDBGridLookupColumn
        Caption = 'Nome'
        TabStop = False
        Width = 223
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME_PRODUTO'
      end
      object GridItensQUANTIDADE: TdxDBGridMaskColumn
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
      end
      object GridItensPRC_UNITARIO: TdxDBGridMaskColumn
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRC_UNITARIO'
      end
      object GridItensDesconto: TdxDBGridColumn
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTO'
      end
      object GridItensTotal: TdxDBGridColumn
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Total'
      end
    end
    object Panel3: TPanel
      Left = 580
      Top = 120
      Width = 156
      Height = 200
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 9
      object Label25: TcxLabel
        Left = 5
        Top = 2
        Caption = 'Total Ent'
        ParentFont = False
        Transparent = True
      end
      object Label27: TcxLabel
        Left = 124
        Top = 39
        Caption = 'Total'
        ParentFont = False
        Transparent = True
      end
      object Label6: TcxLabel
        Left = 89
        Top = 2
        Caption = 'Desc/Acr'#233's'
        ParentFont = False
        Transparent = True
      end
      object Label21: TcxLabel
        Left = 5
        Top = 73
        Caption = 'Total Sai'
        ParentFont = False
        Transparent = True
      end
      object Label22: TcxLabel
        Left = 87
        Top = 74
        Caption = 'Desc/Acr'#233's'
        ParentFont = False
        Transparent = True
      end
      object Label23: TcxLabel
        Left = 123
        Top = 112
        Caption = 'Total'
        ParentFont = False
        Transparent = True
      end
      object Label24: TcxLabel
        Left = 111
        Top = 156
        Caption = 'Liquido'
        ParentFont = False
        Transparent = True
      end
      object dxDBEdit6: TdxDBEdit
        Left = 3
        Top = 17
        Width = 75
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
        TabStop = False
        DataField = 'TOTAL'
        DataSource = DsTroca
        ReadOnly = True
        StoredValues = 64
      end
      object dxDBEdit8: TdxDBEdit
        Left = 79
        Top = 52
        Width = 75
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
        TabStop = False
        DataField = 'Geral'
        DataSource = DsTroca
        ReadOnly = True
        StoredValues = 64
      end
      object dxDBEdit7: TdxDBEdit
        Left = 78
        Top = 17
        Width = 76
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
        TabStop = False
        DataField = 'DESC_ACRESC'
        DataSource = DsTroca
        ReadOnly = True
        StoredValues = 64
      end
      object dxDBEdit25: TdxDBEdit
        Left = 3
        Top = 88
        Width = 75
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
        TabStop = False
        DataField = 'TOTAL_2'
        DataSource = DsTroca
        ReadOnly = True
        StoredValues = 64
      end
      object dxDBEdit26: TdxDBEdit
        Left = 78
        Top = 88
        Width = 76
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
        TabStop = False
        DataField = 'DESC_ACRESC_2'
        DataSource = DsTroca
        ReadOnly = True
        StoredValues = 64
      end
      object dxDBEdit27: TdxDBEdit
        Left = 79
        Top = 125
        Width = 75
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
        TabStop = False
        DataField = 'Geral2'
        DataSource = DsTroca
        ReadOnly = True
        StoredValues = 64
      end
      object dxDBEdit28: TdxDBEdit
        Left = 79
        Top = 169
        Width = 75
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
        TabStop = False
        DataField = 'Liquido'
        DataSource = DsTroca
        ReadOnly = True
        StoredValues = 64
      end
    end
    object GRIDFATURAMENTO: TDBGrid
      Left = 471
      Top = 324
      Width = 263
      Height = 122
      TabStop = False
      BorderStyle = bsNone
      DataSource = DsParcelas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgRowLines, dgTabs, dgCancelOnExit]
      ParentFont = False
      TabOrder = 10
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = 8404992
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'VENCTO'
          Title.Caption = 'Vencimento'
          Width = 85
          Visible = True
        end
        item
          Color = clBtnFace
          Expanded = False
          FieldName = 'VALOR'
          Width = 85
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PARCELA'
          Width = 65
          Visible = True
        end>
    end
    object dxDBEdit12: TdxDBEdit
      Left = 144
      Top = 374
      Width = 94
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
      Style.HotTrack = True
      TabOrder = 11
      DataField = 'NOME_DOCUMENTO'
      DataSource = DsTroca
      ReadOnly = False
      StoredValues = 64
    end
    object dxDBEdit13: TdxDBEdit
      Left = 310
      Top = 349
      Width = 76
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
      Style.HotTrack = True
      TabOrder = 12
      DataField = 'ENTRADA'
      DataSource = DsTroca
      ReadOnly = False
      StoredValues = 64
    end
    object dxDBEdit15: TdxDBEdit
      Left = 144
      Top = 399
      Width = 94
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
      Style.HotTrack = True
      TabOrder = 13
      DataField = 'DINHEIRO'
      DataSource = DsTroca
      ReadOnly = False
      StoredValues = 64
    end
    object dxDBEdit16: TdxDBEdit
      Left = 310
      Top = 399
      Width = 76
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
      Style.HotTrack = True
      TabOrder = 14
      DataField = 'CHEQUE'
      DataSource = DsTroca
      ReadOnly = False
      StoredValues = 64
    end
    object dxDBEdit17: TdxDBEdit
      Left = 144
      Top = 424
      Width = 94
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
      Style.HotTrack = True
      TabOrder = 15
      DataField = 'CARTAO'
      DataSource = DsTroca
      ReadOnly = False
      StoredValues = 64
    end
    object dxDBEdit19: TdxDBEdit
      Left = 310
      Top = 424
      Width = 76
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
      Style.HotTrack = True
      TabOrder = 16
      DataField = 'TICKET'
      DataSource = DsTroca
      ReadOnly = False
      StoredValues = 64
    end
    object dxDBEdit18: TdxDBEdit
      Left = 144
      Top = 324
      Width = 241
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
      Style.HotTrack = True
      TabOrder = 17
      DataField = 'NOME_FORMA'
      DataSource = DsTroca
      ReadOnly = False
      StoredValues = 64
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 452
    Width = 742
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object RzBitBtn2: TcxButton
      Left = 641
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
      TabOrder = 0
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
  object Actions: TActionList
    Left = 488
    Top = 232
    object ActFechar: TAction
      Caption = '&Fechar'
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
  end
  object dsProdutos: TDataSource
    AutoEdit = False
    DataSet = DmVendas.Consulta_Troca_Itens
    Left = 408
    Top = 232
  end
  object DsTroca: TDataSource
    AutoEdit = False
    DataSet = DmVendas.Consulta_Troca
    Left = 200
    Top = 232
  end
  object DsParcelas: TDataSource
    AutoEdit = False
    DataSet = DmVendas.Consulta_Troca_Parc
    Left = 312
    Top = 240
  end
end
