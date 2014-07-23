inherited frmCadUsuarios: TfrmCadUsuarios
  Caption = ' Usu'#225'rios '
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    ActivePage = tbsEdita
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
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
          object GridDBBandedTableView2PERFIL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PERFIL'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2SENHA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SENHA'
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
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 6
          Top = 76
          DataBinding.DataField = 'LOGIN'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 2
          Width = 91
        end
        object cxLabel3: TcxLabel
          Left = 6
          Top = 59
          Caption = 'Login'
          Transparent = True
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 100
          Top = 76
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
          Left = 100
          Top = 59
          Caption = 'Perfil'
          Transparent = True
        end
        object cxLabel5: TcxLabel
          Left = 353
          Top = 59
          Caption = 'Vendedor'
          Transparent = True
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 349
          Top = 76
          DataBinding.DataField = 'VENDEDOR'
          DataBinding.DataSource = dsCaixa
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Properties.ListSource = dsVendedor
          TabOrder = 9
          Width = 221
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
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
      'SELECT CODIGO, '
      '               LOGIN, '
      '               NOME, '
      '               PERFIL, '
      '               SENHA'
      'FROM SIS_USUARIOS'
      'WHERE PERFIL > :PERFIL')
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
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'SELECT CODIGO, '
      '               LOGIN, '
      '               NOME, '
      '               PERFIL, '
      '               SENHA'
      'FROM SIS_USUARIOS'
      'WHERE PERFIL > :PERFIL'
      'ORDER BY LOGIN')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PERFIL'
        ParamType = ptUnknown
      end>
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
    object dtListPERFIL: TIntegerField
      DisplayLabel = 'Perfil'
      FieldName = 'PERFIL'
      Origin = '"SIS_USUARIOS"."PERFIL"'
    end
    object dtListSENHA: TIBStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Origin = '"SIS_USUARIOS"."SENHA"'
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
  object dsPerfil: TDataSource
    DataSet = QryPerfil
    Left = 743
    Top = 4
  end
  object QryPerfil: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'SELECT CODIGO, '
      '               DESCRICAO'
      'FROM SIS_PERFIL'
      'WHERE CODIGO > :CODIGO'
      'ORDER BY CODIGO'
      '')
    Left = 713
    Top = 4
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
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
  object dtVendedor: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforePost = dtEditBeforePost
    DeleteSQL.Strings = (
      'delete from PST_VENDEDOR_CAIXA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into PST_VENDEDOR_CAIXA'
      '  (CNPJ, CODIGO, CONTA_DESCONTOS, CONTA_DIFERENCA, VENDEDOR)'
      'values'
      
        '  (:CNPJ, :CODIGO, :CONTA_DESCONTOS, :CONTA_DIFERENCA, :VENDEDOR' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  CONTA_DIFERENCA,'
      '  CONTA_DESCONTOS,'
      '  VENDEDOR'
      'from PST_VENDEDOR_CAIXA '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          CONTA_DESCONTOS, '
      '          CONTA_DIFERENCA, '
      '          VENDEDOR '
      'from PST_VENDEDOR_CAIXA'
      'Where CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update PST_VENDEDOR_CAIXA'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  CONTA_DESCONTOS = :CONTA_DESCONTOS,'
      '  CONTA_DIFERENCA = :CONTA_DIFERENCA,'
      '  VENDEDOR = :VENDEDOR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    DataSource = dsLink
    Left = 712
    Top = 36
    object dtVendedorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"PST_VENDEDOR_CAIXA"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PST_VENDEDOR_CAIXA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtVendedorCONTA_DESCONTOS: TIntegerField
      FieldName = 'CONTA_DESCONTOS'
      Origin = '"PST_VENDEDOR_CAIXA"."CONTA_DESCONTOS"'
    end
    object dtVendedorCONTA_DIFERENCA: TIntegerField
      FieldName = 'CONTA_DIFERENCA'
      Origin = '"PST_VENDEDOR_CAIXA"."CONTA_DIFERENCA"'
    end
    object dtVendedorVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"PST_VENDEDOR_CAIXA"."VENDEDOR"'
    end
  end
  object dsCaixa: TDataSource
    DataSet = dtVendedor
    Left = 743
    Top = 36
  end
  object QryVendedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'SELECT CNPJ, '
      '               CODIGO, '
      '               NOME, '
      '               COM_VISTA, '
      '               COM_PRAZO,'
      '               PESSOA_FJ,'
      '               SENHA,'
      '               ATIVO,'
      '               COD_PERFIL, '
      '               COD_PERFIL_PAGTO'
      'FROM FAT_VENDEDOR'
      'WHERE CODIGO = :CODIGO '
      'ORDER BY NOME'
      '')
    Left = 713
    Top = 68
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object QryVendedorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDEDOR"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDEDOR"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryVendedorNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object QryVendedorCOM_VISTA: TFloatField
      FieldName = 'COM_VISTA'
      Origin = '"FAT_VENDEDOR"."COM_VISTA"'
    end
    object QryVendedorCOM_PRAZO: TFloatField
      FieldName = 'COM_PRAZO'
      Origin = '"FAT_VENDEDOR"."COM_PRAZO"'
    end
    object QryVendedorPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDEDOR"."PESSOA_FJ"'
    end
    object QryVendedorSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"FAT_VENDEDOR"."SENHA"'
      Size = 6
    end
    object QryVendedorATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"FAT_VENDEDOR"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object QryVendedorCOD_PERFIL: TIntegerField
      FieldName = 'COD_PERFIL'
      Origin = '"FAT_VENDEDOR"."COD_PERFIL"'
    end
    object QryVendedorCOD_PERFIL_PAGTO: TIntegerField
      FieldName = 'COD_PERFIL_PAGTO'
      Origin = '"FAT_VENDEDOR"."COD_PERFIL_PAGTO"'
    end
  end
  object dsVendedor: TDataSource
    DataSet = QryVendedor
    Left = 743
    Top = 68
  end
end
