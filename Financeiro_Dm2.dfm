object dmFinanceiro2: TdmFinanceiro2
  OldCreateOrder = False
  Left = 8
  Top = 1
  Height = 517
  Width = 669
  object qryManBoletos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryManBoletosBeforeOpen
    OnCalcFields = qryManBoletosCalcFields
    SQL.Strings = (
      'select * from PCD_GERA_TITULOS(:CNPJ)')
    Left = 26
    Top = 6
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryManBoletosSAC_NOME: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'SAC_NOME'
      Origin = '"PCD_GERA_TITULOS"."SAC_NOME"'
      Size = 50
    end
    object qryManBoletosSAC_RUA: TIBStringField
      DisplayLabel = 'Endereco'
      FieldName = 'SAC_RUA'
      Origin = '"PCD_GERA_TITULOS"."SAC_RUA"'
      Size = 50
    end
    object qryManBoletosBLT_CONVENIO: TIBStringField
      FieldName = 'BLT_CONVENIO'
      Origin = '"PCD_GERA_TITULOS"."BLT_CONVENIO"'
      Size = 10
    end
    object qryManBoletosSAC_COMPLEMENTO: TIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'SAC_COMPLEMENTO'
      Origin = '"PCD_GERA_TITULOS"."SAC_COMPLEMENTO"'
      Size = 50
    end
    object qryManBoletosSAC_NUM: TIBStringField
      FieldName = 'SAC_NUM'
      Origin = '"PCD_GERA_TITULOS"."SAC_NUM"'
      Size = 15
    end
    object qryManBoletosSAC_EMAIL: TIBStringField
      DisplayLabel = 'Email'
      FieldName = 'SAC_EMAIL'
      Origin = '"PCD_GERA_TITULOS"."SAC_EMAIL"'
      Size = 80
    end
    object qryManBoletosSAC_CEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'SAC_CEP'
      Origin = '"PCD_GERA_TITULOS"."SAC_CEP"'
      Size = 8
    end
    object qryManBoletosSAC_CIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'SAC_CIDADE'
      Origin = '"PCD_GERA_TITULOS"."SAC_CIDADE"'
      Size = 50
    end
    object qryManBoletosSAC_UF: TIBStringField
      DisplayLabel = 'UF'
      FieldName = 'SAC_UF'
      Origin = '"PCD_GERA_TITULOS"."SAC_UF"'
      Size = 2
    end
    object qryManBoletosSAC_BAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'SAC_BAIRRO'
      Origin = '"PCD_GERA_TITULOS"."SAC_BAIRRO"'
      Size = 50
    end
    object qryManBoletosSAC_PESSOA: TIBStringField
      FieldName = 'SAC_PESSOA'
      Origin = '"PCD_GERA_TITULOS"."SAC_PESSOA"'
      FixedChar = True
      Size = 1
    end
    object qryManBoletosSAC_CPF_CGC: TIBStringField
      DisplayLabel = 'CPF/CGC'
      FieldName = 'SAC_CPF_CGC'
      Origin = '"PCD_GERA_TITULOS"."SAC_CPF_CGC"'
      Size = 14
    end
    object qryManBoletosBLT_AGENCIA: TIBStringField
      FieldName = 'BLT_AGENCIA'
      Origin = '"PCD_GERA_TITULOS"."BLT_AGENCIA"'
      Size = 10
    end
    object qryManBoletosCED_CODIGOCED: TIntegerField
      FieldName = 'CED_CODIGOCED'
      Origin = '"PCD_GERA_TITULOS"."CED_CODIGOCED"'
    end
    object qryManBoletosCED_DIG_CODIGOCED: TIBStringField
      FieldName = 'CED_DIG_CODIGOCED'
      Origin = '"PCD_GERA_TITULOS"."CED_DIG_CODIGOCED"'
      FixedChar = True
      Size = 1
    end
    object qryManBoletosBLT_CARTEIRA: TIBStringField
      FieldName = 'BLT_CARTEIRA'
      Origin = '"PCD_GERA_TITULOS"."BLT_CARTEIRA"'
      Size = 10
    end
    object qryManBoletosBLT_INSTRUCAO: TMemoField
      FieldName = 'BLT_INSTRUCAO'
      Origin = '"PCD_GERA_TITULOS"."BLT_INSTRUCAO"'
      BlobType = ftMemo
      Size = 8
    end
    object qryManBoletosBLT_LAYOUT: TIntegerField
      FieldName = 'BLT_LAYOUT'
      Origin = '"PCD_GERA_TITULOS"."BLT_LAYOUT"'
    end
    object qryManBoletosBLT_DIG_CONTA: TIBStringField
      FieldName = 'BLT_DIG_CONTA'
      Origin = '"PCD_GERA_TITULOS"."BLT_DIG_CONTA"'
      FixedChar = True
      Size = 1
    end
    object qryManBoletosBLT_DIG_AGENCIA: TIBStringField
      FieldName = 'BLT_DIG_AGENCIA'
      Origin = '"PCD_GERA_TITULOS"."BLT_DIG_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object qryManBoletosBLT_CONTA: TIBStringField
      FieldName = 'BLT_CONTA'
      Origin = '"PCD_GERA_TITULOS"."BLT_CONTA"'
      Size = 10
    end
    object qryManBoletosBLT_LOCAL_PAGTO: TIBStringField
      FieldName = 'BLT_LOCAL_PAGTO'
      Origin = '"PCD_GERA_TITULOS"."BLT_LOCAL_PAGTO"'
      Size = 200
    end
    object qryManBoletosBLT_BANCO: TIntegerField
      FieldName = 'BLT_BANCO'
      Origin = '"PCD_GERA_TITULOS"."BLT_BANCO"'
    end
    object qryManBoletosBLT_ACEITE_DOCTO: TIBStringField
      FieldName = 'BLT_ACEITE_DOCTO'
      Origin = '"PCD_GERA_TITULOS"."BLT_ACEITE_DOCTO"'
      FixedChar = True
      Size = 1
    end
    object qryManBoletosBLT_DIAS_ABATIMENTO: TIntegerField
      FieldName = 'BLT_DIAS_ABATIMENTO'
      Origin = '"PCD_GERA_TITULOS"."BLT_DIAS_ABATIMENTO"'
    end
    object qryManBoletosBLT_DIAS_DESCONTO: TIntegerField
      FieldName = 'BLT_DIAS_DESCONTO'
      Origin = '"PCD_GERA_TITULOS"."BLT_DIAS_DESCONTO"'
    end
    object qryManBoletosBLT_DIAS_MORA_JUROS: TIntegerField
      FieldName = 'BLT_DIAS_MORA_JUROS'
      Origin = '"PCD_GERA_TITULOS"."BLT_DIAS_MORA_JUROS"'
    end
    object qryManBoletosBLT_MULTA: TIBBCDField
      FieldName = 'BLT_MULTA'
      Origin = '"PCD_GERA_TITULOS"."BLT_MULTA"'
      Precision = 18
      Size = 4
    end
    object qryManBoletosBLT_DIAS_PROTESTO: TIntegerField
      FieldName = 'BLT_DIAS_PROTESTO'
      Origin = '"PCD_GERA_TITULOS"."BLT_DIAS_PROTESTO"'
    end
    object qryManBoletosBLT_PCT_ABATIMENTO: TIBBCDField
      FieldName = 'BLT_PCT_ABATIMENTO'
      Origin = '"PCD_GERA_TITULOS"."BLT_PCT_ABATIMENTO"'
      Precision = 18
      Size = 4
    end
    object qryManBoletosBLT_PCT_DESCONTO: TIBBCDField
      FieldName = 'BLT_PCT_DESCONTO'
      Origin = '"PCD_GERA_TITULOS"."BLT_PCT_DESCONTO"'
      Precision = 18
      Size = 4
    end
    object qryManBoletosBLT_VLR_DESPESA: TIBBCDField
      FieldName = 'BLT_VLR_DESPESA'
      Origin = '"PCD_GERA_TITULOS"."BLT_VLR_DESPESA"'
      Precision = 18
      Size = 4
    end
    object qryManBoletosBLT_VLR_IOF: TIBBCDField
      FieldName = 'BLT_VLR_IOF'
      Origin = '"PCD_GERA_TITULOS"."BLT_VLR_IOF"'
      Precision = 18
      Size = 4
    end
    object qryManBoletosBLT_VLR_MORA_JUROS: TIBBCDField
      FieldName = 'BLT_VLR_MORA_JUROS'
      Origin = '"PCD_GERA_TITULOS"."BLT_VLR_MORA_JUROS"'
      Precision = 18
      Size = 4
    end
    object qryManBoletosBLT_VLR_OUTRAS_DESP: TIBBCDField
      DisplayLabel = 'Vlr. Nominal'
      FieldName = 'BLT_VLR_OUTRAS_DESP'
      Origin = '"PCD_GERA_TITULOS"."BLT_VLR_OUTRAS_DESP"'
      Precision = 18
      Size = 4
    end
    object qryManBoletosBLT_VALOR: TIBBCDField
      DisplayLabel = 'Vlr. Nominal'
      FieldName = 'BLT_VALOR'
      Origin = '"PCD_GERA_TITULOS"."BLT_VALOR"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object qryManBoletosBLT_DT_LANCTO: TDateField
      DisplayLabel = 'Dt. Lancto'
      FieldName = 'BLT_DT_LANCTO'
      Origin = '"PCD_GERA_TITULOS"."BLT_DT_LANCTO"'
    end
    object qryManBoletosBLT_DT_VENCTO: TDateField
      DisplayLabel = 'Dt. Vencto'
      FieldName = 'BLT_DT_VENCTO'
      Origin = '"PCD_GERA_TITULOS"."BLT_DT_VENCTO"'
    end
    object qryManBoletosBLT_NOME_BANCO: TIBStringField
      FieldName = 'BLT_NOME_BANCO'
      Origin = '"PCD_GERA_TITULOS"."BLT_NOME_BANCO"'
      Size = 50
    end
    object qryManBoletosNOSSO_NUMERO: TLargeintField
      DisplayLabel = 'Nosso N'#250'mero'
      FieldName = 'NOSSO_NUMERO'
      Origin = '"PCD_GERA_TITULOS"."NOSSO_NUMERO"'
    end
    object qryManBoletosREC_DESCONTO: TIBBCDField
      FieldName = 'REC_DESCONTO'
      Origin = '"PCD_GERA_TITULOS"."REC_DESCONTO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object qryManBoletosREC_VLR_PARCIAL: TIBBCDField
      DisplayLabel = 'Vlr. Parcial'
      FieldName = 'REC_VLR_PARCIAL'
      Origin = '"PCD_GERA_TITULOS"."REC_VLR_PARCIAL"'
      Precision = 18
      Size = 4
    end
    object qryManBoletosREC_DATA_ULT_BAIXA: TDateField
      DisplayLabel = 'Dt. Ult. Baixa'
      FieldName = 'REC_DATA_ULT_BAIXA'
      Origin = '"PCD_GERA_TITULOS"."REC_DATA_ULT_BAIXA"'
    end
    object qryManBoletosBLT_NUM_IMP: TIntegerField
      DisplayLabel = 'Impress'#245'es'
      FieldName = 'BLT_NUM_IMP'
      Origin = '"PCD_GERA_TITULOS"."BLT_NUM_IMP"'
    end
    object qryManBoletosTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object qryManBoletosJuros: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Juros'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object qryManBoletosCOD_RECEBER: TIntegerField
      FieldName = 'COD_RECEBER'
      Origin = '"PCD_GERA_TITULOS"."COD_RECEBER"'
    end
    object qryManBoletosPSA_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'PSA_CODIGO'
      Origin = '"PCD_GERA_TITULOS"."PSA_CODIGO"'
    end
  end
  object COM_PERFIL: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryManBoletosBeforeOpen
    BeforePost = COM_PERFILBeforePost
    OnNewRecord = COM_PERFILNewRecord
    DeleteSQL.Strings = (
      'delete from cm_perfil'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into cm_perfil'
      '  (CNPJ, CODIGO, DESCRICAO, BASE_CALC)'
      'values'
      '  (:CNPJ, :CODIGO, :DESCRICAO, :BASE_CALC)')
    RefreshSQL.Strings = (
      'Select * '
      'from cm_perfil '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from cm_perfil'
      'where cnpj = :cnpj')
    ModifySQL.Strings = (
      'update cm_perfil'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  BASE_CALC = :BASE_CALC'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_CM_PERFIL_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 100
    Top = 6
    object COM_PERFILCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CM_PERFIL"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object COM_PERFILCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CM_PERFIL"."CODIGO"'
      Required = True
    end
    object COM_PERFILDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"CM_PERFIL"."DESCRICAO"'
      Size = 50
    end
    object COM_PERFILBASE_CALC: TSmallintField
      FieldName = 'BASE_CALC'
      Origin = '"CM_PERFIL"."BASE_CALC"'
      OnGetText = COM_PERFILBASE_CALCGetText
      OnSetText = COM_PERFILBASE_CALCSetText
    end
  end
  object dsLinkPerfil: TDataSource
    DataSet = COM_PERFIL
    Left = 164
    Top = 6
  end
  object COM_PERFIL_FAIXA: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryManBoletosBeforeOpen
    BeforePost = COM_PERFILBeforePost
    OnNewRecord = COM_PERFIL_FAIXANewRecord
    DeleteSQL.Strings = (
      'delete from cm_perfil_faixa'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into cm_perfil_faixa'
      '  (CNPJ, CODIGO, COD_PERFIL, VLR_INICIAL, VLR_FINAL)'
      'values'
      '  (:CNPJ, :CODIGO, :COD_PERFIL, :VLR_INICIAL, :VLR_FINAL)')
    RefreshSQL.Strings = (
      'Select * '
      'from cm_perfil_faixa '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ,'
      '    CODIGO,'
      '    COD_PERFIL,'
      '    VLR_INICIAL,'
      '    VLR_FINAL'
      '     from cm_perfil_faixa cpf'
      'where cpf.cod_perfil = :codigo and cpf.cnpj = :cnpj')
    ModifySQL.Strings = (
      'update cm_perfil_faixa'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  COD_PERFIL = :COD_PERFIL,'
      '  VLR_INICIAL = :VLR_INICIAL,'
      '  VLR_FINAL = :VLR_FINAL'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_CM_PERFIL_FAIXA_ID'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = dsLinkPerfil
    Left = 256
    Top = 6
    object COM_PERFIL_FAIXACNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CM_PERFIL_FAIXA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object COM_PERFIL_FAIXACODIGO: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'CODIGO'
      Origin = '"CM_PERFIL_FAIXA"."CODIGO"'
      Required = True
    end
    object COM_PERFIL_FAIXACOD_PERFIL: TIntegerField
      FieldName = 'COD_PERFIL'
      Origin = '"CM_PERFIL_FAIXA"."COD_PERFIL"'
    end
    object COM_PERFIL_FAIXAVLR_INICIAL: TFloatField
      DisplayLabel = 'Inicial (R$)'
      FieldName = 'VLR_INICIAL'
      Origin = '"CM_PERFIL_FAIXA"."VLR_INICIAL"'
      DisplayFormat = '###,##0.00'
    end
    object COM_PERFIL_FAIXAVLR_FINAL: TFloatField
      DisplayLabel = 'Final (R$)'
      FieldName = 'VLR_FINAL'
      Origin = '"CM_PERFIL_FAIXA"."VLR_FINAL"'
      DisplayFormat = '###,##0.00'
    end
  end
  object dsLinkPerfilFx: TDataSource
    DataSet = COM_PERFIL_FAIXA
    Left = 344
    Top = 6
  end
  object CM_PERFIL_FAIXA_DESC: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryManBoletosBeforeOpen
    BeforePost = CM_PERFIL_FAIXA_DESCBeforePost
    OnNewRecord = CM_PERFIL_FAIXA_DESCNewRecord
    DeleteSQL.Strings = (
      'delete from cm_perfil_faixa_desc'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into cm_perfil_faixa_desc'
      
        '  (CNPJ, CODIGO, COD_PERFIL_FAIXA, PCT_INICIAL, PCT_FINAL, PCT_V' +
        'ISTA, '
      'PCT_PRAZO)'
      'values'
      
        '  (:CNPJ, :CODIGO, :COD_PERFIL_FAIXA, :PCT_INICIAL, :PCT_FINAL, ' +
        ':PCT_VISTA, '
      '   :PCT_PRAZO)')
    RefreshSQL.Strings = (
      'Select * '
      'from cm_perfil_faixa_desc '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from cm_perfil_faixa_desc cpd'
      'where cpd.cod_perfil_faixa = :codigo and cpd.cnpj = :cnpj')
    ModifySQL.Strings = (
      'update cm_perfil_faixa_desc'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  COD_PERFIL_FAIXA = :COD_PERFIL_FAIXA,'
      '  PCT_INICIAL = :PCT_INICIAL,'
      '  PCT_FINAL = :PCT_FINAL,'
      '  PCT_VISTA = :PCT_VISTA,'
      '  PCT_PRAZO = :PCT_PRAZO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_CM_PERFIL_FAIXA_DESC_ID'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = dsLinkPerfilFx
    Left = 436
    Top = 6
    object CM_PERFIL_FAIXA_DESCCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CM_PERFIL_FAIXA_DESC"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CM_PERFIL_FAIXA_DESCCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'CODIGO'
      Origin = '"CM_PERFIL_FAIXA_DESC"."CODIGO"'
      Required = True
    end
    object CM_PERFIL_FAIXA_DESCCOD_PERFIL_FAIXA: TIntegerField
      DisplayLabel = 'P. Fx.'
      FieldName = 'COD_PERFIL_FAIXA'
      Origin = '"CM_PERFIL_FAIXA_DESC"."COD_PERFIL_FAIXA"'
    end
    object CM_PERFIL_FAIXA_DESCPCT_INICIAL: TFloatField
      DisplayLabel = 'Inicial(%)'
      FieldName = 'PCT_INICIAL'
      Origin = '"CM_PERFIL_FAIXA_DESC"."PCT_INICIAL"'
      DisplayFormat = '###,##0.00'
    end
    object CM_PERFIL_FAIXA_DESCPCT_FINAL: TFloatField
      DisplayLabel = 'Final(%)'
      FieldName = 'PCT_FINAL'
      Origin = '"CM_PERFIL_FAIXA_DESC"."PCT_FINAL"'
      DisplayFormat = '###,##0.00'
    end
    object CM_PERFIL_FAIXA_DESCPCT_VISTA: TFloatField
      DisplayLabel = 'Vista(%)'
      FieldName = 'PCT_VISTA'
      Origin = '"CM_PERFIL_FAIXA_DESC"."PCT_VISTA"'
      DisplayFormat = '###,##0.00'
    end
    object CM_PERFIL_FAIXA_DESCPCT_PRAZO: TFloatField
      DisplayLabel = 'Prazo(%)'
      FieldName = 'PCT_PRAZO'
      Origin = '"CM_PERFIL_FAIXA_DESC"."PCT_PRAZO"'
      DisplayFormat = '###,##0.00'
    end
  end
  object dsLinkPerfilDesc: TDataSource
    DataSet = CM_PERFIL_FAIXA_DESC
    Left = 26
    Top = 63
  end
  object CM_PERFIL_FAIXA_PROD: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryManBoletosBeforeOpen
    BeforePost = COM_PERFILBeforePost
    OnNewRecord = CM_PERFIL_FAIXA_PRODNewRecord
    DeleteSQL.Strings = (
      'delete from CM_PERFIL_FAIXA_PROD'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into CM_PERFIL_FAIXA_PROD'
      
        '  (CNPJ, CODIGO, COD_PERFIL_FX_DESC, COD_PRODUTO, PCT_PROD_VISTA' +
        ', '
      'PCT_PROD_PRAZO)'
      'values'
      '  (:CNPJ, :CODIGO, :COD_PERFIL_FX_DESC, :COD_PRODUTO, '
      ':PCT_PROD_VISTA, '
      '   :PCT_PROD_PRAZO)')
    RefreshSQL.Strings = (
      'select cpp.CNPJ, cpp.CODIGO, COD_PERFIL_FX_DESC, COD_PRODUTO,'
      '    PCT_PROD_VISTA, PCT_PROD_PRAZO, prd.nome'
      'from CM_PERFIL_FAIXA_PROD cpp'
      
        'inner join est_produtos prd on (cpp.cnpj = prd.cnpj and prd.codi' +
        'go = cpp.cod_produto)'
      'where'
      '  cpp.CNPJ = :CNPJ and'
      '  cpp.CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select cpp.CNPJ, cpp.CODIGO, COD_PERFIL_FX_DESC, COD_PRODUTO,'
      '    PCT_PROD_VISTA, PCT_PROD_PRAZO, prd.nome'
      'from CM_PERFIL_FAIXA_PROD cpp'
      
        'inner join est_produtos prd on (cpp.cnpj = prd.cnpj and prd.codi' +
        'go = cpp.cod_produto)'
      'where cpp.cod_perfil_fx_desc = :codigo and cpp.cnpj = :cnpj')
    ModifySQL.Strings = (
      'update CM_PERFIL_FAIXA_PROD'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  COD_PERFIL_FX_DESC = :COD_PERFIL_FX_DESC,'
      '  COD_PRODUTO = :COD_PRODUTO,'
      '  PCT_PROD_VISTA = :PCT_PROD_VISTA,'
      '  PCT_PROD_PRAZO = :PCT_PROD_PRAZO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_CM_PERFIL_FAIXA_PROD_ID'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = dsLinkPerfilDesc
    Left = 100
    Top = 63
    object CM_PERFIL_FAIXA_PRODCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CM_PERFIL_FAIXA_PROD"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CM_PERFIL_FAIXA_PRODCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'CODIGO'
      Origin = '"CM_PERFIL_FAIXA_PROD"."CODIGO"'
      Required = True
    end
    object CM_PERFIL_FAIXA_PRODCOD_PERFIL_FX_DESC: TIntegerField
      DisplayLabel = 'Fx. Desc.'
      FieldName = 'COD_PERFIL_FX_DESC'
      Origin = '"CM_PERFIL_FAIXA_PROD"."COD_PERFIL_FX_DESC"'
    end
    object CM_PERFIL_FAIXA_PRODCOD_PRODUTO: TIBStringField
      DisplayLabel = 'Cod. Prod.'
      FieldName = 'COD_PRODUTO'
      Origin = '"CM_PERFIL_FAIXA_PROD"."COD_PRODUTO"'
      Size = 15
    end
    object CM_PERFIL_FAIXA_PRODPCT_PROD_VISTA: TFloatField
      DisplayLabel = 'Vista(%)'
      FieldName = 'PCT_PROD_VISTA'
      Origin = '"CM_PERFIL_FAIXA_PROD"."PCT_PROD_VISTA"'
      DisplayFormat = '###,##0.00'
    end
    object CM_PERFIL_FAIXA_PRODPCT_PROD_PRAZO: TFloatField
      DisplayLabel = 'Prazo(%)'
      FieldName = 'PCT_PROD_PRAZO'
      Origin = '"CM_PERFIL_FAIXA_PROD"."PCT_PROD_PRAZO"'
      DisplayFormat = '###,##0.00'
    end
    object CM_PERFIL_FAIXA_PRODNOME: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
  end
  object CM_COMISSAO: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryManBoletosBeforeOpen
    BeforePost = COM_PERFILBeforePost
    OnNewRecord = CM_COMISSAONewRecord
    DeleteSQL.Strings = (
      'delete from cm_comissao'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into cm_comissao'
      '  (CNPJ, CODIGO, COD_VENDA, COD_VENDEDOR,STATUS)'
      'values'
      '  (:CNPJ, :CODIGO, :COD_VENDA, :COD_VENDEDOR, :STATUS)')
    RefreshSQL.Strings = (
      'Select * '
      'from cm_comissao '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from cm_comissao cpp'
      'where cpp.cnpj = :cnpj')
    ModifySQL.Strings = (
      'update cm_comissao'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  COD_VENDA = :COD_VENDA,'
      '  COD_VENDEDOR = :COD_VENDEDOR,'
      '  STATUS = :STATUS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_CM_COMISSAO_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 26
    Top = 120
    object CM_COMISSAOCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CM_COMISSAO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CM_COMISSAOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CM_COMISSAO"."CODIGO"'
      Required = True
    end
    object CM_COMISSAOCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Origin = '"CM_COMISSAO"."COD_VENDA"'
    end
    object CM_COMISSAOCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = '"CM_COMISSAO"."COD_VENDEDOR"'
    end
    object CM_COMISSAODT_GERACAO: TDateTimeField
      FieldName = 'DT_GERACAO'
      Origin = '"CM_COMISSAO"."DT_GERACAO"'
      Required = True
    end
    object CM_COMISSAOSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"CM_COMISSAO"."STATUS"'
      FixedChar = True
      Size = 1
    end
    object CM_COMISSAOPCT_ANTECIPACAO: TFloatField
      DisplayLabel = 'Pct. Antecipa'#231#227'o'
      FieldName = 'PCT_ANTECIPACAO'
      Origin = '"CM_COMISSAO"."PCT_ANTECIPACAO"'
      DisplayFormat = '###,##0.00'
    end
  end
  object dsLinkComissao: TDataSource
    DataSet = CM_COMISSAO
    Left = 100
    Top = 120
  end
  object CM_COMISSAO_PARC: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryManBoletosBeforeOpen
    BeforePost = COM_PERFILBeforePost
    DeleteSQL.Strings = (
      'delete from cm_comissao_parc'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into cm_comissao_parc'
      
        '  (CNPJ, CODIGO, COD_COMISSAO, VLR_TOTAL, PCT_PAGO, PCT_LIBERADO' +
        ', '
      'QUITADO, '
      '   COD_RECEBER, ANO)'
      'values'
      '  (:CNPJ, :CODIGO, :COD_COMISSAO, :VLR_TOTAL, :PCT_PAGO, '
      ':PCT_LIBERADO, '
      '   :QUITADO, :COD_RECEBER, :ANO)')
    RefreshSQL.Strings = (
      'Select * '
      'from cm_comissao_parc '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from cm_comissao_parc ccp'
      'where ccp.cnpj = :cnpj and ccp.cod_comissao = :codigo')
    ModifySQL.Strings = (
      'update cm_comissao_parc'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  COD_COMISSAO = :COD_COMISSAO,'
      '  VLR_TOTAL = :VLR_TOTAL,'
      '  PCT_PAGO = :PCT_PAGO,'
      '  PCT_LIBERADO = :PCT_LIBERADO,'
      '  QUITADO = :QUITADO,'
      '  COD_RECEBER = :COD_RECEBER,'
      '  ANO = :ANO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_CM_COMISSAO_PARC_ID'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = dsLinkComissao
    Left = 164
    Top = 120
    object CM_COMISSAO_PARCCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CM_COMISSAO_PARC"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CM_COMISSAO_PARCCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CM_COMISSAO_PARC"."CODIGO"'
      Required = True
    end
    object CM_COMISSAO_PARCCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      Origin = '"CM_COMISSAO_PARC"."COD_COMISSAO"'
    end
    object CM_COMISSAO_PARCVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      Origin = '"CM_COMISSAO_PARC"."VLR_TOTAL"'
    end
    object CM_COMISSAO_PARCPCT_PAGO: TFloatField
      FieldName = 'PCT_PAGO'
      Origin = '"CM_COMISSAO_PARC"."PCT_PAGO"'
    end
    object CM_COMISSAO_PARCPCT_LIBERADO: TFloatField
      FieldName = 'PCT_LIBERADO'
      Origin = '"CM_COMISSAO_PARC"."PCT_LIBERADO"'
    end
    object CM_COMISSAO_PARCQUITADO: TIBStringField
      FieldName = 'QUITADO'
      Origin = '"CM_COMISSAO_PARC"."QUITADO"'
      FixedChar = True
      Size = 1
    end
    object CM_COMISSAO_PARCCOD_RECEBER: TIntegerField
      FieldName = 'COD_RECEBER'
      Origin = '"CM_COMISSAO_PARC"."COD_RECEBER"'
    end
    object CM_COMISSAO_PARCANO: TIntegerField
      FieldName = 'ANO'
      Origin = '"CM_COMISSAO_PARC"."ANO"'
    end
  end
  object CM_PERFIL_PAGTO: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryManBoletosBeforeOpen
    BeforePost = CM_PERFIL_PAGTOBeforePost
    OnNewRecord = CM_PERFIL_PAGTONewRecord
    DeleteSQL.Strings = (
      'delete from cm_perfil_pagto'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into cm_perfil_pagto'
      '  (CNPJ, CODIGO, NOME, PCT_ANT_PRAZO)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME, :PCT_ANT_PRAZO)')
    RefreshSQL.Strings = (
      'Select * '
      'from cm_perfil_pagto '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select  * from cm_perfil_pagto cpp'
      'where cpp.cnpj = :cnpj')
    ModifySQL.Strings = (
      'update cm_perfil_pagto'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  PCT_ANT_PRAZO = :PCT_ANT_PRAZO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_CM_PERFIL_PAGTO_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 26
    Top = 184
    object CM_PERFIL_PAGTOCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CM_PERFIL_PAGTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CM_PERFIL_PAGTOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CM_PERFIL_PAGTO"."CODIGO"'
      Required = True
    end
    object CM_PERFIL_PAGTOPCT_ANT_PRAZO: TFloatField
      FieldName = 'PCT_ANT_PRAZO'
      Origin = '"CM_PERFIL_PAGTO"."PCT_ANT_PRAZO"'
      DisplayFormat = '###,##0.00'
    end
    object CM_PERFIL_PAGTONOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CM_PERFIL_PAGTO"."NOME"'
      Size = 50
    end
  end
  object dsPerfilPagto: TDataSource
    DataSet = CM_PERFIL_PAGTO
    Left = 100
    Top = 184
  end
  object CM_PERFIL_PAGTO_FAIXA: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryManBoletosBeforeOpen
    BeforePost = CM_PERFIL_PAGTO_FAIXABeforePost
    OnNewRecord = CM_PERFIL_PAGTO_FAIXANewRecord
    DeleteSQL.Strings = (
      'delete from cm_perfil_pagto_faixa'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into cm_perfil_pagto_faixa'
      
        '  (CNPJ, CODIGO, COD_PERFIL_PAGTO, DIA_INICIAL, DIA_FINAL, PCT_P' +
        'AGTO)'
      'values'
      '  (:CNPJ, :CODIGO, :COD_PERFIL_PAGTO, :DIA_INICIAL, :DIA_FINAL, '
      ':PCT_PAGTO)')
    RefreshSQL.Strings = (
      'Select * '
      'from cm_perfil_pagto_faixa '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from cm_perfil_pagto_faixa cppf'
      'where cppf.cnpj = :cnpj and cppf.cod_perfil_pagto = :codigo')
    ModifySQL.Strings = (
      'update cm_perfil_pagto_faixa'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  COD_PERFIL_PAGTO = :COD_PERFIL_PAGTO,'
      '  DIA_INICIAL = :DIA_INICIAL,'
      '  DIA_FINAL = :DIA_FINAL,'
      '  PCT_PAGTO = :PCT_PAGTO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_CM_PERFIL_PAGTO_FAIXA_ID'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = dsPerfilPagto
    Left = 165
    Top = 183
    object CM_PERFIL_PAGTO_FAIXACNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CM_PERFIL_PAGTO_FAIXA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CM_PERFIL_PAGTO_FAIXACODIGO: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'CODIGO'
      Origin = '"CM_PERFIL_PAGTO_FAIXA"."CODIGO"'
      Required = True
    end
    object CM_PERFIL_PAGTO_FAIXACOD_PERFIL_PAGTO: TIntegerField
      FieldName = 'COD_PERFIL_PAGTO'
      Origin = '"CM_PERFIL_PAGTO_FAIXA"."COD_PERFIL_PAGTO"'
    end
    object CM_PERFIL_PAGTO_FAIXADIA_INICIAL: TIntegerField
      DisplayLabel = 'Dia Inicial'
      FieldName = 'DIA_INICIAL'
      Origin = '"CM_PERFIL_PAGTO_FAIXA"."DIA_INICIAL"'
    end
    object CM_PERFIL_PAGTO_FAIXADIA_FINAL: TIntegerField
      DisplayLabel = 'Dia Final'
      FieldName = 'DIA_FINAL'
      Origin = '"CM_PERFIL_PAGTO_FAIXA"."DIA_FINAL"'
    end
    object CM_PERFIL_PAGTO_FAIXAPCT_PAGTO: TFloatField
      DisplayLabel = 'Pct. Pagto(%)'
      FieldName = 'PCT_PAGTO'
      Origin = '"CM_PERFIL_PAGTO_FAIXA"."PCT_PAGTO"'
      DisplayFormat = '###,##0.00'
    end
  end
  object lstPerfilCom: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryManBoletosBeforeOpen
    OnCalcFields = qryManBoletosCalcFields
    SQL.Strings = (
      'select * from cm_perfil'
      'where cnpj = :cnpj')
    Left = 164
    Top = 63
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object lstPerfilComCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CM_PERFIL"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object lstPerfilComCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CM_PERFIL"."CODIGO"'
      Required = True
    end
    object lstPerfilComDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"CM_PERFIL"."DESCRICAO"'
      Size = 50
    end
    object lstPerfilComBASE_CALC: TSmallintField
      FieldName = 'BASE_CALC'
      Origin = '"CM_PERFIL"."BASE_CALC"'
    end
  end
  object dslstPerfil: TDataSource
    AutoEdit = False
    DataSet = lstPerfilCom
    Left = 256
    Top = 63
  end
  object Comissoes: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterOpen = ComissoesAfterOpen
    BeforeOpen = qryManBoletosBeforeOpen
    OnNewRecord = COM_PERFILNewRecord
    DeleteSQL.Strings = (
      'delete from cm_perfil'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into cm_perfil'
      '  (CNPJ, CODIGO, DESCRICAO, BASE_CALC)'
      'values'
      '  (:CNPJ, :CODIGO, :DESCRICAO, :BASE_CALC)')
    RefreshSQL.Strings = (
      'Select * '
      'from cm_perfil '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      
        'select cm.cnpj, cm.pct_lucro_item, cm.cod_perfil_pagto, cm.PCT_A' +
        'NTECIPACAO, cm.COD_TROCA, cm.codigo, cm.cod_vendedor, cm.cod_ven' +
        'da, cm.dt_geracao, vdd.nome,'
      'case coalesce(cm.status,'#39'A'#39')'
      ' when '#39'Q'#39' then '#39'Quitada'#39
      ' when '#39'G'#39' then '#39'Gerada'#39
      ' when '#39'C'#39' then '#39'Cancelada'#39
      ' when '#39'N'#39' then '#39'Sem Comiss'#227'o'#39
      ' when '#39'A'#39' then '#39'Aberta'#39
      'end status,'
      'coalesce((select sum(cmr.vlr_total) from cm_comissao_parc cmr'
      
        'where cmr.cod_comissao = cm.codigo and cmr.cnpj = cm.cnpj and cm' +
        'r.status <> '#39'C'#39'),0) total,'
      
        'coalesce((select sum((cmr.vlr_total * cmr.pct_pago)/100.00) from' +
        ' cm_comissao_parc cmr'
      
        'where cmr.cod_comissao = cm.codigo and cmr.cnpj = cm.cnpj and cm' +
        'r.status <> '#39'C'#39'),0) pago,'
      
        'coalesce((select sum((cmr.vlr_total * cmr.pct_liberado)/100.00) ' +
        'from cm_comissao_parc cmr'
      
        'where cmr.cod_comissao = cm.codigo and cmr.cnpj = cm.cnpj and cm' +
        'r.status <> '#39'C'#39'),0) liberado'
      ' from cm_comissao cm'
      
        'inner join fat_vendedor vdd on (vdd.cnpj = cm.cnpj and vdd.codig' +
        'o = cm.cod_vendedor)'
      'where cm.cnpj = :cnpj')
    ModifySQL.Strings = (
      'update cm_perfil'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  BASE_CALC = :BASE_CALC'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_CM_PERFIL_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 34
    Top = 239
    object ComissoesCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CM_COMISSAO"."CODIGO"'
      Required = True
    end
    object ComissoesCOD_VENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Vdd.'
      FieldName = 'COD_VENDEDOR'
      Origin = '"CM_COMISSAO"."COD_VENDEDOR"'
    end
    object ComissoesCOD_VENDA: TIntegerField
      DisplayLabel = 'C'#243'd. Venda'
      FieldName = 'COD_VENDA'
      Origin = '"CM_COMISSAO"."COD_VENDA"'
    end
    object ComissoesDT_GERACAO: TDateTimeField
      DisplayLabel = 'Dt. Gera'#231#227'o'
      FieldName = 'DT_GERACAO'
      Origin = '"CM_COMISSAO"."DT_GERACAO"'
      Required = True
    end
    object ComissoesNOME: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object ComissoesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CM_COMISSAO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object ComissoesTOTAL: TFloatField
      DisplayLabel = 'Ttl. Comiss'#227'o'
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object ComissoesPAGO: TFloatField
      DisplayLabel = 'Ttl. Pago'
      FieldName = 'PAGO'
      DisplayFormat = '###,##0.00'
    end
    object ComissoesLIBERADO: TFloatField
      DisplayLabel = 'Ttl. Liberado'
      FieldName = 'LIBERADO'
      DisplayFormat = '###,##0.00'
    end
    object ComissoesPCT_ANTECIPACAO: TFloatField
      DisplayLabel = 'Atencipa'#231#227'o'
      FieldName = 'PCT_ANTECIPACAO'
      Origin = '"CM_COMISSAO"."PCT_ANTECIPACAO"'
      DisplayFormat = '###,##0.00%'
    end
    object ComissoesCOD_TROCA: TIntegerField
      DisplayLabel = 'C'#243'd. Troca'
      FieldName = 'COD_TROCA'
      Origin = '"CM_COMISSAO"."COD_TROCA"'
    end
    object ComissoesPCT_LUCRO_ITEM: TFloatField
      DisplayLabel = 'Lucro M'#233'dio'
      FieldName = 'PCT_LUCRO_ITEM'
      Origin = '"CM_COMISSAO"."PCT_LUCRO_ITEM"'
      DisplayFormat = '###,##0.00%'
    end
    object ComissoesCOD_PERFIL_PAGTO: TIntegerField
      DisplayLabel = 'P. Pagto'
      FieldName = 'COD_PERFIL_PAGTO'
      Origin = '"CM_COMISSAO"."COD_PERFIL_PAGTO"'
    end
    object ComissoesSTATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      FixedChar = True
      Size = 12
    end
  end
  object dsComissoes: TDataSource
    DataSet = Comissoes
    Left = 26
    Top = 296
  end
  object dsLinkComParc: TDataSource
    DataSet = Comissoes
    Left = 100
    Top = 239
  end
  object ComissoesParc: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryManBoletosBeforeOpen
    OnNewRecord = COM_PERFILNewRecord
    DeleteSQL.Strings = (
      'delete from cm_perfil'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into cm_perfil'
      '  (CNPJ, CODIGO, DESCRICAO, BASE_CALC)'
      'values'
      '  (:CNPJ, :CODIGO, :DESCRICAO, :BASE_CALC)')
    RefreshSQL.Strings = (
      'Select * '
      'from cm_perfil '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      
        'select cmp.pct_lucro_item, cmp.cod_perfil_pagto, cmp.pessoa_fj, ' +
        'cmp.codigo, cmp.cod_receber, cmp.parc_cr,'
      '       cmp.pct_liberado, cmp.pct_pago, cmp.vlr_receber,'
      '       cmp.vlr_total, '
      '((cmp.vlr_total  * cmp.pct_liberado)/100.00) vlr_liberado, '
      'case coalesce(cmp.status,'#39'A'#39')'
      ' when '#39'Q'#39' then '#39'Quitada'#39
      ' when '#39'G'#39' then '#39'Gerada'#39
      ' when '#39'C'#39' then '#39'Cancelada'#39
      ' when '#39'A'#39' then '#39'Aberta'#39
      ' when '#39'N'#39' then '#39'Sem Comiss'#227'o'#39
      'end status'
      'from cm_comissao_parc cmp'
      'where cmp.cnpj = :cnpj and cmp.cod_comissao = :codigo')
    ModifySQL.Strings = (
      'update cm_perfil'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  BASE_CALC = :BASE_CALC'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_CM_PERFIL_ID'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = dsLinkComParc
    Left = 164
    Top = 239
    object ComissoesParcCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CM_COMISSAO_PARC"."CODIGO"'
      Required = True
    end
    object ComissoesParcCOD_RECEBER: TIntegerField
      DisplayLabel = 'C'#243'd. Rec.'
      FieldName = 'COD_RECEBER'
      Origin = '"CM_COMISSAO_PARC"."COD_RECEBER"'
    end
    object ComissoesParcPARC_CR: TIBStringField
      DisplayLabel = 'Parc.'
      FieldName = 'PARC_CR'
      Origin = '"CM_COMISSAO_PARC"."PARC_CR"'
      Size = 6
    end
    object ComissoesParcPCT_LIBERADO: TFloatField
      DisplayLabel = 'Liberado (%)'
      FieldName = 'PCT_LIBERADO'
      Origin = '"CM_COMISSAO_PARC"."PCT_LIBERADO"'
      DisplayFormat = '###,##0.00%'
    end
    object ComissoesParcPCT_PAGO: TFloatField
      DisplayLabel = 'Pago (%)'
      FieldName = 'PCT_PAGO'
      Origin = '"CM_COMISSAO_PARC"."PCT_PAGO"'
      DisplayFormat = '###,##0.00%'
    end
    object ComissoesParcVLR_RECEBER: TFloatField
      DisplayLabel = 'Vlr. Receber'
      FieldName = 'VLR_RECEBER'
      Origin = '"CM_COMISSAO_PARC"."VLR_RECEBER"'
      DisplayFormat = '###,##0.00'
    end
    object ComissoesParcVLR_TOTAL: TFloatField
      DisplayLabel = 'Vlr. Comissao'
      FieldName = 'VLR_TOTAL'
      Origin = '"CM_COMISSAO_PARC"."VLR_TOTAL"'
      DisplayFormat = '###,##0.00'
    end
    object ComissoesParcVLR_LIBERADO: TFloatField
      DisplayLabel = 'Vlr. Liberado'
      FieldName = 'VLR_LIBERADO'
      DisplayFormat = '###,##0.00'
    end
    object ComissoesParcPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"CM_COMISSAO_PARC"."PESSOA_FJ"'
    end
    object ComissoesParcSTATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      FixedChar = True
      Size = 16
    end
    object ComissoesParcPCT_LUCRO_ITEM: TFloatField
      DisplayLabel = 'Lucro M'#233'dio'
      FieldName = 'PCT_LUCRO_ITEM'
      Origin = '"CM_COMISSAO_PARC"."PCT_LUCRO_ITEM"'
      DisplayFormat = '###,##0.00%'
    end
    object ComissoesParcCOD_PERFIL_PAGTO: TIntegerField
      DisplayLabel = 'P. Pagto'
      FieldName = 'COD_PERFIL_PAGTO'
      Origin = '"CM_COMISSAO_PARC"."COD_PERFIL_PAGTO"'
    end
  end
  object dsComissaoParc: TDataSource
    DataSet = ComissoesParc
    Left = 256
    Top = 239
  end
  object GeraComissao: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'PCD_GERA_COMISSAO'
    Left = 100
    Top = 296
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
      end>
  end
  object qryBxReceber: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = qryBxReceberCalcFields
    SQL.Strings = (
      
        'select bx.valor , bx.vlr_parcial, bx.descontos,bx.historico_bx ,' +
        ' bx.codigo, bx.vlr_baixa, bx.juros, (bx.vlr_baixa - coalesce(bx.' +
        'juros,0)) vlr_liquido, (bx.dt_baixa - bx.dt_vencto) atraso2,'
      'bx.dt_baixa, bx.dt_vencto from fin_baixas_receber bx'
      'where bx.cnpj = :cnpj and bx.codigo_cr = :cod_receber '
      'and bx.pessoa_fj = :pessoa_fj'
      '')
    Left = 100
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_receber'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pessoa_fj'
        ParamType = ptUnknown
      end>
    object qryBxReceberCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO"'
      Required = True
    end
    object qryBxReceberVLR_BAIXA: TFloatField
      DisplayLabel = 'Vlr. Baixa'
      FieldName = 'VLR_BAIXA'
      Origin = '"FIN_BAIXAS_RECEBER"."VLR_BAIXA"'
      DisplayFormat = '###,##0.00'
    end
    object qryBxReceberJUROS: TFloatField
      DisplayLabel = 'Vlr. Juros'
      FieldName = 'JUROS'
      Origin = '"FIN_BAIXAS_RECEBER"."JUROS"'
      DisplayFormat = '###,##0.00'
    end
    object qryBxReceberVLR_LIQUIDO: TFloatField
      DisplayLabel = 'Vlr. L'#237'quido'
      FieldName = 'VLR_LIQUIDO'
      DisplayFormat = '###,##0.00'
    end
    object qryBxReceberDT_BAIXA: TDateTimeField
      DisplayLabel = 'Dt. Baixa'
      FieldName = 'DT_BAIXA'
      Origin = '"FIN_BAIXAS_RECEBER"."DT_BAIXA"'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryBxReceberDT_VENCTO: TDateTimeField
      DisplayLabel = 'Dt. Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"FIN_BAIXAS_RECEBER"."DT_VENCTO"'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryBxReceberAtraso: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Atraso'
      Calculated = True
    end
    object qryBxReceberATRASO2: TFloatField
      FieldName = 'ATRASO2'
      Required = True
    end
    object qryBxReceberDESCONTOS: TFloatField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"FIN_BAIXAS_RECEBER"."DESCONTOS"'
      DisplayFormat = '###,##0.00'
    end
    object qryBxReceberHISTORICO_BX: TIBStringField
      DisplayLabel = 'Hist'#243'rico de Baixa'
      FieldName = 'HISTORICO_BX'
      Origin = '"FIN_BAIXAS_RECEBER"."HISTORICO_BX"'
      Required = True
      Size = 100
    end
    object qryBxReceberVALOR: TFloatField
      DisplayLabel = 'Valor Nominal'
      FieldName = 'VALOR'
      Origin = '"FIN_BAIXAS_RECEBER"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object qryBxReceberVLR_PARCIAL: TFloatField
      DisplayLabel = 'Vlr. Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"FIN_BAIXAS_RECEBER"."VLR_PARCIAL"'
      DisplayFormat = '###,##0.00'
    end
  end
  object qryReceber: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select rec.codigo, rec.valor, rec.vlr_parcial, rec.valor -  coal' +
        'esce(rec.vlr_parcial,0) saldo_nominal'
      
        ', rec.data_ult_baixa, rec.dt_emissao,rec.dt_vencto, rec.vlr_orig' +
        '_alt'
      'from fin_contas_receber rec'
      'where rec.cnpj = :cnpj and rec.codigo = :cod_receber '
      'and rec.pessoa_fj = :pessoa_fj')
    Left = 26
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_receber'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pessoa_fj'
        ParamType = ptUnknown
      end>
    object qryReceberCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_CONTAS_RECEBER"."CODIGO"'
      Required = True
    end
    object qryReceberVALOR: TFloatField
      DisplayLabel = 'Vlr. Nominal'
      FieldName = 'VALOR'
      Origin = '"FIN_CONTAS_RECEBER"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object qryReceberVLR_PARCIAL: TFloatField
      DisplayLabel = 'Vlr. Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"FIN_CONTAS_RECEBER"."VLR_PARCIAL"'
      DisplayFormat = '###,##0.00'
    end
    object qryReceberDATA_ULT_BAIXA: TDateTimeField
      DisplayLabel = 'Dt. Ult. Baixa'
      FieldName = 'DATA_ULT_BAIXA'
      Origin = '"FIN_CONTAS_RECEBER"."DATA_ULT_BAIXA"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryReceberDT_EMISSAO: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"FIN_CONTAS_RECEBER"."DT_EMISSAO"'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryReceberDT_VENCTO: TDateTimeField
      DisplayLabel = 'Dt. Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"FIN_CONTAS_RECEBER"."DT_VENCTO"'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryReceberVLR_ORIG_ALT: TIBStringField
      DisplayLabel = 'Vlr. Alterado'
      FieldName = 'VLR_ORIG_ALT'
      Origin = '"FIN_CONTAS_RECEBER"."VLR_ORIG_ALT"'
      FixedChar = True
      Size = 1
    end
    object qryReceberSALDO_NOMINAL: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO_NOMINAL'
      DisplayFormat = '###,##0.00'
    end
  end
  object qryPagar: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryManBoletosBeforeOpen
    SQL.Strings = (
      'select sum((cmp.vlr_total * cmp.pct_liberado)/100.00) total ,'
      
        'coalesce(cm.cod_vendedor,0)||'#39'-'#39'||coalesce(vdd.nome,'#39#39')  vendedo' +
        'r from cm_comissao_parc cmp'
      
        'inner join cm_comissao cm on (cm.cnpj = cmp.cnpj and cm.codigo =' +
        ' cmp.cod_comissao)'
      
        'inner join fat_vendedor vdd on (vdd.cnpj = cm.cnpj and vdd.codig' +
        'o = cm.cod_vendedor)'
      'where  cmp.status = '#39'G'#39' and cmp.cnpj = :cnpj'
      'group by cm.cod_vendedor, vdd.nome')
    Left = 164
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryPagarTOTAL: TFloatField
      DisplayLabel = 'Ttl. Comiss'#227'o'
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object qryPagarVENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Size = 62
    end
  end
  object GeraPagar: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'PCD_GERA_CPAGAR'
    Left = 164
    Top = 296
  end
  object SelVendedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryManBoletosBeforeOpen
    OnCalcFields = SelVendedorCalcFields
    SQL.Strings = (
      'select vdd.codigo, vdd.nome from fat_vendedor vdd'
      'where vdd.cnpj = :cnpj and vdd.ativo = '#39'S'#39
      'union'
      
        'Select 0 codigo, cast('#39'Todos'#39' as varchar(50)) nome from fat_vend' +
        'edor vdd')
    Left = 256
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object SelVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object SelVendedorNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object SelVendedorcod_nome: TStringField
      FieldKind = fkCalculated
      FieldName = 'cod_nome'
      Size = 80
      Calculated = True
    end
  end
  object dsSelVendedor: TDataSource
    DataSet = SelVendedor
    Left = 344
    Top = 352
  end
  object EstornaCom: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'PCD_EST_COMISSAO'
    Left = 256
    Top = 296
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object EstornaComParc: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'PCD_EST_COM_PARC'
    Left = 344
    Top = 296
  end
  object ExecAux: TIBSQL
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Left = 256
    Top = 120
  end
  object qryPromissorias: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryVerReceberLMTBeforeOpen
    OnCalcFields = qryPromissoriasCalcFields
    SQL.Strings = (
      'select * from PCD_IMPRIME_PROMISSORIA(:cnpj,:codigo,:tipo)'
      '')
    Left = 436
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    object qryPromissoriaspc_valor_extenso: TStringField
      FieldKind = fkCalculated
      FieldName = 'pc_valor_extenso'
      Size = 100
      Calculated = True
    end
    object qryPromissoriaspc_vencto_extenso: TStringField
      FieldKind = fkCalculated
      FieldName = 'pc_vencto_extenso'
      Size = 100
      Calculated = True
    end
    object qryPromissoriaspc_mes_extenso: TStringField
      FieldKind = fkCalculated
      FieldName = 'pc_mes_extenso'
      Size = 50
      Calculated = True
    end
    object qryPromissoriasPSA_CODIGO: TIntegerField
      FieldName = 'PSA_CODIGO'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PSA_CODIGO"'
    end
    object qryPromissoriasVD_DATA: TDateField
      FieldName = 'VD_DATA'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."VD_DATA"'
    end
    object qryPromissoriasVD_CODIGO: TIntegerField
      FieldName = 'VD_CODIGO'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."VD_CODIGO"'
    end
    object qryPromissoriasPC_PARCELA: TIBStringField
      FieldName = 'PC_PARCELA'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PC_PARCELA"'
      Size = 6
    end
    object qryPromissoriasPC_VALOR: TFloatField
      FieldName = 'PC_VALOR'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PC_VALOR"'
    end
    object qryPromissoriasPC_VENCTO: TDateField
      FieldName = 'PC_VENCTO'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PC_VENCTO"'
    end
    object qryPromissoriasPC_DIA: TIntegerField
      FieldName = 'PC_DIA'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PC_DIA"'
    end
    object qryPromissoriasPC_MES: TIntegerField
      FieldName = 'PC_MES'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PC_MES"'
    end
    object qryPromissoriasPC_ANO: TIntegerField
      FieldName = 'PC_ANO'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PC_ANO"'
    end
    object qryPromissoriasPSA_NOME: TIBStringField
      FieldName = 'PSA_NOME'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PSA_NOME"'
      Size = 50
    end
    object qryPromissoriasPSA_ENDERECO: TIBStringField
      FieldName = 'PSA_ENDERECO'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PSA_ENDERECO"'
      Size = 100
    end
    object qryPromissoriasPSA_BAIRRO: TIBStringField
      FieldName = 'PSA_BAIRRO'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PSA_BAIRRO"'
      Size = 50
    end
    object qryPromissoriasPSA_CIDADE: TIBStringField
      FieldName = 'PSA_CIDADE'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PSA_CIDADE"'
      Size = 50
    end
    object qryPromissoriasPSA_CNPJ: TIBStringField
      FieldName = 'PSA_CNPJ'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PSA_CNPJ"'
      Size = 14
    end
    object qryPromissoriasPSA_RG_IE: TIBStringField
      FieldName = 'PSA_RG_IE'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PSA_RG_IE"'
      Size = 15
    end
    object qryPromissoriasVD_COD_VENDEDOR: TIntegerField
      FieldName = 'VD_COD_VENDEDOR'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."VD_COD_VENDEDOR"'
    end
    object qryPromissoriasPSA_FONE: TIBStringField
      FieldName = 'PSA_FONE'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PSA_FONE"'
    end
    object qryPromissoriasVD_NF: TIntegerField
      FieldName = 'VD_NF'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."VD_NF"'
    end
    object qryPromissoriasVD_CF: TIBStringField
      FieldName = 'VD_CF'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."VD_CF"'
    end
  end
  object BAIXA_RECEBER_SELECAO_LOJA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'BAIXA_RECEBER_SELECAO_LOJA'
    Left = 413
    Top = 473
  end
  object qryVerReceberLMT: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryVerReceberLMTBeforeOpen
    OnCalcFields = OnCalcDataSetReceber
    SQL.Strings = (
      'Select * From Ver_Receber(:CNPJ) where PESSOA_FJ = :PESSOA_FJ'
      'order by DT_VENCTO')
    Left = 436
    Top = 63
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PESSOA_FJ'
        ParamType = ptUnknown
      end>
    object qryVerReceberLMTTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qryVerReceberLMTSelecao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Selecao'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qryVerReceberLMTJuros_Calculadors: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Juros_Calculadors'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qryVerReceberLMTTotal_Nominal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Nominal'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qryVerReceberLMTJuros_CalculadorsTotal_NominalJuros_Conta: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Juros_CalculadorsTotal_NominalJuros_Conta'
      Calculated = True
    end
    object qryVerReceberLMTCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_RECEBER"."CODIGO"'
    end
    object qryVerReceberLMTANO: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"VER_RECEBER"."ANO"'
    end
    object qryVerReceberLMTPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_RECEBER"."PESSOA_FJ"'
    end
    object qryVerReceberLMTDT_EMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_RECEBER"."DT_EMISSAO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryVerReceberLMTDT_VENCTO: TDateTimeField
      DisplayLabel = 'Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"VER_RECEBER"."DT_VENCTO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryVerReceberLMTDT_LANCTO: TDateTimeField
      DisplayLabel = 'Lancamento'
      FieldName = 'DT_LANCTO'
      Origin = '"VER_RECEBER"."DT_LANCTO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryVerReceberLMTDOCTO: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCTO'
      Origin = '"VER_RECEBER"."DOCTO"'
    end
    object qryVerReceberLMTPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"VER_RECEBER"."PARCELA"'
      FixedChar = True
      Size = 6
    end
    object qryVerReceberLMTHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_RECEBER"."HISTORICO"'
      Size = 100
    end
    object qryVerReceberLMTVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_RECEBER"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object qryVerReceberLMTVLR_PARCIAL: TIBBCDField
      DisplayLabel = 'Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_RECEBER"."VLR_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object qryVerReceberLMTJUROS_REC: TIBBCDField
      DisplayLabel = 'Juros Rec'
      FieldName = 'JUROS_REC'
      Origin = '"VER_RECEBER"."JUROS_REC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object qryVerReceberLMTDESCONTOS: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"VER_RECEBER"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object qryVerReceberLMTBOLETO: TIBStringField
      FieldName = 'BOLETO'
      Origin = '"VER_RECEBER"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object qryVerReceberLMTORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"VER_RECEBER"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object qryVerReceberLMTCODIGO_VN: TIntegerField
      FieldName = 'CODIGO_VN'
      Origin = '"VER_RECEBER"."CODIGO_VN"'
    end
    object qryVerReceberLMTANO_VN: TSmallintField
      FieldName = 'ANO_VN'
      Origin = '"VER_RECEBER"."ANO_VN"'
    end
    object qryVerReceberLMTAVISO: TSmallintField
      DisplayLabel = 'Aviso'
      FieldName = 'AVISO'
      Origin = '"VER_RECEBER"."AVISO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryVerReceberLMTDT_AVISO: TDateTimeField
      FieldName = 'DT_AVISO'
      Origin = '"VER_RECEBER"."DT_AVISO"'
    end
    object qryVerReceberLMTTIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tipo Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_RECEBER"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object qryVerReceberLMTNUMDUPLICATA: TIntegerField
      DisplayLabel = 'Duplicata'
      FieldName = 'NUMDUPLICATA'
      Origin = '"VER_RECEBER"."NUMDUPLICATA"'
    end
    object qryVerReceberLMTFATURA: TIntegerField
      DisplayLabel = 'Fatura'
      FieldName = 'FATURA'
      Origin = '"VER_RECEBER"."FATURA"'
      DisplayFormat = '#,##0'
    end
    object qryVerReceberLMTNUMBOLETO: TIntegerField
      DisplayLabel = 'Num Boleto'
      FieldName = 'NUMBOLETO'
      Origin = '"VER_RECEBER"."NUMBOLETO"'
    end
    object qryVerReceberLMTPARCIAL: TIBBCDField
      DisplayLabel = 'Parcial'
      FieldName = 'PARCIAL'
      Origin = '"VER_RECEBER"."PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object qryVerReceberLMTJUROS_PARCIAL: TIBBCDField
      DisplayLabel = 'Juros Parcial'
      FieldName = 'JUROS_PARCIAL'
      Origin = '"VER_RECEBER"."JUROS_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object qryVerReceberLMTDATA_ULT_BAIXA: TDateTimeField
      DisplayLabel = 'DT. Ult. Baixa'
      FieldName = 'DATA_ULT_BAIXA'
      Origin = '"VER_RECEBER"."DATA_ULT_BAIXA"'
    end
    object qryVerReceberLMTCOBRADOR: TIntegerField
      DisplayLabel = 'Cobrador'
      FieldName = 'COBRADOR'
      Origin = '"VER_RECEBER"."COBRADOR"'
    end
    object qryVerReceberLMTLOCAL: TIntegerField
      FieldName = 'LOCAL'
      Origin = '"VER_RECEBER"."LOCAL"'
    end
    object qryVerReceberLMTARQ_MORTO: TIBStringField
      FieldName = 'ARQ_MORTO'
      Origin = '"VER_RECEBER"."ARQ_MORTO"'
      FixedChar = True
      Size = 10
    end
    object qryVerReceberLMTAtraso: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Atraso'
      Calculated = True
    end
    object qryVerReceberLMTJuros_Conta: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Juros_Conta'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qryVerReceberLMTNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_RECEBER"."NOME"'
      Size = 50
    end
    object qryVerReceberLMTENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"VER_RECEBER"."ENDERECO"'
      Size = 50
    end
    object qryVerReceberLMTNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"VER_RECEBER"."NUMERO"'
      Size = 15
    end
    object qryVerReceberLMTCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"VER_RECEBER"."CIDADE"'
      Size = 50
    end
    object qryVerReceberLMTBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"VER_RECEBER"."BAIRRO"'
      Size = 50
    end
    object qryVerReceberLMTCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_RECEBER"."CEP"'
      FixedChar = True
      Size = 8
    end
    object qryVerReceberLMTUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_RECEBER"."UF"'
      FixedChar = True
      Size = 2
    end
    object qryVerReceberLMTCOD_END: TIntegerField
      FieldName = 'COD_END'
      Origin = '"VER_RECEBER"."COD_END"'
    end
    object qryVerReceberLMTCOD_CID: TIntegerField
      FieldName = 'COD_CID'
      Origin = '"VER_RECEBER"."COD_CID"'
    end
    object qryVerReceberLMTCOD_BAI: TIntegerField
      FieldName = 'COD_BAI'
      Origin = '"VER_RECEBER"."COD_BAI"'
    end
    object qryVerReceberLMTFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_RECEBER"."FONE"'
    end
    object qryVerReceberLMTCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_RECEBER"."CPF_CGC"'
      Size = 15
    end
  end
  object qryVerChequeLMT: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryVerReceberLMTBeforeOpen
    OnCalcFields = qryVerChequeLMTCalcFields
    SQL.Strings = (
      
        'select c.troca, c.indice, c.BANCO, c.CONTA, c.CHEQUE, c.VENDA, c' +
        '.EMISSAO, c.PRE_DATE,'
      
        '       c.VALOR, c.CONCILIADO, c.HISTORICO, c.AGENCIA, c.DATA_CON' +
        'CILIACAO,'
      
        '       c.JUROS, c.TIPO, c.DATA_ACERTO, c.PLANILHA, c.DIGITO_AGEN' +
        'CIA,'
      
        '                c.DIGITO_CHEQUE, c.DATA_DEVOLUCAO,  c.VEZES_DEVO' +
        'LUCAO,'
      '                c.PROCESSADO, c.ID, c.MARCADO,'
      '                case upper(p.nome_razao)'
      '                  when '#39'CONSUMIDOR'#39' then c.nome'
      '                  else p.nome_razao'
      '                end NOME,'
      
        '                p.fone, p.fax, p.celular, p.cpf_cgc, p.rg_ie, cl' +
        '.local_trabalho,'
      
        '                cl.fone_trabalho, d.nome Motivo_Devolucao , c.pe' +
        'ssoa_fj, c.cmc7, c.data_reapres'
      '                from FIN_CHEQUES c'
      
        '                inner join glo_pessoas_fj p on (p.codigo = c.pes' +
        'soa_fj and p.cnpj = c.cnpj)'
      
        '                left join glo_clientes cl on (cl.pessoa_fj = p.c' +
        'odigo and cl.cnpj = c.cnpj)'
      
        '                left join fin_motivo_devolucao d on (d.codigo = ' +
        'c.motivo_devolucao and d.cnpj = c.cnpj)'
      '                where c.cnpj = :cnpj and c.pessoa_fj = :cliente'
      '                and (c.data_acerto is null) and'
      
        '                /*est'#225' '#180'em tese'#39' '#233' a condi'#231#227'o de cheque concilia' +
        'do, como eu preciso do contr'#225'rio..*/'
      
        '                not((c.data_conciliacao is not null) and (coales' +
        'ce(c.VEZES_DEVOLUCAO,0)= 0)) and'
      
        '                /*est'#225' '#180'em tese'#39' '#233' a condi'#231#227'o de cheque em abert' +
        'o, como eu preciso do contr'#225'rio..*/'
      
        '                not((c.data_conciliacao is null) and (coalesce(c' +
        '.VEZES_DEVOLUCAO,0)= 0) and (c.data_acerto is null))')
    Left = 536
    Top = 6
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    object qryVerChequeLMTTROCA: TIntegerField
      DisplayLabel = 'Troca'
      FieldName = 'TROCA'
      Origin = '"FIN_CHEQUES"."TROCA"'
    end
    object qryVerChequeLMTINDICE: TIBStringField
      DisplayLabel = 'Indice'
      FieldName = 'INDICE'
      Origin = '"FIN_CHEQUES"."INDICE"'
      Size = 40
    end
    object qryVerChequeLMTBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"FIN_CHEQUES"."BANCO"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryVerChequeLMTCONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"FIN_CHEQUES"."CONTA"'
      Required = True
      Size = 15
    end
    object qryVerChequeLMTCHEQUE: TIBStringField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"FIN_CHEQUES"."CHEQUE"'
      Required = True
      Size = 6
    end
    object qryVerChequeLMTVENDA: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'VENDA'
      Origin = '"FIN_CHEQUES"."VENDA"'
    end
    object qryVerChequeLMTEMISSAO: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'EMISSAO'
      Origin = '"FIN_CHEQUES"."EMISSAO"'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryVerChequeLMTPRE_DATE: TDateTimeField
      DisplayLabel = 'Pr'#233' Date'
      FieldName = 'PRE_DATE'
      Origin = '"FIN_CHEQUES"."PRE_DATE"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryVerChequeLMTVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_CHEQUES"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object qryVerChequeLMTCONCILIADO: TIBStringField
      DisplayLabel = 'Conc.'
      FieldName = 'CONCILIADO'
      Origin = '"FIN_CHEQUES"."CONCILIADO"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryVerChequeLMTHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_CHEQUES"."HISTORICO"'
      Size = 100
    end
    object qryVerChequeLMTAGENCIA: TIBStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Origin = '"FIN_CHEQUES"."AGENCIA"'
      Size = 6
    end
    object qryVerChequeLMTDATA_CONCILIACAO: TDateTimeField
      DisplayLabel = 'Dt. Conc.'
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"FIN_CHEQUES"."DATA_CONCILIACAO"'
    end
    object qryVerChequeLMTJUROS: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"FIN_CHEQUES"."JUROS"'
      DisplayFormat = '###,##0.00'
    end
    object qryVerChequeLMTTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"FIN_CHEQUES"."TIPO"'
      FixedChar = True
      Size = 2
    end
    object qryVerChequeLMTDATA_ACERTO: TDateTimeField
      DisplayLabel = 'Dt. Acerto'
      FieldName = 'DATA_ACERTO'
      Origin = '"FIN_CHEQUES"."DATA_ACERTO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryVerChequeLMTPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"FIN_CHEQUES"."PLANILHA"'
    end
    object qryVerChequeLMTDIGITO_AGENCIA: TIBStringField
      DisplayLabel = 'Dv. Ag.'
      FieldName = 'DIGITO_AGENCIA'
      Origin = '"FIN_CHEQUES"."DIGITO_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object qryVerChequeLMTDIGITO_CHEQUE: TIBStringField
      DisplayLabel = 'Dv. Chq.'
      FieldName = 'DIGITO_CHEQUE'
      Origin = '"FIN_CHEQUES"."DIGITO_CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object qryVerChequeLMTDATA_DEVOLUCAO: TDateTimeField
      DisplayLabel = 'Dt. Dev.'
      FieldName = 'DATA_DEVOLUCAO'
      Origin = '"FIN_CHEQUES"."DATA_DEVOLUCAO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qryVerChequeLMTVEZES_DEVOLUCAO: TIntegerField
      DisplayLabel = 'N. Dev.'
      FieldName = 'VEZES_DEVOLUCAO'
      Origin = '"FIN_CHEQUES"."VEZES_DEVOLUCAO"'
    end
    object qryVerChequeLMTPROCESSADO: TIBStringField
      DisplayLabel = 'Proc.'
      FieldName = 'PROCESSADO'
      Origin = '"FIN_CHEQUES"."PROCESSADO"'
      FixedChar = True
      Size = 1
    end
    object qryVerChequeLMTID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_CHEQUES"."ID"'
    end
    object qryVerChequeLMTMARCADO: TIBStringField
      FieldName = 'MARCADO'
      Origin = '"FIN_CHEQUES"."MARCADO"'
      FixedChar = True
      Size = 1
    end
    object qryVerChequeLMTNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object qryVerChequeLMTFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object qryVerChequeLMTFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object qryVerChequeLMTCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"GLO_PESSOAS_FJ"."CELULAR"'
    end
    object qryVerChequeLMTCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object qryVerChequeLMTRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"GLO_PESSOAS_FJ"."RG_IE"'
      Size = 15
    end
    object qryVerChequeLMTLOCAL_TRABALHO: TIBStringField
      FieldName = 'LOCAL_TRABALHO'
      Origin = '"GLO_CLIENTES"."LOCAL_TRABALHO"'
      Size = 50
    end
    object qryVerChequeLMTFONE_TRABALHO: TIBStringField
      FieldName = 'FONE_TRABALHO'
      Origin = '"GLO_CLIENTES"."FONE_TRABALHO"'
    end
    object qryVerChequeLMTMOTIVO_DEVOLUCAO: TIBStringField
      DisplayLabel = 'Mot. Dev.'
      FieldName = 'MOTIVO_DEVOLUCAO'
      Origin = '"FIN_MOTIVO_DEVOLUCAO"."NOME"'
      Size = 50
    end
    object qryVerChequeLMTPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_CHEQUES"."PESSOA_FJ"'
      Required = True
    end
    object qryVerChequeLMTCMC7: TIBStringField
      FieldName = 'CMC7'
      Origin = '"FIN_CHEQUES"."CMC7"'
      Size = 50
    end
    object qryVerChequeLMTDATA_REAPRES: TDateTimeField
      FieldName = 'DATA_REAPRES'
      Origin = '"FIN_CHEQUES"."DATA_REAPRES"'
    end
    object qryVerChequeLMTTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
  end
  object qryVerRecLimite: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryVerReceberLMTBeforeOpen
    OnCalcFields = OnCalcDataSetReceber
    SQL.Strings = (
      'select codigo, ano, pessoa_fj, dt_emissao,'
      '            dt_vencto, dt_lancto, docto, parcela, historico,'
      
        '            valor, vlr_parcial, juros_rec, descontos, boleto, or' +
        'igem, codigo_vn,'
      
        '            ano_vn, aviso, dt_aviso, selecionado, tipo_docto, nu' +
        'mboleto,'
      
        '            numduplicata, fatura, parcial, juros_parcial, data_u' +
        'lt_baixa, cobrador,'
      
        '            local_cobranca, coalesce(arquivo_morto,'#39'N'#39') ARQ_MORT' +
        'O'
      '     from fin_contas_receber rec'
      
        '     where cnpj = :cnpj and coalesce(rec.fatura,0) = 0 and pesso' +
        'a_fj = :pessoa_fj'
      'order by dt_vencto'
      ''
      ''
      '')
    Left = 536
    Top = 63
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PESSOA_FJ'
        ParamType = ptUnknown
      end>
    object qryVerRecLimiteTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qryVerRecLimiteSelecao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Selecao'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qryVerRecLimiteJuros_Calculadors: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Juros_Calculadors'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qryVerRecLimiteTotal_Nominal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Nominal'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qryVerRecLimiteAtraso: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Atraso'
      Calculated = True
    end
    object qryVerRecLimiteJuros_Conta: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Juros_Conta'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qryVerRecLimiteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_CONTAS_RECEBER"."CODIGO"'
      Required = True
    end
    object qryVerRecLimiteANO: TSmallintField
      FieldName = 'ANO'
      Origin = '"FIN_CONTAS_RECEBER"."ANO"'
      Required = True
    end
    object qryVerRecLimitePESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_CONTAS_RECEBER"."PESSOA_FJ"'
      Required = True
    end
    object qryVerRecLimiteDT_EMISSAO: TDateTimeField
      FieldName = 'DT_EMISSAO'
      Origin = '"FIN_CONTAS_RECEBER"."DT_EMISSAO"'
      Required = True
    end
    object qryVerRecLimiteDT_VENCTO: TDateTimeField
      DisplayLabel = 'Dt. Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"FIN_CONTAS_RECEBER"."DT_VENCTO"'
      Required = True
    end
    object qryVerRecLimiteDT_LANCTO: TDateTimeField
      FieldName = 'DT_LANCTO'
      Origin = '"FIN_CONTAS_RECEBER"."DT_LANCTO"'
    end
    object qryVerRecLimiteDOCTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"FIN_CONTAS_RECEBER"."DOCTO"'
      Required = True
    end
    object qryVerRecLimitePARCELA: TIBStringField
      DisplayLabel = 'Parc'
      FieldName = 'PARCELA'
      Origin = '"FIN_CONTAS_RECEBER"."PARCELA"'
      Required = True
      Size = 6
    end
    object qryVerRecLimiteHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"FIN_CONTAS_RECEBER"."HISTORICO"'
      Size = 100
    end
    object qryVerRecLimiteVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"FIN_CONTAS_RECEBER"."VALOR"'
    end
    object qryVerRecLimiteVLR_PARCIAL: TFloatField
      FieldName = 'VLR_PARCIAL'
      Origin = '"FIN_CONTAS_RECEBER"."VLR_PARCIAL"'
    end
    object qryVerRecLimiteJUROS_REC: TFloatField
      FieldName = 'JUROS_REC'
      Origin = '"FIN_CONTAS_RECEBER"."JUROS_REC"'
    end
    object qryVerRecLimiteDESCONTOS: TFloatField
      FieldName = 'DESCONTOS'
      Origin = '"FIN_CONTAS_RECEBER"."DESCONTOS"'
    end
    object qryVerRecLimiteBOLETO: TIBStringField
      FieldName = 'BOLETO'
      Origin = '"FIN_CONTAS_RECEBER"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object qryVerRecLimiteORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"FIN_CONTAS_RECEBER"."ORIGEM"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryVerRecLimiteCODIGO_VN: TIntegerField
      FieldName = 'CODIGO_VN'
      Origin = '"FIN_CONTAS_RECEBER"."CODIGO_VN"'
    end
    object qryVerRecLimiteANO_VN: TSmallintField
      FieldName = 'ANO_VN'
      Origin = '"FIN_CONTAS_RECEBER"."ANO_VN"'
    end
    object qryVerRecLimiteAVISO: TIntegerField
      FieldName = 'AVISO'
      Origin = '"FIN_CONTAS_RECEBER"."AVISO"'
    end
    object qryVerRecLimiteDT_AVISO: TDateTimeField
      FieldName = 'DT_AVISO'
      Origin = '"FIN_CONTAS_RECEBER"."DT_AVISO"'
    end
    object qryVerRecLimiteSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"FIN_CONTAS_RECEBER"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object qryVerRecLimiteTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"FIN_CONTAS_RECEBER"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object qryVerRecLimiteNUMBOLETO: TIntegerField
      FieldName = 'NUMBOLETO'
      Origin = '"FIN_CONTAS_RECEBER"."NUMBOLETO"'
    end
    object qryVerRecLimiteNUMDUPLICATA: TIntegerField
      FieldName = 'NUMDUPLICATA'
      Origin = '"FIN_CONTAS_RECEBER"."NUMDUPLICATA"'
    end
    object qryVerRecLimiteFATURA: TIntegerField
      FieldName = 'FATURA'
      Origin = '"FIN_CONTAS_RECEBER"."FATURA"'
    end
    object qryVerRecLimitePARCIAL: TFloatField
      FieldName = 'PARCIAL'
      Origin = '"FIN_CONTAS_RECEBER"."PARCIAL"'
    end
    object qryVerRecLimiteJUROS_PARCIAL: TFloatField
      FieldName = 'JUROS_PARCIAL'
      Origin = '"FIN_CONTAS_RECEBER"."JUROS_PARCIAL"'
    end
    object qryVerRecLimiteDATA_ULT_BAIXA: TDateTimeField
      FieldName = 'DATA_ULT_BAIXA'
      Origin = '"FIN_CONTAS_RECEBER"."DATA_ULT_BAIXA"'
    end
    object qryVerRecLimiteCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
      Origin = '"FIN_CONTAS_RECEBER"."COBRADOR"'
    end
    object qryVerRecLimiteLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"FIN_CONTAS_RECEBER"."LOCAL_COBRANCA"'
    end
    object qryVerRecLimiteARQ_MORTO: TIBStringField
      FieldName = 'ARQ_MORTO'
      FixedChar = True
      Size = 1
    end
  end
  object qryVerChequePendencia: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryVerReceberLMTBeforeOpen
    OnCalcFields = qryVerChequeLMTCalcFields
    SQL.Strings = (
      
        'select c.troca, c.indice, c.BANCO, c.CONTA, c.CHEQUE, c.VENDA, c' +
        '.EMISSAO, c.PRE_DATE,'
      
        '       c.VALOR, c.CONCILIADO, c.HISTORICO, c.AGENCIA, c.DATA_CON' +
        'CILIACAO,'
      
        '       c.JUROS, c.TIPO, c.DATA_ACERTO, c.PLANILHA, c.DIGITO_AGEN' +
        'CIA,'
      
        '                c.DIGITO_CHEQUE, c.DATA_DEVOLUCAO,  c.VEZES_DEVO' +
        'LUCAO,'
      '                c.PROCESSADO, c.ID, c.MARCADO,'
      '                case upper(p.nome_razao)'
      '                  when '#39'CONSUMIDOR'#39' then c.nome'
      '                  else p.nome_razao'
      '                end NOME,'
      
        '                p.fone, p.fax, p.celular, p.cpf_cgc, p.rg_ie, cl' +
        '.local_trabalho,'
      
        '                cl.fone_trabalho, d.nome Motivo_Devolucao , c.pe' +
        'ssoa_fj, c.cmc7, c.data_reapres'
      '                from FIN_CHEQUES c'
      
        '                inner join glo_pessoas_fj p on (p.codigo = c.pes' +
        'soa_fj and p.cnpj = c.cnpj)'
      
        '                left join glo_clientes cl on (cl.pessoa_fj = p.c' +
        'odigo and cl.cnpj = c.cnpj)'
      
        '                left join fin_motivo_devolucao d on (d.codigo = ' +
        'c.motivo_devolucao and d.cnpj = c.cnpj)'
      '                where c.cnpj = :cnpj and c.pessoa_fj = :cliente'
      
        '                /*ignora todos os q foram devolvidos 2 vzes e ac' +
        'ertados*/'
      '                and (c.data_acerto is null) and'
      
        '                /*est'#225' '#180'em tese'#39' '#233' a condi'#231#227'o de cheque concilia' +
        'do que foi processado e n'#227'o foi'
      '                devolvido, como eu preciso do contr'#225'rio..*/'
      '                not('
      
        '                     (c.data_conciliacao is not null) and (coale' +
        'sce(c.VEZES_DEVOLUCAO,0)= 0)'
      '                   )'
      '               and'
      '               not('
      
        '                     (c.data_reapres is not null) and (coalesce(' +
        'c.VEZES_DEVOLUCAO,0)= 1)'
      '                   )')
    Left = 536
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    object qryVerChequePendenciaTROCA: TIntegerField
      DisplayLabel = 'C'#243'd. Troca'
      FieldName = 'TROCA'
      Origin = '"FIN_CHEQUES"."TROCA"'
    end
    object qryVerChequePendenciaINDICE: TIBStringField
      DisplayLabel = 'Indice'
      FieldName = 'INDICE'
      Origin = '"FIN_CHEQUES"."INDICE"'
      Size = 40
    end
    object qryVerChequePendenciaBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"FIN_CHEQUES"."BANCO"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryVerChequePendenciaCONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"FIN_CHEQUES"."CONTA"'
      Required = True
      Size = 15
    end
    object qryVerChequePendenciaCHEQUE: TIBStringField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"FIN_CHEQUES"."CHEQUE"'
      Required = True
      Size = 6
    end
    object qryVerChequePendenciaVENDA: TIntegerField
      DisplayLabel = 'C'#243'd. Venda'
      FieldName = 'VENDA'
      Origin = '"FIN_CHEQUES"."VENDA"'
    end
    object qryVerChequePendenciaEMISSAO: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'EMISSAO'
      Origin = '"FIN_CHEQUES"."EMISSAO"'
      Required = True
    end
    object qryVerChequePendenciaPRE_DATE: TDateTimeField
      DisplayLabel = 'Pr'#233'-Date'
      FieldName = 'PRE_DATE'
      Origin = '"FIN_CHEQUES"."PRE_DATE"'
    end
    object qryVerChequePendenciaVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_CHEQUES"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object qryVerChequePendenciaCONCILIADO: TIBStringField
      DisplayLabel = 'Conciliado'
      FieldName = 'CONCILIADO'
      Origin = '"FIN_CHEQUES"."CONCILIADO"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryVerChequePendenciaHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_CHEQUES"."HISTORICO"'
      Size = 100
    end
    object qryVerChequePendenciaAGENCIA: TIBStringField
      DisplayLabel = 'N'#186' Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Origin = '"FIN_CHEQUES"."AGENCIA"'
      Size = 6
    end
    object qryVerChequePendenciaDATA_CONCILIACAO: TDateTimeField
      DisplayLabel = 'Dt. Concilia'#231#227'o'
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"FIN_CHEQUES"."DATA_CONCILIACAO"'
    end
    object qryVerChequePendenciaJUROS: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"FIN_CHEQUES"."JUROS"'
      DisplayFormat = '###,##0.00'
    end
    object qryVerChequePendenciaTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"FIN_CHEQUES"."TIPO"'
      FixedChar = True
      Size = 2
    end
    object qryVerChequePendenciaDATA_ACERTO: TDateTimeField
      DisplayLabel = 'Dt. Acerto'
      FieldName = 'DATA_ACERTO'
      Origin = '"FIN_CHEQUES"."DATA_ACERTO"'
    end
    object qryVerChequePendenciaPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"FIN_CHEQUES"."PLANILHA"'
    end
    object qryVerChequePendenciaDIGITO_AGENCIA: TIBStringField
      DisplayLabel = 'Dig. Ag'#234'ncia'
      FieldName = 'DIGITO_AGENCIA'
      Origin = '"FIN_CHEQUES"."DIGITO_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object qryVerChequePendenciaDIGITO_CHEQUE: TIBStringField
      DisplayLabel = 'Dig. Cheque'
      FieldName = 'DIGITO_CHEQUE'
      Origin = '"FIN_CHEQUES"."DIGITO_CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object qryVerChequePendenciaDATA_DEVOLUCAO: TDateTimeField
      DisplayLabel = 'Dt. Devolu'#231#227'o'
      FieldName = 'DATA_DEVOLUCAO'
      Origin = '"FIN_CHEQUES"."DATA_DEVOLUCAO"'
    end
    object qryVerChequePendenciaVEZES_DEVOLUCAO: TIntegerField
      DisplayLabel = 'Vezes Devolu'#231#227'o'
      FieldName = 'VEZES_DEVOLUCAO'
      Origin = '"FIN_CHEQUES"."VEZES_DEVOLUCAO"'
    end
    object qryVerChequePendenciaPROCESSADO: TIBStringField
      DisplayLabel = 'Processado'
      FieldName = 'PROCESSADO'
      Origin = '"FIN_CHEQUES"."PROCESSADO"'
      FixedChar = True
      Size = 1
    end
    object qryVerChequePendenciaID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_CHEQUES"."ID"'
    end
    object qryVerChequePendenciaMARCADO: TIBStringField
      DisplayLabel = 'Marcado'
      FieldName = 'MARCADO'
      Origin = '"FIN_CHEQUES"."MARCADO"'
      FixedChar = True
      Size = 1
    end
    object qryVerChequePendenciaNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object qryVerChequePendenciaFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object qryVerChequePendenciaFAX: TIBStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object qryVerChequePendenciaCELULAR: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = '"GLO_PESSOAS_FJ"."CELULAR"'
    end
    object qryVerChequePendenciaCPF_CGC: TIBStringField
      DisplayLabel = 'CPF/CGC'
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object qryVerChequePendenciaRG_IE: TIBStringField
      DisplayLabel = 'RG/IE'
      FieldName = 'RG_IE'
      Origin = '"GLO_PESSOAS_FJ"."RG_IE"'
      Size = 15
    end
    object qryVerChequePendenciaLOCAL_TRABALHO: TIBStringField
      DisplayLabel = 'Local Trabalho'
      FieldName = 'LOCAL_TRABALHO'
      Origin = '"GLO_CLIENTES"."LOCAL_TRABALHO"'
      Size = 50
    end
    object qryVerChequePendenciaFONE_TRABALHO: TIBStringField
      DisplayLabel = 'Fone Trabalho'
      FieldName = 'FONE_TRABALHO'
      Origin = '"GLO_CLIENTES"."FONE_TRABALHO"'
    end
    object qryVerChequePendenciaMOTIVO_DEVOLUCAO: TIBStringField
      DisplayLabel = 'Al'#237'nea Devolu'#231#227'o'
      FieldName = 'MOTIVO_DEVOLUCAO'
      Origin = '"FIN_MOTIVO_DEVOLUCAO"."NOME"'
      Size = 50
    end
    object qryVerChequePendenciaPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_CHEQUES"."PESSOA_FJ"'
      Required = True
    end
    object qryVerChequePendenciaCMC7: TIBStringField
      FieldName = 'CMC7'
      Origin = '"FIN_CHEQUES"."CMC7"'
      Size = 50
    end
    object qryVerChequePendenciaDATA_REAPRES: TDateTimeField
      DisplayLabel = 'Dt. Reapresenta'#231#227'o'
      FieldName = 'DATA_REAPRES'
      Origin = '"FIN_CHEQUES"."DATA_REAPRES"'
    end
  end
  object SelecionaCartao: TIBSQL
    Database = DmApp.Database
    SQL.Strings = (
      'update FIN_MOVIMENTO_CARTAO ct set processado = :sel'
      'where ct.cnpj = :cnpj and ct.codigo = :codigo')
    Transaction = DmApp.Transaction
    Left = 436
    Top = 239
  end
  object EstConciliaCartao: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'ESTORNA_CONCILIACAO_CARTAO'
    Left = 344
    Top = 239
  end
  object lstPerfilComPagto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryManBoletosBeforeOpen
    OnCalcFields = qryManBoletosCalcFields
    SQL.Strings = (
      'select * from cm_perfil_pagto p'
      'where p.cnpj = :cnpj')
    Left = 436
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object lstPerfilComPagtoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CM_PERFIL_PAGTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object lstPerfilComPagtoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CM_PERFIL_PAGTO"."CODIGO"'
      Required = True
    end
    object lstPerfilComPagtoPCT_ANT_PRAZO: TFloatField
      FieldName = 'PCT_ANT_PRAZO'
      Origin = '"CM_PERFIL_PAGTO"."PCT_ANT_PRAZO"'
    end
    object lstPerfilComPagtoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CM_PERFIL_PAGTO"."NOME"'
      Size = 50
    end
  end
  object dslstPerfilComPagto: TDataSource
    AutoEdit = False
    DataSet = lstPerfilComPagto
    Left = 436
    Top = 352
  end
  object Baixa_Receber_Convenio: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'BAIXA_RECEBER_CONVENIO'
    Left = 26
    Top = 412
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HISTORICOBX'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_BAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'JUROS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PLANILHA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TURNO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BANCO'
        ParamType = ptInput
      end>
  end
  object qryEstRecebidas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryVerReceberLMTBeforeOpen
    SQL.Strings = (
      'select * from fin_baixas_receber rec'
      'where rec.cnpj = :cnpj and rec.planilha = :planilha')
    Left = 344
    Top = 412
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'planilha'
        ParamType = ptUnknown
      end>
    object qryEstRecebidasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO"'
      Required = True
    end
    object qryEstRecebidasUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FIN_BAIXAS_RECEBER"."USUARIO"'
    end
    object qryEstRecebidasDT_BAIXA: TDateTimeField
      DisplayLabel = 'Dt. Baixa'
      FieldName = 'DT_BAIXA'
      Origin = '"FIN_BAIXAS_RECEBER"."DT_BAIXA"'
    end
    object qryEstRecebidasHISTORICO_BX: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO_BX'
      Origin = '"FIN_BAIXAS_RECEBER"."HISTORICO_BX"'
      Size = 100
    end
    object qryEstRecebidasVLR_BAIXA: TFloatField
      DisplayLabel = 'Vlr. Baixa'
      FieldName = 'VLR_BAIXA'
      Origin = '"FIN_BAIXAS_RECEBER"."VLR_BAIXA"'
      DisplayFormat = '###,###,##0.00'
    end
    object qryEstRecebidasJUROS: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"FIN_BAIXAS_RECEBER"."JUROS"'
      DisplayFormat = '###,###,##0.00'
    end
    object qryEstRecebidasDESCONTOS: TFloatField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"FIN_BAIXAS_RECEBER"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
    end
    object qryEstRecebidasPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"FIN_BAIXAS_RECEBER"."PLANILHA"'
    end
    object qryEstRecebidasPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_BAIXAS_RECEBER"."PESSOA_FJ"'
    end
    object qryEstRecebidasCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"FIN_BAIXAS_RECEBER"."CONTA"'
    end
    object qryEstRecebidasTURNO: TIntegerField
      DisplayLabel = 'Turno'
      FieldName = 'TURNO'
      Origin = '"FIN_BAIXAS_RECEBER"."TURNO"'
    end
  end
  object qryEstCheques: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryVerReceberLMTBeforeOpen
    SQL.Strings = (
      'select * from fin_cheques ch'
      'where ch.cnpj = :cnpj and ch.planilha = :planilha')
    Left = 436
    Top = 412
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'planilha'
        ParamType = ptUnknown
      end>
    object qryEstChequesBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"FIN_CHEQUES"."BANCO"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryEstChequesCONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"FIN_CHEQUES"."CONTA"'
      Required = True
      Size = 15
    end
    object qryEstChequesCHEQUE: TIBStringField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"FIN_CHEQUES"."CHEQUE"'
      Required = True
      Size = 6
    end
    object qryEstChequesEMISSAO: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'EMISSAO'
      Origin = '"FIN_CHEQUES"."EMISSAO"'
    end
    object qryEstChequesPRE_DATE: TDateTimeField
      DisplayLabel = 'Pr'#233'-Date'
      FieldName = 'PRE_DATE'
      Origin = '"FIN_CHEQUES"."PRE_DATE"'
    end
    object qryEstChequesVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_CHEQUES"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object qryEstChequesCONCILIADO: TIBStringField
      DisplayLabel = 'Conciliado'
      FieldName = 'CONCILIADO'
      Origin = '"FIN_CHEQUES"."CONCILIADO"'
      FixedChar = True
      Size = 1
    end
    object qryEstChequesHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_CHEQUES"."HISTORICO"'
      Size = 100
    end
    object qryEstChequesAGENCIA: TIBStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Origin = '"FIN_CHEQUES"."AGENCIA"'
      Size = 6
    end
    object qryEstChequesNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_CHEQUES"."NOME"'
      Size = 50
    end
    object qryEstChequesPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"FIN_CHEQUES"."PLANILHA"'
    end
    object qryEstChequesDIGITO_CONTA: TIBStringField
      DisplayLabel = 'D'#237'g. Conta'
      FieldName = 'DIGITO_CONTA'
      Origin = '"FIN_CHEQUES"."DIGITO_CONTA"'
      FixedChar = True
      Size = 1
    end
    object qryEstChequesDIGITO_CHEQUE: TIBStringField
      DisplayLabel = 'D'#237'g. Cheque'
      FieldName = 'DIGITO_CHEQUE'
      Origin = '"FIN_CHEQUES"."DIGITO_CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object qryEstChequesPROCESSADO: TIBStringField
      DisplayLabel = 'Processado'
      FieldName = 'PROCESSADO'
      Origin = '"FIN_CHEQUES"."PROCESSADO"'
      FixedChar = True
      Size = 1
    end
    object qryEstChequesDIGITO_AGENCIA: TIBStringField
      DisplayLabel = 'D'#237'g. Ag'#234'ncia'
      FieldName = 'DIGITO_AGENCIA'
      Origin = '"FIN_CHEQUES"."DIGITO_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object qryEstChequesCMC7: TIBStringField
      FieldName = 'CMC7'
      Origin = '"FIN_CHEQUES"."CMC7"'
      Size = 50
    end
    object qryEstChequesID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_CHEQUES"."ID"'
    end
    object qryEstChequesINDICE: TIBStringField
      FieldName = 'INDICE'
      Origin = '"FIN_CHEQUES"."INDICE"'
      Size = 40
    end
  end
  object qryEstCartoes: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryVerReceberLMTBeforeOpen
    SQL.Strings = (
      'select * from fin_movimento_cartao cr'
      'where cr.cnpj = :cnpj and cr.planilha = :planilha'
      '')
    Left = 536
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'planilha'
        ParamType = ptUnknown
      end>
    object qryEstCartoesCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CODIGO"'
      Required = True
    end
    object qryEstCartoesDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."DATA"'
    end
    object qryEstCartoesVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_MOVIMENTO_CARTAO"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object qryEstCartoesNUM_CARTAO: TIBStringField
      DisplayLabel = 'N'#186' Cart'#227'o'
      FieldName = 'NUM_CARTAO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_CARTAO"'
    end
    object qryEstCartoesNUM_BANCO: TIBStringField
      DisplayLabel = 'N'#186' Banco'
      FieldName = 'NUM_BANCO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_BANCO"'
      FixedChar = True
      Size = 3
    end
    object qryEstCartoesNUM_CONTA: TIBStringField
      DisplayLabel = 'N'#186' Conta'
      FieldName = 'NUM_CONTA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_CONTA"'
    end
    object qryEstCartoesCONCILIADO: TIBStringField
      DisplayLabel = 'Conciliado'
      FieldName = 'CONCILIADO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CONCILIADO"'
      FixedChar = True
      Size = 1
    end
    object qryEstCartoesTIPO_DOC: TIBStringField
      DisplayLabel = 'Tip. Doc'
      FieldName = 'TIPO_DOC'
      Origin = '"FIN_MOVIMENTO_CARTAO"."TIPO_DOC"'
      FixedChar = True
      Size = 3
    end
    object qryEstCartoesTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."TIPO"'
      FixedChar = True
      Size = 3
    end
    object qryEstCartoesPROCESSADO: TIBStringField
      DisplayLabel = 'Processado'
      FieldName = 'PROCESSADO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."PROCESSADO"'
      FixedChar = True
      Size = 1
    end
    object qryEstCartoesPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."PLANILHA"'
    end
  end
  object qryEstMovBanc: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryVerReceberLMTBeforeOpen
    SQL.Strings = (
      'select * from ctb_movimento_contabil ctb'
      'where ctb.cnpj = :cnpj and ctb.planilha = :planilha')
    Left = 256
    Top = 412
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'planilha'
        ParamType = ptUnknown
      end>
    object qryEstMovBancCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."CODIGO"'
      Required = True
    end
    object qryEstMovBancDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."DATA"'
    end
    object qryEstMovBancTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object qryEstMovBancHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."HISTORICO"'
      Size = 100
    end
    object qryEstMovBancVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object qryEstMovBancCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."CONTA"'
    end
    object qryEstMovBancPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."PLANILHA"'
    end
    object qryEstMovBancTIPO_LANCAMENTO: TIBStringField
      DisplayLabel = 'Tp. Lan'#231'amento'
      FieldName = 'TIPO_LANCAMENTO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."TIPO_LANCAMENTO"'
      FixedChar = True
      Size = 1
    end
  end
  object qryEstPlanilha: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryVerReceberLMTBeforeOpen
    SQL.Strings = (
      'select rec.valor, rec.planilha, rec.historico, rec.data,'
      'rec.favorecido from fin_recibos rec'
      'where rec.cnpj = :cnpj and rec.planilha= :planilha')
    Left = 164
    Top = 412
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'planilha'
        ParamType = ptUnknown
      end>
    object qryEstPlanilhaVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"FIN_RECIBOS"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object qryEstPlanilhaPLANILHA: TIntegerField
      FieldName = 'PLANILHA'
      Origin = '"FIN_RECIBOS"."PLANILHA"'
    end
    object qryEstPlanilhaHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"FIN_RECIBOS"."HISTORICO"'
      Size = 100
    end
    object qryEstPlanilhaDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"FIN_RECIBOS"."DATA"'
    end
    object qryEstPlanilhaFAVORECIDO: TIBStringField
      FieldName = 'FAVORECIDO'
      Origin = '"FIN_RECIBOS"."FAVORECIDO"'
      Size = 50
    end
  end
  object EstornaReceber: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'ESTORNA_RECEBER'
    Left = 536
    Top = 239
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PLANILHA'
        ParamType = ptInput
      end>
  end
  object QryMoedas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryVerReceberLMTBeforeOpen
    OnCalcFields = qryPromissoriasCalcFields
    SQL.Strings = (
      'select * from PCD_IMPRIME_PROMISSORIA(:cnpj,:codigo,:tipo)'
      '')
    Left = 26
    Top = 473
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    object StringField1: TStringField
      FieldKind = fkCalculated
      FieldName = 'pc_valor_extenso'
      Size = 100
      Calculated = True
    end
    object StringField2: TStringField
      FieldKind = fkCalculated
      FieldName = 'pc_vencto_extenso'
      Size = 100
      Calculated = True
    end
    object StringField3: TStringField
      FieldKind = fkCalculated
      FieldName = 'pc_mes_extenso'
      Size = 50
      Calculated = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'PSA_CODIGO'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PSA_CODIGO"'
    end
    object DateField1: TDateField
      FieldName = 'VD_DATA'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."VD_DATA"'
    end
    object IntegerField2: TIntegerField
      FieldName = 'VD_CODIGO'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."VD_CODIGO"'
    end
    object IBStringField1: TIBStringField
      FieldName = 'PC_PARCELA'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PC_PARCELA"'
      Size = 6
    end
    object FloatField1: TFloatField
      FieldName = 'PC_VALOR'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PC_VALOR"'
    end
    object DateField2: TDateField
      FieldName = 'PC_VENCTO'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PC_VENCTO"'
    end
    object IntegerField3: TIntegerField
      FieldName = 'PC_DIA'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PC_DIA"'
    end
    object IntegerField4: TIntegerField
      FieldName = 'PC_MES'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PC_MES"'
    end
    object IntegerField5: TIntegerField
      FieldName = 'PC_ANO'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PC_ANO"'
    end
    object IBStringField2: TIBStringField
      FieldName = 'PSA_NOME'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PSA_NOME"'
      Size = 50
    end
    object IBStringField3: TIBStringField
      FieldName = 'PSA_ENDERECO'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PSA_ENDERECO"'
      Size = 100
    end
    object IBStringField4: TIBStringField
      FieldName = 'PSA_BAIRRO'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PSA_BAIRRO"'
      Size = 50
    end
    object IBStringField5: TIBStringField
      FieldName = 'PSA_CIDADE'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PSA_CIDADE"'
      Size = 50
    end
    object IBStringField6: TIBStringField
      FieldName = 'PSA_CNPJ'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PSA_CNPJ"'
      Size = 14
    end
    object IBStringField7: TIBStringField
      FieldName = 'PSA_RG_IE'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PSA_RG_IE"'
      Size = 15
    end
    object IntegerField6: TIntegerField
      FieldName = 'VD_COD_VENDEDOR'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."VD_COD_VENDEDOR"'
    end
    object IBStringField8: TIBStringField
      FieldName = 'PSA_FONE'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."PSA_FONE"'
    end
    object IntegerField7: TIntegerField
      FieldName = 'VD_NF'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."VD_NF"'
    end
    object IntegerField8: TIntegerField
      FieldName = 'VD_CF'
      Origin = '"PCD_IMPRIME_PROMISSORIA"."VD_CF"'
    end
  end
  object Moeda: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from FIN_MOEDA'
      'where utiliza_indexador = '#39'S'#39)
    Left = 164
    Top = 473
    object MoedaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_MOEDA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object MoedaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_MOEDA"."NOME"'
    end
    object MoedaSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = '"FIN_MOEDA"."SIGLA"'
      FixedChar = True
      Size = 3
    end
    object MoedaUTILIZA_INDEXADOR: TIBStringField
      FieldName = 'UTILIZA_INDEXADOR'
      Origin = '"FIN_MOEDA"."UTILIZA_INDEXADOR"'
      FixedChar = True
      Size = 1
    end
  end
  object Cotacoes: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnNewRecord = CotacoesNewRecord
    DeleteSQL.Strings = (
      'delete from FIN_COTACOES'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_COTACOES'
      '  (COD_MOEDA, CODIGO, DATA, VALOR)'
      'values'
      '  (:COD_MOEDA, :CODIGO, :DATA, :VALOR)')
    RefreshSQL.Strings = (
      
        'select ct.*, coalesce(md.nome,'#39#39') Moeda, md.sigla  from fin_cota' +
        'coes ct'
      'inner join fin_moeda md on (ct.cod_moeda = md.codigo)'
      'where'
      ' ct.CODIGO = :CODIGO')
    SelectSQL.Strings = (
      
        'select ct.*, coalesce(md.nome,'#39#39') Moeda, md.sigla  from fin_cota' +
        'coes ct'
      'inner join fin_moeda md on (ct.cod_moeda = md.codigo)')
    ModifySQL.Strings = (
      'update FIN_COTACOES'
      'set'
      '  COD_MOEDA = :COD_MOEDA,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  VALOR = :VALOR'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_FIN_COTACOES_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 100
    Top = 412
    object CotacoesCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_COTACOES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CotacoesCOD_MOEDA: TIntegerField
      DisplayLabel = 'C'#243'd. Moeda'
      FieldName = 'COD_MOEDA'
      Origin = '"FIN_COTACOES"."COD_MOEDA"'
    end
    object CotacoesMOEDA: TIBStringField
      DisplayLabel = 'Moeda'
      FieldName = 'MOEDA'
      ProviderFlags = []
    end
    object CotacoesSIGLA: TIBStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
      Origin = '"FIN_MOEDA"."SIGLA"'
      FixedChar = True
      Size = 3
    end
    object CotacoesDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FIN_COTACOES"."DATA"'
      Required = True
    end
    object CotacoesVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_COTACOES"."VALOR"'
      DisplayFormat = '###,##0.000000'
    end
  end
  object PCD_GERA_COTACOES: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'PCD_GERA_COTACOES'
    Left = 256
    Top = 473
  end
  object SelMoedasCotacoes: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from FIN_MOEDA'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_MOEDA'
      '  (CODIGO, NOME, SIGLA, UTILIZA_INDEXADOR)'
      'values'
      '  (:CODIGO, :NOME, :SIGLA, :UTILIZA_INDEXADOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  SIGLA,'
      '  NOME,'
      '  UTILIZA_INDEXADOR'
      'from FIN_MOEDA '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select md.codigo, md.nome, md.sigla,'
      '(select ct.valor from fin_cotacoes ct'
      
        'where ct.cod_moeda = md.codigo and ct.data = :data_caixa) cotaca' +
        'o'
      'from fin_moeda md')
    ModifySQL.Strings = (
      'update FIN_MOEDA'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  SIGLA = :SIGLA,'
      '  UTILIZA_INDEXADOR = :UTILIZA_INDEXADOR'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_FIN_MOEDA_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 536
    Top = 184
    object SelMoedasCotacoesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_MOEDA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SelMoedasCotacoesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_MOEDA"."NOME"'
    end
    object SelMoedasCotacoesSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = '"FIN_MOEDA"."SIGLA"'
      FixedChar = True
      Size = 3
    end
    object SelMoedasCotacoesCOTACAO: TFloatField
      FieldName = 'COTACAO'
      ProviderFlags = []
    end
  end
  object AcertoReceber: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = AcertoReceberCalcFields
    DeleteSQL.Strings = (
      'delete from fin_contas_receber'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into fin_contas_receber'
      '  (ACT_TOTAL_RECEBER, SELECIONADO)'
      'values'
      '  (:ACT_TOTAL_RECEBER, :SELECIONADO)')
    RefreshSQL.Strings = (
      
        ' select rec.ACT_TOTAL_RECEBER, rec.cnpj, rec.codigo,  rec.pessoa' +
        '_fj, rec.dt_emissao, rec.dt_vencto, rec.docto,'
      
        '         rec.parcela, rec.valor, rec.vlr_parcial,  rec.codigo_vn' +
        ', rec.selecionado,'
      
        '         rec.tipo_docto, rec.juros_parcial, rec.data_ult_baixa, ' +
        'coalesce(rec.arquivo_morto,'#39'N'#39') arq_morto,'
      '         coalesce(cli.taxa_juros,0) taxa_juros,'
      '         rec.COD_INDEXADOR,'
      '         rec.IDX_DATABASE ,'
      '         rec.IDX_COTACAO,'
      '         rec.IDX_QTDE,'
      '         psa.nome_razao nome'
      '         from fin_contas_receber rec'
      
        '         left join glo_clientes cli on (cli.cnpj = rec.cnpj and ' +
        'cli.pessoa_fj = rec.pessoa_fj)'
      
        '         left join glo_pessoas_fj psa on (psa.codigo = rec.pesso' +
        'a_fj and rec.cnpj = psa.cnpj)'
      
        '         left join fat_vendas vd on (rec.cnpj = vd.cnpj and rec.' +
        'codigo_vn = vd.codigo and vd.pessoa_fj = rec.pessoa_fj)'
      'where'
      '  rec.CNPJ = :CNPJ and'
      '  rec.CODIGO = :CODIGO')
    SelectSQL.Strings = (
      
        ' select (rec.idx_qtde - rec.idx_vlr_parcial) saldo_moeda, rec.cn' +
        'pj, rec.codigo,  rec.pessoa_fj, rec.dt_emissao, rec.dt_vencto, r' +
        'ec.docto,'
      
        '         rec.parcela, rec.valor, rec.vlr_parcial,  rec.codigo_vn' +
        ', rec.selecionado,'
      
        '         rec.tipo_docto, rec.juros_parcial, rec.data_ult_baixa, ' +
        'coalesce(rec.arquivo_morto,'#39'N'#39') arq_morto,'
      '         coalesce(cli.taxa_juros,0) taxa_juros,'
      '         rec.COD_INDEXADOR,'
      '         rec.IDX_DATABASE ,'
      '         rec.IDX_COTACAO,'
      '         rec.IDX_QTDE,'
      '         psa.nome_razao nome,'
      
        '         ((/*Calculando varia'#231#227'o da moeda : (Valor - ValorParcia' +
        'l) - ((QtdeIndex -QtdeIndexParcial) * Cotacao_atual)  */'
      '          (rec.valor - coalesce(rec.vlr_parcial,0))'
      '          -'
      '          (/*Calculando a cota'#231#227'o * a qtde de moeda restante'
      '            */'
      
        '           (coalesce(rec.idx_qtde,0) - coalesce(rec.idx_vlr_parc' +
        'ial,0))'
      '           *'
      '           (select coalesce(ct.valor,0) from fin_cotacoes ct'
      
        '            where ct.data = :dt_caixa and ct.cod_moeda = rec.cod' +
        '_indexador'
      '           )'
      '          )'
      '         ) * -1) as variacao'
      '         from fin_contas_receber rec'
      
        '         left join glo_clientes cli on (cli.cnpj = rec.cnpj and ' +
        'cli.pessoa_fj = rec.pessoa_fj)'
      
        '         left join glo_pessoas_fj psa on (psa.codigo = rec.pesso' +
        'a_fj and rec.cnpj = psa.cnpj)'
      
        '         left join fat_vendas vd on (rec.cnpj = vd.cnpj and rec.' +
        'codigo_vn = vd.codigo and vd.pessoa_fj = rec.pessoa_fj)'
      '         where rec.cnpj = :cnpj and rec.pessoa_fj '
      '/*= :pessoa_fj*/')
    ModifySQL.Strings = (
      'update fin_contas_receber'
      'set'
      '  ACT_TOTAL_RECEBER = :ACT_TOTAL_RECEBER,'
      '  SELECIONADO = :SELECIONADO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 646
    Top = 120
    object AcertoReceberCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_CONTAS_RECEBER"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object AcertoReceberCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_CONTAS_RECEBER"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object AcertoReceberPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_CONTAS_RECEBER"."PESSOA_FJ"'
    end
    object AcertoReceberDT_EMISSAO: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"FIN_CONTAS_RECEBER"."DT_EMISSAO"'
    end
    object AcertoReceberDT_VENCTO: TDateTimeField
      DisplayLabel = 'Dt. Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"FIN_CONTAS_RECEBER"."DT_VENCTO"'
    end
    object AcertoReceberDOCTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"FIN_CONTAS_RECEBER"."DOCTO"'
    end
    object AcertoReceberPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"FIN_CONTAS_RECEBER"."PARCELA"'
      Size = 6
    end
    object AcertoReceberVALOR: TFloatField
      DisplayLabel = 'Vlr. Nominal'
      FieldName = 'VALOR'
      Origin = '"FIN_CONTAS_RECEBER"."VALOR"'
    end
    object AcertoReceberVLR_PARCIAL: TFloatField
      DisplayLabel = 'Vlr. Baixado'
      FieldName = 'VLR_PARCIAL'
      Origin = '"FIN_CONTAS_RECEBER"."VLR_PARCIAL"'
    end
    object AcertoReceberCODIGO_VN: TIntegerField
      DisplayLabel = 'C'#243'd. Faturamento'
      FieldName = 'CODIGO_VN'
      Origin = '"FIN_CONTAS_RECEBER"."CODIGO_VN"'
    end
    object AcertoReceberSELECIONADO: TIBStringField
      DisplayLabel = 'X'
      FieldName = 'SELECIONADO'
      Origin = '"FIN_CONTAS_RECEBER"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object AcertoReceberTIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tp. Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"FIN_CONTAS_RECEBER"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object AcertoReceberJUROS_PARCIAL: TFloatField
      FieldName = 'JUROS_PARCIAL'
      Origin = '"FIN_CONTAS_RECEBER"."JUROS_PARCIAL"'
    end
    object AcertoReceberDATA_ULT_BAIXA: TDateTimeField
      DisplayLabel = 'Dt. Ult. Baixa'
      FieldName = 'DATA_ULT_BAIXA'
      Origin = '"FIN_CONTAS_RECEBER"."DATA_ULT_BAIXA"'
    end
    object AcertoReceberARQ_MORTO: TIBStringField
      FieldName = 'ARQ_MORTO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object AcertoReceberTAXA_JUROS: TFloatField
      FieldName = 'TAXA_JUROS'
      ProviderFlags = []
    end
    object AcertoReceberCOD_INDEXADOR: TIntegerField
      DisplayLabel = 'C'#243'd. Indexador'
      FieldName = 'COD_INDEXADOR'
      Origin = '"FIN_CONTAS_RECEBER"."COD_INDEXADOR"'
    end
    object AcertoReceberIDX_DATABASE: TDateField
      DisplayLabel = 'Idx. Dt. Base'
      FieldName = 'IDX_DATABASE'
      Origin = '"FIN_CONTAS_RECEBER"."IDX_DATABASE"'
    end
    object AcertoReceberIDX_COTACAO: TFloatField
      DisplayLabel = 'Idx. Cota'#231#227'o'
      FieldName = 'IDX_COTACAO'
      Origin = '"FIN_CONTAS_RECEBER"."IDX_COTACAO"'
    end
    object AcertoReceberIDX_QTDE: TFloatField
      DisplayLabel = 'Idx. Qtde'
      FieldName = 'IDX_QTDE'
      Origin = '"FIN_CONTAS_RECEBER"."IDX_QTDE"'
    end
    object AcertoReceberNOME: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object AcertoReceberSldNominal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Sld. Nominal'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object AcertoReceberJuros_Calculados: TFloatField
      DisplayLabel = 'Juros Calculados'
      FieldKind = fkCalculated
      FieldName = 'Juros_Calculados'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object AcertoReceberTotal_Geral: TFloatField
      DisplayLabel = 'Ttl. Geral'
      FieldKind = fkCalculated
      FieldName = 'Total_Geral'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object AcertoReceberAtraso: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Atraso'
      Calculated = True
    end
    object AcertoReceberSALDO_MOEDA: TFloatField
      FieldName = 'SALDO_MOEDA'
      ProviderFlags = []
    end
    object AcertoReceberVARIACAO: TFloatField
      FieldName = 'VARIACAO'
      ProviderFlags = []
    end
  end
  object AcertoPagar: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = AcertoPagarCalcFields
    DeleteSQL.Strings = (
      'delete from fin_contas_pagar'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into fin_contas_pagar'
      '  (ACT_TOTAL_PAGAR, SELECIONADO)'
      'values'
      '  (:ACT_TOTAL_PAGAR, :SELECIONADO)')
    RefreshSQL.Strings = (
      
        'select pgr.ACT_TOTAL_PAGAR, pgr.cnpj, pgr.codigo,  pgr.pessoa_fj' +
        ', pgr.dt_emissao, pgr.dt_vencto, pgr.docto,'
      
        '         pgr.parcela, pgr.valor, pgr.vlr_parcial,  pgr.codigo_vn' +
        ', pgr.selecionado,'
      '         pgr.tipo_docto, pgr.dt_ultima_baixa,'
      '         pgr.COD_INDEXADOR,'
      '         pgr.IDX_DATABASE ,'
      '         pgr.IDX_COTACAO,'
      '         pgr.IDX_QTDE,'
      '         psa.nome_razao nome'
      '         from fin_contas_pagar pgr'
      
        '         left join glo_clientes cli on (cli.cnpj = pgr.cnpj and ' +
        'cli.pessoa_fj = pgr.pessoa_fj)'
      
        '         left join glo_pessoas_fj psa on (psa.codigo = pgr.pesso' +
        'a_fj and pgr.cnpj = psa.cnpj)'
      
        '         left join fat_vendas vd on (pgr.cnpj = vd.cnpj and pgr.' +
        'codigo_vn = vd.codigo and vd.pessoa_fj = pgr.pessoa_fj)'
      '        where'
      ' pgr.CNPJ = :CNPJ and'
      '  pgr.CODIGO = :CODIGO')
    SelectSQL.Strings = (
      
        'select pgr.ACT_TOTAL_PAGAR, pgr.cnpj, pgr.codigo,  pgr.pessoa_fj' +
        ', pgr.dt_emissao, pgr.dt_vencto, pgr.docto,'
      
        '         pgr.parcela, pgr.valor, pgr.vlr_parcial,  pgr.codigo_vn' +
        ', pgr.selecionado,'
      '         pgr.tipo_docto, pgr.dt_ultima_baixa,'
      '         pgr.COD_INDEXADOR,'
      '         pgr.IDX_DATABASE ,'
      '         pgr.IDX_COTACAO,'
      '         pgr.IDX_QTDE,'
      '         psa.nome_razao nome,'
      
        '         ((/*Calculando varia'#231#227'o da moeda : (Valor - ValorParcia' +
        'l) - ((QtdeIndex -QtdeIndexParcial) * Cotacao_atual)  */'
      '          (pgr.valor - coalesce(pgr.vlr_parcial,0))'
      '          -'
      '          (/*Calculando a cota'#231#227'o * a qtde de moeda restante'
      '            */'
      
        '           (coalesce(pgr.idx_qtde,0) - coalesce(pgr.idx_vlr_parc' +
        'ial,0))'
      '           *'
      '           (select coalesce(ct.valor,0) from fin_cotacoes ct'
      
        '            where ct.data = :dt_caixa and ct.cod_moeda = pgr.cod' +
        '_indexador'
      '           )'
      '          )'
      '         ) * -1) as variacao'
      '         from fin_contas_pagar pgr'
      
        '         left join glo_clientes cli on (cli.cnpj = pgr.cnpj and ' +
        'cli.pessoa_fj = pgr.pessoa_fj)'
      
        '         left join glo_pessoas_fj psa on (psa.codigo = pgr.pesso' +
        'a_fj and pgr.cnpj = psa.cnpj)'
      
        '         left join fat_vendas vd on (pgr.cnpj = vd.cnpj and pgr.' +
        'codigo_vn = vd.codigo and vd.pessoa_fj = pgr.pessoa_fj)'
      '         where pgr.cnpj = :cnpj and pgr.pessoa_fj '
      '/*= :pessoa_fj*/')
    ModifySQL.Strings = (
      'update fin_contas_pagar'
      'set'
      '  ACT_TOTAL_PAGAR = :ACT_TOTAL_PAGAR,'
      '  SELECIONADO = :SELECIONADO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 646
    Top = 412
    object AcertoPagarAtraso: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Atraso'
      Calculated = True
    end
    object AcertoPagarTotal_Geral: TFloatField
      DisplayLabel = 'Ttl. Geral'
      FieldKind = fkCalculated
      FieldName = 'Total_Geral'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object AcertoPagarJuros_Calculados: TFloatField
      DisplayLabel = 'Juros Calculados'
      FieldKind = fkCalculated
      FieldName = 'Juros_Calculados'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object AcertoPagarSldNominal: TFloatField
      DisplayLabel = 'Saldo Nominal'
      FieldKind = fkCalculated
      FieldName = 'SldNominal'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object AcertoPagarCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_CONTAS_PAGAR"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object AcertoPagarCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_CONTAS_PAGAR"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object AcertoPagarPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Pessoa'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_CONTAS_PAGAR"."PESSOA_FJ"'
    end
    object AcertoPagarDT_EMISSAO: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"FIN_CONTAS_PAGAR"."DT_EMISSAO"'
    end
    object AcertoPagarDT_VENCTO: TDateTimeField
      DisplayLabel = 'Dt. Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"FIN_CONTAS_PAGAR"."DT_VENCTO"'
    end
    object AcertoPagarDOCTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"FIN_CONTAS_PAGAR"."DOCTO"'
    end
    object AcertoPagarPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"FIN_CONTAS_PAGAR"."PARCELA"'
      Size = 6
    end
    object AcertoPagarVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_CONTAS_PAGAR"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object AcertoPagarVLR_PARCIAL: TFloatField
      DisplayLabel = 'Vlr. Baixado'
      FieldName = 'VLR_PARCIAL'
      Origin = '"FIN_CONTAS_PAGAR"."VLR_PARCIAL"'
      DisplayFormat = '###,##0.00'
    end
    object AcertoPagarCODIGO_VN: TIntegerField
      DisplayLabel = 'C'#243'd. Venda'
      FieldName = 'CODIGO_VN'
      Origin = '"FIN_CONTAS_PAGAR"."CODIGO_VN"'
    end
    object AcertoPagarSELECIONADO: TIBStringField
      DisplayLabel = 'X'
      FieldName = 'SELECIONADO'
      Origin = '"FIN_CONTAS_PAGAR"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object AcertoPagarTIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tp. Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"FIN_CONTAS_PAGAR"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object AcertoPagarDT_ULTIMA_BAIXA: TDateTimeField
      DisplayLabel = 'Dt. Ult. Baixa'
      FieldName = 'DT_ULTIMA_BAIXA'
      Origin = '"FIN_CONTAS_PAGAR"."DT_ULTIMA_BAIXA"'
    end
    object AcertoPagarCOD_INDEXADOR: TIntegerField
      DisplayLabel = 'C'#243'd. Indexador'
      FieldName = 'COD_INDEXADOR'
      Origin = '"FIN_CONTAS_PAGAR"."COD_INDEXADOR"'
    end
    object AcertoPagarIDX_DATABASE: TDateField
      DisplayLabel = 'Idx. Dt. Base'
      FieldName = 'IDX_DATABASE'
      Origin = '"FIN_CONTAS_PAGAR"."IDX_DATABASE"'
    end
    object AcertoPagarIDX_COTACAO: TFloatField
      DisplayLabel = 'Idx. Cota'#231#227'o'
      FieldName = 'IDX_COTACAO'
      Origin = '"FIN_CONTAS_PAGAR"."IDX_COTACAO"'
      DisplayFormat = '###,##0.00'
    end
    object AcertoPagarIDX_QTDE: TFloatField
      DisplayLabel = 'Idx. Qtde'
      FieldName = 'IDX_QTDE'
      Origin = '"FIN_CONTAS_PAGAR"."IDX_QTDE"'
      DisplayFormat = '###,##0.00'
    end
    object AcertoPagarNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object AcertoPagarACT_TOTAL_PAGAR: TFloatField
      DisplayLabel = 'Ttl. Pagar'
      FieldName = 'ACT_TOTAL_PAGAR'
      Origin = '"FIN_CONTAS_PAGAR"."ACT_TOTAL_PAGAR"'
      DisplayFormat = '###,##0.00'
    end
    object AcertoPagarVARIACAO: TFloatField
      FieldName = 'VARIACAO'
      ProviderFlags = []
    end
  end
  object mtbAcertoReceber: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 646
    Top = 184
    object mtbAcertoReceberCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object mtbAcertoReceberPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Pessoa'
      FieldName = 'PESSOA_FJ'
      ReadOnly = True
    end
    object mtbAcertoReceberDT_EMISSAO: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      ReadOnly = True
    end
    object mtbAcertoReceberDT_VENCTO: TDateField
      DisplayLabel = 'Vencto'
      FieldName = 'DT_VENCTO'
      ReadOnly = True
    end
    object mtbAcertoReceberDOCTO: TStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      ReadOnly = True
    end
    object mtbAcertoReceberPARCELA: TStringField
      DisplayLabel = 'Parc.'
      FieldName = 'PARCELA'
      ReadOnly = True
      Size = 6
    end
    object mtbAcertoReceberVALOR: TFloatField
      DisplayLabel = 'Vlr. Nominal'
      FieldName = 'VALOR'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoReceberVLR_PARCIAL: TFloatField
      DisplayLabel = 'Vlr. Baixado'
      FieldName = 'VLR_PARCIAL'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoReceberCODIGO_VN: TIntegerField
      DisplayLabel = 'C'#243'd. Fat.'
      FieldName = 'CODIGO_VN'
      ReadOnly = True
    end
    object mtbAcertoReceberSELECIONADO: TStringField
      DisplayLabel = 'X'
      FieldName = 'SELECIONADO'
      ReadOnly = True
      OnValidate = mtbAcertoReceberSELECIONADOValidate
      Size = 1
    end
    object mtbAcertoReceberTIPO_DOCTO: TStringField
      DisplayLabel = 'Tp. Docto'
      FieldName = 'TIPO_DOCTO'
      ReadOnly = True
      Size = 3
    end
    object mtbAcertoReceberJUROS_PARCIAL: TFloatField
      FieldName = 'JUROS_PARCIAL'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoReceberDATA_ULT_BAIXA: TDateField
      DisplayLabel = 'Ult. Baixa'
      FieldName = 'DATA_ULT_BAIXA'
      ReadOnly = True
    end
    object mtbAcertoReceberARQ_MORTO: TStringField
      DisplayLabel = 'Arq. Morto'
      FieldName = 'ARQ_MORTO'
      ReadOnly = True
      Size = 1
    end
    object mtbAcertoReceberTAXA_JUROS: TFloatField
      DisplayLabel = 'Tx. Juros'
      FieldName = 'TAXA_JUROS'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoReceberCOD_INDEXADOR: TIntegerField
      DisplayLabel = 'C'#243'd. Index'
      FieldName = 'COD_INDEXADOR'
      ReadOnly = True
    end
    object mtbAcertoReceberIDX_DATABASE: TDateField
      DisplayLabel = 'Idx. Data'
      FieldName = 'IDX_DATABASE'
      ReadOnly = True
    end
    object mtbAcertoReceberIDX_COTACAO: TFloatField
      DisplayLabel = 'Idx. Cota'#231#227'o'
      FieldName = 'IDX_COTACAO'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoReceberIDX_QTDE: TFloatField
      DisplayLabel = 'Idx. Qtde'
      FieldName = 'IDX_QTDE'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoReceberNOME: TStringField
      DisplayLabel = 'Parceiro'
      FieldName = 'NOME'
      ReadOnly = True
      Size = 50
    end
    object mtbAcertoReceberSldNominal: TFloatField
      DisplayLabel = 'Sld. Nominal'
      FieldName = 'SldNominal'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoReceberJuros_Calculados: TFloatField
      DisplayLabel = 'Juros. Calc'
      FieldName = 'Juros_Calculados'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoReceberAtraso: TIntegerField
      FieldName = 'Atraso'
      ReadOnly = True
    end
    object mtbAcertoReceberJuros: TFloatField
      FieldName = 'Juros'
      OnChange = mtbAcertoReceberJurosChange
      OnValidate = mtbAcertoReceberJurosValidate
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoReceberDesconto: TFloatField
      FieldName = 'Desconto'
      OnChange = mtbAcertoReceberJurosChange
      OnValidate = mtbAcertoReceberJurosValidate
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoReceberVariacao: TFloatField
      DisplayLabel = 'Varia'#231#227'o'
      FieldName = 'Variacao'
      OnChange = mtbAcertoReceberJurosChange
      OnValidate = mtbAcertoReceberJurosValidate
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoReceberTotal_Geral: TFloatField
      DisplayLabel = 'Ttl. Geral'
      FieldName = 'Total_Geral'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoReceberMultas: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'Multas'
      OnChange = mtbAcertoReceberJurosChange
      OnValidate = mtbAcertoReceberJurosValidate
    end
    object mtbAcertoReceberTotal_Baixar: TFloatField
      DisplayLabel = 'Ttl. Baixar'
      FieldName = 'Total_Baixar'
      OnValidate = mtbAcertoReceberTotal_BaixarValidate
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoReceberold_Juros: TFloatField
      FieldName = 'old_Juros'
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoReceberold_Multa: TFloatField
      FieldName = 'old_Multa'
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoReceberold_Variacao: TFloatField
      FieldName = 'old_Variacao'
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoReceberold_desconto: TFloatField
      FieldName = 'old_desconto'
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoReceberOld_Total_Baixar: TFloatField
      FieldName = 'Old_Total_Baixar'
    end
    object mtbAcertoReceberSALDO_MOEDA: TFloatField
      FieldName = 'SALDO_MOEDA'
    end
  end
  object mtbAcertoPagar: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 646
    Top = 296
    object mtbAcertoPagarCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object mtbAcertoPagarDT_VENCTO: TDateField
      DisplayLabel = 'Vencto'
      FieldName = 'DT_VENCTO'
      ReadOnly = True
    end
    object mtbAcertoPagarPARCELA: TStringField
      DisplayLabel = 'Parc.'
      FieldName = 'PARCELA'
      ReadOnly = True
      Size = 6
    end
    object mtbAcertoPagarVALOR: TFloatField
      DisplayLabel = 'Vlr. Nominal'
      FieldName = 'VALOR'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoPagarVLR_PARCIAL: TFloatField
      DisplayLabel = 'Vlr. Baixado'
      FieldName = 'VLR_PARCIAL'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoPagarDATA_ULT_BAIXA: TDateField
      DisplayLabel = 'Ult. Baixa'
      FieldName = 'DATA_ULT_BAIXA'
      ReadOnly = True
    end
    object mtbAcertoPagarSldNominal: TFloatField
      DisplayLabel = 'Sld. Nominal'
      FieldName = 'SldNominal'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoPagarTotal_Geral: TFloatField
      DisplayLabel = 'Ttl. Geral'
      FieldName = 'Total_Geral'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoPagarPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      ReadOnly = True
    end
    object mtbAcertoPagarDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
      ReadOnly = True
    end
    object mtbAcertoPagarDOCTO: TStringField
      FieldName = 'DOCTO'
      ReadOnly = True
    end
    object mtbAcertoPagarCODIGO_VN: TIntegerField
      FieldName = 'CODIGO_VN'
      ReadOnly = True
    end
    object mtbAcertoPagarSELECIONADO: TStringField
      DisplayLabel = 'X'
      FieldName = 'SELECIONADO'
      ReadOnly = True
      Size = 1
    end
    object mtbAcertoPagarTIPO_DOCTO: TStringField
      FieldName = 'TIPO_DOCTO'
      ReadOnly = True
      Size = 3
    end
    object mtbAcertoPagarJUROS_PARCIAL: TFloatField
      FieldName = 'JUROS_PARCIAL'
      ReadOnly = True
    end
    object mtbAcertoPagarARQ_MORTO: TStringField
      FieldName = 'ARQ_MORTO'
      ReadOnly = True
      Size = 1
    end
    object mtbAcertoPagarTAXA_JUROS: TFloatField
      FieldName = 'TAXA_JUROS'
      ReadOnly = True
    end
    object mtbAcertoPagarCOD_INDEXADOR: TIntegerField
      FieldName = 'COD_INDEXADOR'
      ReadOnly = True
    end
    object mtbAcertoPagarIDX_DATABASE: TDateField
      FieldName = 'IDX_DATABASE'
      ReadOnly = True
    end
    object mtbAcertoPagarIDX_COTACAO: TFloatField
      FieldName = 'IDX_COTACAO'
      ReadOnly = True
    end
    object mtbAcertoPagarIDX_QTDE: TFloatField
      FieldName = 'IDX_QTDE'
      ReadOnly = True
    end
    object mtbAcertoPagarNOME: TStringField
      DisplayLabel = 'Parceiro'
      FieldName = 'NOME'
      ReadOnly = True
      Size = 50
    end
    object mtbAcertoPagarJuros_Calculados: TFloatField
      FieldName = 'Juros_Calculados'
      ReadOnly = True
    end
    object mtbAcertoPagarAtraso: TIntegerField
      FieldName = 'Atraso'
      ReadOnly = True
    end
    object mtbAcertoPagarTotal_Baixar: TFloatField
      DisplayLabel = 'Ttl. Baixar'
      FieldName = 'Total_Baixar'
      OnValidate = mtbAcertoPagarTotal_BaixarValidate
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoPagarJUROS: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      OnChange = mtbAcertoPagarJUROSChange
      OnValidate = mtbAcertoPagarJUROSValidate
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoPagarVARIACAO: TFloatField
      DisplayLabel = 'Varia'#231#227'o'
      FieldName = 'VARIACAO'
      OnChange = mtbAcertoPagarJUROSChange
      OnValidate = mtbAcertoPagarJUROSValidate
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoPagarDESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      OnChange = mtbAcertoPagarJUROSChange
      OnValidate = mtbAcertoPagarJUROSValidate
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoPagarMULTAS: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'MULTAS'
      OnChange = mtbAcertoPagarJUROSChange
      OnValidate = mtbAcertoPagarJUROSValidate
      DisplayFormat = '###,##0.00'
    end
    object mtbAcertoPagarOld_Multa: TFloatField
      FieldName = 'Old_Multa'
    end
    object mtbAcertoPagarOld_Juros: TFloatField
      FieldName = 'Old_Juros'
    end
    object mtbAcertoPagarOld_Variacao: TFloatField
      FieldName = 'Old_Variacao'
    end
    object mtbAcertoPagarOld_Desconto: TFloatField
      FieldName = 'Old_Desconto'
    end
    object mtbAcertoPagarSALDO_MOEDA: TFloatField
      FieldName = 'SALDO_MOEDA'
    end
    object mtbAcertoPagarOld_Total_Baixar: TFloatField
      FieldName = 'Old_Total_Baixar'
    end
  end
  object PCD_ACT_RECEBER: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'PCD_ACT_RECEBER'
    Left = 646
    Top = 239
  end
  object PCD_ACT_PAGAR: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'PCD_ACT_PAGAR'
    Left = 646
    Top = 352
  end
  object QryVerCotacao: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryVerReceberLMTBeforeOpen
    OnCalcFields = OnCalcDataSetReceber
    SQL.Strings = (
      'select count(*) existe from fin_contas_receber rec'
      'inner join fin_moeda md on (rec.cod_indexador = md.codigo)'
      'where  rec.cnpj = :cnpj'
      
        'and 0 = (select count(*) from fin_cotacoes ct where ct.data = :d' +
        'ata and ct.cod_moeda = rec.cod_indexador)'
      'and rec.pessoa_fj '
      ''
      '')
    Left = 436
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end>
    object QryVerCotacaoEXISTE: TIntegerField
      FieldName = 'EXISTE'
      ProviderFlags = []
    end
  end
  object Moeda2: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from FIN_MOEDA'
      'where utiliza_indexador = '#39'S'#39)
    Left = 100
    Top = 473
    object Moeda2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_MOEDA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Moeda2SIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = '"FIN_MOEDA"."SIGLA"'
      FixedChar = True
      Size = 3
    end
    object Moeda2NOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_MOEDA"."NOME"'
    end
    object Moeda2UTILIZA_INDEXADOR: TIBStringField
      FieldName = 'UTILIZA_INDEXADOR'
      Origin = '"FIN_MOEDA"."UTILIZA_INDEXADOR"'
      FixedChar = True
      Size = 1
    end
  end
  object CM2_FATURAMENTOS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select vd2.codigo, psa.nome_razao, vd2.total, vd2.desc_acres,'
      
        '(vd2.total + vd2.desc_acres) Total_Liquido, vd2.natureza, vd2.cn' +
        'pj,'
      
        '                                (select sum(vdi.vlr_lucro_item +' +
        ' ('
      '                                     ('
      '                                      ('
      '                                       ('
      '                                        ('
      
        '                                         vdi.quantidade * vdi.pr' +
        'c_unitario'
      '                                        )'
      '                                        * 100'
      '                                       )'
      '                                       /'
      '                                       vd.total'
      '                                      )'
      '                                      *'
      '                                      vd.desc_acres'
      '                                     )'
      '                                     /'
      '                                     100'
      '                                    )'
      '                                   ) from fat_vendas_itens vdi'
      
        '                                     inner join fat_vendas vd on' +
        ' (vd.cnpj = vdi.cnpj and vdi.codigo = vd.codigo)'
      
        '                                  where vdi.cnpj = vd2.cnpj and ' +
        'vdi.codigo = vd2.codigo)'
      '                                  lucro_faturamento,'
      '                                  ('
      
        '                                    (select sum(vdi.vlr_lucro_it' +
        'em + ('
      '                                     ('
      '                                      ('
      '                                       ('
      '                                        ('
      
        '                                         vdi.quantidade * vdi.pr' +
        'c_unitario'
      '                                        )'
      '                                        * 100'
      '                                       )'
      '                                       /'
      '                                       vd.total'
      '                                      )'
      '                                      *'
      '                                      vd.desc_acres'
      '                                     )'
      '                                     /'
      '                                     100'
      '                                    )'
      '                                   ) from fat_vendas_itens vdi'
      
        '                                     inner join fat_vendas vd on' +
        ' (vd.cnpj = vdi.cnpj and vdi.codigo = vd.codigo)'
      
        '                                     where vdi.cnpj = vd2.cnpj a' +
        'nd vdi.codigo = vd2.codigo)'
      '                                  *'
      
        '                                 (select (coalesce(emp.cmd_vdt_p' +
        'ct,20)/100.00) from sis_empresas emp where emp.cnpj = :cnpj)'
      '                                 ) com_faturamento'
      ''
      'from fat_vendas vd2'
      
        'inner join glo_pessoas_fj psa on (psa.codigo = vd2.pessoa_fj and' +
        ' psa.cnpj = vd2.cnpj)'
      'where vd2.cnpj = :cnpj and vd2.codigo = :cod_venda')
    Left = 646
    Top = 63
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_venda'
        ParamType = ptUnknown
      end>
    object CM2_FATURAMENTOSCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CM2_FATURAMENTOSNOME_RAZAO: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object CM2_FATURAMENTOSTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"FAT_VENDAS"."TOTAL"'
    end
    object CM2_FATURAMENTOSDESC_ACRES: TFloatField
      DisplayLabel = 'Desc/Acr'#233'sc'
      FieldName = 'DESC_ACRES'
      Origin = '"FAT_VENDAS"."DESC_ACRES"'
    end
    object CM2_FATURAMENTOSNATUREZA: TIntegerField
      DisplayLabel = 'CFOP'
      FieldName = 'NATUREZA'
      Origin = '"FAT_VENDAS"."NATUREZA"'
    end
    object CM2_FATURAMENTOSCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object CM2_FATURAMENTOSTOTAL_LIQUIDO: TFloatField
      DisplayLabel = 'Ttl. L'#237'quido'
      FieldName = 'TOTAL_LIQUIDO'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object CM2_FATURAMENTOSLUCRO_FATURAMENTO: TFloatField
      DisplayLabel = 'Ttl. Lucro'
      FieldName = 'LUCRO_FATURAMENTO'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object CM2_FATURAMENTOSCOM_FATURAMENTO: TFloatField
      DisplayLabel = 'Ttl. Comiss'#227'o'
      FieldName = 'COM_FATURAMENTO'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
  end
  object CM2_COMISSAO_PARC: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = CM2_COMISSAO_PARCBeforeOpen
    DeleteSQL.Strings = (
      'delete from cm2_comissao_parc'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into cm2_comissao_parc'
      '  (SELECIONADO)'
      'values'
      '  (:SELECIONADO)')
    RefreshSQL.Strings = (
      'select cm2.CNPJ ,'
      '    cm2.CODIGO ,'
      '    cm2.COD_VENDA,'
      '    cm2.COD_PESSOA,'
      '    cm2.COD_RECEBER,'
      '    cm2.COD_PAGAR ,'
      '    cm2.VALOR ,'
      '    cm2.CM_PCT,'
      '    cm2.DT_GERACAO ,'
      '    cm2.STATUS ,'
      '    cm2.COD_BX_RECEBER  ,'
      '    cm2.COD_BX_PAGAR,'
      '    vd.data dt_faturamento,'
      '    vd.data_caixa dt_cx_faturamento,'
      '    pgt.codigo cod_forma, pgt.nome forma_pgto,'
      '    psa.nome_razao cliente,'
      '    psa2.nome_razao Agente,'
      '    (nat.codigo||'#39'-'#39'||nat.nome) CFOP,'
      '   cm2.selecionado,'
      '   vd.num_nf,'
      '   (select  sum(cm3.VALOR) valor'
      '    from cm2_comissao_parc cm3'
      
        '    left join fat_vendas vd3 on (vd3.cnpj = cm3.cnpj and cm3.cod' +
        '_venda = vd3.codigo)'
      
        '    where cm3.cnpj = cm2.cnpj and cm3.status = '#39'P'#39' and cm3.cod_v' +
        'enda = cm2.cod_venda and cm3.cod_pessoa = cm2.cod_pessoa)'
      '    total_provisionado,'
      '      ('
      '      cm2.VALOR'
      '      -'
      '      ( select  sum(cm3.VALOR)'
      '        from cm2_comissao_parc cm3'
      
        '        left join fat_vendas vd3 on (vd3.cnpj = cm3.cnpj and cm3' +
        '.cod_venda = vd3.codigo)'
      
        '        where cm3.cnpj = cm2.cnpj and cm3.status = '#39'P'#39' and cm3.c' +
        'od_venda = cm2.cod_venda and cm3.cod_pessoa = cm2.cod_pessoa'
      '       )'
      '      ) saldo_comissao'
      ''
      'from cm2_comissao_parc cm2'
      
        'left join fat_vendas vd on (vd.cnpj = cm2.cnpj and cm2.cod_venda' +
        ' = vd.codigo)'
      
        'inner join est_natureza nat on (vd.natureza = nat.codigo and vd.' +
        'cnpj = nat.cnpj)'
      
        'inner join fin_formas_pagto pgt on (vd.cnpj = pgt.cnpj and vd.fo' +
        'rma_pgto = pgt.codigo)'
      
        'inner join glo_pessoas_fj psa on (vd.pessoa_fj = psa.codigo and ' +
        'vd.cnpj = psa.cnpj)'
      
        'inner join glo_pessoas_fj psa2 on (cm2.cod_pessoa = psa2.codigo ' +
        'and cm2.cnpj = psa2.cnpj)'
      'where  cm2.CNPJ = :CNPJ and'
      '  cm2.CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select cm2.CNPJ ,'
      '    cm2.CODIGO ,'
      '    cm2.COD_VENDA,'
      '    cm2.COD_PESSOA,'
      '    cm2.COD_RECEBER,'
      '    cm2.COD_PAGAR ,'
      '    cm2.VALOR ,'
      '    cm2.CM_PCT,'
      '    cm2.DT_GERACAO ,'
      '    cm2.STATUS ,'
      '    cm2.COD_BX_RECEBER  ,'
      '    cm2.COD_BX_PAGAR,'
      '    vd.data dt_faturamento,'
      '    vd.data_caixa dt_cx_faturamento,'
      '    pgt.codigo cod_forma, pgt.nome forma_pgto,'
      '    psa.nome_razao cliente,'
      '    psa2.nome_razao Agente,'
      '    (nat.codigo||'#39'-'#39'||nat.nome) CFOP,'
      '   cm2.selecionado,'
      '   vd.num_nf,'
      '   (select  sum(cm3.VALOR) valor'
      '    from cm2_comissao_parc cm3'
      
        '    left join fat_vendas vd3 on (vd3.cnpj = cm3.cnpj and cm3.cod' +
        '_venda = vd3.codigo)'
      
        '    where cm3.cnpj = cm2.cnpj and cm3.status = '#39'P'#39' and cm3.cod_v' +
        'enda = cm2.cod_venda and cm3.cod_pessoa = cm2.cod_pessoa)'
      '    total_provisionado,'
      '      ('
      '      cm2.VALOR'
      '      -'
      '      ( select  sum(cm3.VALOR)'
      '        from cm2_comissao_parc cm3'
      
        '        left join fat_vendas vd3 on (vd3.cnpj = cm3.cnpj and cm3' +
        '.cod_venda = vd3.codigo)'
      
        '        where cm3.cnpj = cm2.cnpj and cm3.status = '#39'P'#39' and cm3.c' +
        'od_venda = cm2.cod_venda and cm3.cod_pessoa = cm2.cod_pessoa'
      '       )'
      '      ) saldo_comissao'
      ''
      'from cm2_comissao_parc cm2'
      
        'left join fat_vendas vd on (vd.cnpj = cm2.cnpj and cm2.cod_venda' +
        ' = vd.codigo)'
      
        'inner join est_natureza nat on (vd.natureza = nat.codigo and vd.' +
        'cnpj = nat.cnpj)'
      
        'inner join fin_formas_pagto pgt on (vd.cnpj = pgt.cnpj and vd.fo' +
        'rma_pgto = pgt.codigo)'
      
        'inner join glo_pessoas_fj psa on (vd.pessoa_fj = psa.codigo and ' +
        'vd.cnpj = psa.cnpj)'
      
        'inner join glo_pessoas_fj psa2 on (cm2.cod_pessoa = psa2.codigo ' +
        'and cm2.cnpj = psa2.cnpj)'
      
        'where cm2.cnpj = :cnpj and coalesce(vd.fechada,'#39'N'#39') = '#39'S'#39' and co' +
        'alesce(vd.enviada_cx,'#39'N'#39') = '#39'S'#39' and coalesce(vd.cancelada,'#39#39') = ' +
        #39'N'#39
      'and coalesce(nat.paga_comissao,'#39'N'#39') = '#39'S'#39)
    ModifySQL.Strings = (
      'update cm2_comissao_parc'
      'set'
      '  SELECIONADO = :SELECIONADO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 646
    Top = 6
    object CM2_COMISSAO_PARCCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CM2_COMISSAO_PARC"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object CM2_COMISSAO_PARCCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CM2_COMISSAO_PARC"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CM2_COMISSAO_PARCCOD_VENDA: TIntegerField
      DisplayLabel = 'C'#243'd. Faturamento'
      FieldName = 'COD_VENDA'
      Origin = '"CM2_COMISSAO_PARC"."COD_VENDA"'
    end
    object CM2_COMISSAO_PARCCOD_PESSOA: TIntegerField
      DisplayLabel = 'C'#243'd. Agente'
      FieldName = 'COD_PESSOA'
      Origin = '"CM2_COMISSAO_PARC"."COD_PESSOA"'
    end
    object CM2_COMISSAO_PARCCOD_RECEBER: TIntegerField
      DisplayLabel = 'C'#243'd. Receber'
      FieldName = 'COD_RECEBER'
      Origin = '"CM2_COMISSAO_PARC"."COD_RECEBER"'
    end
    object CM2_COMISSAO_PARCCOD_PAGAR: TIntegerField
      DisplayLabel = 'C'#243'd. Pagar'
      FieldName = 'COD_PAGAR'
      Origin = '"CM2_COMISSAO_PARC"."COD_PAGAR"'
    end
    object CM2_COMISSAO_PARCVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"CM2_COMISSAO_PARC"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object CM2_COMISSAO_PARCCM_PCT: TFloatField
      DisplayLabel = 'PCT(%)'
      FieldName = 'CM_PCT'
      Origin = '"CM2_COMISSAO_PARC"."CM_PCT"'
      DisplayFormat = '###,##0.00'
    end
    object CM2_COMISSAO_PARCDT_GERACAO: TDateField
      DisplayLabel = 'Dt. Gera'#231#227'o'
      FieldName = 'DT_GERACAO'
      Origin = '"CM2_COMISSAO_PARC"."DT_GERACAO"'
    end
    object CM2_COMISSAO_PARCSTATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = '"CM2_COMISSAO_PARC"."STATUS"'
      OnGetText = CM2_COMISSAO_PARCSTATUSGetText
      FixedChar = True
      Size = 1
    end
    object CM2_COMISSAO_PARCCOD_BX_RECEBER: TIntegerField
      DisplayLabel = 'C'#243'd. Baixa Receber'
      FieldName = 'COD_BX_RECEBER'
      Origin = '"CM2_COMISSAO_PARC"."COD_BX_RECEBER"'
    end
    object CM2_COMISSAO_PARCCOD_BX_PAGAR: TIntegerField
      DisplayLabel = 'C'#243'd. Baixa Pagar'
      FieldName = 'COD_BX_PAGAR'
      Origin = '"CM2_COMISSAO_PARC"."COD_BX_PAGAR"'
    end
    object CM2_COMISSAO_PARCDT_FATURAMENTO: TDateField
      DisplayLabel = 'Dt. Faturamento'
      FieldName = 'DT_FATURAMENTO'
      Origin = '"FAT_VENDAS"."DATA"'
    end
    object CM2_COMISSAO_PARCDT_CX_FATURAMENTO: TDateTimeField
      DisplayLabel = 'Dt. Cx. Faturamento'
      FieldName = 'DT_CX_FATURAMENTO'
      Origin = '"FAT_VENDAS"."DATA_CAIXA"'
    end
    object CM2_COMISSAO_PARCCLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object CM2_COMISSAO_PARCCOD_FORMA: TIntegerField
      DisplayLabel = 'C'#243'd. Forma'
      FieldName = 'COD_FORMA'
      Origin = '"FIN_FORMAS_PAGTO"."CODIGO"'
      Required = True
    end
    object CM2_COMISSAO_PARCFORMA_PGTO: TIBStringField
      DisplayLabel = 'Forma Pagto'
      FieldName = 'FORMA_PGTO'
      Origin = '"FIN_FORMAS_PAGTO"."NOME"'
      Size = 50
    end
    object CM2_COMISSAO_PARCAGENTE: TIBStringField
      DisplayLabel = 'Agente'
      FieldName = 'AGENTE'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object CM2_COMISSAO_PARCCFOP: TIBStringField
      FieldName = 'CFOP'
      ProviderFlags = []
      Size = 62
    end
    object CM2_COMISSAO_PARCSELECIONADO: TIBStringField
      DisplayLabel = 'X'
      FieldName = 'SELECIONADO'
      Origin = '"CM2_COMISSAO_PARC"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object CM2_COMISSAO_PARCNUM_NF: TIntegerField
      DisplayLabel = 'NF'
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDAS"."NUM_NF"'
    end
    object CM2_COMISSAO_PARCTOTAL_PROVISIONADO: TFloatField
      DisplayLabel = 'Ttl. Provisionado'
      FieldName = 'TOTAL_PROVISIONADO'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object CM2_COMISSAO_PARCSALDO_COMISSAO: TFloatField
      DisplayLabel = 'Sld. Comiss'#227'o'
      FieldName = 'SALDO_COMISSAO'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
  end
  object CM2_FAT_ITENS: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from fat_vendas_itens'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    InsertSQL.Strings = (
      'insert into fat_vendas_itens'
      '  (CUSTO_MEDIO)'
      'values'
      '  (:CUSTO_MEDIO)')
    RefreshSQL.Strings = (
      'select vdi.cnpj, vdi.codigo, vdi.sequencia,'
      '       vdi.produto,'
      '       prd.nome,'
      '       vdi.prc_unitario,'
      '       vdi.custo_medio,'
      '       vdi.quantidade,'
      '       /*despesas operacinais*/'
      
        '       ((coalesce(vdi.custo_medio,0) * coalesce(cfg.despesas_ope' +
        'racionais,0))/100.00) desp_op,'
      ''
      '       /*custo do item ja incluindo as despesas operacionais*/'
      
        '       (vdi.custo_medio + ((coalesce(vdi.custo_medio,0) * coales' +
        'ce(cfg.despesas_operacionais,0))/100.00)) custo_item,'
      '       /**/'
      
        '       (vdi.prc_unitario - (vdi.custo_medio + ((coalesce(vdi.cus' +
        'to_medio,0) * coalesce(cfg.despesas_operacionais,0))/100.00))) l' +
        'ucro_unitario,'
      
        '       /*lucro sem contabilizar possiveis descontos no faturmaen' +
        'to*/'
      '       vdi.vlr_lucro_item lucro_bruto,'
      ''
      '       /*apurando lucro liquido do item*/'
      '       (select (vdi2.vlr_lucro_item +  ('
      '                                     ('
      '                                      ('
      '                                       ('
      '                                        ('
      
        '                                         vdi2.quantidade * vdi2.' +
        'prc_unitario'
      '                                        )'
      '                                        * 100'
      '                                       )'
      '                                       /'
      '                                       vd2.total'
      '                                      )'
      '                                      *'
      '                                      vd2.desc_acres'
      '                                     )'
      '                                     /'
      '                                     100'
      '                                    )'
      '             ) from fat_vendas_itens vdi2'
      
        '             inner join fat_vendas vd2 on (vd2.cnpj = vdi2.cnpj ' +
        'and vdi2.codigo = vd2.codigo)'
      
        '             where vdi2.cnpj = vdi.cnpj and vdi2.codigo = vdi.co' +
        'digo'
      
        '             and vdi2.sequencia = vdi.sequencia and vdi2.produto' +
        ' = vdi.produto) lucro_liquido,'
      ''
      
        '      /*Comissao do agente no lucro LUCRO-LIQUIDO  0.2 * PERCENT' +
        'UAL-PARTICIAPAcaoO'
      '      Obs 0.2 e igual a 20% de comissao sobre o lucro liquido*/'
      '      ((select (vdi2.vlr_lucro_item +  ('
      '                                     ('
      '                                      ('
      '                                       ('
      '                                        ('
      
        '                                         vdi2.quantidade * vdi2.' +
        'prc_unitario'
      '                                        )'
      '                                        * 100'
      '                                       )'
      '                                       /'
      '                                       vd2.total'
      '                                      )'
      '                                      *'
      '                                      vd2.desc_acres'
      '                                     )'
      '                                     /'
      '                                     100'
      '                                    )'
      '             ) from fat_vendas_itens vdi2'
      
        '             inner join fat_vendas vd2 on (vd2.cnpj = vdi2.cnpj ' +
        'and vdi2.codigo = vd2.codigo)'
      
        '             where vdi2.cnpj = vdi.cnpj and vdi2.codigo = vdi.co' +
        'digo'
      
        '             and vdi2.sequencia = vdi.sequencia and vdi2.produto' +
        ' = vdi.produto)'
      '             *'
      
        '             (select (coalesce(emp.cmd_vdt_pct,20)/100.00) from ' +
        'sis_empresas emp where emp.cnpj = :cnpj) )'
      '             *'
      '        /*Percentual de participacao que o agente tem no item*/'
      
        '       (select sum(cmi.percentual/100.00) from fat_vendas_itens_' +
        'comissoes cmi'
      
        '       where cmi.cod_item = vdi.codigo and cmi.produto = vdi.pro' +
        'duto'
      '       and cmi.sequencia = vdi.sequencia) comissao_item'
      ''
      'from fat_vendas_itens vdi'
      
        'inner join est_produtos prd on (prd.cnpj = vdi.cnpj and prd.codi' +
        'go = vdi.produto)'
      'left join sis_configuracoes cfg on (cfg.cnpj = vdi.cnpj)'
      'where'
      '  vdi.CNPJ = :CNPJ and'
      '  vdi.CODIGO = :CODIGO and'
      '  vdi.PRODUTO = :PRODUTO and'
      '  vdi.SEQUENCIA = :SEQUENCIA')
    SelectSQL.Strings = (
      'select vdi.cnpj, vdi.codigo, vdi.sequencia,'
      '       vdi.produto,'
      '       prd.nome,'
      '       vdi.prc_unitario,'
      '       vdi.custo_medio,'
      '       vdi.quantidade,'
      '       /*despesas operacinais*/'
      
        '       ((coalesce(vdi.custo_medio,0) * coalesce(cfg.despesas_ope' +
        'racionais,0))/100.00) desp_op,'
      ''
      '       /*custo do item ja incluindo as despesas operacionais*/'
      
        '       (vdi.custo_medio + ((coalesce(vdi.custo_medio,0) * coales' +
        'ce(cfg.despesas_operacionais,0))/100.00)) custo_item,'
      '       /**/'
      
        '       (vdi.prc_unitario - (vdi.custo_medio + ((coalesce(vdi.cus' +
        'to_medio,0) * coalesce(cfg.despesas_operacionais,0))/100.00))) l' +
        'ucro_unitario,'
      
        '       /*lucro sem contabilizar possiveis descontos no faturmaen' +
        'to*/'
      '       vdi.vlr_lucro_item lucro_bruto,'
      ''
      '       /*apurando lucro liquido do item*/'
      '       (select (vdi2.vlr_lucro_item +  ('
      '                                     ('
      '                                      ('
      '                                       ('
      '                                        ('
      
        '                                         vdi2.quantidade * vdi2.' +
        'prc_unitario'
      '                                        )'
      '                                        * 100'
      '                                       )'
      '                                       /'
      '                                       vd2.total'
      '                                      )'
      '                                      *'
      '                                      vd2.desc_acres'
      '                                     )'
      '                                     /'
      '                                     100'
      '                                    )'
      '             ) from fat_vendas_itens vdi2'
      
        '             inner join fat_vendas vd2 on (vd2.cnpj = vdi2.cnpj ' +
        'and vdi2.codigo = vd2.codigo)'
      
        '             where vdi2.cnpj = vdi.cnpj and vdi2.codigo = vdi.co' +
        'digo'
      
        '             and vdi2.sequencia = vdi.sequencia and vdi2.produto' +
        ' = vdi.produto) lucro_liquido,'
      ''
      
        '      /*Comissao do agente no lucro LUCRO-LIQUIDO  0.2 * PERCENT' +
        'UAL-PARTICIAPAcaoO'
      '      Obs 0.2 e igual a 20% de comissao sobre o lucro liquido*/'
      '      ((select (vdi2.vlr_lucro_item +  ('
      '                                     ('
      '                                      ('
      '                                       ('
      '                                        ('
      
        '                                         vdi2.quantidade * vdi2.' +
        'prc_unitario'
      '                                        )'
      '                                        * 100'
      '                                       )'
      '                                       /'
      '                                       vd2.total'
      '                                      )'
      '                                      *'
      '                                      vd2.desc_acres'
      '                                     )'
      '                                     /'
      '                                     100'
      '                                    )'
      '             ) from fat_vendas_itens vdi2'
      
        '             inner join fat_vendas vd2 on (vd2.cnpj = vdi2.cnpj ' +
        'and vdi2.codigo = vd2.codigo)'
      
        '             where vdi2.cnpj = vdi.cnpj and vdi2.codigo = vdi.co' +
        'digo'
      
        '             and vdi2.sequencia = vdi.sequencia and vdi2.produto' +
        ' = vdi.produto)'
      '             *'
      
        '             (select (coalesce(emp.cmd_vdt_pct,20)/100.00) from ' +
        'sis_empresas emp where emp.cnpj = :cnpj) )'
      '             *'
      '        /*Percentual de participacao que o agente tem no item*/'
      
        '       (select sum(cmi.percentual/100.00) from fat_vendas_itens_' +
        'comissoes cmi'
      
        '       where cmi.cod_item = vdi.codigo and cmi.produto = vdi.pro' +
        'duto'
      '       and cmi.sequencia = vdi.sequencia) comissao_item'
      ''
      'from fat_vendas_itens vdi'
      
        'inner join est_produtos prd on (prd.cnpj = vdi.cnpj and prd.codi' +
        'go = vdi.produto)'
      'left join sis_configuracoes cfg on (cfg.cnpj = vdi.cnpj)'
      'where vdi.cnpj = :cnpj and vdi.codigo = :codigo')
    ModifySQL.Strings = (
      'update fat_vendas_itens'
      'set'
      '  CUSTO_MEDIO = :CUSTO_MEDIO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    Left = 763
    Top = 6
    object CM2_FAT_ITENSCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS_ITENS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object CM2_FAT_ITENSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS_ITENS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CM2_FAT_ITENSSEQUENCIA: TSmallintField
      DisplayLabel = 'Seq.'
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_VENDAS_ITENS"."SEQUENCIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CM2_FAT_ITENSPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object CM2_FAT_ITENSNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object CM2_FAT_ITENSPRC_UNITARIO: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'PRC_UNITARIO'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNITARIO"'
      DisplayFormat = '###,##0.00'
    end
    object CM2_FAT_ITENSCUSTO_MEDIO: TFloatField
      DisplayLabel = 'Custo M'#233'dio'
      FieldName = 'CUSTO_MEDIO'
      Origin = '"FAT_VENDAS_ITENS"."CUSTO_MEDIO"'
      DisplayFormat = '###,##0.00'
    end
    object CM2_FAT_ITENSQUANTIDADE: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_VENDAS_ITENS"."QUANTIDADE"'
      DisplayFormat = '###,##0.00'
    end
    object CM2_FAT_ITENSDESP_OP: TFloatField
      DisplayLabel = 'Vlr. Desp. Op.'
      FieldName = 'DESP_OP'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object CM2_FAT_ITENSCUSTO_ITEM: TFloatField
      DisplayLabel = 'Custo Item'
      FieldName = 'CUSTO_ITEM'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object CM2_FAT_ITENSLUCRO_UNITARIO: TFloatField
      DisplayLabel = 'Lucro Unit'#225'rio'
      FieldName = 'LUCRO_UNITARIO'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object CM2_FAT_ITENSLUCRO_BRUTO: TFloatField
      DisplayLabel = 'Vlr. Lucro Bruto'
      FieldName = 'LUCRO_BRUTO'
      Origin = '"FAT_VENDAS_ITENS"."VLR_LUCRO_ITEM"'
      DisplayFormat = '###,##0.00'
    end
    object CM2_FAT_ITENSLUCRO_LIQUIDO: TFloatField
      DisplayLabel = 'Vlr. Lucro L'#237'q.'
      FieldName = 'LUCRO_LIQUIDO'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object CM2_FAT_ITENSCOMISSAO_ITEM: TFloatField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'COMISSAO_ITEM'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
  end
  object CM2_FAT_ITENS_AGENTES: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsLinkAgentes
    SQL.Strings = (
      'select psa.nome_razao, psa.cpf_cgc, cmi.*,'
      
        '/*Comissao do agente no lucro LUCRO-LIQUIDO  0.2 * PERCENTUAL-PA' +
        'RTICIAPAcaoO'
      '      Obs 0.2 e igual a 20% de comissao sobre o lucro liquido*/'
      '      ((select (vdi2.vlr_lucro_item +  ('
      '                                     ('
      '                                      ('
      '                                       ('
      '                                        ('
      
        '                                         vdi2.quantidade * vdi2.' +
        'prc_unitario'
      '                                        )'
      '                                        * 100'
      '                                       )'
      '                                       /'
      '                                       vd2.total'
      '                                      )'
      '                                      *'
      '                                      vd2.desc_acres'
      '                                     )'
      '                                     /'
      '                                     100'
      '                                    )'
      '             ) from fat_vendas_itens vdi2'
      
        '             inner join fat_vendas vd2 on (vd2.cnpj = vdi2.cnpj ' +
        'and vdi2.codigo = vd2.codigo)'
      
        '             where vdi2.cnpj = cmi.cnpj and vdi2.codigo = cmi.co' +
        'd_item'
      
        '             and vdi2.sequencia = cmi.sequencia and vdi2.produto' +
        ' = cmi.produto)'
      '             *'
      
        '             (select (coalesce(emp.cmd_vdt_pct,20)/100.00) from ' +
        'sis_empresas emp where emp.cnpj = :cnpj))'
      '             *'
      '        /*Percentual de participacao que o agente tem no item*/'
      
        '       (select sum(cmi2.percentual/100.00) from fat_vendas_itens' +
        '_comissoes cmi2'
      
        '       where cmi2.cod_item = cmi.cod_item and cmi2.produto = cmi' +
        '.produto'
      
        '       and cmi2.sequencia = cmi.sequencia and cmi2.pessoa_fj = c' +
        'mi.pessoa_fj ) comissao_item'
      ''
      ' from fat_vendas_itens_comissoes cmi'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj = cmi.cnpj and psa.co' +
        'digo = cmi.pessoa_fj)'
      'where cmi.cnpj = :cnpj and cmi.produto = :produto and'
      '      cmi.sequencia = :sequencia  and cmi.cod_item = :codigo')
    Left = 763
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'produto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'sequencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object CM2_FAT_ITENS_AGENTESNOME_RAZAO: TIBStringField
      DisplayLabel = 'Pessoa'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object CM2_FAT_ITENS_AGENTESCPF_CGC: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object CM2_FAT_ITENS_AGENTESCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS_ITENS_COMISSOES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object CM2_FAT_ITENS_AGENTESCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS_ITENS_COMISSOES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object CM2_FAT_ITENS_AGENTESCOD_ITEM: TIntegerField
      FieldName = 'COD_ITEM'
      Origin = '"FAT_VENDAS_ITENS_COMISSOES"."COD_ITEM"'
    end
    object CM2_FAT_ITENS_AGENTESPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"FAT_VENDAS_ITENS_COMISSOES"."PRODUTO"'
      Size = 15
    end
    object CM2_FAT_ITENS_AGENTESSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_VENDAS_ITENS_COMISSOES"."SEQUENCIA"'
    end
    object CM2_FAT_ITENS_AGENTESPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Pessoa'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDAS_ITENS_COMISSOES"."PESSOA_FJ"'
    end
    object CM2_FAT_ITENS_AGENTESPERCENTUAL: TFloatField
      DisplayLabel = 'Pct(%)'
      FieldName = 'PERCENTUAL'
      Origin = '"FAT_VENDAS_ITENS_COMISSOES"."PERCENTUAL"'
      DisplayFormat = '###,##0.00'
    end
    object CM2_FAT_ITENS_AGENTESCOMISSAO_ITEM: TFloatField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'COMISSAO_ITEM'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
  end
  object dsLinkAgentes: TDataSource
    AutoEdit = False
    DataSet = CM2_FAT_ITENS
    Left = 763
    Top = 63
  end
  object QryQuitarComissoes: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsLinkAgentes
    SQL.Strings = (
      'select cm2.CNPJ ,'
      '    cm2.CODIGO ,'
      '    cm2.valor ,'
      '    cm2.DT_GERACAO ,'
      '    cm2.STATUS ,'
      '    psa2.nome_razao Agente'
      'from cm2_comissao_parc cm2'
      
        'inner join glo_pessoas_fj psa2 on (cm2.cod_pessoa = psa2.codigo ' +
        'and cm2.cnpj = psa2.cnpj)'
      'where cm2.cnpj = :cnpj and  cm2.selecionado = '#39'S'#39)
    Left = 768
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object QryQuitarComissoesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CM2_COMISSAO_PARC"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryQuitarComissoesCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CM2_COMISSAO_PARC"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryQuitarComissoesVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"CM2_COMISSAO_PARC"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object QryQuitarComissoesDT_GERACAO: TDateField
      DisplayLabel = 'Dt. Gera'#231#227'o'
      FieldName = 'DT_GERACAO'
      Origin = '"CM2_COMISSAO_PARC"."DT_GERACAO"'
    end
    object QryQuitarComissoesSTATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = '"CM2_COMISSAO_PARC"."STATUS"'
      FixedChar = True
      Size = 1
    end
    object QryQuitarComissoesAGENTE: TIBStringField
      DisplayLabel = 'Agente'
      FieldName = 'AGENTE'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
  end
  object PCD_CM2_QUITAR_COMISSAO: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'PCD_CM2_QUITAR_COMISSAO'
    Left = 538
    Top = 396
  end
  object ACT_GERA_ACERTO: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from act_acertoconta'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into act_acertoconta'
      
        '  (CNPJ, CODIGO, DATA, DATA_CX, HISTORICO, PESSOA_RECIBO, TIPO_A' +
        'CERTO, '
      '   USUARIO, VALOR_PAGAR, VALOR_RECEBER)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DATA, :DATA_CX, :HISTORICO, :PESSOA_RECIBO, ' +
        ':TIPO_ACERTO, '
      '   :USUARIO, :VALOR_PAGAR, :VALOR_RECEBER)')
    RefreshSQL.Strings = (
      'Select * '
      'from act_acertoconta '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from act_acertoconta act'
      'where act.CNPJ = :cnpj and act.codigo = :CODIGO')
    ModifySQL.Strings = (
      'update act_acertoconta'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  DATA_CX = :DATA_CX,'
      '  HISTORICO = :HISTORICO,'
      '  PESSOA_RECIBO = :PESSOA_RECIBO,'
      '  TIPO_ACERTO = :TIPO_ACERTO,'
      '  USUARIO = :USUARIO,'
      '  VALOR_PAGAR = :VALOR_PAGAR,'
      '  VALOR_RECEBER = :VALOR_RECEBER'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_ACT_ACERTOCONTA_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 769
    Top = 239
    object ACT_GERA_ACERTOCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"ACT_ACERTOCONTA"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object ACT_GERA_ACERTOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"ACT_ACERTOCONTA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ACT_GERA_ACERTODATA: TDateField
      FieldName = 'DATA'
      Origin = '"ACT_ACERTOCONTA"."DATA"'
    end
    object ACT_GERA_ACERTODATA_CX: TDateField
      FieldName = 'DATA_CX'
      Origin = '"ACT_ACERTOCONTA"."DATA_CX"'
    end
    object ACT_GERA_ACERTOHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"ACT_ACERTOCONTA"."HISTORICO"'
      Size = 100
    end
    object ACT_GERA_ACERTOUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"ACT_ACERTOCONTA"."USUARIO"'
    end
    object ACT_GERA_ACERTOTIPO_ACERTO: TIntegerField
      FieldName = 'TIPO_ACERTO'
      Origin = '"ACT_ACERTOCONTA"."TIPO_ACERTO"'
    end
    object ACT_GERA_ACERTOVALOR_PAGAR: TFloatField
      FieldName = 'VALOR_PAGAR'
      Origin = '"ACT_ACERTOCONTA"."VALOR_PAGAR"'
    end
    object ACT_GERA_ACERTOVALOR_RECEBER: TFloatField
      FieldName = 'VALOR_RECEBER'
      Origin = '"ACT_ACERTOCONTA"."VALOR_RECEBER"'
    end
    object ACT_GERA_ACERTOPESSOA_RECIBO: TIntegerField
      FieldName = 'PESSOA_RECIBO'
      Origin = '"ACT_ACERTOCONTA"."PESSOA_RECIBO"'
    end
  end
  object ACT_CFG_TITULO: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from act_configuracaotitulo'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into act_configuracaotitulo'
      
        '  (CARENCIAJUROS, CARENCIAMULTA, CNPJ, COD_INDEXADOR, COD_JURO_P' +
        'OS_FIXADO, '
      
        '   CODIGO, DATAFIMVARIACAO, DATAINICIOJUROS, DATAINICIOVARIACAO,' +
        ' JUROSIMPLES, '
      
        '   PERCDESCONTOANTECIPADO, PERCDESCONTOPONTUALIDADE, QUANTIDADEI' +
        'NDEXADOR, '
      '   TAXAJUROS, TAXAMULTA, TAXARISCO, TIPODESCONTO, VIGENCIA)'
      'values'
      
        '  (:CARENCIAJUROS, :CARENCIAMULTA, :CNPJ, :COD_INDEXADOR, :COD_J' +
        'URO_POS_FIXADO, '
      
        '   :CODIGO, :DATAFIMVARIACAO, :DATAINICIOJUROS, :DATAINICIOVARIA' +
        'CAO, :JUROSIMPLES, '
      
        '   :PERCDESCONTOANTECIPADO, :PERCDESCONTOPONTUALIDADE, :QUANTIDA' +
        'DEINDEXADOR, '
      '   :TAXAJUROS, :TAXAMULTA, :TAXARISCO, :TIPODESCONTO, :VIGENCIA)')
    RefreshSQL.Strings = (
      'Select * '
      'from act_configuracaotitulo '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from act_configuracaotitulo cfg'
      'where cfg.cnpj = :cnpj and cfg.codigo = :codigo')
    ModifySQL.Strings = (
      'update act_configuracaotitulo'
      'set'
      '  CARENCIAJUROS = :CARENCIAJUROS,'
      '  CARENCIAMULTA = :CARENCIAMULTA,'
      '  CNPJ = :CNPJ,'
      '  COD_INDEXADOR = :COD_INDEXADOR,'
      '  COD_JURO_POS_FIXADO = :COD_JURO_POS_FIXADO,'
      '  CODIGO = :CODIGO,'
      '  DATAFIMVARIACAO = :DATAFIMVARIACAO,'
      '  DATAINICIOJUROS = :DATAINICIOJUROS,'
      '  DATAINICIOVARIACAO = :DATAINICIOVARIACAO,'
      '  JUROSIMPLES = :JUROSIMPLES,'
      '  PERCDESCONTOANTECIPADO = :PERCDESCONTOANTECIPADO,'
      '  PERCDESCONTOPONTUALIDADE = :PERCDESCONTOPONTUALIDADE,'
      '  QUANTIDADEINDEXADOR = :QUANTIDADEINDEXADOR,'
      '  TAXAJUROS = :TAXAJUROS,'
      '  TAXAMULTA = :TAXAMULTA,'
      '  TAXARISCO = :TAXARISCO,'
      '  TIPODESCONTO = :TIPODESCONTO,'
      '  VIGENCIA = :VIGENCIA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_ACT_CONFIGURACAOTITULO_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 771
    Top = 296
    object ACT_CFG_TITULOCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"ACT_CONFIGURACAOTITULO"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object ACT_CFG_TITULOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"ACT_CONFIGURACAOTITULO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ACT_CFG_TITULODATAINICIOVARIACAO: TDateField
      FieldName = 'DATAINICIOVARIACAO'
      Origin = '"ACT_CONFIGURACAOTITULO"."DATAINICIOVARIACAO"'
    end
    object ACT_CFG_TITULODATAFIMVARIACAO: TDateField
      FieldName = 'DATAFIMVARIACAO'
      Origin = '"ACT_CONFIGURACAOTITULO"."DATAFIMVARIACAO"'
    end
    object ACT_CFG_TITULOCOD_INDEXADOR: TIntegerField
      FieldName = 'COD_INDEXADOR'
      Origin = '"ACT_CONFIGURACAOTITULO"."COD_INDEXADOR"'
    end
    object ACT_CFG_TITULOQUANTIDADEINDEXADOR: TFloatField
      FieldName = 'QUANTIDADEINDEXADOR'
      Origin = '"ACT_CONFIGURACAOTITULO"."QUANTIDADEINDEXADOR"'
    end
    object ACT_CFG_TITULOJUROSIMPLES: TSmallintField
      FieldName = 'JUROSIMPLES'
      Origin = '"ACT_CONFIGURACAOTITULO"."JUROSIMPLES"'
    end
    object ACT_CFG_TITULOTAXAMULTA: TFloatField
      FieldName = 'TAXAMULTA'
      Origin = '"ACT_CONFIGURACAOTITULO"."TAXAMULTA"'
    end
    object ACT_CFG_TITULOCARENCIAMULTA: TIntegerField
      FieldName = 'CARENCIAMULTA'
      Origin = '"ACT_CONFIGURACAOTITULO"."CARENCIAMULTA"'
    end
    object ACT_CFG_TITULOTIPODESCONTO: TIntegerField
      FieldName = 'TIPODESCONTO'
      Origin = '"ACT_CONFIGURACAOTITULO"."TIPODESCONTO"'
    end
    object ACT_CFG_TITULOPERCDESCONTOANTECIPADO: TFloatField
      FieldName = 'PERCDESCONTOANTECIPADO'
      Origin = '"ACT_CONFIGURACAOTITULO"."PERCDESCONTOANTECIPADO"'
    end
    object ACT_CFG_TITULOPERCDESCONTOPONTUALIDADE: TFloatField
      FieldName = 'PERCDESCONTOPONTUALIDADE'
      Origin = '"ACT_CONFIGURACAOTITULO"."PERCDESCONTOPONTUALIDADE"'
    end
    object ACT_CFG_TITULOCOD_JURO_POS_FIXADO: TIntegerField
      FieldName = 'COD_JURO_POS_FIXADO'
      Origin = '"ACT_CONFIGURACAOTITULO"."COD_JURO_POS_FIXADO"'
    end
    object ACT_CFG_TITULODATAINICIOJUROS: TDateField
      FieldName = 'DATAINICIOJUROS'
      Origin = '"ACT_CONFIGURACAOTITULO"."DATAINICIOJUROS"'
    end
    object ACT_CFG_TITULOCARENCIAJUROS: TSmallintField
      FieldName = 'CARENCIAJUROS'
      Origin = '"ACT_CONFIGURACAOTITULO"."CARENCIAJUROS"'
    end
    object ACT_CFG_TITULOTAXARISCO: TFloatField
      FieldName = 'TAXARISCO'
      Origin = '"ACT_CONFIGURACAOTITULO"."TAXARISCO"'
    end
    object ACT_CFG_TITULOTAXAJUROS: TFloatField
      FieldName = 'TAXAJUROS'
      Origin = '"ACT_CONFIGURACAOTITULO"."TAXAJUROS"'
    end
    object ACT_CFG_TITULOVIGENCIA: TSmallintField
      FieldName = 'VIGENCIA'
      Origin = '"ACT_CONFIGURACAOTITULO"."VIGENCIA"'
    end
  end
  object ACT_TITULO_GERADO: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from act_titulogerado'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into act_titulogerado'
      '  (CNPJ, COD_ACERTOCONTA, COD_PAGAR, COD_RECEBER, CODIGO)'
      'values'
      '  (:CNPJ, :COD_ACERTOCONTA, :COD_PAGAR, :COD_RECEBER, :CODIGO)')
    RefreshSQL.Strings = (
      'Select * '
      'from act_titulogerado '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      
        'select CNPJ, CODIGO, COD_ACERTOCONTA, COD_RECEBER, COD_PAGAR fro' +
        'm act_titulogerado tt'
      'where tt.cnpj = :cnpj and tt.codigo = :codigo')
    ModifySQL.Strings = (
      'update act_titulogerado'
      'set'
      '  CNPJ = :CNPJ,'
      '  COD_ACERTOCONTA = :COD_ACERTOCONTA,'
      '  COD_PAGAR = :COD_PAGAR,'
      '  COD_RECEBER = :COD_RECEBER,'
      '  CODIGO = :CODIGO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_ACT_TITULOGERADO_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 771
    Top = 352
    object ACT_TITULO_GERADOCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"ACT_TITULOGERADO"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object ACT_TITULO_GERADOCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"ACT_TITULOGERADO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ACT_TITULO_GERADOCOD_ACERTOCONTA: TIntegerField
      FieldName = 'COD_ACERTOCONTA'
      Origin = '"ACT_TITULOGERADO"."COD_ACERTOCONTA"'
      Required = True
    end
    object ACT_TITULO_GERADOCOD_RECEBER: TIntegerField
      FieldName = 'COD_RECEBER'
      Origin = '"ACT_TITULOGERADO"."COD_RECEBER"'
    end
    object ACT_TITULO_GERADOCOD_PAGAR: TIntegerField
      FieldName = 'COD_PAGAR'
      Origin = '"ACT_TITULOGERADO"."COD_PAGAR"'
    end
  end
  object ChequeRec: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from FIN_CHEQUES'
      'where'
      '  BANCO = :OLD_BANCO and'
      '  CHEQUE = :OLD_CHEQUE and'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA')
    InsertSQL.Strings = (
      'insert into FIN_CHEQUES'
      
        '  (TROCA, AGENCIA, BANCO, CHEQUE, CNPJ, CONCILIADO, CONTA, EMISS' +
        'AO, '
      'HISTORICO, '
      '   PESSOA_FJ, PRE_DATE, VALOR, VENDA, NOME, DATA_CONCILIACAO, '
      'JUROS, MOEDA1, '
      
        '   MOEDA2, TIPO, DATA_ACERTO, DATA_CAIXA, USUARIO, DIGITO_AGENCI' +
        'A, '
      'DIGITO_CONTA, '
      '   DIGITO_CHEQUE, ORIGEM, TURNO)'
      'values'
      
        '  (:TROCA, :AGENCIA, :BANCO, :CHEQUE, :CNPJ, :CONCILIADO, :CONTA' +
        ', '
      ':EMISSAO, '
      '   :HISTORICO, :PESSOA_FJ, :PRE_DATE, :VALOR, :VENDA, :NOME, '
      ':DATA_CONCILIACAO, '
      '   :JUROS, :MOEDA1, :MOEDA2, :TIPO, :DATA_ACERTO, :DATA_CAIXA, '
      ':USUARIO, '
      
        '   :DIGITO_AGENCIA, :DIGITO_CONTA, :DIGITO_CHEQUE, :ORIGEM, :TUR' +
        'NO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  CNPJ,'
      '  BANCO,'
      '  CONTA,'
      '  CHEQUE,'
      '  VENDA,'
      '  EMISSAO,'
      '  PRE_DATE,'
      '  VALOR,'
      '  CONCILIADO,'
      '  PESSOA_FJ,'
      '  HISTORICO,'
      '  AGENCIA,'
      '  NOME,'
      '  DATA_CONCILIACAO,'
      '  JUROS,'
      '  MOEDA1,'
      '  MOEDA2,'
      '  TIPO,'
      '  DATA_ACERTO,'
      '  PLANILHA,'
      '  DIGITO_AGENCIA,'
      '  DIGITO_CHEQUE,'
      '  DATA_DEVOLUCAO,'
      '  MOTIVO_DEVOLUCAO,'
      '  VEZES_DEVOLUCAO,'
      '  DATA_CAIXA,'
      '  USUARIO,'
      '  COMPENSACAO,'
      '  DIGITO_CONTA,'
      '  ORIGEM,'
      '  TURNO,'
      '  LOCAIS,'
      '  PROCESSADO,'
      '  EXCLUIDO,'
      '  CMC7,'
      '  MARCADO,'
      '  CONTA_CONC,'
      '  USUARIO_CONC,'
      '  TURNO_CONC,'
      '  DATA_REMESSA,'
      '  DATA_REAPRES,'
      '  INDICE,'
      '  TROCA'
      'from FIN_CHEQUES '
      'where'
      '  BANCO = :BANCO and'
      '  CHEQUE = :CHEQUE and'
      '  CNPJ = :CNPJ and'
      '  CONTA = :CONTA')
    SelectSQL.Strings = (
      'select '
      '         TROCA,'
      '          AGENCIA, '
      '          BANCO, '
      '          CHEQUE, '
      '          CNPJ, '
      '          CONCILIADO, '
      '          CONTA, '
      '          EMISSAO, '
      '          HISTORICO, '
      '          PESSOA_FJ, '
      '          PRE_DATE, '
      '          VALOR, '
      '          VENDA,'
      '         NOME ,'
      '         DATA_CONCILIACAO ,'
      '         JUROS ,'
      '         MOEDA1 ,'
      '         MOEDA2 ,'
      '         TIPO ,'
      '         DATA_ACERTO,'
      '         DATA_CAIXA,'
      '         USUARIO,'
      '         DIGITO_AGENCIA,'
      '         DIGITO_CONTA,'
      '         DIGITO_CHEQUE,'
      '         ORIGEM,'
      '         TURNO'
      'from FIN_CHEQUES'
      'Where CNPJ = :CNPJ and VENDA = :CODIGO')
    ModifySQL.Strings = (
      'update FIN_CHEQUES'
      'set'
      '  TROCA = :TROCA,'
      '  AGENCIA = :AGENCIA,'
      '  BANCO = :BANCO,'
      '  CHEQUE = :CHEQUE,'
      '  CNPJ = :CNPJ,'
      '  CONCILIADO = :CONCILIADO,'
      '  CONTA = :CONTA,'
      '  EMISSAO = :EMISSAO,'
      '  HISTORICO = :HISTORICO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PRE_DATE = :PRE_DATE,'
      '  VALOR = :VALOR,'
      '  VENDA = :VENDA,'
      '  NOME = :NOME,'
      '  DATA_CONCILIACAO = :DATA_CONCILIACAO,'
      '  JUROS = :JUROS,'
      '  MOEDA1 = :MOEDA1,'
      '  MOEDA2 = :MOEDA2,'
      '  TIPO = :TIPO,'
      '  DATA_ACERTO = :DATA_ACERTO,'
      '  DATA_CAIXA = :DATA_CAIXA,'
      '  USUARIO = :USUARIO,'
      '  DIGITO_AGENCIA = :DIGITO_AGENCIA,'
      '  DIGITO_CONTA = :DIGITO_CONTA,'
      '  DIGITO_CHEQUE = :DIGITO_CHEQUE,'
      '  ORIGEM = :ORIGEM,'
      '  TURNO = :TURNO'
      'where'
      '  BANCO = :OLD_BANCO and'
      '  CHEQUE = :OLD_CHEQUE and'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA')
    Left = 652
    Top = 468
    object ChequeRecCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FIN_CHEQUES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object ChequeRecAGENCIA: TIBStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Origin = '"FIN_CHEQUES"."AGENCIA"'
      Size = 6
    end
    object ChequeRecBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"FIN_CHEQUES"."BANCO"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object ChequeRecCHEQUE: TIBStringField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"FIN_CHEQUES"."CHEQUE"'
      Required = True
      Size = 6
    end
    object ChequeRecCONCILIADO: TIBStringField
      DisplayLabel = 'Conciliado'
      FieldName = 'CONCILIADO'
      Origin = '"FIN_CHEQUES"."CONCILIADO"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ChequeRecCONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"FIN_CHEQUES"."CONTA"'
      Required = True
      Size = 15
    end
    object ChequeRecEMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'EMISSAO'
      Origin = '"FIN_CHEQUES"."EMISSAO"'
    end
    object ChequeRecHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_CHEQUES"."HISTORICO"'
      Size = 100
    end
    object ChequeRecPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_CHEQUES"."PESSOA_FJ"'
      Required = True
    end
    object ChequeRecPRE_DATE: TDateTimeField
      DisplayLabel = 'Pr'#233'-Date'
      FieldName = 'PRE_DATE'
      Origin = '"FIN_CHEQUES"."PRE_DATE"'
    end
    object ChequeRecVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_CHEQUES"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object ChequeRecVENDA: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'VENDA'
      Origin = '"FIN_CHEQUES"."VENDA"'
    end
    object ChequeRecNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_CHEQUES"."NOME"'
      Size = 50
    end
    object ChequeRecDATA_CONCILIACAO: TDateTimeField
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"FIN_CHEQUES"."DATA_CONCILIACAO"'
    end
    object ChequeRecJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = '"FIN_CHEQUES"."JUROS"'
    end
    object ChequeRecMOEDA1: TFloatField
      FieldName = 'MOEDA1'
      Origin = '"FIN_CHEQUES"."MOEDA1"'
    end
    object ChequeRecMOEDA2: TFloatField
      FieldName = 'MOEDA2'
      Origin = '"FIN_CHEQUES"."MOEDA2"'
    end
    object ChequeRecTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"FIN_CHEQUES"."TIPO"'
      FixedChar = True
      Size = 2
    end
    object ChequeRecDATA_ACERTO: TDateTimeField
      FieldName = 'DATA_ACERTO'
      Origin = '"FIN_CHEQUES"."DATA_ACERTO"'
    end
    object ChequeRecDATA_CAIXA: TDateTimeField
      DisplayLabel = 'Data Caixa'
      FieldName = 'DATA_CAIXA'
      Origin = '"FIN_CHEQUES"."DATA_CAIXA"'
    end
    object ChequeRecUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FIN_CHEQUES"."USUARIO"'
    end
    object ChequeRecDIGITO_AGENCIA: TIBStringField
      FieldName = 'DIGITO_AGENCIA'
      Origin = '"FIN_CHEQUES"."DIGITO_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object ChequeRecDIGITO_CONTA: TIBStringField
      FieldName = 'DIGITO_CONTA'
      Origin = '"FIN_CHEQUES"."DIGITO_CONTA"'
      FixedChar = True
      Size = 1
    end
    object ChequeRecDIGITO_CHEQUE: TIBStringField
      FieldName = 'DIGITO_CHEQUE'
      Origin = '"FIN_CHEQUES"."DIGITO_CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object ChequeRecORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"FIN_CHEQUES"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object ChequeRecTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = '"FIN_CHEQUES"."TURNO"'
    end
    object ChequeRecTROCA: TIntegerField
      FieldName = 'TROCA'
      Origin = '"FIN_CHEQUES"."TROCA"'
    end
  end
  object QryActEstorno: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryVerReceberLMTBeforeOpen
    SQL.Strings = (
      'select act.CNPJ ,'
      '       act.CODIGO,'
      '       act.DATA,'
      '       act.DATA_CX,'
      '       act.HISTORICO,'
      '       act.USUARIO COD_USUARIO,'
      '       case act.TIPO_ACERTO'
      '         when 1 then '#39'Caixa'#39
      '         when 2 then '#39'Cheque'#39
      '         when 3 then '#39'Aviso Banc'#225'rio'#39
      '         when 3 then '#39'Renegocia'#231#227'o'#39
      '       end TIPO_ACERTO,'
      '       act.VALOR_PAGAR,'
      '       act.VALOR_RECEBER,'
      '       act.PESSOA_RECIBO COD_PARCEIRO_RECIBO,'
      '       u.login USUARIO, psa.nome_razao,'
      '      (act.VALOR_RECEBER - act.VALOR_PAGAR) Saldo'
      '      from act_acertoconta act'
      '       inner join sis_usuarios u on (u.codigo = act.usuario)'
      
        '       inner join glo_pessoas_fj psa on (psa.cnpj = act.cnpj and' +
        ' act.pessoa_recibo = psa.codigo)'
      '       where psa.cnpj = :cnpj')
    Left = 344
    Top = 63
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object QryActEstornoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"ACT_ACERTOCONTA"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 14
    end
    object QryActEstornoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"ACT_ACERTOCONTA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryActEstornoDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"ACT_ACERTOCONTA"."DATA"'
    end
    object QryActEstornoDATA_CX: TDateField
      DisplayLabel = 'Dt. Caixa'
      FieldName = 'DATA_CX'
      Origin = '"ACT_ACERTOCONTA"."DATA_CX"'
    end
    object QryActEstornoHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"ACT_ACERTOCONTA"."HISTORICO"'
      Size = 100
    end
    object QryActEstornoCOD_USUARIO: TIntegerField
      DisplayLabel = 'C'#243'd. Usu'#225'rio'
      FieldName = 'COD_USUARIO'
      Origin = '"ACT_ACERTOCONTA"."USUARIO"'
    end
    object QryActEstornoVALOR_PAGAR: TFloatField
      DisplayLabel = 'Total Pagar'
      FieldName = 'VALOR_PAGAR'
      Origin = '"ACT_ACERTOCONTA"."VALOR_PAGAR"'
      DisplayFormat = '###,##0.00'
    end
    object QryActEstornoVALOR_RECEBER: TFloatField
      DisplayLabel = 'Total Receber'
      FieldName = 'VALOR_RECEBER'
      Origin = '"ACT_ACERTOCONTA"."VALOR_RECEBER"'
      DisplayFormat = '###,##0.00'
    end
    object QryActEstornoCOD_PARCEIRO_RECIBO: TIntegerField
      DisplayLabel = 'C'#243'd. Parceiro'
      FieldName = 'COD_PARCEIRO_RECIBO'
      Origin = '"ACT_ACERTOCONTA"."PESSOA_RECIBO"'
    end
    object QryActEstornoUSUARIO: TIBStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"SIS_USUARIOS"."LOGIN"'
      Size = 10
    end
    object QryActEstornoNOME_RAZAO: TIBStringField
      DisplayLabel = 'Parceiro'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object QryActEstornoSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object QryActEstornoTIPO_ACERTO: TIBStringField
      DisplayLabel = 'Tp. Acerto'
      FieldName = 'TIPO_ACERTO'
      ProviderFlags = []
      FixedChar = True
      Size = 14
    end
  end
  object QryActEstRecebida: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryVerReceberLMTBeforeOpen
    SQL.Strings = (
      'select * from pcd_act_recebidas(:cnpj,:codigo)')
    Left = 344
    Top = 118
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object QryActEstRecebidaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"PCD_ACT_RECEBIDAS"."CODIGO"'
    end
    object QryActEstRecebidaANO: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"PCD_ACT_RECEBIDAS"."ANO"'
    end
    object QryActEstRecebidaCODIGO_CR: TIntegerField
      DisplayLabel = 'C'#243'd. Receber'
      FieldName = 'CODIGO_CR'
      Origin = '"PCD_ACT_RECEBIDAS"."CODIGO_CR"'
    end
    object QryActEstRecebidaANO_CR: TIntegerField
      DisplayLabel = 'Ano Receber'
      FieldName = 'ANO_CR'
      Origin = '"PCD_ACT_RECEBIDAS"."ANO_CR"'
    end
    object QryActEstRecebidaPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Parceiro'
      FieldName = 'PESSOA_FJ'
      Origin = '"PCD_ACT_RECEBIDAS"."PESSOA_FJ"'
    end
    object QryActEstRecebidaDT_BAIXA: TDateField
      DisplayLabel = 'Dt. Baixa'
      FieldName = 'DT_BAIXA'
      Origin = '"PCD_ACT_RECEBIDAS"."DT_BAIXA"'
    end
    object QryActEstRecebidaDT_EMISSAO: TDateField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"PCD_ACT_RECEBIDAS"."DT_EMISSAO"'
    end
    object QryActEstRecebidaDT_VENCTO: TDateField
      DisplayLabel = 'Dt. Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"PCD_ACT_RECEBIDAS"."DT_VENCTO"'
    end
    object QryActEstRecebidaDT_LANCTO: TDateField
      DisplayLabel = 'Dt. Lancto'
      FieldName = 'DT_LANCTO'
      Origin = '"PCD_ACT_RECEBIDAS"."DT_LANCTO"'
    end
    object QryActEstRecebidaDOCTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"PCD_ACT_RECEBIDAS"."DOCTO"'
    end
    object QryActEstRecebidaPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"PCD_ACT_RECEBIDAS"."PARCELA"'
      FixedChar = True
      Size = 6
    end
    object QryActEstRecebidaHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"PCD_ACT_RECEBIDAS"."HISTORICO"'
      Size = 100
    end
    object QryActEstRecebidaHISTORICO_BX: TIBStringField
      DisplayLabel = 'Hist'#243'rico Baixa'
      FieldName = 'HISTORICO_BX'
      Origin = '"PCD_ACT_RECEBIDAS"."HISTORICO_BX"'
      Size = 100
    end
    object QryActEstRecebidaVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"PCD_ACT_RECEBIDAS"."VALOR"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object QryActEstRecebidaVLR_BAIXA: TIBBCDField
      DisplayLabel = 'Vlr. Baixa'
      FieldName = 'VLR_BAIXA'
      Origin = '"PCD_ACT_RECEBIDAS"."VLR_BAIXA"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object QryActEstRecebidaDESCONTOS: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"PCD_ACT_RECEBIDAS"."DESCONTOS"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object QryActEstRecebidaVLR_PARCIAL: TIBBCDField
      DisplayLabel = 'Vlr. Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"PCD_ACT_RECEBIDAS"."VLR_PARCIAL"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object QryActEstRecebidaJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"PCD_ACT_RECEBIDAS"."JUROS"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object QryActEstRecebidaJUROS_REC: TIBBCDField
      DisplayLabel = 'Juros Recebidos'
      FieldName = 'JUROS_REC'
      Origin = '"PCD_ACT_RECEBIDAS"."JUROS_REC"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object QryActEstRecebidaDESCONTOS_REC: TIBBCDField
      DisplayLabel = 'Descto Recebido'
      FieldName = 'DESCONTOS_REC'
      Origin = '"PCD_ACT_RECEBIDAS"."DESCONTOS_REC"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object QryActEstRecebidaTAXA_JUROS: TIBBCDField
      DisplayLabel = 'Tx. Juros'
      FieldName = 'TAXA_JUROS'
      Origin = '"PCD_ACT_RECEBIDAS"."TAXA_JUROS"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object QryActEstRecebidaORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"PCD_ACT_RECEBIDAS"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object QryActEstRecebidaCODIGO_VN: TIntegerField
      DisplayLabel = 'C'#243'd. Faturamento'
      FieldName = 'CODIGO_VN'
      Origin = '"PCD_ACT_RECEBIDAS"."CODIGO_VN"'
    end
    object QryActEstRecebidaPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"PCD_ACT_RECEBIDAS"."PLANILHA"'
    end
    object QryActEstRecebidaANO_VN: TIntegerField
      DisplayLabel = 'Ano Fat.'
      FieldName = 'ANO_VN'
      Origin = '"PCD_ACT_RECEBIDAS"."ANO_VN"'
    end
    object QryActEstRecebidaAVISO: TIntegerField
      DisplayLabel = 'Aviso'
      FieldName = 'AVISO'
      Origin = '"PCD_ACT_RECEBIDAS"."AVISO"'
    end
    object QryActEstRecebidaDT_AVISO: TDateField
      DisplayLabel = 'Dt. Aviso'
      FieldName = 'DT_AVISO'
      Origin = '"PCD_ACT_RECEBIDAS"."DT_AVISO"'
    end
    object QryActEstRecebidaNOME: TIBStringField
      DisplayLabel = 'Parceiro'
      FieldName = 'NOME'
      Origin = '"PCD_ACT_RECEBIDAS"."NOME"'
      Size = 50
    end
    object QryActEstRecebidaENDERECO: TIBStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'ENDERECO'
      Origin = '"PCD_ACT_RECEBIDAS"."ENDERECO"'
      Size = 50
    end
    object QryActEstRecebidaNUMERO: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = '"PCD_ACT_RECEBIDAS"."NUMERO"'
      Size = 15
    end
    object QryActEstRecebidaCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"PCD_ACT_RECEBIDAS"."CIDADE"'
      Size = 50
    end
    object QryActEstRecebidaBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"PCD_ACT_RECEBIDAS"."BAIRRO"'
      Size = 50
    end
    object QryActEstRecebidaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"PCD_ACT_RECEBIDAS"."CEP"'
      FixedChar = True
      Size = 8
    end
    object QryActEstRecebidaUF: TIBStringField
      FieldName = 'UF'
      Origin = '"PCD_ACT_RECEBIDAS"."UF"'
      FixedChar = True
      Size = 2
    end
    object QryActEstRecebidaCOD_END: TIntegerField
      FieldName = 'COD_END'
      Origin = '"PCD_ACT_RECEBIDAS"."COD_END"'
    end
    object QryActEstRecebidaCOD_CID: TIntegerField
      FieldName = 'COD_CID'
      Origin = '"PCD_ACT_RECEBIDAS"."COD_CID"'
    end
    object QryActEstRecebidaCOD_BAI: TIntegerField
      FieldName = 'COD_BAI'
      Origin = '"PCD_ACT_RECEBIDAS"."COD_BAI"'
    end
    object QryActEstRecebidaFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"PCD_ACT_RECEBIDAS"."FONE"'
    end
    object QryActEstRecebidaCPF_CGC: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CGC'
      Origin = '"PCD_ACT_RECEBIDAS"."CPF_CGC"'
      Size = 15
    end
    object QryActEstRecebidaNUMBOLETO: TIntegerField
      FieldName = 'NUMBOLETO'
      Origin = '"PCD_ACT_RECEBIDAS"."NUMBOLETO"'
    end
    object QryActEstRecebidaFATURA: TIntegerField
      FieldName = 'FATURA'
      Origin = '"PCD_ACT_RECEBIDAS"."FATURA"'
    end
    object QryActEstRecebidaNUMDUPLICATA: TIntegerField
      DisplayLabel = 'Duplicata'
      FieldName = 'NUMDUPLICATA'
      Origin = '"PCD_ACT_RECEBIDAS"."NUMDUPLICATA"'
    end
    object QryActEstRecebidaTURNO: TIntegerField
      DisplayLabel = 'Turno'
      FieldName = 'TURNO'
      Origin = '"PCD_ACT_RECEBIDAS"."TURNO"'
    end
    object QryActEstRecebidaLOCAL: TIBStringField
      FieldName = 'LOCAL'
      Origin = '"PCD_ACT_RECEBIDAS"."LOCAL"'
      FixedChar = True
      Size = 3
    end
    object QryActEstRecebidaCOD_INDEXADOR: TIntegerField
      FieldName = 'COD_INDEXADOR'
      Origin = '"PCD_ACT_RECEBIDAS"."COD_INDEXADOR"'
    end
    object QryActEstRecebidaIDX_DATABASE: TDateField
      FieldName = 'IDX_DATABASE'
      Origin = '"PCD_ACT_RECEBIDAS"."IDX_DATABASE"'
    end
    object QryActEstRecebidaIDX_COTACAO: TIBBCDField
      FieldName = 'IDX_COTACAO'
      Origin = '"PCD_ACT_RECEBIDAS"."IDX_COTACAO"'
      Precision = 18
      Size = 4
    end
    object QryActEstRecebidaIDX_QTDE: TIBBCDField
      FieldName = 'IDX_QTDE'
      Origin = '"PCD_ACT_RECEBIDAS"."IDX_QTDE"'
      Precision = 18
      Size = 4
    end
    object QryActEstRecebidaTIPO_JUROS: TIBStringField
      FieldName = 'TIPO_JUROS'
      Origin = '"PCD_ACT_RECEBIDAS"."TIPO_JUROS"'
      FixedChar = True
      Size = 1
    end
    object QryActEstRecebidaBOLETO: TIBStringField
      FieldName = 'BOLETO'
      Origin = '"PCD_ACT_RECEBIDAS"."BOLETO"'
      FixedChar = True
      Size = 1
    end
  end
  object QryActEstPagas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryVerReceberLMTBeforeOpen
    SQL.Strings = (
      'select * from PCD_ACT_PAGAS(:cnpj,:codigo)')
    Left = 344
    Top = 174
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object QryActEstPagasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"PCD_ACT_PAGAS"."CODIGO"'
    end
    object QryActEstPagasANO: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"PCD_ACT_PAGAS"."ANO"'
    end
    object QryActEstPagasCODIGO_PGR: TIntegerField
      DisplayLabel = 'C'#243'd. Pagar'
      FieldName = 'CODIGO_PGR'
      Origin = '"PCD_ACT_PAGAS"."CODIGO_PGR"'
    end
    object QryActEstPagasANO_PG: TIntegerField
      DisplayLabel = 'Ano Pagar'
      FieldName = 'ANO_PG'
      Origin = '"PCD_ACT_PAGAS"."ANO_PG"'
    end
    object QryActEstPagasPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Parceiro'
      FieldName = 'PESSOA_FJ'
      Origin = '"PCD_ACT_PAGAS"."PESSOA_FJ"'
    end
    object QryActEstPagasDT_BAIXA: TDateField
      DisplayLabel = 'Dt. Baixa'
      FieldName = 'DT_BAIXA'
      Origin = '"PCD_ACT_PAGAS"."DT_BAIXA"'
    end
    object QryActEstPagasDT_EMISSAO: TDateField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"PCD_ACT_PAGAS"."DT_EMISSAO"'
    end
    object QryActEstPagasDT_VENCTO: TDateField
      DisplayLabel = 'Dt. Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"PCD_ACT_PAGAS"."DT_VENCTO"'
    end
    object QryActEstPagasDT_LANCTO: TDateField
      DisplayLabel = 'Dt. Lancto'
      FieldName = 'DT_LANCTO'
      Origin = '"PCD_ACT_PAGAS"."DT_LANCTO"'
    end
    object QryActEstPagasDOCTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"PCD_ACT_PAGAS"."DOCTO"'
    end
    object QryActEstPagasPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"PCD_ACT_PAGAS"."PARCELA"'
      FixedChar = True
      Size = 6
    end
    object QryActEstPagasHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"PCD_ACT_PAGAS"."HISTORICO"'
      Size = 100
    end
    object QryActEstPagasHISTORICO_BX: TIBStringField
      DisplayLabel = 'Hist'#243'rico Baixa'
      FieldName = 'HISTORICO_BX'
      Origin = '"PCD_ACT_PAGAS"."HISTORICO_BX"'
      Size = 100
    end
    object QryActEstPagasVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"PCD_ACT_PAGAS"."VALOR"'
      Precision = 18
      Size = 4
    end
    object QryActEstPagasVLR_BAIXA: TIBBCDField
      DisplayLabel = 'Vlr. Baixa'
      FieldName = 'VLR_BAIXA'
      Origin = '"PCD_ACT_PAGAS"."VLR_BAIXA"'
      DisplayFormat = '###,#00.00'
      Precision = 18
      Size = 4
    end
    object QryActEstPagasDESCONTOS: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"PCD_ACT_PAGAS"."DESCONTOS"'
      DisplayFormat = '###,#00.00'
      Precision = 18
      Size = 4
    end
    object QryActEstPagasVLR_PARCIAL: TIBBCDField
      DisplayLabel = 'Vlr. Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"PCD_ACT_PAGAS"."VLR_PARCIAL"'
      DisplayFormat = '###,#00.00'
      Precision = 18
      Size = 4
    end
    object QryActEstPagasJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"PCD_ACT_PAGAS"."JUROS"'
      DisplayFormat = '###,#00.00'
      Precision = 18
      Size = 4
    end
    object QryActEstPagasJUROS_PAG: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS_PAG'
      Origin = '"PCD_ACT_PAGAS"."JUROS_PAG"'
      DisplayFormat = '###,#00.00'
      Precision = 18
      Size = 4
    end
    object QryActEstPagasDESCONTOS_PG: TIBBCDField
      DisplayLabel = 'Descto. Pagar'
      FieldName = 'DESCONTOS_PG'
      Origin = '"PCD_ACT_PAGAS"."DESCONTOS_PG"'
      DisplayFormat = '###,#00.00'
      Precision = 18
      Size = 4
    end
    object QryActEstPagasTAXA_JUROS: TIBBCDField
      DisplayLabel = 'Tx. Juros'
      FieldName = 'TAXA_JUROS'
      Origin = '"PCD_ACT_PAGAS"."TAXA_JUROS"'
      DisplayFormat = '###,#00.00'
      Precision = 18
      Size = 4
    end
    object QryActEstPagasTIPO_JUROS: TIBStringField
      DisplayLabel = 'Tp. Juros'
      FieldName = 'TIPO_JUROS'
      Origin = '"PCD_ACT_PAGAS"."TIPO_JUROS"'
      FixedChar = True
      Size = 1
    end
    object QryActEstPagasORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"PCD_ACT_PAGAS"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object QryActEstPagasCODIGO_VN: TIntegerField
      DisplayLabel = 'C'#243'd. Faturamento'
      FieldName = 'CODIGO_VN'
      Origin = '"PCD_ACT_PAGAS"."CODIGO_VN"'
    end
    object QryActEstPagasPLANILHA: TIntegerField
      FieldName = 'PLANILHA'
      Origin = '"PCD_ACT_PAGAS"."PLANILHA"'
    end
    object QryActEstPagasANO_VN: TIntegerField
      FieldName = 'ANO_VN'
      Origin = '"PCD_ACT_PAGAS"."ANO_VN"'
    end
    object QryActEstPagasAVISO: TIntegerField
      FieldName = 'AVISO'
      Origin = '"PCD_ACT_PAGAS"."AVISO"'
    end
    object QryActEstPagasDT_AVISO: TDateField
      FieldName = 'DT_AVISO'
      Origin = '"PCD_ACT_PAGAS"."DT_AVISO"'
    end
    object QryActEstPagasNOME: TIBStringField
      DisplayLabel = 'Parceiro'
      FieldName = 'NOME'
      Origin = '"PCD_ACT_PAGAS"."NOME"'
      Size = 50
    end
    object QryActEstPagasENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"PCD_ACT_PAGAS"."ENDERECO"'
      Size = 50
    end
    object QryActEstPagasNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"PCD_ACT_PAGAS"."NUMERO"'
      Size = 15
    end
    object QryActEstPagasCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"PCD_ACT_PAGAS"."CIDADE"'
      Size = 50
    end
    object QryActEstPagasBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"PCD_ACT_PAGAS"."BAIRRO"'
      Size = 50
    end
    object QryActEstPagasCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"PCD_ACT_PAGAS"."CEP"'
      FixedChar = True
      Size = 8
    end
    object QryActEstPagasUF: TIBStringField
      FieldName = 'UF'
      Origin = '"PCD_ACT_PAGAS"."UF"'
      FixedChar = True
      Size = 2
    end
    object QryActEstPagasCOD_END: TIntegerField
      FieldName = 'COD_END'
      Origin = '"PCD_ACT_PAGAS"."COD_END"'
    end
    object QryActEstPagasCOD_CID: TIntegerField
      FieldName = 'COD_CID'
      Origin = '"PCD_ACT_PAGAS"."COD_CID"'
    end
    object QryActEstPagasCOD_BAI: TIntegerField
      FieldName = 'COD_BAI'
      Origin = '"PCD_ACT_PAGAS"."COD_BAI"'
    end
    object QryActEstPagasFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"PCD_ACT_PAGAS"."FONE"'
    end
    object QryActEstPagasCPF_CGC: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CGC'
      Origin = '"PCD_ACT_PAGAS"."CPF_CGC"'
      Size = 15
    end
    object QryActEstPagasNUMBOLETO: TIntegerField
      FieldName = 'NUMBOLETO'
      Origin = '"PCD_ACT_PAGAS"."NUMBOLETO"'
    end
    object QryActEstPagasFATURA: TIntegerField
      FieldName = 'FATURA'
      Origin = '"PCD_ACT_PAGAS"."FATURA"'
    end
    object QryActEstPagasNUMDUPLICATA: TIntegerField
      FieldName = 'NUMDUPLICATA'
      Origin = '"PCD_ACT_PAGAS"."NUMDUPLICATA"'
    end
    object QryActEstPagasTURNO: TIntegerField
      DisplayLabel = 'Turno'
      FieldName = 'TURNO'
      Origin = '"PCD_ACT_PAGAS"."TURNO"'
    end
    object QryActEstPagasLOCAL: TIBStringField
      FieldName = 'LOCAL'
      Origin = '"PCD_ACT_PAGAS"."LOCAL"'
      FixedChar = True
      Size = 3
    end
    object QryActEstPagasCOD_INDEXADOR: TIntegerField
      FieldName = 'COD_INDEXADOR'
      Origin = '"PCD_ACT_PAGAS"."COD_INDEXADOR"'
    end
    object QryActEstPagasIDX_DATABASE: TDateField
      FieldName = 'IDX_DATABASE'
      Origin = '"PCD_ACT_PAGAS"."IDX_DATABASE"'
    end
    object QryActEstPagasIDX_COTACAO: TIBBCDField
      FieldName = 'IDX_COTACAO'
      Origin = '"PCD_ACT_PAGAS"."IDX_COTACAO"'
      Precision = 18
      Size = 4
    end
    object QryActEstPagasIDX_QTDE: TIBBCDField
      FieldName = 'IDX_QTDE'
      Origin = '"PCD_ACT_PAGAS"."IDX_QTDE"'
      Precision = 18
      Size = 4
    end
  end
  object QryActEstGeradas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryVerReceberLMTBeforeOpen
    SQL.Strings = (
      'select '
      '    rec.CNPJ,'
      '    rec.BLT_NOSSO_NUM,'
      '    rec.CODIGO,'
      '    rec.ANO,'
      '    rec.PESSOA_FJ,'
      '    rec.DT_EMISSAO,'
      '    rec.DT_VENCTO,'
      '    rec.DT_LANCTO,'
      '    rec.DOCTO,'
      '    rec.PARCELA,'
      '    rec.HISTORICO,'
      '    rec.VALOR,'
      '    rec.VLR_PARCIAL,'
      '    rec.JUROS_REC,'
      '    rec.DESCONTOS,'
      '    rec.BOLETO,'
      '    rec.ORIGEM,'
      '    rec.CODIGO_VN,'
      '    rec.ANO_VN,'
      '    rec.AVISO,'
      '    rec.DT_AVISO,'
      '    rec.SELECIONADO,'
      '    rec.FATURA ,'
      '    rec.TIPO_DOCTO,'
      '    rec.NUMBOLETO,'
      '    rec.NUMDUPLICATA,'
      '    rec.NOME,'
      '    rec.DATA_ULT_BAIXA,'
      '    rec.FLUXO_CAIXA,'
      '    rec.LOCAL_COBRANCA,'
      '    rec.COD_INDEXADOR,'
      '    rec.IDX_DATABASE,'
      '    rec.IDX_COTACAO,'
      '    rec.IDX_QTDE,'
      '    coalesce(rec.ARQUIVO_MORTO,'#39'N'#39') ARQUIVO_MORTO,'
      '    rec.cod_config_titulo'
      'from FIN_CONTAS_RECEBER rec'
      'where rec.cnpj = :cnpj')
    Left = 256
    Top = 174
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object QryActEstGeradasCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_CONTAS_RECEBER"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryActEstGeradasBLT_NOSSO_NUM: TIBStringField
      FieldName = 'BLT_NOSSO_NUM'
      Origin = '"FIN_CONTAS_RECEBER"."BLT_NOSSO_NUM"'
      Size = 15
    end
    object QryActEstGeradasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_CONTAS_RECEBER"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryActEstGeradasANO: TSmallintField
      FieldName = 'ANO'
      Origin = '"FIN_CONTAS_RECEBER"."ANO"'
    end
    object QryActEstGeradasPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_CONTAS_RECEBER"."PESSOA_FJ"'
    end
    object QryActEstGeradasDT_EMISSAO: TDateTimeField
      FieldName = 'DT_EMISSAO'
      Origin = '"FIN_CONTAS_RECEBER"."DT_EMISSAO"'
    end
    object QryActEstGeradasDT_VENCTO: TDateTimeField
      FieldName = 'DT_VENCTO'
      Origin = '"FIN_CONTAS_RECEBER"."DT_VENCTO"'
    end
    object QryActEstGeradasDT_LANCTO: TDateTimeField
      FieldName = 'DT_LANCTO'
      Origin = '"FIN_CONTAS_RECEBER"."DT_LANCTO"'
    end
    object QryActEstGeradasDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"FIN_CONTAS_RECEBER"."DOCTO"'
    end
    object QryActEstGeradasPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"FIN_CONTAS_RECEBER"."PARCELA"'
      Size = 6
    end
    object QryActEstGeradasHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"FIN_CONTAS_RECEBER"."HISTORICO"'
      Size = 100
    end
    object QryActEstGeradasVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"FIN_CONTAS_RECEBER"."VALOR"'
    end
    object QryActEstGeradasVLR_PARCIAL: TFloatField
      FieldName = 'VLR_PARCIAL'
      Origin = '"FIN_CONTAS_RECEBER"."VLR_PARCIAL"'
    end
    object QryActEstGeradasJUROS_REC: TFloatField
      FieldName = 'JUROS_REC'
      Origin = '"FIN_CONTAS_RECEBER"."JUROS_REC"'
    end
    object QryActEstGeradasDESCONTOS: TFloatField
      FieldName = 'DESCONTOS'
      Origin = '"FIN_CONTAS_RECEBER"."DESCONTOS"'
    end
    object QryActEstGeradasBOLETO: TIBStringField
      FieldName = 'BOLETO'
      Origin = '"FIN_CONTAS_RECEBER"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object QryActEstGeradasORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"FIN_CONTAS_RECEBER"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object QryActEstGeradasCODIGO_VN: TIntegerField
      FieldName = 'CODIGO_VN'
      Origin = '"FIN_CONTAS_RECEBER"."CODIGO_VN"'
    end
    object QryActEstGeradasANO_VN: TSmallintField
      FieldName = 'ANO_VN'
      Origin = '"FIN_CONTAS_RECEBER"."ANO_VN"'
    end
    object QryActEstGeradasAVISO: TIntegerField
      FieldName = 'AVISO'
      Origin = '"FIN_CONTAS_RECEBER"."AVISO"'
    end
    object QryActEstGeradasDT_AVISO: TDateTimeField
      FieldName = 'DT_AVISO'
      Origin = '"FIN_CONTAS_RECEBER"."DT_AVISO"'
    end
    object QryActEstGeradasSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"FIN_CONTAS_RECEBER"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object QryActEstGeradasFATURA: TIntegerField
      FieldName = 'FATURA'
      Origin = '"FIN_CONTAS_RECEBER"."FATURA"'
    end
    object QryActEstGeradasTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"FIN_CONTAS_RECEBER"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object QryActEstGeradasNUMBOLETO: TIntegerField
      FieldName = 'NUMBOLETO'
      Origin = '"FIN_CONTAS_RECEBER"."NUMBOLETO"'
    end
    object QryActEstGeradasNUMDUPLICATA: TIntegerField
      FieldName = 'NUMDUPLICATA'
      Origin = '"FIN_CONTAS_RECEBER"."NUMDUPLICATA"'
    end
    object QryActEstGeradasNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_CONTAS_RECEBER"."NOME"'
      Size = 50
    end
    object QryActEstGeradasDATA_ULT_BAIXA: TDateTimeField
      FieldName = 'DATA_ULT_BAIXA'
      Origin = '"FIN_CONTAS_RECEBER"."DATA_ULT_BAIXA"'
    end
    object QryActEstGeradasFLUXO_CAIXA: TDateTimeField
      FieldName = 'FLUXO_CAIXA'
      Origin = '"FIN_CONTAS_RECEBER"."FLUXO_CAIXA"'
    end
    object QryActEstGeradasLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"FIN_CONTAS_RECEBER"."LOCAL_COBRANCA"'
    end
    object QryActEstGeradasCOD_INDEXADOR: TIntegerField
      FieldName = 'COD_INDEXADOR'
      Origin = '"FIN_CONTAS_RECEBER"."COD_INDEXADOR"'
    end
    object QryActEstGeradasIDX_DATABASE: TDateField
      FieldName = 'IDX_DATABASE'
      Origin = '"FIN_CONTAS_RECEBER"."IDX_DATABASE"'
    end
    object QryActEstGeradasIDX_COTACAO: TFloatField
      FieldName = 'IDX_COTACAO'
      Origin = '"FIN_CONTAS_RECEBER"."IDX_COTACAO"'
    end
    object QryActEstGeradasIDX_QTDE: TFloatField
      FieldName = 'IDX_QTDE'
      Origin = '"FIN_CONTAS_RECEBER"."IDX_QTDE"'
    end
    object QryActEstGeradasARQUIVO_MORTO: TIBStringField
      FieldName = 'ARQUIVO_MORTO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object QryActEstGeradasCOD_CONFIG_TITULO: TIntegerField
      FieldName = 'COD_CONFIG_TITULO'
      Origin = '"FIN_CONTAS_RECEBER"."COD_CONFIG_TITULO"'
    end
  end
  object QryActEstTGerados: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryVerReceberLMTBeforeOpen
    SQL.Strings = (
      'select * from PCD_ACT_EST_TITULO_GERADO(:cnpj,:codigo)')
    Left = 537
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object QryActEstTGeradosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"PCD_ACT_EST_TITULO_GERADO"."CODIGO"'
    end
    object QryActEstTGeradosPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"PCD_ACT_EST_TITULO_GERADO"."PARCELA"'
      Size = 6
    end
    object QryActEstTGeradosQTDE_MOEDA: TIBBCDField
      DisplayLabel = 'Qtde Moeda'
      FieldName = 'QTDE_MOEDA'
      Origin = '"PCD_ACT_EST_TITULO_GERADO"."QTDE_MOEDA"'
      DisplayFormat = '###,#00.00'
      Precision = 18
      Size = 4
    end
    object QryActEstTGeradosVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"PCD_ACT_EST_TITULO_GERADO"."VALOR"'
      DisplayFormat = '###,#00.00'
      Precision = 18
      Size = 4
    end
    object QryActEstTGeradosNOME_RAZAO: TIBStringField
      DisplayLabel = 'Parceiro'
      FieldName = 'NOME_RAZAO'
      Origin = '"PCD_ACT_EST_TITULO_GERADO"."NOME_RAZAO"'
      Size = 50
    end
    object QryActEstTGeradosCPF_CNPJ: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CNPJ'
      Origin = '"PCD_ACT_EST_TITULO_GERADO"."CPF_CNPJ"'
      Size = 15
    end
    object QryActEstTGeradosDT_VENCTO: TDateField
      DisplayLabel = 'Dt. Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"PCD_ACT_EST_TITULO_GERADO"."DT_VENCTO"'
    end
    object QryActEstTGeradosTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"PCD_ACT_EST_TITULO_GERADO"."TIPO"'
    end
    object QryActEstTGeradosSTATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = '"PCD_ACT_EST_TITULO_GERADO"."STATUS"'
    end
  end
  object QryActEstChGerados: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryVerReceberLMTBeforeOpen
    SQL.Strings = (
      
        'select  ch.valor,  coalesce(ch.agencia,'#39#39')||'#39'-'#39'||coalesce(ch.dig' +
        'ito_agencia,'#39#39') Agencia, ch.banco, ch.cheque, ch.historico,'
      
        'cast(coalesce(ch.conta,'#39#39')||'#39'-'#39'||coalesce(ch.digito_conta,'#39#39') as' +
        ' varchar(50)) Conta, ch.pre_date, ch.pessoa_fj, psa.nome_razao,'
      #39'Receber'#39' Tipo, b.nome nome_banco'
      'from fin_cheques ch'
      
        'left join glo_pessoas_fj psa on (psa.cnpj = ch.cnpj and psa.codi' +
        'go = ch.pessoa_fj)'
      'left join fin_banco b on (b.codigo = ch.banco)'
      'where  ch.cod_acertoconta = :codigo'
      'and ch.cnpj = :cnpj'
      'union'
      
        'select   ch2.valor, coalesce(ct.agencia,'#39#39') Agencia, ct.banco, c' +
        'ast(ch2.cheque as char(6)) cheque, ch2.historico,'
      'ct.nome Conta, ch2.pre_date, ch2.pessoa_fj, psa.nome_razao,'
      #39'Pagar'#39' Tipo, b.nome nome_banco'
      'from ctb_cheque ch2'
      
        'left join glo_pessoas_fj psa on (psa.cnpj = ch2.cnpj and psa.cod' +
        'igo = ch2.pessoa_fj)'
      
        'left join ctb_planoconta ct on (ct.cnpj = ch2.cnpj and ch2.conta' +
        ' = ct.conta)'
      'left join fin_banco b on (b.codigo = ct.banco)'
      'where ch2.cnpj = :cnpj and ch2.cod_acertoconta = :codigo'
      '')
    Left = 777
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object QryActEstChGeradosAGENCIA: TIBStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      ProviderFlags = []
      Size = 10
    end
    object QryActEstChGeradosBANCO: TIBStringField
      DisplayLabel = 'C'#243'd. Banco'
      FieldName = 'BANCO'
      Origin = '"FIN_CHEQUES"."BANCO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 3
    end
    object QryActEstChGeradosCHEQUE: TIBStringField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"FIN_CHEQUES"."CHEQUE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 6
    end
    object QryActEstChGeradosHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_CHEQUES"."HISTORICO"'
      Size = 100
    end
    object QryActEstChGeradosCONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      ProviderFlags = []
      Size = 50
    end
    object QryActEstChGeradosPRE_DATE: TDateTimeField
      DisplayLabel = 'Pr'#233'-Date'
      FieldName = 'PRE_DATE'
      Origin = '"FIN_CHEQUES"."PRE_DATE"'
    end
    object QryActEstChGeradosPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Parceiro'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_CHEQUES"."PESSOA_FJ"'
    end
    object QryActEstChGeradosNOME_RAZAO: TIBStringField
      DisplayLabel = 'Parceiro'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object QryActEstChGeradosTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      ProviderFlags = []
      FixedChar = True
      Size = 7
    end
    object QryActEstChGeradosNOME_BANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'NOME_BANCO'
      Origin = '"FIN_BANCO"."NOME"'
      Size = 50
    end
    object QryActEstChGeradosVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"FIN_CHEQUES"."VALOR"'
    end
  end
  object QryActEstMvtGerados: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryVerReceberLMTBeforeOpen
    SQL.Strings = (
      'select ctb.codigo, ctb.conta, ctb.banco, ctb.cod_doc, ctb.data,'
      'ctb.historico, ctb.valor, ctb.tipo, b.nome nome_banco'
      'from ctb_movimento_contabil ctb'
      'left join fin_banco b on (ctb.banco = b.codigo)'
      'where ctb.cnpj = :cnpj and ctb.cod_acertoconta = :codigo')
    Left = 777
    Top = 462
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object QryActEstMvtGeradosCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."CONTA"'
    end
    object QryActEstMvtGeradosBANCO: TIBStringField
      DisplayLabel = 'C'#243'd. Banco'
      FieldName = 'BANCO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object QryActEstMvtGeradosCOD_DOC: TIBStringField
      DisplayLabel = 'C'#243'd. Docto'
      FieldName = 'COD_DOC'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."COD_DOC"'
      FixedChar = True
      Size = 3
    end
    object QryActEstMvtGeradosDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."DATA"'
    end
    object QryActEstMvtGeradosHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."HISTORICO"'
      Size = 100
    end
    object QryActEstMvtGeradosVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object QryActEstMvtGeradosTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object QryActEstMvtGeradosNOME_BANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'NOME_BANCO'
      Origin = '"FIN_BANCO"."NOME"'
      Size = 50
    end
    object QryActEstMvtGeradosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object EstornaAcertoContas: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'PCD_ACT_ESTORNA'
    Left = 532
    Top = 529
  end
  object QryFluxoCaixa: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select *  from pcd_fluxo_caixa(:cnpj,:cheque,:cartao,:data1,:dat' +
        'a2)')
    Left = 25
    Top = 528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cheque'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cartao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object QryFluxoCaixaDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"PCD_FLUXO_CAIXA"."DATA"'
    end
    object QryFluxoCaixaTT_RECEBER_EFETIVO: TFloatField
      DisplayLabel = 'T. Receber Efetivo'
      FieldName = 'TT_RECEBER_EFETIVO'
      Origin = '"PCD_FLUXO_CAIXA"."TT_RECEBER_EFETIVO"'
      DisplayFormat = '###,##0.00'
    end
    object QryFluxoCaixaTT_RECEBER_PREVISO: TFloatField
      DisplayLabel = 'T. Receber Previsto'
      FieldName = 'TT_RECEBER_PREVISO'
      Origin = '"PCD_FLUXO_CAIXA"."TT_RECEBER_PREVISO"'
      DisplayFormat = '###,##0.00'
    end
    object QryFluxoCaixaTT_PAGAR_EFETIVO: TFloatField
      DisplayLabel = 'T. Pagar Efetivo'
      FieldName = 'TT_PAGAR_EFETIVO'
      Origin = '"PCD_FLUXO_CAIXA"."TT_PAGAR_EFETIVO"'
      DisplayFormat = '###,##0.00'
    end
    object QryFluxoCaixaTT_PAGAR_PREVISTO: TFloatField
      DisplayLabel = 'T. Pagar Previsto'
      FieldName = 'TT_PAGAR_PREVISTO'
      Origin = '"PCD_FLUXO_CAIXA"."TT_PAGAR_PREVISTO"'
      DisplayFormat = '###,##0.00'
    end
    object QryFluxoCaixaTT_SALDO_PREVISTO: TFloatField
      DisplayLabel = 'T. Saldo Previsto'
      FieldName = 'TT_SALDO_PREVISTO'
      Origin = '"PCD_FLUXO_CAIXA"."TT_SALDO_PREVISTO"'
      DisplayFormat = '###,##0.00'
    end
    object QryFluxoCaixaTT_SALDO_EFETIVO: TFloatField
      DisplayLabel = 'T. Saldo Efetivo'
      FieldName = 'TT_SALDO_EFETIVO'
      Origin = '"PCD_FLUXO_CAIXA"."TT_SALDO_EFETIVO"'
      DisplayFormat = '###,##0.00'
    end
    object QryFluxoCaixaE_CNPJ: TIBStringField
      FieldName = 'E_CNPJ'
      Origin = '"PCD_FLUXO_CAIXA"."E_CNPJ"'
      Size = 14
    end
    object QryFluxoCaixaSALDO_CAIXAS: TFloatField
      DisplayLabel = 'Saldo Caixa'
      FieldName = 'SALDO_CAIXAS'
      Origin = '"PCD_FLUXO_CAIXA"."SALDO_CAIXAS"'
      DisplayFormat = '###,##0.00'
    end
    object QryFluxoCaixaSALDO_CONTAS: TFloatField
      DisplayLabel = 'Saldo Conta'
      FieldName = 'SALDO_CONTAS'
      Origin = '"PCD_FLUXO_CAIXA"."SALDO_CONTAS"'
      DisplayFormat = '###,##0.00'
    end
    object QryFluxoCaixaSALDO_INICIAL: TFloatField
      DisplayLabel = 'Saldo Inicial'
      FieldName = 'SALDO_INICIAL'
      Origin = '"PCD_FLUXO_CAIXA"."SALDO_INICIAL"'
      DisplayFormat = '###,##0.00'
    end
  end
  object QryFlxRecPrevistas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryVerReceberLMTBeforeOpen
    SQL.Strings = (
      
        'select rec.codigo, (coalesce(psa.codigo,'#39#39')||'#39'-'#39'||coalesce(psa.n' +
        'ome_razao,'#39#39')) parceiro,  rec.dt_emissao, rec.dt_vencto, (coales' +
        'ce(rec.valor,0) - coalesce(rec.vlr_parcial,0)) valor, '#39'CONTAS '#192' ' +
        'RECEBER'#39' tipo'
      'from fin_contas_receber rec'
      
        'left join glo_pessoas_fj psa on (psa.cnpj = rec.cnpj and psa.cod' +
        'igo = rec.pessoa_fj)'
      'where rec.cnpj = :cnpj and rec.dt_vencto = :data'
      
        'and ( 0 = (select count(*) from fin_baixas_receber bx where bx.c' +
        'npj = :cnpj and bx.codigo_cr = rec.codigo))'
      'union'
      
        '/*contas '#224' receber previstas, que foram recebidas integralmente*' +
        '/'
      
        'select bx.codigo, (coalesce(psa.codigo,'#39#39')||'#39'-'#39'||coalesce(psa.no' +
        'me_razao,'#39#39')) parceiro, bx.dt_emissao, bx.dt_vencto,'
      
        '(coalesce(bx.valor,0) - coalesce(bx.vlr_parcial,0)) valor, '#39'CONT' +
        'AS RECEBIDAS'#39' tipo from fin_baixas_receber bx'
      
        'left join glo_pessoas_fj psa on (psa.cnpj = bx.cnpj and psa.codi' +
        'go = bx.pessoa_fj)'
      'where bx.cnpj = :cnpj and bx.dt_vencto = :data'
      'and (coalesce(bx.act_tipo_baixa,'#39'1'#39') <> '#39'4'#39')'
      
        'and ( 0 = (select count(*) from fin_contas_receber rec where rec' +
        '.cnpj = :cnpj and rec.codigo = bx.codigo_cr))'
      '/*tirando os movimentos de cart'#227'o */'
      
        'and ( 0 = (select count(*) from fin_movimento_cartao crt where c' +
        'rt.cnpj = :cnpj and crt.cod_acertoconta = bx.cod_acertoconta))'
      
        'and ( 0 = (select count(*) from fin_movimento_cartao crt where c' +
        'rt.cnpj = :cnpj and crt.planilha = bx.planilha))'
      '/*tirando os movimentos de cheque*/'
      
        'and ( 0 = (select count(*) from fin_cheques ch where ch.cnpj = :' +
        'cnpj and ch.cod_acertoconta = bx.cod_acertoconta))'
      
        'and ( 0 = (select count(*) from fin_cheques ch where ch.cnpj = :' +
        'cnpj and ch.planilha = bx.planilha))'
      'union'
      
        'select crt.codigo, (coalesce(psa.codigo,'#39#39')||'#39'-'#39'||coalesce(psa.n' +
        'ome_razao,'#39#39')) parceiro, crt.data dt_emissao, crt.reembolso dt_v' +
        'encto, crt.valor, '#39'CARTAO'#39' tipo from fin_movimento_cartao crt'
      
        'left join glo_pessoas_fj psa on (psa.cnpj = crt.cnpj and psa.cod' +
        'igo = crt.pessoa_fj)'
      'where crt.cnpj = :cnpj and crt.reembolso = :data'
      'union'
      
        'select ch.id codigo, (coalesce(psa.codigo,'#39#39')||'#39'-'#39'||coalesce(psa' +
        '.nome_razao,'#39#39')) parceiro, ch.data_caixa dt_emissao, ch.pre_date' +
        ' dt_vencto, ch.valor, '#39'CHEQUE'#39' tipo  from fin_cheques ch'
      
        'left join glo_pessoas_fj psa on (psa.cnpj = ch.cnpj and psa.codi' +
        'go = ch.pessoa_fj)'
      'where ch.cnpj = :cnpj and ch.pre_date = :data'
      ''
      '')
    Left = 120
    Top = 530
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end>
    object QryFlxRecPrevistasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_CONTAS_RECEBER"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryFlxRecPrevistasDT_EMISSAO: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"FIN_CONTAS_RECEBER"."DT_EMISSAO"'
    end
    object QryFlxRecPrevistasDT_VENCTO: TDateTimeField
      DisplayLabel = 'Dt. Vencimento'
      FieldName = 'DT_VENCTO'
      Origin = '"FIN_CONTAS_RECEBER"."DT_VENCTO"'
    end
    object QryFlxRecPrevistasVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object QryFlxRecPrevistasPARCEIRO: TIBStringField
      DisplayLabel = 'Parceiro'
      FieldName = 'PARCEIRO'
      ProviderFlags = []
      Size = 62
    end
    object QryFlxRecPrevistasTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      ProviderFlags = []
      FixedChar = True
      Size = 16
    end
  end
  object QryFlxRecEfetivo: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryVerReceberLMTBeforeOpen
    SQL.Strings = (
      
        'select bx.codigo, (coalesce(psa.codigo,'#39#39')||'#39'-'#39'||coalesce(psa.no' +
        'me_razao,'#39#39')) parceiro, bx.dt_emissao, bx.dt_vencto,'
      
        'coalesce(bx.vlr_baixa,0) valor, '#39'CONTAS RECEBIDAS'#39' tipo from fin' +
        '_baixas_receber bx'
      
        'left join glo_pessoas_fj psa on (psa.cnpj = bx.cnpj and psa.codi' +
        'go = bx.pessoa_fj)'
      'where bx.cnpj = :cnpj and bx.dt_baixa = :data'
      'and (coalesce(bx.act_tipo_baixa,'#39'1'#39') <> '#39'4'#39')'
      
        'and ( 0 = (select count(*) from fin_movimento_cartao crt where c' +
        'rt.cnpj = :cnpj and crt.cod_acertoconta = bx.cod_acertoconta))'
      
        'and ( 0 = (select count(*) from fin_movimento_cartao crt where c' +
        'rt.cnpj = :cnpj and crt.planilha = bx.planilha))'
      
        'and ( 0 = (select count(*) from fin_cheques ch where ch.cnpj = :' +
        'cnpj and ch.cod_acertoconta = bx.cod_acertoconta))'
      
        'and ( 0 = (select count(*) from fin_cheques ch where ch.cnpj = :' +
        'cnpj and ch.planilha = bx.planilha))'
      'union'
      
        'select crt.codigo, (coalesce(psa.codigo,'#39#39')||'#39'-'#39'||coalesce(psa.n' +
        'ome_razao,'#39#39')) parceiro, crt.data dt_emissao, crt.reembolso dt_v' +
        'encto, crt.valor,'
      ' '#39'CARTAO'#39' tipo from fin_movimento_cartao crt'
      
        'left join glo_pessoas_fj psa on (psa.cnpj = crt.cnpj and psa.cod' +
        'igo = crt.pessoa_fj)'
      'where crt.cnpj = :cnpj and crt.data_conciliacao = :data'
      'union'
      
        'select ch.id codigo, (coalesce(psa.codigo,'#39#39')||'#39'-'#39'||coalesce(psa' +
        '.nome_razao,'#39#39')) parceiro, ch.data_caixa dt_emissao, ch.pre_date' +
        ' dt_vencto, ch.valor,'
      ' '#39'CHEQUE'#39' tipo  from fin_cheques ch'
      
        'left join glo_pessoas_fj psa on (psa.cnpj = ch.cnpj and psa.codi' +
        'go = ch.pessoa_fj)'
      'where ch.cnpj = :cnpj and ch.data_conciliacao = :data')
    Left = 224
    Top = 530
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end>
    object QryFlxRecEfetivoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryFlxRecEfetivoPARCEIRO: TIBStringField
      DisplayLabel = 'Parceiro'
      FieldName = 'PARCEIRO'
      ProviderFlags = []
      Size = 62
    end
    object QryFlxRecEfetivoDT_EMISSAO: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"FIN_BAIXAS_RECEBER"."DT_EMISSAO"'
    end
    object QryFlxRecEfetivoDT_VENCTO: TDateTimeField
      DisplayLabel = 'Dt. Vencimento'
      FieldName = 'DT_VENCTO'
      Origin = '"FIN_BAIXAS_RECEBER"."DT_VENCTO"'
    end
    object QryFlxRecEfetivoVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object QryFlxRecEfetivoTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      ProviderFlags = []
      FixedChar = True
      Size = 16
    end
  end
  object QryFlxPagarPrevistas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryVerReceberLMTBeforeOpen
    SQL.Strings = (
      
        'select pgr.codigo, (coalesce(psa.codigo,'#39#39')||'#39'-'#39'||coalesce(psa.n' +
        'ome_razao,'#39#39')) parceiro,  pgr.dt_emissao,'
      
        'pgr.dt_vencto, (coalesce(pgr.valor,0) - coalesce(pgr.vlr_parcial' +
        ',0)) valor, '#39'CONTAS '#192' PAGAR'#39' tipo from fin_contas_pagar pgr'
      
        'left join glo_pessoas_fj psa on (psa.cnpj = pgr.cnpj and psa.cod' +
        'igo = pgr.pessoa_fj)'
      'where pgr.cnpj = :cnpj and pgr.dt_vencto = :data'
      
        'and ( 0 = (select count(*) from fin_baixas_pagar bx where bx.cnp' +
        'j = :cnpj and bx.codigo_pg = pgr.codigo))'
      'union'
      
        'select bx.codigo, (coalesce(psa.codigo,'#39#39')||'#39'-'#39'||coalesce(psa.no' +
        'me_razao,'#39#39')) parceiro,  bx.dt_emissao,'
      
        'bx.dt_vencto, (coalesce(bx.valor,0) - coalesce(bx.vlr_parcial,0)' +
        ') valor, '#39'CONTAS PAGAS'#39' tipo'
      'from fin_baixas_pagar bx'
      
        'left join glo_pessoas_fj psa on (psa.cnpj = bx.cnpj and psa.codi' +
        'go = bx.pessoa_fj)'
      'where bx.cnpj = :cnpj and bx.dt_vencto = :data'
      
        'and (coalesce(bx.act_tipo_baixa,'#39'1'#39') <> '#39'4'#39') /*4 '#233' renegociacao*' +
        '/'
      
        'and ( 0 = (select count(*) from fin_contas_pagar pgr where pgr.c' +
        'npj = :cnpj and pgr.codigo = bx.codigo_pg))'
      
        'and ( 0 = (select count(*) from ctb_cheque ch where ch.cnpj = :c' +
        'npj and ch.cod_acertoconta = bx.cod_acertoconta))'
      
        'and ( 0 = (select count(*) from ctb_cheque ch where ch.cnpj = :c' +
        'npj and ch.planilha = bx.planilha))'
      'union'
      '/*cheques*/'
      
        'select ch.cheque, (coalesce(psa.codigo,'#39#39')||'#39'-'#39'||coalesce(psa.no' +
        'me_razao,'#39#39')) parceiro,  ch.data dt_emissao,'
      'ch.pre_date dt_vencto, ch.valor, '#39'CHEQUE'#39' tipo'
      'from ctb_cheque ch'
      
        'left join glo_pessoas_fj psa on (psa.cnpj = ch.cnpj and psa.codi' +
        'go = ch.pessoa_fj)'
      'where ch.cnpj = :cnpj and ch.pre_date = :data')
    Left = 328
    Top = 530
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end>
    object QryFlxPagarPrevistasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_CONTAS_PAGAR"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryFlxPagarPrevistasPARCEIRO: TIBStringField
      DisplayLabel = 'Parceiro'
      FieldName = 'PARCEIRO'
      ProviderFlags = []
      Size = 62
    end
    object QryFlxPagarPrevistasDT_EMISSAO: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"FIN_CONTAS_PAGAR"."DT_EMISSAO"'
    end
    object QryFlxPagarPrevistasDT_VENCTO: TDateTimeField
      DisplayLabel = 'Dt. Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"FIN_CONTAS_PAGAR"."DT_VENCTO"'
    end
    object QryFlxPagarPrevistasVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object QryFlxPagarPrevistasTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      ProviderFlags = []
      FixedChar = True
      Size = 14
    end
  end
  object QryFlxPagarEfetivo: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryVerReceberLMTBeforeOpen
    SQL.Strings = (
      
        'select bx.codigo, (coalesce(psa.codigo,'#39#39')||'#39'-'#39'||coalesce(psa.no' +
        'me_razao,'#39#39')) parceiro,  bx.dt_emissao,'
      'bx.dt_vencto, bx.vlr_baixa valor , '#39'CONTAS PAGAS'#39' tipo'
      'from fin_baixas_pagar bx'
      
        'left join glo_pessoas_fj psa on (psa.cnpj = bx.cnpj and psa.codi' +
        'go = bx.pessoa_fj)'
      'where bx.cnpj = :cnpj and bx.dt_baixa = :data'
      
        'and (coalesce(bx.act_tipo_baixa,'#39'1'#39') <> '#39'4'#39') /*4 '#233' renegociacao*' +
        '/'
      
        'and ( 0 = (select count(*) from ctb_cheque ch where ch.cnpj = :c' +
        'npj and ch.cod_acertoconta = bx.cod_acertoconta))'
      
        'and ( 0 = (select count(*) from ctb_cheque ch where ch.cnpj = :c' +
        'npj and ch.planilha = bx.planilha))'
      'union'
      '/*cheques*/'
      
        'select ch.cheque, (coalesce(psa.codigo,'#39#39')||'#39'-'#39'||coalesce(psa.no' +
        'me_razao,'#39#39')) parceiro,  ch.data dt_emissao,'
      'ch.pre_date dt_vencto, ch.valor, '#39'CHEQUE'#39' tipo'
      'from ctb_cheque ch'
      
        'left join glo_pessoas_fj psa on (psa.cnpj = ch.cnpj and psa.codi' +
        'go = ch.pessoa_fj)'
      'where ch.cnpj = :cnpj and ch.data = :data')
    Left = 432
    Top = 530
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end>
    object QryFlxPagarEfetivoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_BAIXAS_PAGAR"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryFlxPagarEfetivoPARCEIRO: TIBStringField
      DisplayLabel = 'Parceiro'
      FieldName = 'PARCEIRO'
      ProviderFlags = []
      Size = 62
    end
    object QryFlxPagarEfetivoDT_EMISSAO: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"FIN_BAIXAS_PAGAR"."DT_EMISSAO"'
    end
    object QryFlxPagarEfetivoDT_VENCTO: TDateTimeField
      DisplayLabel = 'Dt. Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"FIN_BAIXAS_PAGAR"."DT_VENCTO"'
    end
    object QryFlxPagarEfetivoTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      ProviderFlags = []
      FixedChar = True
      Size = 12
    end
    object QryFlxPagarEfetivoVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_BAIXAS_PAGAR"."VLR_BAIXA"'
      DisplayFormat = '###,##0.00'
    end
  end
  object PCD_ESTORNA_PAGAR2: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'PCD_ESTORNA_PAGAR2'
    Left = 651
    Top = 529
  end
  object FolhaPagto: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryManBoletosBeforeOpen
    BeforePost = FolhaPagtoBeforePost
    OnNewRecord = COM_PERFILNewRecord
    DeleteSQL.Strings = (
      'delete from FIN_FOLHA_PAGTO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_FOLHA_PAGTO'
      
        '  (CNPJ, CODIGO, DT_EMISSAO, DT_VENCTO, HISTORICO, NDOCTO, NOME,' +
        ' PARCELA, '
      '   PESSOA_FJ, TIPO, TIPO_MOVTO, VALOR)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DT_EMISSAO, :DT_VENCTO, :HISTORICO, :NDOCTO,' +
        ' :NOME, '
      '   :PARCELA, :PESSOA_FJ, :TIPO, :TIPO_MOVTO, :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  PESSOA_FJ,'
      '  DT_VENCTO,'
      '  DT_EMISSAO,'
      '  NDOCTO,'
      '  VALOR,'
      '  PARCELA,'
      '  HISTORICO,'
      '  TIPO,'
      '  TIPO_MOVTO,'
      '  NOME'
      'from FIN_FOLHA_PAGTO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from FIN_FOLHA_PAGTO fl'
      'where fl.cnpj = :cnpj')
    ModifySQL.Strings = (
      'update FIN_FOLHA_PAGTO'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DT_EMISSAO = :DT_EMISSAO,'
      '  DT_VENCTO = :DT_VENCTO,'
      '  HISTORICO = :HISTORICO,'
      '  NDOCTO = :NDOCTO,'
      '  NOME = :NOME,'
      '  PARCELA = :PARCELA,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  TIPO = :TIPO,'
      '  TIPO_MOVTO = :TIPO_MOVTO,'
      '  VALOR = :VALOR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_FIN_FOLHA_PAGTO_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 786
    Top = 519
    object FolhaPagtoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_FOLHA_PAGTO"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object FolhaPagtoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_FOLHA_PAGTO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FolhaPagtoPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Pessoa'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_FOLHA_PAGTO"."PESSOA_FJ"'
      OnValidate = FolhaPagtoPESSOA_FJValidate
    end
    object FolhaPagtoDT_VENCTO: TDateField
      DisplayLabel = 'Dt. Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"FIN_FOLHA_PAGTO"."DT_VENCTO"'
    end
    object FolhaPagtoDT_EMISSAO: TDateField
      DisplayLabel = 'Dt. Emissao'
      FieldName = 'DT_EMISSAO'
      Origin = '"FIN_FOLHA_PAGTO"."DT_EMISSAO"'
    end
    object FolhaPagtoNDOCTO: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'NDOCTO'
      Origin = '"FIN_FOLHA_PAGTO"."NDOCTO"'
    end
    object FolhaPagtoVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_FOLHA_PAGTO"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object FolhaPagtoPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"FIN_FOLHA_PAGTO"."PARCELA"'
      Size = 4
    end
    object FolhaPagtoHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_FOLHA_PAGTO"."HISTORICO"'
      Size = 100
    end
    object FolhaPagtoTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"FIN_FOLHA_PAGTO"."TIPO"'
      OnValidate = FolhaPagtoTIPOValidate
      FixedChar = True
      Size = 1
    end
    object FolhaPagtoTIPO_MOVTO: TIntegerField
      DisplayLabel = 'Tp. Movimento'
      FieldName = 'TIPO_MOVTO'
      Origin = '"FIN_FOLHA_PAGTO"."TIPO_MOVTO"'
    end
    object FolhaPagtoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_FOLHA_PAGTO"."NOME"'
      Size = 50
    end
  end
  object TipoMovtoFolha: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryManBoletosBeforeOpen
    OnNewRecord = COM_PERFILNewRecord
    DeleteSQL.Strings = (
      'delete from fin_folha_tipo_movimento'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into fin_folha_tipo_movimento'
      '  (CNPJ, CODIGO, DESCRICAO)'
      'values'
      '  (:CNPJ, :CODIGO, :DESCRICAO)')
    RefreshSQL.Strings = (
      'Select * '
      'from fin_folha_tipo_movimento '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from fin_folha_tipo_movimento fl'
      'where fl.cnpj = :cnpj')
    ModifySQL.Strings = (
      'update fin_folha_tipo_movimento'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_FIN_FOLHA_TIPO_MOVIMENTO_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 546
    Top = 463
    object TipoMovtoFolhaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_FOLHA_TIPO_MOVIMENTO"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object TipoMovtoFolhaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_FOLHA_TIPO_MOVIMENTO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TipoMovtoFolhaDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"FIN_FOLHA_TIPO_MOVIMENTO"."DESCRICAO"'
      Size = 50
    end
  end
  object Impressora: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = True
    OpcoesPreview.Remalina = True
    OpcoesPreview.CaptionPreview = 'Visualizar Impress'#227'o'
    OpcoesPreview.PreviewZoom = 115
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    Autor = Deltress
    About = 'RDprint 3.0h - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = ' Configurar Impress'#227'o'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    TestarPorta = False
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumeroPaginaInicial = 1
    PaginaInicial = 1
    PaginaFinal = 9999
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 894
    Top = 373
  end
end
