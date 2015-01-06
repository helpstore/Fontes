object FrmOrdens_Servicos: TFrmOrdens_Servicos
  Left = 227
  Top = 84
  Width = 1011
  Height = 665
  Caption = ']'
  Color = 15396334
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 37
    Width = 995
    Height = 590
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
    object Bevel1: TBevel
      Left = 2
      Top = 556
      Width = 991
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object pnlBottom: TPanel
      Left = 2
      Top = 558
      Width = 991
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 2
        Width = 991
        Height = 26
        Align = dalTop
        BarManager = BarMgr
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 991
        Height = 2
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
    object PC: TcxPageControl
      Left = 2
      Top = 2
      Width = 991
      Height = 554
      ActivePage = Tab1
      Align = alClient
      TabOrder = 1
      TabStop = False
      OnChange = PCChange
      ClientRectBottom = 550
      ClientRectLeft = 4
      ClientRectRight = 987
      ClientRectTop = 27
      object Tab1: TcxTabSheet
        Caption = 'Servi'#231'os'
        ImageIndex = 4
        object lcControl: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 983
          Height = 523
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = False
          LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
          ShowDesignSelectors = False
          OptionsItem.SizableHorz = True
          OptionsItem.SizableVert = True
          OptionsStoring.IniFileName = 'c:\Sistemas\HelpStore\Filtros\lc_FrmOrdens_Servicos_1.ini'
          OptionsStoring.StoreToIniFile = True
          OnDblClick = lcControlDblClick
          object edCODIGO2: TcxDBTextEdit
            Left = 10
            Top = 27
            TabStop = False
            DataBinding.DataField = 'CODIGO'
            DataBinding.DataSource = DataSource
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            OnKeyDown = edCODIGOKeyDown
            Width = 58
          end
          object EdCliente2: TcxDBLookupComboBox
            Left = 216
            Top = 27
            DataBinding.DataField = 'PESSOA_FJ'
            DataBinding.DataSource = DataSource
            ParentFont = False
            Properties.KeyFieldNames = 'CODIGO'
            Properties.ListColumns = <
              item
                FieldName = 'NOME_RAZAO'
              end>
            Properties.ListSource = dsClientes
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 2
            OnEnter = EdPessoaEnter
            OnExit = EdClienteExit
            OnKeyDown = edCODIGOKeyDown
            Width = 425
          end
          object btnCliente3: TcxButton
            Left = 571
            Top = 27
            Width = 23
            Height = 23
            TabOrder = 3
            TabStop = False
            OnClick = btnCliente2Click
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
            LookAndFeel.SkinName = 'Blue'
          end
          object edStatus: TcxDBLookupComboBox
            Left = 595
            Top = 27
            OnFocusChanged = EdPessoaExit
            DataBinding.DataField = 'COD_STATUS'
            DataBinding.DataSource = DataSource
            ParentFont = False
            Properties.KeyFieldNames = 'CODIGO'
            Properties.ListColumns = <
              item
                FieldName = 'NOME'
              end>
            Properties.ListSource = dsStatus
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 4
            OnEnter = EdPessoaEnter
            OnKeyDown = edCODIGOKeyDown
            Width = 145
          end
          object btnStatus2: TcxButton
            Left = 762
            Top = 27
            Width = 44
            Height = 25
            TabOrder = 5
            TabStop = False
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
          object cmbEquipamento: TcxDBLookupComboBox
            Left = 10
            Top = 70
            OnFocusChanged = EdPessoaExit
            DataBinding.DataField = 'PRODUTO'
            DataBinding.DataSource = DataSource
            ParentFont = False
            Properties.DropDownSizeable = True
            Properties.DropDownWidth = 800
            Properties.GridMode = True
            Properties.KeyFieldNames = 'CODIGO'
            Properties.ListColumns = <
              item
                FieldName = 'NOME'
              end
              item
                FieldName = 'MODELO'
              end
              item
                FieldName = 'SERIE'
              end
              item
                FieldName = 'TIPO_CONTRATO'
              end
              item
                FieldName = 'ATIVO'
              end
              item
                FieldName = 'COD_ITEM'
              end>
            Properties.ListOptions.SyncMode = True
            Properties.ListSource = dsEquipamentos
            Properties.MaxLength = 800
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 6
            OnEnter = EdPessoaEnter
            OnKeyDown = edCODIGOKeyDown
            Width = 145
          end
          object cmbVeiculo: TcxDBLookupComboBox
            Left = 10000
            Top = 10000
            DataBinding.DataField = 'VEICULO'
            DataBinding.DataSource = DataSource
            ParentFont = False
            Properties.KeyFieldNames = 'CODIGO'
            Properties.ListColumns = <
              item
                FieldName = 'MODELO'
              end>
            Properties.ListSource = dsVeiculos
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 36
            Visible = False
            Width = 145
          end
          object cmbTecnico: TcxDBLookupComboBox
            Left = 518
            Top = 70
            OnFocusChanged = EdPessoaExit
            DataBinding.DataField = 'MECANICO'
            DataBinding.DataSource = DataSource
            ParentFont = False
            Properties.KeyFieldNames = 'CODIGO'
            Properties.ListColumns = <
              item
                FieldName = 'NOME'
              end>
            Properties.ListSource = dsTecnico
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 8
            OnEnter = EdPessoaEnter
            OnKeyDown = edCODIGOKeyDown
            Width = 145
          end
          object cmbDefeitoReclamado: TcxDBLookupComboBox
            Left = 194
            Top = 113
            OnFocusChanged = EdPessoaExit
            DataBinding.DataField = 'DEFEITO_RECLAMADO'
            DataBinding.DataSource = DataSource
            ParentFont = False
            Properties.KeyFieldNames = 'CODIGO'
            Properties.ListColumns = <
              item
                FieldName = 'NOME'
              end>
            Properties.ListSource = DsDefeito
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 11
            OnEnter = EdPessoaEnter
            OnKeyDown = edCODIGOKeyDown
            Width = 145
          end
          object cmbServicoExecutado: TcxDBLookupComboBox
            Left = 517
            Top = 113
            OnFocusChanged = EdPessoaExit
            DataBinding.DataField = 'ID_TIPO_ATENDIMENTO'
            DataBinding.DataSource = DataSource
            ParentFont = False
            Properties.KeyFieldNames = 'CODIGO'
            Properties.ListColumns = <
              item
                FieldName = 'NOME'
              end>
            Properties.ListSource = dsTA
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 13
            OnEnter = EdPessoaEnter
            OnKeyDown = edCODIGOKeyDown
            Width = 241
          end
          object edSolicitante: TcxDBTextEdit
            Left = 10
            Top = 113
            OnFocusChanged = EdPessoaExit
            DataBinding.DataField = 'CLIENTE'
            DataBinding.DataSource = DataSource
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 10
            OnEnter = EdPessoaEnter
            OnKeyDown = edCODIGOKeyDown
            Width = 121
          end
          object cmbGravidade: TcxDBLookupComboBox
            Left = 642
            Top = 156
            OnFocusChanged = EdPessoaExit
            DataBinding.DataField = 'COD_GRAVIDADE'
            DataBinding.DataSource = DataSource
            ParentFont = False
            Properties.KeyFieldNames = 'CODIGO'
            Properties.ListColumns = <
              item
                FieldName = 'TITULO'
              end>
            Properties.ListSource = dsGravidade
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 21
            OnEnter = EdPessoaEnter
            OnKeyDown = edCODIGOKeyDown
            Width = 145
          end
          object cmbContato: TcxDBLookupComboBox
            Left = 10
            Top = 199
            OnFocusChanged = EdPessoaExit
            DataBinding.DataField = 'COD_CONTATO'
            DataBinding.DataSource = DataSource
            ParentFont = False
            Properties.KeyFieldNames = 'IDCLIENTE_RELACIONADO'
            Properties.ListColumns = <
              item
                FieldName = 'CONTATO_NOME'
              end
              item
                FieldName = 'IDCLIENTE_RELACIONADO'
              end>
            Properties.ListSource = dsContato
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 23
            OnEnter = EdPessoaEnter
            OnKeyDown = edCODIGOKeyDown
            Width = 233
          end
          object cmbProblemaIdentificado: TcxDBLookupComboBox
            Left = 10
            Top = 156
            OnFocusChanged = EdPessoaExit
            DataBinding.DataField = 'ID_MOTIVO_CHAMADO'
            DataBinding.DataSource = DataSource
            ParentFont = False
            Properties.KeyFieldNames = 'CODIGO'
            Properties.ListColumns = <
              item
                FieldName = 'NOME'
              end>
            Properties.ListSource = dsMotivo
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 15
            OnEnter = EdPessoaEnter
            OnKeyDown = edCODIGOKeyDown
            Width = 233
          end
          object edDataSolicitacao: TcxDBDateEdit
            Left = 268
            Top = 156
            OnFocusChanged = EdPessoaExit
            DataBinding.DataField = 'ENTRADA'
            DataBinding.DataSource = DataSource
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 17
            OnEnter = EdPessoaEnter
            OnKeyDown = edCODIGOKeyDown
            Width = 121
          end
          object edDataAtribuicao: TcxDBDateEdit
            Left = 455
            Top = 156
            OnFocusChanged = EdPessoaExit
            DataBinding.DataField = 'DT_ATRIBUICAO'
            DataBinding.DataSource = DataSource
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 19
            OnEnter = EdPessoaEnter
            OnKeyDown = edCODIGOKeyDown
            Width = 121
          end
          object edtHoraSolicitacao: TcxDBTimeEdit
            Left = 369
            Top = 156
            OnFocusChanged = EdPessoaExit
            DataBinding.DataField = 'HR_ENTRADA'
            DataBinding.DataSource = DataSource
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 18
            OnEnter = EdPessoaEnter
            OnKeyDown = edCODIGOKeyDown
            Width = 85
          end
          object edtHoraAtribuicao: TcxDBTimeEdit
            Left = 556
            Top = 156
            OnFocusChanged = EdPessoaExit
            DataBinding.DataField = 'HR_ATRIBUICAO'
            DataBinding.DataSource = DataSource
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 20
            OnEnter = EdPessoaEnter
            OnKeyDown = edCODIGOKeyDown
            Width = 121
          end
          object edPrioridade: TcxDBTextEdit
            Left = 405
            Top = 199
            OnFocusChanged = EdPessoaExit
            DataBinding.DataField = 'PRIORIDADE'
            DataBinding.DataSource = DataSource
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 25
            OnEnter = EdPessoaEnter
            OnKeyDown = edCODIGOKeyDown
            Width = 121
          end
          object edControle: TcxDBTextEdit
            Left = 500
            Top = 199
            OnFocusChanged = EdPessoaExit
            DataBinding.DataField = 'CONTROLE'
            DataBinding.DataSource = DataSource
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 26
            OnEnter = EdPessoaEnter
            OnKeyDown = edCODIGOKeyDown
            Width = 121
          end
          object edKM: TcxDBTextEdit
            Left = 595
            Top = 199
            OnFocusChanged = EdPessoaExit
            DataBinding.DataField = 'KM'
            DataBinding.DataSource = DataSource
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 27
            OnEnter = EdPessoaEnter
            OnKeyDown = edCODIGOKeyDown
            Width = 121
          end
          object edProtocolo: TcxDBTextEdit
            Left = 690
            Top = 199
            OnFocusChanged = EdPessoaExit
            DataBinding.DataField = 'PROTOCOLO'
            DataBinding.DataSource = DataSource
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 28
            OnEnter = EdPessoaEnter
            OnKeyDown = edCODIGOKeyDown
            Width = 121
          end
          object edDescricao: TcxDBMemo
            Left = 10
            Top = 284
            OnFocusChanged = EdPessoaExit
            DataBinding.DataField = 'INFORMACOES'
            DataBinding.DataSource = DataSource
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 30
            OnEnter = EdPessoaEnter
            OnKeyDown = edCODIGOKeyDown
            Height = 89
            Width = 185
          end
          object edAssunto: TcxDBTextEdit
            Left = 10
            Top = 242
            OnFocusChanged = EdPessoaExit
            DataBinding.DataField = 'ASSUNTO'
            DataBinding.DataSource = DataSource
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 29
            OnEnter = EdPessoaEnter
            OnKeyDown = edCODIGOKeyDown
            Width = 121
          end
          object btnTecnico2: TcxButton
            Left = 761
            Top = 70
            Width = 75
            Height = 25
            TabOrder = 9
            TabStop = False
            OnClick = btnTecnicoClick
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
          object BTNDEFEITO2: TcxButton
            Left = 493
            Top = 113
            Width = 75
            Height = 25
            TabOrder = 12
            TabStop = False
            OnClick = BTNDEFEITOClick
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
          object btnTA2: TcxButton
            Left = 761
            Top = 113
            Width = 75
            Height = 25
            TabOrder = 14
            TabStop = False
            OnClick = btnTA2Click
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
          object btnMotivo2: TcxButton
            Left = 244
            Top = 156
            Width = 75
            Height = 25
            TabOrder = 16
            TabStop = False
            OnClick = btnMotivoClick
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
          object btnGravidade2: TcxButton
            Left = 760
            Top = 156
            Width = 75
            Height = 25
            TabOrder = 22
            TabStop = False
            OnClick = btnTAClick
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
          object btnContato2: TcxButton
            Left = 381
            Top = 199
            Width = 75
            Height = 25
            TabOrder = 24
            TabStop = False
            OnClick = btnContatoClick
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
          object cxDBMemo1: TcxDBMemo
            Left = 786
            Top = 27
            DataBinding.DataField = 'INFORMACOES_ITENS'
            DataBinding.DataSource = dsEquipamentos
            Properties.ReadOnly = True
            Style.HotTrack = False
            TabOrder = 31
            Height = 89
            Width = 185
          end
          object GridItens: TcxGrid
            Left = 10
            Top = 368
            Width = 250
            Height = 200
            TabOrder = 32
            object TVItens: TcxGridDBBandedTableView
              OnKeyDown = TVItensKeyDown
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.Next.Visible = True
              FilterBox.CustomizeDialog = False
              OnEditKeyDown = TVItensEditKeyDown
              DataController.DataModeController.DetailInSQLMode = True
              DataController.DataModeController.GridMode = True
              DataController.DataSource = DsItens
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.GroupByBox = False
              OptionsView.BandHeaders = False
              Bands = <
                item
                end>
              object TVItensCOD_PRODUTO: TcxGridDBBandedColumn
                DataBinding.FieldName = 'COD_PRODUTO'
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object TVItensCNPJ: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CNPJ'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object TVItensCODIGO: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CODIGO'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object TVItensNOME: TcxGridDBBandedColumn
                DataBinding.FieldName = 'NOME'
                Width = 236
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object TVItensQUANTIDADE: TcxGridDBBandedColumn
                DataBinding.FieldName = 'QUANTIDADE'
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object TVItensSERVICO: TcxGridDBBandedColumn
                DataBinding.FieldName = 'SERVICO'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object TVItensUNITARIO: TcxGridDBBandedColumn
                DataBinding.FieldName = 'UNITARIO'
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object TVItensSELECIONADO: TcxGridDBBandedColumn
                DataBinding.FieldName = 'SELECIONADO'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object TVItensNOME_PRODUTO: TcxGridDBBandedColumn
                DataBinding.FieldName = 'NOME_PRODUTO'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object TVItensTIPO_SERVICO: TcxGridDBBandedColumn
                DataBinding.FieldName = 'TIPO_SERVICO'
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object TVItensTotal: TcxGridDBBandedColumn
                DataBinding.FieldName = 'Total'
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object TVItensNOMETEC: TcxGridDBBandedColumn
                DataBinding.FieldName = 'NOMETEC'
                Visible = False
                Width = 190
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object TVItensCODIGO_TECNICO: TcxGridDBBandedColumn
                DataBinding.FieldName = 'CODIGO_TECNICO'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
            end
            object LVItens: TcxGridLevel
              GridView = TVItens
            end
          end
          object edLiquido: TcxDBCalcEdit
            Left = 262
            Top = 580
            DataBinding.DataField = 'Liquido'
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
            Style.Color = 91902
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 35
            OnEnter = EdPessoaEnter
            OnExit = EdClienteExit
            OnKeyDown = edCODIGOKeyDown
            Width = 121
          end
          object edDesctoAcrescimo: TcxDBCalcEdit
            Left = 18
            Top = 580
            DataBinding.DataField = 'DESC_ACRESC'
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
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 33
            OnEnter = EdPessoaEnter
            OnExit = EdClienteExit
            OnKeyDown = edCODIGOKeyDown
            Width = 121
          end
          object edTotal: TcxDBCalcEdit
            Left = 140
            Top = 580
            DataBinding.DataField = 'TOTAL'
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
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 34
            OnEnter = EdPessoaEnter
            OnExit = EdClienteExit
            OnKeyDown = edCODIGOKeyDown
            Width = 121
          end
          object btnEquipamento2: TcxButton
            Left = 494
            Top = 70
            Width = 75
            Height = 25
            TabOrder = 7
            TabStop = False
            OnClick = btnEquipamentoClick
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
          object edtSerie: TcxDBTextEdit
            Left = 69
            Top = 27
            DataBinding.DataField = 'SERIE'
            DataBinding.DataSource = DataSource
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 1
            OnEnter = EdPessoaEnter
            OnExit = EdPessoaExit
            OnKeyDown = edCODIGOKeyDown
            Width = 121
          end
          object lcControlGroup_Root: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            object lcControlGroup8: TdxLayoutGroup
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object lcControlGroup6: TdxLayoutGroup
                CaptionOptions.Text = 'Hidden Group'
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                object lcControlGroup1: TdxLayoutGroup
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcCodigo: TdxLayoutItem
                    CaptionOptions.Text = 'C'#243'digo'
                    CaptionOptions.Layout = clTop
                    SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
                    SizeOptions.SizableHorz = True
                    SizeOptions.SizableVert = True
                    SizeOptions.Width = 58
                    Control = edCODIGO2
                    ControlOptions.ShowBorder = False
                  end
                  object lcSerie: TdxLayoutItem
                    CaptionOptions.Text = 'S'#233'rie'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 146
                    Control = edtSerie
                    ControlOptions.ShowBorder = False
                  end
                  object lcControlGroup3: TdxLayoutGroup
                    ButtonOptions.Buttons = <>
                    Hidden = True
                    LayoutDirection = ldHorizontal
                    ShowBorder = False
                    object lcCliente: TdxLayoutItem
                      CaptionOptions.Text = 'Cliente'
                      CaptionOptions.Layout = clTop
                      SizeOptions.Width = 354
                      Control = EdCliente2
                      ControlOptions.ShowBorder = False
                    end
                    object lcBtnCliente: TdxLayoutItem
                      CaptionOptions.Text = '.'
                      CaptionOptions.Layout = clTop
                      SizeOptions.Width = 23
                      Control = btnCliente3
                      ControlOptions.ShowBorder = False
                    end
                  end
                  object lcStatus: TdxLayoutItem
                    CaptionOptions.Text = 'Status'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 166
                    Control = edStatus
                    ControlOptions.ShowBorder = False
                  end
                  object lcBtnStatus: TdxLayoutItem
                    CaptionOptions.Text = '.'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 23
                    Control = btnStatus2
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcControlGroup2: TdxLayoutGroup
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcEquipamento: TdxLayoutItem
                    CaptionOptions.Text = 'Equipamento'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 483
                    Control = cmbEquipamento
                    ControlOptions.ShowBorder = False
                  end
                  object lcBtnEquipamento: TdxLayoutItem
                    CaptionOptions.Text = '.'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 23
                    Control = btnEquipamento2
                    ControlOptions.ShowBorder = False
                  end
                  object lcTecnico: TdxLayoutItem
                    CaptionOptions.Text = 'T'#233'cnico/Consultor'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 242
                    Control = cmbTecnico
                    ControlOptions.ShowBorder = False
                  end
                  object lcBtnTecnicoConsultor: TdxLayoutItem
                    CaptionOptions.Text = '.'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 23
                    Control = btnTecnico2
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcControlGroup4: TdxLayoutGroup
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcSolicitante: TdxLayoutItem
                    CaptionOptions.Text = 'Solicitante'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 183
                    Control = edSolicitante
                    ControlOptions.ShowBorder = False
                  end
                  object lcDefeito: TdxLayoutItem
                    CaptionOptions.Text = 'Defeito Reclamado'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 298
                    Control = cmbDefeitoReclamado
                    ControlOptions.ShowBorder = False
                  end
                  object lcBtnDefeitoReclamado: TdxLayoutItem
                    CaptionOptions.Text = '.'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 23
                    Control = BTNDEFEITO2
                    ControlOptions.ShowBorder = False
                  end
                  object lcServicoExecutado: TdxLayoutItem
                    CaptionOptions.Text = 'Servi'#231'o Executado'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 243
                    Control = cmbServicoExecutado
                    ControlOptions.ShowBorder = False
                  end
                  object lcBtnServicoExecutado: TdxLayoutItem
                    CaptionOptions.Text = '.'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 23
                    Control = btnTA2
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcControlGroup5: TdxLayoutGroup
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcProblemaIdentificado: TdxLayoutItem
                    CaptionOptions.Text = 'Motivo do Chamado'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 233
                    Control = cmbProblemaIdentificado
                    ControlOptions.ShowBorder = False
                  end
                  object lcBtnProblemaIdentificado: TdxLayoutItem
                    CaptionOptions.Text = '.'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 23
                    Control = btnMotivo2
                    ControlOptions.ShowBorder = False
                  end
                  object lcDataSolicitacao: TdxLayoutItem
                    CaptionOptions.Text = 'Data Solicita'#231#227'o'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 100
                    Control = edDataSolicitacao
                    ControlOptions.ShowBorder = False
                  end
                  object lcHoraSolicitacao: TdxLayoutItem
                    CaptionOptions.Text = 'Hor'#225'rio'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 85
                    Control = edtHoraSolicitacao
                    ControlOptions.ShowBorder = False
                  end
                  object lcDataAtribuicao: TdxLayoutItem
                    CaptionOptions.Text = 'Data Programa'#231#227'o'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 100
                    Control = edDataAtribuicao
                    ControlOptions.ShowBorder = False
                  end
                  object lcHorarioProgramacao: TdxLayoutItem
                    CaptionOptions.Text = 'Hor'#225'rio'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 85
                    Control = edtHoraAtribuicao
                    ControlOptions.ShowBorder = False
                  end
                  object lcGravidade: TdxLayoutItem
                    CaptionOptions.Text = 'Gravidade'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 117
                    Control = cmbGravidade
                    ControlOptions.ShowBorder = False
                  end
                  object lcBtnGravidade: TdxLayoutItem
                    CaptionOptions.Text = '.'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 23
                    Control = btnGravidade2
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcControlGroup7: TdxLayoutGroup
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  LayoutDirection = ldHorizontal
                  ShowBorder = False
                  object lcContato: TdxLayoutItem
                    CaptionOptions.Text = 'Contato'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 370
                    Control = cmbContato
                    ControlOptions.ShowBorder = False
                  end
                  object lcBtnContato: TdxLayoutItem
                    CaptionOptions.Text = '.'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 23
                    Control = btnContato2
                    ControlOptions.ShowBorder = False
                  end
                  object lcPrioridade: TdxLayoutItem
                    CaptionOptions.Text = 'Prioridade'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 94
                    Control = edPrioridade
                    ControlOptions.ShowBorder = False
                  end
                  object lcControle: TdxLayoutItem
                    CaptionOptions.Text = 'Controle'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 94
                    Control = edControle
                    ControlOptions.ShowBorder = False
                  end
                  object lcKM: TdxLayoutItem
                    CaptionOptions.Text = 'KM'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 94
                    Control = edKM
                    ControlOptions.ShowBorder = False
                  end
                  object lcProtocolo: TdxLayoutItem
                    CaptionOptions.Text = 'Protocolo'
                    CaptionOptions.Layout = clTop
                    SizeOptions.Width = 94
                    Control = edProtocolo
                    ControlOptions.ShowBorder = False
                  end
                end
                object lcAssunto: TdxLayoutItem
                  CaptionOptions.Text = 'Assunto'
                  CaptionOptions.Layout = clTop
                  Control = edAssunto
                  ControlOptions.ShowBorder = False
                end
                object lcDescricao: TdxLayoutItem
                  CaptionOptions.Text = 'Descri'#231#227'o'
                  CaptionOptions.Layout = clTop
                  SizeOptions.Height = 83
                  Control = edDescricao
                  ControlOptions.ShowBorder = False
                end
              end
              object lcControlItem1: TdxLayoutItem
                CaptionOptions.Text = 'Informa'#231#245'es'
                CaptionOptions.Layout = clTop
                SizeOptions.Height = 339
                SizeOptions.Width = 190
                Control = cxDBMemo1
                ControlOptions.ShowBorder = False
              end
            end
            object lcControlItem2: TdxLayoutItem
              CaptionOptions.Text = ' '
              CaptionOptions.Layout = clTop
              SizeOptions.Height = 173
              Control = GridItens
              ControlOptions.ShowBorder = False
            end
            object lcControlItem3: TdxLayoutItem
              CaptionOptions.Text = ' '
              SizeOptions.Height = 26
            end
            object lcControlGroup10: TdxLayoutGroup
              ButtonOptions.Buttons = <>
              LayoutDirection = ldHorizontal
              object lcDesctoAcrescimo: TdxLayoutItem
                CaptionOptions.Text = 'Desc/Acr'#233'scimo'
                CaptionOptions.Layout = clTop
                Control = edDesctoAcrescimo
                ControlOptions.ShowBorder = False
              end
              object lcTotal: TdxLayoutItem
                CaptionOptions.Text = 'Total'
                CaptionOptions.Layout = clTop
                Control = edTotal
                ControlOptions.ShowBorder = False
              end
              object lcLiquido: TdxLayoutItem
                CaptionOptions.Text = 'L'#237'quido'
                CaptionOptions.Layout = clTop
                Control = edLiquido
                ControlOptions.ShowBorder = False
              end
            end
          end
          object lcVeiculo: TdxLayoutItem
            CaptionOptions.Text = 'Veiculo'
            CaptionOptions.Layout = clTop
            Control = cmbVeiculo
            ControlOptions.ShowBorder = False
          end
        end
      end
      object TabMov: TcxTabSheet
        Caption = 'Movimentos'
        object GroupBox7: TGroupBox
          Left = 0
          Top = 0
          Width = 983
          Height = 523
          Align = alClient
          Caption = 'Atividades '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object GRID: TdxDBGrid
            Left = 2
            Top = 15
            Width = 979
            Height = 222
            Bands = <
              item
                Caption = 'Inicial'
                Width = 100
              end
              item
                Caption = 'Final'
                Width = 90
              end
              item
                Caption = 'Descri'#231#227'o'
                Width = 441
              end
              item
                Caption = 'KMs Percorridos'
                Width = 139
              end>
            DefaultLayout = False
            HeaderPanelRowCount = 1
            KeyField = 'SEQUENCIA'
            ShowSummaryFooter = True
            SummaryGroups = <
              item
                DefaultGroup = True
                SummaryItems = <>
                Name = 'sgIntervalo'
              end>
            SummarySeparator = ', '
            Align = alClient
            TabOrder = 0
            OnKeyDown = GRIDKeyDown
            AutoExpandOnSearch = False
            BandColor = clGray
            DataSource = DsIntervalos
            Filter.FilterStatus = fsNone
            Filter.Criteria = {00000000}
            GroupNodeColor = 15977833
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
            OptionsCustomize = [edgoBandSizing, edgoColumnSizing]
            OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
            OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
            ShowBands = True
            ShowRowFooter = True
            OnCustomDrawCell = GRIDCustomDrawCell
            object GRIDCNPJ: TdxDBGridMaskColumn
              Visible = False
              Width = 120
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CNPJ'
            end
            object GRIDSEQUENCIA: TdxDBGridMaskColumn
              Width = 87
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SEQUENCIA'
            end
            object GRIDCODIGO: TdxDBGridMaskColumn
              Visible = False
              Width = 87
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CODIGO'
            end
            object GRIDDT_FIM: TdxDBGridDateColumn
              Width = 49
              BandIndex = 1
              RowIndex = 0
              FieldName = 'DT_FIM'
            end
            object GRIDDT_INICIO: TdxDBGridDateColumn
              Width = 51
              BandIndex = 0
              RowIndex = 0
              FieldName = 'DT_INICIO'
            end
            object GRIDHR_INICIO: TdxDBGridTimeColumn
              Width = 49
              BandIndex = 0
              RowIndex = 0
              FieldName = 'HR_INICIO'
              TimeEditFormat = tfHourMin
            end
            object GRIDQTDE_HORA: TdxDBGridColumn
              Sorted = csUp
              Width = 65
              BandIndex = 2
              RowIndex = 0
              FieldName = 'QTDE_HORA'
              SummaryFooterType = cstSum
              SummaryFooterField = 'QTDE_HORA'
              SummaryField = 'QTDE_HORA'
            end
            object GRIDTEMPO_VIAJEM: TdxDBGridMaskColumn
              Width = 54
              BandIndex = 3
              RowIndex = 0
              FieldName = 'TEMPO_VIAJEM'
              SummaryFooterType = cstSum
              SummaryFooterField = 'TEMPO_VIAJEM'
              SummaryField = 'TEMPO_VIAJEM'
            end
            object GRIDKM_INICIAL: TdxDBGridMaskColumn
              Width = 30
              BandIndex = 3
              RowIndex = 0
              FieldName = 'KM_INICIAL'
            end
            object GRIDHR_FIM: TdxDBGridTimeColumn
              Width = 41
              BandIndex = 1
              RowIndex = 0
              FieldName = 'HR_FIM'
              TimeEditFormat = tfHourMin
            end
            object GRIDKM_FINAL: TdxDBGridMaskColumn
              Width = 31
              BandIndex = 3
              RowIndex = 0
              FieldName = 'KM_FINAL'
            end
            object GRIDKM_RODADO: TdxDBGridColumn
              Color = clInactiveCaption
              Width = 24
              BandIndex = 3
              RowIndex = 0
              FieldName = 'KM_RODADO'
              SummaryFooterType = cstSum
              SummaryFooterField = 'KM_RODADO'
              SummaryField = 'KM_RODADO'
            end
            object GRIDOBSERVACAO: TdxDBGridMemoColumn
              Color = clWhite
              Width = 55
              BandIndex = 2
              RowIndex = 0
              HeaderMaxLineCount = 1
              FieldName = 'OBSERVACAO'
            end
            object GRIDNOME_USUARIO: TdxDBGridMaskColumn
              Width = 82
              BandIndex = 2
              RowIndex = 0
              FieldName = 'NOME_USUARIO'
            end
            object GRIDCUSTO_HORA: TdxDBGridCurrencyColumn
              Width = 66
              BandIndex = 2
              RowIndex = 0
              FieldName = 'CUSTO_HORA'
              Nullable = False
            end
            object GRIDNOME_TECNICO: TdxDBGridMaskColumn
              Width = 141
              BandIndex = 2
              RowIndex = 0
              FieldName = 'NOME_TECNICO'
            end
            object GRIDCUSTO_ATIVIDADE: TdxDBGridCurrencyColumn
              Width = 32
              BandIndex = 2
              RowIndex = 0
              FieldName = 'CUSTO_ATIVIDADE'
              SummaryFooterType = cstSum
              SummaryFooterFormat = 'R$ ,0.00;-R$ ,0.00'
              Nullable = False
              SummaryFormat = 'R$ ,0.00;-R$ ,0.00'
            end
          end
          object GridEmail: TcxGrid
            Left = 2
            Top = 360
            Width = 979
            Height = 161
            Align = alBottom
            PopupMenu = FrmMain.Pop
            TabOrder = 1
            object GridEmailDBTableView2: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              DataController.DataSource = dsIntervaloEmail
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.GroupByBox = False
              Styles.Content = cxStyle1
              Styles.ContentEven = cxStyle1
              Styles.ContentOdd = cxStyle1
              Styles.FilterBox = cxStyle1
              Styles.Inactive = cxStyle1
              Styles.IncSearch = cxStyle1
              Styles.Selection = cxStyle1
              Styles.Footer = cxStyle1
              Styles.Group = cxStyle1
              Styles.GroupByBox = cxStyle1
              Styles.Header = cxStyle1
              Styles.Indicator = cxStyle1
              Styles.NewItemRowInfoText = cxStyle1
              Styles.Preview = cxStyle1
              object GridEmailDBTableView2CODIGO: TcxGridDBColumn
                DataBinding.FieldName = 'CODIGO'
              end
              object GridEmailDBTableView2DATA: TcxGridDBColumn
                DataBinding.FieldName = 'DATA'
                Width = 41
              end
              object GridEmailDBTableView2ASSUNTO: TcxGridDBColumn
                DataBinding.FieldName = 'ASSUNTO'
                Width = 217
              end
              object GridEmailDBTableView2DE: TcxGridDBColumn
                DataBinding.FieldName = 'DE'
                Width = 257
              end
              object GridEmailDBTableView2PARA: TcxGridDBColumn
                DataBinding.FieldName = 'PARA'
                Width = 249
              end
              object GridEmailDBTableView2ENVIADO: TcxGridDBColumn
                DataBinding.FieldName = 'ENVIADO'
                PropertiesClassName = 'TcxImageComboBoxProperties'
                Properties.Images = imgImportance
                Properties.Items = <
                  item
                    Description = 'Falhou'
                    ImageIndex = 1
                    Value = '0'
                  end
                  item
                    Description = 'Enviado'
                    ImageIndex = 3
                    Value = '1'
                  end>
                HeaderGlyph.Data = {
                  3A010000424D3A010000000000003600000028000000060000000D0000000100
                  1800000000000401000000000000000000000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
                  0000FFFFFFFFFFFF000000000000000000FFFFFF0000FFFFFFFFFFFFFFFFFF00
                  0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
                  FFFFFFFFFFFFFF000000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF000000FFFF
                  FFFFFFFF0000FFFFFFFFFFFF000000000000000000FFFFFF0000FFFFFFFFFFFF
                  000000000000000000FFFFFF0000FFFFFFFFFFFF000000000000000000FFFFFF
                  0000FFFFFFFFFFFF000000000000000000FFFFFF0000FFFFFFFFFFFFFFFFFF00
                  0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                Width = 24
                IsCaptionAssigned = True
              end
              object GridEmailDBTableView2CNPJ: TcxGridDBColumn
                DataBinding.FieldName = 'CNPJ'
                Visible = False
              end
              object GridEmailDBTableView2COD_INTERVALO: TcxGridDBColumn
                DataBinding.FieldName = 'COD_INTERVALO'
                Visible = False
              end
              object GridEmailDBTableView2SEQUENCIA: TcxGridDBColumn
                DataBinding.FieldName = 'SEQUENCIA'
                Visible = False
              end
            end
            object GridEmailLevel1: TcxGridLevel
              GridView = GridEmailDBTableView2
              Styles.Tab = cxStyle1
              Styles.TabsBackground = cxStyle1
            end
          end
          object GridAnexo: TcxGrid
            Left = 2
            Top = 237
            Width = 979
            Height = 123
            Align = alBottom
            PopupMenu = PopAnexo
            TabOrder = 2
            object GridAnexoDBTableView1: TcxGridDBTableView
              NavigatorButtons.ConfirmDelete = False
              NavigatorButtons.First.Visible = True
              NavigatorButtons.PriorPage.Visible = True
              NavigatorButtons.Prior.Visible = True
              NavigatorButtons.Next.Visible = True
              NavigatorButtons.NextPage.Visible = True
              NavigatorButtons.Last.Visible = True
              NavigatorButtons.Insert.Visible = True
              NavigatorButtons.Delete.Visible = True
              NavigatorButtons.Edit.Visible = True
              NavigatorButtons.Post.Visible = True
              NavigatorButtons.Cancel.Visible = True
              NavigatorButtons.Refresh.Visible = True
              NavigatorButtons.SaveBookmark.Visible = False
              NavigatorButtons.GotoBookmark.Visible = True
              NavigatorButtons.Filter.Visible = True
              DataController.DataSource = dsAnexo
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsCustomize.ColumnFiltering = False
              OptionsCustomize.ColumnGrouping = False
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.GroupByBox = False
              object GridAnexoDBTableView1CNPJ: TcxGridDBColumn
                DataBinding.FieldName = 'CNPJ'
                Visible = False
              end
              object GridAnexoDBTableView1CODIGO: TcxGridDBColumn
                DataBinding.FieldName = 'CODIGO'
                Visible = False
              end
              object GridAnexoDBTableView1FILENAME: TcxGridDBColumn
                DataBinding.FieldName = 'FILENAME'
                Width = 180
              end
              object GridAnexoDBTableView1ANEXO: TcxGridDBColumn
                DataBinding.FieldName = 'ANEXO'
                PropertiesClassName = 'TcxButtonEditProperties'
                Properties.Buttons = <
                  item
                    Default = True
                    Kind = bkEllipsis
                  end>
                Width = 88
              end
              object GridAnexoDBTableView1SEQUENCIA: TcxGridDBColumn
                DataBinding.FieldName = 'SEQUENCIA'
                Visible = False
              end
              object GridAnexoDBTableView1TAMANHO: TcxGridDBColumn
                DataBinding.FieldName = 'TAMANHO'
                Width = 90
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = GridAnexoDBTableView1
              Styles.Tab = cxStyle1
              Styles.TabsBackground = cxStyle1
            end
          end
        end
      end
      object TAB2: TcxTabSheet
        Caption = 'Fechamento'
        OnEnter = TAB2Enter
        OnExit = TAB2Exit
        object GroupBox3: TGroupBox
          Left = 6
          Top = 5
          Width = 587
          Height = 144
          Caption = ' Resumo Fechamento '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object Label10: TcxLabel
            Left = 8
            Top = 19
            Caption = 'Data Fechamento'
            ParentFont = False
            Transparent = True
          end
          object Label3: TcxLabel
            Left = 111
            Top = 19
            Caption = 'Hor'#225'rio'
            ParentFont = False
            Transparent = True
          end
          object Data_Fechamento: TdxDBDateEdit
            Left = 5
            Top = 32
            Width = 100
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
            OnEnter = EdPessoaEnter
            OnExit = Revelador_ContadorExit
            OnKeyDown = edCODIGOKeyDown
            DataField = 'DATA_FECHAMENTO'
            DataSource = DataSource
            DateButtons = [btnToday]
            DateValidation = True
            UseEditMask = True
            StoredValues = 4
          end
          object Horario_Fechamento: TdxDBTimeEdit
            Left = 111
            Top = 32
            Width = 85
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 1
            OnEnter = EdPessoaEnter
            OnExit = Revelador_ContadorExit
            OnKeyDown = edCODIGOKeyDown
            DataField = 'HR_FECHAMENTO'
            DataSource = DataSource
            StoredValues = 4
          end
          object edObservacoes: TdxDBMemo
            Left = 5
            Top = 63
            Width = 574
            Style.BorderColor = clGray
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsFlat
            Style.HotTrack = False
            TabOrder = 2
            DataField = 'OBS_FECHAMENTO'
            DataSource = DataSource
            Height = 71
          end
        end
        object Gp2: TGroupBox
          Left = 140
          Top = 149
          Width = 173
          Height = 156
          Caption = ' Cilindro / Revelador '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object Label22: TcxLabel
            Left = 7
            Top = 16
            Caption = 'Cilindro'
            ParentFont = False
            Transparent = True
          end
          object Label24: TcxLabel
            Left = 8
            Top = 32
            Caption = 'Data Troca'
            ParentFont = False
            Transparent = True
          end
          object Label23: TcxLabel
            Left = 7
            Top = 79
            Caption = 'Revelador'
            ParentFont = False
            Transparent = True
          end
          object Label31: TcxLabel
            Left = 8
            Top = 96
            Caption = 'Data Troca'
            ParentFont = False
            Transparent = True
          end
          object Cilindro_Data_Troca: TdxDBDateEdit
            Left = 8
            Top = 48
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
            TabOrder = 0
            OnEnter = EdPessoaEnter
            OnExit = Revelador_ContadorExit
            OnKeyDown = edCODIGOKeyDown
            DataField = 'DT_CILINDRO'
            DataSource = DataSource
            DateValidation = True
            UseEditMask = True
            StoredValues = 4
          end
          object Revelador_Data_Troca: TdxDBDateEdit
            Left = 8
            Top = 112
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
            TabOrder = 1
            OnEnter = EdPessoaEnter
            OnExit = Revelador_ContadorExit
            OnKeyDown = edCODIGOKeyDown
            DataField = 'DT_REVELADOR'
            DataSource = DataSource
            DateValidation = True
            UseEditMask = True
            StoredValues = 4
          end
        end
        object Gp1: TGroupBox
          Left = 6
          Top = 149
          Width = 131
          Height = 156
          Caption = ' Contadores '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label39: TcxLabel
            Left = 64
            Top = 30
            Caption = 'Ct. Total'
            ParentFont = False
            Transparent = True
          end
          object Label41: TcxLabel
            Left = 64
            Top = 98
            Caption = 'Preto'
            ParentFont = False
            Transparent = True
          end
          object Label40: TcxLabel
            Left = 6
            Top = 30
            Caption = 'Cor'
            ParentFont = False
            Transparent = True
          end
          object Label42: TcxLabel
            Left = 6
            Top = 98
            Caption = 'Impress'#227'o'
            ParentFont = False
            Transparent = True
          end
          object Ct_Total: TdxDBEdit
            Left = 64
            Top = 44
            Width = 55
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
            OnEnter = EdPessoaEnter
            OnExit = Revelador_ContadorExit
            OnKeyDown = edCODIGOKeyDown
            CharCase = ecUpperCase
            DataField = 'CONTADOR_TOTAL'
            DataSource = DataSource
          end
          object Preto: TdxDBEdit
            Left = 64
            Top = 112
            Width = 55
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
            OnEnter = EdPessoaEnter
            OnExit = Revelador_ContadorExit
            OnKeyDown = edCODIGOKeyDown
            CharCase = ecUpperCase
            DataField = 'CONTADOR_PRETO'
            DataSource = DataSource
          end
          object Cor: TdxDBEdit
            Left = 6
            Top = 44
            Width = 55
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
            OnEnter = EdPessoaEnter
            OnExit = Revelador_ContadorExit
            OnKeyDown = edCODIGOKeyDown
            CharCase = ecUpperCase
            DataField = 'CONTADOR_COR'
            DataSource = DataSource
          end
          object Impressao: TdxDBEdit
            Left = 6
            Top = 112
            Width = 55
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
            OnEnter = EdPessoaEnter
            OnExit = Revelador_ContadorExit
            OnKeyDown = edCODIGOKeyDown
            CharCase = ecUpperCase
            DataField = 'CONTADOR_IMPRESSAO'
            DataSource = DataSource
          end
        end
        object gpAvulso: TGroupBox
          Left = 314
          Top = 148
          Width = 280
          Height = 157
          Caption = ' Movimentos Avulsos na OS '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object Label21: TcxLabel
            Left = 85
            Top = 115
            Caption = 'D'#233'bitos'
            ParentFont = False
            Transparent = True
          end
          object Label20: TcxLabel
            Left = 5
            Top = 115
            Caption = 'Cr'#233'ditos'
            ParentFont = False
            Transparent = True
          end
          object Debitos: TdxDBEdit
            Left = 85
            Top = 129
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
            TabOrder = 1
            TabStop = False
            OnEnter = EdPessoaEnter
            OnKeyDown = edCODIGOKeyDown
            DataField = 'DEBITOS'
            DataSource = DataSource
          end
          object Creditos: TdxDBEdit
            Left = 5
            Top = 129
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
            TabOrder = 2
            TabStop = False
            OnEnter = EdPessoaEnter
            OnKeyDown = edCODIGOKeyDown
            DataField = 'CREDITOS'
            DataSource = DataSource
          end
          object DBGrid1: TDBGrid
            Left = 7
            Top = 21
            Width = 266
            Height = 93
            BorderStyle = bsNone
            Color = clScrollBar
            DataSource = DsMovtos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Options = [dgEditing, dgTitles, dgIndicator, dgRowLines, dgTabs, dgCancelOnExit]
            ParentFont = False
            TabOrder = 3
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = 8404992
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'DATA'
                Width = 109
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIPO'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Width = 82
                Visible = True
              end>
          end
          object BtnMovimentos: TcxButton
            Left = 165
            Top = 128
            Width = 108
            Height = 23
            Hint = 'Salvar informa'#231#245'es'
            Caption = 'Lan'#231'amentos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BtnMovimentosClick
            Glyph.Data = {
              2A010000424D2A010000000000007600000028000000180000000F0000000100
              040000000000B4000000130B0000130B00001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888000008
              8888888800888888880FFF008888888000888888880FFF000888880008888888
              880FFF0008888000888888888800000008880008888888800080888008800088
              8888880F0008000008000888888880FFF0008880F0F0888888880FFFFF00080F
              0F088888888080FFF08080FFF0F008808888880F0808800FFF00888888888880
              00888080F0000808808888888888880800088888888888888888888000888888
              8888888888888888088888888888}
          end
        end
      end
      object tbsMapa: TcxTabSheet
        Caption = 'Localiza'#231#227'o Geogr'#225'fica'
        ImageIndex = 3
        object Panel4: TPanel
          Left = 0
          Top = 420
          Width = 983
          Height = 103
          Align = alBottom
          Color = clBtnShadow
          TabOrder = 0
          object btnLimpar: TcxButton
            Left = 4
            Top = 66
            Width = 130
            Height = 30
            Action = ActLimpaCoordenada
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            LookAndFeel.NativeStyle = True
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 144
            Top = 73
            DataBinding.DataField = 'MAP_LAT'
            DataBinding.DataSource = DataSource
            Enabled = False
            TabOrder = 6
            OnKeyDown = edCODIGOKeyDown
            Width = 143
          end
          object cxLabel3: TcxLabel
            Left = 144
            Top = 57
            Caption = 'Latitude'
            Transparent = True
          end
          object cxLabel4: TcxLabel
            Left = 288
            Top = 57
            Caption = 'Longitude'
            Transparent = True
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 288
            Top = 73
            DataBinding.DataField = 'MAP_LONG'
            DataBinding.DataSource = DataSource
            Enabled = False
            TabOrder = 9
            OnKeyDown = edCODIGOKeyDown
            Width = 143
          end
          object btnLocEndereco: TcxButton
            Left = 700
            Top = 18
            Width = 113
            Height = 30
            Caption = 'Localizar Endere'#231'o'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnClick = btnLocEnderecoClick
            LookAndFeel.NativeStyle = True
          end
          object edtLogradouro: TcxTextEdit
            Left = 8
            Top = 24
            TabOrder = 0
            Width = 329
          end
          object cxLabel2: TcxLabel
            Left = 8
            Top = 8
            Caption = 'Logradouro'
            ParentFont = False
            Transparent = True
          end
          object edtNumero: TcxTextEdit
            Left = 342
            Top = 24
            TabOrder = 1
            Width = 67
          end
          object cxLabel5: TcxLabel
            Left = 342
            Top = 8
            Caption = 'N'#250'mero'
            ParentFont = False
            Transparent = True
          end
          object edtCidade: TcxTextEdit
            Left = 414
            Top = 24
            TabOrder = 2
            Width = 211
          end
          object cxLabel6: TcxLabel
            Left = 414
            Top = 8
            Caption = 'Cidade'
            ParentFont = False
            Transparent = True
          end
          object edtUF: TcxTextEdit
            Left = 630
            Top = 24
            TabOrder = 3
            Width = 67
          end
          object cxLabel7: TcxLabel
            Left = 630
            Top = 8
            Caption = 'UF'
            ParentFont = False
            Transparent = True
          end
        end
        object WebBrowser1: TWebBrowser
          Left = 0
          Top = 0
          Width = 983
          Height = 379
          Align = alClient
          TabOrder = 1
          OnCommandStateChange = WebBrowser1CommandStateChange
          ControlData = {
            4C000000996500002C2700000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126208000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
        object pnlConexao: TPanel
          Left = 0
          Top = 379
          Width = 983
          Height = 41
          Align = alBottom
          Caption = 'Sem Conex'#227'o com  Internet'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 995
    Height = 37
    Align = alTop
    BiDiMode = bdRightToLeft
    Color = clWhite
    ParentBiDiMode = False
    TabOrder = 5
    object LblTitulo: TcxLabel
      Left = 1
      Top = 1
      Align = alTop
      Caption = 'Ordens de Servi'#231'os '
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
  end
  object Navigator: TdxBarDBNavigator
    BarManager = BarMgr
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = DataSource
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast]
    Left = 41
    Top = 10
  end
  object BarMgr: TdxBarManager
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
    ImageOptions.Images = imgImportance
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = True
    Left = 75
    Top = 2
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
          ItemName = 'btnAlterar'
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
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'OpImprimirOsBranco'
        end
        item
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'btnHistorico'
        end
        item
          BeginGroup = True
          UserDefine = [udPaintStyle]
          UserPaintStyle = psCaptionGlyph
          Visible = True
          ItemName = 'btnGerarVenda'
        end
        item
          Visible = True
          ItemName = 'btnEmail'
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
    object btnAlterar: TdxBarButton
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
    end
    object OpImprimirOsBranco: TdxBarButton
      Action = ActOS
      Category = 0
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
      PaintStyle = psCaptionGlyph
    end
    object btnHistorico: TdxBarButton
      Action = ActHistorico
      Caption = 'Hist'#243'rico do Equipamento ( F8 )'
      Category = 0
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
    object btnGerarVenda: TdxBarButton
      Action = ActGeraVenda
      Caption = 'Gerar Venda ( F9 )'
      Category = 0
      Glyph.Data = {
        2A010000424D2A010000000000007600000028000000180000000F0000000100
        040000000000B4000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888000008
        8888888800888888880FFF008888888000888888880FFF000888880008888888
        880FFF0008888000888888888800000008880008888888800080888008800088
        8888880F0008000008000888888880FFF0008880F0F0888888880FFFFF00080F
        0F088888888080FFF08080FFF0F008808888880F0808800FFF00888888888880
        00888080F0000808808888888888880800088888888888888888888000888888
        8888888888888888088888888888}
    end
    object btnEmail: TdxBarButton
      Caption = 'Email'
      Category = 0
      Hint = 'Email'
      Visible = ivAlways
      ImageIndex = 3
      PaintStyle = psCaptionGlyph
      OnClick = btnEmailClick
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
    Left = 8
    Top = 10
    object ActIncluir: TAction
      Tag = 1
      Caption = 'ActIncluir'
      Hint = 'Incluir um novo registro [Ins]'
      ShortCut = 45
      OnExecute = ActIncluirExecute
    end
    object ActAlterar: TAction
      Tag = 1
      Caption = 'ActAlterar'
      Hint = 'Incluir o registro selecionado [Enter]'
      ShortCut = 117
      OnExecute = ActAlterarExecute
    end
    object ActExcluir: TAction
      Tag = 1
      Caption = 'ActExcluir'
      Hint = 'Excluir o registro selecionado [Shift+Del]'
      ShortCut = 46
      OnExecute = ActExcluirExecute
    end
    object ActPost: TAction
      Tag = 1
      Caption = 'Salvar informa'#231#245'es'
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
    object ActNextPage: TAction
      Caption = 'ActNextPage'
      ShortCut = 34
      OnExecute = ActNextPageExecute
    end
    object ActPreviousPage: TAction
      Caption = 'ActPreviousPage'
      ShortCut = 33
      OnExecute = ActPreviousPageExecute
    end
    object ActLocalizarCliente: TAction
      Caption = 'ActLocalizarCliente'
      ShortCut = 16424
    end
    object ActLocalizarVendedores: TAction
      Caption = 'Localizar Vendedor'
    end
    object ActEnviarCaixa: TAction
      Tag = 1
      Caption = 'Enviar para o Caixa'
      OnExecute = ActEnviarCaixaExecute
    end
    object ActGeraVenda: TAction
      Tag = 1
      Caption = 'Gerar Venda (F9)'
      ShortCut = 120
      OnExecute = ActGeraVendaExecute
    end
    object ActHistorico: TAction
      Tag = 1
      Caption = 'Hist'#243'rico do Equipamento'
      ShortCut = 119
      OnExecute = ActHistoricoExecute
    end
    object ActOrcamento: TAction
      Tag = 1
      Caption = 'ActListagem'
      Hint = 'Emitir listagem de '
      ShortCut = 116
    end
    object ActOS: TAction
      Tag = 1
      Caption = 'Preencher OS  ( F7 )'
      ShortCut = 118
      OnExecute = ActOSExecute
    end
    object ActCarregarAnexo: TAction
      Caption = 'Incluir Anexo'
      OnExecute = ActCarregarAnexoExecute
    end
    object ActSalvarAnexo: TAction
      Caption = 'Salvar Anexo para Arquivo'
      OnExecute = ActSalvarAnexoExecute
    end
    object ActExcluirAnexo: TAction
      Caption = 'Excluir Anexo'
      OnExecute = ActExcluirAnexoExecute
    end
    object ActLocVeiculo: TAction
      Caption = 'ActLocVeiculo'
      ShortCut = 114
      OnExecute = ActLocVeiculoExecute
    end
    object ActMarcarCoordenada: TAction
      Tag = 1
      Caption = 'Marcar Coordenadas'
      OnExecute = ActMarcarCoordenadaExecute
    end
    object ActLimpaCoordenada: TAction
      Tag = 1
      Caption = 'Limpar Coordenadas'
      OnExecute = ActLimpaCoordenadaExecute
    end
  end
  object DataSource: TDataSource
    AutoEdit = False
    DataSet = DmServicos.Ordem
    OnStateChange = DataSourceStateChange
    Left = 177
    Top = 2
  end
  object dsMotivo: TDataSource
    AutoEdit = False
    DataSet = SelMotivo
    Left = 483
    Top = 2
  end
  object DsItens: TDataSource
    DataSet = DmServicos.SelServicos_Itens
    Left = 517
    Top = 2
  end
  object DsPlano: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelPlano
    Left = 551
    Top = 2
  end
  object dsTA: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelTA
    Left = 449
    Top = 2
  end
  object dsStatus: TDataSource
    DataSet = DmServicos.SelStatus
    Left = 313
    Top = 2
  end
  object dsClientes: TDataSource
    DataSet = dmCadastros2.SelClientes
    Left = 279
    Top = 2
  end
  object dsEquipamentos: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelEquipCliente
    Left = 347
    Top = 2
  end
  object dsTecnico: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelTecnico
    Left = 381
    Top = 2
  end
  object DsMovtos: TDataSource
    AutoEdit = False
    DataSet = DmServicos.OS_MOVIMENTOS
    Left = 585
    Top = 2
  end
  object DsDefeito: TDataSource
    AutoEdit = False
    DataSet = SelDefeitos
    Left = 415
    Top = 2
  end
  object rptHistEquip: TppReport
    AutoStop = False
    DataPipeline = ppHistEquip
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 210x297 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
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
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 312
    Top = 264
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppHistEquip'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 12171
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
        mmTop = 1323
        mmWidth = 194734
        BandType = 1
      end
      object ppLabel1: TppLabel
        OnPrint = ppLabel1Print
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Hist'#243'rico do Equipamento'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 24
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 9790
        mmLeft = 1323
        mmTop = 2117
        mmWidth = 95250
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 20373
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1588
        mmLeft = 1588
        mmTop = 18785
        mmWidth = 194734
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Width = 2
        Weight = 1.500000000000000000
        mmHeight = 1852
        mmLeft = 1323
        mmTop = 0
        mmWidth = 194734
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CLIENTE'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 1588
        mmWidth = 15610
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_RAZAO'
        DataPipeline = ppHistEquip
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppHistEquip'
        mmHeight = 4572
        mmLeft = 19050
        mmTop = 1588
        mmWidth = 1101
        BandType = 0
      end
      object ppLabel13: TppLabel
        OnPrint = ppDBText11Print
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'EQUIPAMENTO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 7408
        mmWidth = 26882
        BandType = 0
      end
      object ppDBText13: TppDBText
        OnPrint = ppDBText11Print
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRO_NOME'
        DataPipeline = ppHistEquip
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppHistEquip'
        mmHeight = 4233
        mmLeft = 42598
        mmTop = 7408
        mmWidth = 149490
        BandType = 0
      end
      object ppDBText12: TppDBText
        OnPrint = ppDBText11Print
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRO_PROPRIEDADE'
        DataPipeline = ppHistEquip
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppHistEquip'
        mmHeight = 4233
        mmLeft = 31750
        mmTop = 7408
        mmWidth = 9525
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRO_SERIE'
        DataPipeline = ppHistEquip
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppHistEquip'
        mmHeight = 4233
        mmLeft = 150548
        mmTop = 1588
        mmWidth = 41275
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'SERIE'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 139436
        mmTop = 2381
        mmWidth = 10499
        BandType = 0
      end
      object ppLabel22: TppLabel
        OnPrint = ppDBText20Print
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VEICULO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4106
        mmLeft = 1852
        mmTop = 12700
        mmWidth = 16383
        BandType = 0
      end
      object ppDBText21: TppDBText
        OnPrint = ppDBText20Print
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VEICULO'
        DataPipeline = ppHistEquip
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppHistEquip'
        mmHeight = 4233
        mmLeft = 19579
        mmTop = 12700
        mmWidth = 61648
        BandType = 0
      end
      object ppDBText22: TppDBText
        OnPrint = ppDBText20Print
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PLACA'
        DataPipeline = ppHistEquip
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppHistEquip'
        mmHeight = 4572
        mmLeft = 83344
        mmTop = 12700
        mmWidth = 1101
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
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 60061
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 53181
        mmLeft = 6615
        mmTop = 0
        mmWidth = 189971
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_CODIGO'
        DataPipeline = ppHistEquip
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppHistEquip'
        mmHeight = 3344
        mmLeft = 50536
        mmTop = 5292
        mmWidth = 762
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_DATA'
        DataPipeline = ppHistEquip
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppHistEquip'
        mmHeight = 3344
        mmLeft = 118004
        mmTop = 10319
        mmWidth = 762
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_TIPO_ATENDIMENTO'
        DataPipeline = ppHistEquip
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppHistEquip'
        mmHeight = 3344
        mmLeft = 50536
        mmTop = 14552
        mmWidth = 762
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_CAUSA_CHAMADO'
        DataPipeline = ppHistEquip
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppHistEquip'
        mmHeight = 3344
        mmLeft = 50536
        mmTop = 10319
        mmWidth = 762
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DEF_NOME'
        DataPipeline = ppHistEquip
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppHistEquip'
        mmHeight = 3344
        mmLeft = 50271
        mmTop = 23548
        mmWidth = 762
        BandType = 4
      end
      object ppDBText11: TppDBText
        OnPrint = ppDBText11Print
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MDL_NOME'
        DataPipeline = ppHistEquip
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppHistEquip'
        mmHeight = 3344
        mmLeft = 176742
        mmTop = 19315
        mmWidth = 762
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'O.S.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 41804
        mmTop = 5027
        mmWidth = 6350
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
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
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 109273
        mmTop = 10054
        mmWidth = 7144
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Defeito Reclamado'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 19844
        mmTop = 23548
        mmWidth = 28046
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Servi'#231'o Executado'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 20373
        mmTop = 13758
        mmWidth = 27781
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Problema Identificado'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 14552
        mmTop = 9525
        mmWidth = 33602
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Obs Fechamento:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4106
        mmLeft = 21961
        mmTop = 42333
        mmWidth = 26458
        BandType = 4
      end
      object ppLabel11: TppLabel
        OnPrint = ppDBText11Print
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Modelo'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 163777
        mmTop = 19050
        mmWidth = 11113
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Status do Atendimento'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 13758
        mmTop = 18521
        mmWidth = 34396
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ST_NOME'
        DataPipeline = ppHistEquip
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppHistEquip'
        mmHeight = 3344
        mmLeft = 50536
        mmTop = 19315
        mmWidth = 762
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'O. S Informa'#231#245'es'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4106
        mmLeft = 22342
        mmTop = 35454
        mmWidth = 26077
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        SaveOrder = 0
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'OS_INFORMACOES'
        DataPipeline = ppHistEquip
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppHistEquip'
        mmHeight = 6615
        mmLeft = 50536
        mmTop = 35190
        mmWidth = 144463
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        SaveOrder = 1
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'OBS_FECHAMENTO'
        DataPipeline = ppHistEquip
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppHistEquip'
        mmHeight = 6615
        mmLeft = 50536
        mmTop = 42333
        mmWidth = 144198
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppLabel12: TppLabel
        OnPrint = ppDBText11Print
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt. Troca Cilindro'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 146844
        mmTop = 13758
        mmWidth = 28046
        BandType = 4
      end
      object ppDBText7: TppDBText
        OnPrint = ppDBText11Print
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DT_CILINDRO'
        DataPipeline = ppHistEquip
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppHistEquip'
        mmHeight = 3344
        mmLeft = 176742
        mmTop = 14552
        mmWidth = 762
        BandType = 4
      end
      object ppDBText47: TppDBText
        OnPrint = ppDBText11Print
        UserName = 'DBText47'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DT_REVELADOR'
        DataPipeline = ppHistEquip
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppHistEquip'
        mmHeight = 3344
        mmLeft = 176742
        mmTop = 10054
        mmWidth = 762
        BandType = 4
      end
      object ppLabel80: TppLabel
        OnPrint = ppDBText11Print
        UserName = 'Label80'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt. Troca Revelador'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 143934
        mmTop = 9525
        mmWidth = 30956
        BandType = 4
      end
      object ppDBText48: TppDBText
        UserName = 'DBText48'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OS_DT_FECHAMENTO'
        DataPipeline = ppHistEquip
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppHistEquip'
        mmHeight = 3344
        mmLeft = 118004
        mmTop = 5292
        mmWidth = 762
        BandType = 4
      end
      object ppLabel81: TppLabel
        UserName = 'Label801'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt. Fechamento'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 92604
        mmTop = 4498
        mmWidth = 23813
        BandType = 4
      end
      object SubProdutos: TppSubReport
        UserName = 'SubProdutos'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppHistEquipItens'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 53975
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppHistEquipItens
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4 210x297 mm'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Template.SaveTo = stDatabase
          Template.Format = ftASCII
          Left = 392
          Top = 264
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppHistEquipItens'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 5292
            mmPrintPosition = 0
            object ppShape2: TppShape
              UserName = 'Shape2'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 5292
              mmLeft = 7144
              mmTop = 0
              mmWidth = 145521
              BandType = 1
            end
            object ppLabel15: TppLabel
              UserName = 'Label15'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Produto'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 7673
              mmTop = 529
              mmWidth = 12435
              BandType = 1
            end
            object ppLabel16: TppLabel
              UserName = 'Label16'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Descri'#231#227'o'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 50536
              mmTop = 529
              mmWidth = 14817
              BandType = 1
            end
            object ppLabel17: TppLabel
              UserName = 'Label17'
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
              Font.Name = 'Times New Roman'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 144992
              mmTop = 529
              mmWidth = 7408
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
            mmBottomOffset = 0
            mmHeight = 3440
            mmPrintPosition = 0
            object ppShape3: TppShape
              UserName = 'Shape3'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3440
              mmLeft = 7144
              mmTop = 0
              mmWidth = 145521
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
              DataField = 'COD_PRODUTO'
              DataPipeline = ppHistEquipItens
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppHistEquipItens'
              mmHeight = 3440
              mmLeft = 7673
              mmTop = 0
              mmWidth = 41540
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
              DataField = 'NOME_PRODUTO'
              DataPipeline = ppHistEquipItens
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppHistEquipItens'
              mmHeight = 3440
              mmLeft = 50536
              mmTop = 0
              mmWidth = 80963
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
              DataField = 'QUANTIDADE'
              DataPipeline = ppHistEquipItens
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppHistEquipItens'
              mmHeight = 3440
              mmLeft = 134938
              mmTop = 0
              mmWidth = 17727
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 10848
            mmPrintPosition = 0
            object ppShape4: TppShape
              UserName = 'Shape4'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3440
              mmLeft = 7144
              mmTop = 0
              mmWidth = 145521
              BandType = 7
            end
            object ppDBCalc1: TppDBCalc
              UserName = 'DBCalc1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'QUANTIDADE'
              DataPipeline = ppHistEquipItens
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppHistEquipItens'
              mmHeight = 3440
              mmLeft = 135467
              mmTop = 0
              mmWidth = 17198
              BandType = 7
            end
          end
        end
      end
      object ppLabel18: TppLabel
        OnPrint = ppDBText11Print
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ct. Total'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 161396
        mmTop = 4498
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText17: TppDBText
        OnPrint = ppDBText11Print
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CONTADOR_TOTAL'
        DataPipeline = ppHistEquip
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppHistEquip'
        mmHeight = 3344
        mmLeft = 197300
        mmTop = 4763
        mmWidth = 762
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Solicita'#231#227'o'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4106
        mmLeft = 31856
        mmTop = 28575
        mmWidth = 16298
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ASSUNTO'
        DataPipeline = ppHistEquip
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppHistEquip'
        mmHeight = 3344
        mmLeft = 50536
        mmTop = 28575
        mmWidth = 762
        BandType = 4
      end
      object ppDBText19: TppDBText
        OnPrint = ppDBText20Print
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PLACA'
        DataPipeline = ppHistEquip
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppHistEquip'
        mmHeight = 3344
        mmLeft = 118004
        mmTop = 14552
        mmWidth = 762
        BandType = 4
      end
      object ppLabel20: TppLabel
        OnPrint = ppDBText20Print
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Placa'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4106
        mmLeft = 108162
        mmTop = 14552
        mmWidth = 8255
        BandType = 4
      end
      object ppLabel21: TppLabel
        OnPrint = ppDBText20Print
        UserName = 'Label201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Veiculo'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4106
        mmLeft = 105072
        mmTop = 19315
        mmWidth = 11345
        BandType = 4
      end
      object ppDBText20: TppDBText
        OnPrint = ppDBText20Print
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VEICULO'
        DataPipeline = ppHistEquip
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppHistEquip'
        mmHeight = 3344
        mmLeft = 118004
        mmTop = 19315
        mmWidth = 762
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line4'
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
        mmHeight = 4586
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 17145
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
        mmHeight = 4586
        mmLeft = 178859
        mmTop = 1323
        mmWidth = 17145
        BandType = 8
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'OS_PESSOA_FJ'
      DataPipeline = ppHistEquip
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppHistEquip'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppHistEquip: TppDBPipeline
    DataSource = DsHistEquip
    UserName = 'HistEquip'
    Left = 344
    Top = 264
    object ppHistEquipppField1: TppField
      FieldAlias = 'OS_INFORMACOES'
      FieldName = 'OS_INFORMACOES'
      FieldLength = 0
      DataType = dtBLOB
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppHistEquipppField2: TppField
      FieldAlias = 'OS_TIPO_ATENDIMENTO'
      FieldName = 'OS_TIPO_ATENDIMENTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppHistEquipppField3: TppField
      FieldAlias = 'OS_CAUSA_CHAMADO'
      FieldName = 'OS_CAUSA_CHAMADO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppHistEquipppField4: TppField
      FieldAlias = 'OBS_FECHAMENTO'
      FieldName = 'OBS_FECHAMENTO'
      FieldLength = 8
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppHistEquipppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'OS_PESSOA_FJ'
      FieldName = 'OS_PESSOA_FJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppHistEquipppField6: TppField
      FieldAlias = 'OS_NOME'
      FieldName = 'OS_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object ppHistEquipppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'OS_CODIGO'
      FieldName = 'OS_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppHistEquipppField8: TppField
      FieldAlias = 'OS_DATA'
      FieldName = 'OS_DATA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 7
    end
    object ppHistEquipppField9: TppField
      FieldAlias = 'DEF_NOME'
      FieldName = 'DEF_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object ppHistEquipppField10: TppField
      FieldAlias = 'PRO_PROPRIEDADE'
      FieldName = 'PRO_PROPRIEDADE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 9
    end
    object ppHistEquipppField11: TppField
      FieldAlias = 'PRO_NOME'
      FieldName = 'PRO_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
    object ppHistEquipppField12: TppField
      FieldAlias = 'PRO_SERIE'
      FieldName = 'PRO_SERIE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 11
    end
    object ppHistEquipppField13: TppField
      FieldAlias = 'ST_NOME'
      FieldName = 'ST_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 12
    end
    object ppHistEquipppField14: TppField
      FieldAlias = 'OS_DT_FECHAMENTO'
      FieldName = 'OS_DT_FECHAMENTO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
    object ppHistEquipppField15: TppField
      FieldAlias = 'DT_CILINDRO'
      FieldName = 'DT_CILINDRO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 14
    end
    object ppHistEquipppField16: TppField
      FieldAlias = 'DT_REVELADOR'
      FieldName = 'DT_REVELADOR'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 15
    end
    object ppHistEquipppField17: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 16
    end
    object ppHistEquipppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'CONTADOR_TOTAL'
      FieldName = 'CONTADOR_TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object ppHistEquipppField19: TppField
      FieldAlias = 'MDL_NOME'
      FieldName = 'MDL_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 18
    end
    object ppHistEquipppField20: TppField
      FieldAlias = 'VEICULO'
      FieldName = 'VEICULO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 19
    end
    object ppHistEquipppField21: TppField
      FieldAlias = 'PLACA'
      FieldName = 'PLACA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 20
    end
    object ppHistEquipppField22: TppField
      FieldAlias = 'ASSUNTO'
      FieldName = 'ASSUNTO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 21
    end
    object ppHistEquipppField23: TppField
      FieldAlias = 'NOME_RAZAO'
      FieldName = 'NOME_RAZAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 22
    end
  end
  object DsHistEquip: TDataSource
    DataSet = dmRelatorios2.qryRelHistoricoEquip2
    Left = 376
    Top = 264
  end
  object DsIntervalos: TDataSource
    DataSet = DmServicos.OS_INTERVALO
    Left = 619
    Top = 2
  end
  object dsHistItens: TDataSource
    DataSet = dmRelatorios2.qryRelHistEquipItens
    Left = 446
    Top = 264
  end
  object ppHistEquipItens: TppDBPipeline
    DataSource = dsHistItens
    UserName = 'HistEquip1'
    Left = 416
    Top = 264
    object ppHistEquipItensppField1: TppField
      FieldAlias = 'COD_PRODUTO'
      FieldName = 'COD_PRODUTO'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppHistEquipItensppField2: TppField
      FieldAlias = 'NOME_PRODUTO'
      FieldName = 'NOME_PRODUTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppHistEquipItensppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTIDADE'
      FieldName = 'QUANTIDADE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object ppHistEquipItensppField4: TppField
      FieldAlias = 'MARCA'
      FieldName = 'MARCA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
  end
  object imgImportance: TImageList
    Height = 12
    Width = 12
    Left = 712
    Top = 2
    Bitmap = {
      494C01010500090004000C000C00FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000030000000240000000100200000000000001B
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DED6CE00634A310063524200CEC6B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000735A
      4200E7DEDE00D6CEC600E7DEDE00E7DEDE00634A310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000735A
      42000000000073524200634A420000000000634A310000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000846B
      5200000000007363520073524200000000006352420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000947B
      630000000000847363008463520000000000735A420000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A584
      730000000000947B73009473630000000000846B520000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A584
      7300000000009484730094736300000000008473630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DED6CE00A58C730094847300D6CECE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFF7F700A5523100A5522100F7EFE7000000000000000000000000000000
      000000000000000000000000000000000000F7F7FF00637BCE00294AB500F7F7
      FF000000000000000000000000000000000000000000C6948400C6948400C684
      8400B5848400B57B7300B57B7300B5737300B5737300A5736300A56363000000
      00000000000084ADC60042739400316B8400316B840031638400315A7300315A
      7300315A730031526300314A630000000000000000000000000000000000FFF7
      F700B5633100E7845200D67B5200A5522100F7EFE70000000000000000000000
      000000000000000000000000000000000000EFF7FF006384F700214AD600D6D6
      EF000000000000000000000000000000000000000000C6949400FFFFD600FFF7
      C600FFEFB500FFDEA500FFC69400F7B58400F7AD7300E7946300A56B63000000
      00000000000084ADC600A5EFFF0084E7F70084DEF70073D6F70073CEF70073CE
      F70073CEF70063CEF70031526300000000000000000000000000FFF7F700B55A
      3100F7A57300F7A57300E7845200D6734200B55A3100FFF7F700000000000000
      00000000000000000000000000000000000000000000C6CEE700A5B5E7000000
      00000000000000000000000000000000000000000000D69C9400D6948400F7F7
      E700FFFFF700FFFFE700FFF7D600FFEFB500F7D6A500C6846300A57373000000
      00000000000084ADC600B5FFFF0094F7FF0094F7FF0094F7FF0094F7FF0094F7
      FF0094F7FF0084E7FF0031526300000000000000000000000000EFB59C00E7A5
      8C00E7947300FFAD8400F78C5200B5633100A5522100A5522100000000000000
      000000000000000000000000000000000000000000009CB5EF008C9CDE000000
      00000000000000000000000000000000000000000000D6A59400F7DEB500C6A5
      A500F7F7E700FFF7E700F7EFD600F7D6B500C67B7300F7D6B500A57B73000000
      00000000000084B5C60094E7F70094FFFF0094F7FF0084EFFF0084EFFF0084EF
      FF0094F7FF0073DEF700425A6300000000000000000000000000000000000000
      0000E7946300FFAD8400F7946300B55A31000000000000000000000000000000
      000000000000000000000000000000000000F7F7FF004A73E700295ADE00DEE7
      F7000000000000000000000000000000000000000000D6ADA500D69C9400A5FF
      FF00C6A59400C69C9400C68C8400B594940073DEFF00B59C9400B58484000000
      00000000000094B5C60063BDD60084EFFF0073E7F70052B5E7003194C60073D6
      F70073DEF700429CC600425A7300000000000000000000000000000000000000
      0000E7947300FFB59400FF946300A55221000000000000000000000000000000
      0000000000000000000000000000000000009CB5E7003163F7000042FF009CB5
      E7000000000000000000000000000000000000000000D6ADA500C6FFFF00C6FF
      FF00B5FFFF00B5FFFF0094EFFF0084E7FF0073DEFF0073DEFF00A57B73000000
      00000000000094C6D60094EFF70063BDE70084E7F700A5FFFF0094F7FF0094EF
      FF0052ADD60084E7F70042637300000000000000000000000000000000000000
      0000E7947300FFBD9400FF9C6300A55221000000000000000000000000000000
      0000000000000000000000000000000000006384E7004A7BF700004AFF001852
      D6000000000000000000000000000000000000000000D6ADA500A5EFFF00A5EF
      FF00A5EFFF0094E7FF0084DEF70073D6F70073CEF70063CEF700B57B84000000
      00000000000094C6D60063C6E70094E7F700A5FFFF00A5FFFF00A5FFFF0094F7
      FF0094EFFF0052A5C600526B7300000000000000000000000000000000000000
      0000E79C7300FFBD9400FF9C7300A55221000000000000000000000000000000
      000000000000000000000000000000000000527BE700638CFF003163FF000039
      D6000000000000000000000000000000000000000000F7EFEF00E7FFFF00E7FF
      FF00F7FFFF00F7FFFF00C6FFFF00A5F7FF0084EFFF0084E7FF00F7EFEF000000
      00000000000094CED600C6F7FF00C6FFFF00C6FFFF00B5FFFF00B5FFFF00A5FF
      FF0094F7FF0094EFFF00526B7300000000000000000000000000000000000000
      0000F7A58400FFC6A500FFBD9400A55221000000000000000000000000000000
      000000000000000000000000000000000000738CE70094ADFF00638CFF002152
      D600000000000000000000000000000000000000000000000000F7EFEF00CEA5
      A500F7FFFF00F7FFFF00E7FFFF00B5FFFF00B57B8400F7EFEF00000000000000
      00000000000094CED600E7FFFF00E7FFFF00E7FFFF00E7FFFF00E7FFFF00D6FF
      FF00D6FFFF00B5FFFF0052738400000000000000000000000000000000000000
      0000F7A57B00E7A57B00E79C7B00D6846B000000000000000000000000000000
      000000000000000000000000000000000000D6DEF7007B8CE7006B7BE700DEE7
      F70000000000000000000000000000000000000000000000000000000000F7EF
      EF00C6A59C00C6A5A500C69C9400C69C9400EFE7E70000000000000000000000
      00000000000094CED60094CED60094CED60094C6D60094C6D60094BDC60084B5
      C60084B5C60084ADC60084ADC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000030000000240000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFF0000000000000FFF0000000000000
      F0F0000000000000E070000000000000E970000000000000E970000000000000
      E970000000000000E970000000000000E970000000000000F870000000000000
      FFF0000000000000FFF0000000000000FFFFFFFFFFFF0000F0FF0F8018010000
      E07F0F8018010000C03F9F8018010000C03F9F8018010000F0FF0F8018010000
      F0FF0F8018010000F0FF0F8018010000F0FF0F8018010000F0FF0FC038010000
      F0FF0FE078010000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 109
    Top = 2
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
  end
  object dsIntervaloEmail: TDataSource
    DataSet = DmServicos.OS_INTERVALO_EMAIL
    OnStateChange = DataSourceStateChange
    Left = 582
    Top = 295
  end
  object stgFrmOrdens_Servicos: TcxPropertiesStore
    Components = <
      item
        Component = GridAnexoDBTableView1TAMANHO
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
        Component = GRIDCNPJ
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
          'Width')
      end
      item
        Component = GRIDCUSTO_ATIVIDADE
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DecimalPlaces'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'DisplayFormat'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'MaxLength'
          'MaxValue'
          'MinValue'
          'MinWidth'
          'Name'
          'Nullable'
          'NullString'
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
          'UseThousandSeparator'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GRIDCUSTO_HORA
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DecimalPlaces'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'DisplayFormat'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'MaxLength'
          'MaxValue'
          'MinValue'
          'MinWidth'
          'Name'
          'Nullable'
          'NullString'
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
          'UseThousandSeparator'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GRIDDT_FIM
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
        Component = GRIDDT_INICIO
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
        Component = GridEmail
        Properties.Strings = (
          'Align'
          'Anchors'
          'BevelEdges'
          'BevelInner'
          'BevelKind'
          'BevelOuter'
          'BevelWidth'
          'BorderStyle'
          'BorderWidth'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'DragOpening'
          'DragOpeningWaitTime'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'Left'
          'LevelTabs'
          'LookAndFeel'
          'Name'
          'ParentFont'
          'PopupMenu'
          'RootLevelOptions'
          'RootLevelStyles'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = GridEmailDBTableView2
        Properties.Strings = (
          'BackgroundBitmaps'
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
        Component = GridEmailDBTableView2CNPJ
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
        Component = GridEmailDBTableView2COD_INTERVALO
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
        Component = GridEmailDBTableView2CODIGO
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
        Component = GridEmailDBTableView2DATA
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
        Component = GridEmailDBTableView2DE
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
        Component = GridEmailDBTableView2ENVIADO
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
        Component = GridEmailDBTableView2PARA
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
        Component = GridEmailDBTableView2SEQUENCIA
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
        Component = GRIDHR_FIM
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
          'TimeEditFormat'
          'UseCtrlIncrement'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GRIDHR_INICIO
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
          'TimeEditFormat'
          'UseCtrlIncrement'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItens
        Properties.Strings = (
          'Align'
          'Anchors'
          'BevelEdges'
          'BevelInner'
          'BevelKind'
          'BevelOuter'
          'BevelWidth'
          'BorderStyle'
          'BorderWidth'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'DragOpening'
          'DragOpeningWaitTime'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'Left'
          'LevelTabs'
          'LookAndFeel'
          'Name'
          'ParentFont'
          'PopupMenu'
          'RootLevelOptions'
          'RootLevelStyles'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = GRIDKM_FINAL
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
        Component = GRIDKM_INICIAL
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
        Component = GRIDKM_RODADO
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
        Component = GRIDNOME_TECNICO
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
        Component = GRIDNOME_USUARIO
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
        Component = GRIDOBSERVACAO
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
          'DisableGrouping'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'HideScrollBars'
          'MaxDisplayLength'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'ScrollBars'
          'SelectionBar'
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
          'WantReturns'
          'WantTabs'
          'Width'
          'WordWrap')
      end
      item
        Component = GRIDQTDE_HORA
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
        Component = GRIDSEQUENCIA
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
          'Width')
      end
      item
        Component = GRIDTEMPO_VIAJEM
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
        Component = TVItens
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
        Component = TVItensCNPJ
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
        Component = TVItensCOD_PRODUTO
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
        Component = TVItensCODIGO
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
        Component = TVItensCODIGO_TECNICO
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
        Component = TVItensNOME
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
        Component = TVItensNOME_PRODUTO
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
        Component = TVItensNOMETEC
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
        Component = TVItensQUANTIDADE
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
        Component = TVItensSELECIONADO
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
        Component = TVItensSERVICO
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
        Component = TVItensTIPO_SERVICO
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
        Component = TVItensTotal
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
        Component = TVItensUNITARIO
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
    StorageName = 'c:\Sistemas\HelpStore\FILTROS\stgFrmOrdens_Servicos.ini'
    Left = 680
    Top = 2
  end
  object dsAnexo: TDataSource
    DataSet = DmServicos.OS_INTERVALO_ANEXO
    OnStateChange = DataSourceStateChange
    Left = 550
    Top = 263
  end
  object SaveDialog: TSaveDialog
    Left = 648
    Top = 2
  end
  object OpenDialog: TOpenDialog
    Left = 744
    Top = 2
  end
  object PopAnexo: TPopupMenu
    Left = 776
    Top = 2
    object CarregarArquivo1: TMenuItem
      Action = ActCarregarAnexo
    end
    object SalvarAnexo1: TMenuItem
      Action = ActSalvarAnexo
    end
    object ExcluirAnexo1: TMenuItem
      Action = ActExcluirAnexo
    end
  end
  object dsContato: TDataSource
    DataSet = DMCadastros.Contato
    Left = 211
    Top = 2
  end
  object IdMessage: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    From.Address = 'fabianolisboa@gmail.com'
    From.Name = 'Fabiano'
    From.Text = 'Fabiano <fabianolisboa@gmail.com>'
    Priority = mpHigh
    Recipients = <>
    ReplyTo = <>
    Left = 615
    Top = 296
  end
  object IdSMTP: TIdSMTP
    IOHandler = SSLSocket
    MaxLineAction = maException
    ReadTimeout = 0
    Host = 'smtp.gmail.com'
    Port = 465
    AuthenticationType = atLogin
    Password = 'fabino1306'
    Username = 'fabianolisboa'
    Left = 610
    Top = 232
  end
  object SSLSocket: TIdSSLIOHandlerSocket
    SSLOptions.Method = sslvSSLv2
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 642
    Top = 232
  end
  object dsVeiculos: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelVeiculo
    Left = 245
    Top = 2
  end
  object DsConfiguracoes: TDataSource
    DataSet = DMEmpresas.Configuracoes
    OnStateChange = DataSourceStateChange
    Left = 143
    Top = 2
  end
  object dsGravidade: TDataSource
    DataSet = DmServicos.OFC_GRAVIDADE
    Left = 610
    Top = 262
  end
  object TimerMaps: TTimer
    Enabled = False
    Interval = 10
    OnTimer = TimerMapsTimer
    Left = 648
    Top = 328
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 640
    Top = 264
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      Offsets.ControlOffsetHorz = 2
      Offsets.ControlOffsetVert = 2
      Offsets.ItemOffset = 1
    end
  end
  object QryEquipamento: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select distinct cti.codigo cod_item, prd.codigo||'#39'-'#39'||prd.nome c' +
        'odigo_nome, prd.codigo, substring(prd.nome from 1 for 25) nome, ' +
        ' prd.serie, DT_FIM,'
      'ct.codigo codigo_contrato,cti.ativo ativo2,'
      'case coalesce(cti.ativo,'#39'N'#39')'
      '     when '#39'S'#39' then '#39'Ativo'#39
      '     when '#39'N'#39' then '#39'Inativo'#39
      'end ativo,'
      'cti.informacoes_itens,'
      'mdl.nome modelo'
      ''
      'from ofc_contratos_itens cti'
      
        'inner join ofc_contratos ct on (ct.codigo = cti.contrato and ct.' +
        'cnpj = cti.cnpj)'
      
        'inner join est_produtos prd on (prd.cnpj = cti.cnpj and prd.codi' +
        'go = cti.cod_produto)'
      
        'left join glo_modelo_propriedade mdl on (prd.cnpj = mdl.cnpj and' +
        ' prd.modelo = mdl.codigo)'
      'where    ct.cnpj = :cnpj and'
      'cti.ativo = '#39'S'#39' and ct.ativo = '#39'S'#39
      'and ct.cod_cliente = :cod_cliente'
      'and prd.codigo = :produto'
      'order by prd.codigo||'#39'-'#39'||prd.nome')
    Left = 648
    Top = 298
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'produto'
        ParamType = ptUnknown
      end>
    object QryEquipamentoCOD_ITEM: TIntegerField
      FieldName = 'COD_ITEM'
      Origin = '"OFC_CONTRATOS_ITENS"."CODIGO"'
      Required = True
    end
    object QryEquipamentoCODIGO_NOME: TIBStringField
      FieldName = 'CODIGO_NOME'
      ProviderFlags = []
      Size = 66
    end
    object QryEquipamentoCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object QryEquipamentoNOME: TIBStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object QryEquipamentoSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
    object QryEquipamentoDT_FIM: TDateTimeField
      FieldName = 'DT_FIM'
      Origin = '"OFC_CONTRATOS"."DT_FIM"'
    end
    object QryEquipamentoCODIGO_CONTRATO: TIntegerField
      FieldName = 'CODIGO_CONTRATO'
      Origin = '"OFC_CONTRATOS"."CODIGO"'
      Required = True
    end
    object QryEquipamentoATIVO2: TIBStringField
      FieldName = 'ATIVO2'
      Origin = '"OFC_CONTRATOS_ITENS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object QryEquipamentoATIVO: TIBStringField
      FieldName = 'ATIVO'
      ProviderFlags = []
      FixedChar = True
      Size = 7
    end
    object QryEquipamentoINFORMACOES_ITENS: TMemoField
      FieldName = 'INFORMACOES_ITENS'
      Origin = '"OFC_CONTRATOS_ITENS"."INFORMACOES_ITENS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object QryEquipamentoMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"GLO_MODELO_PROPRIEDADE"."NOME"'
      Size = 50
    end
  end
  object ppAppRepresentante: TppDBPipeline
    DataSource = dsApp
    UserName = 'ppAppRepresentante'
    Left = 319
    Top = 41
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
  object dsApp: TDataSource
    DataSet = DmApp.QryParceiro
    Left = 350
    Top = 41
  end
  object SelDefeitos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelDefeitosBeforeOpen
    SQL.Strings = (
      'select CNPJ, CODIGO, NOME, ATIVO'
      'from OFC_DEFEITO'
      'Where CNPJ = :CNPJ '
      'and coalesce(ATIVO,'#39'N'#39') = '#39'S'#39
      'Order by NOME')
    Left = 584
    Top = 35
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelDefeitosCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"OFC_DEFEITO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelDefeitosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_DEFEITO"."CODIGO"'
      Required = True
    end
    object SelDefeitosNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"OFC_DEFEITO"."NOME"'
      Required = True
      Size = 50
    end
    object SelDefeitosATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"OFC_DEFEITO"."ATIVO"'
      FixedChar = True
      Size = 1
    end
  end
  object SelMotivo: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelDefeitosBeforeOpen
    SQL.Strings = (
      'select * from ofc_motivo_chamado mc'
      'where mc.cnpj = :cnpj'
      'and coalesce(mc.ativo,'#39'N'#39') = '#39'S'#39
      'order by mc.nome')
    Left = 552
    Top = 35
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelMotivoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_MOTIVO_CHAMADO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelMotivoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_MOTIVO_CHAMADO"."CODIGO"'
      Required = True
    end
    object SelMotivoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_MOTIVO_CHAMADO"."NOME"'
      Size = 50
    end
    object SelMotivoATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"OFC_MOTIVO_CHAMADO"."ATIVO"'
      FixedChar = True
      Size = 1
    end
  end
  object Ordem: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from OFC_ORDEM_SERVICO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into OFC_ORDEM_SERVICO'
      
        '  (ALIQUOTA_ISS, ASSUNTO, CAUSA_CHAMADO, CHASSI, CLIENTE, CNPJ, ' +
        'COD_CONTATO, '
      
        '   COD_GRAVIDADE, COD_STATUS, CODIGO, CONDICAO_FINAL_EQUIPAMENTO' +
        ', CONTADOR_CILINDRO, '
      
        '   CONTADOR_COR, CONTADOR_IMPRESSAO, CONTADOR_PRETO, CONTADOR_RE' +
        'VELADOR, '
      
        '   CONTADOR_TOTAL, CONTROLE, CREDITOS, CT_CILINDRO, CT_REVELADOR' +
        ', CUSTO_OS, '
      
        '   DATA, DATA_FECHAMENTO, DEBITOS, DEFEITO_RECLAMADO, DESC_ACRES' +
        'C, DT_ATRIBUICAO, '
      
        '   DT_CILINDRO, DT_FINALIZACAO, DT_INICIALIZACAO, DT_REVELADOR, ' +
        'ENTRADA, '
      
        '   ENVIADA_CAIXA, FECHADO, FORMA_PAGTO, HISTORICO, HORA_CHEGADA,' +
        ' HORA_SAIDA, '
      
        '   HORAS_TRABALHADAS, HR_ATRIBUICAO, HR_ENTRADA, HR_FECHAMENTO, ' +
        'HR_FINALIZACAO, '
      
        '   HR_INICIALIZACAO, ID_CONTRATO, ID_MOTIVO_CHAMADO, ID_TIPO_ATE' +
        'NDIMENTO, '
      
        '   INFORMACOES, KM, KM_FINAL, KM_INICIAL, KM_RODADO, LOCAL_COBRA' +
        'NCA, MAP_LAT, '
      
        '   MAP_LONG, MECANICO, MED_BIELA, MED_CARCACA, MED_CILINDRO, MED' +
        '_VIRABREQUIM, '
      
        '   MOTOR, NATUREZA, NF, NOME, NOME_DEFEITO, NOME_FORMA, NOME_MEC' +
        'ANICO, '
      
        '   NOME_MOTOR, NOME_NATUREZA, NOME_PROPRIEDADE, NOME_VIAJANTE, N' +
        'UMERO_VENDA, '
      
        '   OBS_FECHAMENTO, ORCAMENTO, OS_RECHAMADO, PESSOA_FJ, PLACA, PR' +
        'EVENTIVO, '
      
        '   PRIORIDADE, PRODUTO, PROPRIEDADE, PROTOCOLO, SERIE, TEMPO_RES' +
        'POSTA, '
      
        '   TIPO_ATENDIMENTO, TIPO_DOCTO, TIPO_TECNICO, TOTAL, VEICULO, V' +
        'ENDA, VIAJANTE, '
      '   VLR_ENTRADA, VLR_PARC_LC)'
      'values'
      
        '  (:ALIQUOTA_ISS, :ASSUNTO, :CAUSA_CHAMADO, :CHASSI, :CLIENTE, :' +
        'CNPJ, :COD_CONTATO, '
      
        '   :COD_GRAVIDADE, :COD_STATUS, :CODIGO, :CONDICAO_FINAL_EQUIPAM' +
        'ENTO, :CONTADOR_CILINDRO, '
      
        '   :CONTADOR_COR, :CONTADOR_IMPRESSAO, :CONTADOR_PRETO, :CONTADO' +
        'R_REVELADOR, '
      
        '   :CONTADOR_TOTAL, :CONTROLE, :CREDITOS, :CT_CILINDRO, :CT_REVE' +
        'LADOR, '
      
        '   :CUSTO_OS, :DATA, :DATA_FECHAMENTO, :DEBITOS, :DEFEITO_RECLAM' +
        'ADO, :DESC_ACRESC, '
      
        '   :DT_ATRIBUICAO, :DT_CILINDRO, :DT_FINALIZACAO, :DT_INICIALIZA' +
        'CAO, :DT_REVELADOR, '
      
        '   :ENTRADA, :ENVIADA_CAIXA, :FECHADO, :FORMA_PAGTO, :HISTORICO,' +
        ' :HORA_CHEGADA, '
      
        '   :HORA_SAIDA, :HORAS_TRABALHADAS, :HR_ATRIBUICAO, :HR_ENTRADA,' +
        ' :HR_FECHAMENTO, '
      
        '   :HR_FINALIZACAO, :HR_INICIALIZACAO, :ID_CONTRATO, :ID_MOTIVO_' +
        'CHAMADO, '
      
        '   :ID_TIPO_ATENDIMENTO, :INFORMACOES, :KM, :KM_FINAL, :KM_INICI' +
        'AL, :KM_RODADO, '
      
        '   :LOCAL_COBRANCA, :MAP_LAT, :MAP_LONG, :MECANICO, :MED_BIELA, ' +
        ':MED_CARCACA, '
      
        '   :MED_CILINDRO, :MED_VIRABREQUIM, :MOTOR, :NATUREZA, :NF, :NOM' +
        'E, :NOME_DEFEITO, '
      
        '   :NOME_FORMA, :NOME_MECANICO, :NOME_MOTOR, :NOME_NATUREZA, :NO' +
        'ME_PROPRIEDADE, '
      
        '   :NOME_VIAJANTE, :NUMERO_VENDA, :OBS_FECHAMENTO, :ORCAMENTO, :' +
        'OS_RECHAMADO, '
      
        '   :PESSOA_FJ, :PLACA, :PREVENTIVO, :PRIORIDADE, :PRODUTO, :PROP' +
        'RIEDADE, '
      
        '   :PROTOCOLO, :SERIE, :TEMPO_RESPOSTA, :TIPO_ATENDIMENTO, :TIPO' +
        '_DOCTO, '
      
        '   :TIPO_TECNICO, :TOTAL, :VEICULO, :VENDA, :VIAJANTE, :VLR_ENTR' +
        'ADA, :VLR_PARC_LC)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  DATA,'
      '  PESSOA_FJ,'
      '  NOME,'
      '  NATUREZA,'
      '  MECANICO,'
      '  VIAJANTE,'
      '  ENTRADA,'
      '  HR_ENTRADA,'
      '  HISTORICO,'
      '  CHASSI,'
      '  INFORMACOES,'
      '  TOTAL,'
      '  DESC_ACRESC,'
      '  CLIENTE,'
      '  FECHADO,'
      '  NOME_NATUREZA,'
      '  NOME_MECANICO,'
      '  NOME_VIAJANTE,'
      '  MOTOR,'
      '  NOME_MOTOR,'
      '  ENVIADA_CAIXA,'
      '  PLACA,'
      '  DATA_FECHAMENTO,'
      '  HR_FECHAMENTO,'
      '  OBS_FECHAMENTO,'
      '  FORMA_PAGTO,'
      '  NOME_FORMA,'
      '  TIPO_DOCTO,'
      '  LOCAL_COBRANCA,'
      '  VLR_PARC_LC,'
      '  VLR_ENTRADA,'
      '  CREDITOS,'
      '  DEBITOS,'
      '  NF,'
      '  ALIQUOTA_ISS,'
      '  ORCAMENTO,'
      '  MED_VIRABREQUIM,'
      '  MED_BIELA,'
      '  MED_CILINDRO,'
      '  MED_CARCACA,'
      '  NUMERO_VENDA,'
      '  DEFEITO_RECLAMADO,'
      '  CONDICAO_FINAL_EQUIPAMENTO,'
      '  HORA_CHEGADA,'
      '  HORA_SAIDA,'
      '  CONTADOR_TOTAL,'
      '  CONTADOR_CILINDRO,'
      '  CONTADOR_REVELADOR,'
      '  NOME_DEFEITO,'
      '  PROPRIEDADE,'
      '  NOME_PROPRIEDADE,'
      '  CAUSA_CHAMADO,'
      '  TIPO_ATENDIMENTO,'
      '  CONTADOR_COR,'
      '  CONTADOR_PRETO,'
      '  CONTADOR_IMPRESSAO,'
      '  VENDA,'
      '  PRODUTO,'
      '  ID_MOTIVO_CHAMADO,'
      '  ID_TIPO_ATENDIMENTO,'
      '  COD_STATUS,'
      '  DT_ATRIBUICAO,'
      '  HR_ATRIBUICAO,'
      '  DT_INICIALIZACAO,'
      '  HR_INICIALIZACAO,'
      '  DT_FINALIZACAO,'
      '  HR_FINALIZACAO,'
      '  CT_REVELADOR,'
      '  DT_REVELADOR,'
      '  DT_CILINDRO,'
      '  CT_CILINDRO,'
      '  KM_INICIAL,'
      '  KM_FINAL,'
      '  OS_RECHAMADO,'
      '  KM_RODADO,'
      '  HORAS_TRABALHADAS,'
      '  TEMPO_RESPOSTA,'
      '  TIPO_TECNICO,'
      '  PREVENTIVO,'
      '  ID_CONTRATO,'
      '  COD_CONTATO,'
      '  PRIORIDADE,'
      '  CUSTO_OS,'
      '  CONTROLE,'
      '  ASSUNTO,'
      '  VEICULO,'
      '  KM,'
      '  PROTOCOLO,'
      '  COD_GRAVIDADE,'
      '  MAP_LAT,'
      '  MAP_LONG,'
      '  TAG,'
      '  SERIE'
      'from OFC_ORDEM_SERVICO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select OFC_ORDEM_SERVICO.*,'
      '        ofc_gravidade.cnpj gcnpj,'
      '        ofc_gravidade.codigo gcodigo,'
      '        ofc_gravidade.titulo,'
      '        st.fechado st_fechado'
      'from OFC_ORDEM_SERVICO'
      
        'left join ofc_gravidade on (ofc_gravidade.cnpj = ofc_ordem_servi' +
        'co.cnpj and ofc_gravidade.codigo = ofc_ordem_servico.cod_gravida' +
        'de)'
      
        'left join ofc_status st on (st.cnpj = ofc_ordem_servico.cnpj and' +
        ' ofc_ordem_servico.cod_status = st.codigo)'
      
        'Where ofc_ordem_servico.CNPJ = :CNPJ AND ofc_ordem_servico.CODIG' +
        'O = :CODIGO')
    ModifySQL.Strings = (
      'update OFC_ORDEM_SERVICO'
      'set'
      '  ALIQUOTA_ISS = :ALIQUOTA_ISS,'
      '  ASSUNTO = :ASSUNTO,'
      '  CAUSA_CHAMADO = :CAUSA_CHAMADO,'
      '  CHASSI = :CHASSI,'
      '  CLIENTE = :CLIENTE,'
      '  CNPJ = :CNPJ,'
      '  COD_CONTATO = :COD_CONTATO,'
      '  COD_GRAVIDADE = :COD_GRAVIDADE,'
      '  COD_STATUS = :COD_STATUS,'
      '  CODIGO = :CODIGO,'
      '  CONDICAO_FINAL_EQUIPAMENTO = :CONDICAO_FINAL_EQUIPAMENTO,'
      '  CONTADOR_CILINDRO = :CONTADOR_CILINDRO,'
      '  CONTADOR_COR = :CONTADOR_COR,'
      '  CONTADOR_IMPRESSAO = :CONTADOR_IMPRESSAO,'
      '  CONTADOR_PRETO = :CONTADOR_PRETO,'
      '  CONTADOR_REVELADOR = :CONTADOR_REVELADOR,'
      '  CONTADOR_TOTAL = :CONTADOR_TOTAL,'
      '  CONTROLE = :CONTROLE,'
      '  CREDITOS = :CREDITOS,'
      '  CT_CILINDRO = :CT_CILINDRO,'
      '  CT_REVELADOR = :CT_REVELADOR,'
      '  CUSTO_OS = :CUSTO_OS,'
      '  DATA = :DATA,'
      '  DATA_FECHAMENTO = :DATA_FECHAMENTO,'
      '  DEBITOS = :DEBITOS,'
      '  DEFEITO_RECLAMADO = :DEFEITO_RECLAMADO,'
      '  DESC_ACRESC = :DESC_ACRESC,'
      '  DT_ATRIBUICAO = :DT_ATRIBUICAO,'
      '  DT_CILINDRO = :DT_CILINDRO,'
      '  DT_FINALIZACAO = :DT_FINALIZACAO,'
      '  DT_INICIALIZACAO = :DT_INICIALIZACAO,'
      '  DT_REVELADOR = :DT_REVELADOR,'
      '  ENTRADA = :ENTRADA,'
      '  ENVIADA_CAIXA = :ENVIADA_CAIXA,'
      '  FECHADO = :FECHADO,'
      '  FORMA_PAGTO = :FORMA_PAGTO,'
      '  HISTORICO = :HISTORICO,'
      '  HORA_CHEGADA = :HORA_CHEGADA,'
      '  HORA_SAIDA = :HORA_SAIDA,'
      '  HORAS_TRABALHADAS = :HORAS_TRABALHADAS,'
      '  HR_ATRIBUICAO = :HR_ATRIBUICAO,'
      '  HR_ENTRADA = :HR_ENTRADA,'
      '  HR_FECHAMENTO = :HR_FECHAMENTO,'
      '  HR_FINALIZACAO = :HR_FINALIZACAO,'
      '  HR_INICIALIZACAO = :HR_INICIALIZACAO,'
      '  ID_CONTRATO = :ID_CONTRATO,'
      '  ID_MOTIVO_CHAMADO = :ID_MOTIVO_CHAMADO,'
      '  ID_TIPO_ATENDIMENTO = :ID_TIPO_ATENDIMENTO,'
      '  INFORMACOES = :INFORMACOES,'
      '  KM = :KM,'
      '  KM_FINAL = :KM_FINAL,'
      '  KM_INICIAL = :KM_INICIAL,'
      '  KM_RODADO = :KM_RODADO,'
      '  LOCAL_COBRANCA = :LOCAL_COBRANCA,'
      '  MAP_LAT = :MAP_LAT,'
      '  MAP_LONG = :MAP_LONG,'
      '  MECANICO = :MECANICO,'
      '  MED_BIELA = :MED_BIELA,'
      '  MED_CARCACA = :MED_CARCACA,'
      '  MED_CILINDRO = :MED_CILINDRO,'
      '  MED_VIRABREQUIM = :MED_VIRABREQUIM,'
      '  MOTOR = :MOTOR,'
      '  NATUREZA = :NATUREZA,'
      '  NF = :NF,'
      '  NOME = :NOME,'
      '  NOME_DEFEITO = :NOME_DEFEITO,'
      '  NOME_FORMA = :NOME_FORMA,'
      '  NOME_MECANICO = :NOME_MECANICO,'
      '  NOME_MOTOR = :NOME_MOTOR,'
      '  NOME_NATUREZA = :NOME_NATUREZA,'
      '  NOME_PROPRIEDADE = :NOME_PROPRIEDADE,'
      '  NOME_VIAJANTE = :NOME_VIAJANTE,'
      '  NUMERO_VENDA = :NUMERO_VENDA,'
      '  OBS_FECHAMENTO = :OBS_FECHAMENTO,'
      '  ORCAMENTO = :ORCAMENTO,'
      '  OS_RECHAMADO = :OS_RECHAMADO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PLACA = :PLACA,'
      '  PREVENTIVO = :PREVENTIVO,'
      '  PRIORIDADE = :PRIORIDADE,'
      '  PRODUTO = :PRODUTO,'
      '  PROPRIEDADE = :PROPRIEDADE,'
      '  PROTOCOLO = :PROTOCOLO,'
      '  SERIE = :SERIE,'
      '  TEMPO_RESPOSTA = :TEMPO_RESPOSTA,'
      '  TIPO_ATENDIMENTO = :TIPO_ATENDIMENTO,'
      '  TIPO_DOCTO = :TIPO_DOCTO,'
      '  TIPO_TECNICO = :TIPO_TECNICO,'
      '  TOTAL = :TOTAL,'
      '  VEICULO = :VEICULO,'
      '  VENDA = :VENDA,'
      '  VIAJANTE = :VIAJANTE,'
      '  VLR_ENTRADA = :VLR_ENTRADA,'
      '  VLR_PARC_LC = :VLR_PARC_LC'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'OFC_ORDEM_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 680
    Top = 43
    object OrdemCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"OFC_ORDEM_SERVICO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object OrdemCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_ORDEM_SERVICO"."CODIGO"'
      Required = True
    end
    object OrdemCHASSI: TIBStringField
      DisplayLabel = 'Chassi'
      FieldName = 'CHASSI'
      Origin = '"OFC_ORDEM_SERVICO"."CHASSI"'
      Size = 30
    end
    object OrdemCLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = '"OFC_ORDEM_SERVICO"."CLIENTE"'
      Size = 50
    end
    object OrdemDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"OFC_ORDEM_SERVICO"."DATA"'
    end
    object OrdemDESC_ACRESC: TFloatField
      DisplayLabel = 'Desc/Acr'#233'sc'
      FieldName = 'DESC_ACRESC'
      Origin = '"OFC_ORDEM_SERVICO"."DESC_ACRESC"'
      DisplayFormat = '###,###,##0.00'
    end
    object OrdemENTRADA: TDateTimeField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      Origin = '"OFC_ORDEM_SERVICO"."ENTRADA"'
    end
    object OrdemDT_ATRIBUICAO: TDateTimeField
      FieldName = 'DT_ATRIBUICAO'
      Origin = '"OFC_ORDEM_SERVICO"."DT_ATRIBUICAO"'
    end
    object OrdemFECHADO: TIBStringField
      DisplayLabel = 'Fechado'
      FieldName = 'FECHADO'
      Origin = '"OFC_ORDEM_SERVICO"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object OrdemHISTORICO: TIBStringField
      DisplayLabel = 'Historico'
      FieldName = 'HISTORICO'
      Origin = '"OFC_ORDEM_SERVICO"."HISTORICO"'
      Size = 100
    end
    object OrdemINFORMACOES: TBlobField
      DisplayLabel = 'Informa'#231#245'es'
      FieldName = 'INFORMACOES'
      Origin = '"OFC_ORDEM_SERVICO"."INFORMACOES"'
      Size = 8
    end
    object OrdemMECANICO: TIntegerField
      DisplayLabel = 'Mec'#226'nico'
      FieldName = 'MECANICO'
      Origin = '"OFC_ORDEM_SERVICO"."MECANICO"'
      Required = True
    end
    object OrdemNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"OFC_ORDEM_SERVICO"."NATUREZA"'
    end
    object OrdemNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"OFC_ORDEM_SERVICO"."NOME"'
      Size = 50
    end
    object OrdemPESSOA_FJ: TIntegerField
      DisplayLabel = 'Pessoa F/J'
      FieldName = 'PESSOA_FJ'
      Origin = '"OFC_ORDEM_SERVICO"."PESSOA_FJ"'
      Required = True
    end
    object OrdemTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"OFC_ORDEM_SERVICO"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object OrdemVIAJANTE: TIntegerField
      DisplayLabel = 'Viajante'
      FieldName = 'VIAJANTE'
      Origin = '"OFC_ORDEM_SERVICO"."VIAJANTE"'
    end
    object OrdemNOME_NATUREZA: TIBStringField
      DisplayLabel = 'Natureza'
      FieldName = 'NOME_NATUREZA'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_NATUREZA"'
      Size = 50
    end
    object OrdemNOME_MECANICO: TIBStringField
      DisplayLabel = 'Mec'#226'nico'
      FieldName = 'NOME_MECANICO'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_MECANICO"'
      Size = 50
    end
    object OrdemNOME_VIAJANTE: TIBStringField
      DisplayLabel = 'Viajante'
      FieldName = 'NOME_VIAJANTE'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_VIAJANTE"'
      Size = 50
    end
    object OrdemLiquido: TFloatField
      DisplayLabel = 'Liqu'#237'do'
      FieldKind = fkCalculated
      FieldName = 'Liquido'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object OrdemMOTOR: TIntegerField
      FieldName = 'MOTOR'
      Origin = '"OFC_ORDEM_SERVICO"."MOTOR"'
    end
    object OrdemNOME_MOTOR: TIBStringField
      FieldName = 'NOME_MOTOR'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_MOTOR"'
      Size = 50
    end
    object OrdemENVIADA_CAIXA: TIBStringField
      FieldName = 'ENVIADA_CAIXA'
      Origin = '"OFC_ORDEM_SERVICO"."ENVIADA_CAIXA"'
      FixedChar = True
      Size = 1
    end
    object OrdemPLACA: TIBStringField
      DisplayLabel = 'Placa'
      FieldName = 'PLACA'
      Origin = '"OFC_ORDEM_SERVICO"."PLACA"'
      FixedChar = True
      Size = 8
    end
    object OrdemDATA_FECHAMENTO: TDateTimeField
      DisplayLabel = 'Data Fechamento'
      FieldName = 'DATA_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."DATA_FECHAMENTO"'
    end
    object OrdemOBS_FECHAMENTO: TBlobField
      DisplayLabel = 'Obs'
      FieldName = 'OBS_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."OBS_FECHAMENTO"'
      Size = 8
    end
    object OrdemFORMA_PAGTO: TIntegerField
      DisplayLabel = 'Forma Pagto'
      FieldName = 'FORMA_PAGTO'
      Origin = '"OFC_ORDEM_SERVICO"."FORMA_PAGTO"'
    end
    object OrdemNOME_FORMA: TIBStringField
      DisplayLabel = 'Nome Forma'
      FieldName = 'NOME_FORMA'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_FORMA"'
      Size = 50
    end
    object OrdemTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"OFC_ORDEM_SERVICO"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object OrdemLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"OFC_ORDEM_SERVICO"."LOCAL_COBRANCA"'
    end
    object OrdemTOTAL_PARCELAR: TFloatField
      DisplayLabel = 'Total a Parcelar'
      FieldKind = fkCalculated
      FieldName = 'TOTAL_PARCELAR'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object OrdemDiferenca: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Diferenca'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object OrdemVLR_PARC_LC: TFloatField
      DisplayLabel = 'Parcelado'
      FieldName = 'VLR_PARC_LC'
      Origin = '"OFC_ORDEM_SERVICO"."VLR_PARC_LC"'
      DisplayFormat = '###,###,##0.00'
    end
    object OrdemAVISTA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AVISTA'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object OrdemVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
      Origin = '"OFC_ORDEM_SERVICO"."VLR_ENTRADA"'
      DisplayFormat = '###,###,##0.00'
    end
    object OrdemCREDITOS: TFloatField
      FieldName = 'CREDITOS'
      Origin = '"OFC_ORDEM_SERVICO"."CREDITOS"'
      DisplayFormat = '###,###,##0.00'
    end
    object OrdemDEBITOS: TFloatField
      FieldName = 'DEBITOS'
      Origin = '"OFC_ORDEM_SERVICO"."DEBITOS"'
      DisplayFormat = '###,###,##0.00'
    end
    object OrdemNF: TIntegerField
      FieldName = 'NF'
      Origin = '"OFC_ORDEM_SERVICO"."NF"'
    end
    object OrdemA_VISTA: TStringField
      FieldKind = fkCalculated
      FieldName = 'A_VISTA'
      Size = 1
      Calculated = True
    end
    object OrdemMED_VIRABREQUIM: TIBStringField
      FieldName = 'MED_VIRABREQUIM'
      Origin = '"OFC_ORDEM_SERVICO"."MED_VIRABREQUIM"'
    end
    object OrdemMED_BIELA: TIBStringField
      FieldName = 'MED_BIELA'
      Origin = '"OFC_ORDEM_SERVICO"."MED_BIELA"'
    end
    object OrdemMED_CILINDRO: TIBStringField
      FieldName = 'MED_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."MED_CILINDRO"'
    end
    object OrdemMED_CARCACA: TIBStringField
      FieldName = 'MED_CARCACA'
      Origin = '"OFC_ORDEM_SERVICO"."MED_CARCACA"'
    end
    object OrdemORCAMENTO: TIntegerField
      FieldName = 'ORCAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."ORCAMENTO"'
    end
    object OrdemNUMERO_VENDA: TIntegerField
      FieldName = 'NUMERO_VENDA'
      Origin = '"OFC_ORDEM_SERVICO"."NUMERO_VENDA"'
    end
    object OrdemDEFEITO_RECLAMADO: TIntegerField
      FieldName = 'DEFEITO_RECLAMADO'
      Origin = '"OFC_ORDEM_SERVICO"."DEFEITO_RECLAMADO"'
    end
    object OrdemCONDICAO_FINAL_EQUIPAMENTO: TIBStringField
      FieldName = 'CONDICAO_FINAL_EQUIPAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."CONDICAO_FINAL_EQUIPAMENTO"'
      Size = 50
    end
    object OrdemHORA_CHEGADA: TTimeField
      FieldName = 'HORA_CHEGADA'
      Origin = '"OFC_ORDEM_SERVICO"."HORA_CHEGADA"'
    end
    object OrdemHORA_SAIDA: TTimeField
      FieldName = 'HORA_SAIDA'
      Origin = '"OFC_ORDEM_SERVICO"."HORA_SAIDA"'
    end
    object OrdemCONTADOR_TOTAL: TFloatField
      FieldName = 'CONTADOR_TOTAL'
      Origin = '"OFC_ORDEM_SERVICO"."CONTADOR_TOTAL"'
    end
    object OrdemCONTADOR_CILINDRO: TFloatField
      FieldName = 'CONTADOR_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."CONTADOR_CILINDRO"'
    end
    object OrdemCONTADOR_REVELADOR: TFloatField
      FieldName = 'CONTADOR_REVELADOR'
      Origin = '"OFC_ORDEM_SERVICO"."CONTADOR_REVELADOR"'
    end
    object OrdemNOME_DEFEITO: TIBStringField
      FieldName = 'NOME_DEFEITO'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_DEFEITO"'
      Size = 50
    end
    object OrdemPROPRIEDADE: TIntegerField
      FieldName = 'PROPRIEDADE'
      Origin = '"OFC_ORDEM_SERVICO"."PROPRIEDADE"'
    end
    object OrdemNOME_PROPRIEDADE: TIBStringField
      FieldName = 'NOME_PROPRIEDADE'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_PROPRIEDADE"'
      Size = 50
    end
    object OrdemTIPO_ATENDIMENTO: TIBStringField
      DisplayLabel = 'Tipo Atendimento'
      FieldName = 'TIPO_ATENDIMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."TIPO_ATENDIMENTO"'
      Size = 50
    end
    object OrdemCAUSA_CHAMADO: TIBStringField
      FieldName = 'CAUSA_CHAMADO'
      Origin = '"OFC_ORDEM_SERVICO"."CAUSA_CHAMADO"'
      Size = 200
    end
    object OrdemCONTADOR_COR: TFloatField
      FieldName = 'CONTADOR_COR'
      Origin = '"OFC_ORDEM_SERVICO"."CONTADOR_COR"'
    end
    object OrdemCONTADOR_PRETO: TFloatField
      FieldName = 'CONTADOR_PRETO'
      Origin = '"OFC_ORDEM_SERVICO"."CONTADOR_PRETO"'
    end
    object OrdemCONTADOR_IMPRESSAO: TFloatField
      FieldName = 'CONTADOR_IMPRESSAO'
      Origin = '"OFC_ORDEM_SERVICO"."CONTADOR_IMPRESSAO"'
    end
    object OrdemVENDA: TIntegerField
      FieldName = 'VENDA'
      Origin = '"OFC_ORDEM_SERVICO"."VENDA"'
    end
    object OrdemALIQUOTA_ISS: TFloatField
      FieldName = 'ALIQUOTA_ISS'
      Origin = '"OFC_ORDEM_SERVICO"."ALIQUOTA_ISS"'
    end
    object OrdemPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"OFC_ORDEM_SERVICO"."PRODUTO"'
      Size = 15
    end
    object OrdemID_MOTIVO_CHAMADO: TIntegerField
      FieldName = 'ID_MOTIVO_CHAMADO'
      Origin = '"OFC_ORDEM_SERVICO"."ID_MOTIVO_CHAMADO"'
    end
    object OrdemID_TIPO_ATENDIMENTO: TIntegerField
      FieldName = 'ID_TIPO_ATENDIMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."ID_TIPO_ATENDIMENTO"'
    end
    object OrdemCOD_STATUS: TIntegerField
      FieldName = 'COD_STATUS'
      Origin = '"OFC_ORDEM_SERVICO"."COD_STATUS"'
    end
    object OrdemHR_INICIALIZACAO: TTimeField
      FieldName = 'HR_INICIALIZACAO'
      Origin = '"OFC_ORDEM_SERVICO"."HR_INICIALIZACAO"'
    end
    object OrdemDT_FINALIZACAO: TDateTimeField
      FieldName = 'DT_FINALIZACAO'
      Origin = '"OFC_ORDEM_SERVICO"."DT_FINALIZACAO"'
    end
    object OrdemHR_FINALIZACAO: TTimeField
      FieldName = 'HR_FINALIZACAO'
      Origin = '"OFC_ORDEM_SERVICO"."HR_FINALIZACAO"'
    end
    object OrdemDT_INICIALIZACAO: TDateTimeField
      FieldName = 'DT_INICIALIZACAO'
      Origin = '"OFC_ORDEM_SERVICO"."DT_INICIALIZACAO"'
    end
    object OrdemHR_ENTRADA: TTimeField
      FieldName = 'HR_ENTRADA'
      Origin = '"OFC_ORDEM_SERVICO"."HR_ENTRADA"'
    end
    object OrdemHR_ATRIBUICAO: TTimeField
      FieldName = 'HR_ATRIBUICAO'
      Origin = '"OFC_ORDEM_SERVICO"."HR_ATRIBUICAO"'
    end
    object OrdemCT_REVELADOR: TIntegerField
      FieldName = 'CT_REVELADOR'
      Origin = '"OFC_ORDEM_SERVICO"."CT_REVELADOR"'
    end
    object OrdemDT_REVELADOR: TDateTimeField
      FieldName = 'DT_REVELADOR'
      Origin = '"OFC_ORDEM_SERVICO"."DT_REVELADOR"'
    end
    object OrdemDT_CILINDRO: TDateTimeField
      FieldName = 'DT_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."DT_CILINDRO"'
    end
    object OrdemCT_CILINDRO: TIntegerField
      FieldName = 'CT_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."CT_CILINDRO"'
    end
    object OrdemKM_INICIAL: TFloatField
      FieldName = 'KM_INICIAL'
      Origin = '"OFC_ORDEM_SERVICO"."KM_INICIAL"'
    end
    object OrdemKM_FINAL: TFloatField
      FieldName = 'KM_FINAL'
      Origin = '"OFC_ORDEM_SERVICO"."KM_FINAL"'
    end
    object OrdemHR_FECHAMENTO: TTimeField
      FieldName = 'HR_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."HR_FECHAMENTO"'
    end
    object OrdemTEMPO_RESPOSTA: TFloatField
      FieldName = 'TEMPO_RESPOSTA'
      Origin = '"OFC_ORDEM_SERVICO"."TEMPO_RESPOSTA"'
    end
    object OrdemOS_RECHAMADO: TIntegerField
      FieldName = 'OS_RECHAMADO'
      Origin = '"OFC_ORDEM_SERVICO"."OS_RECHAMADO"'
    end
    object OrdemKM_RODADO: TFloatField
      FieldName = 'KM_RODADO'
      Origin = '"OFC_ORDEM_SERVICO"."KM_RODADO"'
    end
    object OrdemHORAS_TRABALHADAS: TFloatField
      FieldName = 'HORAS_TRABALHADAS'
      Origin = '"OFC_ORDEM_SERVICO"."HORAS_TRABALHADAS"'
    end
    object OrdemTIPO_TECNICO: TIBStringField
      FieldName = 'TIPO_TECNICO'
      Origin = '"OFC_ORDEM_SERVICO"."TIPO_TECNICO"'
      FixedChar = True
      Size = 1
    end
    object OrdemPREVENTIVO: TIBStringField
      FieldName = 'PREVENTIVO'
      Origin = '"OFC_ORDEM_SERVICO"."PREVENTIVO"'
      FixedChar = True
      Size = 1
    end
    object OrdemID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Origin = '"OFC_ORDEM_SERVICO"."ID_CONTRATO"'
    end
    object OrdemCOD_CONTATO: TIntegerField
      FieldName = 'COD_CONTATO'
      Origin = '"OFC_ORDEM_SERVICO"."COD_CONTATO"'
    end
    object OrdemPRIORIDADE: TIntegerField
      FieldName = 'PRIORIDADE'
      Origin = '"OFC_ORDEM_SERVICO"."PRIORIDADE"'
    end
    object OrdemCUSTO_OS: TFloatField
      FieldName = 'CUSTO_OS'
      Origin = '"OFC_ORDEM_SERVICO"."CUSTO_OS"'
    end
    object OrdemCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Origin = '"OFC_ORDEM_SERVICO"."CONTROLE"'
    end
    object OrdemASSUNTO: TIBStringField
      FieldName = 'ASSUNTO'
      Origin = '"OFC_ORDEM_SERVICO"."ASSUNTO"'
      Size = 200
    end
    object OrdemVEICULO: TIntegerField
      FieldName = 'VEICULO'
      Origin = '"OFC_ORDEM_SERVICO"."VEICULO"'
    end
    object OrdemKM: TIntegerField
      FieldName = 'KM'
      Origin = '"OFC_ORDEM_SERVICO"."KM"'
    end
    object OrdemCOD_GRAVIDADE: TIntegerField
      FieldName = 'COD_GRAVIDADE'
      Origin = '"OFC_ORDEM_SERVICO"."COD_GRAVIDADE"'
    end
    object OrdemPROTOCOLO: TIBStringField
      FieldName = 'PROTOCOLO'
      Origin = '"OFC_ORDEM_SERVICO"."PROTOCOLO"'
      Size = 15
    end
    object OrdemGCNPJ: TIBStringField
      FieldName = 'GCNPJ'
      Origin = '"OFC_GRAVIDADE"."CNPJ"'
      FixedChar = True
      Size = 14
    end
    object OrdemGCODIGO: TIntegerField
      FieldName = 'GCODIGO'
      Origin = '"OFC_GRAVIDADE"."CODIGO"'
    end
    object OrdemTITULO: TIBStringField
      FieldName = 'TITULO'
      Origin = '"OFC_GRAVIDADE"."TITULO"'
      Size = 30
    end
    object OrdemST_FECHADO: TIBStringField
      FieldName = 'ST_FECHADO'
      Origin = '"OFC_STATUS"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object OrdemMAP_LAT: TIBStringField
      FieldName = 'MAP_LAT'
      Origin = '"OFC_ORDEM_SERVICO"."MAP_LAT"'
      Size = 200
    end
    object OrdemMAP_LONG: TIBStringField
      FieldName = 'MAP_LONG'
      Origin = '"OFC_ORDEM_SERVICO"."MAP_LONG"'
      Size = 200
    end
    object OrdemTAG: TIBStringField
      FieldName = 'TAG'
      Origin = '"OFC_ORDEM_SERVICO"."TAG"'
      FixedChar = True
      Size = 1
    end
    object OrdemSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"OFC_ORDEM_SERVICO"."SERIE"'
      Size = 30
    end
  end
  object OrdemItens: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from OFC_ORDEM_SERVICO_SERVICO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO')
    RefreshSQL.Strings = (
      'select osi.cnpj,'
      '  osi.codigo,'
      '  osi.nome,'
      '  osi.quantidade,'
      '  osi.servico,'
      '  osi.unitario,'
      '  osi.selecionado,'
      '  prd.codigo as cod_produto,'
      '  osi.codigo_tecnico,'
      '  prd.nome nome_produto,'
      '  tec.nome as nometec,'
      'case prd.servico'
      '                         when '#39'S'#39' then '#39'Servi'#231'o'#39
      '                         else '#39'Produto'#39
      '                       end tipo_servico'
      ''
      'from ofc_ordem_servico_servico osi'
      
        'left join est_produtos prd on (prd.cnpj = osi.cnpj and osi.produ' +
        'to = prd.codigo)'
      
        'left join ofc_mecanicos  tec on(tec.codigo = osi.codigo_tecnico ' +
        'and osi.cnpj = tec.cnpj)'
      'where '
      '  osi.CNPJ = :OLD_CNPJ and'
      '  osi.CODIGO = :OLD_CODIGO and'
      '  osi.PRODUTO = :OLD_PRODUTO')
    SelectSQL.Strings = (
      'select osi.cnpj,'
      '  osi.codigo,'
      '  osi.nome,'
      '  osi.quantidade,'
      '  osi.servico,'
      '  osi.unitario,'
      '  osi.selecionado,'
      '  prd.codigo as cod_produto,'
      '  osi.codigo_tecnico,'
      '  prd.nome nome_produto,'
      '  tec.nome as nometec,'
      'case prd.servico'
      '                         when '#39'S'#39' then '#39'Servi'#231'o'#39
      '                         else '#39'Produto'#39
      '                       end tipo_servico'
      ''
      'from ofc_ordem_servico_servico osi'
      
        'left join est_produtos prd on (prd.cnpj = osi.cnpj and osi.produ' +
        'to = prd.codigo)'
      
        'left join ofc_mecanicos  tec on(tec.codigo = osi.codigo_tecnico ' +
        'and osi.cnpj = tec.cnpj)'
      'where osi.cnpj = :cnpj and osi.codigo = :codigo')
    DataSource = DataSource
    Left = 718
    Top = 44
    object OrdemItensCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object OrdemItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."CODIGO"'
      Required = True
      DisplayFormat = 'C'#243'digo'
    end
    object OrdemItensNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."NOME"'
      Size = 50
    end
    object OrdemItensQUANTIDADE: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'QUANTIDADE'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."QUANTIDADE"'
      DisplayFormat = '###,###,##0.00'
    end
    object OrdemItensSERVICO: TIntegerField
      DisplayLabel = 'Sevi'#231'o'
      FieldName = 'SERVICO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."SERVICO"'
    end
    object OrdemItensUNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'UNITARIO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."UNITARIO"'
      DisplayFormat = '###,###,##0.00'
    end
    object OrdemItensSELECIONADO: TIBStringField
      DisplayLabel = 'Sel'
      FieldName = 'SELECIONADO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object OrdemItensCOD_PRODUTO: TIBStringField
      DisplayLabel = 'C'#243'd. Item'
      FieldName = 'COD_PRODUTO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Size = 15
    end
    object OrdemItensNOME_PRODUTO: TIBStringField
      DisplayLabel = 'Item'
      FieldName = 'NOME_PRODUTO'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object OrdemItensTIPO_SERVICO: TIBStringField
      DisplayLabel = 'Tp. Servi'#231'o'
      FieldName = 'TIPO_SERVICO'
      FixedChar = True
      Size = 7
    end
    object OrdemItensTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object OrdemItensNOMETEC: TIBStringField
      DisplayLabel = 'Nome T'#233'cnico'
      FieldName = 'NOMETEC'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object OrdemItensCODIGO_TECNICO: TIntegerField
      FieldName = 'CODIGO_TECNICO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."CODIGO_TECNICO"'
    end
  end
end
