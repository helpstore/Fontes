inherited FrmCadCobradores: TFrmCadCobradores
  Caption = ' Cobradores'
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
          object GridDBBandedTableView2INTERNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'INTERNO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 38
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2ATIVO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ATIVO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 46
            Position.BandIndex = 0
            Position.ColIndex = 4
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
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 6
          Top = 64
          Caption = 'Interno'
          DataBinding.DataField = 'INTERNO'
          DataBinding.DataSource = dsRegistro
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          TabOrder = 4
          Width = 65
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 75
          Top = 64
          Caption = 'Ativo'
          DataBinding.DataField = 'ATIVO'
          DataBinding.DataSource = dsRegistro
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          TabOrder = 5
          Width = 121
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    DeleteSQL.Strings = (
      'delete from FIN_COBRADOR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_COBRADOR'
      '  (ATIVO, CNPJ, CODIGO, INTERNO, NOME)'
      'values'
      '  (:ATIVO, :CNPJ, :CODIGO, :INTERNO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  INTERNO,'
      '  ATIVO'
      'from FIN_COBRADOR '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME ,'
      '          INTERNO, '
      '          ATIVO'
      'from FIN_COBRADOR'
      'Where CNPJ = :CNPJ AND'
      'CODIGO =:CODIGO'
      '')
    ModifySQL.Strings = (
      'update FIN_COBRADOR'
      'set'
      '  ATIVO = :ATIVO,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  INTERNO = :INTERNO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'FIN_COBRADOR_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Active = True
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_COBRADOR"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_COBRADOR"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_COBRADOR"."NOME"'
      Size = 50
    end
    object dtEditINTERNO: TIBStringField
      FieldName = 'INTERNO'
      Origin = '"FIN_COBRADOR"."INTERNO"'
      FixedChar = True
      Size = 1
    end
    object dtEditATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"FIN_COBRADOR"."ATIVO"'
      FixedChar = True
      Size = 1
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME ,'
      '          INTERNO, '
      '          ATIVO'
      'from FIN_COBRADOR'
      'Where CNPJ = :CNPJ'
      'Order by NOME')
    Left = 113
    Top = 4
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_COBRADOR"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_COBRADOR"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_COBRADOR"."NOME"'
      Size = 50
    end
    object dtListINTERNO: TIBStringField
      DisplayLabel = 'Interno'
      FieldName = 'INTERNO'
      Origin = '"FIN_COBRADOR"."INTERNO"'
      FixedChar = True
      Size = 1
    end
    object dtListATIVO: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = '"FIN_COBRADOR"."ATIVO"'
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
end
