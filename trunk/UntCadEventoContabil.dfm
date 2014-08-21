inherited frmCadEventoContabil: TfrmCadEventoContabil
  Caption = 'Evento Cont'#225'bil'
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
          object GridDBBandedTableView2CODEVENTOCONTABIL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODEVENTOCONTABIL'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2DESCRICAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DESCRICAO'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODIGO'
            Width = 86
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2OBSERVACAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OBSERVACAO'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2TIPO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TIPO'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2MOVIMENTAFLUXODECAIXAREALIZADO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MOVIMENTAFLUXODECAIXAREALIZADO'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CONTABILIZACAOAUXILIAR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONTABILIZACAOAUXILIAR'
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
          DataBinding.DataField = 'DESCRICAO'
          Width = 317
        end
        inherited edtCodigo: TcxDBTextEdit
          DataBinding.DataField = 'CODEVENTOCONTABIL'
        end
        inherited cxLabel2: TcxLabel
          Caption = 'Evento'
        end
        object cxLabel3: TcxLabel
          Left = 6
          Top = 62
          Caption = 'Abrevia'#231#227'o'
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 6
          Top = 79
          DataBinding.DataField = 'CODIGO'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 5
          Width = 211
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 222
          Top = 81
          Caption = 'Fluxo de Caixa'
          DataBinding.DataField = 'MOVIMENTAFLUXODECAIXAREALIZADO'
          DataBinding.DataSource = dsRegistro
          TabOrder = 6
          Width = 121
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 318
          Top = 81
          Caption = 'Ctb. Auxiliar'
          DataBinding.DataField = 'CONTABILIZACAOAUXILIAR'
          DataBinding.DataSource = dsRegistro
          TabOrder = 7
          Width = 121
        end
        object cxDBMemo1: TcxDBMemo
          Left = 6
          Top = 130
          DataBinding.DataField = 'OBSERVACAO'
          DataBinding.DataSource = dsRegistro
          TabOrder = 8
          Height = 129
          Width = 385
        end
        object cxLabel4: TcxLabel
          Left = 6
          Top = 113
          Caption = 'Obs'
          Transparent = True
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    DeleteSQL.Strings = (
      'delete from act_eventocontabil'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into act_eventocontabil'
      
        '  (CNPJ, CODEVENTOCONTABIL, CODIGO, CONTABILIZACAOAUXILIAR, DESC' +
        'RICAO, '
      '   MOVIMENTAFLUXODECAIXAREALIZADO, OBSERVACAO, TIPO)'
      'values'
      
        '  (:CNPJ, :CODEVENTOCONTABIL, :CODIGO, :CONTABILIZACAOAUXILIAR, ' +
        ':DESCRICAO, '
      '   :MOVIMENTAFLUXODECAIXAREALIZADO, :OBSERVACAO, :TIPO)')
    RefreshSQL.Strings = (
      'Select *'
      'from act_eventocontabil '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from act_eventocontabil ev'
      'where ev.codigo =:codigo')
    ModifySQL.Strings = (
      'update act_eventocontabil'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODEVENTOCONTABIL = :CODEVENTOCONTABIL,'
      '  CODIGO = :CODIGO,'
      '  CONTABILIZACAOAUXILIAR = :CONTABILIZACAOAUXILIAR,'
      '  DESCRICAO = :DESCRICAO,'
      
        '  MOVIMENTAFLUXODECAIXAREALIZADO = :MOVIMENTAFLUXODECAIXAREALIZA' +
        'DO,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  TIPO = :TIPO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODEVENTOCONTABIL'
    GeneratorField.Generator = 'GEN_ACT_EVENTOCONTABIL_ID'
    GeneratorField.ApplyEvent = gamOnPost
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"ACT_EVENTOCONTABIL"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditCODEVENTOCONTABIL: TIntegerField
      FieldName = 'CODEVENTOCONTABIL'
      Origin = '"ACT_EVENTOCONTABIL"."CODEVENTOCONTABIL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"ACT_EVENTOCONTABIL"."DESCRICAO"'
      Size = 50
    end
    object dtEditCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"ACT_EVENTOCONTABIL"."CODIGO"'
      Size = 50
    end
    object dtEditOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Origin = '"ACT_EVENTOCONTABIL"."OBSERVACAO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dtEditTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"ACT_EVENTOCONTABIL"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object dtEditMOVIMENTAFLUXODECAIXAREALIZADO: TIBStringField
      FieldName = 'MOVIMENTAFLUXODECAIXAREALIZADO'
      Origin = '"ACT_EVENTOCONTABIL"."MOVIMENTAFLUXODECAIXAREALIZADO"'
      FixedChar = True
      Size = 1
    end
    object dtEditCONTABILIZACAOAUXILIAR: TIBStringField
      FieldName = 'CONTABILIZACAOAUXILIAR'
      Origin = '"ACT_EVENTOCONTABIL"."CONTABILIZACAOAUXILIAR"'
      FixedChar = True
      Size = 1
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'select * from act_eventocontabil ev'
      'where ev.cnpj = :cnpj')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"ACT_EVENTOCONTABIL"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListCODEVENTOCONTABIL: TIntegerField
      DisplayLabel = 'Evento Cont'#225'bil'
      FieldName = 'CODEVENTOCONTABIL'
      Origin = '"ACT_EVENTOCONTABIL"."CODEVENTOCONTABIL"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListDESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"ACT_EVENTOCONTABIL"."DESCRICAO"'
      Size = 50
    end
    object dtListCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"ACT_EVENTOCONTABIL"."CODIGO"'
      Size = 50
    end
    object dtListOBSERVACAO: TBlobField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBSERVACAO'
      Origin = '"ACT_EVENTOCONTABIL"."OBSERVACAO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dtListTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"ACT_EVENTOCONTABIL"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object dtListMOVIMENTAFLUXODECAIXAREALIZADO: TIBStringField
      DisplayLabel = 'Fluxo de Caixa'
      FieldName = 'MOVIMENTAFLUXODECAIXAREALIZADO'
      Origin = '"ACT_EVENTOCONTABIL"."MOVIMENTAFLUXODECAIXAREALIZADO"'
      FixedChar = True
      Size = 1
    end
    object dtListCONTABILIZACAOAUXILIAR: TIBStringField
      DisplayLabel = 'Ctb. Auxiliar'
      FieldName = 'CONTABILIZACAOAUXILIAR'
      Origin = '"ACT_EVENTOCONTABIL"."CONTABILIZACAOAUXILIAR"'
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
        Component = GridDBBandedTableView2CODEVENTOCONTABIL
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
        Component = GridDBBandedTableView2CONTABILIZACAOAUXILIAR
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
        Component = GridDBBandedTableView2DESCRICAO
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
        Component = GridDBBandedTableView2MOVIMENTAFLUXODECAIXAREALIZADO
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
        Component = GridDBBandedTableView2OBSERVACAO
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
        Component = GridDBBandedTableView2TIPO
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
