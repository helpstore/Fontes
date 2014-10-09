inherited FrmCadTerceiro: TFrmCadTerceiro
  Left = 257
  Top = 232
  Caption = 'Terceiros'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        inherited GridDBBandedTableView2: TcxGridDBBandedTableView
          object GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CNPJ'
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
          object GridDBBandedTableView2COM_PRAZO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COM_PRAZO'
            Width = 92
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2COM_VISTA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COM_VISTA'
            Width = 87
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME'
            Width = 254
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2PESSOA_FJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PESSOA_FJ'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CODIGO'
            Properties.ListColumns = <
              item
                FieldName = 'NOME_RAZAO'
              end>
            Properties.ListSource = dsPessoasFJ
            Width = 191
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
          DataBinding.DataField = 'NOME'
        end
        inherited edtCodigo: TcxDBTextEdit
          DataBinding.DataField = 'CODIGO'
        end
        object aTfrmCadPessoas: TcxDBLookupComboBox
          Left = 10
          Top = 88
          DataBinding.DataField = 'PESSOA_FJ'
          DataBinding.DataSource = dsRegistro
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME_RAZAO'
            end>
          Properties.ListSource = dsPessoasFJ
          TabOrder = 4
          Width = 282
        end
        object cxLabel3: TcxLabel
          Left = 7
          Top = 71
          Caption = 'Pessoa F'#237'sica/Jur'#237'dica'
          Transparent = True
        end
        object cxDBCalcEdit1: TcxDBCalcEdit
          Left = 322
          Top = 88
          DataBinding.DataField = 'COM_VISTA'
          DataBinding.DataSource = dsRegistro
          TabOrder = 6
          Width = 121
        end
        object cxLabel4: TcxLabel
          Left = 323
          Top = 71
          Caption = 'Comiss'#227'o '#224' Vista'
          Transparent = True
        end
        object cxDBCalcEdit2: TcxDBCalcEdit
          Left = 448
          Top = 88
          DataBinding.DataField = 'COM_PRAZO'
          DataBinding.DataSource = dsRegistro
          TabOrder = 8
          Width = 121
        end
        object cxLabel5: TcxLabel
          Left = 449
          Top = 71
          Caption = 'Comiss'#227'o '#224' Prazo'
          Transparent = True
        end
        object btnPessoa: TcxButtonEdit
          Left = 291
          Top = 88
          TabStop = False
          Properties.Buttons = <
            item
              Caption = 'F4'
              Default = True
              Kind = bkText
            end>
          Properties.ViewStyle = vsButtonsOnly
          TabOrder = 10
          Text = 'btnPessoa'
          OnClick = btnPessoaClick
          Width = 25
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    DeleteSQL.Strings = (
      'delete from FAT_TERCEIROS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FAT_TERCEIROS'
      '  (CNPJ, CODIGO, COM_PRAZO, COM_VISTA, NOME, PESSOA_FJ)'
      'values'
      '  (:CNPJ, :CODIGO, :COM_PRAZO, :COM_VISTA, :NOME, :PESSOA_FJ)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  COM_VISTA,'
      '  COM_PRAZO,'
      '  PESSOA_FJ'
      'from FAT_TERCEIROS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          COM_PRAZO, '
      '          COM_VISTA, '
      '          NOME, '
      '          PESSOA_FJ '
      'from FAT_TERCEIROS'
      'WHERE CNPJ = :CNPJ AND'
      'CODIGO =:CODIGO')
    ModifySQL.Strings = (
      'update FAT_TERCEIROS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  COM_PRAZO = :COM_PRAZO,'
      '  COM_VISTA = :COM_VISTA,'
      '  NOME = :NOME,'
      '  PESSOA_FJ = :PESSOA_FJ'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'FAT_TERCEIROS_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 152
    Top = 20
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_TERCEIROS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_TERCEIROS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditCOM_PRAZO: TFloatField
      FieldName = 'COM_PRAZO'
      Origin = '"FAT_TERCEIROS"."COM_PRAZO"'
      DisplayFormat = '###,##0.00'
    end
    object dtEditCOM_VISTA: TFloatField
      FieldName = 'COM_VISTA'
      Origin = '"FAT_TERCEIROS"."COM_VISTA"'
      DisplayFormat = '###,##0.00'
    end
    object dtEditNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_TERCEIROS"."NOME"'
      Size = 50
    end
    object dtEditPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_TERCEIROS"."PESSOA_FJ"'
    end
  end
  inherited dtList: TIBQuery
    Active = True
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          COM_PRAZO, '
      '          COM_VISTA, '
      '          NOME, '
      '          PESSOA_FJ '
      'from FAT_TERCEIROS'
      'WHERE CNPJ = :CNPJ'
      'Order  By Nome')
    Left = 89
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_TERCEIROS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_TERCEIROS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListCOM_PRAZO: TFloatField
      DisplayLabel = 'Comiss'#227'o '#224' Prazo'
      FieldName = 'COM_PRAZO'
      Origin = '"FAT_TERCEIROS"."COM_PRAZO"'
      DisplayFormat = '###,##0.00'
    end
    object dtListCOM_VISTA: TFloatField
      DisplayLabel = 'Comiss'#227'o '#224' Vista'
      FieldName = 'COM_VISTA'
      Origin = '"FAT_TERCEIROS"."COM_VISTA"'
      DisplayFormat = '###,##0.00'
    end
    object dtListNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_TERCEIROS"."NOME"'
      Size = 50
    end
    object dtListPESSOA_FJ: TIntegerField
      DisplayLabel = 'Pessoa F'#237'sica/Jur'#237'dica'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_TERCEIROS"."PESSOA_FJ"'
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
        Component = GridDBBandedTableView2COM_PRAZO
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
        Component = GridDBBandedTableView2COM_VISTA
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
        Component = GridDBBandedTableView2PESSOA_FJ
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
  object dsPessoasFJ: TDataSource
    AutoEdit = False
    DataSet = QryPessoa
    Left = 744
    Top = 3
  end
  object QryPessoa: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               Regiao,'
      '               NOME_RAZAO, '
      '               FANTASIA, '
      '               ATIVIDADE,'
      '               ENDERECO, '
      '               NUMERO, '
      '               COMPLEMENTO, '
      '               BAIRRO, '
      '               CIDADE, '
      '               UF, '
      '               CEP, '
      '               FONE,'
      '               FAX, '
      '               CELULAR, '
      '               PESSOA, '
      '               CPF_CGC, '
      '               SUBSTRING (RG_IE FROM 1 FOR 15) RG_IE  , '
      '               CONTATO, '
      '               DT_NASCIMENTO, '
      '               DT_CADASTRO, '
      '               EMAIL, '
      '               OBS,'
      '               INSC_MUNIC,'
      '               CONVENIO,'
      '               EMISSOR,'
      '               ORDEM,'
      '               CODIGO AS ID_CLIENTE,'
      'MAP_LAT,'
      'MAP_LONG'
      ''
      'FROM GLO_PESSOAS_FJ'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME_RAZAO')
    Left = 713
    Top = 4
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryPessoaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_PESSOAS_FJ"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPessoaREGIAO: TIntegerField
      FieldName = 'REGIAO'
      Origin = '"GLO_PESSOAS_FJ"."REGIAO"'
    end
    object QryPessoaNOME_RAZAO: TIBStringField
      DisplayLabel = 'Pessoa F'#237'sica/Jur'#237'dica'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object QryPessoaFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object QryPessoaATIVIDADE: TIntegerField
      FieldName = 'ATIVIDADE'
      Origin = '"GLO_PESSOAS_FJ"."ATIVIDADE"'
    end
    object QryPessoaENDERECO: TIntegerField
      FieldName = 'ENDERECO'
      Origin = '"GLO_PESSOAS_FJ"."ENDERECO"'
    end
    object QryPessoaNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"GLO_PESSOAS_FJ"."NUMERO"'
      Size = 15
    end
    object QryPessoaCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_PESSOAS_FJ"."COMPLEMENTO"'
      Size = 30
    end
    object QryPessoaBAIRRO: TIntegerField
      FieldName = 'BAIRRO'
      Origin = '"GLO_PESSOAS_FJ"."BAIRRO"'
    end
    object QryPessoaCIDADE: TIntegerField
      FieldName = 'CIDADE'
      Origin = '"GLO_PESSOAS_FJ"."CIDADE"'
    end
    object QryPessoaUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PESSOAS_FJ"."UF"'
      FixedChar = True
      Size = 2
    end
    object QryPessoaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"GLO_PESSOAS_FJ"."CEP"'
      Size = 8
    end
    object QryPessoaFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object QryPessoaFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object QryPessoaCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"GLO_PESSOAS_FJ"."CELULAR"'
    end
    object QryPessoaPESSOA: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"GLO_PESSOAS_FJ"."PESSOA"'
      FixedChar = True
      Size = 1
    end
    object QryPessoaCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object QryPessoaRG_IE: TIBStringField
      FieldName = 'RG_IE'
      ProviderFlags = []
    end
    object QryPessoaCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO"'
      Size = 30
    end
    object QryPessoaDT_NASCIMENTO: TDateTimeField
      FieldName = 'DT_NASCIMENTO'
      Origin = '"GLO_PESSOAS_FJ"."DT_NASCIMENTO"'
    end
    object QryPessoaDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
      Origin = '"GLO_PESSOAS_FJ"."DT_CADASTRO"'
    end
    object QryPessoaEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"GLO_PESSOAS_FJ"."EMAIL"'
      Size = 80
    end
    object QryPessoaOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"GLO_PESSOAS_FJ"."OBS"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object QryPessoaINSC_MUNIC: TIBStringField
      FieldName = 'INSC_MUNIC'
      Origin = '"GLO_PESSOAS_FJ"."INSC_MUNIC"'
      Size = 15
    end
    object QryPessoaCONVENIO: TIntegerField
      FieldName = 'CONVENIO'
      Origin = '"GLO_PESSOAS_FJ"."CONVENIO"'
    end
    object QryPessoaEMISSOR: TIBStringField
      FieldName = 'EMISSOR'
      Origin = '"GLO_PESSOAS_FJ"."EMISSOR"'
      Size = 6
    end
    object QryPessoaORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = '"GLO_PESSOAS_FJ"."ORDEM"'
    end
    object QryPessoaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
    object QryPessoaMAP_LAT: TIBStringField
      FieldName = 'MAP_LAT'
      Origin = '"GLO_PESSOAS_FJ"."MAP_LAT"'
      Size = 200
    end
    object QryPessoaMAP_LONG: TIBStringField
      FieldName = 'MAP_LONG'
      Origin = '"GLO_PESSOAS_FJ"."MAP_LONG"'
      Size = 200
    end
  end
end
