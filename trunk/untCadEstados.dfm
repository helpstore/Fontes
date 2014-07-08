inherited frmCadEstados: TfrmCadEstados
  Tag = 1
  Caption = 'Estados'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        Width = 767
        Height = 332
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
            Width = 49
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
          object GridDBBandedTableView2MASCARA_IE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MASCARA_IE'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2COD_IBGE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_IBGE'
            Width = 55
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
        end
      end
      inherited Panel1: TPanel
        Width = 767
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
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 8
          Top = 72
          DataBinding.DataField = 'COD_IBGE'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 4
          Width = 84
        end
        object cxLabel8: TcxLabel
          Left = 8
          Top = 56
          Caption = 'C'#243'd IBGE'
          ParentFont = False
          Transparent = True
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 96
          Top = 72
          DataBinding.DataField = 'MASCARA_IE'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 6
          Width = 129
        end
        object cxLabel4: TcxLabel
          Left = 96
          Top = 56
          Caption = 'M'#225'scara IE'
          ParentFont = False
          Transparent = True
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    DeleteSQL.Strings = (
      'delete from GLO_ESTADOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SIGLA = :OLD_SIGLA')
    InsertSQL.Strings = (
      'insert into GLO_ESTADOS'
      '  (CNPJ, COD_IBGE, MASCARA_IE, NOME, SIGLA)'
      'values'
      '  (:CNPJ, :COD_IBGE, :MASCARA_IE, :NOME, :SIGLA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  SIGLA,'
      '  NOME,'
      '  MASCARA_IE,'
      '  COD_IBGE'
      'from GLO_ESTADOS '
      'where'
      '  CNPJ = :CNPJ and'
      '  SIGLA = :SIGLA')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               SIGLA, '
      '               NOME,'
      '               MASCARA_IE,'
      '               COD_IBGE'
      'FROM GLO_ESTADOS'
      'WHERE CNPJ = :CNPJ'
      'and SIGLA = :SIGLA')
    ModifySQL.Strings = (
      'update GLO_ESTADOS'
      'set'
      '  CNPJ = :CNPJ,'
      '  COD_IBGE = :COD_IBGE,'
      '  MASCARA_IE = :MASCARA_IE,'
      '  NOME = :NOME,'
      '  SIGLA = :SIGLA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SIGLA = :OLD_SIGLA')
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'SELECT CNPJ,'
      '               SIGLA, '
      '               NOME,'
      '               MASCARA_IE,'
      '               COD_IBGE'
      'FROM GLO_ESTADOS'
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
      Origin = '"GLO_ESTADOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListSIGLA: TIBStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
      Origin = '"GLO_ESTADOS"."SIGLA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 2
    end
    object dtListNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"GLO_ESTADOS"."NOME"'
      Size = 50
    end
    object dtListMASCARA_IE: TIBStringField
      DisplayLabel = 'Mascara IE'
      FieldName = 'MASCARA_IE'
      Origin = '"GLO_ESTADOS"."MASCARA_IE"'
      Size = 15
    end
    object dtListCOD_IBGE: TIBStringField
      DisplayLabel = 'C'#243'd. IBGE'
      FieldName = 'COD_IBGE'
      Origin = '"GLO_ESTADOS"."COD_IBGE"'
      Size = 2
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
        Component = GridDBBandedTableView2COD_IBGE
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
        Component = GridDBBandedTableView2MASCARA_IE
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
      end>
  end
end
