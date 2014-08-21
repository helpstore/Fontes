inherited frmCadLocalCobranca: TfrmCadLocalCobranca
  Left = 207
  Top = 197
  Caption = 'Locais de Cobran'#231'a'
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
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2ENDERECO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ENDERECO'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2FONE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FONE'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CIDADE'
            Width = 190
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2UF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UF'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CODIGO_SCPC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODIGO_SCPC'
            Width = 86
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BAIRRO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BAIRRO'
            Width = 172
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BANCO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BANCO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CODIGO'
            Properties.ListColumns = <
              item
                FieldName = 'NOME'
              end>
            Properties.ListSource = dsQryBanco
            Width = 36
            Position.BandIndex = 0
            Position.ColIndex = 9
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
        object cxLabel3: TcxLabel
          Left = 8
          Top = 63
          Caption = 'Cidade'
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 8
          Top = 80
          DataBinding.DataField = 'CIDADE'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 5
          Width = 276
        end
        object cxLabel4: TcxLabel
          Left = 290
          Top = 63
          Caption = 'UF'
          Transparent = True
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 290
          Top = 80
          DataBinding.DataField = 'UF'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 7
          Width = 29
        end
        object cxLabel5: TcxLabel
          Left = 324
          Top = 63
          Caption = 'Bairro'
          Transparent = True
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 324
          Top = 80
          DataBinding.DataField = 'BAIRRO'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 9
          Width = 245
        end
        object cxLabel6: TcxLabel
          Left = 8
          Top = 114
          Caption = 'Fone'
          Transparent = True
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 8
          Top = 131
          DataBinding.DataField = 'FONE'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 11
          Width = 113
        end
        object cxLabel7: TcxLabel
          Left = 126
          Top = 114
          Caption = 'C'#243'digo SCPC'
          Transparent = True
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 126
          Top = 131
          DataBinding.DataField = 'CODIGO_SCPC'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 13
          Width = 214
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 344
          Top = 131
          DataBinding.DataField = 'BANCO'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Properties.ListSource = dsQryBanco
          TabOrder = 14
          Width = 225
        end
        object cxLabel8: TcxLabel
          Left = 344
          Top = 113
          Caption = 'Banco'
          Transparent = True
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    DeleteSQL.Strings = (
      'delete from FIN_LOCAL_COBRANCA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_LOCAL_COBRANCA'
      
        '  (BAIRRO, BANCO, CIDADE, CNPJ, CODIGO, CODIGO_SCPC, ENDERECO, F' +
        'ONE, NOME, '
      '   UF)'
      'values'
      
        '  (:BAIRRO, :BANCO, :CIDADE, :CNPJ, :CODIGO, :CODIGO_SCPC, :ENDE' +
        'RECO, :FONE, '
      '   :NOME, :UF)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  ENDERECO,'
      '  FONE,'
      '  CIDADE,'
      '  UF,'
      '  CODIGO_SCPC,'
      '  BAIRRO,'
      '  BANCO'
      'from FIN_LOCAL_COBRANCA '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME ,'
      '          ENDERECO,'
      '          FONE         ,'
      '          CIDADE       ,'
      '          UF           ,'
      '          CODIGO_SCPC  ,'
      '          BAIRRO,'
      '          BANCO'
      'from FIN_LOCAL_COBRANCA'
      'WHERE CODIGO =:CODIGO')
    ModifySQL.Strings = (
      'update FIN_LOCAL_COBRANCA'
      'set'
      '  BAIRRO = :BAIRRO,'
      '  BANCO = :BANCO,'
      '  CIDADE = :CIDADE,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  CODIGO_SCPC = :CODIGO_SCPC,'
      '  ENDERECO = :ENDERECO,'
      '  FONE = :FONE,'
      '  NOME = :NOME,'
      '  UF = :UF'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'FIN_LOCAL_COBRANCA_GE'
    GeneratorField.ApplyEvent = gamOnPost
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_LOCAL_COBRANCA"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_LOCAL_COBRANCA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_LOCAL_COBRANCA"."NOME"'
      Size = 50
    end
    object dtEditENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"FIN_LOCAL_COBRANCA"."ENDERECO"'
      Size = 50
    end
    object dtEditFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"FIN_LOCAL_COBRANCA"."FONE"'
    end
    object dtEditCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"FIN_LOCAL_COBRANCA"."CIDADE"'
      Size = 50
    end
    object dtEditUF: TIBStringField
      FieldName = 'UF'
      Origin = '"FIN_LOCAL_COBRANCA"."UF"'
      FixedChar = True
      Size = 2
    end
    object dtEditCODIGO_SCPC: TIBStringField
      FieldName = 'CODIGO_SCPC'
      Origin = '"FIN_LOCAL_COBRANCA"."CODIGO_SCPC"'
      Size = 10
    end
    object dtEditBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"FIN_LOCAL_COBRANCA"."BAIRRO"'
      Size = 50
    end
    object dtEditBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"FIN_LOCAL_COBRANCA"."BANCO"'
      FixedChar = True
      Size = 3
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME ,'
      '          ENDERECO,'
      '          FONE         ,'
      '          CIDADE       ,'
      '          UF           ,'
      '          CODIGO_SCPC  ,'
      '          BAIRRO,'
      '          BANCO'
      'from FIN_LOCAL_COBRANCA'
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
      Origin = '"FIN_LOCAL_COBRANCA"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_LOCAL_COBRANCA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_LOCAL_COBRANCA"."NOME"'
      Size = 50
    end
    object dtListENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"FIN_LOCAL_COBRANCA"."ENDERECO"'
      Size = 50
    end
    object dtListFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"FIN_LOCAL_COBRANCA"."FONE"'
    end
    object dtListCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"FIN_LOCAL_COBRANCA"."CIDADE"'
      Size = 50
    end
    object dtListUF: TIBStringField
      FieldName = 'UF'
      Origin = '"FIN_LOCAL_COBRANCA"."UF"'
      FixedChar = True
      Size = 2
    end
    object dtListCODIGO_SCPC: TIBStringField
      DisplayLabel = 'C'#243'digo SCPC'
      FieldName = 'CODIGO_SCPC'
      Origin = '"FIN_LOCAL_COBRANCA"."CODIGO_SCPC"'
      Size = 10
    end
    object dtListBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"FIN_LOCAL_COBRANCA"."BAIRRO"'
      Size = 50
    end
    object dtListBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"FIN_LOCAL_COBRANCA"."BANCO"'
      FixedChar = True
      Size = 3
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
        Component = GridDBBandedTableView2BAIRRO
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
        Component = GridDBBandedTableView2BANCO
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
        Component = GridDBBandedTableView2CIDADE
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
        Component = GridDBBandedTableView2CODIGO_SCPC
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
        Component = GridDBBandedTableView2ENDERECO
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
        Component = GridDBBandedTableView2FONE
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
        Component = GridDBBandedTableView2UF
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
  object QryBanco: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'select '
      '         BOLETO, '
      '         CODIGO, '
      '         NOME '
      'from FIN_BANCO'
      'order by NOME')
    Left = 393
    Top = 180
    object QryBancoBOLETO: TIntegerField
      FieldName = 'BOLETO'
      Origin = '"FIN_BANCO"."BOLETO"'
    end
    object QryBancoCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"FIN_BANCO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object QryBancoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_BANCO"."NOME"'
      Size = 50
    end
  end
  object dsQryBanco: TDataSource
    DataSet = QryBanco
    Left = 423
    Top = 180
  end
end
