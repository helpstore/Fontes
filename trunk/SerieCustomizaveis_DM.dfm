object DmSerie_Customizaveis: TDmSerie_Customizaveis
  OldCreateOrder = False
  Left = 229
  Top = 178
  Height = 479
  Width = 741
  object edtLayoutCartaSCPC: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from sis_empresas'
      'where'
      '  CNPJ = :OLD_CNPJ')
    InsertSQL.Strings = (
      'insert into sis_empresas'
      '  (CNPJ, CONFIG_CARTA_SCPC)'
      'values'
      '  (:CNPJ, :CONFIG_CARTA_SCPC)')
    RefreshSQL.Strings = (
      'Select *'
      'from sis_empresas '
      'where'
      '  CNPJ = :CNPJ')
    SelectSQL.Strings = (
      'select cnpj, config_carta_scpc'
      'from sis_empresas'
      'where cnpj = :cnpj')
    ModifySQL.Strings = (
      'update sis_empresas'
      'set'
      '  CNPJ = :CNPJ,'
      '  CONFIG_CARTA_SCPC = :CONFIG_CARTA_SCPC'
      'where'
      '  CNPJ = :OLD_CNPJ')
    Active = True
    Left = 40
    Top = 16
    object edtLayoutCartaSCPCCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_EMPRESAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object edtLayoutCartaSCPCCONFIG_CARTA_SCPC: TMemoField
      FieldName = 'CONFIG_CARTA_SCPC'
      Origin = '"SIS_EMPRESAS"."CONFIG_CARTA_SCPC"'
      BlobType = ftMemo
      Size = 8
    end
  end
  object dsLayoutCartaSCPC: TDataSource
    DataSet = edtLayoutCartaSCPC
    Left = 40
    Top = 64
  end
  object edtLayoutConvenio: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from sis_empresas'
      'where'
      '  CNPJ = :OLD_CNPJ')
    InsertSQL.Strings = (
      'insert into sis_empresas'
      '  (CNPJ, CONFIG_CONVENIO_PDV)'
      'values'
      '  (:CNPJ, :CONFIG_CONVENIO_PDV)')
    RefreshSQL.Strings = (
      'Select * '
      'from sis_empresas '
      'where'
      '  CNPJ = :CNPJ')
    SelectSQL.Strings = (
      'select cnpj, CONFIG_CONVENIO_PDV'
      'from sis_empresas'
      'where cnpj = :cnpj')
    ModifySQL.Strings = (
      'update sis_empresas'
      'set'
      '  CNPJ = :CNPJ,'
      '  CONFIG_CONVENIO_PDV = :CONFIG_CONVENIO_PDV'
      'where'
      '  CNPJ = :OLD_CNPJ')
    Left = 148
    Top = 17
    object edtLayoutConvenioCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_EMPRESAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object edtLayoutConvenioCONFIG_CONVENIO_PDV: TMemoField
      FieldName = 'CONFIG_CONVENIO_PDV'
      Origin = '"SIS_EMPRESAS"."CONFIG_CONVENIO_PDV"'
      BlobType = ftMemo
      Size = 8
    end
  end
  object dsLayoutConvenio: TDataSource
    DataSet = edtLayoutConvenio
    Left = 148
    Top = 64
  end
  object dsLayoutRecibo: TDataSource
    DataSet = EdtRecibo
    Left = 244
    Top = 66
  end
  object EdtRecibo: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from sis_empresas'
      'where'
      '  CNPJ = :OLD_CNPJ')
    InsertSQL.Strings = (
      'insert into sis_empresas'
      '  (CONFIG_RECIBO)'
      'values'
      '  (:CONFIG_RECIBO)')
    RefreshSQL.Strings = (
      'Select config_recibo'
      'from sis_empresas '
      'where'
      '  CNPJ = :CNPJ')
    SelectSQL.Strings = (
      'select ep.config_recibo, ep.cnpj from sis_empresas ep'
      'where ep.cnpj = :cnpj')
    ModifySQL.Strings = (
      'update sis_empresas'
      'set'
      '  CONFIG_RECIBO = :CONFIG_RECIBO'
      'where'
      '  CNPJ = :OLD_CNPJ')
    Left = 246
    Top = 18
    object EdtReciboCONFIG_RECIBO: TMemoField
      FieldName = 'CONFIG_RECIBO'
      Origin = '"SIS_EMPRESAS"."CONFIG_RECIBO"'
      BlobType = ftMemo
      Size = 8
    end
    object EdtReciboCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_EMPRESAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
  end
  object edtLayoutOS: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from sis_empresas'
      'where'
      '  CNPJ = :OLD_CNPJ')
    InsertSQL.Strings = (
      'insert into sis_empresas'
      '  (CNPJ, CONFIG_OS)'
      'values'
      '  (:CNPJ, :CONFIG_OS)')
    RefreshSQL.Strings = (
      'Select * '
      'from sis_empresas '
      'where'
      '  CNPJ = :CNPJ')
    SelectSQL.Strings = (
      'select cnpj, config_os'
      'from sis_empresas'
      'where cnpj = :cnpj')
    ModifySQL.Strings = (
      'update sis_empresas'
      'set'
      '  CNPJ = :CNPJ,'
      '  CONFIG_OS = :CONFIG_OS'
      'where'
      '  CNPJ = :OLD_CNPJ')
    Left = 40
    Top = 120
    object edtLayoutOSCONFIG_OS: TMemoField
      FieldName = 'CONFIG_OS'
      Origin = '"SIS_EMPRESAS"."CONFIG_OS"'
      BlobType = ftMemo
      Size = 8
    end
    object edtLayoutOSCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_EMPRESAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
  end
  object dsLayoutOS: TDataSource
    DataSet = edtLayoutOS
    Left = 40
    Top = 168
  end
  object edtLayoutReceita: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from sis_empresas'
      'where'
      '  CNPJ = :OLD_CNPJ')
    InsertSQL.Strings = (
      'insert into sis_empresas'
      '  (CNPJ, CONFIG_AGR_RECEITA)'
      'values'
      '  (:CNPJ, :CONFIG_AGR_RECEITA)')
    RefreshSQL.Strings = (
      'Select * '
      'from sis_empresas '
      'where'
      '  CNPJ = :CNPJ')
    SelectSQL.Strings = (
      'select cnpj, config_agr_receita'
      'from sis_empresas'
      'where cnpj = :cnpj')
    ModifySQL.Strings = (
      'update sis_empresas'
      'set'
      '  CNPJ = :CNPJ,'
      '  CONFIG_AGR_RECEITA = :CONFIG_AGR_RECEITA'
      'where'
      '  CNPJ = :OLD_CNPJ')
    Active = True
    Left = 150
    Top = 120
    object edtLayoutReceitaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_EMPRESAS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object edtLayoutReceitaCONFIG_AGR_RECEITA: TMemoField
      FieldName = 'CONFIG_AGR_RECEITA'
      Origin = '"SIS_EMPRESAS"."CONFIG_AGR_RECEITA"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object dsLayoutReceita: TDataSource
    DataSet = edtLayoutReceita
    Left = 152
    Top = 168
  end
  object edtLayoutActRecibo: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from sis_empresas'
      'where'
      '  CNPJ = :OLD_CNPJ')
    InsertSQL.Strings = (
      'insert into sis_empresas'
      '  (CNPJ, CONFIG_ACERTO_1)'
      'values'
      '  (:CNPJ, :CONFIG_ACERTO_1)')
    RefreshSQL.Strings = (
      'Select * '
      'from sis_empresas '
      'where'
      '  CNPJ = :CNPJ')
    SelectSQL.Strings = (
      'select cnpj, config_acerto_1'
      'from sis_empresas'
      'where cnpj = :cnpj')
    ModifySQL.Strings = (
      'update sis_empresas'
      'set'
      '  CNPJ = :CNPJ,'
      '  CONFIG_ACERTO_1 = :CONFIG_ACERTO_1'
      'where'
      '  CNPJ = :OLD_CNPJ')
    Active = True
    Left = 278
    Top = 120
    object edtLayoutActReciboCONFIG_ACERTO_1: TMemoField
      FieldName = 'CONFIG_ACERTO_1'
      Origin = '"SIS_EMPRESAS"."CONFIG_ACERTO_1"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object edtLayoutActReciboCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_EMPRESAS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
  end
  object dsLayoutActRecibo: TDataSource
    DataSet = edtLayoutActRecibo
    Left = 248
    Top = 168
  end
end
