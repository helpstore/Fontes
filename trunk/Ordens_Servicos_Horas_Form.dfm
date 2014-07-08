object FrmOrdens_Servicos_Horas: TFrmOrdens_Servicos_Horas
  Left = 332
  Top = 106
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Movimentos de OS'
  ClientHeight = 529
  ClientWidth = 528
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 528
    Height = 529
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
      Top = 495
      Width = 524
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object pnlBottom: TPanel
      Left = 2
      Top = 497
      Width = 524
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 2
        Width = 524
        Height = 26
        Align = dalTop
        BarManager = BarMgr
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 524
        Height = 2
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 49
      Width = 524
      Height = 446
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 1
      object Label12: TcxLabel
        Left = 8
        Top = 331
        Caption = 'Observa'#231#227'o'
        ParentFont = False
        Transparent = True
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 68
        Width = 510
        Height = 73
        Caption = 'Horas Trabalhadas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label2: TcxLabel
          Left = 8
          Top = 20
          Caption = 'Dt. Inicial'
          ParentFont = False
          Transparent = True
        end
        object Label3: TcxLabel
          Left = 120
          Top = 20
          Caption = 'Hr. Inicial'
          ParentFont = False
          Transparent = True
        end
        object Label5: TcxLabel
          Left = 333
          Top = 20
          Caption = 'Hr. Final'
          ParentFont = False
          Transparent = True
        end
        object Label6: TcxLabel
          Left = 220
          Top = 21
          Caption = 'Dt. Final'
          ParentFont = False
          Transparent = True
        end
        object Label8: TcxLabel
          Left = 424
          Top = 20
          Caption = 'Total'
          ParentFont = False
          Transparent = True
        end
        object dtInicial: TcxDBDateEdit
          Left = 8
          Top = 35
          DataBinding.DataField = 'DT_INICIO'
          DataBinding.DataSource = DataSource
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = ebsSingle
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          TabOrder = 0
          OnEnter = dtInicialEnter
          OnExit = dtInicialExit
          OnKeyDown = dtInicialKeyDown
          Width = 105
        end
        object hrInicial: TcxDBTimeEdit
          Left = 120
          Top = 35
          DataBinding.DataField = 'HR_INICIO'
          DataBinding.DataSource = DataSource
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = ebsSingle
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.ButtonStyle = btsSimple
          Style.IsFontAssigned = True
          TabOrder = 1
          OnEnter = dtInicialEnter
          OnExit = dtInicialExit
          OnKeyDown = dtInicialKeyDown
          Width = 89
        end
        object dtFinal: TcxDBDateEdit
          Left = 219
          Top = 35
          DataBinding.DataField = 'DT_FIM'
          DataBinding.DataSource = DataSource
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = ebsSingle
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          TabOrder = 2
          OnEnter = dtInicialEnter
          OnExit = dtInicialExit
          OnKeyDown = dtInicialKeyDown
          Width = 105
        end
        object hrFinal: TcxDBTimeEdit
          Left = 331
          Top = 35
          DataBinding.DataField = 'HR_FIM'
          DataBinding.DataSource = DataSource
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = ebsSingle
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.ButtonStyle = btsSimple
          Style.IsFontAssigned = True
          TabOrder = 3
          OnEnter = dtInicialEnter
          OnExit = dtInicialExit
          OnKeyDown = dtInicialKeyDown
          Width = 89
        end
        object hrTotal: TcxDBTextEdit
          Left = 424
          Top = 35
          DataBinding.DataField = 'QTDE_HORA'
          DataBinding.DataSource = DataSource
          Enabled = False
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = ebsSingle
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          OnEnter = dtInicialEnter
          OnExit = dtInicialExit
          OnKeyDown = dtInicialKeyDown
          Width = 78
        end
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 253
        Width = 509
        Height = 73
        Caption = 'Deslocamentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        object Label4: TcxLabel
          Left = 8
          Top = 20
          Caption = 'Tmp. Viagem'
          ParentFont = False
          Transparent = True
        end
        object Label7: TcxLabel
          Left = 101
          Top = 20
          Caption = 'Km. Inicial'
          ParentFont = False
          Transparent = True
        end
        object Label9: TcxLabel
          Left = 169
          Top = 20
          Caption = 'Km. Final'
          ParentFont = False
          Transparent = True
        end
        object Label10: TcxLabel
          Left = 238
          Top = 20
          Caption = 'Total'
          ParentFont = False
          Transparent = True
        end
        object Label19: TcxLabel
          Left = 320
          Top = 20
          Caption = 'Veiculo'
          ParentFont = False
          Transparent = True
        end
        object cxDBCalcEdit1: TcxDBCalcEdit
          Left = 8
          Top = 35
          DataBinding.DataField = 'TEMPO_VIAJEM'
          DataBinding.DataSource = DataSource
          ParentFont = False
          Properties.ButtonGlyph.Data = {
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
          Properties.ClearKey = 8
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = ebsSingle
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          OnEnter = dtInicialEnter
          OnExit = dtInicialExit
          OnKeyDown = dtInicialKeyDown
          Width = 89
        end
        object cxDBSpinEdit1: TcxDBSpinEdit
          Left = 100
          Top = 35
          DataBinding.DataField = 'KM_INICIAL'
          DataBinding.DataSource = DataSource
          ParentFont = False
          Properties.MaxValue = 10000000.000000000000000000
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = ebsSingle
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.IsFontAssigned = True
          StyleDisabled.BorderColor = clBtnShadow
          StyleDisabled.BorderStyle = ebsSingle
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.ButtonStyle = btsSimple
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          TabOrder = 1
          OnEnter = dtInicialEnter
          OnExit = dtInicialExit
          OnKeyDown = dtInicialKeyDown
          Width = 67
        end
        object cxDBSpinEdit3: TcxDBSpinEdit
          Left = 169
          Top = 35
          DataBinding.DataField = 'KM_FINAL'
          DataBinding.DataSource = DataSource
          ParentFont = False
          Properties.MaxValue = 10000000.000000000000000000
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = ebsSingle
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.IsFontAssigned = True
          StyleDisabled.BorderColor = clBtnShadow
          StyleDisabled.BorderStyle = ebsSingle
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.ButtonStyle = btsSimple
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          TabOrder = 2
          OnEnter = dtInicialEnter
          OnExit = dtInicialExit
          OnKeyDown = dtInicialKeyDown
          Width = 67
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 238
          Top = 35
          DataBinding.DataField = 'KM_RODADO'
          DataBinding.DataSource = DataSource
          Enabled = False
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = ebsSingle
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          OnEnter = dtInicialEnter
          OnExit = dtInicialExit
          OnKeyDown = dtInicialKeyDown
          Width = 78
        end
        object dxDBLookupEdit1: TdxDBLookupEdit
          Left = 319
          Top = 35
          Width = 185
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
          Style.HotTrack = False
          Style.Shadow = False
          TabOrder = 4
          OnEnter = dtInicialEnter
          OnExit = dtInicialExit
          OnKeyDown = dtInicialKeyDown
          DataField = 'COD_VEICULO'
          DataSource = DataSource
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'DESCRICAO'
          Revertable = True
          KeyFieldName = 'PLACA'
          ListSource = dsVeiculo
          LookupKeyValue = Null
          StoredValues = 64
        end
      end
      object cxDBMemo1: TcxDBMemo
        Left = 8
        Top = 346
        DataBinding.DataField = 'OBSERVACAO'
        DataBinding.DataSource = DataSource
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = ebsSingle
        TabOrder = 4
        OnEnter = dtInicialEnter
        OnExit = dtInicialExit
        Height = 89
        Width = 508
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 143
        Width = 509
        Height = 106
        Caption = 'Tarefas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label15: TcxLabel
          Left = 8
          Top = 20
          Caption = 'Dt. Vencto'
          ParentFont = False
          Transparent = True
        end
        object Label16: TcxLabel
          Left = 119
          Top = 20
          Caption = 'Dt. Conclus'#227'o'
          ParentFont = False
          Transparent = True
        end
        object Label17: TcxLabel
          Left = 9
          Top = 61
          Caption = 'Contato'
          ParentFont = False
          Transparent = True
        end
        object Label18: TcxLabel
          Left = 229
          Top = 20
          Caption = 'Status'
          ParentFont = False
          Transparent = True
        end
        object Label20: TcxLabel
          Left = 229
          Top = 61
          Caption = 'Tipo Movimento'
          ParentFont = False
          Transparent = True
        end
        object btnStatus: TcxButton
          Left = 480
          Top = 33
          Width = 23
          Height = 24
          Cursor = crHandPoint
          TabOrder = 10
          OnClick = btnStatusClick
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
        object btnTipoMovto: TcxButton
          Left = 480
          Top = 73
          Width = 23
          Height = 24
          Cursor = crHandPoint
          TabOrder = 11
          OnClick = btnTipoMovtoClick
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
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 8
          Top = 35
          DataBinding.DataField = 'DT_VENCTO'
          DataBinding.DataSource = DataSource
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = ebsSingle
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          TabOrder = 0
          OnEnter = dtInicialEnter
          OnExit = dtInicialExit
          OnKeyDown = dtInicialKeyDown
          Width = 105
        end
        object cxDBDateEdit3: TcxDBDateEdit
          Left = 119
          Top = 35
          DataBinding.DataField = 'DT_CONCLUSAO'
          DataBinding.DataSource = DataSource
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = ebsSingle
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          TabOrder = 1
          OnEnter = dtInicialEnter
          OnExit = dtInicialExit
          OnKeyDown = dtInicialKeyDown
          Width = 105
        end
        object cmbContato: TdxDBLookupEdit
          Left = 9
          Top = 74
          Width = 216
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
          Style.HotTrack = False
          Style.Shadow = False
          TabOrder = 3
          OnEnter = dtInicialEnter
          OnExit = dtInicialExit
          OnKeyDown = dtInicialKeyDown
          DataField = 'COD_CONTATO'
          DataSource = DataSource
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'CONTATO_NOME;IDCLIENTE_RELACIONADO'
          Revertable = True
          KeyFieldName = 'IDCLIENTE_RELACIONADO'
          ListSource = DataSource1
          LookupKeyValue = Null
          StoredValues = 64
        end
        object cmbStatus: TdxDBLookupEdit
          Left = 227
          Top = 34
          Width = 254
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
          Style.HotTrack = False
          Style.Shadow = False
          TabOrder = 2
          OnEnter = dtInicialEnter
          OnExit = dtInicialExit
          OnKeyDown = dtInicialKeyDown
          DataField = 'COD_STATUS'
          DataSource = DataSource
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'NOME'
          Revertable = True
          KeyFieldName = 'CODIGO'
          ListSource = dsStatus
          LookupKeyValue = Null
          StoredValues = 64
        end
        object edtTipoMovimento: TdxDBLookupEdit
          Left = 228
          Top = 74
          Width = 253
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
          Style.HotTrack = False
          Style.Shadow = False
          TabOrder = 4
          OnEnter = dtInicialEnter
          OnExit = dtInicialExit
          OnKeyDown = dtInicialKeyDown
          DataField = 'COD_TIPO_MOVTO'
          DataSource = DataSource
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'NOME'
          Revertable = True
          KeyFieldName = 'CODIGO'
          ListSource = dsTipoMovimento
          LookupKeyValue = Null
          StoredValues = 64
        end
      end
      object GroupBox4: TGroupBox
        Left = 8
        Top = 0
        Width = 510
        Height = 67
        Caption = 'Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label1: TcxLabel
          Left = 8
          Top = 17
          Caption = 'C'#243'digo'
          ParentFont = False
          Transparent = True
        end
        object Label11: TcxLabel
          Left = 66
          Top = 17
          Caption = 'Usu'#225'rio'
          ParentFont = False
          Transparent = True
        end
        object Label13: TcxLabel
          Left = 332
          Top = 17
          Caption = 'T'#233'cnico/Consultor'
          ParentFont = False
          Transparent = True
        end
        object Label14: TcxLabel
          Left = 213
          Top = 17
          Caption = 'Dt. Lan'#231'amento'
          ParentFont = False
          Transparent = True
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 8
          Top = 32
          DataBinding.DataField = 'SEQUENCIA'
          DataBinding.DataSource = DataSource
          Enabled = False
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = ebsSingle
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          OnEnter = dtInicialEnter
          OnExit = dtInicialExit
          OnKeyDown = dtInicialKeyDown
          Width = 57
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 66
          Top = 32
          DataBinding.DataField = 'NOME_USUARIO'
          DataBinding.DataSource = DataSource
          Enabled = False
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = ebsSingle
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          OnEnter = dtInicialEnter
          OnExit = dtInicialExit
          OnKeyDown = dtInicialKeyDown
          Width = 145
        end
        object cmbTecnico: TdxDBLookupEdit
          Left = 331
          Top = 32
          Width = 173
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
          Style.HotTrack = False
          Style.Shadow = False
          TabOrder = 0
          OnEnter = dtInicialEnter
          OnExit = dtInicialExit
          OnKeyDown = dtInicialKeyDown
          DataField = 'COD_TECNICO'
          DataSource = DataSource
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'NOME'
          Revertable = True
          KeyFieldName = 'CODIGO'
          ListSource = dsTecnico
          LookupKeyValue = Null
          StoredValues = 64
        end
        object cxDBDateEdit4: TcxDBDateEdit
          Left = 212
          Top = 33
          DataBinding.DataField = 'DT_LANCTO'
          DataBinding.DataSource = DataSource
          Enabled = False
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = ebsSingle
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          TabOrder = 3
          OnEnter = dtInicialEnter
          OnExit = dtInicialExit
          OnKeyDown = dtInicialKeyDown
          Width = 117
        end
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 524
      Height = 47
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
      object b2: TBevel
        Left = 8
        Top = 41
        Width = 219
        Height = 2
        Shape = bsTopLine
      end
      object Image1: TImage
        Left = 8
        Top = 5
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
        Transparent = True
      end
      object LblTitulo: TcxLabel
        Left = 48
        Top = 9
        Caption = 'Movimentos de OS'
        ParentFont = False
        Transparent = True
      end
    end
  end
  object Navigator: TdxBarDBNavigator
    BarManager = BarMgr
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = DataSource
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast]
    Left = 285
    Top = 7
  end
  object BarMgr: TdxBarManager
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
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = True
    Left = 429
    Top = 8
    DockControlHeights = (
      0
      0
      0
      0)
    object BarMgrBar1: TdxBar
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
          ItemName = 'btnEditar'
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
    object btnEditar: TdxBarButton
      Action = ActAlterar
      Category = 0
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000008080008080
        0080800080800080800080800000000000000000000000000000000000000000
        00000000000000000000008080008080008080008080008080008080000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        008080000000000000000000000000000000FFFFFFFFFFFF000000FFFFFF0000
        00000000FFFFFF000000FFFF0000000000000000FFFFFFFFFF00FFFFFFFFFF00
        FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00000000
        00FFFFFFFFFF00FFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FF000000FFFFFF000000FFFF00000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00
        FFFFFFFFFF000000FFFFFF000000000000FFFFFFFFFFFF000000FFFF00000000
        00FFFFFFFFFF00FFFFFFFFFF00000000000000000000000000000000FFFF0000
        00FFFFFFFFFFFF000000FFFF00000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00
        FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFF00000000
        00FFFFFFFFFF000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000FFFFFFFFFF00FFFF00000000
        000000FFFF000000FFFFFFFFFFFF000000000000FFFFFF000000008080008080
        00808000000000000000000000000000FFFF000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF00000000808000808000808000808000808000000000FFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000008080008080
        00808000808000000000FFFF000000FFFFFFFFFFFF000000000000FFFFFF0000
        00FFFFFFFFFFFF00000000808000808000808000000000FFFF000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000008080008080008080
        0000000000FF000000008080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        0000000000808000808000808000808000808000000000808000808000000000
        0000000000000000000000000000000000008080008080008080}
      PaintStyle = psCaptionGlyph
    end
  end
  object Actions: TActionList
    Left = 361
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
      ShortCut = 117
      OnExecute = ActAlterarExecute
    end
    object ActExcluir: TAction
      Tag = 1
      Caption = 'ActExcluir'
      Hint = 'Excluir o registro selecionado [Shift+Del]'
      ShortCut = 8238
      OnExecute = ActExcluirExecute
    end
    object ActLocalizar: TAction
      Caption = 'ActLocalizar'
      Hint = 'Localizar registros [F3]'
      ShortCut = 114
    end
    object ActListagem: TAction
      Tag = 1
      Caption = 'ActListagem'
      Hint = 'Emitir listagem de '
      ShortCut = 116
    end
    object ActPost: TAction
      Caption = 'ActPost'
      Hint = 'Salvar informa'#231#245'es'
      ShortCut = 121
      OnExecute = ActPostExecute
    end
    object ActCancel: TAction
      Caption = 'ActCancel'
      Hint = 'Cancelar informa'#231#245'es'
      ShortCut = 27
      OnExecute = ActCancelExecute
    end
    object ActFechar: TAction
      Caption = '&Fechar  '
      OnExecute = ActFecharExecute
    end
    object actLookup: TAction
      Caption = 'actLookup'
      ShortCut = 115
      OnExecute = actLookupExecute
    end
  end
  object DataSource: TDataSource
    AutoEdit = False
    DataSet = DmServicos.OS_INTERVALO
    OnStateChange = DataSourceStateChange
    Left = 293
    Top = 123
  end
  object dsTecnico: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelTecnico2
    Left = 317
    Top = 15
  end
  object dsContato: TDataSource
    DataSet = dmCadastros2.SelClientes3
    Left = 149
    Top = 263
  end
  object dsStatus: TDataSource
    DataSet = DmServicos.SelStatus3
    Left = 298
    Top = 199
  end
  object dsVeiculo: TDataSource
    DataSet = dmCadastros2.SelVeiculos
    Left = 397
    Top = 335
  end
  object dsTipoMovimento: TDataSource
    DataSet = dmCadastros2.SelTipoMovimento
    Left = 365
    Top = 263
  end
  object DataSource1: TDataSource
    DataSet = DMCadastros.Contato
    Left = 200
    Top = 23
  end
end
