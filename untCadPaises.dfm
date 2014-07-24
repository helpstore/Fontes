inherited frmCadPaises: TfrmCadPaises
  Caption = 'Paises'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        inherited GridDBBandedTableView2: TcxGridDBBandedTableView
          object GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CNPJ'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODIGO'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME'
            Width = 241
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2SISCOMEX: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SISCOMEX'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2NACIONALIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NACIONALIDADE'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2COD_MOEDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_MOEDA'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2SIGLA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SIGLA'
            Width = 28
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2MOEDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MOEDA'
            Position.BandIndex = 0
            Position.ColIndex = 7
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
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 8
          Top = 72
          DataBinding.DataField = 'NACIONALIDADE'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          Width = 177
        end
        object cxLabel8: TcxLabel
          Left = 8
          Top = 56
          Caption = 'Nacionalidade'
          ParentFont = False
          Transparent = True
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
        object cbMoeda: TcxDBLookupComboBox
          Left = 188
          Top = 72
          DataBinding.DataField = 'COD_MOEDA'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Properties.ListSource = dsMoeda
          TabOrder = 4
          Width = 169
        end
        object cxLabel3: TcxLabel
          Left = 188
          Top = 56
          Caption = 'Moeda'
          ParentFont = False
          Transparent = True
        end
        object btnMoeda: TcxButtonEdit
          Left = 356
          Top = 72
          TabStop = False
          Properties.Buttons = <
            item
              Caption = 'F4'
              Default = True
              Kind = bkText
            end>
          Properties.ViewStyle = vsButtonsOnly
          TabOrder = 5
          OnClick = btnMoedaClick
          Width = 25
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    DeleteSQL.Strings = (
      'delete from glo_pais'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into glo_pais'
      
        '  (CNPJ, COD_MOEDA, CODIGO, NACIONALIDADE, NOME, SIGLA, SISCOMEX' +
        ')'
      'values'
      
        '  (:CNPJ, :COD_MOEDA, :CODIGO, :NACIONALIDADE, :NOME, :SIGLA, :S' +
        'ISCOMEX)')
    RefreshSQL.Strings = (
      'Select * '
      'from glo_pais '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from glo_pais'
      'WHERE CNPJ = :CNPJ'
      'and codigo = :codigo')
    ModifySQL.Strings = (
      'update glo_pais'
      'set'
      '  CNPJ = :CNPJ,'
      '  COD_MOEDA = :COD_MOEDA,'
      '  CODIGO = :CODIGO,'
      '  NACIONALIDADE = :NACIONALIDADE,'
      '  NOME = :NOME,'
      '  SIGLA = :SIGLA,'
      '  SISCOMEX = :SISCOMEX'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_GLO_PAIS_ID'
    GeneratorField.ApplyEvent = gamOnPost
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_PAIS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PAIS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_PAIS"."NOME"'
      Size = 50
    end
    object dtEditSISCOMEX: TIBStringField
      FieldName = 'SISCOMEX'
      Origin = '"GLO_PAIS"."SISCOMEX"'
    end
    object dtEditNACIONALIDADE: TIBStringField
      FieldName = 'NACIONALIDADE'
      Origin = '"GLO_PAIS"."NACIONALIDADE"'
    end
    object dtEditCOD_MOEDA: TIntegerField
      FieldName = 'COD_MOEDA'
      Origin = '"GLO_PAIS"."COD_MOEDA"'
    end
    object dtEditSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = '"GLO_PAIS"."SIGLA"'
      Size = 6
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'select p.*, m.nome moeda from glo_pais p'
      'left join fin_moeda m on (m.codigo = p.cod_moeda)'
      'WHERE p.CNPJ = :CNPJ'
      'ORDER BY p.NOME')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_PAIS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_PAIS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"GLO_PAIS"."NOME"'
      Size = 50
    end
    object dtListSISCOMEX: TIBStringField
      DisplayLabel = 'Siscomex'
      FieldName = 'SISCOMEX'
      Origin = '"GLO_PAIS"."SISCOMEX"'
    end
    object dtListNACIONALIDADE: TIBStringField
      DisplayLabel = 'Nacionalidade'
      FieldName = 'NACIONALIDADE'
      Origin = '"GLO_PAIS"."NACIONALIDADE"'
    end
    object dtListCOD_MOEDA: TIntegerField
      DisplayLabel = 'C'#243'd. Moeda'
      FieldName = 'COD_MOEDA'
      Origin = '"GLO_PAIS"."COD_MOEDA"'
    end
    object dtListSIGLA: TIBStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
      Origin = '"GLO_PAIS"."SIGLA"'
      Size = 6
    end
    object dtListMOEDA: TIBStringField
      DisplayLabel = 'Moeda'
      FieldName = 'MOEDA'
      Origin = '"FIN_MOEDA"."NOME"'
      Size = 50
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
    inherited ActCadLookup: TAction
      OnExecute = ActCadLookupExecute
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
        Component = GridDBBandedTableView2COD_MOEDA
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
        Component = GridDBBandedTableView2MOEDA
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
        Component = GridDBBandedTableView2NACIONALIDADE
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
        Component = GridDBBandedTableView2SISCOMEX
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
  object dsMoeda: TDataSource
    AutoEdit = False
    DataSet = qryMoedas
    Left = 192
    Top = 128
  end
  object qryMoedas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * '
      'from FIN_MOEDA')
    Left = 244
    Top = 132
    object qryMoedasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_MOEDA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryMoedasSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = '"FIN_MOEDA"."SIGLA"'
      FixedChar = True
      Size = 3
    end
    object qryMoedasNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_MOEDA"."NOME"'
      Size = 50
    end
    object qryMoedasUTILIZA_INDEXADOR: TIBStringField
      FieldName = 'UTILIZA_INDEXADOR'
      Origin = '"FIN_MOEDA"."UTILIZA_INDEXADOR"'
      FixedChar = True
      Size = 1
    end
  end
end
