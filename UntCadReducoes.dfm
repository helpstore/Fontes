inherited frmCadReducoes: TfrmCadReducoes
  Left = 315
  Top = 114
  Caption = 'Redu'#231#245'es'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    ActivePage = tbsLista
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        Width = 775
        Height = 347
        inherited GridDBBandedTableView2: TcxGridDBBandedTableView
          object GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODIGO'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2PERC_ESTADUAL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PERC_ESTADUAL'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2PERC_INTERESTADUAL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PERC_INTERESTADUAL'
            Width = 77
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2MENSAGEM_NF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MENSAGEM_NF'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2MENSAGEM_NF_IE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MENSAGEM_NF_IE'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2PERC_CONTRIBUINTE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PERC_CONTRIBUINTE'
            Width = 89
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
          Hint = '% Estadual'
          DataBinding.DataField = 'PERC_ESTADUAL'
          ParentShowHint = False
          ShowHint = True
          Width = 61
        end
        inherited edtCodigo: TcxDBTextEdit
          DataBinding.DataField = 'CODIGO'
        end
        inherited cxLabel2: TcxLabel
          Caption = '% Estadual'
        end
        object cxLabel3: TcxLabel
          Left = 140
          Top = 15
          Caption = '% Interest.'
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Tag = 1
          Left = 140
          Top = 32
          Hint = '% Interestadual'
          DataBinding.DataField = 'PERC_INTERESTADUAL'
          DataBinding.DataSource = dsRegistro
          ParentShowHint = False
          Properties.CharCase = ecUpperCase
          ShowHint = True
          TabOrder = 5
          Width = 61
        end
        object cxLabel4: TcxLabel
          Left = 204
          Top = 15
          Caption = '% Contrib.'
          Transparent = True
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Tag = 1
          Left = 204
          Top = 32
          Hint = '% Contribuinte'
          DataBinding.DataField = 'PERC_CONTRIBUINTE'
          DataBinding.DataSource = dsRegistro
          ParentShowHint = False
          Properties.CharCase = ecUpperCase
          ShowHint = True
          TabOrder = 7
          Width = 61
        end
        object cxLabel5: TcxLabel
          Left = 7
          Top = 58
          Caption = 'Mensagem NF'
          Transparent = True
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Tag = 1
          Left = 7
          Top = 75
          DataBinding.DataField = 'MENSAGEM_NF'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 9
          Width = 386
        end
        object cxLabel6: TcxLabel
          Left = 7
          Top = 98
          Caption = 'Mensagem NF Int. Est.'
          Transparent = True
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Tag = 1
          Left = 7
          Top = 115
          DataBinding.DataField = 'MENSAGEM_NF_IE'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 11
          Width = 386
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    DeleteSQL.Strings = (
      'delete from EST_REDUCOES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into EST_REDUCOES'
      
        '  (CNPJ, CODIGO, MENSAGEM_NF, MENSAGEM_NF_IE, PERC_CONTRIBUINTE,' +
        ' PERC_ESTADUAL, '
      '   PERC_INTERESTADUAL)'
      'values'
      
        '  (:CNPJ, :CODIGO, :MENSAGEM_NF, :MENSAGEM_NF_IE, :PERC_CONTRIBU' +
        'INTE, :PERC_ESTADUAL, '
      '   :PERC_INTERESTADUAL)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  PERC_ESTADUAL,'
      '  PERC_INTERESTADUAL,'
      '  MENSAGEM_NF,'
      '  MENSAGEM_NF_IE,'
      '  PERC_CONTRIBUINTE'
      'from EST_REDUCOES '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               PERC_ESTADUAL, '
      '               PERC_INTERESTADUAL, '
      '               MENSAGEM_NF,'
      '               MENSAGEM_NF_IE,'
      '               PERC_CONTRIBUINTE'
      'FROM EST_REDUCOES'
      'WHERE CNPJ = :CNPJ and codigo = :codigo')
    ModifySQL.Strings = (
      'update EST_REDUCOES'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  MENSAGEM_NF = :MENSAGEM_NF,'
      '  MENSAGEM_NF_IE = :MENSAGEM_NF_IE,'
      '  PERC_CONTRIBUINTE = :PERC_CONTRIBUINTE,'
      '  PERC_ESTADUAL = :PERC_ESTADUAL,'
      '  PERC_INTERESTADUAL = :PERC_INTERESTADUAL'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_REDUCOES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_REDUCOES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditPERC_ESTADUAL: TFloatField
      FieldName = 'PERC_ESTADUAL'
      Origin = '"EST_REDUCOES"."PERC_ESTADUAL"'
    end
    object dtEditPERC_INTERESTADUAL: TFloatField
      FieldName = 'PERC_INTERESTADUAL'
      Origin = '"EST_REDUCOES"."PERC_INTERESTADUAL"'
    end
    object dtEditMENSAGEM_NF: TIBStringField
      FieldName = 'MENSAGEM_NF'
      Origin = '"EST_REDUCOES"."MENSAGEM_NF"'
      Size = 80
    end
    object dtEditMENSAGEM_NF_IE: TIBStringField
      FieldName = 'MENSAGEM_NF_IE'
      Origin = '"EST_REDUCOES"."MENSAGEM_NF_IE"'
      Size = 80
    end
    object dtEditPERC_CONTRIBUINTE: TFloatField
      FieldName = 'PERC_CONTRIBUINTE'
      Origin = '"EST_REDUCOES"."PERC_CONTRIBUINTE"'
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               PERC_ESTADUAL, '
      '               PERC_INTERESTADUAL, '
      '               MENSAGEM_NF,'
      '               MENSAGEM_NF_IE,'
      '               PERC_CONTRIBUINTE'
      'FROM EST_REDUCOES'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY CODIGO')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_REDUCOES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_REDUCOES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListPERC_ESTADUAL: TFloatField
      DisplayLabel = '% Estadual'
      FieldName = 'PERC_ESTADUAL'
      Origin = '"EST_REDUCOES"."PERC_ESTADUAL"'
    end
    object dtListPERC_INTERESTADUAL: TFloatField
      DisplayLabel = '% Interestadual'
      FieldName = 'PERC_INTERESTADUAL'
      Origin = '"EST_REDUCOES"."PERC_INTERESTADUAL"'
    end
    object dtListMENSAGEM_NF: TIBStringField
      DisplayLabel = 'Mensagem NF'
      FieldName = 'MENSAGEM_NF'
      Origin = '"EST_REDUCOES"."MENSAGEM_NF"'
      Size = 80
    end
    object dtListMENSAGEM_NF_IE: TIBStringField
      DisplayLabel = 'Mensagem NF Int. Est.'
      FieldName = 'MENSAGEM_NF_IE'
      Origin = '"EST_REDUCOES"."MENSAGEM_NF_IE"'
      Size = 80
    end
    object dtListPERC_CONTRIBUINTE: TFloatField
      DisplayLabel = '% Contribuinte'
      FieldName = 'PERC_CONTRIBUINTE'
      Origin = '"EST_REDUCOES"."PERC_CONTRIBUINTE"'
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
        Component = GridDBBandedTableView2MENSAGEM_NF
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
        Component = GridDBBandedTableView2MENSAGEM_NF_IE
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
        Component = GridDBBandedTableView2PERC_CONTRIBUINTE
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
        Component = GridDBBandedTableView2PERC_ESTADUAL
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
        Component = GridDBBandedTableView2PERC_INTERESTADUAL
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
