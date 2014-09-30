object FrmContratosItens: TFrmContratosItens
  Left = 368
  Top = 219
  BorderStyle = bsDialog
  Caption = ' Itens do Contrato'
  ClientHeight = 457
  ClientWidth = 738
  Color = clBtnFace
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
  object Panel1: TPanel
    Left = 0
    Top = 424
    Width = 738
    Height = 33
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object btnSalvar: TcxButton
      Left = 5
      Top = 4
      Width = 90
      Height = 25
      Action = ActSalvar
      Caption = '&Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnEnter = btnSalvarEnter
      OnExit = btnSalvarExit
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btnCancelar: TcxButton
      Left = 95
      Top = 4
      Width = 90
      Height = 25
      Action = ActCancelar
      Cancel = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnEnter = btnSalvarEnter
      OnExit = btnSalvarExit
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 738
    Height = 424
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object PageControl: TcxPageControl
      Left = 2
      Top = 2
      Width = 734
      Height = 420
      ActivePage = tbsItem
      Align = alClient
      TabOrder = 0
      ClientRectBottom = 416
      ClientRectLeft = 4
      ClientRectRight = 730
      ClientRectTop = 27
      object tbsItem: TcxTabSheet
        Caption = 'Itens'
        ImageIndex = 0
        object GridItens: TdxDBGrid
          Left = 0
          Top = 190
          Width = 726
          Height = 199
          TabStop = False
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'CODIGO'
          ShowSummaryFooter = True
          SummaryGroups = <
            item
              DefaultGroup = True
              SummaryItems = <
                item
                  SummaryField = 'CODIGO'
                  SummaryType = cstCount
                end
                item
                  SummaryField = 'TOTAL'
                  SummaryFormat = '###,##0.00'
                  SummaryType = cstSum
                end
                item
                  ColumnName = 'GRIDVLR_TOTAL'
                  SummaryField = 'VLR_TOTAL'
                  SummaryFormat = '###,##0.00'
                  SummaryType = cstSum
                end>
              Name = 'sgFaturamento'
            end>
          SummarySeparator = ', '
          Align = alClient
          BorderStyle = bsNone
          TabOrder = 0
          DataSource = DataSource
          Filter.Criteria = {00000000}
          GroupNodeColor = 15977833
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanDelete, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
          OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
          ShowRowFooter = True
          object GridItensCODIGO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODIGO'
          end
          object GridItensCOD_PRODUTO: TdxDBGridMaskColumn
            Width = 94
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COD_PRODUTO'
          end
          object GridItensPRODUTO: TdxDBGridMaskColumn
            Sorted = csUp
            Width = 219
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRODUTO'
          end
          object GridItensSERIE: TdxDBGridMaskColumn
            Width = 134
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SERIE'
          end
          object GridItensVALOR: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALOR'
            SummaryFooterType = cstSum
          end
          object GridItensQTDE_COPIAS_PREVENTIVA: TdxDBGridMaskColumn
            Width = 145
            BandIndex = 0
            RowIndex = 0
            FieldName = 'QTDE_COPIAS_PREVENTIVA'
          end
          object GridItensDIAS_RECHAMADO: TdxDBGridMaskColumn
            Width = 85
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DIAS_RECHAMADO'
          end
          object GridItensMEDIA_COPIAS: TdxDBGridMaskColumn
            Width = 119
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MEDIA_COPIAS'
            SummaryFooterType = cstSum
          end
          object GridItensTEMPO_RESPOSTA: TdxDBGridMaskColumn
            Width = 91
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TEMPO_RESPOSTA'
          end
          object GridItensDT_ADICAO: TdxDBGridDateColumn
            Width = 87
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DT_ADICAO'
          end
          object GridItensDATA: TdxDBGridDateColumn
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DATA'
          end
          object GridItensTIPO_PRODUTO: TdxDBGridMaskColumn
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIPO_PRODUTO'
          end
          object GridItensATIVO: TdxDBGridCheckColumn
            MinWidth = 20
            Width = 31
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ATIVO'
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object GridItensCONTRATO: TdxDBGridMaskColumn
            Visible = False
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CONTRATO'
          end
          object GridItensCNPJ: TdxDBGridMaskColumn
            Visible = False
            Width = 83
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CNPJ'
          end
          object GridItensINFORMACOES_ITENS: TdxDBGridMemoColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'INFORMACOES_ITENS'
          end
          object GridItensDECONTINUADO: TdxDBGridCheckColumn
            MinWidth = 20
            Width = 100
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DECONTINUADO'
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 726
          Height = 190
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label1: TcxLabel
            Left = 8
            Top = 3
            Caption = 'Produto'
            ParentFont = False
            Transparent = True
          end
          object Label3: TcxLabel
            Left = 440
            Top = 3
            Caption = 'Valor (Idx $)'
            ParentFont = False
            Transparent = True
          end
          object btnMoeda: TcxButton
            Left = 698
            Top = 19
            Width = 23
            Height = 24
            Cursor = crHandPoint
            TabOrder = 10
            OnClick = btnMoedaClick
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
          object Label8: TcxLabel
            Left = 532
            Top = 3
            Caption = 'Indexador'
            ParentFont = False
            Transparent = True
          end
          object Label6: TcxLabel
            Left = 7
            Top = 113
            Caption = 'Informa'#231#245'es'
            ParentFont = False
            Transparent = True
          end
          object edProduto: TdxDBEdit
            Left = 8
            Top = 19
            Width = 74
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
            OnEnter = edProdutoEnter
            OnExit = edProdutoExit
            OnKeyDown = edProdutoKeyDown
            CharCase = ecUpperCase
            DataField = 'COD_PRODUTO'
            DataSource = DataSource
          end
          object dxDBEdit1: TdxDBEdit
            Left = 84
            Top = 19
            Width = 352
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
            OnKeyDown = edProdutoKeyDown
            DataField = 'PRODUTO'
            DataSource = DataSource
          end
          object edPrcUnit: TdxDBCalcEdit
            Left = 440
            Top = 19
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
            OnEnter = edProdutoEnter
            OnExit = edProdutoExit
            OnKeyDown = edProdutoKeyDown
            DataField = 'VALOR'
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
          object dxDBMemo1: TdxDBMemo
            Left = 7
            Top = 128
            Width = 357
            Hint = 'Porque 2 observacoes?'
            ParentColor = True
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 6
            OnEnter = edProdutoEnter
            OnExit = edProdutoExit
            OnKeyDown = edProdutoKeyDown
            DataField = 'INFORMACOES_ITENS'
            DataSource = DataSource
            Height = 51
          end
          object cmbMoeda: TdxDBLookupEdit
            Left = 532
            Top = 19
            Width = 166
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
            OnEnter = edProdutoEnter
            OnExit = edProdutoExit
            OnKeyDown = edProdutoKeyDown
            DataField = 'COD_INDEXADOR'
            DataSource = DataSource
            ReadOnly = False
            ClearKey = 46
            ListFieldName = 'NOME'
            Revertable = True
            KeyFieldName = 'CODIGO'
            ListSource = dsMoeda
            LookupKeyValue = Null
            StoredValues = 64
          end
          object GroupBox1: TGroupBox
            Left = 202
            Top = 43
            Width = 401
            Height = 69
            Caption = 'Contrato'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            object Label2: TcxLabel
              Left = 2
              Top = 16
              Caption = 'Dt. Adi'#231#227'o'
              ParentFont = False
              Transparent = True
            end
            object Label7: TcxLabel
              Left = 95
              Top = 16
              Caption = 'Dt. Retirada'
              ParentFont = False
              Transparent = True
            end
            object Label4: TcxLabel
              Left = 190
              Top = 16
              Caption = 'Dias Rech.'
              ParentFont = False
              Transparent = True
            end
            object Label13: TcxLabel
              Left = 259
              Top = 16
              Caption = 'Cp. Prev.'
              ParentFont = False
              Transparent = True
            end
            object Label5: TcxLabel
              Left = 328
              Top = 16
              Caption = 'T. Resp.'
              ParentFont = False
              Transparent = True
            end
            object dxDBDateEdit1: TdxDBDateEdit
              Left = 95
              Top = 32
              Width = 94
              Hint = 'Dt. de retirada do item no contrato.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              Style.ButtonTransparence = ebtNone
              Style.HotTrack = False
              TabOrder = 1
              OnEnter = edProdutoEnter
              OnExit = edProdutoExit
              OnKeyDown = edProdutoKeyDown
              Alignment = taLeftJustify
              DataField = 'DT_RETIRADA'
              DataSource = DataSource
              ReadOnly = False
              DateOnError = deToday
              DateValidation = True
              SaveTime = False
              UseEditMask = True
              StoredValues = 69
            end
            object EdDataNota: TdxDBDateEdit
              Left = 2
              Top = 32
              Width = 91
              Hint = 'Dt. de Adi'#231#227'o do item no contrato.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              Style.ButtonTransparence = ebtNone
              Style.HotTrack = False
              TabOrder = 0
              OnEnter = edProdutoEnter
              OnExit = edProdutoExit
              OnKeyDown = edProdutoKeyDown
              Alignment = taLeftJustify
              DataField = 'DT_ADICAO'
              DataSource = DataSource
              ReadOnly = False
              DateOnError = deToday
              DateValidation = True
              SaveTime = False
              UseEditMask = True
              StoredValues = 69
            end
            object cxDBSpinEdit1: TcxDBSpinEdit
              Left = 190
              Top = 32
              Hint = 'N'#186' de dias para caracterizar um rechamado'
              DataBinding.DataField = 'DIAS_RECHAMADO'
              DataBinding.DataSource = DataSource
              ParentFont = False
              ParentShowHint = False
              Properties.MaxValue = 365.000000000000000000
              Properties.MinValue = 1.000000000000000000
              ShowHint = True
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = ebsSingle
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.LookAndFeel.Kind = lfUltraFlat
              Style.IsFontAssigned = True
              StyleDisabled.BorderColor = clBtnShadow
              StyleDisabled.BorderStyle = ebsSingle
              StyleDisabled.LookAndFeel.Kind = lfUltraFlat
              StyleDisabled.ButtonStyle = btsSimple
              StyleFocused.LookAndFeel.Kind = lfUltraFlat
              StyleHot.LookAndFeel.Kind = lfUltraFlat
              TabOrder = 2
              OnEnter = edProdutoEnter
              OnExit = edProdutoExit
              OnKeyDown = edProdutoKeyDown
              Width = 68
            end
            object cxDBSpinEdit2: TcxDBSpinEdit
              Left = 259
              Top = 32
              Hint = 'N'#186' de c'#243'pias para sugeria uma visita preventiva'
              DataBinding.DataField = 'QTDE_COPIAS_PREVENTIVA'
              DataBinding.DataSource = DataSource
              ParentFont = False
              ParentShowHint = False
              Properties.MaxValue = 365.000000000000000000
              Properties.MinValue = 1.000000000000000000
              ShowHint = True
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = ebsSingle
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.LookAndFeel.Kind = lfUltraFlat
              Style.IsFontAssigned = True
              StyleDisabled.BorderColor = clBtnShadow
              StyleDisabled.BorderStyle = ebsSingle
              StyleDisabled.LookAndFeel.Kind = lfUltraFlat
              StyleDisabled.ButtonStyle = btsSimple
              StyleFocused.LookAndFeel.Kind = lfUltraFlat
              StyleHot.LookAndFeel.Kind = lfUltraFlat
              TabOrder = 3
              OnEnter = edProdutoEnter
              OnExit = edProdutoExit
              OnKeyDown = edProdutoKeyDown
              Width = 68
            end
            object cxDBSpinEdit3: TcxDBSpinEdit
              Left = 328
              Top = 32
              Hint = 
                'Tempo resposta (Hrs) combinado em contrato para efetuar o atendi' +
                'mento. '
              DataBinding.DataField = 'TEMPO_RESPOSTA'
              DataBinding.DataSource = DataSource
              ParentFont = False
              ParentShowHint = False
              Properties.MaxValue = 365.000000000000000000
              Properties.MinValue = 1.000000000000000000
              ShowHint = True
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = ebsSingle
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.LookAndFeel.Kind = lfUltraFlat
              Style.IsFontAssigned = True
              StyleDisabled.BorderColor = clBtnShadow
              StyleDisabled.BorderStyle = ebsSingle
              StyleDisabled.LookAndFeel.Kind = lfUltraFlat
              StyleDisabled.ButtonStyle = btsSimple
              StyleFocused.LookAndFeel.Kind = lfUltraFlat
              StyleHot.LookAndFeel.Kind = lfUltraFlat
              TabOrder = 4
              OnEnter = edProdutoEnter
              OnExit = edProdutoExit
              OnKeyDown = edProdutoKeyDown
              Width = 68
            end
          end
          object GroupBox2: TGroupBox
            Left = 8
            Top = 43
            Width = 192
            Height = 70
            Caption = 'Vig'#234'ncia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            object Label9: TcxLabel
              Left = 4
              Top = 16
              Caption = 'Dt. Inicial'
              ParentFont = False
              Transparent = True
            end
            object Label12: TcxLabel
              Left = 552
              Top = -189
              Caption = 'Dt. Final'
              ParentFont = False
              Transparent = True
            end
            object Label10: TcxLabel
              Left = 95
              Top = 16
              Caption = 'Dt. Final'
              ParentFont = False
              Transparent = True
            end
            object dxDBDateEdit2: TdxDBDateEdit
              Left = 95
              Top = 32
              Width = 91
              Hint = 'Dt. Final de vig'#234'ncia. Utilizado no m'#243'dulo de mensalidades.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              Style.ButtonTransparence = ebtNone
              Style.HotTrack = False
              TabOrder = 1
              OnEnter = edProdutoEnter
              OnExit = edProdutoExit
              OnKeyDown = edProdutoKeyDown
              Alignment = taLeftJustify
              DataField = 'DT_VIGENCIA_FINAL'
              DataSource = DataSource
              ReadOnly = False
              DateOnError = deToday
              DateValidation = True
              SaveTime = False
              UseEditMask = True
              StoredValues = 69
            end
            object dxDBDateEdit3: TdxDBDateEdit
              Left = 4
              Top = 32
              Width = 90
              Hint = 'Dt. Inicial de vig'#234'ncia. Utilizado no m'#243'dulo de mensalidades.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              Style.ButtonTransparence = ebtNone
              Style.HotTrack = False
              TabOrder = 0
              OnEnter = edProdutoEnter
              OnExit = edProdutoExit
              OnKeyDown = edProdutoKeyDown
              Alignment = taLeftJustify
              DataField = 'DT_VIGENCIA_INICIAL'
              DataSource = DataSource
              ReadOnly = False
              DateOnError = deToday
              DateValidation = True
              SaveTime = False
              UseEditMask = True
              StoredValues = 69
            end
          end
          object cbEtiqueta: TdxDBCheckEdit
            Left = 607
            Top = 93
            Width = 67
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            TabOrder = 7
            OnEnter = edProdutoEnter
            OnExit = edProdutoExit
            OnKeyDown = edProdutoKeyDown
            Alignment = taLeftJustify
            Caption = 'Ativo'
            DataField = 'ATIVO'
            DataSource = DataSource
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            StoredValues = 1
          end
          object GroupBox3: TGroupBox
            Left = 368
            Top = 114
            Width = 329
            Height = 66
            Caption = 'Dados Update VMC - Item'
            TabOrder = 13
            object dxDBEdit2: TdxDBEdit
              Left = 79
              Top = 29
              Width = 65
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
              DataField = 'VMC_COD_UPD'
              DataSource = DataSource
            end
            object cxLabel1: TcxLabel
              Left = 79
              Top = 12
              Caption = 'C'#243'd.'
              ParentFont = False
              Transparent = True
            end
            object dxDBEdit3: TdxDBEdit
              Left = 146
              Top = 29
              Width = 65
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
              CharCase = ecUpperCase
              DataField = 'VMC_TIPO_UPD'
              DataSource = DataSource
            end
            object cxLabel2: TcxLabel
              Left = 146
              Top = 12
              Caption = 'Tipo'
              ParentFont = False
              Transparent = True
            end
            object dxDBDateEdit4: TdxDBDateEdit
              Left = 214
              Top = 29
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
              TabOrder = 4
              DataField = 'VMC_DATA_UPD'
              DataSource = DataSource
              DateValidation = True
              UseEditMask = True
              StoredValues = 4
            end
            object cxLabel3: TcxLabel
              Left = 214
              Top = 12
              Caption = 'Data'
              ParentFont = False
              Transparent = True
            end
            object dxDBEdit4: TdxDBEdit
              Left = 8
              Top = 29
              Width = 65
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
              CharCase = ecUpperCase
              DataField = 'MEDIA_COPIAS'
              DataSource = DataSource
            end
            object cxLabel4: TcxLabel
              Left = 7
              Top = 12
              Caption = 'VMC'
              ParentFont = False
              Transparent = True
            end
          end
          object dxDBCheckEdit2: TdxDBCheckEdit
            Left = 607
            Top = 69
            Width = 82
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            TabOrder = 14
            OnEnter = edProdutoEnter
            OnExit = edProdutoExit
            OnKeyDown = edProdutoKeyDown
            Alignment = taLeftJustify
            Caption = 'Gera Leitura'
            DataField = 'GERA_LEITURA'
            DataSource = DataSource
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            StoredValues = 1
          end
          object dxDBCheckEdit1: TdxDBCheckEdit
            Left = 607
            Top = 45
            Width = 97
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            TabOrder = 15
            OnEnter = edProdutoEnter
            OnExit = edProdutoExit
            OnKeyDown = edProdutoKeyDown
            Alignment = taLeftJustify
            Caption = 'Descontinuado'
            DataField = 'DECONTINUADO'
            DataSource = DataSource
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            StoredValues = 1
          end
        end
      end
      object tbsDesconto: TcxTabSheet
        Caption = 'Desconto/Acr'#233'scimo'
        ImageIndex = 1
        object GridDesconto: TcxGrid
          Left = 0
          Top = 0
          Width = 726
          Height = 389
          Align = alClient
          TabOrder = 0
          object GridDescontoDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.First.Visible = True
            NavigatorButtons.PriorPage.Visible = False
            NavigatorButtons.Prior.Visible = True
            NavigatorButtons.Next.Visible = True
            NavigatorButtons.NextPage.Visible = False
            NavigatorButtons.Last.Visible = True
            NavigatorButtons.Insert.Visible = True
            NavigatorButtons.Append.Visible = False
            NavigatorButtons.Delete.Visible = True
            NavigatorButtons.Edit.Visible = True
            NavigatorButtons.Post.Visible = True
            NavigatorButtons.Cancel.Visible = True
            NavigatorButtons.Refresh.Visible = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            NavigatorButtons.Filter.Visible = False
            DataController.DataSource = dsDescontos
            DataController.KeyFieldNames = 'CODIGO'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            NewItemRow.Visible = True
            OptionsCustomize.ColumnFiltering = False
            OptionsCustomize.ColumnGrouping = False
            OptionsData.Appending = True
            OptionsData.CancelOnExit = False
            OptionsView.Navigator = True
            OptionsView.NoDataToDisplayInfoText = 'Sem dados para exibi'#231#227'o'
            OptionsView.GroupByBox = False
            object GridDescontoDBTableView1CNPJ: TcxGridDBColumn
              DataBinding.FieldName = 'CNPJ'
              Visible = False
            end
            object GridDescontoDBTableView1CODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
            end
            object GridDescontoDBTableView1COD_ITEM: TcxGridDBColumn
              DataBinding.FieldName = 'COD_ITEM'
              Visible = False
            end
            object GridDescontoDBTableView1VALOR: TcxGridDBColumn
              DataBinding.FieldName = 'VALOR'
              Width = 68
            end
            object GridDescontoDBTableView1DT_VIGENCIA_INICIAL: TcxGridDBColumn
              DataBinding.FieldName = 'DT_VIGENCIA_INICIAL'
              Width = 116
            end
            object GridDescontoDBTableView1DT_VIGENCIA_FINAL: TcxGridDBColumn
              DataBinding.FieldName = 'DT_VIGENCIA_FINAL'
              Width = 107
            end
          end
          object GridDescontoLevel1: TcxGridLevel
            GridView = GridDescontoDBTableView1
          end
        end
      end
    end
  end
  object DataSource: TDataSource
    DataSet = dmCadastros2.ContratosItens
    OnStateChange = DataSourceStateChange
    Left = 24
    Top = 48
  end
  object dsProdutos: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelProduto
    Left = 552
  end
  object ActLista: TActionList
    Left = 512
    Top = 8
    object ActLookUP: TAction
      Caption = 'Localizar Produtos'
      Enabled = False
      ShortCut = 119
      Visible = False
    end
    object ActSalvar: TAction
      Caption = 'Salvar'
      ShortCut = 121
      OnExecute = ActSalvarExecute
    end
    object ActCancelar: TAction
      Caption = '&Cancelar'
      ShortCut = 27
      OnExecute = ActCancelarExecute
    end
    object ActInserir: TAction
      Caption = 'Inserir ( Ins )'
      ShortCut = 45
      OnExecute = ActInserirExecute
    end
    object ActNovoProduto: TAction
      Caption = 'Novo Produto'
      ShortCut = 115
      OnExecute = ActNovoProdutoExecute
    end
  end
  object stgContratosItens: TcxPropertiesStore
    Components = <>
    StorageName = 'stgVendasItens'
    Left = 465
    Top = 65528
  end
  object dsMoeda: TDataSource
    AutoEdit = False
    DataSet = dmFinanceiro2.Moeda
    Left = 616
    Top = 24
  end
  object dsDescontos: TDataSource
    DataSet = dmCadastros2.CtItensDesconto
    OnStateChange = DataSourceStateChange
    Left = 72
    Top = 48
  end
end
