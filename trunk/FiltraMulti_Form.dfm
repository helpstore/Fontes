object frmFiltraMulti: TfrmFiltraMulti
  Left = 191
  Top = 141
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Filtra Multi-Seletores'
  ClientHeight = 441
  ClientWidth = 540
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LBLLIMITE: TcxLabel
    Left = 223
    Top = 0
    Caption = 'Limite Atual'
    ParentColor = False
    ParentFont = False
    Transparent = True
  end
  object pnlForm: TPanel
    Left = 0
    Top = 28
    Width = 540
    Height = 413
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clHighlightText
    TabOrder = 0
    object LBLCLIENTE: TcxLabel
      Left = 184
      Top = 11
      AutoSize = False
      Caption = '  '
      ParentFont = False
      Transparent = True
      Height = 13
      Width = 289
    end
    object Panel1: TPanel
      Left = 2
      Top = 177
      Width = 536
      Height = 234
      Align = alBottom
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 536
        Height = 18
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '  Selecionados'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object GridSelecionados: TdxDBGrid
        Left = 0
        Top = 18
        Width = 536
        Height = 216
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'RecId'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        AutoExpandOnSearch = False
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dsSelecionados
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
        OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 536
      Height = 175
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 1
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 536
        Height = 20
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '  Selecionar'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object GridSelecionar: TdxDBGrid
        Left = 0
        Top = 20
        Width = 536
        Height = 155
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        AutoExpandOnSearch = False
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dsSelecionar
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
      end
    end
  end
  object Actions: TActionList
    Left = 412
    Top = 97
    object ActFechar: TAction
      Caption = 'Fechar'
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActProdutos: TAction
      Caption = 'Lista Produtos'
      ShortCut = 123
    end
    object ActImprimir: TAction
      Caption = 'Imprimir'
      ShortCut = 120
    end
    object ActLibera: TAction
      Caption = 'Exibir Detalhes'
      ShortCut = 119
    end
  end
  object BarManager: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default'
      'DB Navigator')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    FlatCloseButton = True
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = True
    Left = 445
    Top = 105
    DockControlHeights = (
      0
      0
      28
      0)
    object BarManagerBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Navega'#231#227'o'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 284
      FloatTop = 633
      FloatClientWidth = 450
      FloatClientHeight = 71
      ItemLinks = <
        item
          Visible = True
          ItemName = 'LimiteAtual'
        end
        item
          Visible = True
          ItemName = 'btnConfirmar'
        end
        item
          Visible = True
          ItemName = 'btnMarcarTodas'
        end
        item
          Visible = True
          ItemName = 'btnDesmarcarTodas'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      OldName = 'Navega'#231#227'o'
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarButton1: TdxBarButton
      Action = ActFechar
      Align = iaRight
      Category = 0
      Glyph.Data = {
        36030000424D360300000000000036000000280000000F000000100000000100
        1800000000000003000000000000000000000000000000000000008080008080
        0000000000000000000000000000000000000000000000000000000000000000
        0000808000808000000000808000808000000000008000FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000FFFF00000000FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        00008080008080000000008080008080000000000080FFFF0000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        000000000080FFFF00FFFF0000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000000000000000000000000000
        0000000000000000000000000000000000008080008080000000}
      PaintStyle = psCaptionGlyph
    end
    object LimiteAtual: TdxBarButton
      Align = iaClient
      Caption = 'Limpar'
      Category = 0
      Hint = 'Limpar'
      Visible = ivAlways
      Glyph.Data = {
        96060000424D9606000000000000360000002800000016000000180000000100
        1800000000006006000000000000000000000000000000000000E7EAEEE7EAEE
        E7EAEEE7EAEEE7EAEEE7EAEEE7EAEEE7EBECE7ECEBE7ECEAE7ECEBE7ECEBE7EA
        EEE7EAEEE7EAEFE7E9F1E4E4F0ECECFAE0DEF1F4F2FFDAD7EDCDCAE00000E3E6
        FBE0E6FDE0E7FBE0E9F6E1ECF0E5EDECE7EEEBE8EDEBE7EEEBE7EDECE5ECEFE5
        EBF2E5E9F4E7E9F4EAEAF0ECEAF0E4E3ECE8EAFCD8DEFFC8CFFF5A61984F5383
        0000D4D9FFD2DCFFCCDEFFC8DFFFD5F0F4DBF2E4F7FFF4DFE8DBE2EDE5E6F2F2
        D6E0EAE8EFFFE5E9FFE0E0F8EEE7EEF6EEEEF0EEEDDDE5FCC5DDFF1F3EA5314E
        C13146A20000D7E0FF2F3F9F2941A1415FACC6E4FFB8D2E0E2F1EDE9F6E8E9F7
        EBD0DFDBEAF3FFE0E4FDDAD8F5ECE9FFF3EFFAE3E7F2D0DEFAC6E0FF193EA621
        4AC50E2EA5BDD1FF0000B8CAFF304ABC1D38C80A25B63F52CBCBD9FFD3DEFEE1
        EEECD9EED8DFF0E2ECEFFDE8E0F7FFEEFBFFF9FFD3DBECC6E3FF1F52B2104AC7
        0537B92144B2C5D3FFF1F2FF0000CEE4FF203EA31F39CD192FD52633D52029AE
        D1DCFFD6E7FFDCF4ECE8FBECE3E2ECEEE2F8FFF2FFC2BFD9C6E0FF2557A90036
        B70032C1103FB9BDD6FFE9EAFFF1E7ED0000D6F1FFAECBFF344AB42334C11A24
        C83842E62B3CC8B5CCFFD2EBFFEAFBF7E5E4E8F1EBFECACCF5D8EDFF0D3FA300
        3FB6003EBF265FD3ABC6FFDADFFFE0D7ECF1E9E90000CDE7EED3ECFFC0D2FF4D
        5AB62934BA2433D00A22C21936B6BDD9FFBBD0ECDCE3FCE0E8FFBCD1FF2045AD
        023CBD0644C6093EA6B9DBFFD5DFFFE3DEFBF9EFFFDFDBE00000DCEFE0ECFDE8
        DDEBE0DAE9FCD8EBFF18319F2547D61E42CE2340A8CFEAFFC7E2FF27489E133F
        B40538BE1447CD153CA8D0E4FFE0E5FAF9F0FAECE3EDEBE9FFE7EFFF0000EDF8
        E4EFF7D9F3FCDBE2F2E1CBE3F7CBEAFF133AA2183FBF1A39BE1F42C80025AA0C
        40C80B44D60337C0193DAFCBDDFFE3E2FCFAF0F0F7EBE5F7EFEFECF0FBD3DFEB
        0000F8F2F3E9E6E1F3F9E6DCEDD8DCF7EED2F4FFC3E5FF294EAA193BD4032EE9
        0024EA003AF70037D8143CB3D8E6FFE5E4FFF2E9FEFFF5FFECEBEFEEF3F1F0F8
        EDE5EDE20000FFF0FFEDDEECFBF8F4E5EFE2E3FDEDCCEAEBCBE8FFA5C1FF1130
        D90027FA0026FF0037FF002ACEB7DCFFDDE6FFDCD7F2F6EDFFDED7ECF6F9FFE5
        ECE5E5EBD4FFFFEF0000FDDEFFFFF0FFE1D4DCFDFFFFD9E8EAC9DFFBD0E1FF3E
        50D30E24DA0222F1002EFC002FEA093AD61E46BDC8DEFFDBE6FFD9DBFFEAEAFF
        E4E6E7FFFFF5FAF8E0EBE5D20000F9DBFEFCDFFFFFF5FFD9D8E8D9E7FFDAEDFF
        2232B40F1DC33C4BFF162ADB1F3FDF2046DA2F5AE50730AF2244B6C1D9FFE0EA
        FFE0E2FFF1F0F2F3F2E4F9F6E8FEF7EE0000F6E3F6FDECFFF1E8FCE0E1FFD2E1
        FF2037B12038F02F42FF202BC9444CC7C6D6FFB6CFFF163CAC345FE4133DD228
        4ACCBCCCFFEBEFFFF5F1F6DCD7D4F1EEF7FDFBFF0000F9F8FAE4E7F5DBE2FFDA
        E7FF3045BE1936D70E33F91232E92E3CB4DEE5FFD7E2FFD9ECFFCDEBFF2042B3
        183BCB2C4AD7495AC1D0D9FFEBEEFFECEFFEEEF2FFDFE3F50000E5FCEEC4E3F2
        C1E0FF2041C02043ED224CFF0028CF1F50D0D3ECFFE1EDFFD0DFF9E3F3FFC3D0
        FCD5E2FFD8E2FF2E3BB51D2EB34E62D9BCD2FFD6ECFFDEEEFFEDF7FE0000D4F5
        FFB9E5FF2754C71D48E5072FE2133DE41F51CFBAE5FFDBF1FFDEEBF3E2F2FFE6
        F1FFECF3FFE9EBFFCFD0FFE1E5FF5260D11C30A04860B2C0D9FFEBFBFFE2EDF1
        0000B7D4FF1744C41646E41847E91439CB3552C5C9DAFFDFEBFFE6F0FFEBF2FB
        E9F2FCE9F1FEEBF1FEEBEFFFE9ECFFE6EAFFE6ECFFD7E0FF596385ECF9FFE3EC
        F6F3FBFF00003155D12354EC0026C90A3FD5355ED2BED8FFE5EEFFEFF2FFEDF2
        FBEBF3FAEBF2FBEBF3FAEBF2FBEBF3FAEBF2FBEBF3FAE9F0F9F6FEFFD6DDE6F0
        F8FFE5ECF5DFE7EE00001A4BAF0E49C41253D40D4BC1A4D5FFC2E7FFE6FDFFEA
        F8F7E8F4F8E9F4F8E9F3FAE9F4F8E9F3FAE9F4F8E9F3FAE9F4F8E7F1F8EDF8FC
        F4FEFFE1ECF0E9F3FAE8F3F7000029519C2251AD2B5DBDB4E3FFBFE4FFDFF9FF
        CAD9DBEEF7EDEEF6F5EEF5F8EEF4F9EEF5F8EEF4F9EEF5F8EEF4F9EEF5F8F0F6
        FBE3EAEDECF2F7EDF4F7EDF3F8F8FFFF0000E8F1FFCDDBFFD6E2FFE3EDFFDDDF
        FFECE5F2FFFEF7FFFBEEFCF5F2F7F4F6F7F3F8F7F4F6F7F3F8F7F4F6F7F3F8F7
        F4F6F8F4F9FBF8FAF0ECF1FFFEFFF1EDF2F5F2F40000DBD9F6F3F2FFF5F1FFE9
        E4FFF4EAF7FFFDFEFFFDEEFFECDDFFF5F3FBF4F7FDF4F7FBF4F7FDF4F7FBF4F7
        FDF4F7FBF4F7F8EFF2FFFDFFFCF3F6FCF5F8FCF3F6F4EDF00000}
      Lowered = True
      PaintStyle = psCaptionGlyph
    end
    object btnConfirmar: TdxBarButton
      Caption = 'Confirmar'
      Category = 0
      Hint = 'Confirmar'
      Visible = ivAlways
      Glyph.Data = {
        F6050000424DF605000000000000360000002800000015000000170000000100
        180000000000C005000000000000000000000000000000000000E7EAEEE7EAEE
        E7EAEEE7EAEEE7EAEEE7EAEEE7EAEEE7EAEEE7EAEEE7EAEEE7EAEEE7EAEEE7EA
        EEE7EAEEE7EAEEE7EAEEE7EAEEE7EAEEE7EAEEE7EAEEE7EAEE00E8EBF0E8EBF0
        EAEAF0EAEAF0EAEBEFEAEBEFECEAF0F0E8F3EEE9F2EAEAF0E5ECEFE3ECEFE3EC
        EFE7EBF0EAE9F2ECEAF0ECEBEFEAECECE7EEEBE5EDECE5EDEC00E9E7F3F4F3FD
        E6E2EDECE9F2F1EFF5EAE6ECEDE1EDFFE4FDECD5EBEEEBF4E2EFF1D4EAE8DDF0
        F3E4EAF5F1ECFBF2E8F5F2EAF1EDEFE9E6F3E5E1F3E6DDF2E900F3F3FFDEDFE9
        F0F3F8E9ECF0E7EBECEBF0EFF5F5F5E1DADFFFFDFFE7EFEFD8E8E7CCE1E2E1F1
        F8E9EFFCE5E2F2F2E8F5F4E9F1EFEEEAE9F1E7E2F2E7DFF1EA00E2E5EDD3DCDF
        EAF8F4F0FFF8D4EBDDDDF5E3C8ECCE2F6236B3E6BACDEDD5ECFEF7DCE3ECF4F5
        FFE1E3EEE5E6F0ECEAF0EEEAEFF3E8F0F1E9F0EEEAF0E7ECEF00F6FFFFDEF0E9
        DAF5E5D2F6DEBFEAC9CDFFD720652C2F943E00610DCCFFD7DDFCE7EBF0F3DDD9
        E5F1F0F9ECEFF3E8ECEDECEBEFF3E6F4F5E5F7F3E5F7EEE7F400E4F4EDD6F2DF
        CAF4D5C7FFD4C3FFD00D5C1D248C3717A82E2AB93F005D0CCBFFD2E2F4E3F3F3
        F3E0DFE1EAECEDE7ECEDE8EAF2F0E6F7F3E3FAF3E3FAF1E5F700D2E9DBCEF6DA
        CBFFD8BEFFD0076118248C393FBE5804A21F12AE2B2195310D5C13CEF6CCF6FF
        F1E1E9DEE5E8E6E9ECF0E9EAF4EBE8F8EDE7FAF1E7F8F2E7F700DCF6E4DDFFE9
        C6FFD5004D0719872F56D26E179E302AB94624B13C23A1313AA43F085504BDEE
        B6F4FFEDE9EDE7ECECF2E9EBF6E3ECF5E3EDF4E7EDF2F0EBF400E4FFECBDF0CA
        0953192B8E4065DB7C21A53A4BCF6527993F005B023EB44B279A2C47AC431A67
        13C9F4C1E6FCE4E8F0EFE6EEF5DFF0F3DDF1F2E3F1EFEDEFF000D3F0D9255931
        418B4F63C6785DD37456DA6F2A9F4205501AC9FFD800510141AC452D9D2D3EA3
        3A196317C8FACAD8F7E2DBF1ECE5FAF8D3E8E6DFEEEAF0F5F300D7F2DE1B4C26
        81C58E7DD78E6AD78131AC4A096E20D1FADFDAF6E3DBFFE10A5D0E2086202591
        273F9C411C6821CFFFDCDEFFEDD9EFEAE8F6F5EDF8F6EBF0EE00E0F8E6355E3F
        568F628CD89E5BB46E006315B0FFC5E8FDF4DADDE1DBF1DFD5FFD8BFFFC30B6B
        102B94333DA147095717C6F9D3CBE0D7FAFDFFE1DFE5E8EBE900E3F5E8D2EFD8
        28533272AA81125522B9FFCDD1FFE2DDE8E6FFFAFFE6E8E9D3E6D7DCFFE2BBFF
        C3004D0041A74F3F934B154F1FEFFFF7F7F9FAF1EDF2EDF0EE00E4F1E9E5F9EC
        E0FCE9294D37C9F2D7D4FFE3D0F4DCE9F2EFEBE6EFFFFBFFF7FAFFD7EDE1DFFF
        ECBBFFCA004B08135D1D508956213F22D2DFD1ECF0EAF0F8F100E4EBE8DCE7E4
        ECFAF4EAFAF3D1E6DEEBFFF7E5F8EFF6FFFAE7E9EAE3DFEAF1EFFBF1F5FFCCDC
        DBE4FFF5CCFCD8CEFFD52457254B71473A5835DFF3DCE6F5E700F3F7F8F9FDFE
        E8EBEFE7EAEFFBFDFFE6E7F1E7ECEFDEE9E1F6FFF9E4EEEEECF1FAE8E6FCF9F5
        FFE7E3F6E0E4E9EAFFEDCAF0C612450B33692D285425DBF6DC00FAFBFFE9E9EF
        F0EDF6FFFBFFF2EDFCF2EBFAF0EFF8F2F9F4E6F4E9E7F4F2E5EDF4FBF8FFDDD1
        EFFFF3FFFEF3FFEDF2F0F1FFF0D6FFD2E1FFDF15401528422B00F0F3F8F0F2FA
        F2F1FAF2F1FBF2F1FBF2F1FBF0F2FAF0F3F7EFF4F5EFF4F7EFF3F8F0F0FCF2EF
        FEF4EFFEF2F1FBEDF0F4F5FFF9E5F6E9E7FAEBEBFBF0EAF3F000EFF3F8EFF3F8
        EFF3F8EFF3F8EFF3F8EFF3F8EFF3F8EFF3F8EFF4F7EFF4F7EFF4F7EFF4F7EFF4
        F7EFF4F7EFF4F7EBF0F3FAFFFFE8EDF0FAFFFFECF1F4F2F7FA00EBF4F7EBF4F7
        EBF4F7EBF4F7EBF4F7EBF4F7EBF5F5EBF5F5EBF5F5EBF5F5EBF5F5EBF5F5EBF5
        F5EBF5F5EBF5F5E7F1F1F4FEFEE4EEEEEEF8F8E6F0F0E8F2F200EEF6F6EEF6F6
        EEF6F6EEF6F6EEF6F6EEF6F6EEF6F5EEF6F5EEF6F5EEF6F5EEF6F5EEF6F5EEF6
        F5EEF6F5EEF6F5EBF3F2EFF7F6EEF6F5E0E8E7F6FEFDEEF6F500F7F5F5F7F5F5
        F7F5F5F7F5F5F7F5F5F7F5F5F7F5F5F7F5F5F7F5F4F7F5F4F7F5F4F7F5F4F7F5
        F4F7F5F4F7F5F4F4F2F1FAF8F7FDFBFAF1EFEEFFFFFEFFFFFE00}
      PaintStyle = psCaptionGlyph
    end
    object btnMarcarTodas: TdxBarButton
      Caption = 'Marcar Todas'
      Category = 0
      Hint = 'Marcar Todas'
      Visible = ivAlways
      Glyph.Data = {
        9A050000424D9A05000000000000360000002800000013000000170000000100
        180000000000640500000000000000000000000000000000000089787B9E8C8D
        9D8A879D89849F8983A08981A0877DA1877BA28779A18678A68679A68679A486
        7BA1847BA0847D9D837D99837E968380A9999A0000009E898CEFDAD8F6DED8F7
        DFD3F9DED0FBDCCDFCDBCBFBDAC7FAD9C6FCD9C5FAD5C1F9D4C0F5D4C0F1D3C0
        EAD4C2E5D2C3E5D1C6E5CFC9967E7E000000937E80FAE2DCFFE6D6FDE1C9FFE7
        CAFFDDBFFFDDBCFFE4C4FFD9BCFFDBBEFFD6B5FFDBB8F0D0ACF4E1BCDEDDB7DD
        DEBEDAD0B8DFCCBDA5888400000093807BFBE6D7F9E0C6FFE6C2FFEFC6FFE1B4
        FFE0B2FFECC0FFDDB6F7D8ABF9EDB3E8E9A9697533D7E7A7D1E0A3DDE1ADDECE
        A9FFEFD7AA8A7F000000948673FBEBCEFFF5CCFFF0C0FFF7C1FFEFB6FFEFB6FF
        F5BCFFE8B3F7F1B0C4F7963285182A8C1C28750DE3FBA3F0E29AFFFDC8E1B48F
        AB8C75000000958872FDEECEFFF2C9A99565917C45B79F65B99E65947941AC8D
        5AF0EEAD40771452AA384BAE3A398A1D82A648ECEA9CEFD397FFF3C9AB8D7400
        000097877BFFECDAFFEFD3FFF1CDFFF9CFFFE8BCFFE8BCFFF5CCFFE8C4FCE7BA
        707530D5E597E8F8AAAEC87A3E6C1F517A36C9D9A4E2D9B7A98B7A0000009986
        83FFEDE2FFFAE6FFE9CFFFEECEFFEBC9FFEACBFFE9CCFFE0C7FFF0D1FFEDBFFF
        F9C2F2E1A9FCFBC1BCDEA24269326F8257DEDABEA68A7F0000009C878AFFEEE9
        FEE6DAFFEBD7FFF7DFFFEFD5FFEDD5FFF2DFFFE1D2FBDCC7FFE1C0FFEFC5F1EB
        BEF1F3C5E1E0B4E6DFB8F5E0C4E8CEBDA48A830000009D8988FFF0E8FFFCEBFF
        EED8FFF3D8FFEED2FFEDD3FFEED8FFE4D3FFF2D9F3EDC0EDF8C04B672BE6FFC5
        E6E8B4FFEDC2FFDEBDFFDEC7A58D81000000A59888FFF8E1FFF7D7FFF9D4FFF5
        CBFFFDD3FFFBD4FFEECBFFEFD0EDF0C2DBFFBA277712308A262D7A19DEFFB0EE
        F4ADF8E4ADFFE4BDA68E76000000A69A88FFFBE0FFFFE4A49870A5986C998A5C
        98885EA4936CA08D6CF7FFCD2C6C124DAB3C5CBB4D2A7F1666A545D3F7A5EBEE
        B0FAEABCA89074000000A5998DFFFAE7FFFBDFFEEFCEFFFFDDFFFCD7FFFCD8FF
        FEDDFAE5CAF6F4CB55782ECEFFA8D4FFAAB1E68F47923E36792ED3F6BDE6ECC3
        A78C77000000A79896FFF9F0FFFFF1FFFFECFFEFD4FFFFE9FFFFEAFFEBD2FFFA
        E6FFFBDFFAFFD1E3F8BAE8FDBEDEFDBEB3E6A8306129586E44E2E1C5A0887C00
        0000A796A1FFF7FAFFEDE6FFFFF2FFFFF1FFECDAFFEBDBFFFFF2FFF7EDF9E3D7
        FDF1D9E6E9C9EAFFDDD5ECC6FBF6D7FFEBD3FFFFF0F6D5CC988582000000A898
        A3FFFBFCFFFEF7FFFCEDFFF1DFFFFFEEFFFFF0FFEFDFFFF6EAFFF8E7FFFFE7F2
        FFE040683FD3F2CBF9F4D3FFEED5FCD3C4FFE2DA968281000000A99E9AFFFFF4
        FFFFE9FFFFE9FFFAD9FFFFDEFFFFDFFFF8D9FFFFEAFFFCD6DCFFC43C762F3A79
        31407C36CDFFBFDCFCC5F9FFD6F7EAD09C8478000000ABA098FFFFF2FFFFEE92
        84689E8F6F9D8E6DA08E6FA08E71927F64FFFFE24B7A3B4E92456DAD613F8035
        63A760D0FFC8D3F0BFF0F7D4928773000000B09E9DFFFFF8FFFEF6FFFFF3FFFF
        F3FFFFF0FFFEF1FFFDF1FFFBF2FEFEEC3B5A33E3FFDFE0FFDC9DCA994875444A
        7143D5F5CCE4FCDA7F8E73000000B4A8A6FFFFFBFFFDF7FFFDF7FFFDF7FFFEF7
        FFFCF8FFFCF7FEF9F6F9FDF2F6FFF0F3FFEAD5EECCF3FFE9DEF6D349613E5A72
        4FE2F9D982987C000000A6ADA6F3F8EFFFFFF8FFFFF8FDFFF8FBFFF8FAFFF9F8
        FFF9F5FFFAF6FFF5EBF2DDF4F9DEFDFFE7FAFFE2FEFFE5F8FEDFE7EFD0F9FFE5
        848A73000000C0C2BCF5F6EDFFFEF4FDFFF3FEFFF5FBFFF4F9FEF5F5FEF4F4FD
        F3F6FDF0FFFFF2FAF3DFFFFFEFFFFFECFFFBE2FFFFE7F6F2D9F6F2DA817B6800
        0000B49F9DC2ACA7BDA59FBEA6A0BEA6A0BCA6A0BAA7A0B6A69FB5A59FB3A69E
        A89990C6B6AAB3A698A39686B8AB9BB8AC9AABA18FBAB09EA79E90000000}
      PaintStyle = psCaptionGlyph
    end
    object btnDesmarcarTodas: TdxBarButton
      Caption = 'Desmarcar Todas'
      Category = 0
      Hint = 'Desmarcar Todas'
      Visible = ivAlways
      Glyph.Data = {
        9A050000424D9A05000000000000360000002800000013000000170000000100
        1800000000006405000000000000000000000000000000000000715342A37A63
        9F765F906750A37A63A37A63946B549C735C9A715A9A715A9A715A9A715A9A71
        5A9A715A9A715A94725B7B61508B79687D6D60000000956F57FCCCAAFFE1BAF0
        C7A0FED2ADFFD1ABF2C298FFCFA3F8C799F6C69CF6C59FF6C3A2F6C3A3F4C2A4
        F1C2A7EAC3A7E6C9AAD5BFA38D7967000000906D4CFFE0ACFAE4A3F2E19EFAE0
        A4FDDC9DFFD88DFFDF8CFFDC87FFE294EFC386FFD3A0F4C697E2B790EFD0B1DF
        C4A2E5CB95E4CC988E765A0000008F6B4DFFE5B4FFEDADFBE8A4FFE7A5FFE6A1
        FFE091FFE38FFED47BEEC87AE7C695C5A38BDDBCB3E0C0BB7D6052C7AB89EACD
        90EACE919377580000008F6455FFE3C9FFEBC7FFE2B6FFE3ACFFE5ACFFDAA6FF
        D6A1FFDFA5FFDFB6B8A3A2514771A093E76F59A7946B80FFD5BDEDCB90E9CD90
        9377580000009E716DFFDCCDEFBAA5B58666996F449F7246AF714BB97550AE6E
        45FFD8C2D4C0D3ADA5E429208E4D389EE3B9E2E3B5AAEBC993E9CD9092765700
        00008A6361FFEBE0FFF9E2FFEED0FFE9CBFFEBCDFFE0C0FFD9B5FFDAB4FFD7C0
        DEBDCBC3A8D363478D6B4D949C78A6E1BFC5E9CB9AE9CD909175560000008868
        62FFE5D5F9EBCEE9E0BEEDDEC4FFE9CDFFECC8FFF1C7FFE7BCFFE4C7FCD8D884
        5F73D0ABCDCBA9D2836A96786170EACFA3ECD094917556000000927969FFF4D8
        FEFFD3F3FDCEFAF8D6FFF4D2FFECBCFFEFB6FFEEB6F1DBB1FFE4D1FFDBD8EFC7
        C8F9DBE8BFB1D3B3A8B8ECD6ACF1D49B9377590000008F7A65FFEECBF4F7C5EE
        F8C3F8F9CDFFF6CBFFF1BCFFF7BEFFF6BDFDEBC2E9D3C7CBB3BBF2D9EDD6C2DF
        6B6185B7ADB9F1DBB1F3D8A094795E000000917A64FFEECCFFFFD8FFF3C2FFF7
        C1FFFFD4FFECBDFFEFC1FFE6B8FFF3D8B3B3C33C457E949CFA6566C17B6FA1EB
        D5DAF7DFB5FDE5B1886F550000009C8272FFF5DAFFFBD7927F548F824E806F3E
        AB88609A724F96714BFFEDDCEAEFFF91A5F22032AF3F45BCD6C7FFEFD7DFF8E1
        BBFEE7B787705A00000091756EFFF9EAFFFFEBFCEFCFFFFCDAFFEECDFFF7DAFF
        E6CCFFFADDFBE6DED0CDEDB7BDFF3336A34A47B48575BCE5D1E8F8E4C5FDE8BB
        86705E000000A08483FFFBF1F1E6D2FFFFEDFFFFEDFFFCE9FFFBE6FFFFE9FFEA
        D2FFF1EAFDEEFF63548DC9BBFFCABBFF6D61A97D6F93F5E6CCFBEABF826F6000
        00008F7779FFFFF8FFFFF0F5FFEAFFFEF6F3E8E0FFF8E3FFEFD2FFFFEAE7D7C7
        FFF7FFF8D2EEFFE9FFFFE5FFCBC2FFABA8D6F3E7D5F9EAC37F6D62000000A991
        93FFFFF7F9FCE3F4FDE3F8F4E9FFF6ECFFFCE6FFFFE7FFF2D5FFFFF1EDD1DED1
        B2CFFFE1FFE8D0FF625A9BBDBBE5F5EBD9F9EBC77C6D64000000A48783FFFAED
        FFFFEBFFFFEAFFFFEAFFFFEAFFF1D7FFF4D8FFFADDFFF2E7D9D2ED52518F9D9C
        F87873CF877BBDF4E7FFFDF0DAFAEDCD7B6E66000000AC918DFFFDF0FFFFEE86
        70578574597C684FA0826F8C6B5C907365FFEFF3E9E8FFB4BCFF2F38A74344B2
        E7DAFFEBDAFBFEF1E3FAEDD37C6E68000000A0918EFFF8F0FFFFF5FFFFF4FFFF
        F7FFF6EFFFFCFEFFF7FFFFF9FFEAE2FFF3EFFFAFAEF64946A24C47AA887DD9E8
        D9FFF5E7EDFCEDDD8E827C000000A49C95FFFFF5FFFFF5FFFBF1FFFDF6FBF6F3
        FFFEFFFFFBFFF2F0FFF8F6FFE3E1FF7974ABBFBBFDECE7FF6B64B5867EBAF3E7
        F3FFF5EB6C625B000000979283FFFAE6FFFFF0FFFFEDFFFFF1FFFFF2FFFFF5FD
        FEF4FDFFFCF8FBFFF8FBFFF6F8FFD8DAF9EAEBFFF1F2FF9E9EBCF9F3F4FFFFF5
        635E55000000B3A89AFFF5DFFFFFEEFFFFEBFFFFEDFFFFECFFFFEEFFFEE9FFFF
        EFFFFFF5FFFFF9FFFBFAFFFDFFFFFBFFE9E6F5FFFCFFFEF6EFFFFEF16D695E00
        0000987C75B69389B08E81A98A7BAB907CA48974A68E76AD977EA59178A8967F
        998573948271A9988BAB998E95837C95847B948478A6988C867A70000000}
      PaintStyle = psCaptionGlyph
    end
  end
  object dsSelecionados: TDataSource
    DataSet = mtbSelecionado
    Left = 44
    Top = 283
  end
  object mtbSelecionado: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 75
    Top = 283
  end
  object dsSelecionar: TDataSource
    DataSet = DMCadastros.SeletorPessoas
    Left = 25
    Top = 82
  end
  object LookAndFeel: TcxLookAndFeelController
    Tag = 1
    Kind = lfOffice11
    NativeStyle = True
    SkinName = 'Blue'
    Left = 74
    Top = 86
  end
end