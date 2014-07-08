object frmNFeGeraFaturamentos: TfrmNFeGeraFaturamentos
  Left = 190
  Top = 164
  BorderStyle = bsDialog
  Caption = 'NFe - Exportar Registros de Faturamentos'
  ClientHeight = 315
  ClientWidth = 619
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = ActFecharExecute
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 619
    Height = 275
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 0
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 615
      Height = 62
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      object Label1: TcxLabel
        Left = 6
        Top = 18
        Caption = 'Série'
        ParentFont = False
        Transparent = True
      end
      object Label2: TcxLabel
        Left = 294
        Top = 18
        Caption = 'Tipo Emissão NF'
        ParentFont = False
        Transparent = True
      end
      object Label3: TcxLabel
        Left = 149
        Top = 18
        Caption = 'Finalidade de Impressão'
        ParentFont = False
        Transparent = True
      end
      object cmbSerie: TdxLookupEdit
        Left = 5
        Top = 32
        Width = 140
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
        ClearKey = 46
        ListFieldName = 'SERIE'
        CanDeleteText = True
        KeyFieldName = 'SERIE'
        ListSource = dsSeries
        LookupKeyValue = Null
      end
      object cmbTpEmissao: TdxPickEdit
        Left = 294
        Top = 32
        Width = 140
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
        TabOrder = 1
        PopupBorder = pbFlat
        Items.Strings = (
          '1 - Normal'
          '2 - Contingência')
      end
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 615
        Height = 15
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '   Detalhes da Emissão'
        Color = clActiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object cmbTpFinalidade: TdxPickEdit
        Left = 149
        Top = 32
        Width = 140
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
        TabOrder = 2
        PopupBorder = pbFlat
        Items.Strings = (
          '1 - NFe Normal'
          '2 - NFe Complementar'
          '3 - NFe de Ajuste')
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 64
      Width = 615
      Height = 209
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel3'
      Color = clBtnHighlight
      TabOrder = 1
      object GRID: TdxDBGrid
        Left = 0
        Top = 19
        Width = 615
        Height = 190
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
                SummaryType = cstSum
              end
              item
                SummaryField = 'VLR_TOTAL'
                SummaryType = cstSum
              end>
            Name = 'sgFaturamento'
          end>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        DataSource = DataSource
        Filter.Criteria = {00000000}
        GroupNodeColor = 15977833
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
        ShowRowFooter = True
        object GRIDRecId: TdxDBGridColumn
          Visible = False
          Width = 76
          BandIndex = 0
          RowIndex = 0
          FieldName = 'RecId'
        end
        object GRIDCODIGO: TdxDBGridMaskColumn
          Width = 52
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODIGO'
        end
        object GRIDCLIENTE: TdxDBGridMaskColumn
          Width = 154
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CLIENTE'
        end
        object GRIDNUM_NF: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NUM_NF'
        end
        object GRIDCPF_CNPJ: TdxDBGridMaskColumn
          Width = 88
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CPF_CNPJ'
        end
        object GRIDDATA: TdxDBGridDateColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DATA'
        end
        object GRIDDATA_CAIXA: TdxDBGridDateColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DATA_CAIXA'
        end
        object GRIDTOTAL: TdxDBGridCurrencyColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TOTAL'
          Nullable = False
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 615
        Height = 19
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = '   Registros de NFs'
        Color = clActiveBorder
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 275
    Width = 619
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object LblStatus: TcxLabel
      Left = 205
      Top = 13
      Caption = 'Status'
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object RzBitBtn1: TcxButton
      Left = 9
      Top = 7
      Width = 91
      Height = 25
      Cursor = crHandPoint
      Caption = 'OK'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = RzBitBtn1Click
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        0800000000000002000000000000000000000001000000000000000000003300
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
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8180C
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E2DFE8E8E8E8E8E8E8E8E8E8E8E8E8181212
        0CE8E8E8E8E8E8E8E8E8E8E8E8E28181DFE8E8E8E8E8E8E8E8E8E8E818121212
        120CE8E8E8E8E8E8E8E8E8E8E281818181DFE8E8E8E8E8E8E8E8E81812121212
        12120CE8E8E8E8E8E8E8E8E2818181818181DFE8E8E8E8E8E8E8E81812120C18
        1212120CE8E8E8E8E8E8E8E28181DFE2818181DFE8E8E8E8E8E8E818120CE8E8
        181212120CE8E8E8E8E8E8E281DFE8E8E2818181DFE8E8E8E8E8E8180CE8E8E8
        E8181212120CE8E8E8E8E8E2DFE8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8E8
        E8E8181212120CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8
        E8E8E8181212120CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8
        E8E8E8E8181212120CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8
        E8E8E8E8E81812120CE8E8E8E8E8E8E8E8E8E8E8E8E28181DFE8E8E8E8E8E8E8
        E8E8E8E8E8E818120CE8E8E8E8E8E8E8E8E8E8E8E8E8E281DFE8E8E8E8E8E8E8
        E8E8E8E8E8E8E8180CE8E8E8E8E8E8E8E8E8E8E8E8E8E8E2DFE8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object RzBitBtn2: TcxButton
      Left = 103
      Top = 7
      Width = 91
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = ActFecharExecute
      Kind = 
    end
    object PGB: TProgressBar
      Left = 200
      Top = 12
      Width = 409
      Height = 16
      TabOrder = 2
    end
  end
  object Actions: TActionList
    Left = 504
    Top = 7
    object ActPreview: TAction
      Tag = 1
      Caption = '&Imprimir'
    end
  end
  object mtbExporta: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 471
    Top = 104
    object mtbExportaLinha: TStringField
      FieldName = 'Linha'
      Size = 500
    end
  end
  object qryNFeFaturamentos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select linha from nfe_notafiscal(:cnpj,:codigo,:xxbserie,:XXBTPE' +
        'MIS,:xxbcdv, :xxbfinnfe) ')
    Left = 376
    Top = 136
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
        Name = 'xxbserie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'XXBTPEMIS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'xxbcdv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'xxbfinnfe'
        ParamType = ptUnknown
      end>
    object qryNFeFaturamentosLINHA: TIBStringField
      FieldName = 'LINHA'
      Origin = '"NFE_NOTAFISCAL"."LINHA"'
      Size = 1000
    end
  end
  object DataSource: TDataSource
    Left = 485
    Top = 151
  end
  object dsSeries: TDataSource
    DataSet = dmCadastros2.NFe_QrySeries
    Left = 509
    Top = 103
  end
end
