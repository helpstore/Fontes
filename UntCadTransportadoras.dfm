inherited frmCadTransportadoras: TfrmCadTransportadoras
  Caption = 'Transportadoras'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        Height = 336
        inherited GridDBBandedTableView2: TcxGridDBBandedTableView
          object GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODIGO'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2PLACA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PLACA'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2UF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UF'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CPF_CNPJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CPF_CNPJ'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2ENDERECO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ENDERECO'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CIDADE'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2IE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IE'
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
          Tag = 0
          DataBinding.DataField = 'NOME'
          TabOrder = 3
          Visible = False
        end
        inherited edtCodigo: TcxDBTextEdit
          DataBinding.DataField = 'CODIGO'
          TabOrder = 2
        end
        inherited cxLabel2: TcxLabel
          Visible = False
        end
        object cxLabel12: TcxLabel
          Left = 74
          Top = 16
          Caption = 'Pessoa '
          Transparent = True
        end
        object aTfrmCadPessoas: TcxDBLookupComboBox
          Tag = 1
          Left = 75
          Top = 32
          DataBinding.DataField = 'PESSOA_FJ'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME_RAZAO'
            end>
          Properties.ListSource = dsPessoa
          TabOrder = 0
          Width = 502
        end
        object btnPessoaFJ: TcxButtonEdit
          Left = 577
          Top = 32
          Properties.Buttons = <
            item
              Caption = 'F4'
              Default = True
              Kind = bkText
            end>
          Properties.ViewStyle = vsButtonsOnly
          TabOrder = 7
          Text = 'btnPessoaFJ'
          OnClick = btnPessoaFJClick
          Width = 25
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 8
          Top = 80
          DataBinding.DataField = 'PLACA'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 1
          Width = 129
        end
        object cxLabel3: TcxLabel
          Left = 8
          Top = 63
          Caption = 'Placa'
          Transparent = True
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    DeleteSQL.Strings = (
      'delete from GLO_TRANSPORTADORAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into GLO_TRANSPORTADORAS'
      
        '  (CIDADE, CNPJ, CODIGO, CPF_CNPJ, ENDERECO, IE, NOME, PESSOA_FJ' +
        ', PLACA, '
      '   UF)'
      'values'
      
        '  (:CIDADE, :CNPJ, :CODIGO, :CPF_CNPJ, :ENDERECO, :IE, :NOME, :P' +
        'ESSOA_FJ, '
      '   :PLACA, :UF)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  PLACA,'
      '  UF,'
      '  CPF_CNPJ,'
      '  ENDERECO,'
      '  CIDADE,'
      '  IE,'
      '  NFE_EXP,'
      '  SELECIONADO,'
      '  PESSOA_FJ'
      'from GLO_TRANSPORTADORAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME ,'
      '          PLACA ,'
      '          UF        ,'
      '          CPF_CNPJ  ,'
      '          ENDERECO  ,'
      '          CIDADE    ,'
      '          IE,'
      '          PESSOA_FJ'
      'from GLO_TRANSPORTADORAS'
      'Where CNPJ = :CNPJ and'
      'CODIGO =:CODIGO')
    ModifySQL.Strings = (
      'update GLO_TRANSPORTADORAS'
      'set'
      '  CIDADE = :CIDADE,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  CPF_CNPJ = :CPF_CNPJ,'
      '  ENDERECO = :ENDERECO,'
      '  IE = :IE,'
      '  NOME = :NOME,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PLACA = :PLACA,'
      '  UF = :UF'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GLO_TRANSPORTASDORAS_GE'
    GeneratorField.ApplyEvent = gamOnPost
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_TRANSPORTADORAS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_TRANSPORTADORAS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_TRANSPORTADORAS"."NOME"'
      Size = 50
    end
    object dtEditPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"GLO_TRANSPORTADORAS"."PLACA"'
      FixedChar = True
      Size = 8
    end
    object dtEditUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_TRANSPORTADORAS"."UF"'
      FixedChar = True
      Size = 2
    end
    object dtEditCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = '"GLO_TRANSPORTADORAS"."CPF_CNPJ"'
      Size = 15
    end
    object dtEditENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"GLO_TRANSPORTADORAS"."ENDERECO"'
      Size = 50
    end
    object dtEditCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"GLO_TRANSPORTADORAS"."CIDADE"'
      Size = 50
    end
    object dtEditIE: TIBStringField
      FieldName = 'IE'
      Origin = '"GLO_TRANSPORTADORAS"."IE"'
      Size = 15
    end
    object dtEditPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_TRANSPORTADORAS"."PESSOA_FJ"'
      OnChange = dtEditPESSOA_FJChange
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME ,'
      '          PLACA ,'
      '          UF        ,'
      '          CPF_CNPJ  ,'
      '          ENDERECO  ,'
      '          CIDADE    ,'
      '          IE,'
      '          PESSOA_FJ        '
      'from GLO_TRANSPORTADORAS'
      'Where CNPJ = :CNPJ'
      'order by NOME')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_TRANSPORTADORAS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_TRANSPORTADORAS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"GLO_TRANSPORTADORAS"."NOME"'
      Size = 50
    end
    object dtListPLACA: TIBStringField
      DisplayLabel = 'Placa'
      FieldName = 'PLACA'
      Origin = '"GLO_TRANSPORTADORAS"."PLACA"'
      FixedChar = True
      Size = 8
    end
    object dtListUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_TRANSPORTADORAS"."UF"'
      FixedChar = True
      Size = 2
    end
    object dtListCPF_CNPJ: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CNPJ'
      Origin = '"GLO_TRANSPORTADORAS"."CPF_CNPJ"'
      Size = 15
    end
    object dtListENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"GLO_TRANSPORTADORAS"."ENDERECO"'
      Size = 50
    end
    object dtListCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"GLO_TRANSPORTADORAS"."CIDADE"'
      Size = 50
    end
    object dtListIE: TIBStringField
      FieldName = 'IE'
      Origin = '"GLO_TRANSPORTADORAS"."IE"'
      Size = 15
    end
    object dtListPESSOA_FJ: TIntegerField
      DisplayLabel = 'Pessoa F'#237'sica/Jur'#237'dica'
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_TRANSPORTADORAS"."PESSOA_FJ"'
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
        Component = GridDBBandedTableView2CPF_CNPJ
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
        Component = GridDBBandedTableView2IE
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
        Component = GridDBBandedTableView2PLACA
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
  object dsPessoa: TDataSource
    AutoEdit = False
    DataSet = QryPessoa
    Left = 483
    Top = 48
  end
  object QryPessoa: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    DataSource = dsPesquisa
    SQL.Strings = (
      'select psa.codigo, psa.nome_razao from glo_pessoas_fj psa'
      'where psa.cnpj = :cnpj'
      'order by psa.nome_razao')
    Left = 512
    Top = 48
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object QryPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPessoaNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
  end
end
