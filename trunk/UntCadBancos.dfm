inherited frmCadBancos: TfrmCadBancos
  Caption = 'Bancos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        inherited GridDBBandedTableView2: TcxGridDBBandedTableView
          object GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODIGO'
            Width = 39
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BOLETO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BOLETO'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2GERA_ARQUIVO_MAGNETICO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'GERA_ARQUIVO_MAGNETICO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 163
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2PADRAO_BOLETO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PADRAO_BOLETO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 126
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CONFIG_CH: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONFIG_CH'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CONFIG_CHEQUE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONFIG_CHEQUE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
        end
      end
    end
    inherited tbsEdita: TcxTabSheet
      inherited Panel2: TPanel
        inherited edtNome: TcxDBTextEdit
          Left = 72
          DataBinding.DataField = 'NOME'
        end
        inherited edtCodigo: TcxDBTextEdit
          DataBinding.DataField = 'CODIGO'
          Enabled = True
        end
        inherited cxLabel2: TcxLabel
          Left = 72
        end
        object cxLabel3: TcxLabel
          Left = 7
          Top = 57
          Caption = 'N'#186' de Boletos'
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 7
          Top = 74
          DataBinding.DataField = 'BOLETO'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 5
          Width = 106
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 117
          Top = 75
          Caption = 'Arq. Magn'#233'tico Cheque'
          DataBinding.DataField = 'GERA_ARQUIVO_MAGNETICO'
          DataBinding.DataSource = dsRegistro
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          TabOrder = 6
          Width = 137
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 256
          Top = 75
          Caption = 'Banco padr'#227'o de Boletos'
          DataBinding.DataField = 'PADRAO_BOLETO'
          DataBinding.DataSource = dsRegistro
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          TabOrder = 7
          Width = 137
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    Tag = 1
    DeleteSQL.Strings = (
      'delete from FIN_BANCO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_BANCO'
      
        '  (BOLETO, CODIGO, CONFIG_CH, CONFIG_CHEQUE, GERA_ARQUIVO_MAGNET' +
        'ICO, NOME, '
      '   PADRAO_BOLETO)'
      'values'
      
        '  (:BOLETO, :CODIGO, :CONFIG_CH, :CONFIG_CHEQUE, :GERA_ARQUIVO_M' +
        'AGNETICO, '
      '   :NOME, :PADRAO_BOLETO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  NOME,'
      '  BOLETO,'
      '  GERA_ARQUIVO_MAGNETICO,'
      '  PADRAO_BOLETO,'
      '  CONFIG_CH,'
      '  CONFIG_CHEQUE'
      'from FIN_BANCO '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT * '
      'FROM FIN_BANCO'
      'where codigo = :codigo')
    ModifySQL.Strings = (
      'update FIN_BANCO'
      'set'
      '  BOLETO = :BOLETO,'
      '  CODIGO = :CODIGO,'
      '  CONFIG_CH = :CONFIG_CH,'
      '  CONFIG_CHEQUE = :CONFIG_CHEQUE,'
      '  GERA_ARQUIVO_MAGNETICO = :GERA_ARQUIVO_MAGNETICO,'
      '  NOME = :NOME,'
      '  PADRAO_BOLETO = :PADRAO_BOLETO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    object dtEditCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"FIN_BANCO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object dtEditNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_BANCO"."NOME"'
      Size = 50
    end
    object dtEditBOLETO: TIntegerField
      FieldName = 'BOLETO'
      Origin = '"FIN_BANCO"."BOLETO"'
    end
    object dtEditGERA_ARQUIVO_MAGNETICO: TIBStringField
      FieldName = 'GERA_ARQUIVO_MAGNETICO'
      Origin = '"FIN_BANCO"."GERA_ARQUIVO_MAGNETICO"'
      FixedChar = True
      Size = 1
    end
    object dtEditPADRAO_BOLETO: TIBStringField
      FieldName = 'PADRAO_BOLETO'
      Origin = '"FIN_BANCO"."PADRAO_BOLETO"'
      FixedChar = True
      Size = 1
    end
    object dtEditCONFIG_CH: TBlobField
      FieldName = 'CONFIG_CH'
      Origin = '"FIN_BANCO"."CONFIG_CH"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dtEditCONFIG_CHEQUE: TMemoField
      FieldName = 'CONFIG_CHEQUE'
      Origin = '"FIN_BANCO"."CONFIG_CHEQUE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object dtEditValor: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Valor'
      Calculated = True
    end
    object dtEditExtenso: TStringField
      FieldKind = fkCalculated
      FieldName = 'Extenso'
      Size = 100
      Calculated = True
    end
    object dtEditNominal: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nominal'
      Size = 100
      Calculated = True
    end
    object dtEditCidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'Cidade'
      Size = 100
      Calculated = True
    end
  end
  inherited dtList: TIBQuery
    Tag = 1
    SQL.Strings = (
      'SELECT * '
      'FROM FIN_BANCO'
      'ORDER BY NOME')
    Left = 97
    Top = 4
    object dtListCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_BANCO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object dtListNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_BANCO"."NOME"'
      Size = 50
    end
    object dtListBOLETO: TIntegerField
      DisplayLabel = 'N'#186' Boletos'
      FieldName = 'BOLETO'
      Origin = '"FIN_BANCO"."BOLETO"'
    end
    object dtListGERA_ARQUIVO_MAGNETICO: TIBStringField
      DisplayLabel = 'Gerar Arquivo Magn'#233'tico Cheque'
      FieldName = 'GERA_ARQUIVO_MAGNETICO'
      Origin = '"FIN_BANCO"."GERA_ARQUIVO_MAGNETICO"'
      FixedChar = True
      Size = 1
    end
    object dtListPADRAO_BOLETO: TIBStringField
      DisplayLabel = 'Banco Padr'#227'o de Boletos'
      FieldName = 'PADRAO_BOLETO'
      Origin = '"FIN_BANCO"."PADRAO_BOLETO"'
      FixedChar = True
      Size = 1
    end
    object dtListCONFIG_CH: TBlobField
      FieldName = 'CONFIG_CH'
      Origin = '"FIN_BANCO"."CONFIG_CH"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dtListCONFIG_CHEQUE: TMemoField
      FieldName = 'CONFIG_CHEQUE'
      Origin = '"FIN_BANCO"."CONFIG_CHEQUE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    DockControlHeights = (
      0
      0
      0
      26)
  end
  inherited ActionList1: TActionList
    object ActConfigCheque: TAction
      Caption = 'Configurar Cheque'
      OnExecute = ActConfigChequeExecute
    end
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  inherited cxPropertiesStore: TcxPropertiesStore
    Components = <
      item
        Component = Grid
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
        Component = GridDBBandedTableView1
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
        Component = GridDBBandedTableView2
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
        Component = GridDBBandedTableView2BOLETO
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
        Component = GridDBBandedTableView2CODIGO
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
        Component = GridDBBandedTableView2CONFIG_CH
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
        Component = GridDBBandedTableView2CONFIG_CHEQUE
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
        Component = GridDBBandedTableView2GERA_ARQUIVO_MAGNETICO
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
        Component = GridDBBandedTableView2NOME
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
        Component = GridDBBandedTableView2PADRAO_BOLETO
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
  end
  object Designer: TppDesigner
    AllowDataSettingsChange = True
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtParadox
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = rptConfigCheque
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 600
    Top = 20
  end
  object ppLayout: TppDBPipeline
    UserName = 'Layout'
    Left = 568
    Top = 20
    object ppLayoutppField1: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 0
    end
    object ppLayoutppField2: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppLayoutppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'BOLETO'
      FieldName = 'BOLETO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppLayoutppField4: TppField
      FieldAlias = 'GERA_ARQUIVO_MAGNETICO'
      FieldName = 'GERA_ARQUIVO_MAGNETICO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object ppLayoutppField5: TppField
      FieldAlias = 'PADRAO_BOLETO'
      FieldName = 'PADRAO_BOLETO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 4
    end
    object ppLayoutppField6: TppField
      FieldAlias = 'CONFIG_CH'
      FieldName = 'CONFIG_CH'
      FieldLength = 8
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppLayoutppField7: TppField
      FieldAlias = 'CONFIG_CHEQUE'
      FieldName = 'CONFIG_CHEQUE'
      FieldLength = 8
      DataType = dtMemo
      DisplayWidth = 10
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppLayoutppField8: TppField
      FieldAlias = 'Valor'
      FieldName = 'Valor'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 10
      Position = 7
    end
    object ppLayoutppField9: TppField
      FieldAlias = 'Extenso'
      FieldName = 'Extenso'
      FieldLength = 100
      DisplayWidth = 100
      Position = 8
    end
    object ppLayoutppField10: TppField
      FieldAlias = 'Nominal'
      FieldName = 'Nominal'
      FieldLength = 100
      DisplayWidth = 100
      Position = 9
    end
    object ppLayoutppField11: TppField
      FieldAlias = 'Cidade'
      FieldName = 'Cidade'
      FieldLength = 0
      DisplayWidth = 0
      Position = 10
    end
  end
  object rptConfigCheque: TppReport
    AutoStop = False
    DataPipeline = ppLayout
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
    Template.DatabaseSettings.DataPipeline = ppLayout
    Template.DatabaseSettings.NameField = 'CODIGO'
    Template.DatabaseSettings.TemplateField = 'CONFIG_CHEQUE'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
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
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 536
    Top = 20
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppLayout'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
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
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
end
