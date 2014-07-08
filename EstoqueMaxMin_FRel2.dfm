inherited FRelEstoqueMaxMin2: TFRelEstoqueMaxMin2
  Caption = 'Relat'#243'rio de Estoque M'#225'ximo e Min'#237'mo'
  ClientHeight = 320
  ClientWidth = 635
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlClient: TPanel
    Width = 635
    Height = 280
    inherited LblTitulo: TcxLabel
      Top = -1
      Caption = 'Relat'#243'rio de Estoque M'#225'ximo e Min'#237'mo'
      Style.IsFontAssigned = True
    end
    inherited gbGeral: TcxGroupBox
      Left = 10
      Top = 37
      Height = 227
      Width = 610
      object Label2: TcxLabel
        Left = 8
        Top = 24
        Caption = 'Fornecedor'
        Transparent = True
      end
      object cmbFornecedor: TcxDBLookupComboBox
        Left = 8
        Top = 40
        DataBinding.DataField = 'FORNECEDOR'
        DataBinding.DataSource = dsFiltro
        ParentColor = True
        Properties.KeyFieldNames = 'PESSOA_FJ'
        Properties.ListColumns = <
          item
            FieldName = 'NOME_RAZAO'
          end>
        Properties.ListSource = dsFornecedor
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 0
        Width = 292
      end
      object cmbMarca: TcxDBLookupComboBox
        Left = 304
        Top = 40
        DataBinding.DataField = 'MARCA'
        DataBinding.DataSource = dsFiltro
        ParentColor = True
        Properties.KeyFieldNames = 'CODIGO'
        Properties.ListColumns = <
          item
            FieldName = 'NOME'
          end>
        Properties.ListSource = dsMarca
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 1
        Width = 292
      end
      object Label1: TcxLabel
        Left = 304
        Top = 24
        Caption = 'Marca'
        Transparent = True
      end
      object Label15: TcxLabel
        Left = 304
        Top = 64
        Caption = 'Localiza'#231#227'o 2'
        Transparent = True
      end
      object cbLocalizacao2: TcxDBLookupComboBox
        Left = 304
        Top = 80
        DataBinding.DataField = 'LOCALIZACAO_2'
        DataBinding.DataSource = dsFiltro
        ParentColor = True
        Properties.KeyFieldNames = 'CODIGO'
        Properties.ListColumns = <
          item
            FieldName = 'DESCRICAO'
          end>
        Properties.ListSource = dsLocalizacao2
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 3
        Width = 292
      end
      object cbLocalizacao1: TcxDBLookupComboBox
        Left = 8
        Top = 80
        DataBinding.DataField = 'LOCALIZACAO_1'
        DataBinding.DataSource = dsFiltro
        ParentColor = True
        Properties.KeyFieldNames = 'CODIGO'
        Properties.ListColumns = <
          item
            FieldName = 'DESCRICAO'
          end>
        Properties.ListSource = dsLocalizacao1
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 2
        Width = 292
      end
      object Label14: TcxLabel
        Left = 8
        Top = 64
        Caption = 'Localiza'#231#227'o 1'
        Transparent = True
      end
      object Label13: TcxLabel
        Left = 8
        Top = 104
        Caption = 'Localiza'#231#227'o 3'
        Transparent = True
      end
      object cbLocalizacao3: TcxDBLookupComboBox
        Left = 8
        Top = 120
        DataBinding.DataField = 'LOCALIZACAO_3'
        DataBinding.DataSource = dsFiltro
        ParentColor = True
        Properties.KeyFieldNames = 'CODIGO'
        Properties.ListColumns = <
          item
            FieldName = 'DESCRICAO'
          end>
        Properties.ListSource = dsLocalizacao3
        Style.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.Kind = lfOffice11
        TabOrder = 4
        Width = 292
      end
      object cxGroupBox1: TcxGroupBox
        Left = 204
        Top = 145
        Caption = 'Tipo de C'#225'lculo'
        TabOrder = 6
        Height = 55
        Width = 190
        object rd4: TcxRadioButton
          Left = 110
          Top = 22
          Width = 76
          Height = 17
          Caption = 'Simplificado'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
          Transparent = True
        end
        object rd3: TcxRadioButton
          Left = 7
          Top = 22
          Width = 98
          Height = 17
          Caption = 'M'#233'dia Peri'#243'dica'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Transparent = True
        end
      end
      object rdStatus: TcxRadioGroup
        Left = 400
        Top = 145
        Caption = 'Status Cadastro'
        Properties.Columns = 3
        Properties.Items = <
          item
            Caption = 'Ativo'
            Value = '0'
          end
          item
            Caption = 'Inativo'
            Value = '1'
          end
          item
            Caption = 'Ambos'
            Value = '2'
          end>
        ItemIndex = 2
        TabOrder = 7
        Height = 55
        Width = 190
      end
      object rdStatusEstoque: TcxRadioGroup
        Left = 10
        Top = 145
        Caption = 'Status Estoque'
        Properties.Columns = 3
        Properties.Items = <
          item
            Caption = 'Falta'
            Value = '0'
          end
          item
            Caption = 'Excesso '
            Value = '1'
          end
          item
            Caption = 'Todos'
            Value = '2'
          end>
        ItemIndex = 2
        TabOrder = 5
        Height = 55
        Width = 190
      end
    end
  end
  inherited Panel2: TPanel
    Top = 280
    Width = 635
    DesignSize = (
      635
      40)
    inherited cxButton1: TcxButton
      Left = 604
    end
  end
  inherited Actions: TActionList
    Left = 256
  end
  inherited Report: TppReport
    DataPipelineName = 'ppReport'
    inherited ppHeaderBand2: TppHeaderBand
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ult. Compra'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 107156
        mmTop = 794
        mmWidth = 18521
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
        Caption = 'Est. F'#237'sico'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 181240
        mmTop = 794
        mmWidth = 15875
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
        Caption = 'Produto'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 25400
        mmTop = 794
        mmWidth = 19315
        BandType = 0
      end
      object lblEstoque: TppLabel
        UserName = 'lblEstoque'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Est. M'#237'nimo'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 156898
        mmTop = 794
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ult. Venda'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 133086
        mmTop = 794
        mmWidth = 16669
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 14817
        mmTop = 5027
        mmWidth = 182034
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ativo'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 14817
        mmTop = 794
        mmWidth = 9260
        BandType = 0
      end
    end
    inherited ppDetailBand2: TppDetailBand
      object lbl4: TppDBText
        UserName = 'lbl4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DT_ULTCOMPRA'
        DataPipeline = ppReport
        DisplayFormat = 'dd/mm/yyyy'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReport'
        mmHeight = 3440
        mmLeft = 107156
        mmTop = 0
        mmWidth = 18522
        BandType = 4
      end
      object lbl7: TppDBText
        UserName = 'lbl7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_EST_FISICO'
        DataPipeline = ppReport
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReport'
        mmHeight = 3440
        mmLeft = 181240
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object lbl6: TppDBText
        UserName = 'lbl6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_ESTOQUE'
        DataPipeline = ppReport
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReport'
        mmHeight = 3440
        mmLeft = 156898
        mmTop = 0
        mmWidth = 17991
        BandType = 4
      end
      object lbl5: TppDBText
        UserName = 'lbl5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_DT_ULTVENDA'
        DataPipeline = ppReport
        DisplayFormat = 'dd/mm/yyyy'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReport'
        mmHeight = 3175
        mmLeft = 133086
        mmTop = 0
        mmWidth = 16670
        BandType = 4
      end
      object lbl3: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_PRODUTO'
        DataPipeline = ppReport
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppReport'
        mmHeight = 3440
        mmLeft = 24871
        mmTop = 0
        mmWidth = 78846
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
        DataField = 'PRD_ATIVO'
        DataPipeline = ppReport
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppReport'
        mmHeight = 3440
        mmLeft = 14817
        mmTop = 0
        mmWidth = 8996
        BandType = 4
      end
    end
    object ppGroup1: TppGroup [5]
      BreakName = 'PRD_GRUPO'
      DataPipeline = ppReport
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppReport'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'PRD_GRUPO'
          DataPipeline = ppReport
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 9
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          DataPipelineName = 'ppReport'
          mmHeight = 3440
          mmLeft = 13494
          mmTop = 3175
          mmWidth = 80698
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Grupo:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 2117
          mmTop = 2910
          mmWidth = 10541
          BandType = 3
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 2646
          mmTop = 7142
          mmWidth = 95515
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 2910
        mmPrintPosition = 0
        object ppLine4: TppLine
          UserName = 'Line4'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 2646
          mmTop = 1058
          mmWidth = 95515
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup2: TppGroup [6]
      BreakName = 'PRD_SUB_GRUPO'
      DataPipeline = ppReport
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppReport'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'PRD_SUB_GRUPO'
          DataPipeline = ppReport
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 9
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          DataPipelineName = 'ppReport'
          mmHeight = 3440
          mmLeft = 24871
          mmTop = 2910
          mmWidth = 69056
          BandType = 3
          GroupNo = 1
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Sub-Grupo:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 6879
          mmTop = 2646
          mmWidth = 17611
          BandType = 3
          GroupNo = 1
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 6879
          mmTop = 6614
          mmWidth = 91017
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    inherited raCodeModule2: TraCodeModule
      ProgramStream = {00}
    end
  end
  inherited Storage: TcxPropertiesStore
    Left = 288
  end
  inherited mtbFiltro: TdxMemData
    object mtbFiltroFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object mtbFiltroMARCA: TIntegerField
      FieldName = 'MARCA'
    end
    object mtbFiltroLOCALIZACAO_1: TIntegerField
      FieldName = 'LOCALIZACAO_1'
    end
    object mtbFiltroLOCALIZACAO_2: TIntegerField
      FieldName = 'LOCALIZACAO_2'
    end
    object mtbFiltroLOCALIZACAO_3: TIntegerField
      FieldName = 'LOCALIZACAO_3'
    end
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  inherited qryRelatorio: TIBQuery
    SQL.Strings = (
      'select * from pcd_est_max_min('
      ':cnpj,'
      ':tipo,'
      ':fornecedor,'
      ':marca,'
      ':loc1,'
      ':loc2,'
      ':loc3,'
      ':tipo_calc) '
      'order by prd_grupo, '
      'prd_sub_grupo, '
      'prd_produto ')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'marca'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'loc1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'loc2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'loc3'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo_calc'
        ParamType = ptUnknown
      end>
    object qryRelatorioPRD_EST_FISICO: TIBBCDField
      FieldName = 'PRD_EST_FISICO'
      Origin = '"PCD_EST_MAX_MIN"."PRD_EST_FISICO"'
      Precision = 18
      Size = 4
    end
    object qryRelatorioPRD_PRODUTO: TIBStringField
      FieldName = 'PRD_PRODUTO'
      Origin = '"PCD_EST_MAX_MIN"."PRD_PRODUTO"'
      Size = 67
    end
    object qryRelatorioPRD_GRUPO: TIBStringField
      FieldName = 'PRD_GRUPO'
      Origin = '"PCD_EST_MAX_MIN"."PRD_GRUPO"'
      Size = 50
    end
    object qryRelatorioPRD_SUB_GRUPO: TIBStringField
      FieldName = 'PRD_SUB_GRUPO'
      Origin = '"PCD_EST_MAX_MIN"."PRD_SUB_GRUPO"'
      Size = 50
    end
    object qryRelatorioPRD_DT_ULTCOMPRA: TDateField
      FieldName = 'PRD_DT_ULTCOMPRA'
      Origin = '"PCD_EST_MAX_MIN"."PRD_DT_ULTCOMPRA"'
    end
    object qryRelatorioPRD_DT_ULTVENDA: TDateField
      FieldName = 'PRD_DT_ULTVENDA'
      Origin = '"PCD_EST_MAX_MIN"."PRD_DT_ULTVENDA"'
    end
    object qryRelatorioPRD_ESTOQUE: TIBBCDField
      FieldName = 'PRD_ESTOQUE'
      Origin = '"PCD_EST_MAX_MIN"."PRD_ESTOQUE"'
      Precision = 18
      Size = 4
    end
    object qryRelatorioSUJ_COMPRA_MAX: TIBBCDField
      FieldName = 'SUJ_COMPRA_MAX'
      Origin = '"PCD_EST_MAX_MIN"."SUJ_COMPRA_MAX"'
      Precision = 18
      Size = 4
    end
    object qryRelatorioSUJ_COMPRA_MIN: TIBBCDField
      FieldName = 'SUJ_COMPRA_MIN'
      Origin = '"PCD_EST_MAX_MIN"."SUJ_COMPRA_MIN"'
      Precision = 18
      Size = 4
    end
    object qryRelatorioPRD_ATIVO: TIBStringField
      FieldName = 'PRD_ATIVO'
      Origin = '"PCD_EST_MAX_MIN"."PRD_ATIVO"'
      FixedChar = True
      Size = 1
    end
    object qryRelatorioPRD_MAX: TIBBCDField
      FieldName = 'PRD_MAX'
      Origin = '"PCD_EST_MAX_MIN"."PRD_MAX"'
      Precision = 18
      Size = 4
    end
    object qryRelatorioPRD_MIN: TIBBCDField
      FieldName = 'PRD_MIN'
      Origin = '"PCD_EST_MAX_MIN"."PRD_MIN"'
      Precision = 18
      Size = 4
    end
    object qryRelatorioPRD_CODIGO: TIBStringField
      FieldName = 'PRD_CODIGO'
      Origin = '"PCD_EST_MAX_MIN"."PRD_CODIGO"'
      Size = 15
    end
    object qryRelatorioQTDE_COTACAO: TIBBCDField
      FieldName = 'QTDE_COTACAO'
      Origin = '"PCD_EST_MAX_MIN"."QTDE_COTACAO"'
      Precision = 18
      Size = 4
    end
  end
  object dsLocalizacao3: TDataSource
    AutoEdit = False
    DataSet = qryLocalizacao3
    Left = 394
    Top = 41
  end
  object qryLocalizacao3: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from est_localizacao l'
      'where l.cnpj = :cnpj'
      'order by l.descricao')
    Left = 392
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryLocalizacao3CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_LOCALIZACAO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryLocalizacao3CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_LOCALIZACAO"."CNPJ"'
      FixedChar = True
      Size = 14
    end
    object qryLocalizacao3DESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"EST_LOCALIZACAO"."DESCRICAO"'
      Size = 50
    end
  end
  object dsLocalizacao2: TDataSource
    AutoEdit = False
    DataSet = qryLocalizacao2
    Left = 360
    Top = 41
  end
  object qryLocalizacao2: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from est_localizacao l'
      'where l.cnpj = :cnpj'
      'order by l.descricao')
    Left = 360
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryLocalizacao2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_LOCALIZACAO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryLocalizacao2CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_LOCALIZACAO"."CNPJ"'
      FixedChar = True
      Size = 14
    end
    object qryLocalizacao2DESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"EST_LOCALIZACAO"."DESCRICAO"'
      Size = 50
    end
  end
  object dsLocalizacao1: TDataSource
    AutoEdit = False
    DataSet = qryLocalizacao1
    Left = 328
    Top = 41
  end
  object qryLocalizacao1: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from est_localizacao l'
      'where l.cnpj = :cnpj'
      'order by l.descricao')
    Left = 328
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryLocalizacao1CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_LOCALIZACAO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryLocalizacao1CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_LOCALIZACAO"."CNPJ"'
      FixedChar = True
      Size = 14
    end
    object qryLocalizacao1DESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"EST_LOCALIZACAO"."DESCRICAO"'
      Size = 50
    end
  end
  object SelMarca: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select CNPJ, CODIGO, NOME, SELECIONADO '
      'from EST_MARCAS'
      'WHERE CNPJ = :CNPJ'
      'order by NOME')
    Left = 424
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelMarcaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_MARCAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelMarcaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_MARCAS"."CODIGO"'
      Required = True
    end
    object SelMarcaNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"EST_MARCAS"."NOME"'
      Required = True
      Size = 50
    end
    object SelMarcaSELECIONADO: TIBStringField
      DisplayLabel = 'Sel'
      FieldName = 'SELECIONADO'
      Origin = '"EST_MARCAS"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
  end
  object SelFornecedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT F.PESSOA_FJ,'
      '               P.NOME_RAZAO'
      'FROM GLO_FORNECEDORES F'
      '            INNER JOIN GLO_PESSOAS_FJ P'
      '            ON (P.CNPJ = F.CNPJ AND'
      '                   P.CODIGO = F.PESSOA_FJ)'
      'WHERE F.CNPJ = :CNPJ'
      'ORDER BY P.NOME_RAZAO')
    Left = 456
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelFornecedorPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_FORNECEDORES"."PESSOA_FJ"'
      Required = True
    end
    object SelFornecedorNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
  end
  object dsFornecedor: TDataSource
    AutoEdit = False
    DataSet = SelFornecedor
    Left = 426
    Top = 40
  end
  object dsMarca: TDataSource
    AutoEdit = False
    DataSet = SelMarca
    Left = 458
    Top = 40
  end
end
