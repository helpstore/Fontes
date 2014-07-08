object FrmContratoConstru: TFrmContratoConstru
  Left = 392
  Top = 128
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Contrato de Obras'
  ClientHeight = 574
  ClientWidth = 755
  Color = 15396334
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
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
    Width = 755
    Height = 548
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
      Top = 544
      Width = 751
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 751
      Height = 542
      Align = alClient
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 751
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 0
        object b2: TBevel
          Left = 8
          Top = 35
          Width = 272
          Height = 2
          Shape = bsTopLine
        end
        object LblTitulo: TcxLabel
          Left = 9
          Top = 8
          Caption = 'Contrato de Obras'
          ParentFont = False
          Transparent = True
        end
      end
      object PgcPrincipal: TcxPageControl
        Left = 0
        Top = 41
        Width = 751
        Height = 501
        ActivePage = tbsFinanceiro
        Align = alClient
        TabOrder = 1
        ClientRectBottom = 496
        ClientRectLeft = 2
        ClientRectRight = 746
        ClientRectTop = 24
        object tbsGeral: TcxTabSheet
          Caption = 'Dados Gerais'
          ImageIndex = 0
          object Panel3: TPanel
            Left = -1
            Top = 236
            Width = 745
            Height = 187
            Caption = 'Panel3'
            TabOrder = 0
            object GridItens: TcxGrid
              Left = 1
              Top = 1
              Width = 743
              Height = 185
              Align = alClient
              TabOrder = 0
              LookAndFeel.Kind = lfOffice11
              LookAndFeel.NativeStyle = True
              object TVItes: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = DsItens
                DataController.Summary.DefaultGroupSummaryItems = <
                  item
                    Kind = skCount
                    Position = spFooter
                  end
                  item
                    Kind = skCount
                  end>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Kind = skCount
                  end>
                DataController.Summary.SummaryGroups = <>
                OptionsCustomize.ColumnFiltering = False
                OptionsCustomize.ColumnGrouping = False
                OptionsView.Navigator = True
                OptionsView.Footer = True
                OptionsView.GridLineColor = clHotLight
                OptionsView.GroupByBox = False
                OptionsView.GroupFooters = gfAlwaysVisible
                OptionsView.GroupRowStyle = grsOffice11
                object TVItesCODIGO: TcxGridDBColumn
                  DataBinding.FieldName = 'CODIGO'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Properties.ReadOnly = True
                  Styles.Content = cxStyle1
                  Width = 40
                end
                object TVItesDESCRICAO: TcxGridDBColumn
                  DataBinding.FieldName = 'DESCRICAO'
                  Width = 266
                end
                object TVItesVALOR: TcxGridDBColumn
                  DataBinding.FieldName = 'VALOR'
                  PropertiesClassName = 'TcxCurrencyEditProperties'
                end
                object TVItesDATA_INICIO: TcxGridDBColumn
                  DataBinding.FieldName = 'DATA_INICIO'
                  Width = 100
                end
                object TVItesDATA_VENCTO: TcxGridDBColumn
                  DataBinding.FieldName = 'DATA_VENCTO'
                  Width = 94
                end
                object TVItesCOD_CONTRATO: TcxGridDBColumn
                  DataBinding.FieldName = 'COD_CONTRATO'
                  Visible = False
                end
                object TVItesDATA: TcxGridDBColumn
                  DataBinding.FieldName = 'DATA'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.ReadOnly = True
                  Styles.Content = cxStyle1
                  Width = 68
                end
                object TVItesATIVO: TcxGridDBColumn
                  DataBinding.FieldName = 'ATIVO'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Width = 41
                end
                object TVItesPROVISIONADO: TcxGridDBColumn
                  DataBinding.FieldName = 'PROVISIONADO'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Width = 29
                end
              end
              object LVItens: TcxGridLevel
                Caption = 'LVItens'
                GridView = TVItes
              end
            end
          end
          object cxLabel1: TcxLabel
            Left = 0
            Top = 219
            Caption = 'Itens do Contrato'
            ParentFont = False
            Transparent = True
          end
          object GroupBox1: TGroupBox
            Left = 0
            Top = 0
            Width = 744
            Height = 212
            Align = alTop
            TabOrder = 2
            object Label4: TcxLabel
              Left = 64
              Top = 16
              Caption = 'Cliente'
              ParentFont = False
              Transparent = True
            end
            object Label2: TcxLabel
              Left = 104
              Top = 96
              Caption = 'Dt. Vencimento'
              ParentFont = False
              Transparent = True
            end
            object Label1: TcxLabel
              Left = 8
              Top = 96
              Caption = 'Dt. Inicio'
              ParentFont = False
              Transparent = True
            end
            object Label6: TcxLabel
              Left = 8
              Top = 56
              Caption = 'Descri'#231#227'o'
              ParentFont = False
              Transparent = True
            end
            object Label14: TcxLabel
              Left = 8
              Top = 136
              Caption = 'Informa'#231#245'es'
              ParentFont = False
              Transparent = True
            end
            object Label13: TcxLabel
              Left = 200
              Top = 96
              Caption = 'Valor'
              ParentFont = False
              Transparent = True
            end
            object Label5: TcxLabel
              Left = 648
              Top = 16
              Caption = 'Dt. Cadastro'
              ParentFont = False
              Transparent = True
            end
            object Label7: TcxLabel
              Left = 8
              Top = 16
              Caption = 'C'#243'digo'
              ParentFont = False
              Transparent = True
            end
            object DtFim: TdxDBDateEdit
              Left = 104
              Top = 112
              Width = 92
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
              OnEnter = EdCodigoEnter
              OnExit = DtFimExit
              OnKeyDown = EdCodigoKeyDown
              DataField = 'DATA_VENCTO'
              DataSource = DataSource
              DateValidation = True
              UseEditMask = True
              StoredValues = 4
            end
            object DtInicio: TdxDBDateEdit
              Left = 8
              Top = 112
              Width = 91
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
              OnEnter = EdCodigoEnter
              OnExit = cmbClienteExit
              OnKeyDown = EdCodigoKeyDown
              DataField = 'DATA_INICIO'
              DataSource = DataSource
              DateValidation = True
              UseEditMask = True
              StoredValues = 4
            end
            object cmbCliente: TdxDBLookupEdit
              Left = 64
              Top = 32
              Width = 578
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
              TabOrder = 1
              OnEnter = EdCodigoEnter
              OnExit = cmbClienteExit
              OnKeyDown = EdCodigoKeyDown
              DataField = 'PESSOA_FJ'
              DataSource = DataSource
              ReadOnly = False
              ClearKey = 46
              ListFieldName = 'NOME_RAZAO;CPF_CGC'
              Revertable = True
              KeyFieldName = 'CPF_CGC'
              ListSource = dsCliente
              LookupKeyValue = Null
              StoredValues = 64
            end
            object cbEtiqueta: TdxDBCheckEdit
              Left = 648
              Top = 72
              Width = 52
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = xbsNone
              Style.ButtonStyle = btsSimple
              TabOrder = 4
              OnEnter = EdCodigoEnter
              OnExit = cmbClienteExit
              OnKeyDown = EdCodigoKeyDown
              Alignment = taLeftJustify
              Caption = 'Ativo'
              DataField = 'ATIVO'
              DataSource = DataSource
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              StoredValues = 1
            end
            object dxDBMemo1: TdxDBMemo
              Left = 8
              Top = 152
              Width = 733
              Hint = 'Porque 2 observacoes?'
              ParentColor = True
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 8
              OnEnter = EdCodigoEnter
              OnExit = cmbClienteExit
              CharCase = ecUpperCase
              DataField = 'OBS'
              DataSource = DataSource
              Height = 49
            end
            object dxDBDateEdit1: TdxDBDateEdit
              Left = 648
              Top = 32
              Width = 91
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
              OnEnter = EdCodigoEnter
              OnExit = cmbClienteExit
              OnKeyDown = EdCodigoKeyDown
              DataField = 'DATA'
              DataSource = DataSource
              DateValidation = True
              UseEditMask = True
              StoredValues = 4
            end
            object dxDBEdit1: TdxDBEdit
              Left = 8
              Top = 32
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
              TabOrder = 0
              CharCase = ecUpperCase
              DataField = 'CODIGO'
              DataSource = DataSource
            end
            object dxDBCalcEdit1: TdxDBCalcEdit
              Left = 200
              Top = 112
              Width = 161
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
              OnEnter = EdCodigoEnter
              OnExit = cmbClienteExit
              OnKeyDown = EdCodigoKeyDown
              DataField = 'TOTAL_2'
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
            end
            object cxDBTextEdit1: TcxDBTextEdit
              Left = 8
              Top = 72
              DataBinding.DataField = 'DESCRICAO'
              DataBinding.DataSource = DataSource
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Width = 633
            end
            object DBRadioGroup1: TDBRadioGroup
              Left = 365
              Top = 96
              Width = 276
              Height = 49
              Caption = 'Vinculo Contratual'
              Columns = 3
              DataField = 'VINCULO_CONTRATO'
              DataSource = DataSource
              Items.Strings = (
                'Municipal'
                'Estadual'
                'Federal')
              TabOrder = 17
              Values.Strings = (
                '0'
                '1'
                '2')
            end
          end
        end
        object tbsFinanceiro: TcxTabSheet
          Caption = 'Par'#226'metros Financeiros'
          ImageIndex = 1
          object cxGroupBox1: TcxGroupBox
            Left = 5
            Top = 5
            Caption = #205'ndices e Percentuais'
            TabOrder = 0
            Height = 154
            Width = 733
            object cxLabel9: TcxLabel
              Left = 8
              Top = 18
              Caption = 'INSS (%)'
              ParentFont = False
              Transparent = True
            end
            object dxDBCalcEdit14: TdxDBCalcEdit
              Left = 8
              Top = 34
              Width = 70
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
              TabOrder = 0
              DataField = 'PCT_INSS'
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
            end
            object dxDBCalcEdit8: TdxDBCalcEdit
              Left = 156
              Top = 34
              Width = 70
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
              DataField = 'PCT_IRPJ'
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
            end
            object cxLabel11: TcxLabel
              Left = 155
              Top = 18
              Caption = 'IRPJ (%)'
              ParentFont = False
              Transparent = True
            end
            object dxDBCalcEdit21: TdxDBCalcEdit
              Left = 229
              Top = 34
              Width = 70
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
              DataField = 'PCT_PIS'
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
            end
            object cxLabel13: TcxLabel
              Left = 229
              Top = 17
              Caption = 'PIS (%)'
              ParentFont = False
              Transparent = True
            end
            object dxDBCalcEdit22: TdxDBCalcEdit
              Left = 83
              Top = 34
              Width = 70
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
              DataField = 'PCT_ISS'
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
            end
            object cxLabel16: TcxLabel
              Left = 83
              Top = 18
              Caption = 'ISS (%)'
              ParentFont = False
              Transparent = True
            end
            object dxDBCalcEdit23: TdxDBCalcEdit
              Left = 301
              Top = 34
              Width = 70
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
              TabOrder = 8
              DataField = 'PCT_COFINS'
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
            end
            object cxLabel17: TcxLabel
              Left = 301
              Top = 17
              Caption = 'COFINS (%)'
              ParentFont = False
              Transparent = True
            end
            object dxDBCalcEdit24: TdxDBCalcEdit
              Left = 373
              Top = 34
              Width = 70
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
              TabOrder = 9
              DataField = 'PCT_CSLL'
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
            end
            object cxLabel19: TcxLabel
              Left = 373
              Top = 17
              Caption = 'CSLL (%)'
              ParentFont = False
              Transparent = True
            end
            object dxDBCalcEdit25: TdxDBCalcEdit
              Left = 83
              Top = 74
              Width = 70
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
              DataField = 'BASE_ISS_MUN'
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
            end
            object dxDBCalcEdit26: TdxDBCalcEdit
              Left = 83
              Top = 114
              Width = 70
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
              DataField = 'BASE_ISS_NAC'
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
            end
            object cxLabel22: TcxLabel
              Left = 8
              Top = 98
              Caption = 'B. Calc. Nac.'
              ParentFont = False
              Transparent = True
            end
            object dxDBCalcEdit27: TdxDBCalcEdit
              Left = 8
              Top = 114
              Width = 70
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
              DataField = 'BASE_INSS_NAC'
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
            end
            object dxDBCalcEdit28: TdxDBCalcEdit
              Left = 8
              Top = 74
              Width = 70
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
              DataField = 'BASE_INSS_MUN'
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
            end
            object cxLabel24: TcxLabel
              Left = 8
              Top = 58
              Caption = 'B. Calc. Mun.'
              ParentFont = False
              Transparent = True
            end
            object cxLabel2: TcxLabel
              Left = 83
              Top = 58
              Caption = 'B. Calc. Mun.'
              ParentFont = False
              Transparent = True
            end
            object cxLabel3: TcxLabel
              Left = 83
              Top = 98
              Caption = 'B. Calc. Nac.'
              ParentFont = False
              Transparent = True
            end
            object cxGroupBox2: TcxGroupBox
              Left = 158
              Top = 61
              PanelStyle.Active = True
              TabOrder = 20
              Height = 83
              Width = 570
              object cxLabel4: TcxLabel
                Left = 8
                Top = 2
                Caption = 'Vlr. INSS R$'
                ParentFont = False
                Transparent = True
              end
              object dxDBCalcEdit2: TdxDBCalcEdit
                Left = 8
                Top = 18
                Width = 90
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
                DataField = 'VLR_INSS'
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
              end
              object dxDBCalcEdit3: TdxDBCalcEdit
                Left = 101
                Top = 18
                Width = 90
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
                DataField = 'VLR_IRPJ'
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
              end
              object cxLabel5: TcxLabel
                Left = 101
                Top = 2
                Caption = 'Vlr. IRPJ R$'
                ParentFont = False
                Transparent = True
              end
              object dxDBCalcEdit4: TdxDBCalcEdit
                Left = 287
                Top = 18
                Width = 90
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
                DataField = 'VLR_PIS'
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
              end
              object cxLabel6: TcxLabel
                Left = 287
                Top = 1
                Caption = 'Vlr. PIS R$'
                ParentFont = False
                Transparent = True
              end
              object dxDBCalcEdit5: TdxDBCalcEdit
                Left = 194
                Top = 18
                Width = 90
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
                DataField = 'VLR_ISS'
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
              end
              object cxLabel7: TcxLabel
                Left = 194
                Top = 2
                Caption = 'Vlr. ISS R$'
                ParentFont = False
                Transparent = True
              end
              object dxDBCalcEdit6: TdxDBCalcEdit
                Left = 378
                Top = 18
                Width = 90
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
                DataField = 'VLR_COFINS'
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
              end
              object cxLabel8: TcxLabel
                Left = 376
                Top = 1
                Caption = 'Vlr. COFINS R$'
                ParentFont = False
                Transparent = True
              end
              object dxDBCalcEdit7: TdxDBCalcEdit
                Left = 470
                Top = 17
                Width = 90
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
                DataField = 'VLR_CSLL'
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
              end
              object cxLabel10: TcxLabel
                Left = 471
                Top = 0
                Caption = 'Vlr. CSLL R$'
                ParentFont = False
                Transparent = True
              end
              object dxDBCalcEdit9: TdxDBCalcEdit
                Left = 9
                Top = 57
                Width = 90
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
                DataField = 'TOTAL_IMPOSTO'
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
              end
              object cxLabel12: TcxLabel
                Left = 7
                Top = 42
                Caption = 'Total Impostos R$'
                ParentFont = False
                Transparent = True
              end
            end
            object cxButton1: TcxButton
              Left = 606
              Top = 30
              Width = 122
              Height = 25
              Caption = 'Simular Parcelamento'
              TabOrder = 21
              OnClick = cxButton1Click
            end
          end
          object cxGroupBox3: TcxGroupBox
            Left = 5
            Top = 273
            Caption = 'Demonstrativo Financeiro - Contas '#224' Pagar'
            TabOrder = 1
            Height = 202
            Width = 735
            object GridParcelamento: TcxGrid
              Left = 3
              Top = 15
              Width = 729
              Height = 177
              Align = alClient
              TabOrder = 0
              LookAndFeel.Kind = lfOffice11
              LookAndFeel.NativeStyle = True
              object TVParcelamento: TcxGridDBBandedTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = dsParcelamento
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.GroupByBox = False
                OptionsView.BandHeaders = False
                Bands = <
                  item
                  end>
                object TVParcelamentoCODIGO: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'CODIGO'
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object TVParcelamentoCOD_CONTRATO: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'COD_CONTRATO'
                  Visible = False
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object TVParcelamentoDT_LANCTO: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'DT_LANCTO'
                  Width = 88
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object TVParcelamentoDT_VENCTO: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'DT_VENCTO'
                  Width = 95
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object TVParcelamentoVALOR: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'VALOR'
                  Position.BandIndex = 0
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
                object TVParcelamentoCOD_PAGAR: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'COD_PAGAR'
                  Position.BandIndex = 0
                  Position.ColIndex = 7
                  Position.RowIndex = 0
                end
                object TVParcelamentoEMPRESA: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'EMPRESA'
                  Visible = False
                  Position.BandIndex = 0
                  Position.ColIndex = 8
                  Position.RowIndex = 0
                end
                object TVParcelamentoHISTORICO: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'HISTORICO'
                  Width = 221
                  Position.BandIndex = 0
                  Position.ColIndex = 6
                  Position.RowIndex = 0
                end
                object TVParcelamentoNOME_EMPRESA: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'NOME_EMPRESA'
                  Position.BandIndex = 0
                  Position.ColIndex = 9
                  Position.RowIndex = 0
                end
                object TVParcelamentoIMPOSTO: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'IMPOSTO'
                  Width = 78
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object TVParcelamentoCC_CUSTO: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'CC_CUSTO'
                  Visible = False
                  Position.BandIndex = 0
                  Position.ColIndex = 10
                  Position.RowIndex = 0
                end
                object TVParcelamentoCENTRO_CUSTO: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'CENTRO_CUSTO'
                  Position.BandIndex = 0
                  Position.ColIndex = 11
                  Position.RowIndex = 0
                end
              end
              object LVParcelamento: TcxGridLevel
                GridView = TVParcelamento
              end
            end
          end
          object cxButton2: TcxButton
            Left = 617
            Top = 474
            Width = 122
            Height = 28
            Caption = 'Gerar Financeiro'
            TabOrder = 2
            OnClick = cxButton2Click
          end
          object cxGroupBox4: TcxGroupBox
            Left = 5
            Top = 161
            Caption = 'Demonstrativo Financeiro - Contas '#224' Receber'
            TabOrder = 3
            Height = 111
            Width = 735
            object GridParcReceber: TcxGrid
              Left = 3
              Top = 15
              Width = 729
              Height = 86
              Align = alClient
              TabOrder = 0
              LookAndFeel.Kind = lfOffice11
              LookAndFeel.NativeStyle = True
              object TVParcReceber: TcxGridDBBandedTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = dsParcReceber
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsView.Navigator = True
                OptionsView.GroupByBox = False
                OptionsView.BandHeaders = False
                Bands = <
                  item
                  end>
                object TVParcReceberCODIGO: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'CODIGO'
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object TVParcReceberCOD_CONTRATO: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'COD_CONTRATO'
                  Visible = False
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object TVParcReceberDT_LANCTO: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'DT_LANCTO'
                  PropertiesClassName = 'TcxDateEditProperties'
                  Properties.ReadOnly = True
                  Styles.Content = cxStyle1
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object TVParcReceberDT_VENCTO: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'DT_VENCTO'
                  Position.BandIndex = 0
                  Position.ColIndex = 4
                  Position.RowIndex = 0
                end
                object TVParcReceberVALOR: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'VALOR'
                  Position.BandIndex = 0
                  Position.ColIndex = 5
                  Position.RowIndex = 0
                end
                object TVParcReceberCOD_PAGAR: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'COD_PAGAR'
                  PropertiesClassName = 'TcxCalcEditProperties'
                  Properties.ReadOnly = True
                  Styles.Content = cxStyle1
                  Width = 72
                  Position.BandIndex = 0
                  Position.ColIndex = 6
                  Position.RowIndex = 0
                end
                object TVParcReceberEMPRESA: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'EMPRESA'
                  Visible = False
                  Position.BandIndex = 0
                  Position.ColIndex = 8
                  Position.RowIndex = 0
                end
                object TVParcReceberHISTORICO: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'HISTORICO'
                  Width = 187
                  Position.BandIndex = 0
                  Position.ColIndex = 7
                  Position.RowIndex = 0
                end
                object TVParcReceberIMPOSTO: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'IMPOSTO'
                  Width = 94
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object TVParcReceberCC_CUSTO: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'CC_CUSTO'
                  Visible = False
                  Position.BandIndex = 0
                  Position.ColIndex = 9
                  Position.RowIndex = 0
                end
                object TVParcReceberTIPO: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'TIPO'
                  PropertiesClassName = 'TcxTextEditProperties'
                  Properties.ReadOnly = True
                  Styles.Content = cxStyle1
                  Position.BandIndex = 0
                  Position.ColIndex = 10
                  Position.RowIndex = 0
                end
                object TVParcReceberNOME_EMPRESA: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'NOME_EMPRESA'
                  Visible = False
                  Position.BandIndex = 0
                  Position.ColIndex = 11
                  Position.RowIndex = 0
                end
                object TVParcReceberCENTRO_CUSTO: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'CENTRO_CUSTO'
                  Visible = False
                  Position.BandIndex = 0
                  Position.ColIndex = 12
                  Position.RowIndex = 0
                end
                object TVParcReceberPROVISIONADO: TcxGridDBBandedColumn
                  DataBinding.FieldName = 'PROVISIONADO'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.ReadOnly = True
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Styles.Content = cxStyle1
                  Position.BandIndex = 0
                  Position.ColIndex = 13
                  Position.RowIndex = 0
                end
              end
              object LVParcReceber: TcxGridLevel
                GridView = TVParcReceber
              end
            end
          end
        end
      end
    end
  end
  object DataSource: TDataSource
    AutoEdit = False
    DataSet = Contratos
    OnStateChange = DataSourceStateChange
    Left = 477
    Top = 8
  end
  object dsCliente: TDataSource
    AutoEdit = False
    DataSet = SelCliente
    Left = 542
    Top = 9
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
    Left = 357
    Top = 536
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
      FloatLeft = 290
      FloatTop = 163
      FloatClientWidth = 66
      FloatClientHeight = 154
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarDBNavFirst1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavPrev1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavNext1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavLast1'
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
          ItemName = 'OptAlterar'
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
    object btnLocalizar: TdxBarButton
      Action = ActLocalizar
      Category = 0
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
    object BtnListagem: TdxBarButton
      Caption = 'ActListagem'
      Category = 0
      Enabled = False
      Hint = 'Emitir listagem de '
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
      ShortCut = 116
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
    object OptAlterar: TdxBarButton
      Caption = 'ActAlterar'
      Category = 0
      Visible = ivAlways
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
      ShortCut = 117
      OnClick = OptAlterarClick
    end
    object dxBarDBNavFirst1: TdxBarDBNavButton
      Caption = 'First'
      Category = 1
      Enabled = False
      Hint = 'First'
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
      BarDBNavigator = Navigator
      NavButton = dxbnFirst
    end
    object dxBarDBNavPrev1: TdxBarDBNavButton
      Caption = 'Prior'
      Category = 1
      Enabled = False
      Hint = 'Prior'
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
      BarDBNavigator = Navigator
      NavButton = dxbnPrior
    end
    object dxBarDBNavNext1: TdxBarDBNavButton
      Caption = 'Next'
      Category = 1
      Enabled = False
      Hint = 'Next'
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
      BarDBNavigator = Navigator
      NavButton = dxbnNext
    end
    object dxBarDBNavLast1: TdxBarDBNavButton
      Caption = 'Last'
      Category = 1
      Enabled = False
      Hint = 'Last'
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
      BarDBNavigator = Navigator
      NavButton = dxbnLast
    end
  end
  object Actions: TActionList
    Left = 329
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
      OnExecute = ActLocalizarExecute
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
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActLookUp: TAction
      ShortCut = 115
    end
    object ActMarcProv: TAction
      Caption = 'Marcar - Provisionado'
      OnExecute = ActMarcProvExecute
    end
    object ActDesmarcProv: TAction
      Caption = 'Desmarcar - Provisionado'
      OnExecute = ActDesmarcProvExecute
    end
  end
  object Navigator: TdxBarDBNavigator
    BarManager = BarManager
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = DataSource
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast]
    Left = 325
    Top = 535
  end
  object stgFrmContrObra: TcxPropertiesStore
    Components = <
      item
        Component = GridParcelamento
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
        Component = TVParcelamento
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
        Component = TVParcelamentoCC_CUSTO
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
        Component = TVParcelamentoCENTRO_CUSTO
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
        Component = TVParcelamentoCOD_CONTRATO
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
        Component = TVParcelamentoCOD_PAGAR
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
        Component = TVParcelamentoCODIGO
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
        Component = TVParcelamentoDT_LANCTO
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
        Component = TVParcelamentoDT_VENCTO
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
        Component = TVParcelamentoEMPRESA
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
        Component = TVParcelamentoHISTORICO
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
        Component = TVParcelamentoIMPOSTO
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
        Component = TVParcelamentoNOME_EMPRESA
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
        Component = TVParcelamentoVALOR
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
        Component = TVParcReceber
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
        Component = TVParcReceberCC_CUSTO
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
        Component = TVParcReceberCENTRO_CUSTO
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
        Component = TVParcReceberCOD_CONTRATO
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
        Component = TVParcReceberCOD_PAGAR
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
        Component = TVParcReceberCODIGO
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
        Component = TVParcReceberDT_LANCTO
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
        Component = TVParcReceberDT_VENCTO
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
        Component = TVParcReceberEMPRESA
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
        Component = TVParcReceberHISTORICO
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
        Component = TVParcReceberIMPOSTO
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
        Component = TVParcReceberNOME_EMPRESA
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
        Component = TVParcReceberTIPO
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
        Component = TVParcReceberVALOR
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
    StorageName = 'stgFrmContrObra'
    Left = 208
    Top = 47
  end
  object DsItens: TDataSource
    AutoEdit = False
    DataSet = Contratositens
    OnStateChange = DataSourceStateChange
    Left = 509
    Top = 8
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 360
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clInactiveCaptionText
    end
  end
  object Contratos: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    ForcedRefresh = True
    OnNewRecord = ContratosNewRecord
    DeleteSQL.Strings = (
      'delete from ctr_contrato'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into ctr_contrato'
      
        '  (ATIVO, BASE_INSS_MUN, BASE_INSS_NAC, BASE_ISS_MUN, BASE_ISS_N' +
        'AC, CODIGO, '
      
        '   DATA, DATA_INICIO, DATA_VENCTO, DESCRICAO, OBS, PCT_COFINS, P' +
        'CT_CSLL, '
      
        '   PCT_INSS, PCT_IRPJ, PCT_ISS, PCT_PIS, PESSOA_FJ, VALOR, VINCU' +
        'LO_CONTRATO)'
      'values'
      
        '  (:ATIVO, :BASE_INSS_MUN, :BASE_INSS_NAC, :BASE_ISS_MUN, :BASE_' +
        'ISS_NAC, '
      
        '   :CODIGO, :DATA, :DATA_INICIO, :DATA_VENCTO, :DESCRICAO, :OBS,' +
        ' :PCT_COFINS, '
      
        '   :PCT_CSLL, :PCT_INSS, :PCT_IRPJ, :PCT_ISS, :PCT_PIS, :PESSOA_' +
        'FJ, :VALOR, '
      '   :VINCULO_CONTRATO)')
    RefreshSQL.Strings = (
      'select ct.*,'
      
        '(select sum(cti.valor) from ctr_contrato_item cti where cti.cod_' +
        'contrato = ct.codigo) total_2,'
      'case coalesce(ct.vinculo_contrato,0)'
      
        ' when 0 then (((coalesce((select sum(cti.valor) from ctr_contrat' +
        'o_item cti where cti.cod_contrato = ct.codigo),0) * coalesce(ct.' +
        'BASE_INSS_MUN,0)/100.00) * coalesce(ct.pct_inss,0))/100.00)'
      
        ' else (((coalesce((select sum(cti.valor) from ctr_contrato_item ' +
        'cti where cti.cod_contrato = ct.codigo),0) * coalesce(ct.base_in' +
        'ss_nac,0)/100.00) * coalesce(ct.pct_inss,0))/100.00)'
      'end vlr_inss,'
      ''
      'case coalesce(ct.vinculo_contrato,0)'
      
        ' when 0 then (((coalesce((select sum(cti.valor) from ctr_contrat' +
        'o_item cti where cti.cod_contrato = ct.codigo),0) * coalesce(ct.' +
        'base_iss_mun,0)/100.00) * coalesce(ct.pct_iss,0))/100.00)'
      
        ' else (((coalesce((select sum(cti.valor) from ctr_contrato_item ' +
        'cti where cti.cod_contrato = ct.codigo),0) * coalesce(ct.base_is' +
        's_nac,0)/100.00) * coalesce(ct.pct_iss,0))/100.00)'
      'end vlr_iss,'
      
        '((coalesce((select sum(cti.valor) from ctr_contrato_item cti whe' +
        're cti.cod_contrato = ct.codigo),0)  * coalesce(ct.pct_irpj,0))/' +
        '100.00) vlr_irpj,'
      
        '((coalesce((select sum(cti.valor) from ctr_contrato_item cti whe' +
        're cti.cod_contrato = ct.codigo),0)  * coalesce(ct.pct_pis,0))/1' +
        '00.00) vlr_pis,'
      
        '((coalesce((select sum(cti.valor) from ctr_contrato_item cti whe' +
        're cti.cod_contrato = ct.codigo),0)  * coalesce(ct.pct_csll,0))/' +
        '100.00) vlr_csll,'
      
        '((coalesce((select sum(cti.valor) from ctr_contrato_item cti whe' +
        're cti.cod_contrato = ct.codigo),0)  * coalesce(ct.pct_cofins,0)' +
        ')/100.00) vlr_cofins ,'
      ''
      ''
      '('
      'case coalesce(ct.vinculo_contrato,0)'
      
        ' when 0 then (((coalesce((select sum(cti.valor) from ctr_contrat' +
        'o_item cti where cti.cod_contrato = ct.codigo),0) * coalesce(ct.' +
        'BASE_INSS_MUN,0)/100.00) * coalesce(ct.pct_inss,0))/100.00)'
      
        ' else (((coalesce((select sum(cti.valor) from ctr_contrato_item ' +
        'cti where cti.cod_contrato = ct.codigo),0) * coalesce(ct.base_in' +
        'ss_nac,0)/100.00) * coalesce(ct.pct_inss,0))/100.00)'
      'end +'
      ''
      'case coalesce(ct.vinculo_contrato,0)'
      
        ' when 0 then (((coalesce((select sum(cti.valor) from ctr_contrat' +
        'o_item cti where cti.cod_contrato = ct.codigo),0) * coalesce(ct.' +
        'base_iss_mun,0)/100.00) * coalesce(ct.pct_iss,0))/100.00)'
      
        ' else (((coalesce((select sum(cti.valor) from ctr_contrato_item ' +
        'cti where cti.cod_contrato = ct.codigo),0) * coalesce(ct.base_is' +
        's_nac,0)/100.00) * coalesce(ct.pct_iss,0))/100.00)'
      'end +'
      
        '((coalesce((select sum(cti.valor) from ctr_contrato_item cti whe' +
        're cti.cod_contrato = ct.codigo),0)  * coalesce(ct.pct_irpj,0))/' +
        '100.00) +'
      
        '((coalesce((select sum(cti.valor) from ctr_contrato_item cti whe' +
        're cti.cod_contrato = ct.codigo),0)  * coalesce(ct.pct_pis,0))/1' +
        '00.00) +'
      
        '((coalesce((select sum(cti.valor) from ctr_contrato_item cti whe' +
        're cti.cod_contrato = ct.codigo),0)  * coalesce(ct.pct_csll,0))/' +
        '100.00) +'
      
        '((coalesce((select sum(cti.valor) from ctr_contrato_item cti whe' +
        're cti.cod_contrato = ct.codigo),0)  * coalesce(ct.pct_cofins,0)' +
        ')/100.00)'
      ') total_imposto'
      'from ctr_contrato ct'
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      ''
      'select ct.*,'
      
        '(select sum(cti.valor) from ctr_contrato_item cti where cti.cod_' +
        'contrato = ct.codigo) total_2,'
      'case coalesce(ct.vinculo_contrato,0)'
      
        ' when 0 then (((coalesce((select sum(cti.valor) from ctr_contrat' +
        'o_item cti where cti.cod_contrato = ct.codigo),0) * coalesce(ct.' +
        'BASE_INSS_MUN,0)/100.00) * coalesce(ct.pct_inss,0))/100.00)'
      
        ' else (((coalesce((select sum(cti.valor) from ctr_contrato_item ' +
        'cti where cti.cod_contrato = ct.codigo),0) * coalesce(ct.base_in' +
        'ss_nac,0)/100.00) * coalesce(ct.pct_inss,0))/100.00)'
      'end vlr_inss,'
      ''
      'case coalesce(ct.vinculo_contrato,0)'
      
        ' when 0 then (((coalesce((select sum(cti.valor) from ctr_contrat' +
        'o_item cti where cti.cod_contrato = ct.codigo),0) * coalesce(ct.' +
        'base_iss_mun,0)/100.00) * coalesce(ct.pct_iss,0))/100.00)'
      
        ' else (((coalesce((select sum(cti.valor) from ctr_contrato_item ' +
        'cti where cti.cod_contrato = ct.codigo),0) * coalesce(ct.base_is' +
        's_nac,0)/100.00) * coalesce(ct.pct_iss,0))/100.00)'
      'end vlr_iss,'
      
        '((coalesce((select sum(cti.valor) from ctr_contrato_item cti whe' +
        're cti.cod_contrato = ct.codigo),0)  * coalesce(ct.pct_irpj,0))/' +
        '100.00) vlr_irpj,'
      
        '((coalesce((select sum(cti.valor) from ctr_contrato_item cti whe' +
        're cti.cod_contrato = ct.codigo),0)  * coalesce(ct.pct_pis,0))/1' +
        '00.00) vlr_pis,'
      
        '((coalesce((select sum(cti.valor) from ctr_contrato_item cti whe' +
        're cti.cod_contrato = ct.codigo),0)  * coalesce(ct.pct_csll,0))/' +
        '100.00) vlr_csll,'
      
        '((coalesce((select sum(cti.valor) from ctr_contrato_item cti whe' +
        're cti.cod_contrato = ct.codigo),0)  * coalesce(ct.pct_cofins,0)' +
        ')/100.00) vlr_cofins ,'
      ''
      ''
      '('
      'case coalesce(ct.vinculo_contrato,0)'
      
        ' when 0 then (((coalesce((select sum(cti.valor) from ctr_contrat' +
        'o_item cti where cti.cod_contrato = ct.codigo),0) * coalesce(ct.' +
        'BASE_INSS_MUN,0)/100.00) * coalesce(ct.pct_inss,0))/100.00)'
      
        ' else (((coalesce((select sum(cti.valor) from ctr_contrato_item ' +
        'cti where cti.cod_contrato = ct.codigo),0) * coalesce(ct.base_in' +
        'ss_nac,0)/100.00) * coalesce(ct.pct_inss,0))/100.00)'
      'end +'
      ''
      'case coalesce(ct.vinculo_contrato,0)'
      
        ' when 0 then (((coalesce((select sum(cti.valor) from ctr_contrat' +
        'o_item cti where cti.cod_contrato = ct.codigo),0) * coalesce(ct.' +
        'base_iss_mun,0)/100.00) * coalesce(ct.pct_iss,0))/100.00)'
      
        ' else (((coalesce((select sum(cti.valor) from ctr_contrato_item ' +
        'cti where cti.cod_contrato = ct.codigo),0) * coalesce(ct.base_is' +
        's_nac,0)/100.00) * coalesce(ct.pct_iss,0))/100.00)'
      'end +'
      
        '((coalesce((select sum(cti.valor) from ctr_contrato_item cti whe' +
        're cti.cod_contrato = ct.codigo),0)  * coalesce(ct.pct_irpj,0))/' +
        '100.00) +'
      
        '((coalesce((select sum(cti.valor) from ctr_contrato_item cti whe' +
        're cti.cod_contrato = ct.codigo),0)  * coalesce(ct.pct_pis,0))/1' +
        '00.00) +'
      
        '((coalesce((select sum(cti.valor) from ctr_contrato_item cti whe' +
        're cti.cod_contrato = ct.codigo),0)  * coalesce(ct.pct_csll,0))/' +
        '100.00) +'
      
        '((coalesce((select sum(cti.valor) from ctr_contrato_item cti whe' +
        're cti.cod_contrato = ct.codigo),0)  * coalesce(ct.pct_cofins,0)' +
        ')/100.00)'
      ') total_imposto'
      ''
      'from ctr_contrato ct')
    ModifySQL.Strings = (
      'update ctr_contrato'
      'set'
      '  ATIVO = :ATIVO,'
      '  BASE_INSS_MUN = :BASE_INSS_MUN,'
      '  BASE_INSS_NAC = :BASE_INSS_NAC,'
      '  BASE_ISS_MUN = :BASE_ISS_MUN,'
      '  BASE_ISS_NAC = :BASE_ISS_NAC,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  DATA_INICIO = :DATA_INICIO,'
      '  DATA_VENCTO = :DATA_VENCTO,'
      '  DESCRICAO = :DESCRICAO,'
      '  OBS = :OBS,'
      '  PCT_COFINS = :PCT_COFINS,'
      '  PCT_CSLL = :PCT_CSLL,'
      '  PCT_INSS = :PCT_INSS,'
      '  PCT_IRPJ = :PCT_IRPJ,'
      '  PCT_ISS = :PCT_ISS,'
      '  PCT_PIS = :PCT_PIS,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  VALOR = :VALOR,'
      '  VINCULO_CONTRATO = :VINCULO_CONTRATO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_CTR_CONTRATO_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 232
    Top = 2
    object ContratosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CTR_CONTRATO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ContratosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"CTR_CONTRATO"."DESCRICAO"'
      Size = 50
    end
    object ContratosVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"CTR_CONTRATO"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object ContratosDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"CTR_CONTRATO"."DATA"'
    end
    object ContratosDATA_INICIO: TDateTimeField
      FieldName = 'DATA_INICIO'
      Origin = '"CTR_CONTRATO"."DATA_INICIO"'
    end
    object ContratosDATA_VENCTO: TDateTimeField
      FieldName = 'DATA_VENCTO'
      Origin = '"CTR_CONTRATO"."DATA_VENCTO"'
    end
    object ContratosPESSOA_FJ: TIBStringField
      FieldName = 'PESSOA_FJ'
      Origin = '"CTR_CONTRATO"."PESSOA_FJ"'
      FixedChar = True
      Size = 14
    end
    object ContratosOBS: TIBStringField
      FieldName = 'OBS'
      Origin = '"CTR_CONTRATO"."OBS"'
      Size = 180
    end
    object ContratosATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"CTR_CONTRATO"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object ContratosVINCULO_CONTRATO: TIntegerField
      FieldName = 'VINCULO_CONTRATO'
      Origin = '"CTR_CONTRATO"."VINCULO_CONTRATO"'
    end
    object ContratosPCT_INSS: TFloatField
      FieldName = 'PCT_INSS'
      Origin = '"CTR_CONTRATO"."PCT_INSS"'
      DisplayFormat = '###,##0.00'
    end
    object ContratosPCT_IRPJ: TFloatField
      FieldName = 'PCT_IRPJ'
      Origin = '"CTR_CONTRATO"."PCT_IRPJ"'
      DisplayFormat = '###,##0.00'
    end
    object ContratosPCT_ISS: TFloatField
      FieldName = 'PCT_ISS'
      Origin = '"CTR_CONTRATO"."PCT_ISS"'
      DisplayFormat = '###,##0.00'
    end
    object ContratosPCT_PIS: TFloatField
      FieldName = 'PCT_PIS'
      Origin = '"CTR_CONTRATO"."PCT_PIS"'
      DisplayFormat = '###,##0.00'
    end
    object ContratosPCT_CSLL: TFloatField
      FieldName = 'PCT_CSLL'
      Origin = '"CTR_CONTRATO"."PCT_CSLL"'
      DisplayFormat = '###,##0.00'
    end
    object ContratosPCT_COFINS: TFloatField
      FieldName = 'PCT_COFINS'
      Origin = '"CTR_CONTRATO"."PCT_COFINS"'
      DisplayFormat = '###,##0.00'
    end
    object ContratosBASE_INSS_MUN: TFloatField
      FieldName = 'BASE_INSS_MUN'
      Origin = '"CTR_CONTRATO"."BASE_INSS_MUN"'
      DisplayFormat = '###,##0.00'
    end
    object ContratosBASE_INSS_NAC: TFloatField
      FieldName = 'BASE_INSS_NAC'
      Origin = '"CTR_CONTRATO"."BASE_INSS_NAC"'
      DisplayFormat = '###,##0.00'
    end
    object ContratosBASE_ISS_MUN: TFloatField
      FieldName = 'BASE_ISS_MUN'
      Origin = '"CTR_CONTRATO"."BASE_ISS_MUN"'
      DisplayFormat = '###,##0.00'
    end
    object ContratosBASE_ISS_NAC: TFloatField
      FieldName = 'BASE_ISS_NAC'
      Origin = '"CTR_CONTRATO"."BASE_ISS_NAC"'
      DisplayFormat = '###,##0.00'
    end
    object ContratosVLR_INSS: TFloatField
      FieldName = 'VLR_INSS'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object ContratosVLR_ISS: TFloatField
      FieldName = 'VLR_ISS'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object ContratosVLR_IRPJ: TFloatField
      FieldName = 'VLR_IRPJ'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object ContratosVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object ContratosVLR_CSLL: TFloatField
      FieldName = 'VLR_CSLL'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object ContratosVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object ContratosTOTAL_IMPOSTO: TFloatField
      FieldName = 'TOTAL_IMPOSTO'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object ContratosTOTAL_2: TFloatField
      FieldName = 'TOTAL_2'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
  end
  object Contratositens: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterDelete = ContratositensAfterPost
    AfterPost = ContratositensAfterPost
    BeforeDelete = ContratositensBeforeDelete
    BeforeInsert = ContratositensBeforeInsert
    OnNewRecord = ContratositensNewRecord
    DeleteSQL.Strings = (
      'delete from ctr_contrato_item'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into ctr_contrato_item'
      
        '  (ATIVO, COD_CONTRATO, CODIGO, DATA, DATA_INICIO, DATA_VENCTO, ' +
        'DESCRICAO, '
      '   INDICE_PROVISIONAMENTO, PROVISIONADO, VALOR)'
      'values'
      
        '  (:ATIVO, :COD_CONTRATO, :CODIGO, :DATA, :DATA_INICIO, :DATA_VE' +
        'NCTO, :DESCRICAO, '
      '   :INDICE_PROVISIONAMENTO, :PROVISIONADO, :VALOR)')
    RefreshSQL.Strings = (
      'Select * '
      'from ctr_contrato_item '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from ctr_contrato_item cti'
      'where cti.cod_contrato = :codigo')
    ModifySQL.Strings = (
      'update ctr_contrato_item'
      'set'
      '  ATIVO = :ATIVO,'
      '  COD_CONTRATO = :COD_CONTRATO,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  DATA_INICIO = :DATA_INICIO,'
      '  DATA_VENCTO = :DATA_VENCTO,'
      '  DESCRICAO = :DESCRICAO,'
      '  INDICE_PROVISIONAMENTO = :INDICE_PROVISIONAMENTO,'
      '  PROVISIONADO = :PROVISIONADO,'
      '  VALOR = :VALOR'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_CTR_CONTRATO_ITEM_ID'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DataSource
    Left = 264
    Top = 2
    object ContratositensCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CTR_CONTRATO_ITEM"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ContratositensDESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"CTR_CONTRATO_ITEM"."DESCRICAO"'
      Size = 50
    end
    object ContratositensVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"CTR_CONTRATO_ITEM"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object ContratositensDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"CTR_CONTRATO_ITEM"."DATA"'
    end
    object ContratositensDATA_INICIO: TDateTimeField
      DisplayLabel = 'Data Inicio'
      FieldName = 'DATA_INICIO'
      Origin = '"CTR_CONTRATO_ITEM"."DATA_INICIO"'
    end
    object ContratositensDATA_VENCTO: TDateTimeField
      DisplayLabel = 'Data Vencto'
      FieldName = 'DATA_VENCTO'
      Origin = '"CTR_CONTRATO_ITEM"."DATA_VENCTO"'
    end
    object ContratositensCOD_CONTRATO: TIntegerField
      DisplayLabel = 'C'#243'd. Contrato'
      FieldName = 'COD_CONTRATO'
      Origin = '"CTR_CONTRATO_ITEM"."COD_CONTRATO"'
    end
    object ContratositensATIVO: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = '"CTR_CONTRATO_ITEM"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object ContratositensPROVISIONADO: TIBStringField
      DisplayLabel = 'Prov'
      FieldName = 'PROVISIONADO'
      Origin = '"CTR_CONTRATO_ITEM"."PROVISIONADO"'
      FixedChar = True
      Size = 1
    end
    object ContratositensINDICE_PROVISIONAMENTO: TIntegerField
      FieldName = 'INDICE_PROVISIONAMENTO'
      Origin = '"CTR_CONTRATO_ITEM"."INDICE_PROVISIONAMENTO"'
    end
  end
  object SelCliente: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select distinct c.cpf_cgc, c.nome_razao from glo_pessoas_fj c'
      'where coalesce(c.cpf_cgc,'#39#39') <> '#39#39)
    Left = 295
    Top = 2
    object SelClienteCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object SelClienteNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
  end
  object QryParcelamento: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = DataSource
    SQL.Strings = (
      
        'select p.*, e.nome nome_empresa, cc.nome centro_custo from ctr_p' +
        'arc p'
      'left join sis_empresas e on (e.cnpj = p.empresa)'
      
        'left join fin_centro_custo cc on (cc.cnpj = p.empresa and cc.cod' +
        'igo = p.cc_custo)'
      'where p.cod_contrato = :codigo and p.tipo = '#39'D'#39)
    Left = 575
    Top = 10
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object QryParcelamentoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CTR_PARC"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryParcelamentoCOD_CONTRATO: TIntegerField
      DisplayLabel = 'C'#243'd. Contrato'
      FieldName = 'COD_CONTRATO'
      Origin = '"CTR_PARC"."COD_CONTRATO"'
    end
    object QryParcelamentoDT_LANCTO: TDateTimeField
      DisplayLabel = 'Dt. Lancto'
      FieldName = 'DT_LANCTO'
      Origin = '"CTR_PARC"."DT_LANCTO"'
    end
    object QryParcelamentoDT_VENCTO: TDateTimeField
      DisplayLabel = 'Dt. Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"CTR_PARC"."DT_VENCTO"'
    end
    object QryParcelamentoVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"CTR_PARC"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object QryParcelamentoCOD_PAGAR: TIntegerField
      DisplayLabel = 'C'#243'd. Pagar'
      FieldName = 'COD_PAGAR'
      Origin = '"CTR_PARC"."COD_PAGAR"'
    end
    object QryParcelamentoEMPRESA: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRESA'
      Origin = '"CTR_PARC"."EMPRESA"'
      FixedChar = True
      Size = 14
    end
    object QryParcelamentoHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"CTR_PARC"."HISTORICO"'
      Size = 100
    end
    object QryParcelamentoNOME_EMPRESA: TIBStringField
      DisplayLabel = 'N. Empresa'
      FieldName = 'NOME_EMPRESA'
      Origin = '"SIS_EMPRESAS"."NOME"'
      Size = 50
    end
    object QryParcelamentoIMPOSTO: TIBStringField
      DisplayLabel = 'Desc.'
      FieldName = 'IMPOSTO'
      Origin = '"CTR_PARC"."IMPOSTO"'
      Size = 16
    end
    object QryParcelamentoCC_CUSTO: TIntegerField
      DisplayLabel = 'C'#243'd. CC'
      FieldName = 'CC_CUSTO'
      Origin = '"CTR_PARC"."CC_CUSTO"'
    end
    object QryParcelamentoCENTRO_CUSTO: TIBStringField
      DisplayLabel = 'C. Custo'
      FieldName = 'CENTRO_CUSTO'
      Origin = '"FIN_CENTRO_CUSTO"."NOME"'
      Size = 50
    end
  end
  object dsParcelamento: TDataSource
    AutoEdit = False
    DataSet = QryParcelamento
    Left = 542
    Top = 9
  end
  object QryExisteValor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select count(*) cont from ctr_parc ctr'
      
        '  where ctr.cod_contrato = :CODIGO  and coalesce(ctr.provisionad' +
        'o,'#39'N'#39') = '#39'N'#39' and ctr.tipo = '#39'C'#39)
    Left = 479
    Top = 42
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object QryExisteValorCONT: TIntegerField
      FieldName = 'CONT'
      ProviderFlags = []
    end
  end
  object spSimulaParcela: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'PCD_CTR_SIMULA_PARCELAMENTO'
    Left = 513
    Top = 44
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RESULTADO'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_INT'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = GridParcelamento
    PopupMenus = <>
    Left = 690
    Top = 280
  end
  object dsParcReceber: TDataSource
    AutoEdit = False
    DataSet = QryParcReceber
    Left = 622
    Top = 9
  end
  object QryExisteValorFin: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select sum(pc.valor) valor from ctr_parc pc'
      'where pc.cod_contrato = :CODIGO  and coalesce(pc.tipo,'#39'D'#39') = '#39'D'#39
      'and coalesce(pc.cod_pagar,0) = 0')
    Left = 559
    Top = 42
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object QryExisteValorFinVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = []
    end
  end
  object PopupItens: TPopupMenu
    Left = 75
    Top = 359
    object ProvisionarItem1: TMenuItem
      Action = ActMarcProv
    end
    object DesmarcarProvisionado1: TMenuItem
      Action = ActDesmarcProv
    end
  end
  object spGeraFinanceiro: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'PCD_CTR_GERA_FINANCEIRO'
    Left = 609
    Top = 44
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO_INT'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CPF_CNPJ'
        ParamType = ptInput
      end>
  end
  object SelEmpresa: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select e.*, cdd.nome nome_cidade, lgd.nome nome_logradouro, br.n' +
        'ome nome_bairro from sis_empresas e'
      
        'left join glo_cidades cdd on (cdd.cnpj = e.cnpj and cdd.codigo =' +
        ' e.cod_cidade)'
      
        'left join glo_bairros br on (br.cnpj = e.cnpj and br.codigo = e.' +
        'cod_bairro)'
      
        'left join glo_logradouros lgd on (lgd.cnpj = e.cnpj and lgd.codi' +
        'go = e.cod_logradouro)'
      'where e.cnpj = :cnpj'
      'order by e.nome')
    Left = 652
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object SelEmpresaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_EMPRESAS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 14
    end
    object SelEmpresaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"SIS_EMPRESAS"."NOME"'
      Size = 50
    end
    object SelEmpresaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"SIS_EMPRESAS"."ENDERECO"'
      Size = 50
    end
    object SelEmpresaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"SIS_EMPRESAS"."BAIRRO"'
      Size = 50
    end
    object SelEmpresaCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"SIS_EMPRESAS"."CIDADE"'
      Size = 50
    end
    object SelEmpresaUF: TIBStringField
      FieldName = 'UF'
      Origin = '"SIS_EMPRESAS"."UF"'
      FixedChar = True
      Size = 2
    end
    object SelEmpresaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"SIS_EMPRESAS"."CEP"'
      Size = 8
    end
    object SelEmpresaFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"SIS_EMPRESAS"."FONE"'
    end
    object SelEmpresaFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"SIS_EMPRESAS"."FAX"'
    end
    object SelEmpresaMENS_ECF: TIBStringField
      FieldName = 'MENS_ECF'
      Origin = '"SIS_EMPRESAS"."MENS_ECF"'
      Size = 80
    end
    object SelEmpresaALT_PRC_VND: TIBStringField
      FieldName = 'ALT_PRC_VND'
      Origin = '"SIS_EMPRESAS"."ALT_PRC_VND"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaTX_JUROS_ATE: TFloatField
      FieldName = 'TX_JUROS_ATE'
      Origin = '"SIS_EMPRESAS"."TX_JUROS_ATE"'
    end
    object SelEmpresaTX_JUROS_APOS: TFloatField
      FieldName = 'TX_JUROS_APOS'
      Origin = '"SIS_EMPRESAS"."TX_JUROS_APOS"'
    end
    object SelEmpresaTIPO_TAXA: TIBStringField
      FieldName = 'TIPO_TAXA'
      Origin = '"SIS_EMPRESAS"."TIPO_TAXA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaMENSAGEM_BOL: TIBStringField
      FieldName = 'MENSAGEM_BOL'
      Origin = '"SIS_EMPRESAS"."MENSAGEM_BOL"'
      Size = 50
    end
    object SelEmpresaMENSAGEM_BOL2: TIBStringField
      FieldName = 'MENSAGEM_BOL2'
      Origin = '"SIS_EMPRESAS"."MENSAGEM_BOL2"'
      Size = 50
    end
    object SelEmpresaCLI_VND_VISTA: TIntegerField
      FieldName = 'CLI_VND_VISTA'
      Origin = '"SIS_EMPRESAS"."CLI_VND_VISTA"'
    end
    object SelEmpresaDT_ULT_VENDA: TDateTimeField
      FieldName = 'DT_ULT_VENDA'
      Origin = '"SIS_EMPRESAS"."DT_ULT_VENDA"'
    end
    object SelEmpresaCUSTO_VARIAVEL: TFloatField
      FieldName = 'CUSTO_VARIAVEL'
      Origin = '"SIS_EMPRESAS"."CUSTO_VARIAVEL"'
    end
    object SelEmpresaVENDEDOR: TFloatField
      FieldName = 'VENDEDOR'
      Origin = '"SIS_EMPRESAS"."VENDEDOR"'
    end
    object SelEmpresaPROPAGANDA: TFloatField
      FieldName = 'PROPAGANDA'
      Origin = '"SIS_EMPRESAS"."PROPAGANDA"'
    end
    object SelEmpresaDESCONTOS: TFloatField
      FieldName = 'DESCONTOS'
      Origin = '"SIS_EMPRESAS"."DESCONTOS"'
    end
    object SelEmpresaPG_COM_TERC: TIBStringField
      FieldName = 'PG_COM_TERC'
      Origin = '"SIS_EMPRESAS"."PG_COM_TERC"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaPDV_NATUREZA: TIntegerField
      FieldName = 'PDV_NATUREZA'
      Origin = '"SIS_EMPRESAS"."PDV_NATUREZA"'
    end
    object SelEmpresaPDV_TIPODOCTO: TIBStringField
      FieldName = 'PDV_TIPODOCTO'
      Origin = '"SIS_EMPRESAS"."PDV_TIPODOCTO"'
      FixedChar = True
      Size = 3
    end
    object SelEmpresaPDV_LOCALCOBRANCA: TIntegerField
      FieldName = 'PDV_LOCALCOBRANCA'
      Origin = '"SIS_EMPRESAS"."PDV_LOCALCOBRANCA"'
    end
    object SelEmpresaDIG_DESC_VENDA: TIBStringField
      FieldName = 'DIG_DESC_VENDA'
      Origin = '"SIS_EMPRESAS"."DIG_DESC_VENDA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaDIG_CHEQUE_VENDA: TIBStringField
      FieldName = 'DIG_CHEQUE_VENDA'
      Origin = '"SIS_EMPRESAS"."DIG_CHEQUE_VENDA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaPDV_MSG1: TIBStringField
      FieldName = 'PDV_MSG1'
      Origin = '"SIS_EMPRESAS"."PDV_MSG1"'
      Size = 80
    end
    object SelEmpresaPDV_MSG2: TIBStringField
      FieldName = 'PDV_MSG2'
      Origin = '"SIS_EMPRESAS"."PDV_MSG2"'
      Size = 80
    end
    object SelEmpresaPDV_MSG3: TIBStringField
      FieldName = 'PDV_MSG3'
      Origin = '"SIS_EMPRESAS"."PDV_MSG3"'
      Size = 80
    end
    object SelEmpresaPDV_MSG4: TIBStringField
      FieldName = 'PDV_MSG4'
      Origin = '"SIS_EMPRESAS"."PDV_MSG4"'
      Size = 80
    end
    object SelEmpresaPDV_MSG5: TIBStringField
      FieldName = 'PDV_MSG5'
      Origin = '"SIS_EMPRESAS"."PDV_MSG5"'
      Size = 80
    end
    object SelEmpresaPDV_ECF: TIBStringField
      FieldName = 'PDV_ECF'
      Origin = '"SIS_EMPRESAS"."PDV_ECF"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaPDV_MAIORVALORUNIT: TFloatField
      FieldName = 'PDV_MAIORVALORUNIT'
      Origin = '"SIS_EMPRESAS"."PDV_MAIORVALORUNIT"'
    end
    object SelEmpresaPDV_SENHA: TIBStringField
      FieldName = 'PDV_SENHA'
      Origin = '"SIS_EMPRESAS"."PDV_SENHA"'
      Size = 10
    end
    object SelEmpresaLOCAL_FATURA: TIBStringField
      FieldName = 'LOCAL_FATURA'
      Origin = '"SIS_EMPRESAS"."LOCAL_FATURA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaECF_ULTNUMERO: TIntegerField
      FieldName = 'ECF_ULTNUMERO'
      Origin = '"SIS_EMPRESAS"."ECF_ULTNUMERO"'
    end
    object SelEmpresaDIG_UNIDADE_VENDA: TIBStringField
      FieldName = 'DIG_UNIDADE_VENDA'
      Origin = '"SIS_EMPRESAS"."DIG_UNIDADE_VENDA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaPDV_PARCELA_VENDA: TIBStringField
      FieldName = 'PDV_PARCELA_VENDA'
      Origin = '"SIS_EMPRESAS"."PDV_PARCELA_VENDA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaSELAGRUPADOR: TIBStringField
      FieldName = 'SELAGRUPADOR'
      Origin = '"SIS_EMPRESAS"."SELAGRUPADOR"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaPDV_ELIMINA_ZEROS: TIBStringField
      FieldName = 'PDV_ELIMINA_ZEROS'
      Origin = '"SIS_EMPRESAS"."PDV_ELIMINA_ZEROS"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaTIPO_CONSULTA_PROD: TIBStringField
      FieldName = 'TIPO_CONSULTA_PROD'
      Origin = '"SIS_EMPRESAS"."TIPO_CONSULTA_PROD"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaPDV_ACRESCENTA_ZEROS: TIBStringField
      FieldName = 'PDV_ACRESCENTA_ZEROS'
      Origin = '"SIS_EMPRESAS"."PDV_ACRESCENTA_ZEROS"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCARREGAR_ARQUIVOS: TIBStringField
      FieldName = 'CARREGAR_ARQUIVOS'
      Origin = '"SIS_EMPRESAS"."CARREGAR_ARQUIVOS"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaVER_VENDAS_ENVIADAS: TIBStringField
      FieldName = 'VER_VENDAS_ENVIADAS'
      Origin = '"SIS_EMPRESAS"."VER_VENDAS_ENVIADAS"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCHM_LOCPROD_INEXISTENTE: TIBStringField
      FieldName = 'CHM_LOCPROD_INEXISTENTE'
      Origin = '"SIS_EMPRESAS"."CHM_LOCPROD_INEXISTENTE"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaPDV_F4_ALTERACLIENTE: TIBStringField
      FieldName = 'PDV_F4_ALTERACLIENTE'
      Origin = '"SIS_EMPRESAS"."PDV_F4_ALTERACLIENTE"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaDIG_SENHA_VENDEDOR: TIBStringField
      FieldName = 'DIG_SENHA_VENDEDOR'
      Origin = '"SIS_EMPRESAS"."DIG_SENHA_VENDEDOR"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCOR_FUNDO_SELECIONADO: TIBStringField
      FieldName = 'COR_FUNDO_SELECIONADO'
      Origin = '"SIS_EMPRESAS"."COR_FUNDO_SELECIONADO"'
      Size = 15
    end
    object SelEmpresaNUM_REG_LOAD: TIntegerField
      FieldName = 'NUM_REG_LOAD'
      Origin = '"SIS_EMPRESAS"."NUM_REG_LOAD"'
    end
    object SelEmpresaPDV_DIGITA_QUANTIDADE: TIBStringField
      FieldName = 'PDV_DIGITA_QUANTIDADE'
      Origin = '"SIS_EMPRESAS"."PDV_DIGITA_QUANTIDADE"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCOR_FUNDO_DESELECIONADO: TIBStringField
      FieldName = 'COR_FUNDO_DESELECIONADO'
      Origin = '"SIS_EMPRESAS"."COR_FUNDO_DESELECIONADO"'
      Size = 15
    end
    object SelEmpresaCX_PAGAR_CAIXA: TIBStringField
      FieldName = 'CX_PAGAR_CAIXA'
      Origin = '"SIS_EMPRESAS"."CX_PAGAR_CAIXA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCX_RECEBER_CAIXA: TIBStringField
      FieldName = 'CX_RECEBER_CAIXA'
      Origin = '"SIS_EMPRESAS"."CX_RECEBER_CAIXA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaEXT_LANC_CAIXA_FECHADO: TIBStringField
      FieldName = 'EXT_LANC_CAIXA_FECHADO'
      Origin = '"SIS_EMPRESAS"."EXT_LANC_CAIXA_FECHADO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaNUM_MAX_ITENS: TIntegerField
      FieldName = 'NUM_MAX_ITENS'
      Origin = '"SIS_EMPRESAS"."NUM_MAX_ITENS"'
    end
    object SelEmpresaIMP_UNIT_ORC: TIBStringField
      FieldName = 'IMP_UNIT_ORC'
      Origin = '"SIS_EMPRESAS"."IMP_UNIT_ORC"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaDUPLICATA: TIntegerField
      FieldName = 'DUPLICATA'
      Origin = '"SIS_EMPRESAS"."DUPLICATA"'
    end
    object SelEmpresaBLQQTDEFISCAL: TIBStringField
      FieldName = 'BLQQTDEFISCAL'
      Origin = '"SIS_EMPRESAS"."BLQQTDEFISCAL"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaNUM_MAX_ITENS_ORC: TIntegerField
      FieldName = 'NUM_MAX_ITENS_ORC'
      Origin = '"SIS_EMPRESAS"."NUM_MAX_ITENS_ORC"'
    end
    object SelEmpresaALTERA_PRECO_VENDA_ENT: TIBStringField
      FieldName = 'ALTERA_PRECO_VENDA_ENT'
      Origin = '"SIS_EMPRESAS"."ALTERA_PRECO_VENDA_ENT"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaTIPO_EMPRESA: TIBStringField
      FieldName = 'TIPO_EMPRESA'
      Origin = '"SIS_EMPRESAS"."TIPO_EMPRESA"'
      Size = 30
    end
    object SelEmpresaDIG_CARTAO_VENDA: TIBStringField
      FieldName = 'DIG_CARTAO_VENDA'
      Origin = '"SIS_EMPRESAS"."DIG_CARTAO_VENDA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaPIS: TFloatField
      FieldName = 'PIS'
      Origin = '"SIS_EMPRESAS"."PIS"'
    end
    object SelEmpresaCOFINS: TFloatField
      FieldName = 'COFINS'
      Origin = '"SIS_EMPRESAS"."COFINS"'
    end
    object SelEmpresaDIGITA_NUM_NOTA: TIBStringField
      FieldName = 'DIGITA_NUM_NOTA'
      Origin = '"SIS_EMPRESAS"."DIGITA_NUM_NOTA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaDIGITA_COTACOES: TIBStringField
      FieldName = 'DIGITA_COTACOES'
      Origin = '"SIS_EMPRESAS"."DIGITA_COTACOES"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"SIS_EMPRESAS"."FOTO"'
      Size = 100
    end
    object SelEmpresaLOJA_DESC_AVISTA: TFloatField
      FieldName = 'LOJA_DESC_AVISTA'
      Origin = '"SIS_EMPRESAS"."LOJA_DESC_AVISTA"'
    end
    object SelEmpresaITENS_ORCAMENTO: TIntegerField
      FieldName = 'ITENS_ORCAMENTO'
      Origin = '"SIS_EMPRESAS"."ITENS_ORCAMENTO"'
    end
    object SelEmpresaIMPRIME_CABEC_2FOL: TIBStringField
      FieldName = 'IMPRIME_CABEC_2FOL'
      Origin = '"SIS_EMPRESAS"."IMPRIME_CABEC_2FOL"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaIMPRIME_DESCONTO_AGRUPADO: TIBStringField
      FieldName = 'IMPRIME_DESCONTO_AGRUPADO'
      Origin = '"SIS_EMPRESAS"."IMPRIME_DESCONTO_AGRUPADO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaIMPRIME_RODAPE_ORCAMENTO: TIBStringField
      FieldName = 'IMPRIME_RODAPE_ORCAMENTO'
      Origin = '"SIS_EMPRESAS"."IMPRIME_RODAPE_ORCAMENTO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaTIPO_CUSTO: TIBStringField
      FieldName = 'TIPO_CUSTO'
      Origin = '"SIS_EMPRESAS"."TIPO_CUSTO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaTIPO_ORCAMENTO: TIBStringField
      FieldName = 'TIPO_ORCAMENTO'
      Origin = '"SIS_EMPRESAS"."TIPO_ORCAMENTO"'
      Size = 10
    end
    object SelEmpresaSELECIONA_IMPRESSORA: TIBStringField
      FieldName = 'SELECIONA_IMPRESSORA'
      Origin = '"SIS_EMPRESAS"."SELECIONA_IMPRESSORA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCX_COMP_SLD_ANT: TIBStringField
      FieldName = 'CX_COMP_SLD_ANT'
      Origin = '"SIS_EMPRESAS"."CX_COMP_SLD_ANT"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCX_IMP_VND_AGRUPADA: TIBStringField
      FieldName = 'CX_IMP_VND_AGRUPADA'
      Origin = '"SIS_EMPRESAS"."CX_IMP_VND_AGRUPADA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCX_TRANSP_SLD_ANT: TIBStringField
      FieldName = 'CX_TRANSP_SLD_ANT'
      Origin = '"SIS_EMPRESAS"."CX_TRANSP_SLD_ANT"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaMENS2_ECF: TIBStringField
      FieldName = 'MENS2_ECF'
      Origin = '"SIS_EMPRESAS"."MENS2_ECF"'
      Size = 50
    end
    object SelEmpresaMENS3_ECF: TIBStringField
      FieldName = 'MENS3_ECF'
      Origin = '"SIS_EMPRESAS"."MENS3_ECF"'
      Size = 50
    end
    object SelEmpresaTIPO_CAB_FATURA: TIBStringField
      FieldName = 'TIPO_CAB_FATURA'
      Origin = '"SIS_EMPRESAS"."TIPO_CAB_FATURA"'
      FixedChar = True
      Size = 3
    end
    object SelEmpresaTIPO_CONTAGEM: TIBStringField
      FieldName = 'TIPO_CONTAGEM'
      Origin = '"SIS_EMPRESAS"."TIPO_CONTAGEM"'
      FixedChar = True
      Size = 3
    end
    object SelEmpresaIMP_CASAS_QNTDE_FATURA: TIBStringField
      FieldName = 'IMP_CASAS_QNTDE_FATURA'
      Origin = '"SIS_EMPRESAS"."IMP_CASAS_QNTDE_FATURA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaVALIDA_DOCUMENTOS: TIBStringField
      FieldName = 'VALIDA_DOCUMENTOS'
      Origin = '"SIS_EMPRESAS"."VALIDA_DOCUMENTOS"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaNUMERO_ZEROS: TIntegerField
      FieldName = 'NUMERO_ZEROS'
      Origin = '"SIS_EMPRESAS"."NUMERO_ZEROS"'
    end
    object SelEmpresaPST_MOSTRA_ENTRADAS: TIBStringField
      FieldName = 'PST_MOSTRA_ENTRADAS'
      Origin = '"SIS_EMPRESAS"."PST_MOSTRA_ENTRADAS"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaTROCO_MAXIMO: TFloatField
      FieldName = 'TROCO_MAXIMO'
      Origin = '"SIS_EMPRESAS"."TROCO_MAXIMO"'
    end
    object SelEmpresaMASCARA_FONE: TIBStringField
      FieldName = 'MASCARA_FONE'
      Origin = '"SIS_EMPRESAS"."MASCARA_FONE"'
      Size = 30
    end
    object SelEmpresaCTB_JUROS_RECEBIDOS_REC: TIntegerField
      FieldName = 'CTB_JUROS_RECEBIDOS_REC'
      Origin = '"SIS_EMPRESAS"."CTB_JUROS_RECEBIDOS_REC"'
    end
    object SelEmpresaPDV_REPETE_PRODUTOS: TIBStringField
      FieldName = 'PDV_REPETE_PRODUTOS'
      Origin = '"SIS_EMPRESAS"."PDV_REPETE_PRODUTOS"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaIMPRIME_SUBTOTAL_ORCAMENTO: TIBStringField
      FieldName = 'IMPRIME_SUBTOTAL_ORCAMENTO'
      Origin = '"SIS_EMPRESAS"."IMPRIME_SUBTOTAL_ORCAMENTO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaEMBUTIR_JUROS_IMPRESSOES: TIBStringField
      FieldName = 'EMBUTIR_JUROS_IMPRESSOES'
      Origin = '"SIS_EMPRESAS"."EMBUTIR_JUROS_IMPRESSOES"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaMASCARA_PRODUTOS_ENT: TIBStringField
      FieldName = 'MASCARA_PRODUTOS_ENT'
      Origin = '"SIS_EMPRESAS"."MASCARA_PRODUTOS_ENT"'
      Size = 15
    end
    object SelEmpresaPDV_IMP_VINC_VALOR: TIBStringField
      FieldName = 'PDV_IMP_VINC_VALOR'
      Origin = '"SIS_EMPRESAS"."PDV_IMP_VINC_VALOR"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaPDV_PROPRIEDADE: TIBStringField
      FieldName = 'PDV_PROPRIEDADE'
      Origin = '"SIS_EMPRESAS"."PDV_PROPRIEDADE"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaPST_SENHA_CAIXA: TIBStringField
      FieldName = 'PST_SENHA_CAIXA'
      Origin = '"SIS_EMPRESAS"."PST_SENHA_CAIXA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaIMPRIMIR_POSICOES: TIBStringField
      FieldName = 'IMPRIMIR_POSICOES'
      Origin = '"SIS_EMPRESAS"."IMPRIMIR_POSICOES"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaSINCRONIZAR_BOL_DPL: TIBStringField
      FieldName = 'SINCRONIZAR_BOL_DPL'
      Origin = '"SIS_EMPRESAS"."SINCRONIZAR_BOL_DPL"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCOMISSAO_POR_FAIXA: TIBStringField
      FieldName = 'COMISSAO_POR_FAIXA'
      Origin = '"SIS_EMPRESAS"."COMISSAO_POR_FAIXA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCONTA_CARTAO_CAIXA: TIntegerField
      FieldName = 'CONTA_CARTAO_CAIXA'
      Origin = '"SIS_EMPRESAS"."CONTA_CARTAO_CAIXA"'
    end
    object SelEmpresaDIGITA_VENDEDOR_PDV: TIBStringField
      FieldName = 'DIGITA_VENDEDOR_PDV'
      Origin = '"SIS_EMPRESAS"."DIGITA_VENDEDOR_PDV"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCOMISSAO_NORMAL: TIBStringField
      FieldName = 'COMISSAO_NORMAL'
      Origin = '"SIS_EMPRESAS"."COMISSAO_NORMAL"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaULTIMO_TURNO: TIntegerField
      FieldName = 'ULTIMO_TURNO'
      Origin = '"SIS_EMPRESAS"."ULTIMO_TURNO"'
    end
    object SelEmpresaIP_EXTERNO: TIBStringField
      FieldName = 'IP_EXTERNO'
      Origin = '"SIS_EMPRESAS"."IP_EXTERNO"'
      Size = 15
    end
    object SelEmpresaCAMINHO_EXTERNO: TIBStringField
      FieldName = 'CAMINHO_EXTERNO'
      Origin = '"SIS_EMPRESAS"."CAMINHO_EXTERNO"'
      Size = 50
    end
    object SelEmpresaSENHA_EMPRESA_EXTERNA: TIBStringField
      FieldName = 'SENHA_EMPRESA_EXTERNA'
      Origin = '"SIS_EMPRESAS"."SENHA_EMPRESA_EXTERNA"'
      Size = 10
    end
    object SelEmpresaUTILIZA_DOCTOS_INT_ENTR: TIBStringField
      FieldName = 'UTILIZA_DOCTOS_INT_ENTR'
      Origin = '"SIS_EMPRESAS"."UTILIZA_DOCTOS_INT_ENTR"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCONF_DUPLIC_REC_LANCTO: TIBStringField
      FieldName = 'CONF_DUPLIC_REC_LANCTO'
      Origin = '"SIS_EMPRESAS"."CONF_DUPLIC_REC_LANCTO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaSIS_MENSAGEM_INTERNA: TIBStringField
      FieldName = 'SIS_MENSAGEM_INTERNA'
      Origin = '"SIS_EMPRESAS"."SIS_MENSAGEM_INTERNA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaMENSAGEM_CONDICIONAL: TIBStringField
      FieldName = 'MENSAGEM_CONDICIONAL'
      Origin = '"SIS_EMPRESAS"."MENSAGEM_CONDICIONAL"'
      Size = 50
    end
    object SelEmpresaFAT_TIPO_PARCELAMENTO: TIBStringField
      FieldName = 'FAT_TIPO_PARCELAMENTO'
      Origin = '"SIS_EMPRESAS"."FAT_TIPO_PARCELAMENTO"'
      FixedChar = True
      Size = 3
    end
    object SelEmpresaFAZ_FECHAMENTO_DIARIO: TIBStringField
      FieldName = 'FAZ_FECHAMENTO_DIARIO'
      Origin = '"SIS_EMPRESAS"."FAZ_FECHAMENTO_DIARIO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaATUALIZA_ARQ_EXTERNO: TIBStringField
      FieldName = 'ATUALIZA_ARQ_EXTERNO'
      Origin = '"SIS_EMPRESAS"."ATUALIZA_ARQ_EXTERNO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCAIXA_SINCRONIZADO: TIBStringField
      FieldName = 'CAIXA_SINCRONIZADO'
      Origin = '"SIS_EMPRESAS"."CAIXA_SINCRONIZADO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaICM_PRESUMIDO_IPI: TFloatField
      FieldName = 'ICM_PRESUMIDO_IPI'
      Origin = '"SIS_EMPRESAS"."ICM_PRESUMIDO_IPI"'
    end
    object SelEmpresaICM_PRESUMIDO_SEM_IPI: TFloatField
      FieldName = 'ICM_PRESUMIDO_SEM_IPI'
      Origin = '"SIS_EMPRESAS"."ICM_PRESUMIDO_SEM_IPI"'
    end
    object SelEmpresaALT_PRCVEND_MARGEM: TIBStringField
      FieldName = 'ALT_PRCVEND_MARGEM'
      Origin = '"SIS_EMPRESAS"."ALT_PRCVEND_MARGEM"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaBLQ_VENDA_SEM_IERG: TIBStringField
      FieldName = 'BLQ_VENDA_SEM_IERG'
      Origin = '"SIS_EMPRESAS"."BLQ_VENDA_SEM_IERG"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaPDV_UNITARIO_ZERADO: TIBStringField
      FieldName = 'PDV_UNITARIO_ZERADO'
      Origin = '"SIS_EMPRESAS"."PDV_UNITARIO_ZERADO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaDIRETORIO_TEF: TIBStringField
      FieldName = 'DIRETORIO_TEF'
      Origin = '"SIS_EMPRESAS"."DIRETORIO_TEF"'
      Size = 50
    end
    object SelEmpresaIMPRIME_NF_BALCAO: TIBStringField
      FieldName = 'IMPRIME_NF_BALCAO'
      Origin = '"SIS_EMPRESAS"."IMPRIME_NF_BALCAO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaTRANSF_VLRS_CAIXA: TIBStringField
      FieldName = 'TRANSF_VLRS_CAIXA'
      Origin = '"SIS_EMPRESAS"."TRANSF_VLRS_CAIXA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaLOCAL_FATURA_TROCA: TIBStringField
      FieldName = 'LOCAL_FATURA_TROCA'
      Origin = '"SIS_EMPRESAS"."LOCAL_FATURA_TROCA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaEST_ET_PROD_GRD1: TMemoField
      FieldName = 'EST_ET_PROD_GRD1'
      Origin = '"SIS_EMPRESAS"."EST_ET_PROD_GRD1"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelEmpresaEST_ET_PROD_GRD2: TMemoField
      FieldName = 'EST_ET_PROD_GRD2'
      Origin = '"SIS_EMPRESAS"."EST_ET_PROD_GRD2"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelEmpresaEST_ET_PROD_GRD3: TMemoField
      FieldName = 'EST_ET_PROD_GRD3'
      Origin = '"SIS_EMPRESAS"."EST_ET_PROD_GRD3"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelEmpresaEST_ET_PROD_GRD3_PARC: TMemoField
      FieldName = 'EST_ET_PROD_GRD3_PARC'
      Origin = '"SIS_EMPRESAS"."EST_ET_PROD_GRD3_PARC"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelEmpresaEST_ET_PROD_GRD3_DESCTO: TMemoField
      FieldName = 'EST_ET_PROD_GRD3_DESCTO'
      Origin = '"SIS_EMPRESAS"."EST_ET_PROD_GRD3_DESCTO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelEmpresaEST_ET_PROD_GRD4: TMemoField
      FieldName = 'EST_ET_PROD_GRD4'
      Origin = '"SIS_EMPRESAS"."EST_ET_PROD_GRD4"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelEmpresaCH_INFLUENCIA_VENDA: TIBStringField
      FieldName = 'CH_INFLUENCIA_VENDA'
      Origin = '"SIS_EMPRESAS"."CH_INFLUENCIA_VENDA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCRT_INFLUENCIA_VENDA: TIBStringField
      FieldName = 'CRT_INFLUENCIA_VENDA'
      Origin = '"SIS_EMPRESAS"."CRT_INFLUENCIA_VENDA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaIMP_SERIE_NF: TIBStringField
      FieldName = 'IMP_SERIE_NF'
      Origin = '"SIS_EMPRESAS"."IMP_SERIE_NF"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCONFIG_SERIE_NF: TMemoField
      FieldName = 'CONFIG_SERIE_NF'
      Origin = '"SIS_EMPRESAS"."CONFIG_SERIE_NF"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelEmpresaCONFIG_CT13: TMemoField
      FieldName = 'CONFIG_CT13'
      Origin = '"SIS_EMPRESAS"."CONFIG_CT13"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelEmpresaCONFIG_MALADIRETA: TMemoField
      FieldName = 'CONFIG_MALADIRETA'
      Origin = '"SIS_EMPRESAS"."CONFIG_MALADIRETA"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelEmpresaGERA_BOLETOS: TIBStringField
      FieldName = 'GERA_BOLETOS'
      Origin = '"SIS_EMPRESAS"."GERA_BOLETOS"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaBLT_INSTRUCAO: TMemoField
      FieldName = 'BLT_INSTRUCAO'
      Origin = '"SIS_EMPRESAS"."BLT_INSTRUCAO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelEmpresaBLT_LOCAL_PAGTO: TIBStringField
      FieldName = 'BLT_LOCAL_PAGTO'
      Origin = '"SIS_EMPRESAS"."BLT_LOCAL_PAGTO"'
      Size = 200
    end
    object SelEmpresaBLT_COD_CEDENTE: TIntegerField
      FieldName = 'BLT_COD_CEDENTE'
      Origin = '"SIS_EMPRESAS"."BLT_COD_CEDENTE"'
    end
    object SelEmpresaBLT_DIG_COD_CEDENTE: TIBStringField
      FieldName = 'BLT_DIG_COD_CEDENTE'
      Origin = '"SIS_EMPRESAS"."BLT_DIG_COD_CEDENTE"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaBLT_AGENCIA: TIBStringField
      FieldName = 'BLT_AGENCIA'
      Origin = '"SIS_EMPRESAS"."BLT_AGENCIA"'
      Size = 10
    end
    object SelEmpresaBLT_DIG_AGENCIA: TIBStringField
      FieldName = 'BLT_DIG_AGENCIA'
      Origin = '"SIS_EMPRESAS"."BLT_DIG_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaBLT_CONVENIO: TIntegerField
      FieldName = 'BLT_CONVENIO'
      Origin = '"SIS_EMPRESAS"."BLT_CONVENIO"'
    end
    object SelEmpresaBLT_CONTA: TIBStringField
      FieldName = 'BLT_CONTA'
      Origin = '"SIS_EMPRESAS"."BLT_CONTA"'
      Size = 10
    end
    object SelEmpresaBLT_DIG_CONTA: TIBStringField
      FieldName = 'BLT_DIG_CONTA'
      Origin = '"SIS_EMPRESAS"."BLT_DIG_CONTA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaBLT_CARTEIRA: TIBStringField
      FieldName = 'BLT_CARTEIRA'
      Origin = '"SIS_EMPRESAS"."BLT_CARTEIRA"'
      Size = 10
    end
    object SelEmpresaBLT_LAYOUT: TSmallintField
      FieldName = 'BLT_LAYOUT'
      Origin = '"SIS_EMPRESAS"."BLT_LAYOUT"'
    end
    object SelEmpresaBLT_ACEITE_DOCTO: TIBStringField
      FieldName = 'BLT_ACEITE_DOCTO'
      Origin = '"SIS_EMPRESAS"."BLT_ACEITE_DOCTO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaBLT_DIAS_ABATIMENTO: TIBStringField
      FieldName = 'BLT_DIAS_ABATIMENTO'
      Origin = '"SIS_EMPRESAS"."BLT_DIAS_ABATIMENTO"'
      FixedChar = True
      Size = 14
    end
    object SelEmpresaBLT_DIAS_DESCONTO: TIntegerField
      FieldName = 'BLT_DIAS_DESCONTO'
      Origin = '"SIS_EMPRESAS"."BLT_DIAS_DESCONTO"'
    end
    object SelEmpresaBLT_DIAS_MORA_JUROS: TIntegerField
      FieldName = 'BLT_DIAS_MORA_JUROS'
      Origin = '"SIS_EMPRESAS"."BLT_DIAS_MORA_JUROS"'
    end
    object SelEmpresaBLT_DIAS_PROTESTO: TIntegerField
      FieldName = 'BLT_DIAS_PROTESTO'
      Origin = '"SIS_EMPRESAS"."BLT_DIAS_PROTESTO"'
    end
    object SelEmpresaBLT_PCT_ABATIMENTO: TFloatField
      FieldName = 'BLT_PCT_ABATIMENTO'
      Origin = '"SIS_EMPRESAS"."BLT_PCT_ABATIMENTO"'
    end
    object SelEmpresaBLT_PCT_DESCONTO: TFloatField
      FieldName = 'BLT_PCT_DESCONTO'
      Origin = '"SIS_EMPRESAS"."BLT_PCT_DESCONTO"'
    end
    object SelEmpresaDESP_BANCARIA: TFloatField
      FieldName = 'DESP_BANCARIA'
      Origin = '"SIS_EMPRESAS"."DESP_BANCARIA"'
    end
    object SelEmpresaMORA_DIARIA: TFloatField
      FieldName = 'MORA_DIARIA'
      Origin = '"SIS_EMPRESAS"."MORA_DIARIA"'
    end
    object SelEmpresaBLT_VLR_IOF: TFloatField
      FieldName = 'BLT_VLR_IOF'
      Origin = '"SIS_EMPRESAS"."BLT_VLR_IOF"'
    end
    object SelEmpresaBLT_VLR_OUTRAS_DESP: TFloatField
      FieldName = 'BLT_VLR_OUTRAS_DESP'
      Origin = '"SIS_EMPRESAS"."BLT_VLR_OUTRAS_DESP"'
    end
    object SelEmpresaBLT_DIR_REMESSA: TIBStringField
      FieldName = 'BLT_DIR_REMESSA'
      Origin = '"SIS_EMPRESAS"."BLT_DIR_REMESSA"'
      Size = 200
    end
    object SelEmpresaBLT_DIR_RETORNO: TIBStringField
      FieldName = 'BLT_DIR_RETORNO'
      Origin = '"SIS_EMPRESAS"."BLT_DIR_RETORNO"'
      Size = 200
    end
    object SelEmpresaDESCONTO_MAXIMO: TFloatField
      FieldName = 'DESCONTO_MAXIMO'
      Origin = '"SIS_EMPRESAS"."DESCONTO_MAXIMO"'
    end
    object SelEmpresaCONFIG_NF_SERV: TMemoField
      FieldName = 'CONFIG_NF_SERV'
      Origin = '"SIS_EMPRESAS"."CONFIG_NF_SERV"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelEmpresaDIG_ITENS_NF: TSmallintField
      FieldName = 'DIG_ITENS_NF'
      Origin = '"SIS_EMPRESAS"."DIG_ITENS_NF"'
    end
    object SelEmpresaVALIDA_ABERTURA_CX: TIBStringField
      FieldName = 'VALIDA_ABERTURA_CX'
      Origin = '"SIS_EMPRESAS"."VALIDA_ABERTURA_CX"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCONTROLE_PEDIDO_RESTAURANTE: TIBStringField
      FieldName = 'CONTROLE_PEDIDO_RESTAURANTE'
      Origin = '"SIS_EMPRESAS"."CONTROLE_PEDIDO_RESTAURANTE"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaDB_VERSAO: TIntegerField
      FieldName = 'DB_VERSAO'
      Origin = '"SIS_EMPRESAS"."DB_VERSAO"'
    end
    object SelEmpresaTAXA_ACRESC_PDV: TFloatField
      FieldName = 'TAXA_ACRESC_PDV'
      Origin = '"SIS_EMPRESAS"."TAXA_ACRESC_PDV"'
    end
    object SelEmpresaMSG_PDVTELA: TIBStringField
      FieldName = 'MSG_PDVTELA'
      Origin = '"SIS_EMPRESAS"."MSG_PDVTELA"'
      Size = 200
    end
    object SelEmpresaCONTAGEM_INCREMENTAL: TIBStringField
      FieldName = 'CONTAGEM_INCREMENTAL'
      Origin = '"SIS_EMPRESAS"."CONTAGEM_INCREMENTAL"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaEXIBE_MOD: TIBStringField
      FieldName = 'EXIBE_MOD'
      Origin = '"SIS_EMPRESAS"."EXIBE_MOD"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaEXIBE_PENDENCIA: TIBStringField
      FieldName = 'EXIBE_PENDENCIA'
      Origin = '"SIS_EMPRESAS"."EXIBE_PENDENCIA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaKEY_RELEASE: TIBStringField
      FieldName = 'KEY_RELEASE'
      Origin = '"SIS_EMPRESAS"."KEY_RELEASE"'
      Size = 50
    end
    object SelEmpresaEXIBE_MESAS: TIBStringField
      FieldName = 'EXIBE_MESAS'
      Origin = '"SIS_EMPRESAS"."EXIBE_MESAS"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaEXIBE_CTB: TIBStringField
      FieldName = 'EXIBE_CTB'
      Origin = '"SIS_EMPRESAS"."EXIBE_CTB"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaEXIBE_CB: TIBStringField
      FieldName = 'EXIBE_CB'
      Origin = '"SIS_EMPRESAS"."EXIBE_CB"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaEXIBE_SRV: TIBStringField
      FieldName = 'EXIBE_SRV'
      Origin = '"SIS_EMPRESAS"."EXIBE_SRV"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCARREGAMENTO_PARCIAL: TIBStringField
      FieldName = 'CARREGAMENTO_PARCIAL'
      Origin = '"SIS_EMPRESAS"."CARREGAMENTO_PARCIAL"'
      Size = 8
    end
    object SelEmpresaCONFIG_NF_GRAF: TMemoField
      FieldName = 'CONFIG_NF_GRAF'
      Origin = '"SIS_EMPRESAS"."CONFIG_NF_GRAF"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelEmpresaBLT_EMAIL_SERVIDOR: TIBStringField
      FieldName = 'BLT_EMAIL_SERVIDOR'
      Origin = '"SIS_EMPRESAS"."BLT_EMAIL_SERVIDOR"'
      Size = 50
    end
    object SelEmpresaBLT_EMAIL_PORTA: TSmallintField
      FieldName = 'BLT_EMAIL_PORTA'
      Origin = '"SIS_EMPRESAS"."BLT_EMAIL_PORTA"'
    end
    object SelEmpresaBLT_EMAIL_USER: TIBStringField
      FieldName = 'BLT_EMAIL_USER'
      Origin = '"SIS_EMPRESAS"."BLT_EMAIL_USER"'
      Size = 50
    end
    object SelEmpresaBLT_EMAIL_SENHA: TIBStringField
      FieldName = 'BLT_EMAIL_SENHA'
      Origin = '"SIS_EMPRESAS"."BLT_EMAIL_SENHA"'
      Size = 50
    end
    object SelEmpresaBLT_NOSSO_NUM_INI: TIntegerField
      FieldName = 'BLT_NOSSO_NUM_INI'
      Origin = '"SIS_EMPRESAS"."BLT_NOSSO_NUM_INI"'
    end
    object SelEmpresaBLT_NOSSO_NUM_FIM: TIntegerField
      FieldName = 'BLT_NOSSO_NUM_FIM'
      Origin = '"SIS_EMPRESAS"."BLT_NOSSO_NUM_FIM"'
    end
    object SelEmpresaBLT_NOSSO_NUM_PROX: TIntegerField
      FieldName = 'BLT_NOSSO_NUM_PROX'
      Origin = '"SIS_EMPRESAS"."BLT_NOSSO_NUM_PROX"'
    end
    object SelEmpresaEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"SIS_EMPRESAS"."EMAIL"'
      Size = 50
    end
    object SelEmpresaBLT_MULTA: TFloatField
      FieldName = 'BLT_MULTA'
      Origin = '"SIS_EMPRESAS"."BLT_MULTA"'
    end
    object SelEmpresaCONFIG_COPIA_CHEQUE: TMemoField
      FieldName = 'CONFIG_COPIA_CHEQUE'
      Origin = '"SIS_EMPRESAS"."CONFIG_COPIA_CHEQUE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelEmpresaCONFIG_SERIE_ORC_NF: TMemoField
      FieldName = 'CONFIG_SERIE_ORC_NF'
      Origin = '"SIS_EMPRESAS"."CONFIG_SERIE_ORC_NF"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelEmpresaCONFIG_REQUISICAO: TMemoField
      FieldName = 'CONFIG_REQUISICAO'
      Origin = '"SIS_EMPRESAS"."CONFIG_REQUISICAO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelEmpresaCONFIG_CARTA_SCPC: TMemoField
      FieldName = 'CONFIG_CARTA_SCPC'
      Origin = '"SIS_EMPRESAS"."CONFIG_CARTA_SCPC"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelEmpresaATIVA_AGENTE: TIBStringField
      FieldName = 'ATIVA_AGENTE'
      Origin = '"SIS_EMPRESAS"."ATIVA_AGENTE"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaNF_CONTINUO_COM_MESMO_NUM_NF: TIBStringField
      FieldName = 'NF_CONTINUO_COM_MESMO_NUM_NF'
      Origin = '"SIS_EMPRESAS"."NF_CONTINUO_COM_MESMO_NUM_NF"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaNF_CONTINUO_NOME_CAMPO_TRUE: TIBStringField
      FieldName = 'NF_CONTINUO_NOME_CAMPO_TRUE'
      Origin = '"SIS_EMPRESAS"."NF_CONTINUO_NOME_CAMPO_TRUE"'
      Size = 50
    end
    object SelEmpresaCONFIG_CONVENIO_PDV: TMemoField
      FieldName = 'CONFIG_CONVENIO_PDV'
      Origin = '"SIS_EMPRESAS"."CONFIG_CONVENIO_PDV"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelEmpresaIMP_CONVENIO_GRAF: TIBStringField
      FieldName = 'IMP_CONVENIO_GRAF'
      Origin = '"SIS_EMPRESAS"."IMP_CONVENIO_GRAF"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCONFIG_RECIBO: TMemoField
      FieldName = 'CONFIG_RECIBO'
      Origin = '"SIS_EMPRESAS"."CONFIG_RECIBO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelEmpresaNUM_ITENS_NF: TSmallintField
      FieldName = 'NUM_ITENS_NF'
      Origin = '"SIS_EMPRESAS"."NUM_ITENS_NF"'
    end
    object SelEmpresaNUM_ITENS_PDD: TSmallintField
      FieldName = 'NUM_ITENS_PDD'
      Origin = '"SIS_EMPRESAS"."NUM_ITENS_PDD"'
    end
    object SelEmpresaCONFIG_OS: TMemoField
      FieldName = 'CONFIG_OS'
      Origin = '"SIS_EMPRESAS"."CONFIG_OS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelEmpresaOFC_LT_PRODUTO_COPIAS: TIBStringField
      FieldName = 'OFC_LT_PRODUTO_COPIAS'
      Origin = '"SIS_EMPRESAS"."OFC_LT_PRODUTO_COPIAS"'
      Size = 15
    end
    object SelEmpresaEXIBE_AGR: TIBStringField
      FieldName = 'EXIBE_AGR'
      Origin = '"SIS_EMPRESAS"."EXIBE_AGR"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaIE: TIBStringField
      FieldName = 'IE'
      Origin = '"SIS_EMPRESAS"."IE"'
      Size = 15
    end
    object SelEmpresaCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = '"SIS_EMPRESAS"."COD_CIDADE"'
    end
    object SelEmpresaCOD_LOGRADOURO: TIntegerField
      FieldName = 'COD_LOGRADOURO'
      Origin = '"SIS_EMPRESAS"."COD_LOGRADOURO"'
    end
    object SelEmpresaCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
      Origin = '"SIS_EMPRESAS"."COD_BAIRRO"'
    end
    object SelEmpresaEND_NUMERO: TIntegerField
      FieldName = 'END_NUMERO'
      Origin = '"SIS_EMPRESAS"."END_NUMERO"'
    end
    object SelEmpresaEXIBE_CARGA: TIBStringField
      FieldName = 'EXIBE_CARGA'
      Origin = '"SIS_EMPRESAS"."EXIBE_CARGA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaEXIBE_NFE: TIBStringField
      FieldName = 'EXIBE_NFE'
      Origin = '"SIS_EMPRESAS"."EXIBE_NFE"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaEXIBE_SINTEGRA: TIBStringField
      FieldName = 'EXIBE_SINTEGRA'
      Origin = '"SIS_EMPRESAS"."EXIBE_SINTEGRA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaNFE_AMBIENTE: TIBStringField
      FieldName = 'NFE_AMBIENTE'
      Origin = '"SIS_EMPRESAS"."NFE_AMBIENTE"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaNFE_VERSAO_APP: TIBStringField
      FieldName = 'NFE_VERSAO_APP'
      Origin = '"SIS_EMPRESAS"."NFE_VERSAO_APP"'
    end
    object SelEmpresaNFE_DIR_EXPORTACAO: TIBStringField
      FieldName = 'NFE_DIR_EXPORTACAO'
      Origin = '"SIS_EMPRESAS"."NFE_DIR_EXPORTACAO"'
      Size = 200
    end
    object SelEmpresaNFE_LEIAUTE_DANFE: TIBStringField
      FieldName = 'NFE_LEIAUTE_DANFE'
      Origin = '"SIS_EMPRESAS"."NFE_LEIAUTE_DANFE"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaLOCAL_PADRAO: TIBStringField
      FieldName = 'LOCAL_PADRAO'
      Origin = '"SIS_EMPRESAS"."LOCAL_PADRAO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCONFIG_AGR_RECEITA: TMemoField
      FieldName = 'CONFIG_AGR_RECEITA'
      Origin = '"SIS_EMPRESAS"."CONFIG_AGR_RECEITA"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelEmpresaCONFIG_ACERTO_1: TMemoField
      FieldName = 'CONFIG_ACERTO_1'
      Origin = '"SIS_EMPRESAS"."CONFIG_ACERTO_1"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelEmpresaDESC_BX_PARCIAL: TIBStringField
      FieldName = 'DESC_BX_PARCIAL'
      Origin = '"SIS_EMPRESAS"."DESC_BX_PARCIAL"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCM_AGR: TIBStringField
      FieldName = 'CM_AGR'
      Origin = '"SIS_EMPRESAS"."CM_AGR"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCM_VDT: TIBStringField
      FieldName = 'CM_VDT'
      Origin = '"SIS_EMPRESAS"."CM_VDT"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCMD_VDT_PCT: TFloatField
      FieldName = 'CMD_VDT_PCT'
      Origin = '"SIS_EMPRESAS"."CMD_VDT_PCT"'
    end
    object SelEmpresaPDV_FORMA_PAGTO: TIntegerField
      FieldName = 'PDV_FORMA_PAGTO'
      Origin = '"SIS_EMPRESAS"."PDV_FORMA_PAGTO"'
    end
    object SelEmpresaEXIBE_TBL: TIBStringField
      FieldName = 'EXIBE_TBL'
      Origin = '"SIS_EMPRESAS"."EXIBE_TBL"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaEXIBE_ACERTO_CONTAS: TIBStringField
      FieldName = 'EXIBE_ACERTO_CONTAS'
      Origin = '"SIS_EMPRESAS"."EXIBE_ACERTO_CONTAS"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaEMAIL_PADRAO: TIBStringField
      FieldName = 'EMAIL_PADRAO'
      Origin = '"SIS_EMPRESAS"."EMAIL_PADRAO"'
      Size = 80
    end
    object SelEmpresaSMTP: TIBStringField
      FieldName = 'SMTP'
      Origin = '"SIS_EMPRESAS"."SMTP"'
    end
    object SelEmpresaLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = '"SIS_EMPRESAS"."LOGIN"'
    end
    object SelEmpresaSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"SIS_EMPRESAS"."SENHA"'
    end
    object SelEmpresaNOME_USUARIO: TIBStringField
      FieldName = 'NOME_USUARIO'
      Origin = '"SIS_EMPRESAS"."NOME_USUARIO"'
      Size = 80
    end
    object SelEmpresaEMAIL_CONTROLE: TIBStringField
      FieldName = 'EMAIL_CONTROLE'
      Origin = '"SIS_EMPRESAS"."EMAIL_CONTROLE"'
      Size = 80
    end
    object SelEmpresaEXIBE_MESALIDADES: TIBStringField
      FieldName = 'EXIBE_MESALIDADES'
      Origin = '"SIS_EMPRESAS"."EXIBE_MESALIDADES"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaFORMA_PAGTO_MENSALIDADE: TIntegerField
      FieldName = 'FORMA_PAGTO_MENSALIDADE'
      Origin = '"SIS_EMPRESAS"."FORMA_PAGTO_MENSALIDADE"'
    end
    object SelEmpresaNFE_CERT_CAMINHO: TIBStringField
      FieldName = 'NFE_CERT_CAMINHO'
      Origin = '"SIS_EMPRESAS"."NFE_CERT_CAMINHO"'
      Size = 80
    end
    object SelEmpresaNFE_CERT_SENHA: TIBStringField
      FieldName = 'NFE_CERT_SENHA'
      Origin = '"SIS_EMPRESAS"."NFE_CERT_SENHA"'
      Size = 80
    end
    object SelEmpresaNFE_CERT_NUM_SERIE: TIBStringField
      FieldName = 'NFE_CERT_NUM_SERIE'
      Origin = '"SIS_EMPRESAS"."NFE_CERT_NUM_SERIE"'
      Size = 80
    end
    object SelEmpresaNFE_GER_TP_DANFE: TIBStringField
      FieldName = 'NFE_GER_TP_DANFE'
      Origin = '"SIS_EMPRESAS"."NFE_GER_TP_DANFE"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaNFE_GER_FORMA_EMISSAO: TIBStringField
      FieldName = 'NFE_GER_FORMA_EMISSAO'
      Origin = '"SIS_EMPRESAS"."NFE_GER_FORMA_EMISSAO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaNFE_GER_PATH_LOGS: TIBStringField
      FieldName = 'NFE_GER_PATH_LOGS'
      Origin = '"SIS_EMPRESAS"."NFE_GER_PATH_LOGS"'
      Size = 80
    end
    object SelEmpresaNFE_GER_IMG_DANFE: TIBStringField
      FieldName = 'NFE_GER_IMG_DANFE'
      Origin = '"SIS_EMPRESAS"."NFE_GER_IMG_DANFE"'
      Size = 80
    end
    object SelEmpresaNFE_WS_UF: TIBStringField
      FieldName = 'NFE_WS_UF'
      Origin = '"SIS_EMPRESAS"."NFE_WS_UF"'
      Size = 2
    end
    object SelEmpresaNFE_WS_AMBIENTE: TIBStringField
      FieldName = 'NFE_WS_AMBIENTE'
      Origin = '"SIS_EMPRESAS"."NFE_WS_AMBIENTE"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaNFE_WS_PROXY_HOST: TIBStringField
      FieldName = 'NFE_WS_PROXY_HOST'
      Origin = '"SIS_EMPRESAS"."NFE_WS_PROXY_HOST"'
    end
    object SelEmpresaNFE_WS_PROXY_PORTA: TIBStringField
      FieldName = 'NFE_WS_PROXY_PORTA'
      Origin = '"SIS_EMPRESAS"."NFE_WS_PROXY_PORTA"'
    end
    object SelEmpresaNFE_WS_PROXY_USUARIO: TIBStringField
      FieldName = 'NFE_WS_PROXY_USUARIO'
      Origin = '"SIS_EMPRESAS"."NFE_WS_PROXY_USUARIO"'
    end
    object SelEmpresaNFE_WS_PROXY_SENHA: TIBStringField
      FieldName = 'NFE_WS_PROXY_SENHA'
      Origin = '"SIS_EMPRESAS"."NFE_WS_PROXY_SENHA"'
    end
    object SelEmpresaNFE_EMIT_CNPJ: TIBStringField
      FieldName = 'NFE_EMIT_CNPJ'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_CNPJ"'
      Size = 80
    end
    object SelEmpresaNFE_EMIT_INSC_ESTADUAL: TIBStringField
      FieldName = 'NFE_EMIT_INSC_ESTADUAL'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_INSC_ESTADUAL"'
      Size = 80
    end
    object SelEmpresaNFE_EMIT_FANTASIA: TIBStringField
      FieldName = 'NFE_EMIT_FANTASIA'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_FANTASIA"'
      Size = 80
    end
    object SelEmpresaNFE_EMIT_FONE: TIBStringField
      FieldName = 'NFE_EMIT_FONE'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_FONE"'
    end
    object SelEmpresaNFE_EMIT_CEP: TIBStringField
      FieldName = 'NFE_EMIT_CEP'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_CEP"'
    end
    object SelEmpresaNFE_EMIT_LOGRADOURO: TIBStringField
      FieldName = 'NFE_EMIT_LOGRADOURO'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_LOGRADOURO"'
      Size = 80
    end
    object SelEmpresaNFE_EMIT_BAIRRO: TIBStringField
      FieldName = 'NFE_EMIT_BAIRRO'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_BAIRRO"'
      Size = 80
    end
    object SelEmpresaNFE_EMIT_COMPLEMENTO: TIBStringField
      FieldName = 'NFE_EMIT_COMPLEMENTO'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_COMPLEMENTO"'
      Size = 80
    end
    object SelEmpresaNFE_EMIT_NUMERO: TIntegerField
      FieldName = 'NFE_EMIT_NUMERO'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_NUMERO"'
    end
    object SelEmpresaNFE_EMIT_COD_CIDADE: TIntegerField
      FieldName = 'NFE_EMIT_COD_CIDADE'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_COD_CIDADE"'
    end
    object SelEmpresaNFE_EMIT_CIDADE: TIBStringField
      FieldName = 'NFE_EMIT_CIDADE'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_CIDADE"'
      Size = 80
    end
    object SelEmpresaNFE_EMIT_UF: TIBStringField
      FieldName = 'NFE_EMIT_UF'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_UF"'
      Size = 2
    end
    object SelEmpresaNFE_EMIT_EMAIL: TIBStringField
      FieldName = 'NFE_EMIT_EMAIL'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_EMAIL"'
      Size = 80
    end
    object SelEmpresaNFE_EMAIL_PORTA: TIntegerField
      FieldName = 'NFE_EMAIL_PORTA'
      Origin = '"SIS_EMPRESAS"."NFE_EMAIL_PORTA"'
    end
    object SelEmpresaNFE_EMAIL_USUARIO: TIBStringField
      FieldName = 'NFE_EMAIL_USUARIO'
      Origin = '"SIS_EMPRESAS"."NFE_EMAIL_USUARIO"'
      Size = 80
    end
    object SelEmpresaNFE_EMAIL_SENHA: TIBStringField
      FieldName = 'NFE_EMAIL_SENHA'
      Origin = '"SIS_EMPRESAS"."NFE_EMAIL_SENHA"'
    end
    object SelEmpresaNFE_EMAIL_SMTP_SEGURA: TIBStringField
      FieldName = 'NFE_EMAIL_SMTP_SEGURA'
      Origin = '"SIS_EMPRESAS"."NFE_EMAIL_SMTP_SEGURA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaNFE_EMAIL_SMTP: TIBStringField
      FieldName = 'NFE_EMAIL_SMTP'
      Origin = '"SIS_EMPRESAS"."NFE_EMAIL_SMTP"'
    end
    object SelEmpresaNFE_EMIT_RAZAO_SOCIAL: TIBStringField
      FieldName = 'NFE_EMIT_RAZAO_SOCIAL'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_RAZAO_SOCIAL"'
      Size = 80
    end
    object SelEmpresaEXIBE_INDICE_PDV: TIBStringField
      FieldName = 'EXIBE_INDICE_PDV'
      Origin = '"SIS_EMPRESAS"."EXIBE_INDICE_PDV"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaNFE_PATH_LEIAUTE_DANFE: TIBStringField
      FieldName = 'NFE_PATH_LEIAUTE_DANFE'
      Origin = '"SIS_EMPRESAS"."NFE_PATH_LEIAUTE_DANFE"'
      Size = 200
    end
    object SelEmpresaBCH_FILIAL: TIntegerField
      FieldName = 'BCH_FILIAL'
      Origin = '"SIS_EMPRESAS"."BCH_FILIAL"'
    end
    object SelEmpresaBCH_INS_MUN: TSmallintField
      FieldName = 'BCH_INS_MUN'
      Origin = '"SIS_EMPRESAS"."BCH_INS_MUN"'
    end
    object SelEmpresaBCH_NOMECONTATO: TIBStringField
      FieldName = 'BCH_NOMECONTATO'
      Origin = '"SIS_EMPRESAS"."BCH_NOMECONTATO"'
      Size = 50
    end
    object SelEmpresaNOME_CIDADE: TIBStringField
      FieldName = 'NOME_CIDADE'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object SelEmpresaNOME_LOGRADOURO: TIBStringField
      FieldName = 'NOME_LOGRADOURO'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      Size = 50
    end
    object SelEmpresaNOME_BAIRRO: TIBStringField
      FieldName = 'NOME_BAIRRO'
      Origin = '"GLO_BAIRROS"."NOME"'
      Size = 50
    end
    object SelEmpresaBCH_PATH: TIBStringField
      FieldName = 'BCH_PATH'
      Origin = '"SIS_EMPRESAS"."BCH_PATH"'
      Size = 200
    end
    object SelEmpresaOFC_EXIBE_COPIAS: TIBStringField
      FieldName = 'OFC_EXIBE_COPIAS'
      Origin = '"SIS_EMPRESAS"."OFC_EXIBE_COPIAS"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaOFC_EXIBE_MOVTO_AVULSO: TIBStringField
      FieldName = 'OFC_EXIBE_MOVTO_AVULSO'
      Origin = '"SIS_EMPRESAS"."OFC_EXIBE_MOVTO_AVULSO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaOFC_EXIBE_VISUALIZACAO: TIBStringField
      FieldName = 'OFC_EXIBE_VISUALIZACAO'
      Origin = '"SIS_EMPRESAS"."OFC_EXIBE_VISUALIZACAO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaOFC_EXIBE_VISITA_PREVENTIVA: TIBStringField
      FieldName = 'OFC_EXIBE_VISITA_PREVENTIVA'
      Origin = '"SIS_EMPRESAS"."OFC_EXIBE_VISITA_PREVENTIVA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaOFC_EXIBE_MOVIMENTOS_OS: TIBStringField
      FieldName = 'OFC_EXIBE_MOVIMENTOS_OS'
      Origin = '"SIS_EMPRESAS"."OFC_EXIBE_MOVIMENTOS_OS"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaOFC_ENVIO_EMAIL_AUTOMATICO: TIBStringField
      FieldName = 'OFC_ENVIO_EMAIL_AUTOMATICO'
      Origin = '"SIS_EMPRESAS"."OFC_ENVIO_EMAIL_AUTOMATICO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaOFC_CONTROLA_TEMPO_RESPOSTA: TIBStringField
      FieldName = 'OFC_CONTROLA_TEMPO_RESPOSTA'
      Origin = '"SIS_EMPRESAS"."OFC_CONTROLA_TEMPO_RESPOSTA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCM_LIB_PCT_VD_VISTA: TFloatField
      FieldName = 'CM_LIB_PCT_VD_VISTA'
      Origin = '"SIS_EMPRESAS"."CM_LIB_PCT_VD_VISTA"'
    end
    object SelEmpresaCM_LIB_PCT_VD_PRAZO: TFloatField
      FieldName = 'CM_LIB_PCT_VD_PRAZO'
      Origin = '"SIS_EMPRESAS"."CM_LIB_PCT_VD_PRAZO"'
    end
    object SelEmpresaPDV_QTDE_COD_BARRAS: TIBStringField
      FieldName = 'PDV_QTDE_COD_BARRAS'
      Origin = '"SIS_EMPRESAS"."PDV_QTDE_COD_BARRAS"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaOFC_EXIBE_DADOS_COMPLEMENTARES: TIBStringField
      FieldName = 'OFC_EXIBE_DADOS_COMPLEMENTARES'
      Origin = '"SIS_EMPRESAS"."OFC_EXIBE_DADOS_COMPLEMENTARES"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaOFC_EXIBE_NOTIFICACAO: TIBStringField
      FieldName = 'OFC_EXIBE_NOTIFICACAO'
      Origin = '"SIS_EMPRESAS"."OFC_EXIBE_NOTIFICACAO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaPDV_IMP_CONVENIO: TIBStringField
      FieldName = 'PDV_IMP_CONVENIO'
      Origin = '"SIS_EMPRESAS"."PDV_IMP_CONVENIO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaBLOQUEIA_MVB: TIBStringField
      FieldName = 'BLOQUEIA_MVB'
      Origin = '"SIS_EMPRESAS"."BLOQUEIA_MVB"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCM_TX_ADMISTRACAO: TFloatField
      FieldName = 'CM_TX_ADMISTRACAO'
      Origin = '"SIS_EMPRESAS"."CM_TX_ADMISTRACAO"'
    end
    object SelEmpresaIMP_PROD_DUPLICATA: TIBStringField
      FieldName = 'IMP_PROD_DUPLICATA'
      Origin = '"SIS_EMPRESAS"."IMP_PROD_DUPLICATA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaBCH_AUTO_IMPORTA: TIBStringField
      FieldName = 'BCH_AUTO_IMPORTA'
      Origin = '"SIS_EMPRESAS"."BCH_AUTO_IMPORTA"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaACT_MULTI_SELETOR: TIBStringField
      FieldName = 'ACT_MULTI_SELETOR'
      Origin = '"SIS_EMPRESAS"."ACT_MULTI_SELETOR"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaEDITA_NUM_NF: TIBStringField
      FieldName = 'EDITA_NUM_NF'
      Origin = '"SIS_EMPRESAS"."EDITA_NUM_NF"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaELIMINA_ZERO_PRD_SEM_GRADE: TIBStringField
      FieldName = 'ELIMINA_ZERO_PRD_SEM_GRADE'
      Origin = '"SIS_EMPRESAS"."ELIMINA_ZERO_PRD_SEM_GRADE"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaBCH_PATH_PEDIDOS: TIBStringField
      FieldName = 'BCH_PATH_PEDIDOS'
      Origin = '"SIS_EMPRESAS"."BCH_PATH_PEDIDOS"'
      Size = 200
    end
    object SelEmpresaBCH_ATIVO: TIBStringField
      FieldName = 'BCH_ATIVO'
      Origin = '"SIS_EMPRESAS"."BCH_ATIVO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaBCH_CONC_CODIGO_PRODUTO: TIBStringField
      FieldName = 'BCH_CONC_CODIGO_PRODUTO'
      Origin = '"SIS_EMPRESAS"."BCH_CONC_CODIGO_PRODUTO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaBCH_HABILITA_SINC_AUT: TIBStringField
      FieldName = 'BCH_HABILITA_SINC_AUT'
      Origin = '"SIS_EMPRESAS"."BCH_HABILITA_SINC_AUT"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaALTERA_VLR_CNT_PAGAR: TIBStringField
      FieldName = 'ALTERA_VLR_CNT_PAGAR'
      Origin = '"SIS_EMPRESAS"."ALTERA_VLR_CNT_PAGAR"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCTB_DT_AVISO_BANCARIO: TIBStringField
      FieldName = 'CTB_DT_AVISO_BANCARIO'
      Origin = '"SIS_EMPRESAS"."CTB_DT_AVISO_BANCARIO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaDT_CX_MOVTO_ANTERIOR: TIBStringField
      FieldName = 'DT_CX_MOVTO_ANTERIOR'
      Origin = '"SIS_EMPRESAS"."DT_CX_MOVTO_ANTERIOR"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaBCH_EXIBE_DESCONTO: TIBStringField
      FieldName = 'BCH_EXIBE_DESCONTO'
      Origin = '"SIS_EMPRESAS"."BCH_EXIBE_DESCONTO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaNFE_DESTACA_ICMS_SUB: TIBStringField
      FieldName = 'NFE_DESTACA_ICMS_SUB'
      Origin = '"SIS_EMPRESAS"."NFE_DESTACA_ICMS_SUB"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaNFE_CNAE: TIBStringField
      FieldName = 'NFE_CNAE'
      Origin = '"SIS_EMPRESAS"."NFE_CNAE"'
    end
    object SelEmpresaREGIME_TRIBUTARIO: TIBStringField
      FieldName = 'REGIME_TRIBUTARIO'
      Origin = '"SIS_EMPRESAS"."REGIME_TRIBUTARIO"'
      Size = 50
    end
    object SelEmpresaFONES_SUPORTE: TIBStringField
      FieldName = 'FONES_SUPORTE'
      Origin = '"SIS_EMPRESAS"."FONES_SUPORTE"'
      Size = 100
    end
    object SelEmpresaEST_MIN_CONTA_EMAIL_ENVIO: TIBStringField
      FieldName = 'EST_MIN_CONTA_EMAIL_ENVIO'
      Origin = '"SIS_EMPRESAS"."EST_MIN_CONTA_EMAIL_ENVIO"'
      Size = 100
    end
    object SelEmpresaEST_MIN_SMTP_EMAIL_ENVIO: TIBStringField
      FieldName = 'EST_MIN_SMTP_EMAIL_ENVIO'
      Origin = '"SIS_EMPRESAS"."EST_MIN_SMTP_EMAIL_ENVIO"'
      Size = 50
    end
    object SelEmpresaEST_MIN_LOGIN_EMAIL_ENVIO: TIBStringField
      FieldName = 'EST_MIN_LOGIN_EMAIL_ENVIO'
      Origin = '"SIS_EMPRESAS"."EST_MIN_LOGIN_EMAIL_ENVIO"'
      Size = 50
    end
    object SelEmpresaEST_MIN_PASSWORD_EMAIL_ENVIO: TIBStringField
      FieldName = 'EST_MIN_PASSWORD_EMAIL_ENVIO'
      Origin = '"SIS_EMPRESAS"."EST_MIN_PASSWORD_EMAIL_ENVIO"'
      Size = 50
    end
    object SelEmpresaEST_MIN_DESTINOS_EMAIL_ENVIO: TIBStringField
      FieldName = 'EST_MIN_DESTINOS_EMAIL_ENVIO'
      Origin = '"SIS_EMPRESAS"."EST_MIN_DESTINOS_EMAIL_ENVIO"'
      Size = 600
    end
    object SelEmpresaMAP_HTML_VIEW: TMemoField
      FieldName = 'MAP_HTML_VIEW'
      Origin = '"SIS_EMPRESAS"."MAP_HTML_VIEW"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelEmpresaOFC_GERA_FAT_AUTOMATICO: TIBStringField
      FieldName = 'OFC_GERA_FAT_AUTOMATICO'
      Origin = '"SIS_EMPRESAS"."OFC_GERA_FAT_AUTOMATICO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaNFE_ENT_PATH_IMPORTACAO: TIBStringField
      FieldName = 'NFE_ENT_PATH_IMPORTACAO'
      Origin = '"SIS_EMPRESAS"."NFE_ENT_PATH_IMPORTACAO"'
      Size = 180
    end
    object SelEmpresaNFE_ENT_CFOP_IMPORTACAO: TIntegerField
      FieldName = 'NFE_ENT_CFOP_IMPORTACAO'
      Origin = '"SIS_EMPRESAS"."NFE_ENT_CFOP_IMPORTACAO"'
    end
    object SelEmpresaNFE_ENT_CFOP_IMPORTACAO_INT: TIntegerField
      FieldName = 'NFE_ENT_CFOP_IMPORTACAO_INT'
      Origin = '"SIS_EMPRESAS"."NFE_ENT_CFOP_IMPORTACAO_INT"'
    end
    object SelEmpresaFIN_EXIBE_GRAFICOS: TIBStringField
      FieldName = 'FIN_EXIBE_GRAFICOS'
      Origin = '"SIS_EMPRESAS"."FIN_EXIBE_GRAFICOS"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaEXIBE_CTR_OBRAS: TIBStringField
      FieldName = 'EXIBE_CTR_OBRAS'
      Origin = '"SIS_EMPRESAS"."EXIBE_CTR_OBRAS"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCTR_INSS: TFloatField
      FieldName = 'CTR_INSS'
      Origin = '"SIS_EMPRESAS"."CTR_INSS"'
    end
    object SelEmpresaCTR_IRPJ: TFloatField
      FieldName = 'CTR_IRPJ'
      Origin = '"SIS_EMPRESAS"."CTR_IRPJ"'
    end
    object SelEmpresaCTR_ISS: TFloatField
      FieldName = 'CTR_ISS'
      Origin = '"SIS_EMPRESAS"."CTR_ISS"'
    end
    object SelEmpresaCTR_PIS: TFloatField
      FieldName = 'CTR_PIS'
      Origin = '"SIS_EMPRESAS"."CTR_PIS"'
    end
    object SelEmpresaCTR_COFINS: TFloatField
      FieldName = 'CTR_COFINS'
      Origin = '"SIS_EMPRESAS"."CTR_COFINS"'
    end
    object SelEmpresaCTR_CSLL: TFloatField
      FieldName = 'CTR_CSLL'
      Origin = '"SIS_EMPRESAS"."CTR_CSLL"'
    end
    object SelEmpresaCC_INSS: TIntegerField
      FieldName = 'CC_INSS'
      Origin = '"SIS_EMPRESAS"."CC_INSS"'
    end
    object SelEmpresaCC_IRPJ: TIntegerField
      FieldName = 'CC_IRPJ'
      Origin = '"SIS_EMPRESAS"."CC_IRPJ"'
    end
    object SelEmpresaCC_ISS: TIntegerField
      FieldName = 'CC_ISS'
      Origin = '"SIS_EMPRESAS"."CC_ISS"'
    end
    object SelEmpresaCC_PIS: TIntegerField
      FieldName = 'CC_PIS'
      Origin = '"SIS_EMPRESAS"."CC_PIS"'
    end
    object SelEmpresaCC_COFINS: TIntegerField
      FieldName = 'CC_COFINS'
      Origin = '"SIS_EMPRESAS"."CC_COFINS"'
    end
    object SelEmpresaCC_CSLL: TIntegerField
      FieldName = 'CC_CSLL'
      Origin = '"SIS_EMPRESAS"."CC_CSLL"'
    end
    object SelEmpresaCTR_BASE_INSS_MUN: TFloatField
      FieldName = 'CTR_BASE_INSS_MUN'
      Origin = '"SIS_EMPRESAS"."CTR_BASE_INSS_MUN"'
    end
    object SelEmpresaCTR_BASE_INSS_NAC: TFloatField
      FieldName = 'CTR_BASE_INSS_NAC'
      Origin = '"SIS_EMPRESAS"."CTR_BASE_INSS_NAC"'
    end
    object SelEmpresaCTR_BASE_ISS_MUN: TFloatField
      FieldName = 'CTR_BASE_ISS_MUN'
      Origin = '"SIS_EMPRESAS"."CTR_BASE_ISS_MUN"'
    end
    object SelEmpresaCTR_BASE_ISS_NAC: TFloatField
      FieldName = 'CTR_BASE_ISS_NAC'
      Origin = '"SIS_EMPRESAS"."CTR_BASE_ISS_NAC"'
    end
  end
  object QryParcReceber: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeDelete = QryParcReceberBeforeDelete
    BeforePost = QryParcReceberBeforePost
    OnNewRecord = QryParcReceberNewRecord
    DeleteSQL.Strings = (
      'delete from ctr_parc'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into ctr_parc'
      
        '  (CC_CUSTO, COD_CONTRATO, COD_PAGAR, CODIGO, DT_LANCTO, DT_VENC' +
        'TO, EMPRESA, '
      '   HISTORICO, IMPOSTO, PROVISIONADO, TIPO, VALOR)'
      'values'
      
        '  (:CC_CUSTO, :COD_CONTRATO, :COD_PAGAR, :CODIGO, :DT_LANCTO, :D' +
        'T_VENCTO, '
      '   :EMPRESA, :HISTORICO, :IMPOSTO, :PROVISIONADO, :TIPO, :VALOR)')
    RefreshSQL.Strings = (
      
        'select p.*, e.nome nome_empresa, cc.nome centro_custo from ctr_p' +
        'arc p'
      'left join sis_empresas e on (e.cnpj = p.empresa)'
      
        'left join fin_centro_custo cc on (cc.cnpj = p.empresa and cc.cod' +
        'igo = p.cc_custo)'
      'where p.cod_contrato = :codigo and p.tipo = '#39'C'#39
      'and  p.CODIGO = :CODIGO')
    SelectSQL.Strings = (
      
        'select p.*, e.nome nome_empresa, cc.nome centro_custo from ctr_p' +
        'arc p'
      'left join sis_empresas e on (e.cnpj = p.empresa)'
      
        'left join fin_centro_custo cc on (cc.cnpj = p.empresa and cc.cod' +
        'igo = p.cc_custo)'
      'where p.cod_contrato = :codigo and p.tipo = '#39'C'#39)
    ModifySQL.Strings = (
      'update ctr_parc'
      'set'
      '  CC_CUSTO = :CC_CUSTO,'
      '  COD_CONTRATO = :COD_CONTRATO,'
      '  COD_PAGAR = :COD_PAGAR,'
      '  CODIGO = :CODIGO,'
      '  DT_LANCTO = :DT_LANCTO,'
      '  DT_VENCTO = :DT_VENCTO,'
      '  EMPRESA = :EMPRESA,'
      '  HISTORICO = :HISTORICO,'
      '  IMPOSTO = :IMPOSTO,'
      '  PROVISIONADO = :PROVISIONADO,'
      '  TIPO = :TIPO,'
      '  VALOR = :VALOR'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_CTR_PARC_ID'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = DataSource
    Left = 416
    Top = 2
    object QryParcReceberCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CTR_PARC"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryParcReceberCOD_CONTRATO: TIntegerField
      DisplayLabel = 'C'#243'd. Contrato'
      FieldName = 'COD_CONTRATO'
      Origin = '"CTR_PARC"."COD_CONTRATO"'
    end
    object QryParcReceberDT_LANCTO: TDateTimeField
      DisplayLabel = 'Dt. Lancto'
      FieldName = 'DT_LANCTO'
      Origin = '"CTR_PARC"."DT_LANCTO"'
    end
    object QryParcReceberDT_VENCTO: TDateTimeField
      DisplayLabel = 'Dt. Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"CTR_PARC"."DT_VENCTO"'
    end
    object QryParcReceberVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"CTR_PARC"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object QryParcReceberCOD_PAGAR: TIntegerField
      DisplayLabel = 'C'#243'd. Receber'
      FieldName = 'COD_PAGAR'
      Origin = '"CTR_PARC"."COD_PAGAR"'
    end
    object QryParcReceberEMPRESA: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRESA'
      Origin = '"CTR_PARC"."EMPRESA"'
      FixedChar = True
      Size = 14
    end
    object QryParcReceberHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"CTR_PARC"."HISTORICO"'
      Size = 100
    end
    object QryParcReceberIMPOSTO: TIBStringField
      DisplayLabel = 'Desc.'
      FieldName = 'IMPOSTO'
      Origin = '"CTR_PARC"."IMPOSTO"'
      Size = 16
    end
    object QryParcReceberCC_CUSTO: TIntegerField
      DisplayLabel = 'C. Custo'
      FieldName = 'CC_CUSTO'
      Origin = '"CTR_PARC"."CC_CUSTO"'
    end
    object QryParcReceberTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"CTR_PARC"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object QryParcReceberPROVISIONADO: TIBStringField
      DisplayLabel = 'Prov'
      FieldName = 'PROVISIONADO'
      Origin = '"CTR_PARC"."PROVISIONADO"'
      FixedChar = True
      Size = 1
    end
    object QryParcReceberNOME_EMPRESA: TIBStringField
      DisplayLabel = 'Nome Empresa'
      FieldName = 'NOME_EMPRESA'
      Origin = '"SIS_EMPRESAS"."NOME"'
      Size = 50
    end
    object QryParcReceberCENTRO_CUSTO: TIBStringField
      DisplayLabel = 'Centro de Custo'
      FieldName = 'CENTRO_CUSTO'
      Origin = '"FIN_CENTRO_CUSTO"."NOME"'
      Size = 50
    end
  end
end
