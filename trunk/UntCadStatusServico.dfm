inherited frmCadStatusServico: TfrmCadStatusServico
  Left = 377
  Top = 213
  Width = 627
  Height = 400
  Caption = 'Status de Servi'#231'o'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    Width = 611
    Height = 336
    ActivePage = tbsEdita
    ClientRectBottom = 332
    ClientRectRight = 607
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        Width = 603
        Height = 288
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
          object GridDBBandedTableView2COR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COR'
            PropertiesClassName = 'TcxColorComboBoxProperties'
            Properties.CustomColors = <>
            Width = 104
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2FECHADO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FECHADO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Width = 47
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2OS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Width = 37
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2MOVIMENTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MOVIMENTO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Width = 74
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
        end
      end
      inherited Panel1: TPanel
        Width = 603
      end
    end
    inherited tbsEdita: TcxTabSheet
      inherited Panel2: TPanel
        Width = 603
        Height = 305
        inherited edtNome: TcxDBTextEdit
          DataBinding.DataField = 'NOME'
          Width = 379
        end
        inherited edtCodigo: TcxDBTextEdit
          DataBinding.DataField = 'CODIGO'
        end
        object cxDBColorComboBox1: TcxDBColorComboBox
          Left = 455
          Top = 32
          DataBinding.DataField = 'COR'
          DataBinding.DataSource = dsRegistro
          Properties.CustomColors = <>
          TabOrder = 4
          Width = 138
        end
        object cxLabel3: TcxLabel
          Left = 455
          Top = 15
          Caption = 'Cor'
          Transparent = True
        end
        object cxGroupBox1: TcxGroupBox
          Left = 285
          Top = 56
          Caption = 'Vinculo de Status'
          TabOrder = 6
          Height = 62
          Width = 169
          object cxDBCheckBox3: TcxDBCheckBox
            Left = 6
            Top = 25
            Caption = 'Movimentos'
            DataBinding.DataField = 'MOVIMENTO'
            DataBinding.DataSource = dsRegistro
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            TabOrder = 0
            Width = 83
          end
          object cxDBCheckBox2: TcxDBCheckBox
            Left = 94
            Top = 25
            Caption = 'OS'
            DataBinding.DataField = 'OS'
            DataBinding.DataSource = dsRegistro
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            TabOrder = 1
            Width = 43
          end
        end
        object cxGroupBox2: TcxGroupBox
          Left = 8
          Top = 56
          Caption = 'Tipo de Status - Padr'#227'o'
          TabOrder = 7
          Height = 62
          Width = 273
          object cxDBCheckBox1: TcxDBCheckBox
            Left = 5
            Top = 25
            Caption = 'Fechamento'
            DataBinding.DataField = 'FECHADO'
            DataBinding.DataSource = dsRegistro
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            TabOrder = 0
            Width = 84
          end
          object cxDBCheckBox4: TcxDBCheckBox
            Left = 93
            Top = 25
            Caption = 'Programa'#231#227'o'
            DataBinding.DataField = 'PADRAO_ENVIO'
            DataBinding.DataSource = dsRegistro
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            TabOrder = 1
            Width = 92
          end
          object cxDBCheckBox5: TcxDBCheckBox
            Left = 189
            Top = 25
            Caption = 'Abertura'
            DataBinding.DataField = 'PADRAO_ABERTURA'
            DataBinding.DataSource = dsRegistro
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            TabOrder = 2
            Width = 76
          end
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    DeleteSQL.Strings = (
      'delete from ofc_status'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into ofc_status'
      
        '  (CNPJ, CODIGO, COR, FECHADO, MOVIMENTO, NOME, OS, PADRAO_ABERT' +
        'URA, PADRAO_ENVIO)'
      'values'
      
        '  (:CNPJ, :CODIGO, :COR, :FECHADO, :MOVIMENTO, :NOME, :OS, :PADR' +
        'AO_ABERTURA, '
      '   :PADRAO_ENVIO)')
    RefreshSQL.Strings = (
      'Select * '
      'from ofc_status '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from ofc_status'
      'where codigo =:codigo')
    ModifySQL.Strings = (
      'update ofc_status'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  COR = :COR,'
      '  FECHADO = :FECHADO,'
      '  MOVIMENTO = :MOVIMENTO,'
      '  NOME = :NOME,'
      '  OS = :OS,'
      '  PADRAO_ABERTURA = :PADRAO_ABERTURA,'
      '  PADRAO_ENVIO = :PADRAO_ENVIO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_OFC_STATUS_ID'
    GeneratorField.ApplyEvent = gamOnPost
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_STATUS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_STATUS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_STATUS"."NOME"'
      Size = 50
    end
    object dtEditCOR: TIntegerField
      FieldName = 'COR'
      Origin = '"OFC_STATUS"."COR"'
    end
    object dtEditFECHADO: TIBStringField
      FieldName = 'FECHADO'
      Origin = '"OFC_STATUS"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object dtEditOS: TIBStringField
      FieldName = 'OS'
      Origin = '"OFC_STATUS"."OS"'
      FixedChar = True
      Size = 1
    end
    object dtEditMOVIMENTO: TIBStringField
      FieldName = 'MOVIMENTO'
      Origin = '"OFC_STATUS"."MOVIMENTO"'
      FixedChar = True
      Size = 1
    end
    object dtEditPADRAO_ENVIO: TIBStringField
      FieldName = 'PADRAO_ENVIO'
      Origin = '"OFC_STATUS"."PADRAO_ENVIO"'
      FixedChar = True
      Size = 1
    end
    object dtEditPADRAO_ABERTURA: TIBStringField
      FieldName = 'PADRAO_ABERTURA'
      Origin = '"OFC_STATUS"."PADRAO_ABERTURA"'
      FixedChar = True
      Size = 1
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'select * from ofc_status'
      'where cnpj = :cnpj')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_STATUS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_STATUS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"OFC_STATUS"."NOME"'
      Size = 50
    end
    object dtListCOR: TIntegerField
      DisplayLabel = 'Cor'
      FieldName = 'COR'
      Origin = '"OFC_STATUS"."COR"'
    end
    object dtListFECHADO: TIBStringField
      DisplayLabel = 'Fechado'
      FieldName = 'FECHADO'
      Origin = '"OFC_STATUS"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object dtListOS: TIBStringField
      FieldName = 'OS'
      Origin = '"OFC_STATUS"."OS"'
      FixedChar = True
      Size = 1
    end
    object dtListMOVIMENTO: TIBStringField
      DisplayLabel = 'Movimento'
      FieldName = 'MOVIMENTO'
      Origin = '"OFC_STATUS"."MOVIMENTO"'
      FixedChar = True
      Size = 1
    end
    object dtListPADRAO_ENVIO: TIBStringField
      DisplayLabel = 'Status Padr'#227'o Programa'#231#227'o'
      FieldName = 'PADRAO_ENVIO'
      Origin = '"OFC_STATUS"."PADRAO_ENVIO"'
      FixedChar = True
      Size = 1
    end
    object dtListPADRAO_ABERTURA: TIBStringField
      DisplayLabel = 'Status Padr'#227'o Abertura'
      FieldName = 'PADRAO_ABERTURA'
      Origin = '"OFC_STATUS"."PADRAO_ABERTURA"'
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
        Component = GridDBBandedTableView2COR
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
        Component = GridDBBandedTableView2FECHADO
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
        Component = GridDBBandedTableView2MOVIMENTO
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
        Component = GridDBBandedTableView2OS
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
