object FrmMalaDireta: TFrmMalaDireta
  Left = 244
  Top = 121
  Width = 648
  Height = 590
  BorderIcons = []
  Caption = 'Mala Direta'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = FrmMain.Pop
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlForm: TPanel
    Left = 0
    Top = 0
    Width = 640
    Height = 563
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clHighlightText
    TabOrder = 0
    object pnlBottom: TPanel
      Left = 2
      Top = 518
      Width = 636
      Height = 43
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object Bevel1: TBevel
        Left = 15
        Top = 0
        Width = 502
        Height = 2
        Shape = bsTopLine
      end
      object BtnLocalizar: TcxButton
        Left = 131
        Top = 9
        Width = 29
        Height = 27
        Cursor = crHandPoint
        Action = ActLocalizar
        TabOrder = 2
        Glyph.Data = {
          36050000424D360500000000000036040000280000000E000000100000000100
          08000000000000010000CA0E0000C30E00000001000000000000000000003300
          00006600000099000000CC000000FF0000000033000033330000663300009933
          0000CC330000FF33000000660000336600006666000099660000CC660000FF66
          000000990000339900006699000099990000CC990000FF99000000CC000033CC
          000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
          0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
          330000333300333333006633330099333300CC333300FF333300006633003366
          33006666330099663300CC663300FF6633000099330033993300669933009999
          3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
          330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
          66006600660099006600CC006600FF0066000033660033336600663366009933
          6600CC336600FF33660000666600336666006666660099666600CC666600FF66
          660000996600339966006699660099996600CC996600FF99660000CC660033CC
          660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
          6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
          990000339900333399006633990099339900CC339900FF339900006699003366
          99006666990099669900CC669900FF6699000099990033999900669999009999
          9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
          990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
          CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
          CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
          CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
          CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
          CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
          FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
          FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
          FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
          FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000ACACACACACAC
          ACACACAC0000ACAC0000ACACACACACACACACAC02230500AC0000ACAC00000000
          00000223050500000000ACAC56ACACACAC02230505ACAC000000ACAC56D7D7D7
          02230505ACD7AC000000ACAC56000056AC0505ACD7D7AC000000AC56AC23AC00
          5656ACD7D7D7AC00000056D723AC23AC00ACD7D7D7D7AC0000005623D723AC23
          00ACD7D7D7D7AC00000056D723D723AC00ACD7D7D7D7AC000000AC56D723D700
          ACD7D7D7D7D7AC000000ACAC565600ACD7D7D7D7D7D7AC000000ACAC56D7D7D7
          D7D7D7D700000000FFFFACAC56D7D7D7D7D7D7D7ACD756AC0000ACAC56D7D7D7
          D7D7D7D7AC56ACAC0000ACAC565656565656565656ACACAC0000}
        Spacing = 2
      end
      object SpeedButton1: TcxButton
        Left = 159
        Top = 9
        Width = 82
        Height = 27
        Cursor = crHandPoint
        Action = ActImprimir
        TabOrder = 3
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
        Spacing = 2
      end
      object Label13: TcxLabel
        Left = 249
        Top = 16
        Caption = 'Selecionar registro (Barra de Espa'#231'o)'
        ParentFont = False
        Transparent = True
      end
      object Navigator: TDBNavigator
        Left = 15
        Top = 9
        Width = 116
        Height = 27
        Cursor = crHandPoint
        DataSource = DSource
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
        Flat = True
        TabOrder = 0
      end
      object BtnFechar: TcxButton
        Left = 521
        Top = 9
        Width = 82
        Height = 27
        Cursor = crHandPoint
        Cancel = True
        Caption = '&Fechar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = BtnFecharClick
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
    object pnlTop: TPanel
      Left = 2
      Top = 2
      Width = 636
      Height = 31
      Align = alTop
      BevelOuter = bvNone
      Color = clHighlightText
      TabOrder = 1
      object Bevel2: TBevel
        Left = 15
        Top = 29
        Width = 502
        Height = 2
        Shape = bsTopLine
      end
      object Image1: TImage
        Left = 8
        Top = -1
        Width = 32
        Height = 32
        AutoSize = True
        Picture.Data = {
          07544269746D6170360C0000424D360C00000000000036000000280000002000
          0000200000000100180000000000000C00000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000005050505050
          50505050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00000000000000C8FF00C8FF0067FF0067FF0000005050
          50505050505050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF00000000000000C8FF0030CF00C8FF00C8FF0067FF0067FF0067FF0000
          00000000505050505050505050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
          00000000000000C8FF00C8FF0030CF00C8FF00C8FF0067FF0067FF0067FF0000
          009067CF000000505050505050505050505050505050FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000CF9790CF979060302F
          60302F00000000C8FF00C8FF0030CF00C8FF00C8FF0067FF0067FF0067FF0000
          009067CF2F0090000000505050505050505050505050505050505050FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000000000CF979060302FCF9790CF979060302F
          60302F00000000C8FF00C8FF0030CF00C8FF00C8FF0067FF0067FF0067FF0000
          009067CF2F00902F0090000000505050505050505050505050505050FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000CF9790CF979060302FCF9790CF979060302F
          60302F00000000C8FF00C8FF0030CF00C8FF00C8FF0067FF0067FF0067FF0000
          009067CF2F00902F0090000000505050505050505050FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000CF9790CF979060302FCF9790CF979060302F
          60302F00000000C8FF00C8FF0030CF00C8FF00C8FF0067FF0067FF0067FF0000
          009067CF2F00902F0090000000505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000CF9790CF979060302FCF9790CF979060302F
          60302F00000000C8FF00C8FF0030CF00C8FF00C8FF0067FF0067FF0067FF0000
          009067CF2F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000CF9790CF979060302FCF9790CF979060302F
          60302F00000000C8FF00C8FF0030CF00C8FF00C8FF0030CF0030CF0030CF0000
          009067CF2F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000CF9790CF979060302FCF9790CF979060302F
          60302F00000000C8FF00C8FF0030CF00C8FF00C8FF00C8FF0030CF0030CF0000
          009067CF2F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000CF9790CF979060302FCF9790CF979060302F
          00000000C8FF00C8FF00C8FF00C8FF00C8FF00C8FF00C8FF0067FF0030CF0000
          009067CF2F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000CF9790CF979060302FCF9790CF979060302F
          00000000C8FF00C8FF00C8FF00C8FF00C8FF00C8FF00C8FF0067FF0067FF0030
          CF0000002F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000CF9790CF979060302FCF9790CF9790CF9790
          00000000C8FF00C8FF00C8FF00C8FF00C8FF00C8FF00C8FF0067FF0067FF0067
          FF0000009067CF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000CF9790CF9790CF9790CF9790CF9790CF9790CF9790
          00000000C8FF00C8FF00C8FF00C8FF00C8FF00C8FF00C8FF0067FF0067FF0067
          FF0000009067CF2F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000CF9790CF9790CF9790CF9790CF9790CF9790CF9790
          00000000C8FF00C8FF00C8FF00C8FF00C8FF00C8FF00C8FF0067FF0067FF0067
          FF0000009067CF2F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000CF9790CF9790CF9790CF9790CF9790CF9790CF9790
          00000000C8FF00C8FF00C8FF00C8FF00C8FF00C8FF00C8FF0067FF0067FF0067
          FF0000009067CF2F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000CF9790CF9790CF9790CF9790CF9790CF9790CF9790
          00000000C8FF00C8FF00C8FF00C8FF00C8FF00C8FF00C8FF0067FF0067FF0067
          FF0000009067CF2F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000CF9790CF9790CF9790CF9790CF9790CF9790CF9790
          00000000C8FF00C8FF00C8FF00C8FF00C8FFFFFFFFFFFFFF0067FF0067FF0067
          FF0000009067CF2F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000CF9790CF9790CF9790CF9790CF9790CF9790CF9790
          00000000C8FF00C8FF00C8FFFFFFFFFFFFFF60C8FF60C8FF60C8FF60C8FF0067
          FF0000009067CF2F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000CF9790CF9790CF9790CF9790CF9790CF9790CF9790
          00000000C8FFFFFFFFFFFFFF0067FF0067FF0067FF0067FF0067FF0067FF60C8
          FF0000009067CF2F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000CF9790CF9790CF9790CF9790CF9790FFFFFFFFFFFF
          00000000000060C8FF5050500000000000000000000000000067FF0000000000
          00FFFFFF9067CF2F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000CF9790CF9790CF9790FFFFFFFFFFFFFFC8CFFFC8CF
          FFC8CF00000060C8FF000000505050505050404040505050000000FFFFFFCF97
          FFCF97FFCF97FFCF97FF2F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000CF9790FFFFFFFFFFFF60302F60302F60302F60302F
          60302F60302F0F0F0F404040A09F9FA09F9FA09F9F5050504040400000002F00
          902F00902F00902F0090CF97FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFC8CF505050000000000000000000000000
          60302F0000001F201FA09F9FDFD8DFDFD8DFBFBFBF9097904040400000000000
          000000002F0090000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFC8CF000000505050505050404040505050
          000000FFFFFF0F0F0FDFD8DFFFFFFFFFFFFFDFD8DFA09F9F5050500000004040
          40505050000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F404040A09F9FA09F9FA09F9F505050
          4040400000001F201FDFD8DFFFFFFFFFFFFFDFD8DFA09F9F404040000000A09F
          9F505050404040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF1F201FA09F9FDFD8DFDFD8DFBFBFBF909790
          404040000000FFFFFF1F201FDFD8DFBFBFBF9097904040400F0F0FDFD8DFBFBF
          BF909790404040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0FDFD8DFFFFFFFFFFFFFDFD8DFA09F9F
          505050000000FFFFFFFFFFFF0F0F0F0F0F0F000000404040FFFFFFFFFFFFDFD8
          DFA09F9F505050000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF1F201FDFD8DFFFFFFFFFFFFFDFD8DFA09F9F
          404040000000FFFFFFFFFFFFFFFFFFFFFFFF1F201FDFD8DFFFFFFFFFFFFFDFD8
          DFA09F9F404040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F201FDFD8DFBFBFBF909790404040
          0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F201FDFD8DFBFBFBF9097
          904040400F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F0F0F0F000000404040
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F0F0F0F0000
          00404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF}
      end
      object LblTitulo: TcxLabel
        Left = 40
        Top = 6
        Caption = 'Mala Direta para Clientes'
        ParentFont = False
        Transparent = True
      end
      object LblRegistros: TcxLabel
        Left = 581
        Top = 8
        Caption = '1/1'
        ParentFont = False
        Transparent = True
      end
    end
    object pc: TcxPageControl
      Left = 8
      Top = 40
      Width = 619
      Height = 473
      ActivePage = dxTabSheet1
      TabOrder = 2
      ClientRectBottom = 473
      ClientRectRight = 619
      ClientRectTop = 24
      object dxTabSheet1: TcxTabSheet
        Caption = ' Sele'#231#227'o de Arquivos'
        object Shape1: TShape
          Left = 0
          Top = 0
          Width = 619
          Height = 1
          Align = alTop
          Pen.Color = clBtnShadow
        end
        object Label7: TcxLabel
          Left = 16
          Top = 66
          Caption = 'Bairro'
          ParentFont = False
          Transparent = True
        end
        object Label4: TcxLabel
          Left = 16
          Top = 37
          Caption = 'Atividades'
          ParentFont = False
          Transparent = True
        end
        object Label5: TcxLabel
          Left = 16
          Top = 7
          Caption = 'Anivers'#225'rio Entre os Dias'
          ParentFont = False
          Transparent = True
        end
        object Label1: TcxLabel
          Left = 237
          Top = 11
          Caption = 'de'
          ParentFont = False
          Transparent = True
        end
        object Label3: TcxLabel
          Left = 384
          Top = 10
          Caption = #224
          ParentFont = False
          Transparent = True
        end
        object Label2: TcxLabel
          Left = 474
          Top = 10
          Caption = 'de'
          ParentFont = False
          Transparent = True
        end
        object Label6: TcxLabel
          Left = 310
          Top = 37
          Caption = 'Cidades'
          ParentFont = False
          Transparent = True
        end
        object Label8: TcxLabel
          Left = 318
          Top = 63
          Caption = 'Ordem'
          ParentFont = False
          Transparent = True
        end
        object GRID: TdxDBGrid
          Left = 6
          Top = 115
          Width = 612
          Height = 329
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'CODIGO'
          SummaryGroups = <>
          SummarySeparator = ', '
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          PopupMenu = popMenu
          TabOrder = 11
          OnClick = GRIDClick
          AutoExpandOnSearch = False
          AutoSearchColor = clInfoBk
          AutoSearchTextColor = clBtnText
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
          HideFocusRect = True
          LookAndFeel = lfUltraFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          object GRIDSel: TdxDBGridCheckColumn
            ReadOnly = True
            Width = 35
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Sel'
            ValueChecked = 'True'
            ValueUnchecked = 'False'
          end
          object GRIDCODIGO: TdxDBGridMaskColumn
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODIGO'
          end
          object GRIDNOME_RAZAO: TdxDBGridMaskColumn
            Sorted = csDown
            Width = 225
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOME_RAZAO'
          end
          object GRIDATIVIDADE: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ATIVIDADE'
          end
          object GRIDENDERECO: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ENDERECO'
          end
          object GRIDNUMERO: TdxDBGridMaskColumn
            Width = 103
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUMERO'
          end
          object GRIDCOMPLEMENTO: TdxDBGridMaskColumn
            Width = 182
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COMPLEMENTO'
          end
          object GRIDBAIRRO: TdxDBGridMaskColumn
            Width = 288
            BandIndex = 0
            RowIndex = 0
            FieldName = 'BAIRRO'
          end
          object GRIDCIDADE: TdxDBGridMaskColumn
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CIDADE'
          end
          object GRIDUF: TdxDBGridMaskColumn
            Width = 20
            BandIndex = 0
            RowIndex = 0
            FieldName = 'UF'
          end
          object GRIDCEP: TdxDBGridMaskColumn
            Width = 66
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CEP'
          end
          object GRIDFONE: TdxDBGridMaskColumn
            Width = 129
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FONE'
          end
          object GRIDFAX: TdxDBGridMaskColumn
            Width = 129
            BandIndex = 0
            RowIndex = 0
            FieldName = 'FAX'
          end
          object GRIDCELULAR: TdxDBGridMaskColumn
            Width = 129
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CELULAR'
          end
          object GRIDPESSOA: TdxDBGridMaskColumn
            Width = 56
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PESSOA'
          end
          object GRIDCPF_CGC: TdxDBGridMaskColumn
            Width = 103
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CPF_CGC'
          end
          object GRIDRG_IE: TdxDBGridMaskColumn
            Width = 103
            BandIndex = 0
            RowIndex = 0
            FieldName = 'RG_IE'
          end
          object GRIDCONTATO: TdxDBGridMaskColumn
            Width = 182
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONTATO'
          end
          object GRIDDT_NASCIMENTO: TdxDBGridDateColumn
            Width = 119
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DT_NASCIMENTO'
          end
          object GRIDDT_CADASTRO: TdxDBGridDateColumn
            Width = 119
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DT_CADASTRO'
          end
          object GRIDEMAIL: TdxDBGridMaskColumn
            Width = 447
            BandIndex = 0
            RowIndex = 0
            FieldName = 'EMAIL'
          end
          object GRIDOBS: TdxDBGridBlobColumn
            Width = 108
            BandIndex = 0
            RowIndex = 0
            FieldName = 'OBS'
          end
          object GRIDCXP: TdxDBGridMaskColumn
            Width = 56
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CXP'
          end
          object GRIDNOTA: TdxDBGridColumn
            Caption = 'Nota'
            Width = 29
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ASSINA_NOTA'
          end
        end
        object EdDiaIni: TdxMRUEdit
          Left = 184
          Top = 5
          Width = 45
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
          OnEnter = EdDiaIniEnter
          OnExit = EdDiaIniExit
          OnKeyDown = EdDiaIniKeyDown
          DropDownListStyle = True
          Items.Strings = (
            '01'
            '02'
            '03'
            '04'
            '05'
            '06'
            '07'
            '08'
            '09'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15'
            '16'
            '17'
            '18'
            '19'
            '20'
            '21'
            '22'
            '23'
            '24'
            '25'
            '26'
            '27'
            '28'
            '29'
            '30'
            '31')
          ShowEllipsis = False
        end
        object EdMesIni: TdxMRUEdit
          Left = 259
          Top = 5
          Width = 109
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
          OnEnter = EdDiaIniEnter
          OnExit = EdDiaIniExit
          OnKeyDown = EdDiaIniKeyDown
          DropDownListStyle = True
          Items.Strings = (
            'Janeiro'
            'Fevereiro'
            'Mar'#231'o'
            'Abril'
            'Maio'
            'Junho'
            'Julho'
            'Agosto'
            'Setembro'
            'Outubro'
            'Novembro'
            'Dezembro')
          ShowEllipsis = False
        end
        object EdDiaFim: TdxMRUEdit
          Left = 421
          Top = 5
          Width = 45
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
          OnEnter = EdDiaIniEnter
          OnExit = EdDiaIniExit
          OnKeyDown = EdDiaIniKeyDown
          DropDownListStyle = True
          Items.Strings = (
            '01'
            '02'
            '03'
            '04'
            '05'
            '06'
            '07'
            '08'
            '09'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15'
            '16'
            '17'
            '18'
            '19'
            '20'
            '21'
            '22'
            '23'
            '24'
            '25'
            '26'
            '27'
            '28'
            '29'
            '30'
            '31')
          ShowEllipsis = False
        end
        object EdMesFim: TdxMRUEdit
          Left = 500
          Top = 5
          Width = 109
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
          OnEnter = EdDiaIniEnter
          OnExit = EdDiaIniExit
          OnKeyDown = EdDiaIniKeyDown
          DropDownListStyle = True
          Items.Strings = (
            'Janeiro'
            'Fevereiro'
            'Mar'#231'o'
            'Abril'
            'Maio'
            'Junho'
            'Julho'
            'Agosto'
            'Setembro'
            'Outubro'
            'Novembro'
            'Dezembro')
          ShowEllipsis = False
        end
        object EdCidade: TdxLookupEdit
          Left = 372
          Top = 32
          Width = 238
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 5
          OnEnter = EdDiaIniEnter
          OnExit = EdDiaIniExit
          OnKeyDown = EdDiaIniKeyDown
          ClearKey = 46
          ListFieldName = 'NOME;UF'
          CanDeleteText = True
          KeyFieldName = 'CODIGO'
          ListSource = DsCidades
          LookupKeyValue = Null
        end
        object EdOrdem: TdxMRUEdit
          Left = 372
          Top = 61
          Width = 238
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
          OnEnter = EdDiaIniEnter
          OnExit = EdDiaIniExit
          OnKeyDown = EdDiaIniKeyDown
          DropDownListStyle = True
          Items.Strings = (
            'Nome, C'#243'digo'
            'Nome, Atividade'
            'Nome, Bairro'
            'Nome, Cidade'
            'Atividade, Nome'
            'Bairro, Nome'
            'Cidade, Nome'
            'Cep, Nome'
            'Cep, Cidade')
          CanDeleteText = True
          ShowEllipsis = False
        end
        object BtnSeleciona: TcxButton
          Left = 536
          Top = 88
          Width = 74
          Height = 23
          Cursor = crHandPoint
          Cancel = True
          Caption = '&Selecionar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnClick = BtnSelecionaClick
          OnEnter = EdDiaIniEnter
          OnExit = EdDiaIniExit
        end
        object EdBairro: TdxLookupEdit
          Left = 89
          Top = 61
          Width = 200
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 6
          OnEnter = EdDiaIniEnter
          OnExit = EdDiaIniExit
          OnKeyDown = EdDiaIniKeyDown
          ClearKey = 46
          ListFieldName = 'NOME'
          CanDeleteText = True
          KeyFieldName = 'CODIGO'
          ListSource = DsBairro
          LookupKeyValue = Null
        end
        object EdAtividade: TdxLookupEdit
          Left = 89
          Top = 32
          Width = 200
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
          OnEnter = EdDiaIniEnter
          OnExit = EdDiaIniExit
          OnKeyDown = EdDiaIniKeyDown
          ClearKey = 46
          ListFieldName = 'NOME'
          CanDeleteText = True
          KeyFieldName = 'CODIGO'
          ListSource = DsAtividades
          LookupKeyValue = Null
        end
        object CkTipo: TdxCheckEdit
          Left = 90
          Top = 89
          Width = 156
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 8
          OnEnter = EdDiaIniEnter
          OnExit = EdDiaIniExit
          OnKeyDown = EdDiaIniKeyDown
          Caption = 'Somente que Assinam Nota'
        end
        object CkFone: TdxCheckEdit
          Left = 248
          Top = 89
          Width = 137
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 9
          Caption = 'Somente Nome e Fone'
        end
      end
      object dxTabSheet2: TcxTabSheet
        Caption = 'Impress'#245'es'
        object Label9: TcxLabel
          Left = 271
          Top = 30
          Caption = 'Altura Inicial do Texto'
          ParentFont = False
          Transparent = True
        end
        object Label10: TcxLabel
          Left = 270
          Top = 6
          Caption = 'Envelope'
          ParentFont = False
          Transparent = True
        end
        object Label11: TcxLabel
          Left = 277
          Top = 82
          Caption = 'Largura do Envelope'
          ParentFont = False
          Transparent = True
        end
        object Label12: TcxLabel
          Left = 263
          Top = 56
          Caption = 'Largura Inicial do Texto'
          ParentFont = False
          Transparent = True
        end
        object RzBitBtn2: TcxButton
          Left = 8
          Top = 7
          Width = 177
          Height = 27
          Cursor = crHandPoint
          Cancel = True
          Caption = 'Mala Direta'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = RzBitBtn2Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
            8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
            8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
            8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
        end
        object Altura: TdxCurrencyEdit
          Left = 385
          Top = 25
          Width = 49
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          TabOrder = 1
          Alignment = taRightJustify
          DisplayFormat = ',0;-,0'
          StoredValues = 1
        end
        object Largura: TdxCurrencyEdit
          Left = 385
          Top = 77
          Width = 49
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          TabOrder = 3
          Alignment = taRightJustify
          DisplayFormat = ',0;-,0'
          StoredValues = 1
        end
        object RzBitBtn3: TcxButton
          Left = 8
          Top = 45
          Width = 177
          Height = 27
          Cursor = crHandPoint
          Cancel = True
          Caption = 'Envelope'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = RzBitBtn3Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
            8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
            8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
            8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
        end
        object coluna: TdxCurrencyEdit
          Left = 385
          Top = 51
          Width = 49
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          TabOrder = 2
          Alignment = taRightJustify
          DisplayFormat = ',0;-,0'
          StoredValues = 1
        end
        object btncfg3: TcxButton
          Left = 186
          Top = 7
          Width = 59
          Height = 27
          Caption = 'Conf.'
          TabOrder = 5
          OnClick = btncfg3Click
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00687770808006
            66666877787878866666FFF7700808066666FFF7788787866666888F70808000
            0000888F7878788888886668F008080888886668F887878888886668F8000087
            77776668F888888777776668F78F70FFFFFF6668F78F78FFFFFF000F778F7088
            8888888F778F78888888F777778F70666666F777778F7866666687FFF78F7066
            666687FFF78F786666666688878F706666666688878F78666666666666000066
            6660666666888866666860066088880666006886688888866688888008777800
            007088888877788888788F777777778887068F777777778887868F77F7777777
            78668F77F777777778668FF88FFFFFF886668FF88FFFFFF88666}
          NumGlyphs = 2
        end
      end
    end
  end
  object DSource: TDataSource
    AutoEdit = False
    DataSet = mtbMalaDireta
    OnDataChange = DSourceDataChange
    Left = 144
    Top = 208
  end
  object Actions: TActionList
    Left = 196
    Top = 209
    object ActLocalizar: TAction
      Hint = 'Localizar registro [F3]'
      ShortCut = 114
      OnExecute = ActLocalizarExecute
    end
    object ActFechar: TAction
      Caption = 'ActFechar'
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActImprimir: TAction
      Tag = 1
      Caption = 'Imprimir'
      ShortCut = 116
      OnExecute = ActImprimirExecute
    end
    object ActSelecionar: TAction
      Caption = 'ActSelecionar'
      ShortCut = 32
      OnExecute = ActSelecionarExecute
    end
    object ActSelTodos: TAction
      Caption = 'ActSelTodos'
      OnExecute = ActSelTodosExecute
    end
    object ActDeselTodos: TAction
      Caption = 'ActDeselTodos'
      OnExecute = ActDeselTodosExecute
    end
  end
  object DsAtividades: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Atividades
    OnDataChange = DSourceDataChange
    Left = 72
    Top = 208
  end
  object DsCidades: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Cidades
    OnDataChange = DSourceDataChange
    Left = 72
    Top = 264
  end
  object DsBairro: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Bairros
    OnDataChange = DSourceDataChange
    Left = 144
    Top = 240
  end
  object Print: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = True
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 115
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    Autor = Deltress
    About = 'RDprint 3.0h - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Configurar Impress'#227'o'
    UsaGerenciadorImpr = False
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    TestarPorta = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumeroPaginaInicial = 1
    PaginaInicial = 1
    PaginaFinal = 9999
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    OnNewPage = PrintNewPage
    OnBeforeNewPage = PrintBeforeNewPage
    Left = 248
    Top = 208
  end
  object rptEtiqueta: TppReport
    AutoStop = False
    Columns = 3
    ColumnPositions.Strings = (
      '4826'
      '74676'
      '144526')
    DataPipeline = dbEtiqueta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 4826
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 12700
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.DatabaseSettings.DataPipeline = ppTemplate
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'CONFIG_MALADIRETA'
    Template.FileName = 'D:\Sistemas\HelpStore\fontes\rptMalaDireta.rtm'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 304
    Top = 263
    Version = '12.03'
    mmColumnWidth = 66802
    DataPipelineName = 'dbEtiqueta'
    object ppColumnHeaderBand1: TppColumnHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppRegion1: TppRegion
        UserName = 'Region1'
        KeepTogether = True
        Caption = 'Region1'
        Pen.Style = psClear
        mmHeight = 21167
        mmLeft = 0
        mmTop = 1323
        mmWidth = 66411
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'NOME_RAZAO'
          DataPipeline = dbEtiqueta
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbEtiqueta'
          mmHeight = 3302
          mmLeft = 1323
          mmTop = 2646
          mmWidth = 63500
          BandType = 4
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'ENDERECO'
          DataPipeline = dbEtiqueta
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbEtiqueta'
          mmHeight = 3302
          mmLeft = 1323
          mmTop = 7408
          mmWidth = 48154
          BandType = 4
        end
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'NUMERO'
          DataPipeline = dbEtiqueta
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbEtiqueta'
          mmHeight = 3302
          mmLeft = 51065
          mmTop = 7408
          mmWidth = 13758
          BandType = 4
        end
        object ppDBText4: TppDBText
          UserName = 'DBText4'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'BAIRRO'
          DataPipeline = dbEtiqueta
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbEtiqueta'
          mmHeight = 3302
          mmLeft = 1323
          mmTop = 12171
          mmWidth = 35719
          BandType = 4
        end
        object ppDBText5: TppDBText
          UserName = 'DBText5'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'COMPLEMENTO'
          DataPipeline = dbEtiqueta
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbEtiqueta'
          mmHeight = 3302
          mmLeft = 37835
          mmTop = 12171
          mmWidth = 26723
          BandType = 4
        end
        object ppDBText6: TppDBText
          UserName = 'DBText6'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'CIDADE'
          DataPipeline = dbEtiqueta
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbEtiqueta'
          mmHeight = 3302
          mmLeft = 1323
          mmTop = 16933
          mmWidth = 40481
          BandType = 4
        end
        object ppDBText7: TppDBText
          UserName = 'DBText7'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'UF'
          DataPipeline = dbEtiqueta
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbEtiqueta'
          mmHeight = 3302
          mmLeft = 42863
          mmTop = 16933
          mmWidth = 5027
          BandType = 4
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'CEP'
          DataPipeline = dbEtiqueta
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbEtiqueta'
          mmHeight = 3302
          mmLeft = 49213
          mmTop = 16933
          mmWidth = 15610
          BandType = 4
        end
      end
    end
    object ppColumnFooterBand1: TppColumnFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object dbEtiqueta: TppDBPipeline
    DataSource = dsEtiqueta
    UserName = 'dbEtiqueta'
    Left = 304
    Top = 235
    object dbEtiquetappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'RecId'
      FieldName = 'RecId'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object dbEtiquetappField2: TppField
      FieldAlias = 'PESSOA'
      FieldName = 'PESSOA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 1
    end
    object dbEtiquetappField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object dbEtiquetappField4: TppField
      FieldAlias = 'ATIVIDADE'
      FieldName = 'ATIVIDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object dbEtiquetappField5: TppField
      FieldAlias = 'NOME_RAZAO'
      FieldName = 'NOME_RAZAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object dbEtiquetappField6: TppField
      FieldAlias = 'FANTASIA'
      FieldName = 'FANTASIA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object dbEtiquetappField7: TppField
      FieldAlias = 'ENDERECO'
      FieldName = 'ENDERECO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object dbEtiquetappField8: TppField
      FieldAlias = 'NUMERO'
      FieldName = 'NUMERO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 7
    end
    object dbEtiquetappField9: TppField
      FieldAlias = 'COMPLEMENTO'
      FieldName = 'COMPLEMENTO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 8
    end
    object dbEtiquetappField10: TppField
      FieldAlias = 'BAIRRO'
      FieldName = 'BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object dbEtiquetappField11: TppField
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
    object dbEtiquetappField12: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 11
    end
    object dbEtiquetappField13: TppField
      FieldAlias = 'CPF_CGC'
      FieldName = 'CPF_CGC'
      FieldLength = 15
      DisplayWidth = 15
      Position = 12
    end
    object dbEtiquetappField14: TppField
      FieldAlias = 'CPF'
      FieldName = 'CPF'
      FieldLength = 15
      DisplayWidth = 15
      Position = 13
    end
    object dbEtiquetappField15: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 15
      DisplayWidth = 15
      Position = 14
    end
    object dbEtiquetappField16: TppField
      FieldAlias = 'RG_IE'
      FieldName = 'RG_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 15
    end
    object dbEtiquetappField17: TppField
      FieldAlias = 'FONE'
      FieldName = 'FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 16
    end
    object dbEtiquetappField18: TppField
      FieldAlias = 'FAX'
      FieldName = 'FAX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 17
    end
    object dbEtiquetappField19: TppField
      FieldAlias = 'CELULAR'
      FieldName = 'CELULAR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 18
    end
    object dbEtiquetappField20: TppField
      FieldAlias = 'EMAIL'
      FieldName = 'EMAIL'
      FieldLength = 80
      DisplayWidth = 80
      Position = 19
    end
    object dbEtiquetappField21: TppField
      FieldAlias = 'NOME_VENDEDOR'
      FieldName = 'NOME_VENDEDOR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 20
    end
    object dbEtiquetappField22: TppField
      FieldAlias = 'NOME_FORMA_PAGTO'
      FieldName = 'NOME_FORMA_PAGTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 21
    end
    object dbEtiquetappField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRAZO'
      FieldName = 'PRAZO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object dbEtiquetappField24: TppField
      FieldAlias = 'COMPRADOR'
      FieldName = 'COMPRADOR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 23
    end
    object dbEtiquetappField25: TppField
      FieldAlias = 'DT_CADASTRO'
      FieldName = 'DT_CADASTRO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 24
    end
    object dbEtiquetappField26: TppField
      FieldAlias = 'BLOQUEADO'
      FieldName = 'BLOQUEADO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 25
    end
    object dbEtiquetappField27: TppField
      FieldAlias = 'NOME_CLASSIF'
      FieldName = 'NOME_CLASSIF'
      FieldLength = 50
      DisplayWidth = 50
      Position = 26
    end
    object dbEtiquetappField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_CLASSIF'
      FieldName = 'COD_CLASSIF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object dbEtiquetappField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_VENDEDOR'
      FieldName = 'COD_VENDEDOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 28
    end
    object dbEtiquetappField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'REGIAO'
      FieldName = 'REGIAO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object dbEtiquetappField31: TppField
      FieldAlias = 'ASSINA_NOTA'
      FieldName = 'ASSINA_NOTA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 30
    end
    object dbEtiquetappField32: TppField
      FieldAlias = 'UF'
      FieldName = 'UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 31
    end
    object dbEtiquetappField33: TppField
      FieldAlias = 'DT_NASCIMENTO'
      FieldName = 'DT_NASCIMENTO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 32
    end
    object dbEtiquetappField34: TppField
      FieldAlias = 'FREQUENCIA'
      FieldName = 'FREQUENCIA'
      FieldLength = 3
      DisplayWidth = 3
      Position = 33
    end
    object dbEtiquetappField35: TppField
      FieldAlias = 'Sel'
      FieldName = 'Sel'
      FieldLength = 0
      DataType = dtBoolean
      DisplayWidth = 5
      Position = 34
    end
  end
  object Envelope: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = True
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 115
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    Autor = Deltress
    About = 'RDprint 3.0h - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Configurar Impress'#227'o'
    UsaGerenciadorImpr = False
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    TestarPorta = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumeroPaginaInicial = 1
    PaginaInicial = 1
    PaginaFinal = 9999
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 248
    Top = 264
  end
  object ppDesigner: TppDesigner
    Caption = 'Configura'#231#227'o de Mala Direta'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtInterBase
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = rptEtiqueta
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 336
    Top = 263
  end
  object ppTemplate: TppDBPipeline
    DataSource = DsTemplate
    UserName = 'dbEtiqueta1'
    Left = 304
    Top = 299
    object ppTemplateppField1: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppTemplateppField2: TppField
      FieldAlias = 'CONFIG_MALADIRETA'
      FieldName = 'CONFIG_MALADIRETA'
      FieldLength = 8
      DataType = dtMemo
      DisplayWidth = 10
      Position = 1
      Searchable = False
      Sortable = False
    end
  end
  object DsTemplate: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.MalaDireta
    OnDataChange = DSourceDataChange
    Left = 352
    Top = 296
  end
  object mtbMalaDireta: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 400
    Top = 231
    object mtbMalaDiretaPESSOA: TStringField
      DisplayLabel = 'Pessoa'
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object mtbMalaDiretaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object mtbMalaDiretaATIVIDADE: TStringField
      DisplayLabel = 'Atividade'
      FieldName = 'ATIVIDADE'
      Size = 50
    end
    object mtbMalaDiretaNOME_RAZAO: TStringField
      DisplayLabel = 'Nome/Raz'#227'o Social'
      FieldName = 'NOME_RAZAO'
      Size = 50
    end
    object mtbMalaDiretaFANTASIA: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'FANTASIA'
      Size = 50
    end
    object mtbMalaDiretaENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Size = 50
    end
    object mtbMalaDiretaNUMERO: TStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Size = 15
    end
    object mtbMalaDiretaCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object mtbMalaDiretaBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Size = 50
    end
    object mtbMalaDiretaCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Size = 50
    end
    object mtbMalaDiretaCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object mtbMalaDiretaCPF_CGC: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CGC'
      Size = 15
    end
    object mtbMalaDiretaCPF: TStringField
      FieldName = 'CPF'
      Size = 15
    end
    object mtbMalaDiretaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 15
    end
    object mtbMalaDiretaRG_IE: TStringField
      DisplayLabel = 'RG/IE'
      FieldName = 'RG_IE'
      Size = 15
    end
    object mtbMalaDiretaFONE: TStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
    end
    object mtbMalaDiretaFAX: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
    end
    object mtbMalaDiretaCELULAR: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
    end
    object mtbMalaDiretaEMAIL: TStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Size = 80
    end
    object mtbMalaDiretaNOME_VENDEDOR: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Size = 50
    end
    object mtbMalaDiretaNOME_FORMA_PAGTO: TStringField
      DisplayLabel = 'Forma Pagto'
      FieldName = 'NOME_FORMA_PAGTO'
      Size = 50
    end
    object mtbMalaDiretaPRAZO: TIntegerField
      DisplayLabel = 'Prazo'
      FieldName = 'PRAZO'
    end
    object mtbMalaDiretaCOMPRADOR: TStringField
      DisplayLabel = 'Comprador'
      FieldName = 'COMPRADOR'
      Size = 50
    end
    object mtbMalaDiretaDT_CADASTRO: TDateTimeField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'DT_CADASTRO'
    end
    object mtbMalaDiretaBLOQUEADO: TStringField
      DisplayLabel = 'Bloqueado'
      FieldName = 'BLOQUEADO'
      FixedChar = True
      Size = 1
    end
    object mtbMalaDiretaNOME_CLASSIF: TStringField
      DisplayLabel = 'Classifica'#231#227'o'
      FieldName = 'NOME_CLASSIF'
      Size = 50
    end
    object mtbMalaDiretaCOD_CLASSIF: TIntegerField
      DisplayLabel = 'C'#243'd. Classifica'#231#227'o'
      FieldName = 'COD_CLASSIF'
    end
    object mtbMalaDiretaCOD_VENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor'
      FieldName = 'COD_VENDEDOR'
    end
    object mtbMalaDiretaREGIAO: TIntegerField
      DisplayLabel = 'Regi'#227'o'
      FieldName = 'REGIAO'
    end
    object mtbMalaDiretaASSINA_NOTA: TStringField
      DisplayLabel = 'Ass. Nota'
      FieldName = 'ASSINA_NOTA'
      FixedChar = True
      Size = 1
    end
    object mtbMalaDiretaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object mtbMalaDiretaDT_NASCIMENTO: TDateTimeField
      DisplayLabel = 'Dt. Nascto'
      FieldName = 'DT_NASCIMENTO'
    end
    object mtbMalaDiretaFREQUENCIA: TStringField
      DisplayLabel = 'Frequ'#234'ncia'
      FieldName = 'FREQUENCIA'
      FixedChar = True
      Size = 3
    end
    object mtbMalaDiretaSel: TBooleanField
      FieldName = 'Sel'
    end
  end
  object popMenu: TPopupMenu
    Left = 144
    Top = 271
    object SelecionarTodos1: TMenuItem
      Action = ActSelTodos
      Caption = 'Marcar todos'
    end
    object popMenudes: TMenuItem
      Action = ActDeselTodos
      Caption = 'Desmarcar todos'
    end
  end
  object mtbEtiqueta: TdxMemData
    Active = True
    Indexes = <>
    SortOptions = []
    Left = 408
    Top = 271
    object mtbEtiquetaPESSOA: TStringField
      FieldName = 'PESSOA'
      Size = 1
    end
    object mtbEtiquetaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object mtbEtiquetaATIVIDADE: TStringField
      FieldName = 'ATIVIDADE'
      Size = 50
    end
    object mtbEtiquetaNOME_RAZAO: TStringField
      FieldName = 'NOME_RAZAO'
      Size = 50
    end
    object mtbEtiquetaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 50
    end
    object mtbEtiquetaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object mtbEtiquetaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 15
    end
    object mtbEtiquetaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object mtbEtiquetaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object mtbEtiquetaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object mtbEtiquetaCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object mtbEtiquetaCPF_CGC: TStringField
      FieldName = 'CPF_CGC'
      Size = 15
    end
    object mtbEtiquetaCPF: TStringField
      FieldName = 'CPF'
      Size = 15
    end
    object mtbEtiquetaCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 15
    end
    object mtbEtiquetaRG_IE: TStringField
      FieldName = 'RG_IE'
      Size = 15
    end
    object mtbEtiquetaFONE: TStringField
      FieldName = 'FONE'
    end
    object mtbEtiquetaFAX: TStringField
      FieldName = 'FAX'
    end
    object mtbEtiquetaCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object mtbEtiquetaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object mtbEtiquetaNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 50
    end
    object mtbEtiquetaNOME_FORMA_PAGTO: TStringField
      FieldName = 'NOME_FORMA_PAGTO'
      Size = 50
    end
    object mtbEtiquetaPRAZO: TIntegerField
      FieldName = 'PRAZO'
    end
    object mtbEtiquetaCOMPRADOR: TStringField
      FieldName = 'COMPRADOR'
      Size = 50
    end
    object mtbEtiquetaDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
    end
    object mtbEtiquetaBLOQUEADO: TStringField
      FieldName = 'BLOQUEADO'
      Size = 1
    end
    object mtbEtiquetaNOME_CLASSIF: TStringField
      FieldName = 'NOME_CLASSIF'
      Size = 50
    end
    object mtbEtiquetaCOD_CLASSIF: TIntegerField
      FieldName = 'COD_CLASSIF'
    end
    object mtbEtiquetaCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
    end
    object mtbEtiquetaREGIAO: TIntegerField
      FieldName = 'REGIAO'
    end
    object mtbEtiquetaASSINA_NOTA: TStringField
      FieldName = 'ASSINA_NOTA'
      Size = 1
    end
    object mtbEtiquetaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object mtbEtiquetaDT_NASCIMENTO: TDateTimeField
      FieldName = 'DT_NASCIMENTO'
    end
    object mtbEtiquetaFREQUENCIA: TStringField
      FieldName = 'FREQUENCIA'
      Size = 3
    end
    object mtbEtiquetaSel: TBooleanField
      FieldName = 'Sel'
    end
  end
  object dsEtiqueta: TDataSource
    AutoEdit = False
    DataSet = mtbEtiqueta
    OnDataChange = DSourceDataChange
    Left = 336
    Top = 232
  end
  object stgFrmMalaDireta: TcxPropertiesStore
    Components = <
      item
        Component = Altura
        Properties.Strings = (
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'Color'
          'Constraints'
          'Cursor'
          'DecimalPlaces'
          'DisplayFormat'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'MaxLength'
          'MaxValue'
          'MinValue'
          'Name'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ReadOnly'
          'ShowHint'
          'Style'
          'StyleController'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'UseThousandSeparator'
          'Value'
          'Visible'
          'Width')
      end
      item
        Component = coluna
        Properties.Strings = (
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'Color'
          'Constraints'
          'Cursor'
          'DecimalPlaces'
          'DisplayFormat'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'MaxLength'
          'MaxValue'
          'MinValue'
          'Name'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ReadOnly'
          'ShowHint'
          'Style'
          'StyleController'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'UseThousandSeparator'
          'Value'
          'Visible'
          'Width')
      end
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
        Component = GRIDATIVIDADE
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
        Component = GRIDBAIRRO
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
        Component = GRIDCELULAR
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
        Component = GRIDCEP
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
        Component = GRIDCIDADE
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
        Component = GRIDCODIGO
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
        Component = GRIDCOMPLEMENTO
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
        Component = GRIDCONTATO
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
        Component = GRIDCPF_CGC
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
        Component = GRIDCXP
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
        Component = GRIDDT_CADASTRO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'ButtonGlyph'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DateButtons'
          'DateOnError'
          'DateValidation'
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
          'PopupAlignment'
          'PopupBorder'
          'ReadOnly'
          'RowIndex'
          'SaveTime'
          'ShowButtonStyle'
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
          'UseEditMask'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GRIDDT_NASCIMENTO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'ButtonGlyph'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DateButtons'
          'DateOnError'
          'DateValidation'
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
          'PopupAlignment'
          'PopupBorder'
          'ReadOnly'
          'RowIndex'
          'SaveTime'
          'ShowButtonStyle'
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
          'UseEditMask'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GRIDEMAIL
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
        Component = GRIDENDERECO
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
        Component = GRIDFAX
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
        Component = GRIDFONE
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
        Component = GRIDNOME_RAZAO
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
        Component = GRIDNOTA
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
        Component = GRIDNUMERO
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
        Component = GRIDOBS
        Properties.Strings = (
          'Alignment'
          'AlwaysSaveText'
          'BandIndex'
          'BlobKind'
          'BlobPaintStyle'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableGrouping'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'ImmediatePopup'
          'MaxDisplayLength'
          'MaxLength'
          'MemoCharCase'
          'MemoHideScrollBars'
          'MemoMaxLength'
          'MemoOEMConvert'
          'MemoScrollBars'
          'MemoSelectionBar'
          'MemoWantReturns'
          'MemoWantTabs'
          'MemoWordWrap'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'PictureAutoSize'
          'PictureFilter'
          'PictureTransparency'
          'PopupAlignment'
          'PopupBorder'
          'PopupHeight'
          'PopupWidth'
          'ReadOnly'
          'RowIndex'
          'ShowButtonStyle'
          'ShowExPopupItems'
          'ShowPicturePopup'
          'SizeablePopup'
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
        Component = GRIDPESSOA
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
        Component = GRIDRG_IE
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
        Component = GRIDSel
        Properties.Strings = (
          'Alignment'
          'AllowGrayed'
          'BandIndex'
          'Border3D'
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
          'DisplayChecked'
          'DisplayNull'
          'DisplayUnChecked'
          'FieldName'
          'Font'
          'Glyph'
          'GlyphCount'
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
          'ShowNullFieldStyle'
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
          'ValueChecked'
          'ValueGrayed'
          'ValueUnchecked'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GRIDUF
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
        Component = Largura
        Properties.Strings = (
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'Color'
          'Constraints'
          'Cursor'
          'DecimalPlaces'
          'DisplayFormat'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'MaxLength'
          'MaxValue'
          'MinValue'
          'Name'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ReadOnly'
          'ShowHint'
          'Style'
          'StyleController'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'UseThousandSeparator'
          'Value'
          'Visible'
          'Width')
      end>
    StorageName = 'stgFrmMalaDireta'
    Left = 194
    Top = 264
  end
end
