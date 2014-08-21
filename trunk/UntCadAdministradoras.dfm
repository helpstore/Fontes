inherited frmCadAdministradoras: TfrmCadAdministradoras
  Caption = 'Administradoras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    ActivePage = tbsEdita
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
          object GridDBBandedTableView2DIASREEMBOLSO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DIASREEMBOLSO'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2TAXA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TAXA'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2TAXA_PARCELADO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TAXA_PARCELADO'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2TAXA_DEBITO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TAXA_DEBITO'
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
        end
        object cxDBCalcEdit1: TcxDBCalcEdit
          Left = 7
          Top = 77
          DataBinding.DataField = 'TAXA'
          DataBinding.DataSource = dsRegistro
          TabOrder = 4
          Width = 121
        end
        object cxLabel3: TcxLabel
          Left = 7
          Top = 63
          Caption = 'Taxa Mensal Cr'#233'dito'
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 131
          Top = 63
          Caption = 'Taxa D'#233'bito'
          Transparent = True
        end
        object cxDBCalcEdit2: TcxDBCalcEdit
          Left = 131
          Top = 77
          DataBinding.DataField = 'TAXA_DEBITO'
          DataBinding.DataSource = dsRegistro
          TabOrder = 7
          Width = 121
        end
        object cxLabel5: TcxLabel
          Left = 255
          Top = 63
          Caption = 'Taxa Parcelado'
          Transparent = True
        end
        object cxDBCalcEdit3: TcxDBCalcEdit
          Left = 255
          Top = 77
          DataBinding.DataField = 'TAXA_PARCELADO'
          DataBinding.DataSource = dsRegistro
          TabOrder = 9
          Width = 121
        end
        object cxLabel6: TcxLabel
          Left = 379
          Top = 63
          Caption = 'Dias Reembolso'
          Transparent = True
        end
        object cxDBCalcEdit4: TcxDBCalcEdit
          Left = 379
          Top = 77
          DataBinding.DataField = 'DIASREEMBOLSO'
          DataBinding.DataSource = dsRegistro
          TabOrder = 11
          Width = 121
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    DeleteSQL.Strings = (
      'delete from FIN_ADMINISTRADORA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_ADMINISTRADORA'
      
        '  (CNPJ, CODIGO, DIASREEMBOLSO, NOME, TAXA, TAXA_DEBITO, TAXA_PA' +
        'RCELADO)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DIASREEMBOLSO, :NOME, :TAXA, :TAXA_DEBITO, :' +
        'TAXA_PARCELADO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  DIASREEMBOLSO,'
      '  TAXA,'
      '  TAXA_PARCELADO,'
      '  TAXA_DEBITO'
      'from FIN_ADMINISTRADORA '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ,'
      '          CODIGO, '
      '          DIASREEMBOLSO, '
      '          NOME, '
      '          TAXA,'
      '          TAXA_PARCELADO,'
      '          TAXA_DEBITO'
      'from FIN_ADMINISTRADORA'
      'where CODIGO =:CODIGO')
    ModifySQL.Strings = (
      'update FIN_ADMINISTRADORA'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DIASREEMBOLSO = :DIASREEMBOLSO,'
      '  NOME = :NOME,'
      '  TAXA = :TAXA,'
      '  TAXA_DEBITO = :TAXA_DEBITO,'
      '  TAXA_PARCELADO = :TAXA_PARCELADO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'FIN_ADMINISTRADORA_GE'
    GeneratorField.ApplyEvent = gamOnPost
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_ADMINISTRADORA"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_ADMINISTRADORA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditDIASREEMBOLSO: TIntegerField
      FieldName = 'DIASREEMBOLSO'
      Origin = '"FIN_ADMINISTRADORA"."DIASREEMBOLSO"'
    end
    object dtEditNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_ADMINISTRADORA"."NOME"'
      Size = 50
    end
    object dtEditTAXA: TFloatField
      FieldName = 'TAXA'
      Origin = '"FIN_ADMINISTRADORA"."TAXA"'
    end
    object dtEditTAXA_PARCELADO: TFloatField
      FieldName = 'TAXA_PARCELADO'
      Origin = '"FIN_ADMINISTRADORA"."TAXA_PARCELADO"'
    end
    object dtEditTAXA_DEBITO: TFloatField
      FieldName = 'TAXA_DEBITO'
      Origin = '"FIN_ADMINISTRADORA"."TAXA_DEBITO"'
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'select CNPJ,'
      '          CODIGO, '
      '          DIASREEMBOLSO, '
      '          NOME, '
      '          TAXA,'
      '          TAXA_PARCELADO,'
      '          TAXA_DEBITO'
      'from FIN_ADMINISTRADORA'
      'where CNPJ = :CNPJ'
      'order by NOME')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_ADMINISTRADORA"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_ADMINISTRADORA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListDIASREEMBOLSO: TIntegerField
      DisplayLabel = 'Dias Reembolso'
      FieldName = 'DIASREEMBOLSO'
      Origin = '"FIN_ADMINISTRADORA"."DIASREEMBOLSO"'
    end
    object dtListNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_ADMINISTRADORA"."NOME"'
      Size = 50
    end
    object dtListTAXA: TFloatField
      DisplayLabel = 'Tx. M'#234's Cr'#233'd.'
      FieldName = 'TAXA'
      Origin = '"FIN_ADMINISTRADORA"."TAXA"'
    end
    object dtListTAXA_PARCELADO: TFloatField
      DisplayLabel = 'Tx. Parcelado'
      FieldName = 'TAXA_PARCELADO'
      Origin = '"FIN_ADMINISTRADORA"."TAXA_PARCELADO"'
    end
    object dtListTAXA_DEBITO: TFloatField
      DisplayLabel = 'Tx. D'#233'bito'
      FieldName = 'TAXA_DEBITO'
      Origin = '"FIN_ADMINISTRADORA"."TAXA_DEBITO"'
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
        Component = GridDBBandedTableView2DIASREEMBOLSO
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
        Component = GridDBBandedTableView2TAXA
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
        Component = GridDBBandedTableView2TAXA_DEBITO
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
        Component = GridDBBandedTableView2TAXA_PARCELADO
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
