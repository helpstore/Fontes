object DMMensagem: TDMMensagem
  OldCreateOrder = False
  Left = 13
  Top = 9
  Height = 450
  Width = 638
  object Mensagem: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = MensagemAfterClose
    AfterInsert = MensagemAfterInsert
    BeforeOpen = MensagemBeforeOpen
    DeleteSQL.Strings = (
      'delete from SIS_MENSAGENS'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  ANO = :OLD_ANO')
    InsertSQL.Strings = (
      'insert into SIS_MENSAGENS'
      
        '  (CODIGO, ANO, REMETENTE, DESTINATARIO, ASSUNTO, MENSAGEM, RESE' +
        'RVADO, '
      
        '   DT_ENVIO, DT_RESPOSTA, DT_AVISO, DT_LEITURA, DT_RESP, DT_VALI' +
        'DADE)'
      'values'
      
        '  (:CODIGO, :ANO, :REMETENTE, :DESTINATARIO, :ASSUNTO, :MENSAGEM' +
        ', :RESERVADO, '
      
        '   :DT_ENVIO, :DT_RESPOSTA, :DT_AVISO, :DT_LEITURA, :DT_RESP, :D' +
        'T_VALIDADE)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  ANO,'
      '  REMETENTE,'
      '  DESTINATARIO,'
      '  RESERVADO,'
      '  ASSUNTO,'
      '  MENSAGEM,'
      '  DT_ENVIO,'
      '  DT_RESPOSTA,'
      '  DT_AVISO,'
      '  DT_LEITURA,'
      '  DT_RESP,'
      '  DT_VALIDADE'
      'from SIS_MENSAGENS '
      'where'
      '  CODIGO = :CODIGO and'
      '  ANO = :ANO')
    SelectSQL.Strings = (
      'SELECT CODIGO, '
      '               ANO, '
      '               REMETENTE, '
      '               DESTINATARIO, '
      '               ASSUNTO, '
      '               MENSAGEM, '
      '               RESERVADO,'
      '               DT_ENVIO, '
      '               DT_RESPOSTA, '
      '               DT_AVISO, '
      '               DT_LEITURA, '
      '               DT_RESP,'
      '               DT_VALIDADE'
      'FROM SIS_MENSAGENS WHERE CODIGO IS NULL AND'
      '               ANO IS NULL'
      'ORDER BY ANO, CODIGO')
    ModifySQL.Strings = (
      'update SIS_MENSAGENS'
      'set'
      '  REMETENTE = :REMETENTE,'
      '  DESTINATARIO = :DESTINATARIO,'
      '  ASSUNTO = :ASSUNTO,'
      '  MENSAGEM = :MENSAGEM,'
      '  RESERVADO = :RESERVADO,'
      '  DT_ENVIO = :DT_ENVIO,'
      '  DT_RESPOSTA = :DT_RESPOSTA,'
      '  DT_AVISO = :DT_AVISO,'
      '  DT_LEITURA = :DT_LEITURA,'
      '  DT_RESP = :DT_RESP,'
      '  DT_VALIDADE = :DT_VALIDADE'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  ANO = :OLD_ANO')
    Left = 32
    Top = 24
    object MensagemCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"SIS_MENSAGENS"."CODIGO"'
      Required = True
    end
    object MensagemANO: TIntegerField
      FieldName = 'ANO'
      Origin = '"SIS_MENSAGENS"."ANO"'
      Required = True
    end
    object MensagemREMETENTE: TIBStringField
      FieldName = 'REMETENTE'
      Origin = '"SIS_MENSAGENS"."REMETENTE"'
      Required = True
      Size = 10
    end
    object MensagemDESTINATARIO: TIBStringField
      FieldName = 'DESTINATARIO'
      Origin = '"SIS_MENSAGENS"."DESTINATARIO"'
      Size = 10
    end
    object MensagemASSUNTO: TIBStringField
      FieldName = 'ASSUNTO'
      Origin = '"SIS_MENSAGENS"."ASSUNTO"'
      Required = True
      Size = 50
    end
    object MensagemMENSAGEM: TIBStringField
      FieldName = 'MENSAGEM'
      Origin = '"SIS_MENSAGENS"."MENSAGEM"'
      Required = True
      Size = 120
    end
    object MensagemRESERVADO: TIBStringField
      FieldName = 'RESERVADO'
      Origin = '"SIS_MENSAGENS"."RESERVADO"'
      FixedChar = True
      Size = 1
    end
    object MensagemDT_ENVIO: TDateTimeField
      FieldName = 'DT_ENVIO'
      Origin = '"SIS_MENSAGENS"."DT_ENVIO"'
    end
    object MensagemDT_RESPOSTA: TDateTimeField
      FieldName = 'DT_RESPOSTA'
      Origin = '"SIS_MENSAGENS"."DT_RESPOSTA"'
    end
    object MensagemDT_AVISO: TDateTimeField
      FieldName = 'DT_AVISO'
      Origin = '"SIS_MENSAGENS"."DT_AVISO"'
    end
    object MensagemDT_LEITURA: TDateTimeField
      FieldName = 'DT_LEITURA'
      Origin = '"SIS_MENSAGENS"."DT_LEITURA"'
    end
    object MensagemDT_RESP: TDateTimeField
      FieldName = 'DT_RESP'
      Origin = '"SIS_MENSAGENS"."DT_RESP"'
    end
    object MensagemDT_VALIDADE: TDateTimeField
      FieldName = 'DT_VALIDADE'
      Origin = '"SIS_MENSAGENS"."DT_VALIDADE"'
    end
  end
  object SelUsuario: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = MensagemAfterClose
    BeforeOpen = MensagemBeforeOpen
    SQL.Strings = (
      'SELECT LOGIN, '
      '               NOME '
      'FROM SIS_USUARIOS'
      'ORDER BY NOME')
    Left = 32
    Top = 80
    object SelUsuarioLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = '"SIS_USUARIOS"."LOGIN"'
      Required = True
      Size = 10
    end
    object SelUsuarioNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"SIS_USUARIOS"."NOME"'
      Required = True
      Size = 50
    end
  end
  object Mensagens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = MensagemAfterClose
    BeforeOpen = MensagemBeforeOpen
    SQL.Strings = (
      'SELECT CODIGO, '
      '               ANO, '
      '               REMETENTE, '
      '               DESTINATARIO, '
      '               ASSUNTO, '
      '               MENSAGEM, '
      '               DT_ENVIO, '
      '               DT_RESPOSTA, '
      '               DT_AVISO, '
      '               DT_LEITURA, '
      '               DT_RESP, '
      '               DT_VALIDADE '
      'FROM SIS_MENSAGENS'
      'WHERE DT_VALIDADE >= '#39'TODAY'#39' AND'
      '               RESERVADO = '#39'N'#39
      'ORDER BY CODIGO, ANO')
    Left = 112
    Top = 24
    object MensagensCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"SIS_MENSAGENS"."CODIGO"'
      Required = True
    end
    object MensagensANO: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"SIS_MENSAGENS"."ANO"'
      Required = True
    end
    object MensagensREMETENTE: TIBStringField
      DisplayLabel = 'Remetente'
      FieldName = 'REMETENTE'
      Origin = '"SIS_MENSAGENS"."REMETENTE"'
      Required = True
      Size = 10
    end
    object MensagensDESTINATARIO: TIBStringField
      DisplayLabel = 'Destinat'#225'rio'
      FieldName = 'DESTINATARIO'
      Origin = '"SIS_MENSAGENS"."DESTINATARIO"'
      Size = 10
    end
    object MensagensASSUNTO: TIBStringField
      DisplayLabel = 'Assunto'
      FieldName = 'ASSUNTO'
      Origin = '"SIS_MENSAGENS"."ASSUNTO"'
      Required = True
      Size = 50
    end
    object MensagensMENSAGEM: TIBStringField
      DisplayLabel = 'Mensagem'
      FieldName = 'MENSAGEM'
      Origin = '"SIS_MENSAGENS"."MENSAGEM"'
      Required = True
      Size = 120
    end
    object MensagensDT_ENVIO: TDateTimeField
      DisplayLabel = 'Dt. Envio'
      FieldName = 'DT_ENVIO'
      Origin = '"SIS_MENSAGENS"."DT_ENVIO"'
    end
    object MensagensDT_RESPOSTA: TDateTimeField
      DisplayLabel = 'Dt. Resposta'
      FieldName = 'DT_RESPOSTA'
      Origin = '"SIS_MENSAGENS"."DT_RESPOSTA"'
    end
    object MensagensDT_AVISO: TDateTimeField
      DisplayLabel = 'Dt. Aviso'
      FieldName = 'DT_AVISO'
      Origin = '"SIS_MENSAGENS"."DT_AVISO"'
    end
    object MensagensDT_LEITURA: TDateTimeField
      DisplayLabel = 'Dt. Leitura'
      FieldName = 'DT_LEITURA'
      Origin = '"SIS_MENSAGENS"."DT_LEITURA"'
    end
    object MensagensDT_RESP: TDateTimeField
      DisplayLabel = 'Dt. Resp'
      FieldName = 'DT_RESP'
      Origin = '"SIS_MENSAGENS"."DT_RESP"'
    end
    object MensagensDT_VALIDADE: TDateTimeField
      DisplayLabel = 'Dt. Validade'
      FieldName = 'DT_VALIDADE'
      Origin = '"SIS_MENSAGENS"."DT_VALIDADE"'
    end
  end
  object MensagensRes: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = MensagemAfterClose
    BeforeOpen = MensagensResBeforeOpen
    SQL.Strings = (
      'SELECT CODIGO, '
      '               ANO, '
      '               REMETENTE, '
      '               DESTINATARIO, '
      '               ASSUNTO, '
      '               MENSAGEM, '
      '               DT_ENVIO, '
      '               DT_RESPOSTA, '
      '               DT_AVISO, '
      '               DT_LEITURA, '
      '               DT_RESP, '
      '               DT_VALIDADE '
      'FROM SIS_MENSAGENS'
      'WHERE DT_VALIDADE >= '#39'TODAY'#39' AND'
      '               RESERVADO = '#39'S'#39' AND'
      '               DESTINATARIO = :LOGIN'
      'ORDER BY CODIGO, ANO')
    Left = 112
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'LOGIN'
        ParamType = ptInput
      end>
    object MensagensResCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"SIS_MENSAGENS"."CODIGO"'
      Required = True
    end
    object MensagensResANO: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"SIS_MENSAGENS"."ANO"'
      Required = True
    end
    object MensagensResREMETENTE: TIBStringField
      DisplayLabel = 'Remetente'
      FieldName = 'REMETENTE'
      Origin = '"SIS_MENSAGENS"."REMETENTE"'
      Required = True
      Size = 10
    end
    object MensagensResDESTINATARIO: TIBStringField
      DisplayLabel = 'Destinat'#225'rio'
      FieldName = 'DESTINATARIO'
      Origin = '"SIS_MENSAGENS"."DESTINATARIO"'
      Size = 10
    end
    object MensagensResASSUNTO: TIBStringField
      DisplayLabel = 'Assunto'
      FieldName = 'ASSUNTO'
      Origin = '"SIS_MENSAGENS"."ASSUNTO"'
      Required = True
      Size = 50
    end
    object MensagensResMENSAGEM: TIBStringField
      DisplayLabel = 'Mensagem'
      FieldName = 'MENSAGEM'
      Origin = '"SIS_MENSAGENS"."MENSAGEM"'
      Required = True
      Size = 120
    end
    object MensagensResDT_ENVIO: TDateTimeField
      DisplayLabel = 'Dt. Envio'
      FieldName = 'DT_ENVIO'
      Origin = '"SIS_MENSAGENS"."DT_ENVIO"'
    end
    object MensagensResDT_RESPOSTA: TDateTimeField
      DisplayLabel = 'Dt. Resposta'
      FieldName = 'DT_RESPOSTA'
      Origin = '"SIS_MENSAGENS"."DT_RESPOSTA"'
    end
    object MensagensResDT_AVISO: TDateTimeField
      DisplayLabel = 'Dt. Envio'
      FieldName = 'DT_AVISO'
      Origin = '"SIS_MENSAGENS"."DT_AVISO"'
    end
    object MensagensResDT_LEITURA: TDateTimeField
      DisplayLabel = 'Dt. Leitura'
      FieldName = 'DT_LEITURA'
      Origin = '"SIS_MENSAGENS"."DT_LEITURA"'
    end
    object MensagensResDT_RESP: TDateTimeField
      FieldName = 'DT_RESP'
      Origin = '"SIS_MENSAGENS"."DT_RESP"'
    end
    object MensagensResDT_VALIDADE: TDateTimeField
      DisplayLabel = 'Dt. Validade'
      FieldName = 'DT_VALIDADE'
      Origin = '"SIS_MENSAGENS"."DT_VALIDADE"'
    end
  end
  object UpdMSG: TIBSQL
    Database = DmApp.Database
    SQL.Strings = (
      
        'update sis_mensagens msg set msg.dt_leitura = cast('#39'today'#39' as da' +
        'te)'
      'where msg.codigo = :codigo')
    Transaction = DmApp.Transaction
    Left = 29
    Top = 128
  end
end
