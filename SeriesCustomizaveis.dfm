object FrmSeriesCustomizaveis: TFrmSeriesCustomizaveis
  Left = 344
  Top = 121
  Width = 696
  Height = 480
  BorderIcons = [biSystemMenu]
  Caption = 'S'#233'ries Customizaveis'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel2: TPanel
    Left = 0
    Top = 0
    Width = 680
    Height = 43
    Align = alTop
    BorderWidth = 3
    Color = clWhite
    TabOrder = 0
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 184
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TLabel
      Left = 6
      Top = 0
      Width = 202
      Height = 23
      Caption = 'S'#233'ries Customizaveis'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object RzPanel1: TPanel
    Left = 0
    Top = 43
    Width = 680
    Height = 373
    Align = alClient
    TabOrder = 1
    object GroupBox6: TGroupBox
      Left = 333
      Top = 8
      Width = 313
      Height = 86
      Caption = ' [ Configura'#231#245'es - Administrativo] '
      TabOrder = 0
      object BitBtn5: TBitBtn
        Left = 8
        Top = 28
        Width = 145
        Height = 25
        Action = ActConfigurarCartaSCPC
        Caption = '&Carta SPC'
        TabOrder = 0
        Kind = bkRetry
      end
      object BitBtn3: TBitBtn
        Left = 157
        Top = 28
        Width = 145
        Height = 25
        Action = ActRecibo
        Caption = 'Recibo'
        TabOrder = 1
        Kind = bkRetry
      end
    end
    object GroupBox1: TGroupBox
      Left = 9
      Top = 8
      Width = 313
      Height = 86
      Caption = ' [ Configura'#231#245'es - Faturamento ] '
      TabOrder = 1
      object BitBtn1: TBitBtn
        Left = 8
        Top = 28
        Width = 145
        Height = 25
        Action = ActConfigurarDevolucaoCarga
        Caption = '&Devolu'#231#227'o de Carga'
        ModalResult = 4
        TabOrder = 0
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
          33333333333F8888883F33330000324334222222443333388F3833333388F333
          000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
          F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
          223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
          3338888300003AAAAAAA33333333333888888833333333330000333333333333
          333333333333333333FFFFFF000033333333333344444433FFFF333333888888
          00003A444333333A22222438888F333338F3333800003A2243333333A2222438
          F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
          22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
          33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
          3333333333338888883333330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object BitBtn2: TBitBtn
        Left = 160
        Top = 28
        Width = 145
        Height = 25
        Action = ActConvenio
        Caption = 'Conv'#234'nio PDV'
        ModalResult = 4
        TabOrder = 1
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333444444
          33333333333F8888883F33330000324334222222443333388F3833333388F333
          000032244222222222433338F8833FFFFF338F3300003222222AAAAA22243338
          F333F88888F338F30000322222A33333A2224338F33F8333338F338F00003222
          223333333A224338F33833333338F38F00003222222333333A444338FFFF8F33
          3338888300003AAAAAAA33333333333888888833333333330000333333333333
          333333333333333333FFFFFF000033333333333344444433FFFF333333888888
          00003A444333333A22222438888F333338F3333800003A2243333333A2222438
          F38F333333833338000033A224333334422224338338FFFFF8833338000033A2
          22444442222224338F3388888333FF380000333A2222222222AA243338FF3333
          33FF88F800003333AA222222AA33A3333388FFFFFF8833830000333333AAAAAA
          3333333333338888883333330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
    end
    object GroupBox2: TGroupBox
      Left = 9
      Top = 98
      Width = 313
      Height = 86
      Caption = ' [ Configura'#231#245'es - Ordem de Servi'#231'o] '
      TabOrder = 2
      object BitBtn4: TBitBtn
        Left = 8
        Top = 28
        Width = 145
        Height = 25
        Action = ActConfigurarOS
        Caption = 'Configurar OS'
        TabOrder = 0
        Kind = bkRetry
      end
    end
    object GroupBox3: TGroupBox
      Left = 333
      Top = 98
      Width = 313
      Height = 86
      Caption = ' [ Configura'#231#245'es - Receita Agron'#244'mica] '
      TabOrder = 3
      object BitBtn6: TBitBtn
        Left = 8
        Top = 28
        Width = 137
        Height = 25
        Action = ActConfigurarReceita
        Caption = 'Receita Agron'#244'mica'
        TabOrder = 0
        Kind = bkRetry
      end
    end
    object GroupBox4: TGroupBox
      Left = 9
      Top = 188
      Width = 313
      Height = 86
      Caption = ' [ Configura'#231#245'es - Acerto de Contas ] '
      TabOrder = 4
      object BitBtn7: TBitBtn
        Left = 8
        Top = 28
        Width = 137
        Height = 25
        Action = ActConfiguraAcerto
        Caption = 'Acerto por Caixa'
        TabOrder = 0
        Kind = bkRetry
      end
    end
  end
  object BarManager: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
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
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = True
    Left = 349
    Top = 8
    DockControlHeights = (
      0
      0
      0
      26)
    object BarManagerBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Navega'#231#227'o'
      CaptionButtons = <>
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 474
      FloatTop = 445
      FloatClientWidth = 257
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarBDBNavFirst'
        end
        item
          Visible = True
          ItemName = 'dxBarBDBNavPrev'
        end
        item
          Visible = True
          ItemName = 'dxBarBDBNavNext'
        end
        item
          Visible = True
          ItemName = 'dxBarBDBNavLast'
        end
        item
          Visible = True
          ItemName = 'btnIncluir'
        end
        item
          Visible = True
          ItemName = 'btnExcluir'
        end
        item
          Visible = True
          ItemName = 'btnLocalizar'
        end
        item
          Visible = True
          ItemName = 'BtnListagem'
        end
        item
          Visible = True
          ItemName = 'BtnSalvar'
        end
        item
          Visible = True
          ItemName = 'BtnCancelar'
        end
        item
          Visible = True
          ItemName = 'BtnFechar'
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
    object btnIncluir: TdxBarButton
      Category = 0
      Enabled = False
      Visible = ivAlways
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888800000000000888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F08888880FFFFFF00
        888888800000000888888888888888888888}
    end
    object btnExcluir: TdxBarButton
      Category = 0
      Enabled = False
      Visible = ivAlways
      Glyph.Data = {
        36030000424D360300000000000036000000280000000F000000100000000100
        1800000000000003000000000000000000000000000000000000008080008080
        0080800000000000000000000000000000000000000000000000000000000080
        80008080008080000000008080008080008080000000FFFFFF7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F000000008080008080008080000000008080008080
        008080000000FFFFFF000000BFBFBF000000BFBFBF0000007F7F7F0000000080
        80008080008080000000008080008080008080000000FFFFFF000000BFBFBF00
        00007F7F7F0000007F7F7F000000008080008080008080000000008080008080
        008080000000FFFFFF000000BFBFBF000000BFBFBF0000007F7F7F0000000080
        80008080008080000000008080008080008080000000FFFFFF000000BFBFBF00
        00007F7F7F0000007F7F7F000000008080008080008080000000008080008080
        008080000000FFFFFF000000BFBFBF000000BFBFBF0000007F7F7F0000000080
        80008080008080000000008080000000008080000000FFFFFF000000BFBFBF00
        00007F7F7F0000007F7F7F000000008080000000008080000000008080008080
        000000000000FFFFFF000000BFBFBF000000BFBFBF0000007F7F7F0000000000
        00008080008080000000008080008080008080000000FFFFFF000000BFBFBF00
        00007F7F7F0000007F7F7F000000008080008080008080000000008080008080
        0080800000007F7F7F0000007F7F7F0000007F7F7F0000007F7F7F0000000080
        8000808000808000000000808000808000000000000000000000000000000000
        0000000000000000000000000000000000008080008080000000008080008080
        000000FFFFFFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000
        0000808000808000000000808000808000000000000000000000000000000000
        0000000000000000000000000000000000008080008080000000008080008080
        0080800080800080800000007F7F7F7F7F7F7F7F7F0000000080800080800080
        8000808000808000000000808000808000808000808000808000000000000000
        0000000000000000008080008080008080008080008080000000}
    end
    object btnLocalizar: TdxBarButton
      Category = 0
      Enabled = False
      Visible = ivAlways
      Glyph.Data = {
        36050000424D360500000000000036040000280000000E000000100000000100
        0800000000000001000000000000000000000001000000000000000000003300
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
        D7D7D7D7000000000000ACAC56D7D7D7D7D7D7D7ACD756AC0000ACAC56D7D7D7
        D7D7D7D7AC56ACAC0000ACAC565656565656565656ACACAC0000}
    end
    object BtnSalvar: TdxBarButton
      Category = 0
      Enabled = False
      Visible = ivAlways
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000BFBFBFBFBFBF000000
        007F7F007F7F000000000000000000000000000000000000BFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
        0000000000000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
        007F7F007F7F000000000000000000000000000000000000BFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
        0000000000000000000000000000000000007F7F000000BFBFBFBFBFBF000000
        007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F
        7F007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
        0000000000000000000000000000007F7F007F7F000000BFBFBFBFBFBF000000
        007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
        007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
        007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
        00000000000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBFBF000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
    end
    object BtnCancelar: TdxBarButton
      Category = 0
      Enabled = False
      Visible = ivAlways
      Glyph.Data = {
        76030000424D7603000000000000360000002800000011000000100000000100
        1800000000004003000000000000000000000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        80000080800080800000FF0000FF0000FF0080800080807F7F7F0000007F7F7F
        0080800080800000FF0000FF0000FF0080800080800000808000808000808000
        00FF0000FF0000FF0080800000000000000000000080800000FF0000FF0000FF
        008080008080008080000080800080800080800080800000FF0000FF0000FF7F
        7F7F0000007F7F7F0000FF0000FF0000FF008080008080008080008080000080
        800080800080800080800080800000FF0000FF0000FF0080800000FF0000FF00
        00FF008080008080008080008080008080000080800080800080800080800080
        800080800000FF0000FF0000000000FF0000FF00808000808000808000808000
        8080008080000080800080800080800080800080800080800080800000800000
        0000008000808000808000808000808000808000808000808000008080008080
        0080800080800080800080800000FF0000800000000000800000FF0080800080
        80008080008080008080008080000080800080800080800080800080800000FF
        0000FF0000000000000000000000FF0000FF0080800080800080800080800080
        80000080800080800080800080800000FF0000FF0000FF000000000000000000
        0000FF0000FF0000FF0080800080800080800080800000808000808000808000
        00FF0000FF0000FF0080800000000000000000000080800000FF0000FF0000FF
        008080008080008080000080800080800000FF0000FF0000FF0080800080807F
        7F7F0000007F7F7F0080800080800000FF0000FF0000FF008080008080000080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080000080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080000080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000}
    end
    object BtnListagem: TdxBarButton
      Category = 0
      Enabled = False
      Visible = ivAlways
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B803000000000000000000000000000000000000BFBFBF000000
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
    object BtnFechar: TdxBarButton
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
    object dxBarBDBNavFirst: TdxBarDBNavButton
      Caption = 'ActInicio'
      Category = 1
      Enabled = False
      Hint = 'Ir ao primeiro registro'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777708777780007777770877800000777777088000000
        0777777087780000077777708777780007777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      NavButton = dxbnFirst
    end
    object dxBarBDBNavPrev: TdxBarDBNavButton
      Caption = 'ActPrior'
      Category = 1
      Enabled = False
      Hint = 'Ir ao registro anterior'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777780777777777777800077777777778000007777777780000000
        7777777777800000777777777777800077777777777777807777777777777777
        7777777777777777777777777777777777777777777777777777}
      NavButton = dxbnPrior
    end
    object dxBarBDBNavNext: TdxBarDBNavButton
      Caption = 'ActNext'
      Category = 1
      Enabled = False
      Hint = 'Ir ao pr'#243'ximo registro'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777708777777777777770008777777777777000008777777777700000008
        7777777700000877777777770008777777777777087777777777777777777777
        7777777777777777777777777777777777777777777777777777}
      NavButton = dxbnNext
    end
    object dxBarBDBNavLast: TdxBarDBNavButton
      Caption = 'ActLast'
      Category = 1
      Enabled = False
      Hint = 'Ir ao '#250'ltimo registro'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777700087777807777770000087780777777000000088
        0777777000008778077777700087777807777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      NavButton = dxbnLast
    end
  end
  object ppLayoutCartaSCPC: TppDBPipeline
    DataSource = DmSerie_Customizaveis.dsLayoutCartaSCPC
    UserName = 'LayoutCartaSCPC'
    Left = 400
    Top = 102
    object ppLayoutCartaSCPCppField1: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 0
    end
    object ppLayoutCartaSCPCppField2: TppField
      FieldAlias = 'CONFIG_CARTA_SCPC'
      FieldName = 'CONFIG_CARTA_SCPC'
      FieldLength = 8
      DataType = dtMemo
      DisplayWidth = 10
      Position = 1
      Searchable = False
      Sortable = False
    end
  end
  object rptCartaSCPC: TppReport
    AutoStop = False
    DataPipeline = ppConsulta_Cobranca_Pessoa
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.DatabaseSettings.DataPipeline = ppLayoutCartaSCPC
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'CONFIG_CARTA_SCPC'
    Template.FileName = 'C:\Documents and Settings\Administrador\Desktop\a.rtm'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    Units = utMillimeters
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
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 336
    Top = 102
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 12171
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Consulta_Cobranca_Pessoa'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 24
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 9525
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 101600
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 11642
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 7673
        mmWidth = 194734
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'SOMA'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'NOME'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 6615
        mmTop = 1323
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'ENDERECO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 11906
        mmTop = 1323
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'NUMERO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 20108
        mmTop = 1323
        mmWidth = 5556
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CIDADE'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 26988
        mmTop = 1323
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'BAIRRO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 33073
        mmTop = 1323
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 39688
        mmTop = 1323
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 43656
        mmTop = 1323
        mmWidth = 1852
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'COD_END'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 46831
        mmTop = 1323
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'COD_CID'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 54240
        mmTop = 1323
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'COD_BAI'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 61383
        mmTop = 1323
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FONE'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 68527
        mmTop = 1323
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CPF_CGC'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 73290
        mmTop = 1323
        mmWidth = 6085
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'PORCENTAGEM'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 80698
        mmTop = 1323
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 91811
        mmTop = 1323
        mmWidth = 3704
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'AGENDADO_PARA'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 96838
        mmTop = 1323
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'COBRAR_EM'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 109538
        mmTop = 1323
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MOTIVO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 119063
        mmTop = 1323
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'HISTORICO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 125677
        mmTop = 1323
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'COBRADOR'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 134144
        mmTop = 1323
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'NOME_COBRADOR'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 143140
        mmTop = 1323
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'RECEBER'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 156369
        mmTop = 1323
        mmWidth = 5821
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'PESSOA_FJ'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 163513
        mmTop = 1323
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'ORIGEM'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 171980
        mmTop = 1323
        mmWidth = 5292
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'DOCTO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 178594
        mmTop = 1323
        mmWidth = 4763
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'LANCAMENTO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 184680
        mmTop = 1323
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'ANO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 6350
        mmWidth = 2910
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VENDA'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 5556
        mmTop = 6350
        mmWidth = 4498
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'SELECIONADO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 11377
        mmTop = 6350
        mmWidth = 8996
        BandType = 0
      end
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
      mmHeight = 11113
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SOMA'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 1323
        mmTop = 529
        mmWidth = 3969
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
        DataField = 'NOME'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 6615
        mmTop = 529
        mmWidth = 3969
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
        DataField = 'ENDERECO'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 11906
        mmTop = 529
        mmWidth = 6879
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
        DataField = 'NUMERO'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 20108
        mmTop = 529
        mmWidth = 5556
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
        DataField = 'CIDADE'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 26988
        mmTop = 529
        mmWidth = 4763
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
        DataField = 'BAIRRO'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 33073
        mmTop = 529
        mmWidth = 5292
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
        DataField = 'CEP'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 39688
        mmTop = 529
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UF'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 43656
        mmTop = 529
        mmWidth = 1852
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
        DataField = 'COD_END'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 46831
        mmTop = 529
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COD_CID'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 54240
        mmTop = 529
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COD_BAI'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 61383
        mmTop = 529
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FONE'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 68527
        mmTop = 529
        mmWidth = 3440
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CPF_CGC'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 73290
        mmTop = 529
        mmWidth = 6085
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PORCENTAGEM'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 80698
        mmTop = 529
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 91811
        mmTop = 529
        mmWidth = 3704
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ATRASO'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 96838
        mmTop = 529
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COBRAR_EM'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 109538
        mmTop = 529
        mmWidth = 8202
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MOTIVO'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 119063
        mmTop = 529
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'HISTORICO'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 125677
        mmTop = 529
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COBRADOR'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 134144
        mmTop = 529
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_COBRADOR'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 143140
        mmTop = 529
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'RECEBER'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 156369
        mmTop = 529
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PESSOA_FJ'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 163513
        mmTop = 529
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ORIGEM'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 171980
        mmTop = 529
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DOCTO'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 178594
        mmTop = 529
        mmWidth = 4763
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LANCAMENTO'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 184680
        mmTop = 529
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ANO'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 1323
        mmTop = 5556
        mmWidth = 2910
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VENDA'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 5556
        mmTop = 5556
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SELECIONADO'
        DataPipeline = ppConsulta_Cobranca_Pessoa
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConsulta_Cobranca_Pessoa'
        mmHeight = 3323
        mmLeft = 11377
        mmTop = 5556
        mmWidth = 8996
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Color = clGray
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 5821
        mmWidth = 194734
        BandType = 8
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4509
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 17209
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4509
        mmLeft = 178859
        mmTop = 1323
        mmWidth = 17209
        BandType = 8
      end
    end
    object ppParameterList8: TppParameterList
    end
  end
  object Designer_CartaSCPC: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtParadox
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = rptCartaSCPC
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 432
    Top = 102
  end
  object dsConsulta_Cobranca_Pessoa: TDataSource
    DataSet = DmFinanceiro.Consulta_Cobranca_Pessoa
    Left = 464
    Top = 102
  end
  object Actions: TActionList
    Left = 305
    Top = 8
    object ActFechar: TAction
      Caption = '&Fechar  '
      OnExecute = ActFecharExecute
    end
    object ActConfigurarCartaSCPC: TAction
      Tag = 1
      Caption = '&Configurar'
      OnExecute = ActConfigurarCartaSCPCExecute
    end
    object ActConfigurarDevolucaoCarga: TAction
      Caption = '&Devolu'#231#227'o de Carga'
      OnExecute = ActConfigurarDevolucaoCargaExecute
    end
    object ActConvenio: TAction
      Caption = 'Conv'#234'nio PDV'
      OnExecute = ActConvenioExecute
    end
    object ActRecibo: TAction
      Caption = 'Recibo'
      OnExecute = ActReciboExecute
    end
    object ActConfigurarOS: TAction
      Caption = 'Configurar OS'
      OnExecute = ActConfigurarOSExecute
    end
    object ActConfigurarReceita: TAction
      Caption = 'Receita Agron'#244'mica'
      OnExecute = ActConfigurarReceitaExecute
    end
    object ActConfiguraAcerto: TAction
      Caption = 'Acerto por Caixa'
      OnExecute = ActConfiguraAcertoExecute
    end
  end
  object ppConsulta_Cobranca_Pessoa: TppDBPipeline
    DataSource = dsConsulta_Cobranca_Pessoa
    UserName = 'Consulta_Cobranca_Pessoa'
    Left = 368
    Top = 102
    object ppConsulta_Cobranca_PessoappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'SOMA'
      FieldName = 'SOMA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 0
    end
    object ppConsulta_Cobranca_PessoappField2: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppConsulta_Cobranca_PessoappField3: TppField
      FieldAlias = 'ENDERECO'
      FieldName = 'ENDERECO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppConsulta_Cobranca_PessoappField4: TppField
      FieldAlias = 'NUMERO'
      FieldName = 'NUMERO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object ppConsulta_Cobranca_PessoappField5: TppField
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object ppConsulta_Cobranca_PessoappField6: TppField
      FieldAlias = 'BAIRRO'
      FieldName = 'BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object ppConsulta_Cobranca_PessoappField7: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 6
    end
    object ppConsulta_Cobranca_PessoappField8: TppField
      FieldAlias = 'UF'
      FieldName = 'UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 7
    end
    object ppConsulta_Cobranca_PessoappField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_END'
      FieldName = 'COD_END'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppConsulta_Cobranca_PessoappField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_CID'
      FieldName = 'COD_CID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppConsulta_Cobranca_PessoappField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_BAI'
      FieldName = 'COD_BAI'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppConsulta_Cobranca_PessoappField12: TppField
      FieldAlias = 'FONE'
      FieldName = 'FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object ppConsulta_Cobranca_PessoappField13: TppField
      FieldAlias = 'CPF_CGC'
      FieldName = 'CPF_CGC'
      FieldLength = 15
      DisplayWidth = 15
      Position = 12
    end
    object ppConsulta_Cobranca_PessoappField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'PORCENTAGEM'
      FieldName = 'PORCENTAGEM'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 13
    end
    object ppConsulta_Cobranca_PessoappField15: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 14
    end
    object ppConsulta_Cobranca_PessoappField16: TppField
      FieldAlias = 'AGENDADO_PARA'
      FieldName = 'AGENDADO_PARA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 15
    end
    object ppConsulta_Cobranca_PessoappField17: TppField
      FieldAlias = 'COBRAR_EM'
      FieldName = 'COBRAR_EM'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 16
    end
    object ppConsulta_Cobranca_PessoappField18: TppField
      FieldAlias = 'MOTIVO'
      FieldName = 'MOTIVO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 17
    end
    object ppConsulta_Cobranca_PessoappField19: TppField
      FieldAlias = 'HISTORICO'
      FieldName = 'HISTORICO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 18
    end
    object ppConsulta_Cobranca_PessoappField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'COBRADOR'
      FieldName = 'COBRADOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppConsulta_Cobranca_PessoappField21: TppField
      FieldAlias = 'NOME_COBRADOR'
      FieldName = 'NOME_COBRADOR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 20
    end
    object ppConsulta_Cobranca_PessoappField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECEBER'
      FieldName = 'RECEBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object ppConsulta_Cobranca_PessoappField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESSOA_FJ'
      FieldName = 'PESSOA_FJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object ppConsulta_Cobranca_PessoappField24: TppField
      FieldAlias = 'ORIGEM'
      FieldName = 'ORIGEM'
      FieldLength = 3
      DisplayWidth = 3
      Position = 23
    end
    object ppConsulta_Cobranca_PessoappField25: TppField
      FieldAlias = 'DOCTO'
      FieldName = 'DOCTO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 24
    end
    object ppConsulta_Cobranca_PessoappField26: TppField
      FieldAlias = 'LANCAMENTO'
      FieldName = 'LANCAMENTO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 25
    end
    object ppConsulta_Cobranca_PessoappField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'ANO'
      FieldName = 'ANO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object ppConsulta_Cobranca_PessoappField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDA'
      FieldName = 'VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object ppConsulta_Cobranca_PessoappField29: TppField
      FieldAlias = 'SELECIONADO'
      FieldName = 'SELECIONADO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 28
    end
    object ppConsulta_Cobranca_PessoappField30: TppField
      FieldAlias = 'EMP_EMPRESA'
      FieldName = 'EMP_EMPRESA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 29
    end
    object ppConsulta_Cobranca_PessoappField31: TppField
      FieldAlias = 'EMP_CIDADE'
      FieldName = 'EMP_CIDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 30
    end
    object ppConsulta_Cobranca_PessoappField32: TppField
      FieldAlias = 'EMP_CNPJ'
      FieldName = 'EMP_CNPJ'
      FieldLength = 20
      DisplayWidth = 20
      Position = 31
    end
    object ppConsulta_Cobranca_PessoappField33: TppField
      FieldAlias = 'EMP_ENDERECO'
      FieldName = 'EMP_ENDERECO'
      FieldLength = 80
      DisplayWidth = 80
      Position = 32
    end
    object ppConsulta_Cobranca_PessoappField34: TppField
      FieldAlias = 'EMP_CEP'
      FieldName = 'EMP_CEP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 33
    end
    object ppConsulta_Cobranca_PessoappField35: TppField
      FieldAlias = 'EMP_BAIRRO'
      FieldName = 'EMP_BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 34
    end
    object ppConsulta_Cobranca_PessoappField36: TppField
      FieldAlias = 'EMP_FONE'
      FieldName = 'EMP_FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 35
    end
    object ppConsulta_Cobranca_PessoappField37: TppField
      FieldAlias = 'ULTIMA_BAIXA'
      FieldName = 'ULTIMA_BAIXA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 36
    end
    object ppConsulta_Cobranca_PessoappField38: TppField
      FieldAlias = 'ENDERECO_TRABALHO'
      FieldName = 'ENDERECO_TRABALHO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 37
    end
    object ppConsulta_Cobranca_PessoappField39: TppField
      FieldAlias = 'NUMERO_TRABALHO'
      FieldName = 'NUMERO_TRABALHO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 38
    end
    object ppConsulta_Cobranca_PessoappField40: TppField
      FieldAlias = 'FAX'
      FieldName = 'FAX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 39
    end
    object ppConsulta_Cobranca_PessoappField41: TppField
      FieldAlias = 'CELULAR'
      FieldName = 'CELULAR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 40
    end
    object ppConsulta_Cobranca_PessoappField42: TppField
      FieldAlias = 'LOCAL_TRABALHO'
      FieldName = 'LOCAL_TRABALHO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 41
    end
    object ppConsulta_Cobranca_PessoappField43: TppField
      FieldAlias = 'FONE_TRABALHO'
      FieldName = 'FONE_TRABALHO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 42
    end
    object ppConsulta_Cobranca_PessoappField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTALRECEBER'
      FieldName = 'TOTALRECEBER'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 43
    end
    object ppConsulta_Cobranca_PessoappField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 44
    end
    object ppConsulta_Cobranca_PessoappField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCONTOS'
      FieldName = 'DESCONTOS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 45
    end
    object ppConsulta_Cobranca_PessoappField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'JUROS_REC'
      FieldName = 'JUROS_REC'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 46
    end
    object ppConsulta_Cobranca_PessoappField48: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_PARCIAL'
      FieldName = 'VLR_PARCIAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 47
    end
    object ppConsulta_Cobranca_PessoappField49: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_ANO_VN'
      FieldName = 'REC_ANO_VN'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 48
    end
    object ppConsulta_Cobranca_PessoappField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_CODIGO_TRC'
      FieldName = 'REC_CODIGO_TRC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 49
    end
    object ppConsulta_Cobranca_PessoappField51: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_CODIGO_VN'
      FieldName = 'REC_CODIGO_VN'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 50
    end
    object ppConsulta_Cobranca_PessoappField52: TppField
      FieldAlias = 'REC_DATA_ULT_BAIXA'
      FieldName = 'REC_DATA_ULT_BAIXA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 51
    end
    object ppConsulta_Cobranca_PessoappField53: TppField
      FieldAlias = 'REC_DOCTO'
      FieldName = 'REC_DOCTO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 52
    end
    object ppConsulta_Cobranca_PessoappField54: TppField
      FieldAlias = 'REC_DT_AVISO'
      FieldName = 'REC_DT_AVISO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 53
    end
    object ppConsulta_Cobranca_PessoappField55: TppField
      FieldAlias = 'REC_DT_EMISSAO'
      FieldName = 'REC_DT_EMISSAO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 54
    end
    object ppConsulta_Cobranca_PessoappField56: TppField
      FieldAlias = 'REC_DT_LANCTO'
      FieldName = 'REC_DT_LANCTO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 55
    end
    object ppConsulta_Cobranca_PessoappField57: TppField
      FieldAlias = 'REC_HISTORICO'
      FieldName = 'REC_HISTORICO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 56
    end
    object ppConsulta_Cobranca_PessoappField58: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_JUROS_PARCIAL'
      FieldName = 'REC_JUROS_PARCIAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 57
    end
    object ppConsulta_Cobranca_PessoappField59: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_JUROS_REC'
      FieldName = 'REC_JUROS_REC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 58
    end
    object ppConsulta_Cobranca_PessoappField60: TppField
      FieldAlias = 'REC_ORIGEM'
      FieldName = 'REC_ORIGEM'
      FieldLength = 3
      DisplayWidth = 3
      Position = 59
    end
    object ppConsulta_Cobranca_PessoappField61: TppField
      FieldAlias = 'REC_PARCELA'
      FieldName = 'REC_PARCELA'
      FieldLength = 6
      DisplayWidth = 6
      Position = 60
    end
    object ppConsulta_Cobranca_PessoappField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_PARCIAL'
      FieldName = 'REC_PARCIAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 61
    end
    object ppConsulta_Cobranca_PessoappField63: TppField
      FieldAlias = 'REC_TIPO_DOCTO'
      FieldName = 'REC_TIPO_DOCTO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 62
    end
    object ppConsulta_Cobranca_PessoappField64: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_VALOR'
      FieldName = 'REC_VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 63
    end
    object ppConsulta_Cobranca_PessoappField65: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_VALOR_NOMINAL'
      FieldName = 'REC_VALOR_NOMINAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 64
    end
    object ppConsulta_Cobranca_PessoappField66: TppField
      FieldAlias = 'REC_VLR_ORIG_ALT'
      FieldName = 'REC_VLR_ORIG_ALT'
      FieldLength = 1
      DisplayWidth = 1
      Position = 65
    end
    object ppConsulta_Cobranca_PessoappField67: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_VLR_PARCIAL'
      FieldName = 'REC_VLR_PARCIAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 66
    end
    object ppConsulta_Cobranca_PessoappField68: TppField
      FieldAlias = 'FANTASIA'
      FieldName = 'FANTASIA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 67
    end
    object ppConsulta_Cobranca_PessoappField69: TppField
      FieldAlias = 'RG_IE'
      FieldName = 'RG_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 68
    end
    object ppConsulta_Cobranca_PessoappField70: TppField
      FieldAlias = 'DT_NASCIMENTO'
      FieldName = 'DT_NASCIMENTO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 69
    end
    object ppConsulta_Cobranca_PessoappField71: TppField
      FieldAlias = 'REC_DT_VENCTO'
      FieldName = 'REC_DT_VENCTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 70
    end
    object ppConsulta_Cobranca_PessoappField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'ATRASO'
      FieldName = 'ATRASO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 71
    end
  end
  object ppLayoutDevolucao: TppDBPipeline
    DataSource = DmOrdemCarga.dsLayoutDevolucao
    UserName = 'LayoutDevolucao'
    Left = 56
    Top = 102
    object ppLayoutDevolucaoppField1: TppField
      FieldAlias = 'CONFIG_DEVOLUCAO'
      FieldName = 'CONFIG_DEVOLUCAO'
      FieldLength = 8
      DataType = dtMemo
      DisplayWidth = 10
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppLayoutDevolucaoppField2: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 1
    end
  end
  object Designer_Devolucao: TppDesigner
    AllowDataSettingsChange = True
    Caption = 'Configurar S'#233'rie Requisi'#231#227'o'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtInterBase
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqSQL2
    DataSettings.UseDataDictionary = True
    Position = poScreenCenter
    Report = rptSerieDevolucao
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 120
    Top = 102
  end
  object rptSerieDevolucao: TppReport
    AutoStop = False
    DataPipeline = ppSerieDevolucao
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Cont. Feed - No Break'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 4000
    PrinterSetup.mmMarginLeft = 4000
    PrinterSetup.mmMarginRight = 4000
    PrinterSetup.mmMarginTop = 4000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.DatabaseSettings.DataPipeline = ppLayoutDevolucao
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'CONFIG_DEVOLUCAO'
    Template.FileName = 'C:\Documents and Settings\Marcel Alves\Desktop\SerieNF.rtm'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    Units = utMillimeters
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
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 24
    Top = 131
    Version = '12.03'
    mmColumnWidth = 74000
    DataPipelineName = 'ppSerieDevolucao'
    object ppHeaderBand5: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 49477
      mmPrintPosition = 0
      object ppLine8: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 0
        mmWidth = 208000
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 35719
      mmPrintPosition = 0
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 191030
        mmTop = 23813
        mmWidth = 2117
        BandType = 8
      end
      object ppLabel100: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '/'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 194734
        mmTop = 23813
        mmWidth = 2117
        BandType = 8
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 198173
        mmTop = 23813
        mmWidth = 2117
        BandType = 8
      end
      object ppLine13: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 13758
        mmWidth = 208000
        BandType = 8
      end
      object ppLine14: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 208000
        BandType = 8
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object ppSerieDevolucao: TppDBPipeline
    DataSource = DmOrdemCarga.dsSeries_Devolucao
    UserName = 'SerieDevolucao'
    Left = 88
    Top = 102
    object ppSerieDevolucaoppField1: TppField
      FieldAlias = 'PSA_CLIENTE'
      FieldName = 'PSA_CLIENTE'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppSerieDevolucaoppField2: TppField
      FieldAlias = 'PSA_FANTASIA_CLI'
      FieldName = 'PSA_FANTASIA_CLI'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppSerieDevolucaoppField3: TppField
      FieldAlias = 'PSA_CIDADE'
      FieldName = 'PSA_CIDADE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 2
    end
    object ppSerieDevolucaoppField4: TppField
      FieldAlias = 'PSA_ENDERECO_CLI'
      FieldName = 'PSA_ENDERECO_CLI'
      FieldLength = 100
      DisplayWidth = 100
      Position = 3
    end
    object ppSerieDevolucaoppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_COD_VENDA'
      FieldName = 'VD_COD_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppSerieDevolucaoppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_PESSOA_FJ'
      FieldName = 'VD_PESSOA_FJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppSerieDevolucaoppField7: TppField
      FieldAlias = 'VD_DT_VENDA'
      FieldName = 'VD_DT_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 6
    end
    object ppSerieDevolucaoppField8: TppField
      FieldAlias = 'VD_DATA_CAIXA'
      FieldName = 'VD_DATA_CAIXA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 7
    end
    object ppSerieDevolucaoppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_DESC_ACRESC'
      FieldName = 'VD_DESC_ACRESC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppSerieDevolucaoppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_TOTAL'
      FieldName = 'VD_TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object ppSerieDevolucaoppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_NUM_CUPOM'
      FieldName = 'VD_NUM_CUPOM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppSerieDevolucaoppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_NUM_NF'
      FieldName = 'VD_NUM_NF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppSerieDevolucaoppField13: TppField
      FieldAlias = 'VD_OBSERVACAO'
      FieldName = 'VD_OBSERVACAO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 12
    end
    object ppSerieDevolucaoppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VOLUME'
      FieldName = 'VD_VOLUME'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 13
    end
    object ppSerieDevolucaoppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_PESO'
      FieldName = 'VD_PESO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 14
    end
    object ppSerieDevolucaoppField16: TppField
      FieldAlias = 'VD_HORA'
      FieldName = 'VD_HORA'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 15
    end
    object ppSerieDevolucaoppField17: TppField
      FieldAlias = 'VD_TIPO_DOCTO'
      FieldName = 'VD_TIPO_DOCTO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 16
    end
    object ppSerieDevolucaoppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_TOTAL_BRUTO'
      FieldName = 'VD_TOTAL_BRUTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object ppSerieDevolucaoppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_CLIENTE'
      FieldName = 'COD_CLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object ppSerieDevolucaoppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ITEM'
      FieldName = 'DESC_ITEM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object ppSerieDevolucaoppField21: TppField
      FieldAlias = 'NOME_VENDEDOR'
      FieldName = 'NOME_VENDEDOR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 20
    end
    object ppSerieDevolucaoppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_ORDEM_CARGA'
      FieldName = 'VD_ORDEM_CARGA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object ppSerieDevolucaoppField23: TppField
      FieldAlias = 'PRODUTO'
      FieldName = 'PRODUTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 22
    end
    object ppSerieDevolucaoppField24: TppField
      FieldAlias = 'FORMA_PAGTO'
      FieldName = 'FORMA_PAGTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 23
    end
    object ppSerieDevolucaoppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEQUENCIA'
      FieldName = 'SEQUENCIA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object ppSerieDevolucaoppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTIDADE'
      FieldName = 'QUANTIDADE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 25
    end
    object ppSerieDevolucaoppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_UNITARIO'
      FieldName = 'PRC_UNITARIO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 26
    end
    object ppSerieDevolucaoppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_UNITARIO_LIQ'
      FieldName = 'PRC_UNITARIO_LIQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object ppSerieDevolucaoppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_ITEM'
      FieldName = 'TOTAL_ITEM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 28
    end
    object ppSerieDevolucaoppField30: TppField
      FieldAlias = 'PARCELAMENTO'
      FieldName = 'PARCELAMENTO'
      FieldLength = 500
      DisplayWidth = 500
      Position = 29
    end
    object ppSerieDevolucaoppField31: TppField
      FieldAlias = 'COD_PRODUTO'
      FieldName = 'COD_PRODUTO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 30
    end
    object ppSerieDevolucaoppField32: TppField
      FieldAlias = 'BAIRRO'
      FieldName = 'BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 31
    end
    object ppSerieDevolucaoppField33: TppField
      FieldAlias = 'COMPLEMENTO'
      FieldName = 'COMPLEMENTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 32
    end
    object ppSerieDevolucaoppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'PCT_ITEM_DESCTO'
      FieldName = 'PCT_ITEM_DESCTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 33
    end
    object ppSerieDevolucaoppField35: TppField
      FieldAlias = 'UNIDADE'
      FieldName = 'UNIDADE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 34
    end
    object ppSerieDevolucaoppField36: TppField
      FieldAlias = 'CGC_CPF_CLI'
      FieldName = 'CGC_CPF_CLI'
      FieldLength = 20
      DisplayWidth = 20
      Position = 35
    end
    object ppSerieDevolucaoppField37: TppField
      FieldAlias = 'NOME_TIPO_DOCTO'
      FieldName = 'NOME_TIPO_DOCTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 36
    end
    object ppSerieDevolucaoppField38: TppField
      FieldAlias = 'RG_IE'
      FieldName = 'RG_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 37
    end
    object ppSerieDevolucaoppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'PCT_DESCTO_VENDA'
      FieldName = 'PCT_DESCTO_VENDA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 38
    end
    object ppSerieDevolucaoppField40: TppField
      FieldAlias = 'CPF_CGC'
      FieldName = 'CPF_CGC'
      FieldLength = 14
      DisplayWidth = 14
      Position = 39
    end
    object ppSerieDevolucaoppField41: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 40
    end
    object ppSerieDevolucaoppField42: TppField
      FieldAlias = 'CEP_EMP'
      FieldName = 'CEP_EMP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 41
    end
    object ppSerieDevolucaoppField43: TppField
      FieldAlias = 'BAIRRO_EMP'
      FieldName = 'BAIRRO_EMP'
      FieldLength = 50
      DisplayWidth = 50
      Position = 42
    end
    object ppSerieDevolucaoppField44: TppField
      FieldAlias = 'FONE'
      FieldName = 'FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 43
    end
    object ppSerieDevolucaoppField45: TppField
      FieldAlias = 'FONE_CLIENTE'
      FieldName = 'FONE_CLIENTE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 44
    end
    object ppSerieDevolucaoppField46: TppField
      FieldAlias = 'ENDERECO_EMP'
      FieldName = 'ENDERECO_EMP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 45
    end
    object ppSerieDevolucaoppField47: TppField
      FieldAlias = 'EMPRESA'
      FieldName = 'EMPRESA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 46
    end
    object ppSerieDevolucaoppField48: TppField
      FieldAlias = 'CIDADE_EMP'
      FieldName = 'CIDADE_EMP'
      FieldLength = 50
      DisplayWidth = 50
      Position = 47
    end
    object ppSerieDevolucaoppField49: TppField
      FieldAlias = 'CNPJ_EMP'
      FieldName = 'CNPJ_EMP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 48
    end
    object ppSerieDevolucaoppField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'CONT_ITENS'
      FieldName = 'CONT_ITENS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 49
    end
    object ppSerieDevolucaoppField51: TppField
      Alignment = taRightJustify
      FieldAlias = 'MRC_CODIGO'
      FieldName = 'MRC_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 50
    end
    object ppSerieDevolucaoppField52: TppField
      FieldAlias = 'MRC_NOME'
      FieldName = 'MRC_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 51
    end
    object ppSerieDevolucaoppField53: TppField
      FieldAlias = 'PRO_NOME'
      FieldName = 'PRO_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 52
    end
    object ppSerieDevolucaoppField54: TppField
      FieldAlias = 'PRO_PROPRIETARIO'
      FieldName = 'PRO_PROPRIETARIO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 53
    end
    object ppSerieDevolucaoppField55: TppField
      FieldAlias = 'PRO_IE'
      FieldName = 'PRO_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 54
    end
    object ppSerieDevolucaoppField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRO_PROPRIEDADE'
      FieldName = 'PRO_PROPRIEDADE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 55
    end
    object ppSerieDevolucaoppField57: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRO_ENDERECO'
      FieldName = 'PRO_ENDERECO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 56
    end
    object ppSerieDevolucaoppField58: TppField
      FieldAlias = 'PRO_COMPLEMENTO'
      FieldName = 'PRO_COMPLEMENTO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 57
    end
    object ppSerieDevolucaoppField59: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRO_CIDADE'
      FieldName = 'PRO_CIDADE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 58
    end
    object ppSerieDevolucaoppField60: TppField
      FieldAlias = 'PRO_UF'
      FieldName = 'PRO_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 59
    end
    object ppSerieDevolucaoppField61: TppField
      FieldAlias = 'PRO_CEP'
      FieldName = 'PRO_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 60
    end
    object ppSerieDevolucaoppField62: TppField
      FieldAlias = 'PRO_AREA_TOTAL'
      FieldName = 'PRO_AREA_TOTAL'
      FieldLength = 30
      DisplayWidth = 30
      Position = 61
    end
    object ppSerieDevolucaoppField63: TppField
      FieldAlias = 'PRO_ATIVA'
      FieldName = 'PRO_ATIVA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 62
    end
    object ppSerieDevolucaoppField64: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRO_BAIRRO'
      FieldName = 'PRO_BAIRRO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 63
    end
    object ppSerieDevolucaoppField65: TppField
      FieldAlias = 'PRO_NUMERO'
      FieldName = 'PRO_NUMERO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 64
    end
    object ppSerieDevolucaoppField66: TppField
      FieldAlias = 'PRO_CPF'
      FieldName = 'PRO_CPF'
      FieldLength = 20
      DisplayWidth = 20
      Position = 65
    end
    object ppSerieDevolucaoppField67: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRO_TECNICO'
      FieldName = 'PRO_TECNICO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 66
    end
    object ppSerieDevolucaoppField68: TppField
      FieldAlias = 'PSA_CELULAR'
      FieldName = 'PSA_CELULAR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 67
    end
    object ppSerieDevolucaoppField69: TppField
      FieldAlias = 'PSA_FAX'
      FieldName = 'PSA_FAX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 68
    end
    object ppSerieDevolucaoppField70: TppField
      FieldAlias = 'GRD_GRADE'
      FieldName = 'GRD_GRADE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 69
    end
    object ppSerieDevolucaoppField71: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_MATERIAL'
      FieldName = 'GRD_MATERIAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 70
    end
    object ppSerieDevolucaoppField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_COR'
      FieldName = 'GRD_COR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 71
    end
    object ppSerieDevolucaoppField73: TppField
      FieldAlias = 'GRD_NOME_MATERIAL'
      FieldName = 'GRD_NOME_MATERIAL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 72
    end
    object ppSerieDevolucaoppField74: TppField
      FieldAlias = 'GRD_NOME_COR'
      FieldName = 'GRD_NOME_COR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 73
    end
    object ppSerieDevolucaoppField75: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_PERFIL'
      FieldName = 'GRD_PERFIL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 74
    end
    object ppSerieDevolucaoppField76: TppField
      FieldAlias = 'GRD_NOME_PERFIL'
      FieldName = 'GRD_NOME_PERFIL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 75
    end
    object ppSerieDevolucaoppField77: TppField
      FieldAlias = 'GRD_NUMERO'
      FieldName = 'GRD_NUMERO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 76
    end
    object ppSerieDevolucaoppField78: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_ORDEM'
      FieldName = 'GRD_ORDEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 77
    end
    object ppSerieDevolucaoppField79: TppField
      FieldAlias = 'PC_PARCELAMENTO'
      FieldName = 'PC_PARCELAMENTO'
      FieldLength = 300
      DisplayWidth = 300
      Position = 78
    end
    object ppSerieDevolucaoppField80: TppField
      Alignment = taRightJustify
      FieldAlias = 'CGRI_CARREGADO'
      FieldName = 'CGRI_CARREGADO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 79
    end
    object ppSerieDevolucaoppField81: TppField
      Alignment = taRightJustify
      FieldAlias = 'CGRI_DEVOLVIDO'
      FieldName = 'CGRI_DEVOLVIDO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 80
    end
    object ppSerieDevolucaoppField82: TppField
      Alignment = taRightJustify
      FieldAlias = 'CGRI_ENTREGUE'
      FieldName = 'CGRI_ENTREGUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 81
    end
    object ppSerieDevolucaoppField83: TppField
      Alignment = taRightJustify
      FieldAlias = 'CGRI_QUANTIDADE'
      FieldName = 'CGRI_QUANTIDADE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 82
    end
    object ppSerieDevolucaoppField84: TppField
      FieldAlias = 'CGRI_GRADE'
      FieldName = 'CGRI_GRADE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 83
    end
    object ppSerieDevolucaoppField85: TppField
      FieldAlias = 'CGRI_NUMERO'
      FieldName = 'CGRI_NUMERO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 84
    end
  end
  object rtpConvenio: TppReport
    AutoStop = False
    DataPipeline = ppConvenio
    PrinterSetup.BinName = 'Sele'#231#227'o autom'#225'tica'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'PostScript Custom Page Size'
    PrinterSetup.PrinterName = 'PDFCreator'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 1000
    PrinterSetup.mmMarginLeft = 1000
    PrinterSetup.mmMarginRight = 1000
    PrinterSetup.mmMarginTop = 1000
    PrinterSetup.mmPaperHeight = 2000000
    PrinterSetup.mmPaperWidth = 76000
    PrinterSetup.PaperSize = 32767
    Template.DatabaseSettings.DataPipeline = ppLayoutConvenio
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'CONFIG_CONVENIO_PDV'
    Template.FileName = 
      'C:\Documents and Settings\Administrador\Desktop\ConfigConvenioPD' +
      'V.rtm'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    Units = utMillimeters
    DeviceType = 'Printer'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    ModalPreview = False
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
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 168
    Top = 101
    Version = '12.03'
    mmColumnWidth = 74000
    DataPipelineName = 'ppConvenio'
    object ppTitleBand2: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 59002
      mmPrintPosition = 0
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 32279
        mmTop = 23019
        mmWidth = 19844
        BandType = 1
      end
      object ppDBText30: TppDBText
        UserName = 'Cliente'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLIENTE'
        DataPipeline = ppConvenio
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppConvenio'
        mmHeight = 7938
        mmLeft = 20108
        mmTop = 28840
        mmWidth = 48683
        BandType = 1
      end
      object ppDBText31: TppDBText
        UserName = 'Cliente1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_CLI'
        DataPipeline = ppConvenio
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppConvenio'
        mmHeight = 8202
        mmLeft = 20108
        mmTop = 36513
        mmWidth = 48683
        BandType = 1
      end
      object ppDBText32: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE'
        DataPipeline = ppConvenio
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppConvenio'
        mmHeight = 3969
        mmLeft = 20108
        mmTop = 44186
        mmWidth = 48683
        BandType = 1
      end
      object ppDBText33: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COD_VENDA'
        DataPipeline = ppConvenio
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppConvenio'
        mmHeight = 3969
        mmLeft = 11642
        mmTop = 23019
        mmWidth = 19579
        BandType = 1
      end
      object ppLabel31: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CLIENTE:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 28840
        mmWidth = 15346
        BandType = 1
      end
      object ppLabel32: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'END:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 36513
        mmWidth = 15346
        BandType = 1
      end
      object ppLabel33: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CIDADE:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 44186
        mmWidth = 15346
        BandType = 1
      end
      object ppLabel34: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VND:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 23019
        mmWidth = 7673
        BandType = 1
      end
      object ppLabel35: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MERCADO RIO BRILHANTE'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 9841
        mmTop = 529
        mmWidth = 53340
        BandType = 1
      end
      object ppLabel36: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'R. MOHAMED ALLE, 1394'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 5027
        mmWidth = 53340
        BandType = 1
      end
      object ppLabel37: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '(67)3452-2483'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 42598
        mmTop = 9790
        mmWidth = 33020
        BandType = 1
      end
      object ppLabel38: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CENTRO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 55827
        mmTop = 5027
        mmWidth = 15240
        BandType = 1
      end
      object ppLabel39: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'RIO BRILHANTE-MS'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 9790
        mmWidth = 40640
        BandType = 1
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 53181
        mmTop = 23019
        mmWidth = 15610
        BandType = 1
      end
      object ppLine3: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 14552
        mmWidth = 74348
        BandType = 1
      end
      object ppLine4: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 27517
        mmWidth = 74348
        BandType = 1
      end
      object ppLine5: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 49742
        mmWidth = 74348
        BandType = 1
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 20638
        mmWidth = 74348
        BandType = 1
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'COMPROVANTE DE D'#201'BITO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 10239
        mmTop = 16140
        mmWidth = 53340
        BandType = 1
      end
      object ppLabel41: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 52123
        mmWidth = 15240
        BandType = 1
      end
      object ppDBText40: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL'
        DataPipeline = ppConvenio
        DisplayFormat = 'R$#,0.00;-R$#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppConvenio'
        mmHeight = 3969
        mmLeft = 18785
        mmTop = 52123
        mmWidth = 26723
        BandType = 1
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppConvenio: TppDBPipeline
    DataSource = DmVendas2.dsQrySeriesNF
    UserName = 'ppConvenio'
    Left = 200
    Top = 101
  end
  object ppLayoutConvenio: TppDBPipeline
    DataSource = DmSerie_Customizaveis.dsLayoutConvenio
    UserName = 'ppLayoutConvenio'
    Left = 232
    Top = 101
    object ppLayoutConvenioppField1: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 0
    end
    object ppLayoutConvenioppField2: TppField
      FieldAlias = 'CONFIG_CONVENIO_PDV'
      FieldName = 'CONFIG_CONVENIO_PDV'
      FieldLength = 8
      DataType = dtMemo
      DisplayWidth = 10
      Position = 1
      Searchable = False
      Sortable = False
    end
  end
  object Designer_Convenio: TppDesigner
    AllowDataSettingsChange = True
    Caption = 'Configurar Conv'#234'nio PDV'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtInterBase
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqSQL2
    DataSettings.UseDataDictionary = True
    Position = poScreenCenter
    Report = rtpConvenio
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 264
    Top = 101
  end
  object Designer_Recibo: TppDesigner
    AllowDataSettingsChange = True
    Caption = 'Configurar Recibo'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtInterBase
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqSQL2
    DataSettings.UseDataDictionary = True
    Position = poScreenCenter
    Report = rptRecibo
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 600
    Top = 99
  end
  object ppLayoutRecibo: TppDBPipeline
    DataSource = DmSerie_Customizaveis.dsLayoutRecibo
    UserName = 'ppLayoutRecibo'
    Left = 568
    Top = 99
  end
  object ppRecibo: TppDBPipeline
    DataSource = dmRelatorios2.dsRecibo
    UserName = 'ppRecibo'
    Left = 536
    Top = 99
    object ppReciboppField1: TppField
      FieldAlias = '_ValorExtenso'
      FieldName = '_ValorExtenso'
      FieldLength = 300
      DisplayWidth = 300
      Position = 0
    end
    object ppReciboppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'RECIBO'
      FieldName = 'RECIBO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppReciboppField3: TppField
      FieldAlias = 'REC_DT_LANCTO'
      FieldName = 'REC_DT_LANCTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 2
    end
    object ppReciboppField4: TppField
      FieldAlias = 'EP_NOME'
      FieldName = 'EP_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object ppReciboppField5: TppField
      FieldAlias = 'EP_ENDERECO'
      FieldName = 'EP_ENDERECO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 4
    end
    object ppReciboppField6: TppField
      FieldAlias = 'EP_BAIRRO'
      FieldName = 'EP_BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object ppReciboppField7: TppField
      FieldAlias = 'EP_CIDADE'
      FieldName = 'EP_CIDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object ppReciboppField8: TppField
      FieldAlias = 'EP_FONE'
      FieldName = 'EP_FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 7
    end
    object ppReciboppField9: TppField
      FieldAlias = 'EP_CNPJ'
      FieldName = 'EP_CNPJ'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object ppReciboppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppReciboppField11: TppField
      FieldAlias = 'CLI_NOME'
      FieldName = 'CLI_NOME'
      FieldLength = 80
      DisplayWidth = 80
      Position = 10
    end
    object ppReciboppField12: TppField
      FieldAlias = 'CLI_CPF_CNPJ'
      FieldName = 'CLI_CPF_CNPJ'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object ppReciboppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_BAIXA'
      FieldName = 'VLR_BAIXA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 12
    end
    object ppReciboppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_CODIGO'
      FieldName = 'REC_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppReciboppField15: TppField
      FieldAlias = 'REC_PARCELA'
      FieldName = 'REC_PARCELA'
      FieldLength = 6
      DisplayWidth = 6
      Position = 14
    end
    object ppReciboppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_SALDO'
      FieldName = 'REC_SALDO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 15
    end
    object ppReciboppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_JUROS'
      FieldName = 'REC_JUROS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 16
    end
    object ppReciboppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_MULTA'
      FieldName = 'REC_MULTA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 17
    end
    object ppReciboppField19: TppField
      FieldAlias = 'REC_HISTORICO'
      FieldName = 'REC_HISTORICO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 18
    end
    object ppReciboppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_VENDA'
      FieldName = 'REC_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppReciboppField21: TppField
      FieldAlias = 'TIPO_BAIXA'
      FieldName = 'TIPO_BAIXA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 20
    end
    object ppReciboppField22: TppField
      FieldAlias = 'EP_FAX'
      FieldName = 'EP_FAX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 21
    end
    object ppReciboppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_VALOR_NOMINAL'
      FieldName = 'REC_VALOR_NOMINAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 22
    end
    object ppReciboppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_BX_PARCIAL'
      FieldName = 'REC_BX_PARCIAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 23
    end
    object ppReciboppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_SALDO_NOMINAL'
      FieldName = 'REC_SALDO_NOMINAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 24
    end
    object ppReciboppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_DESCONTOS'
      FieldName = 'REC_DESCONTOS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 25
    end
    object ppReciboppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'REC_VLR_BAIXA'
      FieldName = 'REC_VLR_BAIXA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 26
    end
    object ppReciboppField28: TppField
      FieldAlias = 'IMPRESSAO'
      FieldName = 'IMPRESSAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 27
    end
    object ppReciboppField29: TppField
      FieldAlias = 'BX_HISTORICO'
      FieldName = 'BX_HISTORICO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 28
    end
    object ppReciboppField30: TppField
      FieldAlias = 'REC_DOCTO'
      FieldName = 'REC_DOCTO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 29
    end
    object ppReciboppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_NF'
      FieldName = 'NUM_NF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppSerieDevolucao
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Cont. Feed - No Break'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 4000
    PrinterSetup.mmMarginLeft = 4000
    PrinterSetup.mmMarginRight = 4000
    PrinterSetup.mmMarginTop = 4000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.DatabaseSettings.DataPipeline = ppLayoutDevolucao
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'CONFIG_DEVOLUCAO'
    Template.FileName = 'C:\Documents and Settings\Marcel Alves\Desktop\SerieNF.rtm'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    Units = utMillimeters
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
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 24
    Top = 102
    Version = '12.03'
    mmColumnWidth = 74000
    DataPipelineName = 'ppSerieDevolucao'
    object ppHeaderBand2: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 49477
      mmPrintPosition = 0
      object ppLine12: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 0
        mmWidth = 208000
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 35719
      mmPrintPosition = 0
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 191030
        mmTop = 23813
        mmWidth = 2117
        BandType = 8
      end
      object ppLabel53: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '/'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 194734
        mmTop = 23813
        mmWidth = 2117
        BandType = 8
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 198173
        mmTop = 23813
        mmWidth = 2117
        BandType = 8
      end
      object ppLine15: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 13758
        mmWidth = 208000
        BandType = 8
      end
      object ppLine16: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 208000
        BandType = 8
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object rptRecibo: TppReport
    AutoStop = False
    DataPipeline = ppRecibo
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Cont. Feed - No Break'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 4000
    PrinterSetup.mmMarginLeft = 4000
    PrinterSetup.mmMarginRight = 4000
    PrinterSetup.mmMarginTop = 4000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.DatabaseSettings.DataPipeline = ppLayoutRecibo
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'CONFIG_RECIBO'
    Template.FileName = 'C:\Documents and Settings\Marcel Alves\Desktop\Recibo.rtm'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    Units = utMillimeters
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
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 504
    Top = 101
    Version = '12.03'
    mmColumnWidth = 74000
    DataPipelineName = 'ppRecibo'
    object ppHeaderBand3: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 67733
      mmPrintPosition = 0
      object ppLabel46: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'RECIBO N'#186' :'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 29369
        mmWidth = 20638
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'RECEBEMOS DE :'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 2646
        mmTop = 37835
        mmWidth = 30480
        BandType = 0
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_NOME'
        DataPipeline = ppRecibo
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppRecibo'
        mmHeight = 4498
        mmLeft = 33602
        mmTop = 37835
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CPF_CNPJ'
        DataPipeline = ppRecibo
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppRecibo'
        mmHeight = 4498
        mmLeft = 94986
        mmTop = 37835
        mmWidth = 26458
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CPF/CGC:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 76994
        mmTop = 37835
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'A IMPORTANCIA DE R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 43921
        mmWidth = 39158
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'REFERENTE '#192'S SEGUINTES PENDENCIAS'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 53711
        mmWidth = 74613
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 180182
        mmTop = 4763
        mmWidth = 25400
        BandType = 0
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VLR_BAIXA'
        DataPipeline = ppRecibo
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppRecibo'
        mmHeight = 4498
        mmLeft = 42863
        mmTop = 43921
        mmWidth = 20108
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 25400
        mmWidth = 207963
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 265
        mmTop = 1588
        mmWidth = 207963
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 59267
        mmWidth = 207963
        BandType = 0
      end
      object ppDBText44: TppDBText
        UserName = 'DBText44'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NUM_NF'
        DataPipeline = ppRecibo
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppRecibo'
        mmHeight = 4498
        mmLeft = 76994
        mmTop = 43656
        mmWidth = 89694
        BandType = 0
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EP_NOME'
        DataPipeline = ppRecibo
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppRecibo'
        mmHeight = 4498
        mmLeft = 2117
        mmTop = 3440
        mmWidth = 112448
        BandType = 0
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EP_ENDERECO'
        DataPipeline = ppRecibo
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppRecibo'
        mmHeight = 4498
        mmLeft = 2117
        mmTop = 8731
        mmWidth = 78581
        BandType = 0
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EP_CIDADE'
        DataPipeline = ppRecibo
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppRecibo'
        mmHeight = 4498
        mmLeft = 2117
        mmTop = 14023
        mmWidth = 112448
        BandType = 0
      end
      object ppDBText48: TppDBText
        UserName = 'DBText48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EP_FONE'
        DataPipeline = ppRecibo
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppRecibo'
        mmHeight = 4498
        mmLeft = 2117
        mmTop = 19315
        mmWidth = 112448
        BandType = 0
      end
      object ppDBText49: TppDBText
        UserName = 'DBText49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'RECIBO'
        DataPipeline = ppRecibo
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppRecibo'
        mmHeight = 4498
        mmLeft = 23813
        mmTop = 29369
        mmWidth = 23813
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Codigo'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 63236
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hist'#243'rico'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 18256
        mmTop = 63236
        mmWidth = 22860
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Saldo'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 102923
        mmTop = 63500
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Juros'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 125942
        mmTop = 63500
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vlr. Baixa'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 147902
        mmTop = 63500
        mmWidth = 20373
        BandType = 0
      end
      object ppDBText43: TppDBText
        UserName = 'DBText43'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EP_BAIRRO'
        DataPipeline = ppRecibo
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppRecibo'
        mmHeight = 4498
        mmLeft = 82021
        mmTop = 8731
        mmWidth = 32808
        BandType = 0
      end
      object ppDBText53: TppDBText
        UserName = 'DBText53'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TIPO_BAIXA'
        DataPipeline = ppRecibo
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppRecibo'
        mmHeight = 4487
        mmLeft = 94986
        mmTop = 53711
        mmWidth = 40746
        BandType = 0
      end
      object ppDBText54: TppDBText
        UserName = 'DBText54'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'IMPRESSAO'
        DataPipeline = ppRecibo
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppRecibo'
        mmHeight = 4487
        mmLeft = 164836
        mmTop = 9525
        mmWidth = 40746
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText37: TppDBText
        UserName = 'DBText37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'REC_SALDO'
        DataPipeline = ppRecibo
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppRecibo'
        mmHeight = 4498
        mmLeft = 102923
        mmTop = 0
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'REC_JUROS'
        DataPipeline = ppRecibo
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppRecibo'
        mmHeight = 4498
        mmLeft = 125677
        mmTop = 0
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'REC_DESCONTOS'
        DataPipeline = ppRecibo
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppRecibo'
        mmHeight = 4498
        mmLeft = 147902
        mmTop = 0
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'REC_CODIGO'
        DataPipeline = ppRecibo
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppRecibo'
        mmHeight = 4498
        mmLeft = 2381
        mmTop = 0
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'REC_HISTORICO'
        DataPipeline = ppRecibo
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppRecibo'
        mmHeight = 4487
        mmLeft = 18256
        mmTop = 0
        mmWidth = 82021
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 180182
        mmTop = 1852
        mmWidth = 14552
        BandType = 8
      end
      object ppShape9: TppShape
        UserName = 'Shape12'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 7144
        mmLeft = 0
        mmTop = 0
        mmWidth = 207963
        BandType = 8
      end
      object ppDBText162: TppDBText
        UserName = 'DBText162'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PARC_TEXTO_RELATORIO'
        DataPipeline = ppAppRepresentante
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppAppRepresentante'
        mmHeight = 3704
        mmLeft = 2646
        mmTop = 1852
        mmWidth = 112184
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 37835
      mmPrintPosition = 0
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DisplayFormat = 'd '#39'de'#39' mmmm '#39'de'#39' yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 39688
        mmTop = 24871
        mmWidth = 28840
        BandType = 7
      end
      object ppDBText50: TppDBText
        UserName = 'DBText50'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EP_CIDADE'
        DataPipeline = ppRecibo
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppRecibo'
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 24871
        mmWidth = 36248
        BandType = 7
      end
      object ppDBText51: TppDBText
        UserName = 'DBText501'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EP_NOME'
        DataPipeline = ppRecibo
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppRecibo'
        mmHeight = 4233
        mmLeft = 76465
        mmTop = 9525
        mmWidth = 36248
        BandType = 7
      end
      object ppDBText52: TppDBText
        UserName = 'DBText52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EP_CNPJ'
        DataPipeline = ppRecibo
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppRecibo'
        mmHeight = 4233
        mmLeft = 78846
        mmTop = 14552
        mmWidth = 31221
        BandType = 7
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object ppOS: TppDBPipeline
    DataSource = dsOS
    UserName = 'ppOS'
    Left = 200
    Top = 163
    object ppOSppField1: TppField
      FieldAlias = 'PSA_NOME_RAZAO'
      FieldName = 'PSA_NOME_RAZAO'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppOSppField2: TppField
      FieldAlias = 'PSA_FANTASIA'
      FieldName = 'PSA_FANTASIA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppOSppField3: TppField
      FieldAlias = 'PSA_ENDERECO'
      FieldName = 'PSA_ENDERECO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 2
    end
    object ppOSppField4: TppField
      FieldAlias = 'PSA_BAIRRO'
      FieldName = 'PSA_BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object ppOSppField5: TppField
      FieldAlias = 'PSA_CEP'
      FieldName = 'PSA_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 4
    end
    object ppOSppField6: TppField
      FieldAlias = 'PSA_FONE'
      FieldName = 'PSA_FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object ppOSppField7: TppField
      FieldAlias = 'PSA_CONTATO'
      FieldName = 'PSA_CONTATO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object ppOSppField8: TppField
      FieldAlias = 'PSA_CIDADE'
      FieldName = 'PSA_CIDADE'
      FieldLength = 80
      DisplayWidth = 80
      Position = 7
    end
    object ppOSppField9: TppField
      FieldAlias = 'PSA_REGIAO'
      FieldName = 'PSA_REGIAO'
      FieldLength = 60
      DisplayWidth = 60
      Position = 8
    end
    object ppOSppField10: TppField
      FieldAlias = 'OS_NOME_TECNICO'
      FieldName = 'OS_NOME_TECNICO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object ppOSppField11: TppField
      FieldAlias = 'OS_EQUIPAMENTO'
      FieldName = 'OS_EQUIPAMENTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
    object ppOSppField12: TppField
      FieldAlias = 'OS_EQ_MODELO'
      FieldName = 'OS_EQ_MODELO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 11
    end
    object ppOSppField13: TppField
      FieldAlias = 'OS_EQ_MARCA'
      FieldName = 'OS_EQ_MARCA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 12
    end
    object ppOSppField14: TppField
      FieldAlias = 'OS_EQ_SERIE'
      FieldName = 'OS_EQ_SERIE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 13
    end
    object ppOSppField15: TppField
      FieldAlias = 'OS_SOLICITANTE'
      FieldName = 'OS_SOLICITANTE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object ppOSppField16: TppField
      FieldAlias = 'OS_DEFEITO_RECLAMADO'
      FieldName = 'OS_DEFEITO_RECLAMADO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 15
    end
    object ppOSppField17: TppField
      FieldAlias = 'OS_OBS_FECHAMENTO'
      FieldName = 'OS_OBS_FECHAMENTO'
      FieldLength = 8
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppOSppField18: TppField
      FieldAlias = 'OS_INFORMACOES'
      FieldName = 'OS_INFORMACOES'
      FieldLength = 8
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppOSppField19: TppField
      FieldAlias = 'OS_DT_PROGRAMACAO'
      FieldName = 'OS_DT_PROGRAMACAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 18
    end
    object ppOSppField20: TppField
      FieldAlias = 'OS_HR_PROGRAMACAO'
      FieldName = 'OS_HR_PROGRAMACAO'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 19
    end
    object ppOSppField21: TppField
      FieldAlias = 'OS_TECNICO'
      FieldName = 'OS_TECNICO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 20
    end
    object ppOSppField22: TppField
      FieldAlias = 'OS_MOTIVO_CHAMADO'
      FieldName = 'OS_MOTIVO_CHAMADO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 21
    end
    object ppOSppField23: TppField
      FieldAlias = 'OS_TIPO_ATENDIMENTO'
      FieldName = 'OS_TIPO_ATENDIMENTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 22
    end
    object ppOSppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'OS_CT_TOTAL'
      FieldName = 'OS_CT_TOTAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object ppOSppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'OS_CT_COR'
      FieldName = 'OS_CT_COR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object ppOSppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'OS_CT_PRETO'
      FieldName = 'OS_CT_PRETO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 25
    end
    object ppOSppField27: TppField
      FieldAlias = 'OS_DT_CILINDRO'
      FieldName = 'OS_DT_CILINDRO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 26
    end
    object ppOSppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'OS_CT_CILINDRO'
      FieldName = 'OS_CT_CILINDRO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object ppOSppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'OS_CT_REVELADOR'
      FieldName = 'OS_CT_REVELADOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 28
    end
    object ppOSppField30: TppField
      FieldAlias = 'OS_DT_REVELADOR'
      FieldName = 'OS_DT_REVELADOR'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 29
    end
    object ppOSppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_QTDE'
      FieldName = 'PRD_QTDE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 30
    end
    object ppOSppField32: TppField
      FieldAlias = 'PRD_CODIGO'
      FieldName = 'PRD_CODIGO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 31
    end
    object ppOSppField33: TppField
      FieldAlias = 'PRD_NOME'
      FieldName = 'PRD_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 32
    end
    object ppOSppField34: TppField
      FieldAlias = 'OS_DT_INICIO'
      FieldName = 'OS_DT_INICIO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 33
    end
    object ppOSppField35: TppField
      FieldAlias = 'OS_TIPO_CONTRATO'
      FieldName = 'OS_TIPO_CONTRATO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 34
    end
    object ppOSppField36: TppField
      FieldAlias = 'OS_HR_INICIALIZACAO'
      FieldName = 'OS_HR_INICIALIZACAO'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 35
    end
    object ppOSppField37: TppField
      FieldAlias = 'OS_DT_FINALIZACAO'
      FieldName = 'OS_DT_FINALIZACAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 36
    end
    object ppOSppField38: TppField
      FieldAlias = 'OS_HR_FINALIZACAO'
      FieldName = 'OS_HR_FINALIZACAO'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 37
    end
    object ppOSppField39: TppField
      FieldAlias = 'CAB_NOME_EMPRESA'
      FieldName = 'CAB_NOME_EMPRESA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 38
    end
    object ppOSppField40: TppField
      FieldAlias = 'CAB_END_EMPRESA'
      FieldName = 'CAB_END_EMPRESA'
      FieldLength = 200
      DisplayWidth = 200
      Position = 39
    end
    object ppOSppField41: TppField
      FieldAlias = 'CAB_FONE_EMPRESA'
      FieldName = 'CAB_FONE_EMPRESA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 40
    end
    object ppOSppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'OS_CODIGO'
      FieldName = 'OS_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 41
    end
    object ppOSppField43: TppField
      FieldAlias = 'OS_PESSOA_OBS'
      FieldName = 'OS_PESSOA_OBS'
      FieldLength = 8
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppOSppField44: TppField
      FieldAlias = 'OS_EQUIPAMENTO_OBS'
      FieldName = 'OS_EQUIPAMENTO_OBS'
      FieldLength = 8
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppOSppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_UNITARIO'
      FieldName = 'PRD_UNITARIO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 44
    end
    object ppOSppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_TOTAL'
      FieldName = 'PRD_TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 45
    end
    object ppOSppField47: TppField
      FieldAlias = 'VEI_PLACA'
      FieldName = 'VEI_PLACA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 46
    end
    object ppOSppField48: TppField
      FieldAlias = 'VEI_COR'
      FieldName = 'VEI_COR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 47
    end
    object ppOSppField49: TppField
      FieldAlias = 'VEI_MODELO'
      FieldName = 'VEI_MODELO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 48
    end
    object ppOSppField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'VEI_ANO'
      FieldName = 'VEI_ANO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 49
    end
    object ppOSppField51: TppField
      FieldAlias = 'VEI_CHASSI'
      FieldName = 'VEI_CHASSI'
      FieldLength = 50
      DisplayWidth = 50
      Position = 50
    end
    object ppOSppField52: TppField
      FieldAlias = 'VEI_MARCA'
      FieldName = 'VEI_MARCA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 51
    end
    object ppOSppField53: TppField
      FieldAlias = 'PSA_CPF'
      FieldName = 'PSA_CPF'
      FieldLength = 15
      DisplayWidth = 15
      Position = 52
    end
    object ppOSppField54: TppField
      FieldAlias = 'PSA_RG_IE'
      FieldName = 'PSA_RG_IE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 53
    end
    object ppOSppField55: TppField
      Alignment = taRightJustify
      FieldAlias = 'PSA_CODIGO'
      FieldName = 'PSA_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 54
    end
    object ppOSppField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'OS_KM'
      FieldName = 'OS_KM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 55
    end
  end
  object rptOS: TppReport
    AutoStop = False
    DataPipeline = ppOS
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.DatabaseSettings.DataPipeline = ppLayoutOS
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'CONFIG_OS'
    Template.FileName = 'C:\Documents and Settings\Administrador\Desktop\OS.rtm'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    Units = utMillimeters
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
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 168
    Top = 163
    Version = '12.03'
    mmColumnWidth = 197379
    DataPipelineName = 'ppOS'
    object ppTitleBand6: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 118004
      mmPrintPosition = 0
      object ppShape6: TppShape
        UserName = 'Shape6'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 16140
        mmLeft = 0
        mmTop = 82286
        mmWidth = 197644
        BandType = 1
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 12171
        mmLeft = 0
        mmTop = 55563
        mmWidth = 197644
        BandType = 1
      end
      object ppShape5: TppShape
        UserName = 'Shape3'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 14288
        mmLeft = 0
        mmTop = 4763
        mmWidth = 197644
        BandType = 1
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 32279
        mmLeft = 0
        mmTop = 23548
        mmWidth = 197644
        BandType = 1
      end
      object ppShape20: TppShape
        UserName = 'Shape20'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 5027
        mmLeft = 0
        mmTop = 112977
        mmWidth = 197644
        BandType = 1
      end
      object ppLabel52: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Endere'#231'o: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 29633
        mmWidth = 16404
        BandType = 1
      end
      object ppLabel54: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Bairro: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 33867
        mmWidth = 11377
        BandType = 1
      end
      object ppLabel55: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Contato: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 38100
        mmWidth = 14023
        BandType = 1
      end
      object ppLabel56: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Marca: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 42333
        mmWidth = 11113
        BandType = 1
      end
      object ppLabel57: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Modelo: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 46567
        mmWidth = 12965
        BandType = 1
      end
      object ppLabel58: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tipo Contrato: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 1323
        mmTop = 51065
        mmWidth = 22775
        BandType = 1
      end
      object lblEmpresa: TppDBText
        UserName = 'lblEmpresa'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CAB_NOME_EMPRESA'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 5842
        mmLeft = 1588
        mmTop = 6350
        mmWidth = 1397
        BandType = 1
      end
      object lblEndereco: TppDBText
        UserName = 'lblEndereco'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CAB_END_EMPRESA'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 4657
        mmLeft = 1588
        mmTop = 12965
        mmWidth = 1101
        BandType = 1
      end
      object ppLabel59: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Solicitante: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3768
        mmLeft = 110861
        mmTop = 51065
        mmWidth = 18013
        BandType = 1
      end
      object ppLabel60: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Defeito Reclamado: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 83079
        mmWidth = 29633
        BandType = 1
      end
      object ppShape3: TppShape
        UserName = 'Shape4'
        Brush.Color = clBackground
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 5027
        mmLeft = 0
        mmTop = 67469
        mmWidth = 197644
        BandType = 1
      end
      object ppLabel61: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Programa'#231#227'o'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 794
        mmTop = 67998
        mmWidth = 21696
        BandType = 1
      end
      object ppShape4: TppShape
        UserName = 'Shape5'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 5556
        mmLeft = 0
        mmTop = 72231
        mmWidth = 197644
        BandType = 1
      end
      object ppLabel62: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Data: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 1588
        mmTop = 73289
        mmWidth = 8805
        BandType = 1
      end
      object ppLabel63: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hora: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 33867
        mmTop = 73289
        mmWidth = 9144
        BandType = 1
      end
      object ppLabel64: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'T'#233'cnico: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 68792
        mmTop = 73289
        mmWidth = 14023
        BandType = 1
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        Brush.Color = clBackground
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 5027
        mmLeft = 0
        mmTop = 108215
        mmWidth = 197644
        BandType = 1
      end
      object ppLabel65: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Produto/Servi'#231'o'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 34925
        mmTop = 113771
        mmWidth = 24553
        BandType = 1
      end
      object ppLabel66: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 794
        mmTop = 113771
        mmWidth = 10964
        BandType = 1
      end
      object ppLabel67: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pe'#231'as/Servi'#231'os/Suprimentos - Itens OS'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 1058
        mmTop = 108744
        mmWidth = 59478
        BandType = 1
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        Brush.Color = clBackground
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 5027
        mmLeft = 0
        mmTop = 77523
        mmWidth = 197644
        BandType = 1
      end
      object ppLabel68: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tipo de  OS'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 1058
        mmTop = 78317
        mmWidth = 17695
        BandType = 1
      end
      object ppShape14: TppShape
        UserName = 'Shape14'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 5556
        mmLeft = 0
        mmTop = 102923
        mmWidth = 197644
        BandType = 1
      end
      object ppLabel69: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total (C.T.): '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 103717
        mmWidth = 17992
        BandType = 1
      end
      object ppLabel70: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cor (C.C.L): '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 76994
        mmTop = 103717
        mmWidth = 18256
        BandType = 1
      end
      object ppLabel71: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Motivo do Chamado(MC): '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 1058
        mmTop = 87577
        mmWidth = 37306
        BandType = 1
      end
      object ppLabel72: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tipo de Atendimento(TA): '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 1058
        mmTop = 91811
        mmWidth = 38100
        BandType = 1
      end
      object ppShape16: TppShape
        UserName = 'Shape16'
        Brush.Color = clBackground
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 5027
        mmLeft = 0
        mmTop = 98161
        mmWidth = 197644
        BandType = 1
      end
      object ppLabel73: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Contadores'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 1058
        mmTop = 98690
        mmWidth = 17695
        BandType = 1
      end
      object ppLine11: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 34396
        mmTop = 112977
        mmWidth = 4233
        BandType = 1
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        Brush.Color = clBackground
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 5027
        mmLeft = 0
        mmTop = 18785
        mmWidth = 197644
        BandType = 1
      end
      object ppLabel74: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ordem de Servi'#231'o '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 1323
        mmTop = 19315
        mmWidth = 28109
        BandType = 1
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        Brush.Color = clBackground
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 4233
        mmLeft = 0
        mmTop = 529
        mmWidth = 197644
        BandType = 1
      end
      object ppDBText55: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PSA_CODIGO'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3440
        mmLeft = 21960
        mmTop = 25664
        mmWidth = 85461
        BandType = 1
      end
      object ppDBText56: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PSA_ENDERECO'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3440
        mmLeft = 18256
        mmTop = 29898
        mmWidth = 177800
        BandType = 1
      end
      object ppDBText57: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PSA_BAIRRO'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3440
        mmLeft = 12965
        mmTop = 34131
        mmWidth = 79640
        BandType = 1
      end
      object ppDBText58: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PSA_CONTATO'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3440
        mmLeft = 15610
        mmTop = 38100
        mmWidth = 76994
        BandType = 1
      end
      object ppDBText59: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_EQ_MARCA'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3440
        mmLeft = 12700
        mmTop = 42333
        mmWidth = 79904
        BandType = 1
      end
      object ppDBText60: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_EQ_MODELO'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3440
        mmLeft = 14552
        mmTop = 46567
        mmWidth = 77523
        BandType = 1
      end
      object ppDBText61: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_SOLICITANTE'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3440
        mmLeft = 129117
        mmTop = 51065
        mmWidth = 66940
        BandType = 1
      end
      object ppDBText62: TppDBText
        UserName = 'DBText201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_DEFEITO_RECLAMADO'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3440
        mmLeft = 30956
        mmTop = 83344
        mmWidth = 82286
        BandType = 1
      end
      object ppDBText63: TppDBText
        UserName = 'DBText202'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_DT_PROGRAMACAO'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3440
        mmLeft = 10583
        mmTop = 73290
        mmWidth = 20108
        BandType = 1
      end
      object ppDBText64: TppDBText
        UserName = 'DBText23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_HR_PROGRAMACAO'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3440
        mmLeft = 43392
        mmTop = 73290
        mmWidth = 20108
        BandType = 1
      end
      object ppDBText65: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_TECNICO'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3440
        mmLeft = 83079
        mmTop = 73290
        mmWidth = 113242
        BandType = 1
      end
      object ppDBText66: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_MOTIVO_CHAMADO'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3440
        mmLeft = 38894
        mmTop = 87842
        mmWidth = 54240
        BandType = 1
      end
      object ppDBText67: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_KM'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3440
        mmLeft = 39423
        mmTop = 92340
        mmWidth = 69586
        BandType = 1
      end
      object ppDBText68: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_CT_TOTAL'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3440
        mmLeft = 19579
        mmTop = 103717
        mmWidth = 11642
        BandType = 1
      end
      object ppDBText69: TppDBText
        UserName = 'DBText30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_TIPO_CONTRATO'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3440
        mmLeft = 24342
        mmTop = 51065
        mmWidth = 77523
        BandType = 1
      end
      object ppLabel75: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Nome/Raz'#227'o: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 1323
        mmTop = 25664
        mmWidth = 21040
        BandType = 1
      end
      object ppLabel76: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fantasia: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 110861
        mmTop = 25664
        mmWidth = 14859
        BandType = 1
      end
      object ppDBText70: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PSA_FANTASIA'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3440
        mmLeft = 126207
        mmTop = 25665
        mmWidth = 69586
        BandType = 1
      end
      object ppLabel77: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cidade...: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 110861
        mmTop = 34130
        mmWidth = 15198
        BandType = 1
      end
      object ppDBText71: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PSA_CIDADE'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3440
        mmLeft = 125942
        mmTop = 34130
        mmWidth = 69586
        BandType = 1
      end
      object ppLabel78: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Telefone: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 110861
        mmTop = 38100
        mmWidth = 15028
        BandType = 1
      end
      object ppDBText72: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PSA_FONE'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3440
        mmLeft = 125942
        mmTop = 38100
        mmWidth = 35454
        BandType = 1
      end
      object ppDBText73: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_EQ_SERIE'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3440
        mmLeft = 125942
        mmTop = 42334
        mmWidth = 69586
        BandType = 1
      end
      object ppLabel79: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Serie......: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 110861
        mmTop = 42334
        mmWidth = 15028
        BandType = 1
      end
      object ppLabel80: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 163248
        mmTop = 37835
        mmWidth = 7408
        BandType = 1
      end
      object ppDBText74: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PSA_CEP'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3440
        mmLeft = 170921
        mmTop = 37835
        mmWidth = 24871
        BandType = 1
      end
      object ppLabel81: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Regi'#227'o...: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 110861
        mmTop = 46566
        mmWidth = 15198
        BandType = 1
      end
      object ppDBText75: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PSA_REGIAO'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3440
        mmLeft = 125942
        mmTop = 46566
        mmWidth = 69586
        BandType = 1
      end
      object ppLabel82: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OS Info.: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 105834
        mmTop = 56092
        mmWidth = 14288
        BandType = 1
      end
      object ppShape15: TppShape
        UserName = 'Shape9'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 10319
        mmLeft = 121179
        mmTop = 56356
        mmWidth = 75936
        BandType = 1
      end
      object ppDBMemo3: TppDBMemo
        UserName = 'DBMemo3'
        SaveOrder = 0
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'OS_INFORMACOES'
        DataPipeline = ppOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 8467
        mmLeft = 121973
        mmTop = 57150
        mmWidth = 74348
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppShape17: TppShape
        UserName = 'Shape17'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 13758
        mmLeft = 118798
        mmTop = 83608
        mmWidth = 78317
        BandType = 1
      end
      object ppDBMemo4: TppDBMemo
        UserName = 'DBMemo4'
        SaveOrder = 1
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'OS_OBS_FECHAMENTO'
        DataPipeline = ppOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 11642
        mmLeft = 119592
        mmTop = 84402
        mmWidth = 76729
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label53'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OS Observa'#231#227'o: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 94192
        mmTop = 83344
        mmWidth = 24077
        BandType = 1
      end
      object ppDBText76: TppDBText
        UserName = 'DBText34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_CT_COR'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3440
        mmLeft = 95515
        mmTop = 103981
        mmWidth = 11641
        BandType = 1
      end
      object ppDBText77: TppDBText
        UserName = 'DBText35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_CT_PRETO'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3440
        mmLeft = 173832
        mmTop = 103981
        mmWidth = 11641
        BandType = 1
      end
      object ppLabel84: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Preto (CP): '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 156104
        mmTop = 103717
        mmWidth = 17441
        BandType = 1
      end
      object ppLabel85: TppLabel
        UserName = 'Label62'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Qtde'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 155840
        mmTop = 113771
        mmWidth = 7239
        BandType = 1
      end
      object ppLabel86: TppLabel
        UserName = 'Label66'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tipo'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 166688
        mmTop = 113771
        mmWidth = 6615
        BandType = 1
      end
      object ppLine17: TppLine
        UserName = 'Line12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 163777
        mmTop = 113242
        mmWidth = 2646
        BandType = 1
      end
      object ppLine18: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 176742
        mmTop = 113506
        mmWidth = 2646
        BandType = 1
      end
      object ppLabel87: TppLabel
        UserName = 'Label69'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Pend'#234'ncia'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 179652
        mmTop = 113771
        mmWidth = 15960
        BandType = 1
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 167217
        mmTop = 6350
        mmWidth = 28310
        BandType = 1
      end
      object ppDBText78: TppDBText
        UserName = 'lblEmpresa1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_CODIGO'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 5842
        mmLeft = 180276
        mmTop = 11113
        mmWidth = 1397
        BandType = 1
      end
      object ppShape23: TppShape
        UserName = 'Shape23'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 10319
        mmLeft = 21960
        mmTop = 56356
        mmWidth = 80963
        BandType = 1
      end
      object ppLabel88: TppLabel
        UserName = 'Label86'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Obs. Cliente: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3768
        mmLeft = 1323
        mmTop = 56356
        mmWidth = 20489
        BandType = 1
      end
      object ppDBMemo5: TppDBMemo
        UserName = 'DBMemo5'
        SaveOrder = 2
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'OS_EQUIPAMENTO_OBS'
        DataPipeline = ppOS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 8467
        mmLeft = 23548
        mmTop = 57150
        mmWidth = 77258
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppDetailBand30: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppShape11: TppShape
        UserName = 'Shape11'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 197644
        BandType = 4
      end
      object ppDBText79: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_CODIGO'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 794
        mmWidth = 28046
        BandType = 4
      end
      object ppDBText80: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_NOME'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3704
        mmLeft = 35190
        mmTop = 794
        mmWidth = 107950
        BandType = 4
      end
      object ppLine19: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 34396
        mmTop = 265
        mmWidth = 2381
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 143934
        mmTop = 265
        mmWidth = 2381
        BandType = 4
      end
      object ppLine21: TppLine
        UserName = 'Line11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 163777
        mmTop = 529
        mmWidth = 1058
        BandType = 4
      end
      object ppDBText81: TppDBText
        UserName = 'DBText39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_QTDE'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3704
        mmLeft = 148432
        mmTop = 529
        mmWidth = 14817
        BandType = 4
      end
      object ppLine22: TppLine
        UserName = 'Line13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 176742
        mmTop = 529
        mmWidth = 1058
        BandType = 4
      end
    end
    object ppFooterBand5: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppShape12: TppShape
        UserName = 'Shape12'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 7144
        mmLeft = 0
        mmTop = 0
        mmWidth = 197644
        BandType = 8
      end
      object ppDBText163: TppDBText
        UserName = 'DBText163'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PARC_TEXTO_RELATORIO'
        DataPipeline = ppAppRepresentante
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppAppRepresentante'
        mmHeight = 3704
        mmLeft = 1852
        mmTop = 1852
        mmWidth = 116417
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 114036
      mmPrintPosition = 0
      object ppShape18: TppShape
        UserName = 'Shape18'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 29898
        mmLeft = 0
        mmTop = 5027
        mmWidth = 197644
        BandType = 7
      end
      object ppShape24: TppShape
        UserName = 'Shape15'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 10319
        mmLeft = 117740
        mmTop = 23019
        mmWidth = 75142
        BandType = 7
      end
      object ppShape22: TppShape
        UserName = 'Shape22'
        Brush.Color = clBackground
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 5027
        mmLeft = 0
        mmTop = 34925
        mmWidth = 197644
        BandType = 7
      end
      object ppLabel90: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt. Chegada: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 794
        mmTop = 6350
        mmWidth = 20489
        BandType = 7
      end
      object ppShape19: TppShape
        UserName = 'Shape101'
        Brush.Color = clBackground
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 5027
        mmLeft = 0
        mmTop = 529
        mmWidth = 197644
        BandType = 7
      end
      object ppLabel91: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fechamento'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 794
        mmTop = 1058
        mmWidth = 18796
        BandType = 7
      end
      object ppLabel92: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 21167
        mmTop = 6350
        mmWidth = 36777
        BandType = 7
      end
      object ppLabel93: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt. Sa'#237'da......: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 67469
        mmTop = 6350
        mmWidth = 20870
        BandType = 7
      end
      object ppLabel94: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hr. Chegada: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 794
        mmTop = 11113
        mmWidth = 20659
        BandType = 7
      end
      object ppLabel95: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '___:___'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 21431
        mmTop = 11113
        mmWidth = 12996
        BandType = 7
      end
      object ppLabel96: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hr. Sa'#237'da......: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 67469
        mmTop = 11113
        mmWidth = 21040
        BandType = 7
      end
      object ppLabel97: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt. Chegada: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 794
        mmTop = 16933
        mmWidth = 20489
        BandType = 7
      end
      object ppLabel98: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 21167
        mmTop = 16933
        mmWidth = 36777
        BandType = 7
      end
      object ppLabel99: TppLabel
        UserName = 'Label41'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt. Sa'#237'da......: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 67469
        mmTop = 16933
        mmWidth = 20870
        BandType = 7
      end
      object ppLabel101: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hr. Chegada: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 794
        mmTop = 21167
        mmWidth = 20659
        BandType = 7
      end
      object ppLabel102: TppLabel
        UserName = 'Label43'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '___:___'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 21431
        mmTop = 21167
        mmWidth = 12996
        BandType = 7
      end
      object ppLabel103: TppLabel
        UserName = 'Label45'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hr. Sa'#237'da......: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 67469
        mmTop = 21167
        mmWidth = 21040
        BandType = 7
      end
      object ppShape21: TppShape
        UserName = 'Shape19'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 56886
        mmLeft = 0
        mmTop = 57150
        mmWidth = 197644
        BandType = 7
      end
      object ppLine23: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 3440
        mmTop = 90752
        mmWidth = 91546
        BandType = 7
      end
      object ppRichText1: TppRichText
        UserName = 'RichText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Estamos cientes das '
        RichText = 
          '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\froman\fp' +
          'rq2\fcharset0 Times New Roman;}{\f1\fnil MS Sans Serif;}}'#13#10'\view' +
          'kind4\uc1\pard\f0\fs18 Estamos cientes das condi\'#39'e7\'#39'f5es de fu' +
          'ncionamento deste equipamento, bem como estamos de acordo com os' +
          ' procedimentos adotados pelo representante da \par'#13#10'\b SISTEMAQ ' +
          'AUTOMA\'#39'c7\'#39'c3O DE ESCRIT\'#39'd3RIO LTDA.\par'#13#10'\b0\f1\fs16\par'#13#10'}'#13#10 +
          #0
        mmHeight = 7938
        mmLeft = 529
        mmTop = 61119
        mmWidth = 196850
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppShape25: TppShape
        UserName = 'Shape21'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 17727
        mmLeft = 0
        mmTop = 39688
        mmWidth = 197644
        BandType = 7
      end
      object ppLabel104: TppLabel
        UserName = 'Label57'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cilindro'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3768
        mmLeft = 2381
        mmTop = 42598
        mmWidth = 12023
        BandType = 7
      end
      object ppLabel105: TppLabel
        UserName = 'Label56'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Data........: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 5821
        mmTop = 47096
        mmWidth = 15917
        BandType = 7
      end
      object ppDBText82: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_DT_CILINDRO'
        DataPipeline = ppOS
        DisplayFormat = 'dd/mm/yyyy'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3704
        mmLeft = 21960
        mmTop = 47096
        mmWidth = 24342
        BandType = 7
      end
      object ppLabel106: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Contador: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 48419
        mmTop = 47096
        mmWidth = 16140
        BandType = 7
      end
      object ppDBText83: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_CT_CILINDRO'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3704
        mmLeft = 64558
        mmTop = 47096
        mmWidth = 17992
        BandType = 7
      end
      object ppLabel107: TppLabel
        UserName = 'Label301'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ultimas Trocas'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 1058
        mmTop = 35454
        mmWidth = 22860
        BandType = 7
      end
      object ppLabel108: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '___:___'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 88371
        mmTop = 21167
        mmWidth = 12996
        BandType = 7
      end
      object ppLabel109: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 88106
        mmTop = 16933
        mmWidth = 36777
        BandType = 7
      end
      object ppLabel110: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '___:___'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 88371
        mmTop = 11113
        mmWidth = 12996
        BandType = 7
      end
      object ppLabel111: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '_____/_____/________'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 88371
        mmTop = 6350
        mmWidth = 36777
        BandType = 7
      end
      object ppLabel112: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tempo de Viagem.: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 128852
        mmTop = 6350
        mmWidth = 29104
        BandType = 7
      end
      object ppLabel113: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tempo de Viagem.: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 128852
        mmTop = 16933
        mmWidth = 29633
        BandType = 7
      end
      object ppDBText84: TppDBText
        UserName = 'DBText42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_CT_REVELADOR'
        DataPipeline = ppOS
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3704
        mmLeft = 162454
        mmTop = 47096
        mmWidth = 17198
        BandType = 7
      end
      object ppDBText85: TppDBText
        UserName = 'DBText43'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_DT_REVELADOR'
        DataPipeline = ppOS
        DisplayFormat = 'dd/mm/yyyy'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppOS'
        mmHeight = 3704
        mmLeft = 115623
        mmTop = 47096
        mmWidth = 28310
        BandType = 7
      end
      object ppLabel114: TppLabel
        UserName = 'Label73'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Data........: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 99484
        mmTop = 47096
        mmWidth = 15875
        BandType = 7
      end
      object ppLabel115: TppLabel
        UserName = 'Label74'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Contador: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 146315
        mmTop = 47096
        mmWidth = 16140
        BandType = 7
      end
      object ppLabel116: TppLabel
        UserName = 'Label75'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Revelador'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3768
        mmLeft = 96044
        mmTop = 42598
        mmWidth = 15261
        BandType = 7
      end
      object ppLabel117: TppLabel
        UserName = 'Label68'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Rep. Cliente:_______________________________________'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3768
        mmLeft = 3440
        mmTop = 94456
        mmWidth = 87927
        BandType = 7
      end
      object ppLabel118: TppLabel
        UserName = 'Label77'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'T'#233'cnico:________________________________________'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3768
        mmLeft = 102394
        mmTop = 94456
        mmWidth = 83333
        BandType = 7
      end
      object ppLine24: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 102129
        mmTop = 90752
        mmWidth = 91546
        BandType = 7
      end
      object ppLabel119: TppLabel
        UserName = 'Label78'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Km. Final:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 148696
        mmTop = 26988
        mmWidth = 15610
        BandType = 7
      end
      object ppLine25: TppLine
        UserName = 'Line17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 164571
        mmTop = 26988
        mmWidth = 9525
        BandType = 7
      end
      object ppLabel120: TppLabel
        UserName = 'Label79'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Km. Inicial:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 120121
        mmTop = 26458
        mmWidth = 17198
        BandType = 7
      end
      object ppLine26: TppLine
        UserName = 'Line18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 137584
        mmTop = 26458
        mmWidth = 8731
        BandType = 7
      end
      object ppLabel121: TppLabel
        UserName = 'Label82'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '___:___'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 159544
        mmTop = 6350
        mmWidth = 33073
        BandType = 7
      end
      object ppLabel122: TppLabel
        UserName = 'Label83'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '___:___'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 159279
        mmTop = 16933
        mmWidth = 33602
        BandType = 7
      end
      object ppLabel123: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ass:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3768
        mmLeft = 3440
        mmTop = 86519
        mmWidth = 6773
        BandType = 7
      end
      object ppLabel125: TppLabel
        UserName = 'Label85'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ass:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 101865
        mmTop = 86519
        mmWidth = 6879
        BandType = 7
      end
      object ppLabel126: TppLabel
        UserName = 'Label87'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '='
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5800
        mmLeft = 175155
        mmTop = 26194
        mmWidth = 2879
        BandType = 7
      end
      object ppLine27: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 178065
        mmTop = 27252
        mmWidth = 11906
        BandType = 7
      end
    end
    object raCodeModule4: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList1: TppParameterList
    end
  end
  object Designer_OS: TppDesigner
    AllowDataSettingsChange = True
    Caption = 'Configurar OS'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtInterBase
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqSQL2
    DataSettings.UseDataDictionary = True
    Position = poScreenCenter
    Report = rptOS
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 264
    Top = 163
  end
  object ppLayoutOS: TppDBPipeline
    DataSource = DmSerie_Customizaveis.dsLayoutOS
    UserName = 'ppOS1'
    Left = 232
    Top = 163
  end
  object Designer_Receita: TppDesigner
    AllowDataSettingsChange = True
    Caption = 'Configurar OS'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtInterBase
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqSQL2
    DataSettings.UseDataDictionary = True
    Position = poScreenCenter
    Report = rptReceita
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 601
    Top = 155
  end
  object ppLayoutReceita: TppDBPipeline
    DataSource = DmSerie_Customizaveis.dsLayoutReceita
    UserName = 'ppLayoutReceita'
    Left = 569
    Top = 155
    object ppLayoutReceitappField1: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppLayoutReceitappField2: TppField
      FieldAlias = 'CONFIG_AGR_RECEITA'
      FieldName = 'CONFIG_AGR_RECEITA'
      FieldLength = 8
      DataType = dtMemo
      DisplayWidth = 10
      Position = 1
      Searchable = False
      Sortable = False
    end
  end
  object ppReceita: TppDBPipeline
    DataSource = dsQryReceita
    UserName = 'ppReceita'
    Left = 537
    Top = 155
    object ppReceitappField1: TppField
      FieldAlias = 'NOME_PROPRIETARIO'
      FieldName = 'NOME_PROPRIETARIO'
      FieldLength = 70
      DisplayWidth = 70
      Position = 0
    end
    object ppReceitappField2: TppField
      FieldAlias = 'NOME_PROPRIEDADE'
      FieldName = 'NOME_PROPRIEDADE'
      FieldLength = 70
      DisplayWidth = 70
      Position = 1
    end
    object ppReceitappField3: TppField
      FieldAlias = 'CIDADE_PROPRIEDADE'
      FieldName = 'CIDADE_PROPRIEDADE'
      FieldLength = 70
      DisplayWidth = 70
      Position = 2
    end
    object ppReceitappField4: TppField
      FieldAlias = 'CULTURA'
      FieldName = 'CULTURA'
      FieldLength = 70
      DisplayWidth = 70
      Position = 3
    end
    object ppReceitappField5: TppField
      FieldAlias = 'PRAGA'
      FieldName = 'PRAGA'
      FieldLength = 70
      DisplayWidth = 70
      Position = 4
    end
    object ppReceitappField6: TppField
      FieldAlias = 'COD_PRODUTO'
      FieldName = 'COD_PRODUTO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object ppReceitappField7: TppField
      FieldAlias = 'MEDIDA_DOSAGEM'
      FieldName = 'MEDIDA_DOSAGEM'
      FieldLength = 15
      DisplayWidth = 15
      Position = 6
    end
    object ppReceitappField8: TppField
      FieldAlias = 'MEDIDA_VAZAO'
      FieldName = 'MEDIDA_VAZAO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 7
    end
    object ppReceitappField9: TppField
      FieldAlias = 'ORIENTACAO_USO_EQUIPAMENTO'
      FieldName = 'ORIENTACAO_USO_EQUIPAMENTO'
      FieldLength = 80
      DisplayWidth = 80
      Position = 8
    end
    object ppReceitappField10: TppField
      FieldAlias = 'ORIENTACAO_TECNICA'
      FieldName = 'ORIENTACAO_TECNICA'
      FieldLength = 80
      DisplayWidth = 80
      Position = 9
    end
    object ppReceitappField11: TppField
      FieldAlias = 'ORIENTACAO_COMPLEMENTAR'
      FieldName = 'ORIENTACAO_COMPLEMENTAR'
      FieldLength = 80
      DisplayWidth = 80
      Position = 10
    end
    object ppReceitappField12: TppField
      FieldAlias = 'ORIENTACAO_FORMA_APLICACAO'
      FieldName = 'ORIENTACAO_FORMA_APLICACAO'
      FieldLength = 80
      DisplayWidth = 80
      Position = 11
    end
    object ppReceitappField13: TppField
      FieldAlias = 'INGREDIENTE_ATIVO'
      FieldName = 'INGREDIENTE_ATIVO'
      FieldLength = 80
      DisplayWidth = 80
      Position = 12
    end
    object ppReceitappField14: TppField
      FieldAlias = 'NOME_PRODUTO'
      FieldName = 'NOME_PRODUTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object ppReceitappField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOSAGEM'
      FieldName = 'DOSAGEM'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 14
    end
    object ppReceitappField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'VAZAO'
      FieldName = 'VAZAO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 15
    end
    object ppReceitappField17: TppField
      FieldAlias = 'FORMULACAO'
      FieldName = 'FORMULACAO'
      FieldLength = 80
      DisplayWidth = 80
      Position = 16
    end
    object ppReceitappField18: TppField
      FieldAlias = 'CIDADE_EMPRESA'
      FieldName = 'CIDADE_EMPRESA'
      FieldLength = 80
      DisplayWidth = 80
      Position = 17
    end
    object ppReceitappField19: TppField
      FieldAlias = 'CLASSE_TOXICOLOGICA'
      FieldName = 'CLASSE_TOXICOLOGICA'
      FieldLength = 80
      DisplayWidth = 80
      Position = 18
    end
    object ppReceitappField20: TppField
      FieldAlias = 'DATA_EMISSAO'
      FieldName = 'DATA_EMISSAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 19
    end
    object ppReceitappField21: TppField
      FieldAlias = 'NOME_TECNICO'
      FieldName = 'NOME_TECNICO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 20
    end
    object ppReceitappField22: TppField
      FieldAlias = 'CREA_TECNICO'
      FieldName = 'CREA_TECNICO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 21
    end
    object ppReceitappField23: TppField
      FieldAlias = 'CTPS_TECNICO'
      FieldName = 'CTPS_TECNICO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 22
    end
    object ppReceitappField24: TppField
      FieldAlias = 'CPF_CNPJ_PRODUTOR'
      FieldName = 'CPF_CNPJ_PRODUTOR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 23
    end
    object ppReceitappField25: TppField
      FieldAlias = 'CNPJ_EMPRESA'
      FieldName = 'CNPJ_EMPRESA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 24
    end
    object ppReceitappField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'INTERVALO_SEGURANCA'
      FieldName = 'INTERVALO_SEGURANCA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 25
    end
    object ppReceitappField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'AREA_TRATADA'
      FieldName = 'AREA_TRATADA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 26
    end
    object ppReceitappField28: TppField
      FieldAlias = 'CPF_CNPJ_TECNICO'
      FieldName = 'CPF_CNPJ_TECNICO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 27
    end
    object ppReceitappField29: TppField
      FieldAlias = 'AREA_TOTAL'
      FieldName = 'AREA_TOTAL'
      FieldLength = 30
      DisplayWidth = 30
      Position = 28
    end
    object ppReceitappField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDE_ITENS'
      FieldName = 'QTDE_ITENS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
  end
  object rptReceita: TppReport
    AutoStop = False
    DataPipeline = ppReceita
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.DatabaseSettings.DataPipeline = ppLayoutReceita
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'CONFIG_AGR_RECEITA'
    Template.FileName = 'D:\Sistemas\HelpStore\Receituario.TXT'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    Units = utMillimeters
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
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 505
    Top = 155
    Version = '12.03'
    mmColumnWidth = 197379
    DataPipelineName = 'ppReceita'
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 194734
      mmPrintPosition = 0
      object ppDBText86: TppDBText
        UserName = 'DBText86'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_PROPRIETARIO'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4487
        mmLeft = 12435
        mmTop = 12700
        mmWidth = 152665
        BandType = 4
      end
      object ppDBText87: TppDBText
        UserName = 'DBText87'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_PROPRIEDADE'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4487
        mmLeft = 12435
        mmTop = 19050
        mmWidth = 106098
        BandType = 4
      end
      object ppDBText88: TppDBText
        UserName = 'DBText88'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_PROPRIEDADE'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4487
        mmLeft = 120650
        mmTop = 19050
        mmWidth = 44450
        BandType = 4
      end
      object ppDBText89: TppDBText
        UserName = 'DBText89'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CULTURA'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4498
        mmLeft = 12435
        mmTop = 24871
        mmWidth = 77523
        BandType = 4
      end
      object ppDBText90: TppDBText
        UserName = 'DBText90'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CULTURA'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4498
        mmLeft = 105569
        mmTop = 25135
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText91: TppDBText
        UserName = 'DBText901'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CULTURA'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4498
        mmLeft = 141288
        mmTop = 25400
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText92: TppDBText
        UserName = 'DBText92'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_PRODUTO'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4498
        mmLeft = 56356
        mmTop = 44715
        mmWidth = 108744
        BandType = 4
      end
      object ppLabel127: TppLabel
        UserName = 'Label127'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'PRODUTO........:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 12965
        mmTop = 44715
        mmWidth = 42333
        BandType = 4
      end
      object ppDBText93: TppDBText
        UserName = 'DBText93'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DOSAGEM'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4498
        mmLeft = 56356
        mmTop = 51065
        mmWidth = 108744
        BandType = 4
      end
      object ppLabel128: TppLabel
        UserName = 'Label128'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'DOSAGEM........:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 12965
        mmTop = 51065
        mmWidth = 42333
        BandType = 4
      end
      object ppDBText94: TppDBText
        UserName = 'DBText94'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_PRODUTO'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4498
        mmLeft = 56092
        mmTop = 57415
        mmWidth = 108744
        BandType = 4
      end
      object ppLabel129: TppLabel
        UserName = 'Label129'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FORMULACAO.....:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 12700
        mmTop = 57415
        mmWidth = 42333
        BandType = 4
      end
      object ppDBText95: TppDBText
        UserName = 'DBText95'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INGREDIENTE_ATIVO'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4498
        mmLeft = 56092
        mmTop = 70115
        mmWidth = 108744
        BandType = 4
      end
      object ppLabel130: TppLabel
        UserName = 'Label130'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'INGRED ATIVO...:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 12700
        mmTop = 70115
        mmWidth = 41804
        BandType = 4
      end
      object ppDBText96: TppDBText
        UserName = 'DBText96'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_PRODUTO'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4498
        mmLeft = 56092
        mmTop = 76465
        mmWidth = 108744
        BandType = 4
      end
      object ppLabel131: TppLabel
        UserName = 'Label131'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'EQUIPAMENTO....:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 12700
        mmTop = 76465
        mmWidth = 42069
        BandType = 4
      end
      object ppDBText97: TppDBText
        UserName = 'DBText97'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ORIENTACAO_USO_EQUIPAMENTO'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4233
        mmLeft = 56092
        mmTop = 82815
        mmWidth = 108744
        BandType = 4
      end
      object ppLabel132: TppLabel
        UserName = 'Label132'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'ORIENT TECNICA.:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 12700
        mmTop = 82815
        mmWidth = 42069
        BandType = 4
      end
      object ppDBText98: TppDBText
        UserName = 'DBText98'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INGREDIENTE_ATIVO'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4233
        mmLeft = 56092
        mmTop = 89165
        mmWidth = 108744
        BandType = 4
      end
      object ppLabel133: TppLabel
        UserName = 'Label1301'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FORMA APLICACAO:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 12700
        mmTop = 89165
        mmWidth = 41804
        BandType = 4
      end
      object ppDBText99: TppDBText
        UserName = 'DBText99'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_PRODUTO'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4233
        mmLeft = 56092
        mmTop = 95515
        mmWidth = 108744
        BandType = 4
      end
      object ppLabel134: TppLabel
        UserName = 'Label134'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'ORIENT COMPLEM.:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 12700
        mmTop = 95515
        mmWidth = 42333
        BandType = 4
      end
      object ppDBText100: TppDBText
        UserName = 'DBText100'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VAZAO'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4233
        mmLeft = 56092
        mmTop = 63765
        mmWidth = 108744
        BandType = 4
      end
      object ppLabel135: TppLabel
        UserName = 'Label135'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VAZAO..........:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4487
        mmLeft = 12700
        mmTop = 63765
        mmWidth = 41804
        BandType = 4
      end
      object ppDBText101: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRAGA'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4498
        mmLeft = 12435
        mmTop = 30692
        mmWidth = 77523
        BandType = 4
      end
      object ppDBText102: TppDBText
        UserName = 'DBText102'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_PROPRIEDADE'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4233
        mmLeft = 20902
        mmTop = 137584
        mmWidth = 67469
        BandType = 4
      end
      object ppDBText103: TppDBText
        UserName = 'DBText103'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_PROPRIEDADE'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4233
        mmLeft = 131498
        mmTop = 137584
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText104: TppDBText
        UserName = 'DBText104'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_PROPRIEDADE'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4233
        mmLeft = 20902
        mmTop = 143934
        mmWidth = 67469
        BandType = 4
      end
      object ppDBText105: TppDBText
        UserName = 'DBText105'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CPF_CNPJ_TECNICO'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4233
        mmLeft = 20902
        mmTop = 156898
        mmWidth = 67469
        BandType = 4
      end
      object ppDBText106: TppDBText
        UserName = 'DBText106'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_PROPRIEDADE'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4233
        mmLeft = 20902
        mmTop = 165100
        mmWidth = 67469
        BandType = 4
      end
      object ppDBText107: TppDBText
        UserName = 'DBText107'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_PROPRIEDADE'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4233
        mmLeft = 20902
        mmTop = 173567
        mmWidth = 67469
        BandType = 4
      end
      object ppDBText108: TppDBText
        UserName = 'DBText108'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_PROPRIEDADE'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4233
        mmLeft = 20638
        mmTop = 182034
        mmWidth = 67469
        BandType = 4
      end
      object ppDBText109: TppDBText
        UserName = 'DBText109'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_PROPRIEDADE'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4233
        mmLeft = 98954
        mmTop = 156634
        mmWidth = 74877
        BandType = 4
      end
      object ppDBText110: TppDBText
        UserName = 'DBText110'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_PROPRIEDADE'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4233
        mmLeft = 109273
        mmTop = 165100
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText111: TppDBText
        UserName = 'DBText1101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_PROPRIEDADE'
        DataPipeline = ppReceita
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReceita'
        mmHeight = 4233
        mmLeft = 161925
        mmTop = 165100
        mmWidth = 11642
        BandType = 4
      end
    end
    object ppParameterList6: TppParameterList
    end
  end
  object dsQryReceita: TDataSource
    DataSet = dmCadastros2.qryReceita
    Left = 506
    Top = 179
  end
  object Designer_Acerto: TppDesigner
    AllowDataSettingsChange = True
    Caption = 'Configurar OS'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtInterBase
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqSQL2
    DataSettings.UseDataDictionary = True
    Position = poScreenCenter
    Report = rptAcerto
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 278
    Top = 238
  end
  object ppLayoutAcerto: TppDBPipeline
    DataSource = DmSerie_Customizaveis.dsLayoutActRecibo
    UserName = 'ppLayoutAcerto'
    Left = 299
    Top = 206
  end
  object ppAcerto: TppDBPipeline
    DataSource = dsQryAcerto
    UserName = 'ppAcerto'
    Left = 158
    Top = 264
    object ppAcertoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ACT_COD_CONTA'
      FieldName = 'ACT_COD_CONTA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppAcertoppField2: TppField
      FieldAlias = 'ACT_TIPO_MOVIMENTO'
      FieldName = 'ACT_TIPO_MOVIMENTO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object ppAcertoppField3: TppField
      FieldAlias = 'ACT_DOCTO'
      FieldName = 'ACT_DOCTO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object ppAcertoppField4: TppField
      FieldAlias = 'ACT_PARCELA'
      FieldName = 'ACT_PARCELA'
      FieldLength = 6
      DisplayWidth = 6
      Position = 3
    end
    object ppAcertoppField5: TppField
      FieldAlias = 'ACT_DT_EMISSAO'
      FieldName = 'ACT_DT_EMISSAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppAcertoppField6: TppField
      FieldAlias = 'ACT_DT_VENCTO'
      FieldName = 'ACT_DT_VENCTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object ppAcertoppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'ACT_QTDE_MOEDA'
      FieldName = 'ACT_QTDE_MOEDA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 6
    end
    object ppAcertoppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'ACT_VALOR_NOMINAL'
      FieldName = 'ACT_VALOR_NOMINAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 7
    end
    object ppAcertoppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'ACT_JUROS'
      FieldName = 'ACT_JUROS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 8
    end
    object ppAcertoppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'ACT_VARIACAO'
      FieldName = 'ACT_VARIACAO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 9
    end
    object ppAcertoppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'ACT_MULTA'
      FieldName = 'ACT_MULTA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 10
    end
    object ppAcertoppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'ACT_DESCONTO'
      FieldName = 'ACT_DESCONTO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 11
    end
    object ppAcertoppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'ACT_TOTAL'
      FieldName = 'ACT_TOTAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 12
    end
    object ppAcertoppField14: TppField
      FieldAlias = 'PSA_NOME'
      FieldName = 'PSA_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object ppAcertoppField15: TppField
      FieldAlias = 'PSA_CPF_CGC'
      FieldName = 'PSA_CPF_CGC'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object ppAcertoppField16: TppField
      FieldAlias = 'EMP_NOME'
      FieldName = 'EMP_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 15
    end
    object ppAcertoppField17: TppField
      FieldAlias = 'EMP_IE'
      FieldName = 'EMP_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 16
    end
    object ppAcertoppField18: TppField
      FieldAlias = 'EMP_BAIRRO'
      FieldName = 'EMP_BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 17
    end
    object ppAcertoppField19: TppField
      FieldAlias = 'EMP_LOGRADOURO'
      FieldName = 'EMP_LOGRADOURO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 18
    end
    object ppAcertoppField20: TppField
      FieldAlias = 'EMP_CIDADE'
      FieldName = 'EMP_CIDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 19
    end
    object ppAcertoppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'EMP_NUMERO'
      FieldName = 'EMP_NUMERO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object ppAcertoppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'ACT_PLANILHA'
      FieldName = 'ACT_PLANILHA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object ppAcertoppField23: TppField
      FieldAlias = 'ACT_TIPO_ACERTO'
      FieldName = 'ACT_TIPO_ACERTO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 22
    end
    object ppAcertoppField24: TppField
      FieldAlias = 'USR_NOME'
      FieldName = 'USR_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 23
    end
    object ppAcertoppField25: TppField
      FieldAlias = 'EMP_CNPJ'
      FieldName = 'EMP_CNPJ'
      FieldLength = 20
      DisplayWidth = 20
      Position = 24
    end
    object ppAcertoppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'B_ACT_VALOR_NOMINAL'
      FieldName = 'B_ACT_VALOR_NOMINAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 25
    end
    object ppAcertoppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'B_ACT_JUROS'
      FieldName = 'B_ACT_JUROS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 26
    end
    object ppAcertoppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'B_ACT_VARIACAO'
      FieldName = 'B_ACT_VARIACAO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 27
    end
    object ppAcertoppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'B_ACT_MULTA'
      FieldName = 'B_ACT_MULTA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 28
    end
    object ppAcertoppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'B_ACT_DESCONTO'
      FieldName = 'B_ACT_DESCONTO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 29
    end
    object ppAcertoppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'B_ACT_TOTAL'
      FieldName = 'B_ACT_TOTAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 30
    end
    object ppAcertoppField32: TppField
      FieldAlias = 'PSA_NOME_RECIBO'
      FieldName = 'PSA_NOME_RECIBO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 31
    end
    object ppAcertoppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDO'
      FieldName = 'SALDO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 32
    end
    object ppAcertoppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_NF'
      FieldName = 'NUM_NF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
  end
  object rptAcerto: TppReport
    AutoStop = False
    DataPipeline = ppAcerto
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.DatabaseSettings.DataPipeline = ppLayoutAcerto
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'CONFIG_ACERTO_1'
    Template.FileName = 'C:\Documents and Settings\FABIANO\Desktop\Acerto de Contas.rtm'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    Units = utMillimeters
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
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 158
    Top = 238
    Version = '12.03'
    mmColumnWidth = 197379
    DataPipelineName = 'ppAcerto'
    object ppTitleBand3: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 45508
      mmPrintPosition = 0
      object ppDBText112: TppDBText
        UserName = 'DBText112'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMP_NOME'
        DataPipeline = ppAcerto
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 20108
        mmWidth = 112448
        BandType = 1
      end
      object ppLine29: TppLine
        UserName = 'Line101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 265
        mmTop = 17463
        mmWidth = 284163
        BandType = 1
      end
      object ppLabel136: TppLabel
        UserName = 'Label136'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'RECIBO DE ACERTO DE CONTAS'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5292
        mmLeft = 2117
        mmTop = 6879
        mmWidth = 75936
        BandType = 1
      end
      object ppLabel137: TppLabel
        UserName = 'Label137'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Usu'#225'rio: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 108215
        mmTop = 8202
        mmWidth = 11113
        BandType = 1
      end
      object ppLine31: TppLine
        UserName = 'Line31'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 284163
        BandType = 1
      end
      object ppDBText118: TppDBText
        UserName = 'DBText118'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'USR_NOME'
        DataPipeline = ppAcerto
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 3440
        mmLeft = 119592
        mmTop = 8202
        mmWidth = 22490
        BandType = 1
      end
      object ppLabel138: TppLabel
        UserName = 'Label138'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Acerto: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 147109
        mmTop = 8202
        mmWidth = 9790
        BandType = 1
      end
      object ppDBText119: TppDBText
        UserName = 'DBText119'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ACT_PLANILHA'
        DataPipeline = ppAcerto
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 3440
        mmLeft = 156898
        mmTop = 8202
        mmWidth = 33602
        BandType = 1
      end
      object ppSystemVariable13: TppSystemVariable
        UserName = 'SystemVariable13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 246592
        mmTop = 1323
        mmWidth = 35719
        BandType = 1
      end
      object ppLabel139: TppLabel
        UserName = 'Label139'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Inscri'#231#227'o Estadual - '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 25929
        mmWidth = 34290
        BandType = 1
      end
      object ppDBText120: TppDBText
        UserName = 'DBText120'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMP_IE'
        DataPipeline = ppAcerto
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 4498
        mmLeft = 34396
        mmTop = 25929
        mmWidth = 44715
        BandType = 1
      end
      object ppLabel140: TppLabel
        UserName = 'Label140'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ/MF -  '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 88900
        mmTop = 25929
        mmWidth = 19897
        BandType = 1
      end
      object ppDBText121: TppDBText
        UserName = 'DBText1201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMP_CNPJ'
        DataPipeline = ppAcerto
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 4498
        mmLeft = 108744
        mmTop = 25929
        mmWidth = 44715
        BandType = 1
      end
      object ppDBText122: TppDBText
        UserName = 'DBText1202'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMP_LOGRADOURO'
        DataPipeline = ppAcerto
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 32015
        mmWidth = 102129
        BandType = 1
      end
      object ppDBText123: TppDBText
        UserName = 'DBText123'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMP_CIDADE'
        DataPipeline = ppAcerto
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 4498
        mmLeft = 106892
        mmTop = 32279
        mmWidth = 71702
        BandType = 1
      end
      object ppLabel141: TppLabel
        UserName = 'Label141'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Parceiro:  '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 38100
        mmWidth = 16140
        BandType = 1
      end
      object ppDBText124: TppDBText
        UserName = 'DBText124'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PSA_NOME'
        DataPipeline = ppAcerto
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 4498
        mmLeft = 16669
        mmTop = 38100
        mmWidth = 71702
        BandType = 1
      end
      object ppLine32: TppLine
        UserName = 'Line301'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 44714
        mmWidth = 283898
        BandType = 1
      end
    end
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppLabel142: TppLabel
        UserName = 'Label142'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 2117
        mmWidth = 11642
        BandType = 0
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 6350
        mmWidth = 284163
        BandType = 0
      end
      object ppLabel143: TppLabel
        UserName = 'Label143'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Parceiro'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 13494
        mmTop = 2117
        mmWidth = 58738
        BandType = 0
      end
      object ppLabel144: TppLabel
        UserName = 'Label144'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Emiss'#227'o'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 94192
        mmTop = 2117
        mmWidth = 13758
        BandType = 0
      end
      object ppLabel145: TppLabel
        UserName = 'Label145'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vencimento'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 110331
        mmTop = 2117
        mmWidth = 18256
        BandType = 0
      end
      object ppLabel146: TppLabel
        UserName = 'Label146'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Qtde Moeda'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 140759
        mmTop = 2381
        mmWidth = 22490
        BandType = 0
      end
      object ppLabel147: TppLabel
        UserName = 'Label147'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vlr. Nominal'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 165629
        mmTop = 2381
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel148: TppLabel
        UserName = 'Label148'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Juros'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 197909
        mmTop = 2381
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel149: TppLabel
        UserName = 'Label149'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desconto'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 210609
        mmTop = 2381
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel150: TppLabel
        UserName = 'Label150'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Varia'#231#227'o'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 230188
        mmTop = 2381
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel151: TppLabel
        UserName = 'Label1501'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Multa'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 248973
        mmTop = 2381
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel152: TppLabel
        UserName = 'Label152'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 268023
        mmTop = 2381
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel153: TppLabel
        UserName = 'Label153'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tipo Docto'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 76200
        mmTop = 2381
        mmWidth = 15875
        BandType = 0
      end
    end
    object ppDetailBand7: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText114: TppDBText
        UserName = 'DBText114'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ACT_TOTAL'
        DataPipeline = ppAcerto
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 3175
        mmLeft = 268023
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText115: TppDBText
        UserName = 'DBText115'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ACT_COD_CONTA'
        DataPipeline = ppAcerto
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText116: TppDBText
        UserName = 'DBText116'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PSA_NOME'
        DataPipeline = ppAcerto
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 3175
        mmLeft = 13494
        mmTop = 0
        mmWidth = 59002
        BandType = 4
      end
      object ppDBText117: TppDBText
        UserName = 'DBText117'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ACT_DT_EMISSAO'
        DataPipeline = ppAcerto
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 3175
        mmLeft = 94192
        mmTop = 0
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText125: TppDBText
        UserName = 'DBText125'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ACT_DT_VENCTO'
        DataPipeline = ppAcerto
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 3175
        mmLeft = 110331
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText126: TppDBText
        UserName = 'DBText126'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ACT_QTDE_MOEDA'
        DataPipeline = ppAcerto
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 3175
        mmLeft = 140759
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText127: TppDBText
        UserName = 'DBText127'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ACT_VALOR_NOMINAL'
        DataPipeline = ppAcerto
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 3175
        mmLeft = 165629
        mmTop = 0
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText128: TppDBText
        UserName = 'DBText128'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ACT_JUROS'
        DataPipeline = ppAcerto
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 3175
        mmLeft = 187855
        mmTop = 0
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText129: TppDBText
        UserName = 'DBText129'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ACT_DESCONTO'
        DataPipeline = ppAcerto
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 3175
        mmLeft = 210609
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText130: TppDBText
        UserName = 'DBText130'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ACT_VARIACAO'
        DataPipeline = ppAcerto
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 3175
        mmLeft = 229923
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText131: TppDBText
        UserName = 'DBText1301'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ACT_MULTA'
        DataPipeline = ppAcerto
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 3175
        mmLeft = 248973
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand6: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 62706
      mmPrintPosition = 0
      object ppLabel156: TppLabel
        UserName = 'Label156'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ' Autorizo e dou plena quitacao dos valores acima mencionados.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 6350
        mmTop = 8202
        mmWidth = 105040
        BandType = 8
      end
      object ppLabel157: TppLabel
        UserName = 'Label157'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 
          'Historico Acerto:                                               ' +
          '                                                                ' +
          '          '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 6615
        mmTop = 14817
        mmWidth = 27252
        BandType = 8
      end
      object ppSystemVariable14: TppSystemVariable
        UserName = 'SystemVariable14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPrintDateTime
        DisplayFormat = 'd '#39'de'#39' mmmm '#39'de'#39' yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 79640
        mmTop = 15081
        mmWidth = 32544
        BandType = 8
      end
      object ppDBText132: TppDBText
        UserName = 'DBText132'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMP_CIDADE'
        DataPipeline = ppAcerto
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 3175
        mmLeft = 38100
        mmTop = 15081
        mmWidth = 41010
        BandType = 8
      end
      object ppDBText133: TppDBText
        UserName = 'DBText133'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PSA_NOME'
        DataPipeline = ppAcerto
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 4445
        mmLeft = 11113
        mmTop = 36248
        mmWidth = 71702
        BandType = 8
      end
      object ppLine35: TppLine
        UserName = 'Line35'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 6615
        mmTop = 34660
        mmWidth = 82021
        BandType = 8
      end
      object ppLine36: TppLine
        UserName = 'Line36'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 184415
        mmTop = 34660
        mmWidth = 82021
        BandType = 8
      end
      object ppLabel158: TppLabel
        UserName = 'Label158'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Acerto de Contas          '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 211667
        mmTop = 36513
        mmWidth = 39688
        BandType = 8
      end
    end
    object ppSummaryBand3: TppSummaryBand
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 36248
      mmPrintPosition = 0
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ACT_MULTA'
        DataPipeline = ppAcerto
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 3175
        mmLeft = 250032
        mmTop = 5027
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ACT_VARIACAO'
        DataPipeline = ppAcerto
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 3175
        mmLeft = 230982
        mmTop = 5027
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ACT_DESCONTO'
        DataPipeline = ppAcerto
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 3175
        mmLeft = 211667
        mmTop = 5027
        mmWidth = 17727
        BandType = 7
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ACT_JUROS'
        DataPipeline = ppAcerto
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 3175
        mmLeft = 189177
        mmTop = 5027
        mmWidth = 20638
        BandType = 7
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ACT_JUROS'
        DataPipeline = ppAcerto
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 3704
        mmLeft = 167217
        mmTop = 5027
        mmWidth = 20373
        BandType = 7
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ACT_QTDE_MOEDA'
        DataPipeline = ppAcerto
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 3704
        mmLeft = 143934
        mmTop = 5027
        mmWidth = 20373
        BandType = 7
      end
      object ppLabel155: TppLabel
        UserName = 'Label155'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Geral'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 6085
        mmTop = 4233
        mmWidth = 21167
        BandType = 7
      end
      object ppLine34: TppLine
        UserName = 'Line34'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 5027
        mmTop = 4233
        mmWidth = 279665
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ACT_TOTAL'
        DataPipeline = ppAcerto
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppAcerto'
        mmHeight = 3175
        mmLeft = 268023
        mmTop = 5027
        mmWidth = 15610
        BandType = 7
      end
      object SubTTGerado: TppSubReport
        UserName = 'SubTTGerado'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppTituloGerado'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 10319
        mmWidth = 284300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppTituloGerado
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Template.DatabaseSettings.DataPipeline = ppLayoutAcerto
          Template.DatabaseSettings.NameField = 'CNPJ'
          Template.DatabaseSettings.TemplateField = 'CONFIG_ACERTO_1'
          Template.SaveTo = stDatabase
          Template.Format = ftASCII
          Units = utMillimeters
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppTituloGerado'
          object ppTitleBand4: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 14817
            mmPrintPosition = 0
            object ppLabel159: TppLabel
              UserName = 'Label159'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Baixa por Renegocia'#231#227'o entre T'#237'tulos'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 4233
              mmLeft = 529
              mmTop = 0
              mmWidth = 62971
              BandType = 1
            end
            object ppLabel160: TppLabel
              UserName = 'Label160'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'T'#237'tulos Gerados'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 1323
              mmTop = 5292
              mmWidth = 24342
              BandType = 1
            end
            object ppLabel161: TppLabel
              UserName = 'Label1601'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Titulo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 2646
              mmTop = 11113
              mmWidth = 7705
              BandType = 1
            end
            object ppLabel162: TppLabel
              UserName = 'Label162'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Parcela'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 21431
              mmTop = 11113
              mmWidth = 10075
              BandType = 1
            end
            object ppLabel163: TppLabel
              UserName = 'Label163'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vencto '
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 37306
              mmTop = 11113
              mmWidth = 10245
              BandType = 1
            end
            object ppLabel164: TppLabel
              UserName = 'Label164'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Qtde Moeda'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3387
              mmLeft = 60738
              mmTop = 11113
              mmWidth = 16256
              BandType = 1
            end
            object ppLabel165: TppLabel
              UserName = 'Label165'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Nominal'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3387
              mmLeft = 85196
              mmTop = 11113
              mmWidth = 16637
              BandType = 1
            end
            object ppLabel166: TppLabel
              UserName = 'Label166'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Pessoa'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 104511
              mmTop = 11113
              mmWidth = 9906
              BandType = 1
            end
            object ppLabel167: TppLabel
              UserName = 'Label167'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'CPF/CNPJ'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 187325
              mmTop = 11113
              mmWidth = 14012
              BandType = 1
            end
            object ppLine37: TppLine
              UserName = 'Line37'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 3175
              mmTop = 14552
              mmWidth = 206905
              BandType = 1
            end
          end
          object ppDetailBand8: TppDetailBand
            Background1.Brush.Style = bsClear
            Background1.Gradient.EndColor = clWhite
            Background1.Gradient.StartColor = clWhite
            Background1.Gradient.Style = gsNone
            Background2.Brush.Style = bsClear
            Background2.Gradient.EndColor = clWhite
            Background2.Gradient.StartColor = clWhite
            Background2.Gradient.Style = gsNone
            mmBottomOffset = 0
            mmHeight = 3440
            mmPrintPosition = 0
            object ppDBText134: TppDBText
              UserName = 'DBText134'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CODIGO'
              DataPipeline = ppTituloGerado
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppTituloGerado'
              mmHeight = 3260
              mmLeft = 2646
              mmTop = 180
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText135: TppDBText
              UserName = 'DBText135'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PARCELA'
              DataPipeline = ppTituloGerado
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppTituloGerado'
              mmHeight = 3260
              mmLeft = 21431
              mmTop = 180
              mmWidth = 12700
              BandType = 4
            end
            object ppDBText136: TppDBText
              UserName = 'DBText136'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_VENCTO'
              DataPipeline = ppTituloGerado
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppTituloGerado'
              mmHeight = 3260
              mmLeft = 37306
              mmTop = 180
              mmWidth = 16404
              BandType = 4
            end
            object ppDBText137: TppDBText
              UserName = 'DBText137'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'QTDE_MOEDA'
              DataPipeline = ppTituloGerado
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppTituloGerado'
              mmHeight = 3260
              mmLeft = 56886
              mmTop = 265
              mmWidth = 20108
              BandType = 4
            end
            object ppDBText138: TppDBText
              UserName = 'DBText138'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR'
              DataPipeline = ppTituloGerado
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppTituloGerado'
              mmHeight = 3260
              mmLeft = 79375
              mmTop = 265
              mmWidth = 22490
              BandType = 4
            end
            object ppDBText139: TppDBText
              UserName = 'DBText139'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOME_RAZAO'
              DataPipeline = ppTituloGerado
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppTituloGerado'
              mmHeight = 3260
              mmLeft = 104775
              mmTop = 180
              mmWidth = 80433
              BandType = 4
            end
            object ppDBText140: TppDBText
              UserName = 'DBText140'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CPF_CNPJ'
              DataPipeline = ppTituloGerado
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppTituloGerado'
              mmHeight = 3260
              mmLeft = 187855
              mmTop = 180
              mmWidth = 22490
              BandType = 4
            end
          end
          object ppSummaryBand4: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
            object ppLine38: TppLine
              UserName = 'Line38'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 3175
              mmTop = 265
              mmWidth = 206640
              BandType = 7
            end
            object ppDBCalc15: TppDBCalc
              UserName = 'DBCalc15'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'QTDE_MOEDA'
              DataPipeline = ppTituloGerado
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppTituloGerado'
              mmHeight = 3387
              mmLeft = 56886
              mmTop = 1058
              mmWidth = 20108
              BandType = 7
            end
            object ppDBCalc16: TppDBCalc
              UserName = 'DBCalc16'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR'
              DataPipeline = ppTituloGerado
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppTituloGerado'
              mmHeight = 3387
              mmLeft = 79375
              mmTop = 794
              mmWidth = 22490
              BandType = 7
            end
          end
        end
      end
      object SubCheques: TppSubReport
        UserName = 'SubCheques'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppCheques'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 10319
        mmWidth = 284300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppCheques
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Template.DatabaseSettings.DataPipeline = ppLayoutAcerto
          Template.DatabaseSettings.NameField = 'CNPJ'
          Template.DatabaseSettings.TemplateField = 'CONFIG_ACERTO_1'
          Template.SaveTo = stDatabase
          Template.Format = ftASCII
          Units = utMillimeters
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppCheques'
          object ppTitleBand5: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 14817
            mmPrintPosition = 0
            object ppLabel168: TppLabel
              UserName = 'Label159'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Acerto por Cheque'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 4191
              mmLeft = 529
              mmTop = 0
              mmWidth = 31538
              BandType = 1
            end
            object ppLabel169: TppLabel
              UserName = 'Label160'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cheques Desdobrados'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3810
              mmLeft = 1323
              mmTop = 5292
              mmWidth = 34713
              BandType = 1
            end
            object ppLabel170: TppLabel
              UserName = 'Label1601'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cheque'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 2646
              mmTop = 11113
              mmWidth = 12435
              BandType = 1
            end
            object ppLabel172: TppLabel
              UserName = 'Label163'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Pr'#233'-Date'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 44979
              mmTop = 11113
              mmWidth = 15610
              BandType = 1
            end
            object ppLabel173: TppLabel
              UserName = 'Label164'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Valor'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 26458
              mmTop = 11113
              mmWidth = 16140
              BandType = 1
            end
            object ppLabel175: TppLabel
              UserName = 'Label166'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Conta'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 63236
              mmTop = 11113
              mmWidth = 9260
              BandType = 1
            end
            object ppLine39: TppLine
              UserName = 'Line37'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 3175
              mmTop = 14552
              mmWidth = 206905
              BandType = 1
            end
            object ppLabel171: TppLabel
              UserName = 'Label171'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Agencia'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 90488
              mmTop = 11113
              mmWidth = 12171
              BandType = 1
            end
            object ppLabel174: TppLabel
              UserName = 'Label174'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Banco'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 120121
              mmTop = 10848
              mmWidth = 11642
              BandType = 1
            end
          end
          object ppDetailBand9: TppDetailBand
            Background1.Brush.Style = bsClear
            Background1.Gradient.EndColor = clWhite
            Background1.Gradient.StartColor = clWhite
            Background1.Gradient.Style = gsNone
            Background2.Brush.Style = bsClear
            Background2.Gradient.EndColor = clWhite
            Background2.Gradient.StartColor = clWhite
            Background2.Gradient.Style = gsNone
            mmBottomOffset = 0
            mmHeight = 3440
            mmPrintPosition = 0
            object ppDBText141: TppDBText
              UserName = 'DBText134'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CHEQUE'
              DataPipeline = ppCheques
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCheques'
              mmHeight = 3260
              mmLeft = 2646
              mmTop = 180
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText143: TppDBText
              UserName = 'DBText136'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRE_DATE'
              DataPipeline = ppCheques
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCheques'
              mmHeight = 3175
              mmLeft = 44979
              mmTop = 265
              mmWidth = 16404
              BandType = 4
            end
            object ppDBText144: TppDBText
              UserName = 'DBText137'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR'
              DataPipeline = ppCheques
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppCheques'
              mmHeight = 3260
              mmLeft = 22225
              mmTop = 265
              mmWidth = 20108
              BandType = 4
            end
            object ppDBText146: TppDBText
              UserName = 'DBText139'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CONTA'
              DataPipeline = ppCheques
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCheques'
              mmHeight = 3175
              mmLeft = 63500
              mmTop = 265
              mmWidth = 24342
              BandType = 4
            end
            object ppDBText142: TppDBText
              UserName = 'DBText142'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'AGENCIA'
              DataPipeline = ppCheques
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCheques'
              mmHeight = 3175
              mmLeft = 90752
              mmTop = 0
              mmWidth = 25665
              BandType = 4
            end
            object ppDBText145: TppDBText
              UserName = 'DBText145'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BANCO'
              DataPipeline = ppCheques
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCheques'
              mmHeight = 3175
              mmLeft = 120386
              mmTop = 0
              mmWidth = 27252
              BandType = 4
            end
          end
          object ppSummaryBand5: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
            object ppLine40: TppLine
              UserName = 'Line38'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 3175
              mmTop = 265
              mmWidth = 206640
              BandType = 7
            end
            object ppDBCalc17: TppDBCalc
              UserName = 'DBCalc15'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR'
              DataPipeline = ppCheques
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppCheques'
              mmHeight = 3387
              mmLeft = 23548
              mmTop = 1058
              mmWidth = 20108
              BandType = 7
            end
          end
        end
      end
      object SubCartoes: TppSubReport
        UserName = 'SubCartoes'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppCartoes'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 10319
        mmWidth = 284300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = ppCartoes
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Template.DatabaseSettings.DataPipeline = ppLayoutAcerto
          Template.DatabaseSettings.NameField = 'CNPJ'
          Template.DatabaseSettings.TemplateField = 'CONFIG_ACERTO_1'
          Template.SaveTo = stDatabase
          Template.Format = ftASCII
          Units = utMillimeters
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppCartoes'
          object ppTitleBand7: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 14817
            mmPrintPosition = 0
            object ppLabel177: TppLabel
              UserName = 'Label159'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Acerto por Cart'#227'o'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 4191
              mmLeft = 529
              mmTop = 0
              mmWidth = 29760
              BandType = 1
            end
            object ppLabel178: TppLabel
              UserName = 'Label160'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cart'#245'es Desdobrados'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3810
              mmLeft = 1323
              mmTop = 5292
              mmWidth = 33105
              BandType = 1
            end
            object ppLabel179: TppLabel
              UserName = 'Label1601'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'N'#186' do Cart'#227'o'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 2646
              mmTop = 11113
              mmWidth = 17198
              BandType = 1
            end
            object ppLabel180: TppLabel
              UserName = 'Label162'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Parcela'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 21431
              mmTop = 11113
              mmWidth = 11113
              BandType = 1
            end
            object ppLabel181: TppLabel
              UserName = 'Label163'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Dt. Reembolso'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 37306
              mmTop = 11113
              mmWidth = 19854
              BandType = 1
            end
            object ppLabel182: TppLabel
              UserName = 'Label164'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Valor'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 73819
              mmTop = 11113
              mmWidth = 10054
              BandType = 1
            end
            object ppLabel183: TppLabel
              UserName = 'Label165'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Conta'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 89165
              mmTop = 11113
              mmWidth = 18256
              BandType = 1
            end
            object ppLabel184: TppLabel
              UserName = 'Label166'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cliente'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 117211
              mmTop = 11113
              mmWidth = 12171
              BandType = 1
            end
            object ppLine41: TppLine
              UserName = 'Line37'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 3175
              mmTop = 14552
              mmWidth = 206905
              BandType = 1
            end
            object ppLabel176: TppLabel
              UserName = 'Label176'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'CPF/CNPJ'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 155046
              mmTop = 11113
              mmWidth = 14023
              BandType = 1
            end
          end
          object ppDetailBand10: TppDetailBand
            Background1.Brush.Style = bsClear
            Background1.Gradient.EndColor = clWhite
            Background1.Gradient.StartColor = clWhite
            Background1.Gradient.Style = gsNone
            Background2.Brush.Style = bsClear
            Background2.Gradient.EndColor = clWhite
            Background2.Gradient.StartColor = clWhite
            Background2.Gradient.Style = gsNone
            mmBottomOffset = 0
            mmHeight = 3440
            mmPrintPosition = 0
            object ppDBText148: TppDBText
              UserName = 'DBText134'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NUM_CARTAO'
              DataPipeline = ppCartoes
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCartoes'
              mmHeight = 3260
              mmLeft = 2646
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText149: TppDBText
              UserName = 'DBText135'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NUM_PARCELAS'
              DataPipeline = ppCartoes
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCartoes'
              mmHeight = 3260
              mmLeft = 21431
              mmTop = 0
              mmWidth = 12700
              BandType = 4
            end
            object ppDBText150: TppDBText
              UserName = 'DBText136'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'REEMBOLSO'
              DataPipeline = ppCartoes
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCartoes'
              mmHeight = 3260
              mmLeft = 37306
              mmTop = 0
              mmWidth = 16404
              BandType = 4
            end
            object ppDBText151: TppDBText
              UserName = 'DBText137'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR'
              DataPipeline = ppCartoes
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppCartoes'
              mmHeight = 3260
              mmLeft = 63765
              mmTop = 0
              mmWidth = 20108
              BandType = 4
            end
            object ppDBText152: TppDBText
              UserName = 'DBText138'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NUM_CONTA'
              DataPipeline = ppCartoes
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCartoes'
              mmHeight = 3175
              mmLeft = 89165
              mmTop = 0
              mmWidth = 22490
              BandType = 4
            end
            object ppDBText153: TppDBText
              UserName = 'DBText139'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CLIENTE'
              DataPipeline = ppCartoes
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCartoes'
              mmHeight = 3175
              mmLeft = 117211
              mmTop = 0
              mmWidth = 35719
              BandType = 4
            end
            object ppDBText147: TppDBText
              UserName = 'DBText147'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CPF_CNPJ'
              DataPipeline = ppCartoes
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCartoes'
              mmHeight = 3175
              mmLeft = 155046
              mmTop = 0
              mmWidth = 35719
              BandType = 4
            end
          end
          object ppSummaryBand6: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
            object ppLine42: TppLine
              UserName = 'Line38'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 1852
              mmTop = 0
              mmWidth = 206640
              BandType = 7
            end
            object ppDBCalc19: TppDBCalc
              UserName = 'DBCalc15'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR'
              DataPipeline = ppCartoes
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppCartoes'
              mmHeight = 3387
              mmLeft = 63765
              mmTop = 1058
              mmWidth = 20108
              BandType = 7
            end
          end
        end
      end
      object SubMovimentos: TppSubReport
        UserName = 'SubMovimentos'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppMovimento'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 20373
        mmWidth = 284300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport4: TppChildReport
          AutoStop = False
          DataPipeline = ppMovimento
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Template.DatabaseSettings.DataPipeline = ppLayoutAcerto
          Template.DatabaseSettings.NameField = 'CNPJ'
          Template.DatabaseSettings.TemplateField = 'CONFIG_ACERTO_1'
          Template.SaveTo = stDatabase
          Template.Format = ftASCII
          Units = utMillimeters
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppMovimento'
          object ppTitleBand8: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 14817
            mmPrintPosition = 0
            object ppLabel185: TppLabel
              UserName = 'Label159'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Acerto por Aviso Banc'#225'rio'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 4191
              mmLeft = 529
              mmTop = 0
              mmWidth = 44111
              BandType = 1
            end
            object ppLabel186: TppLabel
              UserName = 'Label160'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Movimentos Banc'#225'rios'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3810
              mmLeft = 1323
              mmTop = 5292
              mmWidth = 34883
              BandType = 1
            end
            object ppLabel187: TppLabel
              UserName = 'Label1601'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'C'#243'digo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 2646
              mmTop = 11113
              mmWidth = 9779
              BandType = 1
            end
            object ppLabel188: TppLabel
              UserName = 'Label162'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Docto'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 21431
              mmTop = 11113
              mmWidth = 8001
              BandType = 1
            end
            object ppLabel189: TppLabel
              UserName = 'Label163'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Data'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 37306
              mmTop = 11113
              mmWidth = 6096
              BandType = 1
            end
            object ppLabel190: TppLabel
              UserName = 'Label164'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Valor'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 73819
              mmTop = 11113
              mmWidth = 10054
              BandType = 1
            end
            object ppLabel191: TppLabel
              UserName = 'Label165'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Conta'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 89165
              mmTop = 11113
              mmWidth = 18256
              BandType = 1
            end
            object ppLabel192: TppLabel
              UserName = 'Label166'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Banco'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 117211
              mmTop = 11113
              mmWidth = 8636
              BandType = 1
            end
            object ppLine43: TppLine
              UserName = 'Line37'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 3175
              mmTop = 14552
              mmWidth = 222515
              BandType = 1
            end
            object ppLabel193: TppLabel
              UserName = 'Label176'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tipo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 155046
              mmTop = 11113
              mmWidth = 6879
              BandType = 1
            end
            object ppLabel194: TppLabel
              UserName = 'Label194'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Hist'#243'rico'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 166423
              mmTop = 11113
              mmWidth = 12277
              BandType = 1
            end
          end
          object ppDetailBand11: TppDetailBand
            Background1.Brush.Style = bsClear
            Background1.Gradient.EndColor = clWhite
            Background1.Gradient.StartColor = clWhite
            Background1.Gradient.Style = gsNone
            Background2.Brush.Style = bsClear
            Background2.Gradient.EndColor = clWhite
            Background2.Gradient.StartColor = clWhite
            Background2.Gradient.Style = gsNone
            mmBottomOffset = 0
            mmHeight = 3440
            mmPrintPosition = 0
            object ppDBText154: TppDBText
              UserName = 'DBText134'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CODIGO'
              DataPipeline = ppMovimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppMovimento'
              mmHeight = 3260
              mmLeft = 2646
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText155: TppDBText
              UserName = 'DBText135'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'COD_DOC'
              DataPipeline = ppMovimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppMovimento'
              mmHeight = 3260
              mmLeft = 21431
              mmTop = 0
              mmWidth = 12700
              BandType = 4
            end
            object ppDBText156: TppDBText
              UserName = 'DBText136'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DATA'
              DataPipeline = ppMovimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppMovimento'
              mmHeight = 3260
              mmLeft = 37306
              mmTop = 0
              mmWidth = 16404
              BandType = 4
            end
            object ppDBText157: TppDBText
              UserName = 'DBText137'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR'
              DataPipeline = ppMovimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppMovimento'
              mmHeight = 3260
              mmLeft = 63765
              mmTop = 0
              mmWidth = 20108
              BandType = 4
            end
            object ppDBText158: TppDBText
              UserName = 'DBText138'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CONTA'
              DataPipeline = ppMovimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppMovimento'
              mmHeight = 3175
              mmLeft = 89165
              mmTop = 0
              mmWidth = 22490
              BandType = 4
            end
            object ppDBText159: TppDBText
              UserName = 'DBText139'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOME_BANCO'
              DataPipeline = ppMovimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppMovimento'
              mmHeight = 3175
              mmLeft = 117211
              mmTop = 0
              mmWidth = 35719
              BandType = 4
            end
            object ppDBText160: TppDBText
              UserName = 'DBText147'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TIPO'
              DataPipeline = ppMovimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppMovimento'
              mmHeight = 3175
              mmLeft = 155046
              mmTop = 0
              mmWidth = 7144
              BandType = 4
            end
            object ppDBText161: TppDBText
              UserName = 'DBText161'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HISTORICO'
              DataPipeline = ppMovimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppMovimento'
              mmHeight = 3175
              mmLeft = 167482
              mmTop = 0
              mmWidth = 54504
              BandType = 4
            end
          end
          object ppSummaryBand7: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
            object ppLine44: TppLine
              UserName = 'Line38'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 1852
              mmTop = 0
              mmWidth = 223838
              BandType = 7
            end
            object ppDBCalc18: TppDBCalc
              UserName = 'DBCalc15'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR'
              DataPipeline = ppMovimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppMovimento'
              mmHeight = 3387
              mmLeft = 63765
              mmTop = 1058
              mmWidth = 20108
              BandType = 7
            end
          end
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'ACT_TIPO_MOVIMENTO'
      DataPipeline = ppAcerto
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppAcerto'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppDBText113: TppDBText
          UserName = 'DBText113'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'ACT_TIPO_MOVIMENTO'
          DataPipeline = ppAcerto
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          DataPipelineName = 'ppAcerto'
          mmHeight = 4233
          mmLeft = 5027
          mmTop = 794
          mmWidth = 84138
          BandType = 3
          GroupNo = 0
        end
        object ppLine30: TppLine
          UserName = 'Line30'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 4763
          mmTop = 5820
          mmWidth = 279665
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 9790
        mmPrintPosition = 0
        object ppLine33: TppLine
          UserName = 'Line302'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 4498
          mmTop = 0
          mmWidth = 279665
          BandType = 5
          GroupNo = 0
        end
        object ppLabel154: TppLabel
          UserName = 'Label154'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Total'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 5027
          mmTop = 1852
          mmWidth = 14552
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'ACT_TOTAL'
          DataPipeline = ppAcerto
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppAcerto'
          mmHeight = 3175
          mmLeft = 268023
          mmTop = 3175
          mmWidth = 15610
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'ACT_MULTA'
          DataPipeline = ppAcerto
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppAcerto'
          mmHeight = 3175
          mmLeft = 248973
          mmTop = 3175
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'ACT_VARIACAO'
          DataPipeline = ppAcerto
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppAcerto'
          mmHeight = 3175
          mmLeft = 229923
          mmTop = 3175
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc4: TppDBCalc
          UserName = 'DBCalc4'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'ACT_DESCONTO'
          DataPipeline = ppAcerto
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppAcerto'
          mmHeight = 3175
          mmLeft = 210609
          mmTop = 3175
          mmWidth = 17727
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'ACT_JUROS'
          DataPipeline = ppAcerto
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppAcerto'
          mmHeight = 3175
          mmLeft = 188119
          mmTop = 3175
          mmWidth = 20638
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'ACT_JUROS'
          DataPipeline = ppAcerto
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppAcerto'
          mmHeight = 3704
          mmLeft = 166159
          mmTop = 3175
          mmWidth = 20373
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc7'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'ACT_QTDE_MOEDA'
          DataPipeline = ppAcerto
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppAcerto'
          mmHeight = 3704
          mmLeft = 142875
          mmTop = 3175
          mmWidth = 20373
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList7: TppParameterList
    end
  end
  object dsQryAcerto: TDataSource
    DataSet = dmCadastros2.QryAcerto
    Left = 158
    Top = 291
  end
  object dsACTTituloGerado: TDataSource
    DataSet = dmCadastros2.QryActTTGerado
    Left = 189
    Top = 265
  end
  object dsACTCheques: TDataSource
    DataSet = dmCadastros2.QryActCheques
    Left = 219
    Top = 266
  end
  object dsACTMovimento: TDataSource
    DataSet = dmCadastros2.QryActMovimento
    Left = 220
    Top = 294
  end
  object ppTituloGerado: TppDBPipeline
    DataSource = dsACTTituloGerado
    UserName = 'ppTituloGerado'
    Left = 189
    Top = 238
    object ppTituloGeradoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppTituloGeradoppField2: TppField
      FieldAlias = 'PARCELA'
      FieldName = 'PARCELA'
      FieldLength = 6
      DisplayWidth = 6
      Position = 1
    end
    object ppTituloGeradoppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDE_MOEDA'
      FieldName = 'QTDE_MOEDA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 2
    end
    object ppTituloGeradoppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 3
    end
    object ppTituloGeradoppField5: TppField
      FieldAlias = 'NOME_RAZAO'
      FieldName = 'NOME_RAZAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object ppTituloGeradoppField6: TppField
      FieldAlias = 'CPF_CNPJ'
      FieldName = 'CPF_CNPJ'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object ppTituloGeradoppField7: TppField
      FieldAlias = 'DT_VENCTO'
      FieldName = 'DT_VENCTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 6
    end
  end
  object ppCheques: TppDBPipeline
    DataSource = dsACTCheques
    UserName = 'ppCheques'
    Left = 219
    Top = 238
    object ppChequesppField1: TppField
      FieldAlias = 'AGENCIA'
      FieldName = 'AGENCIA'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppChequesppField2: TppField
      FieldAlias = 'BANCO'
      FieldName = 'BANCO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 1
    end
    object ppChequesppField3: TppField
      FieldAlias = 'CHEQUE'
      FieldName = 'CHEQUE'
      FieldLength = 6
      DisplayWidth = 6
      Position = 2
    end
    object ppChequesppField4: TppField
      FieldAlias = 'HISTORICO'
      FieldName = 'HISTORICO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 3
    end
    object ppChequesppField5: TppField
      FieldAlias = 'CONTA'
      FieldName = 'CONTA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object ppChequesppField6: TppField
      FieldAlias = 'PRE_DATE'
      FieldName = 'PRE_DATE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object ppChequesppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESSOA_FJ'
      FieldName = 'PESSOA_FJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppChequesppField8: TppField
      FieldAlias = 'NOME_RAZAO'
      FieldName = 'NOME_RAZAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object ppChequesppField9: TppField
      FieldAlias = 'TIPO'
      FieldName = 'TIPO'
      FieldLength = 7
      DisplayWidth = 7
      Position = 8
    end
    object ppChequesppField10: TppField
      FieldAlias = 'NOME_BANCO'
      FieldName = 'NOME_BANCO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object ppChequesppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
  end
  object ppCartoes: TppDBPipeline
    DataSource = dsACTCartoes
    UserName = 'ppCartoes'
    Left = 249
    Top = 238
    object ppCartoesppField1: TppField
      FieldAlias = 'ADMINISTRADORA'
      FieldName = 'ADMINISTRADORA'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppCartoesppField2: TppField
      FieldAlias = 'CLIENTE'
      FieldName = 'CLIENTE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppCartoesppField3: TppField
      FieldAlias = 'NUM_CARTAO'
      FieldName = 'NUM_CARTAO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object ppCartoesppField4: TppField
      FieldAlias = 'NUM_CONTA'
      FieldName = 'NUM_CONTA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object ppCartoesppField5: TppField
      FieldAlias = 'REEMBOLSO'
      FieldName = 'REEMBOLSO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object ppCartoesppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object ppCartoesppField7: TppField
      FieldAlias = 'CPF_CNPJ'
      FieldName = 'CPF_CNPJ'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object ppCartoesppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_PARCELAS'
      FieldName = 'NUM_PARCELAS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
  end
  object dsACTCartoes: TDataSource
    DataSet = dmCadastros2.QryActCartao
    Left = 249
    Top = 266
  end
  object ppMovimento: TppDBPipeline
    DataSource = dsACTMovimento
    UserName = 'ppMovimento'
    Left = 189
    Top = 294
  end
  object QryOS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Active = True
    SQL.Strings = (
      'select * from pcd_imprime_os(:cnpj, :codigo,:pessoa_fj)')
    Left = 232
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pessoa_fj'
        ParamType = ptUnknown
      end>
    object QryOSPSA_NOME_RAZAO: TIBStringField
      FieldName = 'PSA_NOME_RAZAO'
      Origin = '"PCD_IMPRIME_OS"."PSA_NOME_RAZAO"'
      Size = 50
    end
    object QryOSPSA_FANTASIA: TIBStringField
      FieldName = 'PSA_FANTASIA'
      Origin = '"PCD_IMPRIME_OS"."PSA_FANTASIA"'
      Size = 50
    end
    object QryOSPSA_ENDERECO: TIBStringField
      FieldName = 'PSA_ENDERECO'
      Origin = '"PCD_IMPRIME_OS"."PSA_ENDERECO"'
      Size = 100
    end
    object QryOSPSA_BAIRRO: TIBStringField
      FieldName = 'PSA_BAIRRO'
      Origin = '"PCD_IMPRIME_OS"."PSA_BAIRRO"'
      Size = 50
    end
    object QryOSPSA_CEP: TIBStringField
      FieldName = 'PSA_CEP'
      Origin = '"PCD_IMPRIME_OS"."PSA_CEP"'
      Size = 8
    end
    object QryOSPSA_FONE: TIBStringField
      FieldName = 'PSA_FONE'
      Origin = '"PCD_IMPRIME_OS"."PSA_FONE"'
    end
    object QryOSPSA_CONTATO: TIBStringField
      FieldName = 'PSA_CONTATO'
      Origin = '"PCD_IMPRIME_OS"."PSA_CONTATO"'
      Size = 50
    end
    object QryOSPSA_CIDADE: TIBStringField
      FieldName = 'PSA_CIDADE'
      Origin = '"PCD_IMPRIME_OS"."PSA_CIDADE"'
      Size = 80
    end
    object QryOSPSA_REGIAO: TIBStringField
      FieldName = 'PSA_REGIAO'
      Origin = '"PCD_IMPRIME_OS"."PSA_REGIAO"'
      Size = 60
    end
    object QryOSOS_NOME_TECNICO: TIBStringField
      FieldName = 'OS_NOME_TECNICO'
      Origin = '"PCD_IMPRIME_OS"."OS_NOME_TECNICO"'
      Size = 50
    end
    object QryOSOS_EQUIPAMENTO: TIBStringField
      FieldName = 'OS_EQUIPAMENTO'
      Origin = '"PCD_IMPRIME_OS"."OS_EQUIPAMENTO"'
      Size = 50
    end
    object QryOSOS_EQ_MODELO: TIBStringField
      FieldName = 'OS_EQ_MODELO'
      Origin = '"PCD_IMPRIME_OS"."OS_EQ_MODELO"'
      Size = 50
    end
    object QryOSOS_EQ_MARCA: TIBStringField
      FieldName = 'OS_EQ_MARCA'
      Origin = '"PCD_IMPRIME_OS"."OS_EQ_MARCA"'
      Size = 50
    end
    object QryOSOS_EQ_SERIE: TIBStringField
      FieldName = 'OS_EQ_SERIE'
      Origin = '"PCD_IMPRIME_OS"."OS_EQ_SERIE"'
      Size = 30
    end
    object QryOSOS_SOLICITANTE: TIBStringField
      FieldName = 'OS_SOLICITANTE'
      Origin = '"PCD_IMPRIME_OS"."OS_SOLICITANTE"'
      Size = 50
    end
    object QryOSOS_DEFEITO_RECLAMADO: TIBStringField
      FieldName = 'OS_DEFEITO_RECLAMADO'
      Origin = '"PCD_IMPRIME_OS"."OS_DEFEITO_RECLAMADO"'
      Size = 50
    end
    object QryOSOS_OBS_FECHAMENTO: TBlobField
      FieldName = 'OS_OBS_FECHAMENTO'
      Origin = '"PCD_IMPRIME_OS"."OS_OBS_FECHAMENTO"'
      Size = 8
    end
    object QryOSOS_INFORMACOES: TBlobField
      FieldName = 'OS_INFORMACOES'
      Origin = '"PCD_IMPRIME_OS"."OS_INFORMACOES"'
      Size = 8
    end
    object QryOSOS_DT_PROGRAMACAO: TDateField
      FieldName = 'OS_DT_PROGRAMACAO'
      Origin = '"PCD_IMPRIME_OS"."OS_DT_PROGRAMACAO"'
    end
    object QryOSOS_HR_PROGRAMACAO: TTimeField
      FieldName = 'OS_HR_PROGRAMACAO'
      Origin = '"PCD_IMPRIME_OS"."OS_HR_PROGRAMACAO"'
    end
    object QryOSOS_TECNICO: TIBStringField
      FieldName = 'OS_TECNICO'
      Origin = '"PCD_IMPRIME_OS"."OS_TECNICO"'
      Size = 50
    end
    object QryOSOS_MOTIVO_CHAMADO: TIBStringField
      FieldName = 'OS_MOTIVO_CHAMADO'
      Origin = '"PCD_IMPRIME_OS"."OS_MOTIVO_CHAMADO"'
      Size = 50
    end
    object QryOSOS_TIPO_ATENDIMENTO: TIBStringField
      FieldName = 'OS_TIPO_ATENDIMENTO'
      Origin = '"PCD_IMPRIME_OS"."OS_TIPO_ATENDIMENTO"'
      Size = 50
    end
    object QryOSOS_CT_TOTAL: TIntegerField
      FieldName = 'OS_CT_TOTAL'
      Origin = '"PCD_IMPRIME_OS"."OS_CT_TOTAL"'
    end
    object QryOSOS_CT_COR: TIntegerField
      FieldName = 'OS_CT_COR'
      Origin = '"PCD_IMPRIME_OS"."OS_CT_COR"'
    end
    object QryOSOS_CT_PRETO: TIntegerField
      FieldName = 'OS_CT_PRETO'
      Origin = '"PCD_IMPRIME_OS"."OS_CT_PRETO"'
    end
    object QryOSOS_DT_CILINDRO: TDateField
      FieldName = 'OS_DT_CILINDRO'
      Origin = '"PCD_IMPRIME_OS"."OS_DT_CILINDRO"'
    end
    object QryOSOS_CT_CILINDRO: TIntegerField
      FieldName = 'OS_CT_CILINDRO'
      Origin = '"PCD_IMPRIME_OS"."OS_CT_CILINDRO"'
    end
    object QryOSOS_CT_REVELADOR: TIntegerField
      FieldName = 'OS_CT_REVELADOR'
      Origin = '"PCD_IMPRIME_OS"."OS_CT_REVELADOR"'
    end
    object QryOSOS_DT_REVELADOR: TDateField
      FieldName = 'OS_DT_REVELADOR'
      Origin = '"PCD_IMPRIME_OS"."OS_DT_REVELADOR"'
    end
    object QryOSPRD_QTDE: TFloatField
      FieldName = 'PRD_QTDE'
      Origin = '"PCD_IMPRIME_OS"."PRD_QTDE"'
    end
    object QryOSPRD_CODIGO: TIBStringField
      FieldName = 'PRD_CODIGO'
      Origin = '"PCD_IMPRIME_OS"."PRD_CODIGO"'
      Size = 15
    end
    object QryOSPRD_NOME: TIBStringField
      FieldName = 'PRD_NOME'
      Origin = '"PCD_IMPRIME_OS"."PRD_NOME"'
      Size = 50
    end
    object QryOSOS_DT_INICIO: TDateField
      FieldName = 'OS_DT_INICIO'
      Origin = '"PCD_IMPRIME_OS"."OS_DT_INICIO"'
    end
    object QryOSOS_TIPO_CONTRATO: TIBStringField
      FieldName = 'OS_TIPO_CONTRATO'
      Origin = '"PCD_IMPRIME_OS"."OS_TIPO_CONTRATO"'
      Size = 50
    end
    object QryOSOS_HR_INICIALIZACAO: TTimeField
      FieldName = 'OS_HR_INICIALIZACAO'
      Origin = '"PCD_IMPRIME_OS"."OS_HR_INICIALIZACAO"'
    end
    object QryOSOS_DT_FINALIZACAO: TDateField
      FieldName = 'OS_DT_FINALIZACAO'
      Origin = '"PCD_IMPRIME_OS"."OS_DT_FINALIZACAO"'
    end
    object QryOSOS_HR_FINALIZACAO: TTimeField
      FieldName = 'OS_HR_FINALIZACAO'
      Origin = '"PCD_IMPRIME_OS"."OS_HR_FINALIZACAO"'
    end
    object QryOSCAB_NOME_EMPRESA: TIBStringField
      FieldName = 'CAB_NOME_EMPRESA'
      Origin = '"PCD_IMPRIME_OS"."CAB_NOME_EMPRESA"'
      Size = 50
    end
    object QryOSCAB_END_EMPRESA: TIBStringField
      FieldName = 'CAB_END_EMPRESA'
      Origin = '"PCD_IMPRIME_OS"."CAB_END_EMPRESA"'
      Size = 200
    end
    object QryOSCAB_FONE_EMPRESA: TIBStringField
      FieldName = 'CAB_FONE_EMPRESA'
      Origin = '"PCD_IMPRIME_OS"."CAB_FONE_EMPRESA"'
    end
    object QryOSOS_CODIGO: TIntegerField
      FieldName = 'OS_CODIGO'
      Origin = '"PCD_IMPRIME_OS"."OS_CODIGO"'
    end
    object QryOSOS_PESSOA_OBS: TBlobField
      FieldName = 'OS_PESSOA_OBS'
      Origin = '"PCD_IMPRIME_OS"."OS_PESSOA_OBS"'
      Size = 8
    end
    object QryOSOS_EQUIPAMENTO_OBS: TBlobField
      FieldName = 'OS_EQUIPAMENTO_OBS'
      Origin = '"PCD_IMPRIME_OS"."OS_EQUIPAMENTO_OBS"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object QryOSPRD_UNITARIO: TFloatField
      FieldName = 'PRD_UNITARIO'
      Origin = '"PCD_IMPRIME_OS"."PRD_UNITARIO"'
    end
    object QryOSPRD_TOTAL: TFloatField
      FieldName = 'PRD_TOTAL'
      Origin = '"PCD_IMPRIME_OS"."PRD_TOTAL"'
    end
    object QryOSVEI_PLACA: TIBStringField
      FieldName = 'VEI_PLACA'
      Origin = '"PCD_IMPRIME_OS"."VEI_PLACA"'
      Size = 8
    end
    object QryOSVEI_COR: TIBStringField
      FieldName = 'VEI_COR'
      Origin = '"PCD_IMPRIME_OS"."VEI_COR"'
      Size = 50
    end
    object QryOSVEI_MODELO: TIBStringField
      FieldName = 'VEI_MODELO'
      Origin = '"PCD_IMPRIME_OS"."VEI_MODELO"'
      Size = 50
    end
    object QryOSVEI_ANO: TIntegerField
      FieldName = 'VEI_ANO'
      Origin = '"PCD_IMPRIME_OS"."VEI_ANO"'
    end
    object QryOSVEI_CHASSI: TIBStringField
      FieldName = 'VEI_CHASSI'
      Origin = '"PCD_IMPRIME_OS"."VEI_CHASSI"'
      Size = 50
    end
    object QryOSVEI_MARCA: TIBStringField
      FieldName = 'VEI_MARCA'
      Origin = '"PCD_IMPRIME_OS"."VEI_MARCA"'
      Size = 50
    end
    object QryOSPSA_CPF: TIBStringField
      FieldName = 'PSA_CPF'
      Origin = '"PCD_IMPRIME_OS"."PSA_CPF"'
      Size = 15
    end
    object QryOSPSA_RG_IE: TIBStringField
      FieldName = 'PSA_RG_IE'
      Origin = '"PCD_IMPRIME_OS"."PSA_RG_IE"'
    end
    object QryOSPSA_CODIGO: TIntegerField
      FieldName = 'PSA_CODIGO'
      Origin = '"PCD_IMPRIME_OS"."PSA_CODIGO"'
    end
    object QryOSOS_KM: TIntegerField
      FieldName = 'OS_KM'
      Origin = '"PCD_IMPRIME_OS"."OS_KM"'
    end
  end
  object dsOS: TDataSource
    DataSet = QryOS
    Left = 201
    Top = 200
  end
  object dsApp: TDataSource
    DataSet = DmApp.QryParceiro
    Left = 374
    Top = 265
  end
  object ppAppRepresentante: TppDBPipeline
    DataSource = dsApp
    UserName = 'ppAppRepresentante'
    Left = 343
    Top = 265
    object ppAppRepresentanteppField1: TppField
      FieldAlias = 'PARC_RAZAO_SOCIAL'
      FieldName = 'PARC_RAZAO_SOCIAL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 0
    end
    object ppAppRepresentanteppField2: TppField
      FieldAlias = 'PARC_NOME_FANTASIA'
      FieldName = 'PARC_NOME_FANTASIA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppAppRepresentanteppField3: TppField
      FieldAlias = 'PARC_CNPJ'
      FieldName = 'PARC_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 2
    end
    object ppAppRepresentanteppField4: TppField
      FieldAlias = 'PARC_FONE'
      FieldName = 'PARC_FONE'
      FieldLength = 16
      DisplayWidth = 16
      Position = 3
    end
    object ppAppRepresentanteppField5: TppField
      FieldAlias = 'PARC_SITE'
      FieldName = 'PARC_SITE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object ppAppRepresentanteppField6: TppField
      FieldAlias = 'PARC_EMAIL'
      FieldName = 'PARC_EMAIL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object ppAppRepresentanteppField7: TppField
      FieldAlias = 'PARC_SLOGAN'
      FieldName = 'PARC_SLOGAN'
      FieldLength = 200
      DisplayWidth = 200
      Position = 6
    end
    object ppAppRepresentanteppField8: TppField
      FieldAlias = 'PARC_SUPORTE_EMAIL'
      FieldName = 'PARC_SUPORTE_EMAIL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object ppAppRepresentanteppField9: TppField
      FieldAlias = 'PARC_SUPORTE_FONE'
      FieldName = 'PARC_SUPORTE_FONE'
      FieldLength = 16
      DisplayWidth = 16
      Position = 8
    end
    object ppAppRepresentanteppField10: TppField
      FieldAlias = 'PARC_SUPORTE_SITE'
      FieldName = 'PARC_SUPORTE_SITE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object ppAppRepresentanteppField11: TppField
      FieldAlias = 'PARC_LOGO'
      FieldName = 'PARC_LOGO'
      FieldLength = 8
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppAppRepresentanteppField12: TppField
      FieldAlias = 'PARC_TEXTO_RELATORIO'
      FieldName = 'PARC_TEXTO_RELATORIO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 11
    end
  end
end
