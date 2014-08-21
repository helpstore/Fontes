inherited frmCadMoedas: TfrmCadMoedas
  Left = 242
  Top = 190
  Caption = 'Moedas'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    ActivePage = tbsEdita
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        inherited GridDBBandedTableView2: TcxGridDBBandedTableView
          object GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODIGO'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2SIGLA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SIGLA'
            Width = 28
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2UTILIZA_INDEXADOR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UTILIZA_INDEXADOR'
            Width = 67
            Position.BandIndex = 0
            Position.ColIndex = 3
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
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 571
          Top = 32
          DataBinding.DataField = 'SIGLA'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          Width = 54
        end
        object cxLabel4: TcxLabel
          Left = 571
          Top = 16
          Caption = 'SIGLA'
          ParentFont = False
          Transparent = True
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 8
          Top = 64
          Caption = 'Utiliza Indexador'
          DataBinding.DataField = 'UTILIZA_INDEXADOR'
          DataBinding.DataSource = dsRegistro
          TabOrder = 3
          Width = 121
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    DeleteSQL.Strings = (
      'delete from FIN_MOEDA'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_MOEDA'
      '  (CODIGO, NOME, SIGLA, UTILIZA_INDEXADOR)'
      'values'
      '  (:CODIGO, :NOME, :SIGLA, :UTILIZA_INDEXADOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  SIGLA,'
      '  NOME,'
      '  UTILIZA_INDEXADOR'
      'from FIN_MOEDA '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * '
      'from FIN_MOEDA'
      'where codigo = :codigo')
    ModifySQL.Strings = (
      'update FIN_MOEDA'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  SIGLA = :SIGLA,'
      '  UTILIZA_INDEXADOR = :UTILIZA_INDEXADOR'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_FIN_MOEDA_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 120
    Top = 12
    object dtEditCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_MOEDA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = '"FIN_MOEDA"."SIGLA"'
      FixedChar = True
      Size = 3
    end
    object dtEditNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_MOEDA"."NOME"'
      Size = 50
    end
    object dtEditUTILIZA_INDEXADOR: TIBStringField
      FieldName = 'UTILIZA_INDEXADOR'
      Origin = '"FIN_MOEDA"."UTILIZA_INDEXADOR"'
      FixedChar = True
      Size = 1
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'select * '
      'from FIN_MOEDA'
      'where codigo <> :cnpj')
    Left = 89
    Top = 12
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_MOEDA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListSIGLA: TIBStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
      Origin = '"FIN_MOEDA"."SIGLA"'
      FixedChar = True
      Size = 3
    end
    object dtListNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_MOEDA"."NOME"'
      Size = 50
    end
    object dtListUTILIZA_INDEXADOR: TIBStringField
      DisplayLabel = 'Utl. Index'
      FieldName = 'UTILIZA_INDEXADOR'
      Origin = '"FIN_MOEDA"."UTILIZA_INDEXADOR"'
      FixedChar = True
      Size = 1
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
        Component = GridDBBandedTableView2SIGLA
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
        Component = GridDBBandedTableView2UTILIZA_INDEXADOR
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
