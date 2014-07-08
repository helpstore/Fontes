object DMSeguranca: TDMSeguranca
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Left = 333
  Top = 245
  Height = 345
  Width = 529
  object DSPerfil: TDataSource
    AutoEdit = False
    DataSet = Perfil
    Left = 128
    Top = 24
  end
  object Modulos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = PerfilAfterClose
    BeforeOpen = PerfilBeforeOpen
    SQL.Strings = (
      'SELECT CODIGO, '
      '               EXECUTAVEL,'
      '               DESCRICAO, '
      '               OBJETO, '
      '               RESTRITO, '
      '               ACTIONS'
      'FROM SIS_MODULOS'
      'ORDER BY DESCRICAO')
    Left = 128
    Top = 88
    object ModulosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object ModulosEXECUTAVEL: TIBStringField
      DisplayWidth = 30
      FieldName = 'EXECUTAVEL'
      Required = True
      Size = 30
    end
    object ModulosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'SIS_MODULOS.DESCRICAO'
      Required = True
      Size = 50
    end
    object ModulosOBJETO: TIBStringField
      DisplayWidth = 30
      FieldName = 'OBJETO'
      Required = True
      Size = 30
    end
    object ModulosRESTRITO: TIBStringField
      FieldName = 'RESTRITO'
      Required = True
      OnGetText = ModulosRESTRITOGetText
      Size = 1
    end
    object ModulosACTIONS: TIBStringField
      DisplayWidth = 500
      FieldName = 'ACTIONS'
      Required = True
      Size = 500
    end
  end
  object Perfil: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = PerfilAfterClose
    AfterInsert = PerfilAfterInsert
    BeforeOpen = PerfilBeforeOpen
    BeforePost = PerfilBeforePost
    DeleteSQL.Strings = (
      'delete from SIS_PERFIL'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into SIS_PERFIL'
      '  (CODIGO, DESCRICAO)'
      'values'
      '  (:CODIGO, :DESCRICAO)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  DESCRICAO,'
      '  USUARIOS'
      'from SIS_PERFIL '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT CODIGO, '
      '               DESCRICAO'
      'FROM SIS_PERFIL'
      'WHERE CODIGO > :CODIGO'
      'ORDER BY CODIGO')
    ModifySQL.Strings = (
      'update SIS_PERFIL'
      'set'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 32
    Top = 24
    object PerfilCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'SIS_PERFIL.CODIGO'
      Required = True
    end
    object PerfilDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'SIS_PERFIL.DESCRICAO'
      Required = True
      Size = 50
    end
  end
  object Direitos: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = DireitosCalcFields
    DeleteSQL.Strings = (
      'delete from SIS_DIREITOS_PERFIL'
      'where'
      '  PERFIL = :OLD_PERFIL and'
      '  MODULO = :OLD_MODULO')
    InsertSQL.Strings = (
      'insert into SIS_DIREITOS_PERFIL'
      '  (PERFIL, MODULO, DIREITO)'
      'values'
      '  (:PERFIL, :MODULO, :DIREITO)')
    RefreshSQL.Strings = (
      'Select '
      '  PERFIL,'
      '  MODULO,'
      '  DIREITO'
      'from SIS_DIREITOS_PERFIL '
      'where'
      '  PERFIL = :PERFIL and'
      '  MODULO = :MODULO')
    SelectSQL.Strings = (
      'SELECT PERFIL, '
      '               MODULO, '
      '               DIREITO '
      'FROM SIS_DIREITOS_PERFIL'
      'WHERE PERFIL = :CODIGO'
      'ORDER BY PERFIL, MODULO')
    ModifySQL.Strings = (
      'update SIS_DIREITOS_PERFIL'
      'set'
      '  PERFIL = :PERFIL,'
      '  MODULO = :MODULO,'
      '  DIREITO = :DIREITO'
      'where'
      '  PERFIL = :OLD_PERFIL and'
      '  MODULO = :OLD_MODULO')
    DataSource = DSPerfil
    Left = 32
    Top = 88
    object DireitosPERFIL: TIntegerField
      FieldName = 'PERFIL'
      Origin = 'SIS_DIREITOS_PERFIL.PERFIL'
      Required = True
    end
    object DireitosMODULO: TIntegerField
      FieldName = 'MODULO'
      Origin = 'SIS_DIREITOS_PERFIL.MODULO'
      Required = True
    end
    object DireitosEXECUTAVEL_MODULO: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'EXECUTAVEL_MODULO'
      LookupDataSet = Modulos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'EXECUTAVEL'
      KeyFields = 'MODULO'
      Size = 30
      Lookup = True
    end
    object DireitosNOME_MODULO: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME_MODULO'
      LookupDataSet = Modulos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'MODULO'
      Size = 50
      Lookup = True
    end
    object DireitosACTIONS_MODULO: TStringField
      DisplayWidth = 500
      FieldKind = fkLookup
      FieldName = 'ACTIONS_MODULO'
      LookupDataSet = Modulos
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'ACTIONS'
      KeyFields = 'MODULO'
      Size = 500
      Lookup = True
    end
    object DireitosDIREITO: TIBStringField
      DisplayWidth = 500
      FieldName = 'DIREITO'
      Origin = 'SIS_DIREITOS_PERFIL.DIREITO'
      Size = 500
    end
    object DireitosDIREITO_SHOW: TStringField
      DisplayWidth = 500
      FieldKind = fkCalculated
      FieldName = 'DIREITO_SHOW'
      Size = 500
      Calculated = True
    end
  end
  object Usuarios: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = PerfilAfterClose
    AfterInsert = UsuariosAfterInsert
    BeforeOpen = PerfilBeforeOpen
    BeforePost = UsuariosBeforePost
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
      '  SENHA'
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
      'WHERE PERFIL > :PERFIL'
      'ORDER BY LOGIN')
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
    Left = 32
    Top = 152
    object UsuariosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'SIS_USUARIOS.CODIGO'
      Required = True
    end
    object UsuariosLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = 'SIS_USUARIOS.LOGIN'
      Required = True
      Size = 10
    end
    object UsuariosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = 'SIS_USUARIOS.NOME'
      Required = True
      Size = 50
    end
    object UsuariosPERFIL: TIntegerField
      FieldName = 'PERFIL'
      Origin = 'SIS_USUARIOS.PERFIL'
      Required = True
    end
    object UsuariosSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = 'SIS_USUARIOS.SENHA'
      Required = True
    end
  end
  object Conta_Caixa: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Conta_CaixaBeforeOpen
    BeforePost = Conta_CaixaBeforePost
    OnNewRecord = Conta_CaixaNewRecord
    DeleteSQL.Strings = (
      'delete from PST_VENDEDOR_CAIXA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into PST_VENDEDOR_CAIXA'
      '  (CNPJ, CODIGO, VENDEDOR, CONTA_DIFERENCA, CONTA_DESCONTOS)'
      'values'
      
        '  (:CNPJ, :CODIGO, :VENDEDOR, :CONTA_DIFERENCA, :CONTA_DESCONTOS' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  VENDEDOR,'
      '  CONTA_DIFERENCA,'
      '  CONTA_DESCONTOS'
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
      'Where CNPJ = :CNPJ AND CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update PST_VENDEDOR_CAIXA'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  VENDEDOR = :VENDEDOR,'
      '  CONTA_DIFERENCA = :CONTA_DIFERENCA,'
      '  CONTA_DESCONTOS = :CONTA_DESCONTOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    DataSource = DsUsuario
    Left = 128
    Top = 152
    object Conta_CaixaCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"PST_VENDEDOR_CAIXA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Conta_CaixaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"PST_VENDEDOR_CAIXA"."CODIGO"'
      Required = True
    end
    object Conta_CaixaCONTA_DESCONTOS: TIntegerField
      DisplayLabel = 'Descontos'
      FieldName = 'CONTA_DESCONTOS'
      Origin = '"PST_VENDEDOR_CAIXA"."CONTA_DESCONTOS"'
      Required = True
    end
    object Conta_CaixaCONTA_DIFERENCA: TIntegerField
      DisplayLabel = 'Diferen'#231'as'
      FieldName = 'CONTA_DIFERENCA'
      Origin = '"PST_VENDEDOR_CAIXA"."CONTA_DIFERENCA"'
      Required = True
    end
    object Conta_CaixaVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"PST_VENDEDOR_CAIXA"."VENDEDOR"'
    end
  end
  object DsUsuario: TDataSource
    AutoEdit = False
    DataSet = Usuarios
    Left = 32
    Top = 208
  end
  object Forms: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select  '
      '         OBJETO, '
      '         DESCRICAO'
      'from SIS_MODULOS'
      'Where CODIGO = :CODIGO')
    Left = 128
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object FormsOBJETO: TIBStringField
      FieldName = 'OBJETO'
      Origin = '"SIS_MODULOS"."OBJETO"'
      Required = True
      Size = 30
    end
    object FormsDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"SIS_MODULOS"."DESCRICAO"'
      Required = True
      Size = 50
    end
  end
  object CONFIGURA_DIREITOS: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'CONFIGURA_DIREITOS'
    Left = 224
    Top = 24
  end
  object Configura_Modulos: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from SIS_MODULOS'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into SIS_MODULOS'
      '  (ACTIONS, CODIGO, DESCRICAO, EXECUTAVEL, OBJETO, RESTRITO)'
      'values'
      
        '  (:ACTIONS, :CODIGO, :DESCRICAO, :EXECUTAVEL, :OBJETO, :RESTRIT' +
        'O)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  EXECUTAVEL,'
      '  OBJETO,'
      '  DESCRICAO,'
      '  RESTRITO,'
      '  ACTIONS'
      'from SIS_MODULOS '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select '
      'ACTIONS, '
      'CODIGO, '
      'DESCRICAO, '
      'EXECUTAVEL, '
      'OBJETO, '
      'RESTRITO'
      'from '
      'SIS_MODULOS')
    ModifySQL.Strings = (
      'update SIS_MODULOS'
      'set'
      '  ACTIONS = :ACTIONS,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  EXECUTAVEL = :EXECUTAVEL,'
      '  OBJETO = :OBJETO,'
      '  RESTRITO = :RESTRITO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 224
    Top = 88
    object Configura_ModulosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"SIS_MODULOS"."CODIGO"'
      Required = True
    end
    object Configura_ModulosOBJETO: TIBStringField
      DisplayLabel = 'Obj'
      FieldName = 'OBJETO'
      Origin = '"SIS_MODULOS"."OBJETO"'
      Required = True
      Size = 30
    end
    object Configura_ModulosDESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"SIS_MODULOS"."DESCRICAO"'
      Required = True
      Size = 50
    end
    object Configura_ModulosRESTRITO: TIBStringField
      DisplayLabel = 'Restrito'
      FieldName = 'RESTRITO'
      Origin = '"SIS_MODULOS"."RESTRITO"'
      FixedChar = True
      Size = 1
    end
    object Configura_ModulosACTIONS: TIBStringField
      DisplayLabel = 'Actions'
      FieldName = 'ACTIONS'
      Origin = '"SIS_MODULOS"."ACTIONS"'
      Size = 502
    end
    object Configura_ModulosEXECUTAVEL: TIBStringField
      FieldName = 'EXECUTAVEL'
      Origin = '"SIS_MODULOS"."EXECUTAVEL"'
      Required = True
      Size = 30
    end
  end
end
