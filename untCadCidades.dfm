inherited frmCadCidades: TfrmCadCidades
  Left = 369
  Top = 184
  Caption = 'Cidades'
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
          object GridDBBandedTableView2NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2UF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UF'
            Width = 20
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2COD_IBGE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_IBGE'
            Width = 52
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2COD_IAGRO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_IAGRO'
            Width = 61
            Position.BandIndex = 0
            Position.ColIndex = 5
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
          DataBinding.DataField = 'CODIGO'
        end
        inherited cxLabel1: TcxLabel
          Left = 8
          Top = 16
        end
        inherited cxLabel2: TcxLabel
          Left = 72
          Top = 16
        end
        object cbUF: TcxDBLookupComboBox
          Left = 568
          Top = 32
          DataBinding.DataField = 'UF'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'SIGLA'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Properties.ListSource = dsUFs
          TabOrder = 2
          Width = 169
        end
        object cxLabel3: TcxLabel
          Left = 568
          Top = 16
          Caption = 'UF'
          ParentFont = False
          Transparent = True
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 8
          Top = 72
          DataBinding.DataField = 'COD_IBGE'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          Width = 85
        end
        object cxLabel8: TcxLabel
          Left = 8
          Top = 56
          Caption = 'C'#243'd IBGE'
          ParentFont = False
          Transparent = True
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 96
          Top = 72
          DataBinding.DataField = 'COD_IAGRO'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 4
          Width = 89
        end
        object cxLabel4: TcxLabel
          Left = 96
          Top = 56
          Caption = 'C'#243'd IAGRO'
          ParentFont = False
          Transparent = True
        end
        object btnProduto: TcxButtonEdit
          Left = 735
          Top = 32
          TabStop = False
          Enabled = False
          Properties.Buttons = <
            item
              Caption = 'F4'
              Default = True
              Kind = bkText
            end>
          Properties.ViewStyle = vsButtonsOnly
          TabOrder = 10
          OnClick = btnProdutoClick
          Width = 25
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    DeleteSQL.Strings = (
      'delete from glo_cidades'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into glo_cidades'
      '  (CNPJ, COD_IAGRO, COD_IBGE, CODIGO, NOME, UF)'
      'values'
      '  (:CNPJ, :COD_IAGRO, :COD_IBGE, :CODIGO, :NOME, :UF)')
    RefreshSQL.Strings = (
      'Select * '
      'from glo_cidades '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select c.*'
      'from glo_cidades c'
      'where c.cnpj = :cnpj'
      'and c.codigo = :codigo')
    ModifySQL.Strings = (
      'update glo_cidades'
      'set'
      '  CNPJ = :CNPJ,'
      '  COD_IAGRO = :COD_IAGRO,'
      '  COD_IBGE = :COD_IBGE,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  UF = :UF'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GLO_CIDADES_GE'
    GeneratorField.ApplyEvent = gamOnPost
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CIDADES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_CIDADES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object dtEditUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_CIDADES"."UF"'
      FixedChar = True
      Size = 2
    end
    object dtEditCOD_IBGE: TIBStringField
      FieldName = 'COD_IBGE'
      Origin = '"GLO_CIDADES"."COD_IBGE"'
      Size = 7
    end
    object dtEditCOD_IAGRO: TIntegerField
      FieldName = 'COD_IAGRO'
      Origin = '"GLO_CIDADES"."COD_IAGRO"'
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'select c.*'
      'from glo_cidades c'
      'where c.cnpj = :cnpj'
      'order by c.nome')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CIDADES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_CIDADES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object dtListUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_CIDADES"."UF"'
      FixedChar = True
      Size = 2
    end
    object dtListCOD_IBGE: TIBStringField
      DisplayLabel = 'C'#243'd IBGE'
      FieldName = 'COD_IBGE'
      Origin = '"GLO_CIDADES"."COD_IBGE"'
      Size = 7
    end
    object dtListCOD_IAGRO: TIntegerField
      DisplayLabel = 'C'#243'd IAGRO'
      FieldName = 'COD_IAGRO'
      Origin = '"GLO_CIDADES"."COD_IAGRO"'
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
  object QryUFs: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'select e.sigla, e.nome from glo_estados e'
      'where e.cnpj=:cnpj')
    Left = 560
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object QryUFsSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = '"GLO_ESTADOS"."SIGLA"'
      FixedChar = True
      Size = 2
    end
    object QryUFsNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_ESTADOS"."NOME"'
      Required = True
      Size = 50
    end
  end
  object dsUFs: TDataSource
    AutoEdit = False
    DataSet = QryUFs
    Left = 589
  end
end
