object FrmPagar: TFrmPagar
  Left = 0
  Top = 0
  Width = 1280
  Height = 760
  Caption = 'Contas '#224' Pagar'
  Color = 15396334
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 1264
    Height = 722
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnResize = pnlClientResize
    object Bevel1: TBevel
      Left = 2
      Top = 688
      Width = 1260
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object pnlBottom: TPanel
      Left = 2
      Top = 690
      Width = 1260
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 2
        Width = 1260
        Height = 26
        Align = dalTop
        BarManager = BarManager
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1260
        Height = 2
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
    object Panel5: TPanel
      Left = 2
      Top = 2
      Width = 1039
      Height = 686
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel5'
      Color = clHighlightText
      TabOrder = 1
      object Panel3: TPanel
        Left = 0
        Top = 39
        Width = 1039
        Height = 193
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TcxLabel
          Left = 10
          Top = 28
          Caption = 'C'#243'digo'
          ParentFont = False
          Transparent = True
        end
        object Label8: TcxLabel
          Left = 514
          Top = 53
          Caption = 'Valor'
          ParentFont = False
          Transparent = True
        end
        object BtnPessoa: TcxButton
          Left = 105
          Top = 50
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 23
          OnClick = BtnPessoaClick
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
        end
        object Label5: TcxLabel
          Left = 8
          Top = 53
          Caption = 'Pessoa'
          ParentFont = False
          Transparent = True
        end
        object Label2: TcxLabel
          Left = 9
          Top = 78
          Caption = 'Vencto'
          ParentFont = False
          Transparent = True
        end
        object Label7: TcxLabel
          Left = 145
          Top = 78
          Caption = 'Docto'
          ParentFont = False
          Transparent = True
        end
        object Label4: TcxLabel
          Left = 500
          Top = 80
          Caption = 'Emiss'#227'o'
          ParentFont = False
          Transparent = True
        end
        object Label6: TcxLabel
          Left = 22
          Top = 103
          Caption = 'Pcla'
          ParentFont = False
          Transparent = True
        end
        object Label9: TcxLabel
          Left = 521
          Top = 103
          Caption = 'Total'
          ParentFont = False
          Transparent = True
        end
        object Label11: TcxLabel
          Left = 376
          Top = 103
          Caption = 'Jur Pgr'
          ParentFont = False
          Transparent = True
        end
        object Label13: TcxLabel
          Left = 25
          Top = 129
          Caption = 'Hist'
          ParentFont = False
          Transparent = True
        end
        object Label15: TcxLabel
          Left = 480
          Top = 130
          Caption = 'Lan'#231'amento'
          ParentFont = False
          Transparent = True
        end
        object Label16: TcxLabel
          Left = 471
          Top = 28
          Caption = 'Pl'
          ParentFont = False
          Transparent = True
        end
        object Label14: TcxLabel
          Left = 571
          Top = 28
          Caption = 'Conf'
          ParentFont = False
          Transparent = True
        end
        object BTNCENTRO: TcxButton
          Left = 312
          Top = 152
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 35
          OnClick = BTNCENTROClick
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
        end
        object Label12: TcxLabel
          Left = 240
          Top = 104
          Caption = 'Descto'
          ParentFont = False
          Transparent = True
        end
        object Label3: TcxLabel
          Left = 102
          Top = 103
          Caption = 'Parcial'
          ParentFont = False
          Transparent = True
        end
        object Label35: TcxLabel
          Left = 24
          Top = 154
          Caption = 'Ccu'
          ParentFont = False
          Transparent = True
        end
        object Label10: TcxLabel
          Left = 161
          Top = 28
          Caption = 'Dpl'
          ParentFont = False
          Transparent = True
        end
        object BtnTipo: TcxButton
          Left = 301
          Top = 76
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 40
          OnClick = BtnTipoClick
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
        end
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 1039
          Height = 15
          Align = alTop
          BevelOuter = bvNone
          Caption = 'Contas '#224' Pagar'
          Color = clAppWorkSpace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 20
        end
        object Label17: TcxLabel
          Left = 333
          Top = 28
          Caption = 'C. Ctb'
          ParentFont = False
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 345
          Top = 154
          Caption = 'Contrato'
          ParentFont = False
          Transparent = True
        end
        object dxDBEdit1: TcxDBTextEdit
          Left = 50
          Top = 26
          TabStop = False
          DataBinding.DataField = 'CODIGO'
          DataBinding.DataSource = DataSource
          Properties.ReadOnly = True
          TabOrder = 0
          OnKeyDown = dxDBEdit1KeyDown
          Width = 55
        end
        object dxDBEdit3: TcxDBTextEdit
          Left = 109
          Top = 26
          TabStop = False
          DataBinding.DataField = 'ANO'
          DataBinding.DataSource = DataSource
          Properties.ReadOnly = True
          TabOrder = 1
          OnKeyDown = dxDBEdit1KeyDown
          Width = 46
        end
        object dxDBEdit6: TcxDBTextEdit
          Left = 184
          Top = 26
          DataBinding.DataField = 'DUPLICATA'
          DataBinding.DataSource = DataSource
          Properties.ReadOnly = False
          TabOrder = 2
          OnEnter = CMBpessoaEnter
          OnExit = CMBpessoaExit
          OnKeyDown = dxDBEdit1KeyDown
          Width = 140
        end
        object dxDBEdit2: TcxDBTextEdit
          Left = 487
          Top = 26
          TabStop = False
          DataBinding.DataField = 'PLANILHA'
          DataBinding.DataSource = DataSource
          Enabled = False
          Properties.ReadOnly = True
          TabOrder = 19
          OnKeyDown = dxDBEdit1KeyDown
          Width = 79
        end
        object CmbConferida: TcxDBComboBox
          Left = 600
          Top = 26
          DataBinding.DataField = 'CONFERIDA'
          DataBinding.DataSource = DataSource
          TabOrder = 18
          OnEnter = CMBpessoaEnter
          OnExit = CMBpessoaExit
          OnKeyDown = dxDBEdit1KeyDown
          Width = 39
        end
        object dxDBEdit11: TcxDBTextEdit
          Left = 370
          Top = 26
          TabStop = False
          DataBinding.DataField = 'CONTABILIDADE'
          DataBinding.DataSource = DataSource
          Enabled = False
          Properties.ReadOnly = True
          TabOrder = 44
          OnKeyDown = dxDBEdit1KeyDown
          Width = 95
        end
        object CMBpessoa: TcxDBButtonEdit
          Left = 50
          Top = 51
          DataBinding.DataField = 'PESSOA_FJ'
          DataBinding.DataSource = DataSource
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = CMBpessoaButtonClick
          TabOrder = 3
          OnEnter = CMBpessoaEnter
          OnExit = CMBpessoaExit
          OnKeyDown = dxDBEdit1KeyDown
          Width = 55
        end
        object dxDBEdit4: TcxDBTextEdit
          Left = 137
          Top = 51
          TabStop = False
          DataBinding.DataField = 'NOME'
          DataBinding.DataSource = DataSource
          Properties.ReadOnly = True
          TabOrder = 4
          OnKeyDown = dxDBEdit1KeyDown
          Width = 368
        end
        object EdValor: TcxDBCalcEdit
          Left = 545
          Top = 51
          DataBinding.DataField = 'VALOR'
          DataBinding.DataSource = DataSource
          TabOrder = 5
          OnEnter = CMBpessoaEnter
          OnExit = CMBpessoaExit
          OnKeyDown = dxDBEdit1KeyDown
          Width = 94
        end
        object EdVencimento2: TcxDBDateEdit
          Left = 50
          Top = 76
          DataBinding.DataField = 'DT_VENCTO'
          DataBinding.DataSource = DataSource
          TabOrder = 6
          OnEnter = CMBpessoaEnter
          OnExit = CMBpessoaExit
          OnKeyDown = dxDBEdit1KeyDown
          Width = 89
        end
        object CmbTipo: TcxDBLookupComboBox
          Left = 181
          Top = 76
          DataBinding.DataField = 'TIPO_DOCTO'
          DataBinding.DataSource = DataSource
          Properties.KeyFieldNames = 'SIGLA'
          Properties.ListColumns = <
            item
              FieldName = 'SIGLA'
            end>
          Properties.ListSource = DsTipoDocto
          Properties.Revertable = True
          TabOrder = 7
          OnEnter = CMBpessoaEnter
          OnExit = CMBpessoaExit
          OnKeyDown = dxDBEdit1KeyDown
          Width = 120
        end
        object dxDBEdit16: TcxDBTextEdit
          Left = 330
          Top = 77
          DataBinding.DataField = 'DOCTO'
          DataBinding.DataSource = DataSource
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = False
          TabOrder = 8
          OnEnter = CMBpessoaEnter
          OnExit = CMBpessoaExit
          OnKeyDown = dxDBEdit1KeyDown
          Width = 163
        end
        object EdData: TcxDBDateEdit
          Left = 546
          Top = 78
          DataBinding.DataField = 'DT_EMISSAO'
          DataBinding.DataSource = DataSource
          TabOrder = 9
          OnEnter = CMBpessoaEnter
          OnExit = CMBpessoaExit
          OnKeyDown = dxDBEdit1KeyDown
          Width = 93
        end
        object dxDBEdit7: TcxDBTextEdit
          Left = 50
          Top = 102
          DataBinding.DataField = 'PARCELA'
          DataBinding.DataSource = DataSource
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = False
          TabOrder = 10
          OnEnter = CMBpessoaEnter
          OnExit = CMBpessoaExit
          OnKeyDown = dxDBEdit1KeyDown
          Width = 46
        end
        object dxDBEdit5: TcxDBTextEdit
          Left = 141
          Top = 102
          TabStop = False
          DataBinding.DataField = 'VLR_PARCIAL'
          DataBinding.DataSource = DataSource
          Properties.ReadOnly = True
          TabOrder = 11
          OnKeyDown = dxDBEdit1KeyDown
          Width = 90
        end
        object dxDBEdit10: TcxDBTextEdit
          Left = 281
          Top = 102
          TabStop = False
          DataBinding.DataField = 'DESCONTOS'
          DataBinding.DataSource = DataSource
          Properties.ReadOnly = True
          TabOrder = 12
          OnKeyDown = dxDBEdit1KeyDown
          Width = 81
        end
        object dxDBEdit9: TcxDBTextEdit
          Left = 416
          Top = 102
          TabStop = False
          DataBinding.DataField = 'JUROS_PAG'
          DataBinding.DataSource = DataSource
          Properties.ReadOnly = True
          TabOrder = 13
          OnKeyDown = dxDBEdit1KeyDown
          Width = 95
        end
        object dxDBEdit8: TcxDBTextEdit
          Left = 552
          Top = 102
          TabStop = False
          DataBinding.DataField = 'Total'
          DataBinding.DataSource = DataSource
          Properties.ReadOnly = True
          TabOrder = 14
          OnKeyDown = dxDBEdit1KeyDown
          Width = 87
        end
        object dxDBEdit15: TcxDBTextEdit
          Left = 50
          Top = 127
          DataBinding.DataField = 'HISTORICO'
          DataBinding.DataSource = DataSource
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = False
          TabOrder = 15
          OnEnter = CMBpessoaEnter
          OnExit = CMBpessoaExit
          OnKeyDown = dxDBEdit1KeyDown
          Width = 415
        end
        object dxDBDateEdit1: TcxDBDateEdit
          Left = 546
          Top = 128
          DataBinding.DataField = 'DT_LANCTO'
          DataBinding.DataSource = DataSource
          Enabled = False
          TabOrder = 16
          OnEnter = CMBpessoaEnter
          OnExit = CMBpessoaExit
          OnKeyDown = dxDBEdit1KeyDown
          Width = 93
        end
        object cmbcentro: TcxDBLookupComboBox
          Left = 50
          Top = 153
          DataBinding.DataField = 'CENTRO_CUSTO'
          DataBinding.DataSource = DataSource
          Properties.ClearKey = 46
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Properties.ListSource = DsCentro
          TabOrder = 17
          OnEnter = CMBpessoaEnter
          OnExit = CMBpessoaExit
          OnKeyDown = dxDBEdit1KeyDown
          Width = 260
        end
        object cmbContrato: TcxDBLookupComboBox
          Left = 392
          Top = 153
          DataBinding.DataField = 'COD_CONTRATO'
          DataBinding.DataSource = DataSource
          Properties.ClearKey = 46
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'DESCRICAO'
            end>
          Properties.ListSource = DsCentro
          TabOrder = 42
          OnKeyDown = dxDBEdit1KeyDown
          Width = 247
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1039
        Height = 39
        Align = alTop
        BevelOuter = bvNone
        Color = clHighlightText
        TabOrder = 1
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
        end
        object b2: TBevel
          Left = 8
          Top = 35
          Width = 193
          Height = 2
          Shape = bsTopLine
        end
        object LblRegistros: TcxLabel
          Left = 581
          Top = 14
          Caption = '1/1'
          ParentFont = False
          Transparent = True
        end
        object LblTitulo: TcxLabel
          Left = 46
          Top = 8
          Caption = 'Contas '#224' Pagar'
          ParentFont = False
          Transparent = True
        end
      end
      object cxGrid: TcxGrid
        Left = 0
        Top = 232
        Width = 1039
        Height = 454
        Align = alClient
        TabOrder = 2
        object GridTV: TcxGridDBBandedTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = DataSource
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsSelection.MultiSelect = True
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.BandHeaders = False
          Bands = <
            item
            end>
          object GridTVCNPJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CNPJ'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object GridTVCODIGO_VN: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODIGO_VN'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object GridTVCODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODIGO'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridTVANO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ANO'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object GridTVDT_EMISSAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_EMISSAO'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object GridTVDT_VENCTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_VENCTO'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object GridTVPESSOA_FJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PESSOA_FJ'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object GridTVDT_LANCTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_LANCTO'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object GridTVDOCTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DOCTO'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object GridTVPARCELA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PARCELA'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object GridTVHISTORICO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'HISTORICO'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object GridTVVALOR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VALOR'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object GridTVVLR_PARCIAL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLR_PARCIAL'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object GridTVJUROS_PAG: TcxGridDBBandedColumn
            DataBinding.FieldName = 'JUROS_PAG'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object GridTVDESCONTOS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DESCONTOS'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object GridTVBOLETO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BOLETO'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object GridTVORIGEM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ORIGEM'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object GridTVCODIGO_ENT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODIGO_ENT'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object GridTVANO_ENT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ANO_ENT'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Width = 79
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object GridTVAVISO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AVISO'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object GridTVDT_AVISO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_AVISO'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object GridTVSELECIONADO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SELECIONADO'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object GridTVCENTRO_CUSTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CENTRO_CUSTO'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object GridTVNOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object GridTVDUPLICATA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DUPLICATA'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object GridTVCONFERIDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONFERIDA'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object GridTVTOTAL_ENTRADA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TOTAL_ENTRADA'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
          object GridTVPLANILHA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PLANILHA'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object GridTVFLUXO_CAIXA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FLUXO_CAIXA'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
          object GridTVCONTABILIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONTABILIDADE'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 29
            Position.RowIndex = 0
          end
          object GridTVDT_ULTIMA_BAIXA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_ULTIMA_BAIXA'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 30
            Position.RowIndex = 0
          end
          object GridTVTIPO_DOCTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TIPO_DOCTO'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 31
            Position.RowIndex = 0
          end
          object GridTVCOD_INDEXADOR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_INDEXADOR'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 32
            Position.RowIndex = 0
          end
          object GridTVIDX_DATABASE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IDX_DATABASE'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 33
            Position.RowIndex = 0
          end
          object GridTVIDX_COTACAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IDX_COTACAO'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 34
            Position.RowIndex = 0
          end
          object GridTVIDX_QTDE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IDX_QTDE'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 35
            Position.RowIndex = 0
          end
          object GridTVCOD_CONFIG_TITULO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_CONFIG_TITULO'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 36
            Position.RowIndex = 0
          end
          object GridTVTotal: TcxGridDBBandedColumn
            DataBinding.FieldName = 'Total'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 37
            Position.RowIndex = 0
          end
          object GridTV_Total_Geral_IDX: TcxGridDBBandedColumn
            DataBinding.FieldName = '_Total_Geral_IDX'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 38
            Position.RowIndex = 0
          end
          object GridTVNOME_RAZAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_RAZAO'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 39
            Position.RowIndex = 0
          end
          object GridTVVALOR_EXTENSO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VALOR_EXTENSO'
            OnCustomDrawCell = GridTVCNPJCustomDrawCell
            Width = 521
            Position.BandIndex = 0
            Position.ColIndex = 40
            Position.RowIndex = 0
          end
          object GridTVCTR_DESCRICAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CTR_DESCRICAO'
            Position.BandIndex = 0
            Position.ColIndex = 41
            Position.RowIndex = 0
          end
          object GridTVCC_DESCRICAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CC_DESCRICAO'
            Width = 310
            Position.BandIndex = 0
            Position.ColIndex = 42
            Position.RowIndex = 0
          end
          object GridTVNOME_TIPO_DOCTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_TIPO_DOCTO'
            Position.BandIndex = 0
            Position.ColIndex = 43
            Position.RowIndex = 0
          end
        end
        object GridLV: TcxGridLevel
          GridView = GridTV
        end
      end
    end
    object Panel4: TPanel
      Left = 1041
      Top = 2
      Width = 221
      Height = 686
      Align = alRight
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 2
      object BtnRecebimetos: TcxButton
        Left = 4
        Top = 50
        Width = 212
        Height = 42
        Action = ActBaixar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = False
        Glyph.Data = {
          36080000424D3608000000000000360400002800000020000000200000000100
          0800000000000004000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00010101010101
          010101010101010101010101F701010101010101010101010101010101010101
          01010101010101010101F7F7F7F7010101010101010101010101010101010101
          0101010101010101F7F7F7F7000000000000F7F7F7F7F7010101010101010101
          010101010101F7F7F7F7000068D8B268D8B20000F7F7F7F70101010101010101
          01010101F7F7F7F7000068D8B268D8B268D810180000F7F7F701010101010101
          0101F7F7F7F7F7F70068D8B268D8B268040018181800F7F7F701010101010101
          F7F7F7F7F7F7F70068D8B2F2F268D81818021818181800F7F7F701010101F7F7
          F7F7F7F7F7F7F70068F2FEFEFEF2F20000020218021800F7F7F70101F7F7F7F7
          F7F7F7F7F7F7000068FEFEFE00FE10F2F200020202006804F7F7F7F7F7F7F7F7
          F7F7F7F7F7F70068FEFE0000070049494902280200006804F7F701F7F7F7F7F7
          F7F7F7F7F7F7006804000707070700282828020068040000F7F70101F7F7F7F7
          F7F7F7F7F7F7000007070707FF07070028024968D8100200F701010101F7F7F7
          F7F7F7F7000007070707C0C0FFFF07070049F2F2F2000200010101010101F7F7
          F7F7000007070707FFFFC0C0FFFFFF070700FEFEF268040001010101010101F7
          000007070707FFFFC0C0C0C0C0C0FFFF070700FEF26804010101010101010000
          07070707FFFFFFC0C0C0C0C0C0C0C0FFFF070700F26804010101010100000707
          0707FFFFFFFFFFC0C0FFC0C0FFC0C0FFFFFF0707000001010101000007070707
          FFFFFFFFFFFFFFC0C0FFC0C0FFC0C0FFFFFFFF0707000101010101000707FFFF
          FFFFFFFFFFFFFFFFFFFFC0C0C0C0FFFFFFFFFFFF0707000101010101000707FF
          FFFFFFFFFFFFFFFFFFFFC0C0C0FFFFFFFFFFFFFFFF0707000101010101000707
          FFFFFFFFFFFFFFFFFFC0C0C0FFFFFFFFFFFFFFFFFFFF07070001010101010007
          07FFFFFFFFFFFFFFC0C0C0C0FFFFFFFFFFFFFFFF070700000101010101010100
          0707FFFFFFFFFFFFC0FFC0C0C0C0C0FFFFFF0707000001010101010101010101
          000707FFFFFFFFFFC0C0C0C0C0C0C0FF07070000010101010101010101010101
          01000707FFFFFFFFFFC0C0C0C0FF070700000101010101010101010101010101
          0101000707FFFFFFFFFFC0C00707000001010101010101010101010101010101
          010101000707FFFFFFFFC0C03737000101010101010101010101010101010101
          01010101000707FF070737373737370001010101010101010101010101010101
          0101010101000707373737373737000001010101010101010101010101010101
          0101010101010037373737370000010101010101010101010101010101010101
          0101010101010100373700000101010101010101010101010101010101010101
          0101010101010101000001010101010101010101010101010101}
      end
      object RzBitBtn4: TcxButton
        Left = 4
        Top = 93
        Width = 212
        Height = 42
        Action = ActBaixaParcial
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        TabStop = False
        Glyph.Data = {
          36080000424D3608000000000000360400002800000020000000200000000100
          0800000000000004000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00010101010101
          010101010101010101010101F701010101010101010101010101010101010101
          01010101010101010101F7F7F7F7010101010101010101010101010101010101
          0101010101010101F7F7F7F7000000000000F7F7F7F7F7010101010101010101
          010101010101F7F7F7F7000068D8B268D8B20000F7F7F7F70101010101010101
          01010101F7F7F7F7000068D8B268D8B268D810180000F7F7F701010101010101
          0101F7F7F7F7F7F70068D8B268D8B268040018181800F7F7F701010101010101
          F7F7F7F7F7F7F70068D8B2F2F268D81818021818181800F7F7F701010101F7F7
          F7F7F7F7F7F7F70068F2FEFEFEF2F20000020218021800F7F7F70101F7F7F7F7
          F7F7F7F7F7F7000068FEFEFE00FE10F2F200020202006804F7F7F7F7F7F7F7F7
          F7F7F7F7F7F70068FEFE0000070049494902280200006804F7F701F7F7F7F7F7
          F7F7F7F7F7F7006804000707070700282828020068040000F7F70101F7F7F7F7
          F7F7F7F7F7F7000007070707FF07070028024968D8100200F701010101F7F7F7
          F7F7F7F7000007070707C0C0FFFF07070049F2F2F2000200010101010101F7F7
          F7F7000007070707FFFFC0C0FFFFFF070700FEFEF268040001010101010101F7
          000007070707FFFFC0C0C0C0C0C0FFFF070700FEF26804010101010101010000
          07070707FFFFFFC0C0C0C0C0C0C0C0FFFF070700F26804010101010100000707
          0707FFFFFFFFFFC0C0FFC0C0FFC0C0FFFFFF0707000001010101000007070707
          FFFFFFFFFFFFFFC0C0FFC0C0FFC0C0FFFFFFFF0707000101010101000707FFFF
          FFFFFFFFFFFFFFFFFFFFC0C0C0C0FFFFFFFFFFFF0707000101010101000707FF
          FFFFFFFFFFFFFFFFFFFFC0C0C0FFFFFFFFFFFFFFFF0707000101010101000707
          FFFFFFFFFFFFFFFFFFC0C0C0FFFFFFFFFFFFFFFFFFFF07070001010101010007
          07FFFFFFFFFFFFFFC0C0C0C0FFFFFFFFFFFFFFFF070700000101010101010100
          0707FFFFFFFFFFFFC0FFC0C0C0C0C0FFFFFF0707000001010101010101010101
          000707FFFFFFFFFFC0C0C0C0C0C0C0FF07070000010101010101010101010101
          01000707FFFFFFFFFFC0C0C0C0FF070700000101010101010101010101010101
          0101000707FFFFFFFFFFC0C00707000001010101010101010101010101010101
          010101000707FFFFFFFFC0C03737000101010101010101010101010101010101
          01010101000707FF070737373737370001010101010101010101010101010101
          0101010101000707373737373737000001010101010101010101010101010101
          0101010101010037373737370000010101010101010101010101010101010101
          0101010101010100373700000101010101010101010101010101010101010101
          0101010101010101000001010101010101010101010101010101}
      end
      object BtnParcelamento: TcxButton
        Left = 4
        Top = 136
        Width = 212
        Height = 42
        Action = ActParcelamento
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        TabStop = False
        Glyph.Data = {
          36080000424D3608000000000000360400002800000020000000200000000100
          0800000000000004000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00010101010101
          010101010101010101010101F701010101010101010101010101010101010101
          01010101010101010101F7F7F7F7010101010101010101010101010101010101
          0101010101010101F7F7F7F7000000000000F7F7F7F7F7010101010101010101
          010101010101F7F7F7F7000068D8B268D8B20000F7F7F7F70101010101010101
          01010101F7F7F7F7000068D8B268D8B268D810180000F7F7F701010101010101
          0101F7F7F7F7F7F70068D8B268D8B268040018181800F7F7F701010101010101
          F7F7F7F7F7F7F70068D8B2F2F268D81818021818181800F7F7F701010101F7F7
          F7F7F7F7F7F7F70068F2FEFEFEF2F20000020218021800F7F7F70101F7F7F7F7
          F7F7F7F7F7F7000068FEFEFE00FE10F2F200020202006804F7F7F7F7F7F7F7F7
          F7F7F7F7F7F70068FEFE0000070049494902280200006804F7F701F7F7F7F7F7
          F7F7F7F7F7F7006804000707070700282828020068040000F7F70101F7F7F7F7
          F7F7F7F7F7F7000007070707FF07070028024968D8100200F701010101F7F7F7
          F7F7F7F7000007070707C0C0FFFF07070049F2F2F2000200010101010101F7F7
          F7F7000007070707FFFFC0C0FFFFFF070700FEFEF268040001010101010101F7
          000007070707FFFFC0C0C0C0C0C0FFFF070700FEF26804010101010101010000
          07070707FFFFFFC0C0C0C0C0C0C0C0FFFF070700F26804010101010100000707
          0707FFFFFFFFFFC0C0FFC0C0FFC0C0FFFFFF0707000001010101000007070707
          FFFFFFFFFFFFFFC0C0FFC0C0FFC0C0FFFFFFFF0707000101010101000707FFFF
          FFFFFFFFFFFFFFFFFFFFC0C0C0C0FFFFFFFFFFFF0707000101010101000707FF
          FFFFFFFFFFFFFFFFFFFFC0C0C0FFFFFFFFFFFFFFFF0707000101010101000707
          FFFFFFFFFFFFFFFFFFC0C0C0FFFFFFFFFFFFFFFFFFFF07070001010101010007
          07FFFFFFFFFFFFFFC0C0C0C0FFFFFFFFFFFFFFFF070700000101010101010100
          0707FFFFFFFFFFFFC0FFC0C0C0C0C0FFFFFF0707000001010101010101010101
          000707FFFFFFFFFFC0C0C0C0C0C0C0FF07070000010101010101010101010101
          01000707FFFFFFFFFFC0C0C0C0FF070700000101010101010101010101010101
          0101000707FFFFFFFFFFC0C00707000001010101010101010101010101010101
          010101000707FFFFFFFFC0C03737000101010101010101010101010101010101
          01010101000707FF070737373737370001010101010101010101010101010101
          0101010101000707373737373737000001010101010101010101010101010101
          0101010101010037373737370000010101010101010101010101010101010101
          0101010101010100373700000101010101010101010101010101010101010101
          0101010101010101000001010101010101010101010101010101}
      end
      object RzBitBtn1: TcxButton
        Left = 4
        Top = 7
        Width = 212
        Height = 42
        Action = ActBaixarSelecao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        TabStop = False
        Glyph.Data = {
          36080000424D3608000000000000360400002800000020000000200000000100
          0800000000000004000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00010101010101
          010101010101010101010101F701010101010101010101010101010101010101
          01010101010101010101F7F7F7F7010101010101010101010101010101010101
          0101010101010101F7F7F7F7000000000000F7F7F7F7F7010101010101010101
          010101010101F7F7F7F7000068D8B268D8B20000F7F7F7F70101010101010101
          01010101F7F7F7F7000068D8B268D8B268D810180000F7F7F701010101010101
          0101F7F7F7F7F7F70068D8B268D8B268040018181800F7F7F701010101010101
          F7F7F7F7F7F7F70068D8B2F2F268D81818021818181800F7F7F701010101F7F7
          F7F7F7F7F7F7F70068F2FEFEFEF2F20000020218021800F7F7F70101F7F7F7F7
          F7F7F7F7F7F7000068FEFEFE00FE10F2F200020202006804F7F7F7F7F7F7F7F7
          F7F7F7F7F7F70068FEFE0000070049494902280200006804F7F701F7F7F7F7F7
          F7F7F7F7F7F7006804000707070700282828020068040000F7F70101F7F7F7F7
          F7F7F7F7F7F7000007070707FF07070028024968D8100200F701010101F7F7F7
          F7F7F7F7000007070707C0C0FFFF07070049F2F2F2000200010101010101F7F7
          F7F7000007070707FFFFC0C0FFFFFF070700FEFEF268040001010101010101F7
          000007070707FFFFC0C0C0C0C0C0FFFF070700FEF26804010101010101010000
          07070707FFFFFFC0C0C0C0C0C0C0C0FFFF070700F26804010101010100000707
          0707FFFFFFFFFFC0C0FFC0C0FFC0C0FFFFFF0707000001010101000007070707
          FFFFFFFFFFFFFFC0C0FFC0C0FFC0C0FFFFFFFF0707000101010101000707FFFF
          FFFFFFFFFFFFFFFFFFFFC0C0C0C0FFFFFFFFFFFF0707000101010101000707FF
          FFFFFFFFFFFFFFFFFFFFC0C0C0FFFFFFFFFFFFFFFF0707000101010101000707
          FFFFFFFFFFFFFFFFFFC0C0C0FFFFFFFFFFFFFFFFFFFF07070001010101010007
          07FFFFFFFFFFFFFFC0C0C0C0FFFFFFFFFFFFFFFF070700000101010101010100
          0707FFFFFFFFFFFFC0FFC0C0C0C0C0FFFFFF0707000001010101010101010101
          000707FFFFFFFFFFC0C0C0C0C0C0C0FF07070000010101010101010101010101
          01000707FFFFFFFFFFC0C0C0C0FF070700000101010101010101010101010101
          0101000707FFFFFFFFFFC0C00707000001010101010101010101010101010101
          010101000707FFFFFFFFC0C03737000101010101010101010101010101010101
          01010101000707FF070737373737370001010101010101010101010101010101
          0101010101000707373737373737000001010101010101010101010101010101
          0101010101010037373737370000010101010101010101010101010101010101
          0101010101010100373700000101010101010101010101010101010101010101
          0101010101010101000001010101010101010101010101010101}
      end
      object cxSplitter1: TcxSplitter
        Left = 2
        Top = 2
        Width = 6
        Height = 682
        Control = Panel4
      end
    end
  end
  object BarDBNavigator: TdxBarDBNavigator
    BarManager = BarManager
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = DataSource
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast]
    Left = 269
    Top = 8
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
    Left = 205
    Top = 8
    DockControlHeights = (
      0
      0
      0
      0)
    object BarManagerBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Navega'#231#227'o'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 290
      FloatTop = 163
      FloatClientWidth = 23
      FloatClientHeight = 198
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
          ItemName = 'BtnSalvar'
        end
        item
          Visible = True
          ItemName = 'BtnCancelar'
        end
        item
          Visible = True
          ItemName = 'OpFiltrar'
        end
        item
          Visible = True
          ItemName = 'btnExporta'
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
      Action = ActIncluir
      Category = 0
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
      Action = ActExcluir
      Category = 0
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
    object BtnSalvar: TdxBarButton
      Action = ActPost
      Category = 0
      Enabled = False
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
      Action = ActCancel
      Category = 0
      Enabled = False
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
    object OpFiltrar: TdxBarButton
      Action = ActPeriodo
      Category = 0
      Glyph.Data = {
        76030000424D7603000000000000360000002800000011000000100000000100
        1800000000004003000000000000000000000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBF000000000000000000000000BFBFBFBFBFBFBFBFBFBFBFBF0000
        00000000000000000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF
        000000000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF000000000000BFBF
        BF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF000000000000000000BFBFBF
        000000000000000000FFFFFF000000000000BFBFBF00BFBFBFBFBFBFBFBFBFBF
        BFBF000000000000000000000000000000000000000000FFFFFF000000000000
        000000000000BFBFBF00BFBFBF7F00007F00007F0000000000000000FFFFFF00
        0000000000BFBFBF000000FFFFFF000000000000000000000000BFBFBF00BFBF
        BF7F0000FFFFFFFFFFFFFFFFFF000000000000000000000000BFBFBF00000000
        0000000000000000000000BFBFBFBFBFBF00BFBFBF7F0000FFFFFF7F7F7F7F7F
        7F000000FFFFFF000000000000000000000000FFFFFF000000000000000000BF
        BFBFBFBFBF00BFBFBF7F0000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        00000000000000000000000000000000BFBFBFBFBFBFBFBFBF00BFBFBF7F0000
        FFFFFF7F7F7F7F7F7FFFFFFF000000FFFFFF0000007F7F7F7F7F7F000000FFFF
        FF000000BFBFBFBFBFBFBFBFBF00BFBFBF7F0000FFFFFFFFFFFFFFFFFFFFFFFF
        000000000000000000FFFFFFFFFFFF000000000000000000BFBFBFBFBFBFBFBF
        BF00BFBFBF7F0000FFFFFF7F7F7F7F7F7FFFFFFF7F7F7F7F7F7FFFFFFF7F7F7F
        7F7F7FFFFFFF7F0000BFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF7F0000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0000BFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBF7F00007F00007F00007F00007F00007F00007F
        00007F00007F00007F00007F00007F0000BFBFBFBFBFBFBFBFBFBFBFBF00BFBF
        BF7F0000BFBFBF7F00007F0000BFBFBF7F00007F0000BFBFBF7F00007F0000BF
        BFBF7F0000BFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF7F00007F00007F00007F00
        007F00007F00007F00007F00007F00007F00007F00007F0000BFBFBFBFBFBFBF
        BFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00}
      PaintStyle = psCaptionGlyph
    end
    object btnConfig: TdxBarButton
      Action = ActConfigFin
      Category = 0
    end
    object btnExporta: TdxBarButton
      Action = ActExporta
      Category = 0
      Glyph.Data = {
        06030000424D060300000000000036000000280000000F0000000F0000000100
        180000000000D002000000000000000000000000000000000000FFFFFFFFFFFF
        FEFEFEF0F2EFDCE1DAF3F4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFEEF0EC5EC15C34D8394BD44FCBF0CCFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        8CB88675DE7717B41B0BCC112EE535FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFF889D7FC7EAC916B31A0BD5122CCC2EFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF52A64D49E64EC6F3C8000000FFFFFFFFFFFF
        C4CBBF9BAB939ADD9C69D46AABD1ABFFFFFFFFFFFFFFFFFFFFFFFFD3D8D0148B
        0E6ADF6E8BF58E000000FFFFFFFFFFFFFFFFFFC4CBBF84947C75997191B98EA8
        BAA3AEB7A8B1BAABABB5A464AF604CC34F28B92BBAF1BC000000FFFFFFFFFFFF
        FFFFFF83F18626E32C15DA1C18DB1F14E21B1CEA231EED2520E72722C82638B4
        3970C471FFFFFF000000FFFFFFFFFFFF54E7573ACA3F11B6150CB5112AAD2B6B
        9D66758A7172876E6F85676E8664BAC6B8E5EEE5FFFFFF000000FFFFFF48B546
        60CC630EBF130CC91211B716AACEABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000CBD9C85EB55C2DC9320BD7120BD31241C645FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF49CF4838F24091ED95FFFFFF00000088AA8178D27A
        0ED6160AE6130CC4118AF08EFFFFFFFFFFFFFFFFFFFFFFFF96B59069D2691CCC
        2287F78CFFFFFF000000589C5492EB950AE5130AE7130CC411A1EDA3FFFFFFFF
        FFFFFFFFFFFFFFFF899E809CE09B1DBE20B9EBB9FFFFFF0000002C862654EA5A
        0AED130AE2121DC320EEFBF0FFFFFFFFFFFFFFFFFFFFFFFFA6B4A0758D6BBDCF
        B9FFFFFFFFFFFF00000084A37C50EE5610E61731C734A2CDA1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000687D5C9DB299
        81A37BC9D2C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000}
      PaintStyle = psCaptionGlyph
    end
    object btnConfigura: TdxBarButton
      Action = ActConfigura
      Category = 0
      Glyph.Data = {
        96030000424D9603000000000000360000002800000010000000120000000100
        1800000000006003000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000A4A3E44C4B6100000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000A4A3E44C4B610000000000000000000000000000000000000000000000
        000000000000000000000000000000000000003D3BE03836F76463D115151800
        0000000000000000000000000000000000000000000000000000000000000000
        5453694443F83735F83C3AF76060B10000000000000000000000000000000000
        000000000000000000000000000000008684EB3836F83735F83735F84846D419
        191C000000000000000000000000000000000000000000000000000000333339
        3A38EF3735F85755F93E3CF73836F76261B90000000000000000000000000000
        000000000000000000000000007A79F53937F73735F862618E3F3EA43634F73B
        39D85352620000000000000000000000000000000000000000000000003634F7
        3735F85A58F81212203030504D4BF83735F77271DD2121250000000000000000
        000000000000000000000000007575B67271F94B4A590000000000005756893B
        39F73634F7494989000000000000000000000000000000000000000000000000
        0000000000000000000000001F1E246B69DD3634F76261F94141510000000000
        0000000000000000000000000000000000000000000000000000000000000032
        32406D6CF93634F77B79E62A2A2D000000000000000000000000000000000000
        0000000000000000000000000000000000004A4A5E4341D43D3BF77372D90000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000005858725856F84442F87979A3000000000000000000000000000000
        00000000000000000000000000000000000000000000000056566A706FF94341
        F89191AB00000000000000000000000000000000000000000000000000000000
        00000000000000000000004342514B49C8504EF05F5F7A000000000000000000
        0000000000000000000000000000000000000000000000000000000000000F0F
        187A78F94F4DF800000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
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
  object Actions: TActionList
    Left = 297
    Top = 8
    object ActIncluir: TAction
      Tag = 1
      Caption = 'ActIncluir'
      Hint = 'Incluir um novo registro [Ins]'
      ShortCut = 45
      OnExecute = ActIncluirExecute
    end
    object ActAlterar: TAction
      Tag = 1
      Caption = 'Alterar'
      ShortCut = 117
      OnExecute = ActAlterarExecute
    end
    object ActExcluir: TAction
      Tag = 1
      Caption = 'Excluir'
      Hint = 'Excluir o registro selecionado [Shift+Del]'
      ShortCut = 8238
      OnExecute = ActExcluirExecute
    end
    object ActLocalizar: TAction
      Caption = 'Localizar'
      Hint = 'Localizar registros [F3]'
      ShortCut = 114
      OnExecute = ActLocalizarExecute
    end
    object ActListagem: TAction
      Tag = 1
      Caption = 'Listagem'
      Hint = 'Emitir listagem de '
      ShortCut = 116
    end
    object ActPost: TAction
      Caption = 'Salvar'
      Hint = 'Salvar informa'#231#245'es'
      ShortCut = 121
      OnExecute = ActPostExecute
    end
    object ActCancel: TAction
      Caption = 'Cancelar'
      Hint = 'Cancelar informa'#231#245'es'
      ShortCut = 27
      OnExecute = ActCancelExecute
    end
    object ActFechar: TAction
      Caption = '&Fechar  '
      OnExecute = ActFecharExecute
    end
    object ActLookup: TAction
      Caption = 'ActLookup'
      ShortCut = 115
      OnExecute = ActLookupExecute
    end
    object ActPeriodo: TAction
      Caption = 'Filtrar ( F8 )'
      ShortCut = 119
      OnExecute = ActPeriodoExecute
    end
    object ActFiltrar: TAction
      Caption = 'Filtrar ( F6 )'
      ShortCut = 117
      OnExecute = ActFiltrarExecute
    end
    object ActLocalizarFornecedor: TAction
      Caption = 'Localizar Fornecedor'
      OnExecute = ActLocalizarFornecedorExecute
    end
    object ActBaixar: TAction
      Tag = 1
      Caption = 'Baixar Conta ( F9 ) '
      ShortCut = 120
      OnExecute = ActBaixarExecute
    end
    object ActBaixaParcial: TAction
      Tag = 1
      Caption = 'Baixa Parcial ( F11 )'
      ShortCut = 122
      OnExecute = ActBaixaParcialExecute
    end
    object ActParcelamento: TAction
      Tag = 1
      Caption = 'Lan'#231'ar Parcelamento      ( F12 )'
      ShortCut = 123
      OnExecute = ActParcelamentoExecute
    end
    object ActBaixarSelecao: TAction
      Caption = 'Pagar por Sele'#231#227'o ( F7 )'
      ShortCut = 118
      OnExecute = ActBaixarSelecaoExecute
    end
    object ActConfigFin: TAction
      Tag = 1
      Caption = 'Config. Financeira ( Ctrl+F )'
      ShortCut = 16454
      OnExecute = ActConfigFinExecute
    end
    object ActExporta: TAction
      Caption = 'Exportar para Excel (Ctrl+E)'
      ShortCut = 16453
      OnExecute = ActExportaExecute
    end
    object ActConfigura: TAction
      Caption = 'Configurar Campos (F2)'
      ShortCut = 113
    end
  end
  object DataSource: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.Contas_Pagar
    OnStateChange = DataSourceStateChange
    OnDataChange = DataSourceDataChange
    Left = 381
    Top = 8
  end
  object dsPessoas: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.SelFornecedor
    Left = 352
    Top = 8
  end
  object DsCentro: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.SelCentro
    Left = 410
    Top = 8
  end
  object DsTipoDocto: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Tipo_Documento
    Left = 440
    Top = 8
  end
  object stgManPagar: TcxPropertiesStore
    Components = <
      item
        Component = ActAlterar
        Properties.Strings = (
          'AutoCheck'
          'Caption'
          'Category'
          'Checked'
          'Enabled'
          'GroupIndex'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'ImageIndex'
          'Name'
          'SecondaryShortCuts'
          'ShortCut'
          'Tag'
          'Visible')
      end
      item
        Component = GridLV
        Properties.Strings = (
          'Caption'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'GridView'
          'ImageIndex'
          'MaxDetailHeight'
          'Name'
          'Options'
          'Styles'
          'Tag'
          'Visible')
      end
      item
        Component = GridTV
        Properties.Strings = (
          'BackgroundBitmaps'
          'Bands'
          'DataController'
          'DateTimeHandling'
          'DragMode'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FilterBox'
          'Filtering'
          'FilterRow'
          'Name'
          'NavigatorButtons'
          'NewItemRow'
          'OptionsBehavior'
          'OptionsCustomize'
          'OptionsData'
          'OptionsSelection'
          'OptionsView'
          'PopupMenu'
          'Preview'
          'Styles'
          'Synchronization'
          'Tag')
      end
      item
        Component = GridTV_Total_Geral_IDX
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVANO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVANO_ENT
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVAVISO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVBOLETO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVCC_DESCRICAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVCENTRO_CUSTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVCNPJ
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVCOD_CONFIG_TITULO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVCOD_INDEXADOR
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVCODIGO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVCODIGO_ENT
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVCODIGO_VN
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVCONFERIDA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVCONTABILIDADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVCTR_DESCRICAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVDESCONTOS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVDOCTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVDT_AVISO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVDT_EMISSAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVDT_LANCTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVDT_ULTIMA_BAIXA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVDT_VENCTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVDUPLICATA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVFLUXO_CAIXA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVHISTORICO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVIDX_COTACAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVIDX_DATABASE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVIDX_QTDE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVJUROS_PAG
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVNOME
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVNOME_RAZAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVNOME_TIPO_DOCTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVORIGEM
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVPARCELA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVPESSOA_FJ
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVPLANILHA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVSELECIONADO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVTIPO_DOCTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVTotal
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVTOTAL_ENTRADA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVVALOR
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVVALOR_EXTENSO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVVLR_PARCIAL
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end>
    StorageName = 'c:\Sistemas\HelpStore\FILTROS\stgManPagar.ini'
    Left = 259
    Top = 264
  end
  object cxGridPopupMenu: TcxGridPopupMenu
    Grid = cxGrid
    PopupMenus = <>
    Left = 370
    Top = 426
  end
  object qryContratos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select ct.codigo, ct.descricao from ctr_contrato ct'
      'where ct.ativo = '#39'S'#39)
    Left = 681
    Top = 112
    object qryContratosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CTR_CONTRATO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryContratosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"CTR_CONTRATO"."DESCRICAO"'
      Size = 50
    end
  end
  object dsContrato: TDataSource
    AutoEdit = False
    DataSet = qryContratos
    Left = 652
    Top = 112
  end
end
