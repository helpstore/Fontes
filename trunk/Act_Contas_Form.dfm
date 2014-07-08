object frmAct_Contas: TfrmAct_Contas
  Left = 98
  Top = 103
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Acerto de Contas'
  ClientHeight = 572
  ClientWidth = 1028
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
  object Label10: TcxLabel
    Left = 560
    Top = 88
    Caption = 'Label10'
    Transparent = True
  end
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 1028
    Height = 546
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
      Top = 542
      Width = 1024
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 1024
      Height = 540
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      object pnlMulti: TPanel
        Left = 0
        Top = 41
        Width = 1024
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 0
        object Label9: TcxLabel
          Left = 2
          Top = 11
          Caption = 'Parceiro'
          ParentFont = False
          Transparent = True
        end
        object Label1: TcxLabel
          Left = 908
          Top = 14
          Caption = 'Dt. Caixa: '
          ParentFont = False
          Transparent = True
        end
        object lblCaixa: TcxLabel
          Left = 960
          Top = 14
          Caption = '10/04/2009'
          ParentFont = False
          Transparent = True
        end
        object btnParceiro: TcxButtonEdit
          Left = 655
          Top = 8
          BeepOnEnter = False
          ParentFont = False
          Properties.Buttons = <
            item
              Default = True
              Kind = bkEllipsis
            end>
          Properties.OnButtonClick = btnParceiroPropertiesButtonClick
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = True
          Style.Shadow = False
          Style.TextStyle = []
          Style.ButtonStyle = btsOffice11
          Style.IsFontAssigned = True
          StyleDisabled.ButtonStyle = btsOffice11
          TabOrder = 0
          Width = 19
        end
        object edtParceiro: TdxEdit
          Left = 43
          Top = 8
          Width = 614
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 1
          CharCase = ecUpperCase
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 82
        Width = 1024
        Height = 213
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 1
        object GridReceber: TdxDBGrid
          Left = 0
          Top = 19
          Width = 1024
          Height = 194
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'CODIGO'
          ShowSummaryFooter = True
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnDblClick = GridReceberDblClick
          OnKeyDown = GridReceberKeyDown
          AutoExpandOnSearch = False
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = dsReceber
          Filter.Criteria = {00000000}
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = []
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          OnCustomDrawCell = GridReceberCustomDrawCell
          object GridReceberCODIGO: TdxDBGridMaskColumn
            Color = 12961221
            Width = 43
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODIGO'
            SummaryFooterType = cstCount
          end
          object GridReceberNOME: TdxDBGridMaskColumn
            Width = 175
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOME'
          end
          object GridReceberDT_VENCTO: TdxDBGridDateColumn
            Color = 12961221
            Sorted = csUp
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DT_VENCTO'
          end
          object GridReceberPARCELA: TdxDBGridMaskColumn
            Color = 12961221
            Width = 33
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PARCELA'
          end
          object GridReceberVALOR: TdxDBGridCurrencyColumn
            Color = 12961221
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALOR'
            SummaryFooterType = cstSum
            SummaryFooterFormat = 'R$ ,0.00;-R$ ,0.00'
            Nullable = False
            SummaryFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object GridReceberVLR_PARCIAL: TdxDBGridCurrencyColumn
            Color = 12961221
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VLR_PARCIAL'
            SummaryFooterType = cstSum
            SummaryFooterFormat = 'R$ ,0.00;-R$ ,0.00'
            Nullable = False
            SummaryFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object GridReceberSldNominal: TdxDBGridCurrencyColumn
            Color = 12961221
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SldNominal'
            SummaryFooterType = cstSum
            SummaryFooterFormat = 'R$ ,0.00;-R$ ,0.00'
            Nullable = False
            SummaryFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object GridReceberJuros: TdxDBGridCurrencyColumn
            Color = 15138275
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Juros'
            SummaryFooterType = cstSum
            SummaryFooterFormat = 'R$ ,0.00;-R$ ,0.00'
            Nullable = False
            SummaryFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object GridReceberMultas: TdxDBGridCurrencyColumn
            Color = 15138275
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Multas'
            SummaryFooterType = cstSum
            SummaryFooterFormat = 'R$ ,0.00;-R$ ,0.00'
            Nullable = False
            SummaryFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object GridReceberDesconto: TdxDBGridCurrencyColumn
            Color = 13553407
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Desconto'
            SummaryFooterType = cstSum
            SummaryFooterFormat = 'R$ ,0.00;-R$ ,0.00'
            Nullable = False
            SummaryFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object GridReceberVariacao: TdxDBGridCurrencyColumn
            Color = 15138275
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Variacao'
            SummaryFooterType = cstSum
            SummaryFooterFormat = 'R$ ,0.00;-R$ ,0.00'
            Nullable = False
            SummaryFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object GridReceberTotal_Geral: TdxDBGridCurrencyColumn
            Color = 12961221
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Total_Geral'
            SummaryFooterType = cstSum
            SummaryFooterFormat = 'R$ ,0.00;-R$ ,0.00'
            Nullable = False
            SummaryFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object GridReceberTotal_Baixar: TdxDBGridMaskColumn
            Color = 15138275
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Total_Baixar'
            SummaryFooterType = cstSum
          end
          object GridReceberSELECIONADO: TdxDBGridCheckColumn
            MinWidth = 20
            Width = 22
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SELECIONADO'
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object GridReceberDOCTO: TdxDBGridMaskColumn
            Visible = False
            Width = 61
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DOCTO'
          end
          object GridReceberPESSOA_FJ: TdxDBGridMaskColumn
            Visible = False
            Width = 62
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PESSOA_FJ'
          end
          object GridReceberDATA_ULT_BAIXA: TdxDBGridDateColumn
            Color = 12961221
            Visible = False
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DATA_ULT_BAIXA'
          end
          object GridReceberAtraso: TdxDBGridColumn
            Visible = False
            Width = 51
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Atraso'
          end
          object GridReceberACT_TOTAL_RECEBER: TdxDBGridCurrencyColumn
            Visible = False
            Width = 122
            BandIndex = 0
            RowIndex = 0
            FieldName = 'ACT_TOTAL_RECEBER'
            SummaryFooterType = cstSum
            SummaryFooterFormat = 'R$ ,0.00;-R$ ,0.00'
            Nullable = False
            SummaryFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object GridReceberJuros_Calculados: TdxDBGridCurrencyColumn
            Visible = False
            Width = 88
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Juros_Calculados'
            SummaryFooterType = cstSum
            Nullable = False
          end
          object GridReceberold_Juros: TdxDBGridMaskColumn
            Visible = False
            Width = 66
            BandIndex = 0
            RowIndex = 0
            FieldName = 'old_Juros'
          end
          object GridReceberold_Multa: TdxDBGridMaskColumn
            Visible = False
            Width = 66
            BandIndex = 0
            RowIndex = 0
            FieldName = 'old_Multa'
          end
          object GridReceberold_Variacao: TdxDBGridMaskColumn
            Visible = False
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'old_Variacao'
          end
          object GridReceberold_desconto: TdxDBGridMaskColumn
            Visible = False
            Width = 72
            BandIndex = 0
            RowIndex = 0
            FieldName = 'old_desconto'
          end
        end
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 1024
          Height = 19
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = '  Contas '#224' Receber'
          Color = 8404992
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object Panel5: TPanel
        Left = 0
        Top = 495
        Width = 1024
        Height = 45
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 2
        object Bevel3: TBevel
          Left = 246
          Top = 5
          Width = 175
          Height = 37
          Shape = bsFrame
        end
        object Bevel2: TBevel
          Left = 4
          Top = 5
          Width = 238
          Height = 37
          Shape = bsFrame
        end
        object lblSaldo: TcxLabel
          Left = 260
          Top = 16
          Caption = 'Saldo'
          ParentFont = False
          Transparent = True
        end
        object lblPagar: TcxLabel
          Left = 211
          Top = 25
          Caption = '0,00'
          ParentFont = False
          Transparent = True
        end
        object lblReceber: TcxLabel
          Left = 211
          Top = 10
          Caption = '0,00'
          ParentFont = False
          Transparent = True
        end
        object Label15: TcxLabel
          Left = 14
          Top = 25
          Caption = 'Total Pagar'
          ParentFont = False
          Transparent = True
        end
        object Label20: TcxLabel
          Left = 14
          Top = 9
          Caption = 'Total Receber'
          ParentFont = False
          Transparent = True
        end
        object lblSaldoVlr: TcxLabel
          Left = 372
          Top = 16
          Caption = '0,00'
          ParentFont = False
          Transparent = True
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 295
        Width = 1024
        Height = 200
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 3
        object GridPagar: TdxDBGrid
          Left = 0
          Top = 19
          Width = 1024
          Height = 181
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'CODIGO'
          ShowSummaryFooter = True
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnDblClick = GridPagarDblClick
          OnKeyDown = GridPagarKeyDown
          AutoExpandOnSearch = False
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = dsPagar
          Filter.Criteria = {00000000}
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = []
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          OnCustomDrawCell = GridPagarCustomDrawCell
          object GridPagarRecId: TdxDBGridColumn
            Visible = False
            Width = 28
            BandIndex = 0
            RowIndex = 0
            FieldName = 'RecId'
          end
          object GridPagarCODIGO: TdxDBGridMaskColumn
            Color = 12961221
            Width = 43
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODIGO'
            SummaryFooterType = cstCount
          end
          object GridPagarNOME: TdxDBGridMaskColumn
            Width = 175
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOME'
          end
          object GridPagarDT_VENCTO: TdxDBGridDateColumn
            Color = 12961221
            Sorted = csUp
            Width = 67
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DT_VENCTO'
          end
          object GridPagarPARCELA: TdxDBGridMaskColumn
            Color = 12961221
            Width = 33
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PARCELA'
          end
          object GridPagarVALOR: TdxDBGridCurrencyColumn
            Color = 12961221
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALOR'
            SummaryFooterType = cstSum
            SummaryFooterFormat = 'R$ ,0.00;-R$ ,0.00'
            Nullable = False
            SummaryFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object GridPagarVLR_PARCIAL: TdxDBGridCurrencyColumn
            Color = 12961221
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VLR_PARCIAL'
            SummaryFooterType = cstSum
            SummaryFooterFormat = 'R$ ,0.00;-R$ ,0.00'
            Nullable = False
            SummaryFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object GridPagarSldNominal: TdxDBGridCurrencyColumn
            Color = 12961221
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SldNominal'
            SummaryFooterType = cstSum
            SummaryFooterFormat = 'R$ ,0.00;-R$ ,0.00'
            Nullable = False
            SummaryFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object GridPagarJUROS: TdxDBGridCurrencyColumn
            Color = 15138275
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'JUROS'
            SummaryFooterType = cstSum
            SummaryFooterFormat = 'R$ ,0.00;-R$ ,0.00'
            Nullable = False
            SummaryFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object GridPagarMULTAS: TdxDBGridCurrencyColumn
            Color = 15138275
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'MULTAS'
            SummaryFooterType = cstSum
            SummaryFooterFormat = 'R$ ,0.00;-R$ ,0.00'
            Nullable = False
            SummaryFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object GridPagarDESCONTO: TdxDBGridCurrencyColumn
            Color = 13553407
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DESCONTO'
            SummaryFooterType = cstSum
            SummaryFooterFormat = 'R$ ,0.00;-R$ ,0.00'
            Nullable = False
            SummaryFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object GridPagarVARIACAO: TdxDBGridCurrencyColumn
            Color = 15138275
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VARIACAO'
            SummaryFooterType = cstSum
            SummaryFooterFormat = 'R$ ,0.00;-R$ ,0.00'
            Nullable = False
            SummaryFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object GridPagarTotal_Geral: TdxDBGridCurrencyColumn
            Color = 12961221
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Total_Geral'
            SummaryFooterType = cstSum
            SummaryFooterFormat = 'R$ ,0.00;-R$ ,0.00'
            Nullable = False
            SummaryFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object GridPagarTotal_Baixar: TdxDBGridCurrencyColumn
            Color = 15138275
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Total_Baixar'
            SummaryFooterType = cstSum
            SummaryFooterFormat = 'R$ ,0.00;-R$ ,0.00'
            Nullable = False
            SummaryFormat = 'R$ ,0.00;-R$ ,0.00'
          end
          object GridPagarSELECIONADO: TdxDBGridCheckColumn
            MinWidth = 20
            Width = 22
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SELECIONADO'
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object GridPagarOld_Juros: TdxDBGridMaskColumn
            Visible = False
            Width = 56
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Old_Juros'
          end
          object GridPagarOld_Multa: TdxDBGridMaskColumn
            Visible = False
            Width = 56
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Old_Multa'
          end
          object GridPagarDATA_ULT_BAIXA: TdxDBGridDateColumn
            Color = 12961221
            Visible = False
            Width = 71
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DATA_ULT_BAIXA'
          end
          object GridPagarOld_Desconto: TdxDBGridMaskColumn
            Visible = False
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Old_Desconto'
          end
          object GridPagarOld_Variacao: TdxDBGridMaskColumn
            Visible = False
            Width = 62
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Old_Variacao'
          end
          object GridPagarOld_Total_Baixar: TdxDBGridMaskColumn
            Visible = False
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Old_Total_Baixar'
          end
          object GridPagarSALDO_MOEDA: TdxDBGridMaskColumn
            Visible = False
            Width = 76
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SALDO_MOEDA'
          end
        end
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 1024
          Height = 19
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          Caption = '  Contas '#224' Pagar'
          Color = 8404992
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
      object pnlSimples: TPanel
        Left = 0
        Top = 0
        Width = 1024
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 4
        object Label3: TcxLabel
          Left = 908
          Top = 14
          Caption = 'Dt. Caixa: '
          ParentFont = False
          Transparent = True
        end
        object lblCaixa2: TcxLabel
          Left = 960
          Top = 14
          Caption = '10/04/2009'
          ParentFont = False
          Transparent = True
        end
        object lblnome: TcxLabel
          Left = 104
          Top = 15
          AutoSize = False
          Caption = 'Nome'
          ParentFont = False
          Transparent = True
          Height = 16
          Width = 448
        end
        object Label2: TcxLabel
          Left = 3
          Top = 15
          Caption = 'Parceiro'
          ParentFont = False
          Transparent = True
        end
        object CmbCliente: TdxButtonEdit
          Left = 44
          Top = 11
          Width = 54
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 0
          OnExit = CmbClienteExit
          OnKeyDown = CmbClienteKeyDown
          Buttons = <
            item
              Default = True
            end>
          ClickKey = 40
          OnButtonClick = CmbClienteButtonClick
          StoredValues = 4
          ExistButtons = True
        end
      end
    end
  end
  object BarDBNavigator: TdxBarDBNavigator
    BarManager = BarManager
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = dsPagar
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast]
    Left = 517
    Top = 247
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
    Left = 381
    Top = 248
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
          ItemName = 'btnLocalizar'
        end
        item
          Visible = True
          ItemName = 'OpDetalhes'
        end
        item
          Visible = True
          ItemName = 'btnBaixar'
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
    object btnLocalizar: TdxBarButton
      Caption = 'ActLocalizar'
      Category = 0
      Hint = 'Localizar registros [F3]'
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
      ShortCut = 114
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
    object OpDetalhes: TdxBarButton
      Caption = 'Detalhes do Faturamento ( Ctrrl + D )'
      Category = 0
      Hint = 'Detalhes do Faturamento ( Ctrrl + D )'
      Visible = ivAlways
    end
    object btnBaixar: TdxBarButton
      Action = ActAcertar
      Caption = 'Realizar Acerto ( F9 )'
      Category = 0
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
    Left = 329
    Top = 248
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActLookup: TAction
      Caption = 'ActLookup'
      ShortCut = 115
    end
    object ActAcertar: TAction
      Tag = 1
      Caption = 'Baixar Conta ( F9 )'
      ShortCut = 120
      OnExecute = ActAcertarExecute
    end
    object ActSelecionados: TAction
      Caption = 'ActSelecionados'
    end
    object ActSeleciona: TAction
      Caption = 'ActSeleciona'
      ShortCut = 16416
      OnExecute = ActSelecionaExecute
    end
    object ActSelecionaTodos: TAction
      Caption = 'Seleciona Todos'
      ShortCut = 122
    end
    object ActBaixarParcial: TAction
      Caption = 'Baixa Parcial'
      ShortCut = 123
    end
    object ActDetalhes: TAction
      Caption = 'ActDetalhes'
    end
    object ActVerOldValue: TAction
      Caption = 'Visualizar Valor Original ( Ctrl+F )'
      ShortCut = 16470
      OnExecute = ActVerOldValueExecute
    end
    object FiltraParceiro: TAction
      Caption = 'FiltraParceiro'
      ShortCut = 114
      OnExecute = FiltraParceiroExecute
    end
  end
  object dsPagar: TDataSource
    AutoEdit = False
    DataSet = dmFinanceiro2.mtbAcertoPagar
    Left = 117
    Top = 352
  end
  object dsReceber: TDataSource
    AutoEdit = False
    DataSet = dmFinanceiro2.mtbAcertoReceber
    Left = 117
    Top = 96
  end
end
