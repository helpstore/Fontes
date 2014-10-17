inherited frmCadUsuarios: TfrmCadUsuarios
  Left = 99
  Top = 104
  Caption = ' Usu'#225'rios '
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
          object GridDBBandedTableView2LOGIN: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LOGIN'
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
          object GridDBBandedTableView2DESCRICAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DESCRICAO'
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
          Left = 72
          DataBinding.DataField = 'NOME'
        end
        inherited edtCodigo: TcxDBTextEdit
          Left = 8
          DataBinding.DataField = 'CODIGO'
          Width = 62
        end
        inherited cxLabel1: TcxLabel
          Left = 8
          Top = 16
        end
        inherited cxLabel2: TcxLabel
          Left = 72
          Top = 16
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 568
          Top = 32
          DataBinding.DataField = 'LOGIN'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          Width = 91
        end
        object cxLabel3: TcxLabel
          Left = 568
          Top = 16
          Caption = 'Login'
          Transparent = True
        end
        object CmbPerfil: TcxDBLookupComboBox
          Left = 8
          Top = 72
          DataBinding.DataField = 'PERFIL'
          DataBinding.DataSource = dsRegistro
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'DESCRICAO'
            end>
          Properties.ListSource = dsPerfil
          TabOrder = 3
          Width = 242
        end
        object cxLabel4: TcxLabel
          Left = 8
          Top = 56
          Caption = 'Perfil'
          Transparent = True
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    Tag = 1
    OnNewRecord = dtEditNewRecord
    DeleteSQL.Strings = (
      'delete from SIS_USUARIOS'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into SIS_USUARIOS'
      '  (CODIGO, LOGIN, NOME, PERFIL, SENHA)'
      'values'
      '  (:CODIGO, :LOGIN, :NOME, :PERFIL, :SENHA)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  LOGIN,'
      '  NOME,'
      '  PERFIL,'
      '  SENHA,'
      '  EXIBIR'
      'from SIS_USUARIOS '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT *'
      'FROM SIS_USUARIOS'
      'WHERE CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update SIS_USUARIOS'
      'set'
      '  CODIGO = :CODIGO,'
      '  LOGIN = :LOGIN,'
      '  NOME = :NOME,'
      '  PERFIL = :PERFIL,'
      '  SENHA = :SENHA'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'SIS_USUARIOS_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 152
    object dtEditCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"SIS_USUARIOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = '"SIS_USUARIOS"."LOGIN"'
      Size = 10
    end
    object dtEditNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"SIS_USUARIOS"."NOME"'
      Size = 50
    end
    object dtEditPERFIL: TIntegerField
      FieldName = 'PERFIL'
      Origin = '"SIS_USUARIOS"."PERFIL"'
    end
    object dtEditSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"SIS_USUARIOS"."SENHA"'
    end
    object dtEditEXIBIR: TIBStringField
      FieldName = 'EXIBIR'
      Origin = '"SIS_USUARIOS"."EXIBIR"'
      FixedChar = True
      Size = 1
    end
  end
  inherited dtList: TIBQuery
    Tag = 1
    SQL.Strings = (
      'SELECT usu.CODIGO,'
      '               usu.LOGIN,'
      '               usu.NOME,'
      '               per.descricao'
      'FROM SIS_USUARIOS usu'
      'inner join SIS_PERFIL per on usu.perfil = per.codigo'
      'ORDER BY LOGIN')
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"SIS_USUARIOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListLOGIN: TIBStringField
      DisplayLabel = 'Login'
      FieldName = 'LOGIN'
      Origin = '"SIS_USUARIOS"."LOGIN"'
      Size = 10
    end
    object dtListNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"SIS_USUARIOS"."NOME"'
      Size = 50
    end
    object dtListDESCRICAO: TIBStringField
      DisplayLabel = 'Perfil'
      FieldName = 'DESCRICAO'
      Origin = '"SIS_PERFIL"."DESCRICAO"'
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
        Component = GridDBBandedTableView2LOGIN
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
      end>
  end
  object dsPerfil: TDataSource
    DataSet = QryPerfil
    Left = 743
    Top = 4
  end
  object QryPerfil: TIBQuery
    Tag = 1
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'SELECT CODIGO, '
      '               DESCRICAO'
      'FROM SIS_PERFIL'
      'ORDER BY CODIGO'
      '')
    Left = 713
    Top = 4
    object QryPerfilCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"SIS_PERFIL"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPerfilDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"SIS_PERFIL"."DESCRICAO"'
      Size = 50
    end
  end
end
