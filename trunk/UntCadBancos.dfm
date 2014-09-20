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
          DataBinding.DataField = 'NOME'
        end
        inherited edtCodigo: TcxDBTextEdit
          DataBinding.DataField = 'CODIGO'
          Enabled = True
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
end
