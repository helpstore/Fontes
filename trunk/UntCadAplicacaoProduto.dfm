inherited frmCadAplicacaoProduto: TfrmCadAplicacaoProduto
  Left = 235
  Top = 216
  Caption = 'Produto / Aplica'#231#227'o'
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
          object GridDBBandedTableView2PRODUTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRODUTO'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2APLICACAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'APLICACAO'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2LOCAL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LOCAL'
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
          Left = 8
          Top = 80
          DataBinding.DataField = 'LOCAL'
          TabOrder = 2
          Width = 241
        end
        inherited edtCodigo: TcxDBTextEdit
          DataBinding.DataField = 'PRODUTO'
          Enabled = True
          Width = 242
        end
        inherited cxLabel1: TcxLabel
          Caption = 'Produto'
        end
        inherited cxLabel2: TcxLabel
          Left = 7
          Top = 63
          Caption = 'Local'
        end
        object cmbAplicacao: TcxDBLookupComboBox
          Left = 256
          Top = 32
          DataBinding.DataField = 'APLICACAO'
          DataBinding.DataSource = dsRegistro
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Properties.ListSource = dsQryAplicacao
          TabOrder = 1
          Width = 249
        end
        object cxLabel3: TcxLabel
          Left = 256
          Top = 15
          Caption = 'Aplica'#231#227'o'
          Transparent = True
        end
        object btnAplicacao: TcxButtonEdit
          Left = 503
          Top = 32
          Properties.Buttons = <
            item
              Caption = 'F4'
              Default = True
              Kind = bkText
            end>
          Properties.ViewStyle = vsButtonsOnly
          TabOrder = 6
          Text = 'btnAplicacao'
          OnClick = btnAplicacaoClick
          Width = 25
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    DeleteSQL.Strings = (
      'delete from EST_PRODUTOS_APLICACOES'
      'where'
      '  APLICACAO = :OLD_APLICACAO and'
      '  CNPJ = :OLD_CNPJ and'
      '  PRODUTO = :OLD_PRODUTO')
    InsertSQL.Strings = (
      'insert into EST_PRODUTOS_APLICACOES'
      '  (APLICACAO, CNPJ, LOCAL, PRODUTO)'
      'values'
      '  (:APLICACAO, :CNPJ, :LOCAL, :PRODUTO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PRODUTO,'
      '  APLICACAO,'
      '  LOCAL'
      'from EST_PRODUTOS_APLICACOES '
      'where'
      '  APLICACAO = :APLICACAO and'
      '  CNPJ = :CNPJ and'
      '  PRODUTO = :PRODUTO')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               PRODUTO, '
      '               APLICACAO, '
      '               LOCAL '
      'FROM EST_PRODUTOS_APLICACOES'
      'WHERE CNPJ = :CNPJ ')
    ModifySQL.Strings = (
      'update EST_PRODUTOS_APLICACOES'
      'set'
      '  APLICACAO = :APLICACAO,'
      '  CNPJ = :CNPJ,'
      '  LOCAL = :LOCAL,'
      '  PRODUTO = :PRODUTO'
      'where'
      '  APLICACAO = :OLD_APLICACAO and'
      '  CNPJ = :OLD_CNPJ and'
      '  PRODUTO = :OLD_PRODUTO')
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_PRODUTOS_APLICACOES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"EST_PRODUTOS_APLICACOES"."PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object dtEditAPLICACAO: TIntegerField
      FieldName = 'APLICACAO'
      Origin = '"EST_PRODUTOS_APLICACOES"."APLICACAO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditLOCAL: TIBStringField
      FieldName = 'LOCAL'
      Origin = '"EST_PRODUTOS_APLICACOES"."LOCAL"'
      Size = 50
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'SELECT CNPJ,'
      '               PRODUTO, '
      '               APLICACAO, '
      '               LOCAL '
      'FROM EST_PRODUTOS_APLICACOES'
      'WHERE CNPJ = :CNPJ '
      'ORDER BY PRODUTO, APLICACAO')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_PRODUTOS_APLICACOES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"EST_PRODUTOS_APLICACOES"."PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object dtListAPLICACAO: TIntegerField
      DisplayLabel = 'Aplica'#231#227'o'
      FieldName = 'APLICACAO'
      Origin = '"EST_PRODUTOS_APLICACOES"."APLICACAO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListLOCAL: TIBStringField
      DisplayLabel = 'Local'
      FieldName = 'LOCAL'
      Origin = '"EST_PRODUTOS_APLICACOES"."LOCAL"'
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
        Component = GridDBBandedTableView2APLICACAO
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
        Component = GridDBBandedTableView2LOCAL
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
        Component = GridDBBandedTableView2PRODUTO
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
  object QryAplicacao: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               NOME '
      'FROM EST_APLICACOES'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    Left = 505
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryAplicacaoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_APLICACOES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryAplicacaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_APLICACOES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryAplicacaoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_APLICACOES"."NOME"'
      Size = 50
    end
  end
  object dsQryAplicacao: TDataSource
    DataSet = QryAplicacao
    Left = 535
    Top = 84
  end
end
