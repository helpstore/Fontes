object DMUsuarios: TDMUsuarios
  OldCreateOrder = False
  Left = 285
  Top = 161
  Height = 479
  Width = 741
  object Login: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT CODIGO,'
      '               LOGIN,'
      '               SENHA,'
      '               PERFIL,'
      '               NOME'
      'FROM SIS_USUARIOS'
      'WHERE LOGIN = :LOGIN AND'
      '               SENHA = :SENHA'
      '     ')
    UpdateObject = UpLogin
    Left = 32
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LOGIN'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SENHA'
        ParamType = ptUnknown
      end>
    object LoginCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'SIS_USUARIOS.CODIGO'
      Required = True
    end
    object LoginLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Required = True
      Size = 10
    end
    object LoginSENHA: TIBStringField
      FieldName = 'SENHA'
      Required = True
    end
    object LoginNOME: TIBStringField
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
    object LoginPERFIL: TIntegerField
      FieldName = 'PERFIL'
      Required = True
    end
  end
  object DSLogin: TDataSource
    AutoEdit = False
    DataSet = Login
    Left = 96
    Top = 40
  end
  object UpLogin: TIBUpdateSQL
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
    ModifySQL.Strings = (
      'update SIS_USUARIOS'
      'set'
      '  CODIGO = :CODIGO,'
      '  LOGIN = :LOGIN,'
      '  SENHA = :SENHA,'
      '  PERFIL = :PERFIL,'
      '  NOME = :NOME'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into SIS_USUARIOS'
      '  (CODIGO, LOGIN, SENHA, PERFIL, NOME)'
      'values'
      '  (:CODIGO, :LOGIN, :SENHA, :PERFIL, :NOME)')
    DeleteSQL.Strings = (
      'delete from SIS_USUARIOS'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 160
    Top = 40
  end
  object UpUsuarios: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  LOGIN,'
      '  SENHA,'
      '  FUNCIONARIO,'
      '  NOME,'
      '  PERFIL'
      'from LOGIN '
      'where'
      '  LOGIN = :LOGIN')
    ModifySQL.Strings = (
      'update LOGIN'
      'set'
      '  LOGIN = :LOGIN,'
      '  SENHA = :SENHA,'
      '  FUNCIONARIO = :FUNCIONARIO,'
      '  NOME = :NOME,'
      '  PERFIL = :PERFIL'
      'where'
      '  LOGIN = :OLD_LOGIN')
    InsertSQL.Strings = (
      'insert into LOGIN'
      '  (LOGIN, SENHA, FUNCIONARIO, NOME, PERFIL)'
      'values'
      '  (:LOGIN, :SENHA, :FUNCIONARIO, :NOME, :PERFIL)')
    DeleteSQL.Strings = (
      'delete from LOGIN'
      'where'
      '  LOGIN = :OLD_LOGIN')
    Left = 160
    Top = 104
  end
  object DSUsuarios: TDataSource
    AutoEdit = False
    Left = 96
    Top = 104
  end
  object DSFuncionarios: TDataSource
    AutoEdit = False
    Left = 96
    Top = 168
  end
  object DSPerfil: TDataSource
    AutoEdit = False
    Left = 224
    Top = 168
  end
end
