inherited frmCadUnidadesMedidas: TfrmCadUnidadesMedidas
  Caption = 'Unidades de Medidas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    ActivePage = tbsLista
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        Width = 775
        Height = 347
        inherited GridDBBandedTableView2: TcxGridDBBandedTableView
          object GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CNPJ'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2SIGLA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SIGLA'
            Width = 37
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2UNIDADES: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNIDADES'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
      end
      inherited Panel1: TPanel
        Width = 775
      end
    end
    inherited tbsEdita: TcxTabSheet
      inherited Panel2: TPanel
        inherited edtNome: TcxDBTextEdit
          DataBinding.DataField = 'NOME'
        end
        inherited edtCodigo: TcxDBTextEdit
          DataBinding.DataField = 'SIGLA'
          Enabled = True
        end
        inherited cxLabel1: TcxLabel
          Caption = 'Sigla'
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    DeleteSQL.Strings = (
      'delete from EST_UNIDADES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SIGLA = :OLD_SIGLA')
    InsertSQL.Strings = (
      'insert into EST_UNIDADES'
      '  (CNPJ, NOME, SIGLA, UNIDADES)'
      'values'
      '  (:CNPJ, :NOME, :SIGLA, :UNIDADES)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  SIGLA,'
      '  NOME,'
      '  UNIDADES'
      'from EST_UNIDADES '
      'where'
      '  CNPJ = :CNPJ and'
      '  SIGLA = :SIGLA')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               SIGLA, '
      '               NOME,'
      '               UNIDADES'
      'FROM EST_UNIDADES'
      'WHERE SIGLA = :SIGLA')
    ModifySQL.Strings = (
      'update EST_UNIDADES'
      'set'
      '  CNPJ = :CNPJ,'
      '  NOME = :NOME,'
      '  SIGLA = :SIGLA,'
      '  UNIDADES = :UNIDADES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SIGLA = :OLD_SIGLA')
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_UNIDADES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = '"EST_UNIDADES"."SIGLA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 4
    end
    object dtEditNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_UNIDADES"."NOME"'
      Size = 50
    end
    object dtEditUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = '"EST_UNIDADES"."UNIDADES"'
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'SELECT CNPJ,'
      '               SIGLA, '
      '               NOME,'
      '               UNIDADES'
      'FROM EST_UNIDADES'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_UNIDADES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListSIGLA: TIBStringField
      Tag = 1
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
      Origin = '"EST_UNIDADES"."SIGLA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 4
    end
    object dtListNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"EST_UNIDADES"."NOME"'
      Size = 50
    end
    object dtListUNIDADES: TFloatField
      DisplayLabel = 'Unidades'
      FieldName = 'UNIDADES'
      Origin = '"EST_UNIDADES"."UNIDADES"'
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
        Component = GridDBBandedTableView2CNPJ
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
        Component = GridDBBandedTableView2UNIDADES
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
