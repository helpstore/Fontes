object DmPlano: TDmPlano
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 313
  Top = 176
  Height = 450
  Width = 638
  object Plano: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = PlanoAfterClose
    AfterInsert = PlanoAfterInsert
    BeforeOpen = PlanoBeforeOpen
    BeforePost = PlanoBeforePost
    DeleteSQL.Strings = (
      'delete from CTB_PLANOCONTA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA')
    InsertSQL.Strings = (
      'insert into CTB_PLANOCONTA'
      
        '  (AGENCIA, BANCO, BLT_ACEITE_DOCTO, BLT_AGENCIA, BLT_CARTEIRA, ' +
        'BLT_COD_CEDENTE, '
      
        '   BLT_CONTA, BLT_CONVENIO, BLT_DIAS_ABATIMENTO, BLT_DIAS_DESCON' +
        'TO, BLT_DIAS_MORA_JUROS, '
      
        '   BLT_DIAS_PROTESTO, BLT_DIG_AGENCIA, BLT_DIG_COD_CEDENTE, BLT_' +
        'DIG_CONTA, '
      
        '   BLT_DIR_REMESSA, BLT_DIR_RETORNO, BLT_INSTRUCAO, BLT_LAYOUT, ' +
        'BLT_LAYOUT_IMPRESSAO, '
      
        '   BLT_LOCAL_PAGTO, BLT_MODALIDADE, BLT_MULTA, BLT_NOSSO_NUM_FIM' +
        ', BLT_NOSSO_NUM_INI, '
      
        '   BLT_NOSSO_NUM_PROX, BLT_NUM_COPIAS, BLT_PCT_ABATIMENTO, BLT_P' +
        'CT_DESCONTO, '
      
        '   BLT_VLR_IOF, BLT_VLR_OUTRAS_DESP, CNPJ, CODIGO, CONTA, CONTA_' +
        'CORRENTE, '
      
        '   CONTAPAI, CTB_FLUXO_CAIXA, DESP_BANCARIA, DV_AGENCIA, DV_AGEN' +
        'CIA_CONTA, '
      
        '   DV_CONTA_CORRENTE, GERA_BOLETOS, MORA_DIARIA, NOME, TIPO, ULT' +
        'IMO_CHEQUE)'
      'values'
      
        '  (:AGENCIA, :BANCO, :BLT_ACEITE_DOCTO, :BLT_AGENCIA, :BLT_CARTE' +
        'IRA, :BLT_COD_CEDENTE, '
      
        '   :BLT_CONTA, :BLT_CONVENIO, :BLT_DIAS_ABATIMENTO, :BLT_DIAS_DE' +
        'SCONTO, '
      
        '   :BLT_DIAS_MORA_JUROS, :BLT_DIAS_PROTESTO, :BLT_DIG_AGENCIA, :' +
        'BLT_DIG_COD_CEDENTE, '
      
        '   :BLT_DIG_CONTA, :BLT_DIR_REMESSA, :BLT_DIR_RETORNO, :BLT_INST' +
        'RUCAO, '
      
        '   :BLT_LAYOUT, :BLT_LAYOUT_IMPRESSAO, :BLT_LOCAL_PAGTO, :BLT_MO' +
        'DALIDADE, '
      
        '   :BLT_MULTA, :BLT_NOSSO_NUM_FIM, :BLT_NOSSO_NUM_INI, :BLT_NOSS' +
        'O_NUM_PROX, '
      
        '   :BLT_NUM_COPIAS, :BLT_PCT_ABATIMENTO, :BLT_PCT_DESCONTO, :BLT' +
        '_VLR_IOF, '
      
        '   :BLT_VLR_OUTRAS_DESP, :CNPJ, :CODIGO, :CONTA, :CONTA_CORRENTE' +
        ', :CONTAPAI, '
      
        '   :CTB_FLUXO_CAIXA, :DESP_BANCARIA, :DV_AGENCIA, :DV_AGENCIA_CO' +
        'NTA, :DV_CONTA_CORRENTE, '
      '   :GERA_BOLETOS, :MORA_DIARIA, :NOME, :TIPO, :ULTIMO_CHEQUE)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CONTA,'
      '  CODIGO,'
      '  CONTAPAI,'
      '  NOME,'
      '  BANCO,'
      '  ULTIMO_CHEQUE,'
      '  TIPO,'
      '  AGENCIA,'
      '  DV_AGENCIA,'
      '  CONTA_CORRENTE,'
      '  DV_CONTA_CORRENTE,'
      '  DV_AGENCIA_CONTA,'
      '  CTB_FLUXO_CAIXA,'
      '  GERA_BOLETOS,'
      '  BLT_INSTRUCAO,'
      '  BLT_LOCAL_PAGTO,'
      '  BLT_COD_CEDENTE,'
      '  BLT_DIG_COD_CEDENTE,'
      '  BLT_AGENCIA,'
      '  BLT_DIG_AGENCIA,'
      '  BLT_CONVENIO,'
      '  BLT_CONTA,'
      '  BLT_DIG_CONTA,'
      '  BLT_CARTEIRA,'
      '  BLT_LAYOUT,'
      '  BLT_ACEITE_DOCTO,'
      '  BLT_DIAS_ABATIMENTO,'
      '  BLT_DIAS_DESCONTO,'
      '  BLT_DIAS_MORA_JUROS,'
      '  BLT_DIAS_PROTESTO,'
      '  BLT_PCT_ABATIMENTO,'
      '  BLT_PCT_DESCONTO,'
      '  DESP_BANCARIA,'
      '  MORA_DIARIA,'
      '  BLT_VLR_IOF,'
      '  BLT_VLR_OUTRAS_DESP,'
      '  BLT_DIR_REMESSA,'
      '  BLT_DIR_RETORNO,'
      '  BLT_MULTA,'
      '  BLT_NOSSO_NUM_INI,'
      '  BLT_NOSSO_NUM_FIM,'
      '  BLT_NOSSO_NUM_PROX,'
      '  BLT_MODALIDADE,'
      '  BLT_LAYOUT_IMPRESSAO,'
      '  BLT_NUM_COPIAS'
      'from CTB_PLANOCONTA '
      'where'
      '  CNPJ = :CNPJ and'
      '  CONTA = :CONTA')
    SelectSQL.Strings = (
      'select *'
      'from CTB_PLANOCONTA'
      'WHERE CNPJ = :CNPJ'
      '')
    ModifySQL.Strings = (
      'update CTB_PLANOCONTA'
      'set'
      '  AGENCIA = :AGENCIA,'
      '  BANCO = :BANCO,'
      '  BLT_ACEITE_DOCTO = :BLT_ACEITE_DOCTO,'
      '  BLT_AGENCIA = :BLT_AGENCIA,'
      '  BLT_CARTEIRA = :BLT_CARTEIRA,'
      '  BLT_COD_CEDENTE = :BLT_COD_CEDENTE,'
      '  BLT_CONTA = :BLT_CONTA,'
      '  BLT_CONVENIO = :BLT_CONVENIO,'
      '  BLT_DIAS_ABATIMENTO = :BLT_DIAS_ABATIMENTO,'
      '  BLT_DIAS_DESCONTO = :BLT_DIAS_DESCONTO,'
      '  BLT_DIAS_MORA_JUROS = :BLT_DIAS_MORA_JUROS,'
      '  BLT_DIAS_PROTESTO = :BLT_DIAS_PROTESTO,'
      '  BLT_DIG_AGENCIA = :BLT_DIG_AGENCIA,'
      '  BLT_DIG_COD_CEDENTE = :BLT_DIG_COD_CEDENTE,'
      '  BLT_DIG_CONTA = :BLT_DIG_CONTA,'
      '  BLT_DIR_REMESSA = :BLT_DIR_REMESSA,'
      '  BLT_DIR_RETORNO = :BLT_DIR_RETORNO,'
      '  BLT_INSTRUCAO = :BLT_INSTRUCAO,'
      '  BLT_LAYOUT = :BLT_LAYOUT,'
      '  BLT_LAYOUT_IMPRESSAO = :BLT_LAYOUT_IMPRESSAO,'
      '  BLT_LOCAL_PAGTO = :BLT_LOCAL_PAGTO,'
      '  BLT_MODALIDADE = :BLT_MODALIDADE,'
      '  BLT_MULTA = :BLT_MULTA,'
      '  BLT_NOSSO_NUM_FIM = :BLT_NOSSO_NUM_FIM,'
      '  BLT_NOSSO_NUM_INI = :BLT_NOSSO_NUM_INI,'
      '  BLT_NOSSO_NUM_PROX = :BLT_NOSSO_NUM_PROX,'
      '  BLT_NUM_COPIAS = :BLT_NUM_COPIAS,'
      '  BLT_PCT_ABATIMENTO = :BLT_PCT_ABATIMENTO,'
      '  BLT_PCT_DESCONTO = :BLT_PCT_DESCONTO,'
      '  BLT_VLR_IOF = :BLT_VLR_IOF,'
      '  BLT_VLR_OUTRAS_DESP = :BLT_VLR_OUTRAS_DESP,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  CONTA = :CONTA,'
      '  CONTA_CORRENTE = :CONTA_CORRENTE,'
      '  CONTAPAI = :CONTAPAI,'
      '  CTB_FLUXO_CAIXA = :CTB_FLUXO_CAIXA,'
      '  DESP_BANCARIA = :DESP_BANCARIA,'
      '  DV_AGENCIA = :DV_AGENCIA,'
      '  DV_AGENCIA_CONTA = :DV_AGENCIA_CONTA,'
      '  DV_CONTA_CORRENTE = :DV_CONTA_CORRENTE,'
      '  GERA_BOLETOS = :GERA_BOLETOS,'
      '  MORA_DIARIA = :MORA_DIARIA,'
      '  NOME = :NOME,'
      '  TIPO = :TIPO,'
      '  ULTIMO_CHEQUE = :ULTIMO_CHEQUE'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA')
    Left = 16
    Top = 8
    object PlanoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"PLANOCONTA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object PlanoCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Required = True
    end
    object PlanoCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      EditMask = '9.99.99.99.9999;1; '
      Size = 15
    end
    object PlanoCONTAPAI: TIBStringField
      DisplayLabel = 'Conta Pai'
      FieldName = 'CONTAPAI'
      Size = 10
    end
    object PlanoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object PlanoBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"PLANOCONTA"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object PlanoULTIMO_CHEQUE: TIntegerField
      DisplayLabel = #218'lt. Cheque'
      FieldName = 'ULTIMO_CHEQUE'
      Origin = '"CTB_PLANOCONTA"."ULTIMO_CHEQUE"'
    end
    object PlanoTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"CTB_PLANOCONTA"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object PlanoAGENCIA: TIBStringField
      FieldName = 'AGENCIA'
      Origin = '"CTB_PLANOCONTA"."AGENCIA"'
      Size = 10
    end
    object PlanoDV_AGENCIA: TIBStringField
      FieldName = 'DV_AGENCIA'
      Origin = '"CTB_PLANOCONTA"."DV_AGENCIA"'
      FixedChar = True
      Size = 3
    end
    object PlanoCONTA_CORRENTE: TIBStringField
      FieldName = 'CONTA_CORRENTE'
      Origin = '"CTB_PLANOCONTA"."CONTA_CORRENTE"'
      Size = 15
    end
    object PlanoDV_CONTA_CORRENTE: TIBStringField
      FieldName = 'DV_CONTA_CORRENTE'
      Origin = '"CTB_PLANOCONTA"."DV_CONTA_CORRENTE"'
      FixedChar = True
      Size = 3
    end
    object PlanoDV_AGENCIA_CONTA: TIBStringField
      FieldName = 'DV_AGENCIA_CONTA'
      Origin = '"CTB_PLANOCONTA"."DV_AGENCIA_CONTA"'
      FixedChar = True
      Size = 3
    end
    object PlanoCTB_FLUXO_CAIXA: TIBStringField
      FieldName = 'CTB_FLUXO_CAIXA'
      Origin = '"CTB_PLANOCONTA"."CTB_FLUXO_CAIXA"'
      FixedChar = True
      Size = 1
    end
    object PlanoGERA_BOLETOS: TIBStringField
      FieldName = 'GERA_BOLETOS'
      Origin = '"CTB_PLANOCONTA"."GERA_BOLETOS"'
      FixedChar = True
      Size = 1
    end
    object PlanoBLT_INSTRUCAO: TMemoField
      DisplayLabel = 'Blt. Instru'#231#227'o'
      FieldName = 'BLT_INSTRUCAO'
      Origin = '"CTB_PLANOCONTA"."BLT_INSTRUCAO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object PlanoBLT_LOCAL_PAGTO: TIBStringField
      DisplayLabel = 'Blt. Local de Pagamento'
      FieldName = 'BLT_LOCAL_PAGTO'
      Origin = '"CTB_PLANOCONTA"."BLT_LOCAL_PAGTO"'
      Size = 200
    end
    object PlanoBLT_COD_CEDENTE: TIntegerField
      DisplayLabel = 'Blt. C'#243'digo Cedente'
      FieldName = 'BLT_COD_CEDENTE'
      Origin = '"CTB_PLANOCONTA"."BLT_COD_CEDENTE"'
    end
    object PlanoBLT_DIG_COD_CEDENTE: TIBStringField
      DisplayLabel = 'Blt. Digito Cedente'
      FieldName = 'BLT_DIG_COD_CEDENTE'
      Origin = '"CTB_PLANOCONTA"."BLT_DIG_COD_CEDENTE"'
      FixedChar = True
      Size = 1
    end
    object PlanoBLT_CONVENIO: TIntegerField
      DisplayLabel = 'Blt. Convenio'
      FieldName = 'BLT_CONVENIO'
      Origin = '"CTB_PLANOCONTA"."BLT_CONVENIO"'
    end
    object PlanoBLT_CARTEIRA: TIBStringField
      FieldName = 'BLT_CARTEIRA'
      Origin = '"CTB_PLANOCONTA"."BLT_CARTEIRA"'
      Size = 10
    end
    object PlanoBLT_LAYOUT: TSmallintField
      FieldName = 'BLT_LAYOUT'
      Origin = '"CTB_PLANOCONTA"."BLT_LAYOUT"'
    end
    object PlanoBLT_ACEITE_DOCTO: TIBStringField
      DisplayLabel = 'Blt. Aceite'
      FieldName = 'BLT_ACEITE_DOCTO'
      Origin = '"CTB_PLANOCONTA"."BLT_ACEITE_DOCTO"'
      FixedChar = True
      Size = 1
    end
    object PlanoBLT_DIAS_ABATIMENTO: TIBStringField
      DisplayLabel = 'Blt. Dias Abatimento'
      FieldName = 'BLT_DIAS_ABATIMENTO'
      Origin = '"CTB_PLANOCONTA"."BLT_DIAS_ABATIMENTO"'
      FixedChar = True
      Size = 14
    end
    object PlanoBLT_DIAS_DESCONTO: TIntegerField
      DisplayLabel = 'Blt. Dias Desconto'
      FieldName = 'BLT_DIAS_DESCONTO'
      Origin = '"CTB_PLANOCONTA"."BLT_DIAS_DESCONTO"'
    end
    object PlanoBLT_DIAS_MORA_JUROS: TIntegerField
      DisplayLabel = 'Blt. Dias Mora Juros'
      FieldName = 'BLT_DIAS_MORA_JUROS'
      Origin = '"CTB_PLANOCONTA"."BLT_DIAS_MORA_JUROS"'
    end
    object PlanoBLT_DIAS_PROTESTO: TIntegerField
      DisplayLabel = 'Blt. Dias Protesto'
      FieldName = 'BLT_DIAS_PROTESTO'
      Origin = '"CTB_PLANOCONTA"."BLT_DIAS_PROTESTO"'
    end
    object PlanoBLT_PCT_ABATIMENTO: TFloatField
      DisplayLabel = 'Blt. Abatimento(%)'
      FieldName = 'BLT_PCT_ABATIMENTO'
      Origin = '"CTB_PLANOCONTA"."BLT_PCT_ABATIMENTO"'
      DisplayFormat = '###,##0.00'
    end
    object PlanoBLT_PCT_DESCONTO: TFloatField
      DisplayLabel = 'Blt. Desconto(%)'
      FieldName = 'BLT_PCT_DESCONTO'
      Origin = '"CTB_PLANOCONTA"."BLT_PCT_DESCONTO"'
      DisplayFormat = '###,##0.00'
    end
    object PlanoDESP_BANCARIA: TFloatField
      DisplayLabel = 'Blt. Desp. Bancaria'
      FieldName = 'DESP_BANCARIA'
      Origin = '"CTB_PLANOCONTA"."DESP_BANCARIA"'
      DisplayFormat = '###,##0.00'
    end
    object PlanoMORA_DIARIA: TFloatField
      DisplayLabel = 'Blt. Mora Diaria'
      FieldName = 'MORA_DIARIA'
      Origin = '"CTB_PLANOCONTA"."MORA_DIARIA"'
      DisplayFormat = '###,##0.00'
    end
    object PlanoBLT_VLR_IOF: TFloatField
      DisplayLabel = 'Blt. Vlr. IOF'
      FieldName = 'BLT_VLR_IOF'
      Origin = '"CTB_PLANOCONTA"."BLT_VLR_IOF"'
      DisplayFormat = '###,##0.00'
    end
    object PlanoBLT_VLR_OUTRAS_DESP: TFloatField
      DisplayLabel = 'Blt. Vlr. Outras Dispesas'
      FieldName = 'BLT_VLR_OUTRAS_DESP'
      Origin = '"CTB_PLANOCONTA"."BLT_VLR_OUTRAS_DESP"'
      DisplayFormat = '###,##0.00'
    end
    object PlanoBLT_DIR_REMESSA: TIBStringField
      DisplayLabel = 'Blt. Diretorio Remessa'
      FieldName = 'BLT_DIR_REMESSA'
      Origin = '"CTB_PLANOCONTA"."BLT_DIR_REMESSA"'
      Size = 200
    end
    object PlanoBLT_DIR_RETORNO: TIBStringField
      DisplayLabel = 'Blt. Diretorio Retorno'
      FieldName = 'BLT_DIR_RETORNO'
      Origin = '"CTB_PLANOCONTA"."BLT_DIR_RETORNO"'
      Size = 200
    end
    object PlanoBLT_MULTA: TFloatField
      DisplayLabel = 'Blt. Multa'
      FieldName = 'BLT_MULTA'
      Origin = '"CTB_PLANOCONTA"."BLT_MULTA"'
      DisplayFormat = '###,##0.00'
    end
    object PlanoBLT_NOSSO_NUM_INI: TIntegerField
      DisplayLabel = 'Blt. Nosso N'#250'mero Ini.'
      FieldName = 'BLT_NOSSO_NUM_INI'
      Origin = '"CTB_PLANOCONTA"."BLT_NOSSO_NUM_INI"'
    end
    object PlanoBLT_NOSSO_NUM_FIM: TIntegerField
      DisplayLabel = 'Blt. Nosso N'#250'mero Fim'
      FieldName = 'BLT_NOSSO_NUM_FIM'
      Origin = '"CTB_PLANOCONTA"."BLT_NOSSO_NUM_FIM"'
    end
    object PlanoBLT_NOSSO_NUM_PROX: TIntegerField
      DisplayLabel = 'Blt. Nosso N'#250'mero Pr'#243'x.'
      FieldName = 'BLT_NOSSO_NUM_PROX'
      Origin = '"CTB_PLANOCONTA"."BLT_NOSSO_NUM_PROX"'
    end
    object PlanoBLT_AGENCIA: TIBStringField
      FieldName = 'BLT_AGENCIA'
      Origin = '"CTB_PLANOCONTA"."BLT_AGENCIA"'
      Size = 10
    end
    object PlanoBLT_DIG_AGENCIA: TIBStringField
      FieldName = 'BLT_DIG_AGENCIA'
      Origin = '"CTB_PLANOCONTA"."BLT_DIG_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object PlanoBLT_CONTA: TIBStringField
      FieldName = 'BLT_CONTA'
      Origin = '"CTB_PLANOCONTA"."BLT_CONTA"'
      Size = 10
    end
    object PlanoBLT_DIG_CONTA: TIBStringField
      FieldName = 'BLT_DIG_CONTA'
      Origin = '"CTB_PLANOCONTA"."BLT_DIG_CONTA"'
      FixedChar = True
      Size = 1
    end
    object PlanoBLT_MODALIDADE: TIBStringField
      FieldName = 'BLT_MODALIDADE'
      Origin = '"CTB_PLANOCONTA"."BLT_MODALIDADE"'
      Size = 10
    end
    object PlanoBLT_LAYOUT_IMPRESSAO: TIBStringField
      FieldName = 'BLT_LAYOUT_IMPRESSAO'
      Origin = '"CTB_PLANOCONTA"."BLT_LAYOUT_IMPRESSAO"'
      FixedChar = True
      Size = 1
    end
    object PlanoBLT_NUM_COPIAS: TIntegerField
      FieldName = 'BLT_NUM_COPIAS'
      Origin = '"CTB_PLANOCONTA"."BLT_NUM_COPIAS"'
    end
  end
  object Movimento: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = PlanoBeforeOpen
    SQL.Strings = (
      'select'
      '    CNPJ,'
      '    CODIGO,'
      '    CODIGO_CONTABIL,'
      '    DATA,'
      '    TIPO,'
      '    DOCUMENTO,'
      '    HISTORICO,'
      '    MES,'
      '    ANO,'
      '    VALOR,'
      '    CONTA,'
      '    ORIGEM,'
      '    PLANILHA,'
      '    CONTRA_PARTIDA,'
      '    CREDITO,'
      '    DEBITO,'
      '    EXCLUIR'
      'from VER_MOVIMENTO_CONTABIL'
      '( :EMPRESA )')
    Left = 79
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMPRESA'
        ParamType = ptUnknown
      end>
    object MovimentoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Required = True
    end
    object MovimentoDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Required = True
    end
    object MovimentoTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Required = True
      Size = 1
    end
    object MovimentoDOCUMENTO: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
      Required = True
    end
    object MovimentoHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      DisplayWidth = 100
      FieldName = 'HISTORICO'
      Size = 100
    end
    object MovimentoMES: TIntegerField
      DisplayLabel = 'M'#234's'
      FieldName = 'MES'
      Required = True
    end
    object MovimentoANO: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Required = True
    end
    object MovimentoCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Required = True
    end
    object MovimentoORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Required = True
      Size = 15
    end
    object MovimentoPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Required = True
    end
    object MovimentoCONTRA_PARTIDA: TIntegerField
      DisplayLabel = 'Contra Partida'
      FieldName = 'CONTRA_PARTIDA'
      Required = True
    end
    object MovimentoCREDITO: TIBStringField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'CREDITO'
      Size = 50
    end
    object MovimentoDEBITO: TIBStringField
      DisplayLabel = 'D'#233'bito'
      FieldName = 'DEBITO'
      Size = 50
    end
    object MovimentoVALOR: TIBBCDField
      FieldName = 'Valor'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 4
    end
    object MovimentoCODIGO_CONTABIL: TIBStringField
      FieldName = 'CODIGO_CONTABIL'
      Origin = '"VER_MOVIMENTO_CONTABIL"."CODIGO_CONTABIL"'
      Size = 15
    end
    object MovimentoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"VER_MOVIMENTO_CONTABIL"."CNPJ"'
      Size = 14
    end
    object MovimentoEXCLUIR: TIBStringField
      DisplayLabel = 'Exc'
      FieldName = 'EXCLUIR'
      Origin = '"VER_MOVIMENTO_CONTABIL"."EXCLUIR"'
      FixedChar = True
      Size = 1
    end
  end
  object Razao: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from VER_RAZAO('#39#39','#39'01/01/1989'#39','#39'01/01/1989'#39','#39#39','#39#39')')
    Left = 80
    Top = 56
    object RazaoCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"VER_RAZAO"."CONTA"'
    end
    object RazaoCODIGOPLANO: TIBStringField
      DisplayLabel = 'C'#243'd. Plano'
      FieldName = 'CODIGOPLANO'
      Origin = '"VER_RAZAO"."CODIGOPLANO"'
      Size = 15
    end
    object RazaoCONTAPAI: TIBStringField
      DisplayLabel = 'Conta Pai'
      FieldName = 'CONTAPAI'
      Origin = '"VER_RAZAO"."CONTAPAI"'
      Size = 10
    end
    object RazaoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_RAZAO"."NOME"'
      Size = 50
    end
    object RazaoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_RAZAO"."CODIGO"'
    end
    object RazaoDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_RAZAO"."DATA"'
    end
    object RazaoTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"VER_RAZAO"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object RazaoDOCUMENTO: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
      Origin = '"VER_RAZAO"."DOCUMENTO"'
    end
    object RazaoHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      DisplayWidth = 100
      FieldName = 'HISTORICO'
      Origin = '"VER_RAZAO"."HISTORICO"'
      Size = 100
    end
    object RazaoMES: TIntegerField
      DisplayLabel = 'M'#234's'
      FieldName = 'MES'
      Origin = '"VER_RAZAO"."MES"'
    end
    object RazaoANO: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"VER_RAZAO"."ANO"'
    end
    object RazaoVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_RAZAO"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object RazaoORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"VER_RAZAO"."ORIGEM"'
      Size = 15
    end
    object RazaoPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"VER_RAZAO"."PLANILHA"'
    end
    object RazaoCONTRA_PARTIDA: TIntegerField
      DisplayLabel = 'Contra Partida'
      FieldName = 'CONTRA_PARTIDA'
      Origin = '"VER_RAZAO"."CONTRA_PARTIDA"'
    end
  end
  object Balancete: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT '
      '    CNPJ,'
      '    CODIGOPLANO,'
      '    CONTAPAI,'
      '    DATA,'
      '    TIPO,'
      '    CREDITO,'
      '    DEBITO,'
      '    CONTA,'
      '    NOME,'
      '    ANTERIOR '
      
        'FROM VER_BALANCETE_SINTETICO ('#39#39','#39'01/01/2002'#39','#39'12/31/2002'#39','#39'1'#39','#39 +
        '4'#39')')
    Left = 16
    Top = 56
    object BalanceteCODIGOPLANO: TIBStringField
      FieldName = 'CODIGOPLANO'
      Size = 15
    end
    object BalanceteCONTAPAI: TIBStringField
      FieldName = 'CONTAPAI'
      Size = 10
    end
    object BalanceteCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object BalanceteNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object BalanceteCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"VER_BALANCETE_SINTETICO"."CNPJ"'
      Size = 14
    end
    object BalanceteCREDITO: TIBBCDField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'CREDITO'
      Origin = '"VER_BALANCETE_SINTETICO"."CREDITO"'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 4
    end
    object BalanceteDEBITO: TIBBCDField
      DisplayLabel = 'D'#233'bito'
      FieldName = 'DEBITO'
      Origin = '"VER_BALANCETE_SINTETICO"."DEBITO"'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 4
    end
    object BalanceteDATA: TDateField
      FieldName = 'DATA'
      Origin = '"VER_BALANCETE_SINTETICO"."DATA"'
    end
    object BalanceteTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"VER_BALANCETE_SINTETICO"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object BalanceteANTERIOR: TIBBCDField
      FieldName = 'ANTERIOR'
      Origin = '"VER_BALANCETE_SINTETICO"."ANTERIOR"'
      Precision = 18
      Size = 4
    end
  end
  object Geral: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Left = 136
    Top = 8
  end
  object IMPRESSORA: TRDprint
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
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Visuaizar Impress'#227'o'
    OpcoesPreview.PreviewZoom = 100
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
    OnNewPage = IMPRESSORANewPage
    OnBeforeNewPage = IMPRESSORABeforeNewPage
    Left = 16
    Top = 104
  end
  object Plano_Diferenca: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = PlanoBeforeOpen
    SQL.Strings = (
      'SELECT'
      '      CONTA,'
      '      CODIGO,'
      '      CONTAPAI,'
      '      NOME,'
      '      BANCO,'
      '      ULTIMO_CHEQUE'
      'FROM VER_CTB_PLANO_FALTAS'
      '( :CNPJ )'
      'ORDER BY CODIGO')
    Left = 80
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object Plano_DiferencaCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"VER_CTB_PLANO_FALTAS"."CONTA"'
    end
    object Plano_DiferencaCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_CTB_PLANO_FALTAS"."CODIGO"'
      Size = 15
    end
    object Plano_DiferencaCONTAPAI: TIBStringField
      DisplayLabel = 'Conta Pai'
      FieldName = 'CONTAPAI'
      Origin = '"VER_CTB_PLANO_FALTAS"."CONTAPAI"'
      Size = 10
    end
    object Plano_DiferencaNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_CTB_PLANO_FALTAS"."NOME"'
      Size = 50
    end
    object Plano_DiferencaBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"VER_CTB_PLANO_FALTAS"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object Plano_DiferencaULTIMO_CHEQUE: TIntegerField
      DisplayLabel = 'Cheque'
      FieldName = 'ULTIMO_CHEQUE'
      Origin = '"VER_CTB_PLANO_FALTAS"."ULTIMO_CHEQUE"'
    end
  end
  object SelPlano: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = PlanoBeforeOpen
    SQL.Strings = (
      'select'
      '         CNPJ, '
      '         BANCO, '
      '         CODIGO, '
      '         CONTA, '
      '         CONTAPAI, '
      '         NOME, '
      '         ULTIMO_CHEQUE,'
      '         TIPO,'
      '         AGENCIA            ,'
      '         DV_AGENCIA ,'
      '         CONTA_CORRENTE,'
      '         DV_CONTA_CORRENTE,'
      '         DV_AGENCIA_CONTA '
      'from CTB_PLANOCONTA'
      'WHERE CNPJ = :CNPJ'
      'Order By NOME')
    Left = 133
    Top = 58
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelPlanoCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"CTB_PLANOCONTA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelPlanoCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"CTB_PLANOCONTA"."CONTA"'
      Required = True
    end
    object SelPlanoCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CTB_PLANOCONTA"."CODIGO"'
      Required = True
      Size = 15
    end
    object SelPlanoCONTAPAI: TIBStringField
      DisplayLabel = 'Conta Pai'
      FieldName = 'CONTAPAI'
      Origin = '"CTB_PLANOCONTA"."CONTAPAI"'
      Required = True
      Size = 10
    end
    object SelPlanoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"CTB_PLANOCONTA"."NOME"'
      Size = 50
    end
    object SelPlanoBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"CTB_PLANOCONTA"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object SelPlanoULTIMO_CHEQUE: TIntegerField
      FieldName = 'ULTIMO_CHEQUE'
      Origin = '"CTB_PLANOCONTA"."ULTIMO_CHEQUE"'
    end
    object SelPlanoTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"CTB_PLANOCONTA"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object SelPlanoAGENCIA: TIBStringField
      FieldName = 'AGENCIA'
      Origin = '"CTB_PLANOCONTA"."AGENCIA"'
      Size = 10
    end
    object SelPlanoDV_AGENCIA: TIBStringField
      FieldName = 'DV_AGENCIA'
      Origin = '"CTB_PLANOCONTA"."DV_AGENCIA"'
      FixedChar = True
      Size = 3
    end
    object SelPlanoCONTA_CORRENTE: TIBStringField
      FieldName = 'CONTA_CORRENTE'
      Origin = '"CTB_PLANOCONTA"."CONTA_CORRENTE"'
      Size = 15
    end
    object SelPlanoDV_CONTA_CORRENTE: TIBStringField
      FieldName = 'DV_CONTA_CORRENTE'
      Origin = '"CTB_PLANOCONTA"."DV_CONTA_CORRENTE"'
      FixedChar = True
      Size = 3
    end
    object SelPlanoDV_AGENCIA_CONTA: TIBStringField
      FieldName = 'DV_AGENCIA_CONTA'
      Origin = '"CTB_PLANOCONTA"."DV_AGENCIA_CONTA"'
      FixedChar = True
      Size = 3
    end
  end
  object Desdobra_Movimento: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = PlanoAfterClose
    BeforeOpen = PlanoBeforeOpen
    DeleteSQL.Strings = (
      'delete from CTB_DESDOBRA_MOVIMENTO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PLANILHA = :OLD_PLANILHA')
    InsertSQL.Strings = (
      'insert into CTB_DESDOBRA_MOVIMENTO'
      
        '  (ANO, CNPJ, DATA, DOCUMENTO, HISTORICO, MES, ORIGEM, PLANILHA,' +
        ' VALOR, '
      '   PESSOA_FJ)'
      'values'
      
        '  (:ANO, :CNPJ, :DATA, :DOCUMENTO, :HISTORICO, :MES, :ORIGEM, :P' +
        'LANILHA, '
      '   :VALOR, :PESSOA_FJ)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PLANILHA,'
      '  DATA,'
      '  DOCUMENTO,'
      '  HISTORICO,'
      '  MES,'
      '  ANO,'
      '  VALOR,'
      '  ORIGEM,'
      '  PESSOA_FJ'
      'from CTB_DESDOBRA_MOVIMENTO '
      'where'
      '  CNPJ = :CNPJ and'
      '  PLANILHA = :PLANILHA')
    SelectSQL.Strings = (
      'select ANO, '
      '          CNPJ, '
      '          DATA, '
      '          DOCUMENTO, '
      '          HISTORICO, '
      '          MES, '
      '          ORIGEM, '
      '          PLANILHA, '
      '          VALOR,'
      '          PESSOA_FJ '
      'from CTB_DESDOBRA_MOVIMENTO'
      'Where CNPJ = :CNPJ AND PLANILHA = :PLANILHA')
    ModifySQL.Strings = (
      'update CTB_DESDOBRA_MOVIMENTO'
      'set'
      '  ANO = :ANO,'
      '  CNPJ = :CNPJ,'
      '  DATA = :DATA,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  HISTORICO = :HISTORICO,'
      '  MES = :MES,'
      '  ORIGEM = :ORIGEM,'
      '  PLANILHA = :PLANILHA,'
      '  VALOR = :VALOR,'
      '  PESSOA_FJ = :PESSOA_FJ'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PLANILHA = :OLD_PLANILHA')
    Left = 136
    Top = 96
    object Desdobra_MovimentoCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"CTB_DESDOBRA_MOVIMENTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Desdobra_MovimentoANO: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"CTB_DESDOBRA_MOVIMENTO"."ANO"'
      Required = True
    end
    object Desdobra_MovimentoDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"CTB_DESDOBRA_MOVIMENTO"."DATA"'
      OnValidate = Desdobra_MovimentoDATAValidate
    end
    object Desdobra_MovimentoDOCUMENTO: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
      Origin = '"CTB_DESDOBRA_MOVIMENTO"."DOCUMENTO"'
      Required = True
    end
    object Desdobra_MovimentoHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"CTB_DESDOBRA_MOVIMENTO"."HISTORICO"'
      Size = 100
    end
    object Desdobra_MovimentoMES: TIntegerField
      DisplayLabel = 'M'#234's'
      FieldName = 'MES'
      Origin = '"CTB_DESDOBRA_MOVIMENTO"."MES"'
      Required = True
    end
    object Desdobra_MovimentoORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"CTB_DESDOBRA_MOVIMENTO"."ORIGEM"'
      Required = True
      Size = 15
    end
    object Desdobra_MovimentoPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"CTB_DESDOBRA_MOVIMENTO"."PLANILHA"'
      Required = True
    end
    object Desdobra_MovimentoVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"CTB_DESDOBRA_MOVIMENTO"."VALOR"'
      DisplayFormat = '###,###,##0.000'
    end
    object Desdobra_MovimentoPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"CTB_DESDOBRA_MOVIMENTO"."PESSOA_FJ"'
    end
  end
  object Desdobra_Movimento_Contas: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = PlanoAfterClose
    AfterInsert = Desdobra_Movimento_ContasAfterInsert
    AfterPost = Desdobra_Movimento_ContasAfterPost
    DeleteSQL.Strings = (
      'delete from CTB_DESDOBRA_MOVIMENTO_CONTAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PLANILHA = :OLD_PLANILHA and'
      '  CONTA = :OLD_CONTA')
    InsertSQL.Strings = (
      'insert into CTB_DESDOBRA_MOVIMENTO_CONTAS'
      '  (CNPJ, PLANILHA, CONTA, NOME, TIPO, VALOR, PROCESSA)'
      'values'
      '  (:CNPJ, :PLANILHA, :CONTA, :NOME, :TIPO, :VALOR, :PROCESSA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PLANILHA,'
      '  CONTA,'
      '  TIPO,'
      '  VALOR,'
      '  NOME,'
      '  PROCESSA'
      'from CTB_DESDOBRA_MOVIMENTO_CONTAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  PLANILHA = :PLANILHA and'
      '  CONTA = :CONTA')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          PLANILHA,'
      '          CONTA, '
      '          NOME, '
      '          TIPO, '
      '          VALOR,'
      '          PROCESSA '
      'from CTB_DESDOBRA_MOVIMENTO_CONTAS'
      'Where CNPJ = :CNPJ AND PLANILHA = :PLANILHA')
    ModifySQL.Strings = (
      'update CTB_DESDOBRA_MOVIMENTO_CONTAS'
      'set'
      '  CNPJ = :CNPJ,'
      '  PLANILHA = :PLANILHA,'
      '  CONTA = :CONTA,'
      '  NOME = :NOME,'
      '  TIPO = :TIPO,'
      '  VALOR = :VALOR,'
      '  PROCESSA = :PROCESSA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PLANILHA = :OLD_PLANILHA and'
      '  CONTA = :OLD_CONTA')
    Left = 136
    Top = 152
    object Desdobra_Movimento_ContasCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"CTB_DESDOBRA_MOVIMENTO_CONTAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Desdobra_Movimento_ContasPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"CTB_DESDOBRA_MOVIMENTO_CONTAS"."PLANILHA"'
      Required = True
    end
    object Desdobra_Movimento_ContasCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"CTB_DESDOBRA_MOVIMENTO_CONTAS"."CONTA"'
      Required = True
      OnValidate = Desdobra_Movimento_ContasCONTAValidate
    end
    object Desdobra_Movimento_ContasNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"CTB_DESDOBRA_MOVIMENTO_CONTAS"."NOME"'
      Size = 50
    end
    object Desdobra_Movimento_ContasTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"CTB_DESDOBRA_MOVIMENTO_CONTAS"."TIPO"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Desdobra_Movimento_ContasVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"CTB_DESDOBRA_MOVIMENTO_CONTAS"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object Desdobra_Movimento_ContasPROCESSA: TIBStringField
      FieldName = 'PROCESSA'
      Origin = '"CTB_DESDOBRA_MOVIMENTO_CONTAS"."PROCESSA"'
      FixedChar = True
      Size = 1
    end
  end
  object PlanoMovimento: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = PlanoBeforeOpen
    SQL.Strings = (
      'select'
      '         CNPJ, '
      '         BANCO, '
      '         CODIGO, '
      '         CONTA, '
      '         CONTAPAI, '
      '         NOME, '
      '         ULTIMO_CHEQUE'
      'from CTB_PLANOCONTA'
      'WHERE CNPJ = :CNPJ AND BANCO IS NOT NULL'
      'Order By NOME')
    Left = 13
    Top = 154
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object PlanoMovimentoCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"CTB_PLANOCONTA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object PlanoMovimentoCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"CTB_PLANOCONTA"."CONTA"'
      Required = True
    end
    object PlanoMovimentoCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CTB_PLANOCONTA"."CODIGO"'
      Required = True
      Size = 15
    end
    object PlanoMovimentoCONTAPAI: TIBStringField
      DisplayLabel = 'Conta Pai'
      FieldName = 'CONTAPAI'
      Origin = '"CTB_PLANOCONTA"."CONTAPAI"'
      Required = True
      Size = 10
    end
    object PlanoMovimentoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"CTB_PLANOCONTA"."NOME"'
      Size = 50
    end
    object PlanoMovimentoBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"CTB_PLANOCONTA"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object PlanoMovimentoULTIMO_CHEQUE: TIntegerField
      FieldName = 'ULTIMO_CHEQUE'
      Origin = '"CTB_PLANOCONTA"."ULTIMO_CHEQUE"'
    end
  end
  object ImpPlano: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = PlanoBeforeOpen
    SQL.Strings = (
      'select'
      '         CNPJ, '
      '         BANCO, '
      '         CODIGO, '
      '         CONTA, '
      '         CONTAPAI, '
      '         NOME, '
      '         ULTIMO_CHEQUE,'
      '         TIPO'
      'from CTB_PLANOCONTA'
      'WHERE CNPJ = :CNPJ'
      'Order By CODIGO')
    Left = 77
    Top = 154
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object ImpPlanoCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"CTB_PLANOCONTA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object ImpPlanoCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"CTB_PLANOCONTA"."CONTA"'
      Required = True
    end
    object ImpPlanoCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CTB_PLANOCONTA"."CODIGO"'
      Required = True
      Size = 15
    end
    object ImpPlanoCONTAPAI: TIBStringField
      DisplayLabel = 'Conta Pai'
      FieldName = 'CONTAPAI'
      Origin = '"CTB_PLANOCONTA"."CONTAPAI"'
      Required = True
      Size = 10
    end
    object ImpPlanoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"CTB_PLANOCONTA"."NOME"'
      Size = 50
    end
    object ImpPlanoBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"CTB_PLANOCONTA"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object ImpPlanoULTIMO_CHEQUE: TIntegerField
      FieldName = 'ULTIMO_CHEQUE'
      Origin = '"CTB_PLANOCONTA"."ULTIMO_CHEQUE"'
    end
    object ImpPlanoTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"CTB_PLANOCONTA"."TIPO"'
      FixedChar = True
      Size = 1
    end
  end
  object VER_RAZAO_RECEITAS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    CNPJ,'
      '    CODIGO,'
      '    CODIGO_CONTABIL,'
      '    CONTA_PAI,'
      '    DATA,'
      '    TIPO,'
      '    DOCUMENTO,'
      '    HISTORICO,'
      '    MES,'
      '    ANO,'
      '    VALOR,'
      '    CONTA,'
      '    ORIGEM,'
      '    PLANILHA,'
      '    CONTRA_PARTIDA,'
      '    CREDITO,'
      '    DEBITO,'
      '    EXCLUIR,'
      '    NOME_CONTA_PAI ,'
      '    VALOR_INDEXADO'
      'FROM '
      'VER_RAZAO_RECEITAS'
      '( :EMPRESA, :DATINI, :DATFIM, :CODINI )'
      'ORDER BY CONTA_PAI, CODIGO_CONTABIL, DATA, DOCUMENTO')
    Left = 224
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMPRESA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATFIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODINI'
        ParamType = ptUnknown
      end>
    object VER_RAZAO_RECEITASCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"VER_RAZAO_RECEITAS"."CNPJ"'
      Size = 14
    end
    object VER_RAZAO_RECEITASCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_RAZAO_RECEITAS"."CODIGO"'
    end
    object VER_RAZAO_RECEITASCODIGO_CONTABIL: TIBStringField
      DisplayLabel = 'C'#243'digo Cont'#225'bil'
      FieldName = 'CODIGO_CONTABIL'
      Origin = '"VER_RAZAO_RECEITAS"."CODIGO_CONTABIL"'
      Size = 15
    end
    object VER_RAZAO_RECEITASDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_RAZAO_RECEITAS"."DATA"'
    end
    object VER_RAZAO_RECEITASTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"VER_RAZAO_RECEITAS"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object VER_RAZAO_RECEITASDOCUMENTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCUMENTO'
      Origin = '"VER_RAZAO_RECEITAS"."DOCUMENTO"'
    end
    object VER_RAZAO_RECEITASHISTORICO: TIBStringField
      DisplayLabel = 'HIst'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_RAZAO_RECEITAS"."HISTORICO"'
      Size = 100
    end
    object VER_RAZAO_RECEITASMES: TIntegerField
      DisplayLabel = 'M'#234's'
      FieldName = 'MES'
      Origin = '"VER_RAZAO_RECEITAS"."MES"'
    end
    object VER_RAZAO_RECEITASANO: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"VER_RAZAO_RECEITAS"."ANO"'
    end
    object VER_RAZAO_RECEITASVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_RAZAO_RECEITAS"."VALOR"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object VER_RAZAO_RECEITASCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"VER_RAZAO_RECEITAS"."CONTA"'
    end
    object VER_RAZAO_RECEITASORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"VER_RAZAO_RECEITAS"."ORIGEM"'
      Size = 15
    end
    object VER_RAZAO_RECEITASPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"VER_RAZAO_RECEITAS"."PLANILHA"'
    end
    object VER_RAZAO_RECEITASCONTRA_PARTIDA: TIntegerField
      DisplayLabel = 'Contra Partida'
      FieldName = 'CONTRA_PARTIDA'
      Origin = '"VER_RAZAO_RECEITAS"."CONTRA_PARTIDA"'
    end
    object VER_RAZAO_RECEITASCREDITO: TIBStringField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'CREDITO'
      Origin = '"VER_RAZAO_RECEITAS"."CREDITO"'
      Size = 50
    end
    object VER_RAZAO_RECEITASDEBITO: TIBStringField
      DisplayLabel = 'D'#233'bito'
      FieldName = 'DEBITO'
      Origin = '"VER_RAZAO_RECEITAS"."DEBITO"'
      Size = 50
    end
    object VER_RAZAO_RECEITASEXCLUIR: TIBStringField
      DisplayLabel = 'Excluir'
      FieldName = 'EXCLUIR'
      Origin = '"VER_RAZAO_RECEITAS"."EXCLUIR"'
      FixedChar = True
      Size = 1
    end
    object VER_RAZAO_RECEITASCONTA_PAI: TIBStringField
      FieldName = 'CONTA_PAI'
      Origin = '"VER_RAZAO_RECEITAS"."CONTA_PAI"'
      Size = 10
    end
    object VER_RAZAO_RECEITASNOME_CONTA_PAI: TIBStringField
      FieldName = 'NOME_CONTA_PAI'
      Origin = '"VER_RAZAO_RECEITAS"."NOME_CONTA_PAI"'
      Size = 50
    end
    object VER_RAZAO_RECEITASVALOR_INDEXADO: TIBBCDField
      FieldName = 'VALOR_INDEXADO'
      Origin = '"VER_RAZAO_RECEITAS"."VALOR_INDEXADO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object SLDANT: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT * FROM SALDOANT_CONTA ( '#39#39','#39'01/01/1989'#39')')
    Left = 224
    Top = 56
    object SLDANTSOMAC: TIBBCDField
      FieldName = 'SOMAC'
      Precision = 18
      Size = 4
    end
    object SLDANTSOMAD: TIBBCDField
      FieldName = 'SOMAD'
      Precision = 18
      Size = 4
    end
  end
  object SALDO_CONTA_PERIODO: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      'SOMAC,'
      'SOMAD'
      'FROM SALDO_CONTA_PERIODO'
      '(:CNPJ, :CONTA, :DATAINI, :DATAFIM )')
    Left = 224
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATAINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATAFIM'
        ParamType = ptUnknown
      end>
    object SALDO_CONTA_PERIODOSOMAC: TIBBCDField
      FieldName = 'SOMAC'
      Origin = '"SALDO_CONTA_PERIODO"."SOMAC"'
      Precision = 18
      Size = 4
    end
    object SALDO_CONTA_PERIODOSOMAD: TIBBCDField
      FieldName = 'SOMAD'
      Origin = '"SALDO_CONTA_PERIODO"."SOMAD"'
      Precision = 18
      Size = 4
    end
  end
  object VER_RAZAO_DESPESAS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    CNPJ,'
      '    CODIGO,'
      '    CODIGO_CONTABIL,'
      '    CONTA_PAI,'
      '    DATA,'
      '    TIPO,'
      '    DOCUMENTO,'
      '    HISTORICO,'
      '    MES,'
      '    ANO,'
      '    VALOR,'
      '    CONTA,'
      '    ORIGEM,'
      '    PLANILHA,'
      '    CONTRA_PARTIDA,'
      '    CREDITO,'
      '    DEBITO,'
      '    EXCLUIR,'
      '    NOME_CONTA_PAI ,'
      '    VALOR_INDEXADO'
      'FROM '
      'VER_RAZAO_DESPESAS'
      '( :EMPRESA, :DATINI, :DATFIM, :CODINI )'
      'ORDER BY CONTA_PAI, CODIGO_CONTABIL, DATA, DOCUMENTO')
    Left = 344
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMPRESA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATFIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODINI'
        ParamType = ptUnknown
      end>
    object VER_RAZAO_DESPESASCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"VER_RAZAO_RECEITAS"."CNPJ"'
      Size = 14
    end
    object VER_RAZAO_DESPESASCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_RAZAO_RECEITAS"."CODIGO"'
    end
    object VER_RAZAO_DESPESASCODIGO_CONTABIL: TIBStringField
      DisplayLabel = 'C'#243'digo Cont'#225'bil'
      FieldName = 'CODIGO_CONTABIL'
      Origin = '"VER_RAZAO_RECEITAS"."CODIGO_CONTABIL"'
      Size = 15
    end
    object VER_RAZAO_DESPESASDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_RAZAO_RECEITAS"."DATA"'
    end
    object VER_RAZAO_DESPESASTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"VER_RAZAO_RECEITAS"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object VER_RAZAO_DESPESASDOCUMENTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCUMENTO'
      Origin = '"VER_RAZAO_RECEITAS"."DOCUMENTO"'
    end
    object VER_RAZAO_DESPESASHISTORICO: TIBStringField
      DisplayLabel = 'HIst'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_RAZAO_RECEITAS"."HISTORICO"'
      Size = 100
    end
    object VER_RAZAO_DESPESASMES: TIntegerField
      DisplayLabel = 'M'#234's'
      FieldName = 'MES'
      Origin = '"VER_RAZAO_RECEITAS"."MES"'
    end
    object VER_RAZAO_DESPESASANO: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"VER_RAZAO_RECEITAS"."ANO"'
    end
    object VER_RAZAO_DESPESASVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_RAZAO_RECEITAS"."VALOR"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object VER_RAZAO_DESPESASCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"VER_RAZAO_RECEITAS"."CONTA"'
    end
    object VER_RAZAO_DESPESASORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"VER_RAZAO_RECEITAS"."ORIGEM"'
      Size = 15
    end
    object VER_RAZAO_DESPESASPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"VER_RAZAO_RECEITAS"."PLANILHA"'
    end
    object VER_RAZAO_DESPESASCONTRA_PARTIDA: TIntegerField
      DisplayLabel = 'Contra Partida'
      FieldName = 'CONTRA_PARTIDA'
      Origin = '"VER_RAZAO_RECEITAS"."CONTRA_PARTIDA"'
    end
    object VER_RAZAO_DESPESASCREDITO: TIBStringField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'CREDITO'
      Origin = '"VER_RAZAO_RECEITAS"."CREDITO"'
      Size = 50
    end
    object VER_RAZAO_DESPESASDEBITO: TIBStringField
      DisplayLabel = 'D'#233'bito'
      FieldName = 'DEBITO'
      Origin = '"VER_RAZAO_RECEITAS"."DEBITO"'
      Size = 50
    end
    object VER_RAZAO_DESPESASEXCLUIR: TIBStringField
      DisplayLabel = 'Excluir'
      FieldName = 'EXCLUIR'
      Origin = '"VER_RAZAO_RECEITAS"."EXCLUIR"'
      FixedChar = True
      Size = 1
    end
    object VER_RAZAO_DESPESASCONTA_PAI: TIBStringField
      FieldName = 'CONTA_PAI'
      Origin = '"VER_RAZAO_RECEITAS"."CONTA_PAI"'
      Size = 10
    end
    object VER_RAZAO_DESPESASNOME_CONTA_PAI: TIBStringField
      FieldName = 'NOME_CONTA_PAI'
      Origin = '"VER_RAZAO_RECEITAS"."NOME_CONTA_PAI"'
      Size = 50
    end
    object VER_RAZAO_DESPESASVALOR_INDEXADO: TIBBCDField
      FieldName = 'VALOR_INDEXADO'
      Origin = '"VER_RAZAO_RECEITAS"."VALOR_INDEXADO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object VER_RAZAO_DESPESAS_SINTETICO: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    VALOR,'
      '    CONTA_PAI,'
      '    NOME_CONTA_PAI,'
      '    VALOR_INDEXADO'
      'FROM VER_RAZAO_DESPESAS_SINTETICO'
      '( :EMPRESA, :DATINI, :DATFIM, :CODINI )'
      'ORDER BY CONTA_PAI')
    Left = 344
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMPRESA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATFIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODINI'
        ParamType = ptUnknown
      end>
    object VER_RAZAO_DESPESAS_SINTETICOVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_RAZAO_DESPESAS_SINTETICO"."VALOR"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object VER_RAZAO_DESPESAS_SINTETICOCONTA_PAI: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA_PAI'
      Origin = '"VER_RAZAO_DESPESAS_SINTETICO"."CONTA_PAI"'
      Size = 10
    end
    object VER_RAZAO_DESPESAS_SINTETICONOME_CONTA_PAI: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_CONTA_PAI'
      Origin = '"VER_RAZAO_DESPESAS_SINTETICO"."NOME_CONTA_PAI"'
      Size = 50
    end
    object VER_RAZAO_DESPESAS_SINTETICOVALOR_INDEXADO: TIBBCDField
      DisplayLabel = 'Valor Ind.'
      FieldName = 'VALOR_INDEXADO'
      Origin = '"VER_RAZAO_DESPESAS_SINTETICO"."VALOR_INDEXADO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object VER_RAZAO_DESPESAS_ACUMULADAS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    VALOR ,'
      '    INDICE ,'
      '    CONTA_PAI ,'
      '    NOME_CONTA_PAI ,'
      '    VALOR_INDEXADO'
      'FROM VER_RAZAO_DESPESAS_ACUMULADAS'
      '( :EMPRESA, :CODINI )')
    Left = 344
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'EMPRESA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODINI'
        ParamType = ptUnknown
      end>
    object VER_RAZAO_DESPESAS_ACUMULADASVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_RAZAO_DESPESAS_ACUMULADAS"."VALOR"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object VER_RAZAO_DESPESAS_ACUMULADASINDICE: TIBBCDField
      DisplayLabel = 'Indice'
      FieldName = 'INDICE'
      Origin = '"VER_RAZAO_DESPESAS_ACUMULADAS"."INDICE"'
      DisplayFormat = '% ###,##0.00'
      Precision = 18
      Size = 4
    end
    object VER_RAZAO_DESPESAS_ACUMULADASCONTA_PAI: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA_PAI'
      Origin = '"VER_RAZAO_DESPESAS_ACUMULADAS"."CONTA_PAI"'
      Size = 10
    end
    object VER_RAZAO_DESPESAS_ACUMULADASNOME_CONTA_PAI: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_CONTA_PAI'
      Origin = '"VER_RAZAO_DESPESAS_ACUMULADAS"."NOME_CONTA_PAI"'
      Size = 50
    end
    object VER_RAZAO_DESPESAS_ACUMULADASVALOR_INDEXADO: TIBBCDField
      DisplayLabel = 'Valor Indexado'
      FieldName = 'VALOR_INDEXADO'
      Origin = '"VER_RAZAO_DESPESAS_ACUMULADAS"."VALOR_INDEXADO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object SALDOANT_CONTA_RAZAO: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT '
      'SOMAC,'
      'SOMAD'
      'FROM SALDOANT_CONTA_RAZAO ( '#39#39', '#39#39','#39'01/01/1989'#39')')
    Left = 224
    Top = 168
    object SALDOANT_CONTA_RAZAOSOMAC: TIBBCDField
      FieldName = 'SOMAC'
      Origin = '"SALDOANT_CONTA_RAZAO"."SOMAC"'
      Precision = 18
      Size = 4
    end
    object SALDOANT_CONTA_RAZAOSOMAD: TIBBCDField
      FieldName = 'SOMAD'
      Origin = '"SALDOANT_CONTA_RAZAO"."SOMAD"'
      Precision = 18
      Size = 4
    end
  end
  object SALDO_CONTA_PERIODO_RAZAO: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      'SOMAC,'
      'SOMAD'
      'FROM SALDO_CONTA_PERIODO_RAZAO'
      '(:CNPJ, :CONTA, :DATAINI, :DATAFIM )')
    Left = 344
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATAINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATAFIM'
        ParamType = ptUnknown
      end>
    object SALDO_CONTA_PERIODO_RAZAOSOMAC: TIBBCDField
      FieldName = 'SOMAC'
      Origin = '"SALDO_CONTA_PERIODO_RAZAO"."SOMAC"'
      Precision = 18
      Size = 4
    end
    object SALDO_CONTA_PERIODO_RAZAOSOMAD: TIBBCDField
      FieldName = 'SOMAD'
      Origin = '"SALDO_CONTA_PERIODO_RAZAO"."SOMAD"'
      Precision = 18
      Size = 4
    end
  end
  object Ctb_Altera_Movtos: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from CTB_MOVIMENTO_CONTABIL'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into CTB_MOVIMENTO_CONTABIL'
      
        '  (CNPJ, ANO, BANCO, COD_DOC, CODIGO, CONTA, CONTRA_PARTIDA, DAT' +
        'A, DATA_CONCILIACAO, '
      
        '   DOCUMENTO, EXCLUIR, FORNECEDOR, HISTORICO, ORIGEM, PLANILHA, ' +
        'TIPO, TIPO_LANCAMENTO, '
      '   VALOR, VALOR_INDEXADO)'
      'values'
      
        '  (:CNPJ, :ANO, :BANCO, :COD_DOC, :CODIGO, :CONTA, :CONTRA_PARTI' +
        'DA, :DATA, '
      
        '   :DATA_CONCILIACAO, :DOCUMENTO, :EXCLUIR, :FORNECEDOR, :HISTOR' +
        'ICO, :ORIGEM, '
      '   :PLANILHA, :TIPO, :TIPO_LANCAMENTO, :VALOR, :VALOR_INDEXADO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  DATA,'
      '  TIPO,'
      '  DOCUMENTO,'
      '  HISTORICO,'
      '  MES,'
      '  ANO,'
      '  VALOR,'
      '  CONTA,'
      '  ORIGEM,'
      '  PLANILHA,'
      '  CONTRA_PARTIDA,'
      '  BANCO,'
      '  DATA_CONCILIACAO,'
      '  TIPO_LANCAMENTO,'
      '  COD_DOC,'
      '  FORNECEDOR,'
      '  EXCLUIR,'
      '  VALOR_INDEXADO'
      'from CTB_MOVIMENTO_CONTABIL '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ,'
      '          ANO, '
      '          BANCO, '
      '          COD_DOC, '
      '          CODIGO, '
      '          CONTA, '
      '          CONTRA_PARTIDA, '
      '          DATA, '
      '          DATA_CONCILIACAO, '
      '          DOCUMENTO, '
      '          EXCLUIR, '
      '          FORNECEDOR, '
      '          HISTORICO, '
      '          ORIGEM, '
      '          PLANILHA, '
      '          TIPO, '
      '          TIPO_LANCAMENTO, '
      '           VALOR, '
      '           VALOR_INDEXADO '
      'from CTB_MOVIMENTO_CONTABIL'
      'Where CNPJ = :CNPJ AND PLANILHA = :PLANILHA')
    ModifySQL.Strings = (
      'update CTB_MOVIMENTO_CONTABIL'
      'set'
      '  CNPJ = :CNPJ,'
      '  ANO = :ANO,'
      '  BANCO = :BANCO,'
      '  COD_DOC = :COD_DOC,'
      '  CODIGO = :CODIGO,'
      '  CONTA = :CONTA,'
      '  CONTRA_PARTIDA = :CONTRA_PARTIDA,'
      '  DATA = :DATA,'
      '  DATA_CONCILIACAO = :DATA_CONCILIACAO,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  EXCLUIR = :EXCLUIR,'
      '  FORNECEDOR = :FORNECEDOR,'
      '  HISTORICO = :HISTORICO,'
      '  ORIGEM = :ORIGEM,'
      '  PLANILHA = :PLANILHA,'
      '  TIPO = :TIPO,'
      '  TIPO_LANCAMENTO = :TIPO_LANCAMENTO,'
      '  VALOR = :VALOR,'
      '  VALOR_INDEXADO = :VALOR_INDEXADO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 152
    Top = 208
    object Ctb_Altera_MovtosCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Ctb_Altera_MovtosANO: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."ANO"'
      Required = True
    end
    object Ctb_Altera_MovtosBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object Ctb_Altera_MovtosCOD_DOC: TIBStringField
      DisplayLabel = 'Doc'
      FieldName = 'COD_DOC'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."COD_DOC"'
      FixedChar = True
      Size = 3
    end
    object Ctb_Altera_MovtosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."CODIGO"'
      Required = True
    end
    object Ctb_Altera_MovtosCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."CONTA"'
      Required = True
    end
    object Ctb_Altera_MovtosCONTRA_PARTIDA: TIntegerField
      DisplayLabel = 'Contra Partida'
      FieldName = 'CONTRA_PARTIDA'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."CONTRA_PARTIDA"'
    end
    object Ctb_Altera_MovtosDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."DATA"'
    end
    object Ctb_Altera_MovtosDATA_CONCILIACAO: TDateTimeField
      DisplayLabel = 'Concilia'#231#227'o'
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."DATA_CONCILIACAO"'
    end
    object Ctb_Altera_MovtosDOCUMENTO: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."DOCUMENTO"'
      Required = True
    end
    object Ctb_Altera_MovtosEXCLUIR: TIBStringField
      DisplayLabel = 'Excluir'
      FieldName = 'EXCLUIR'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."EXCLUIR"'
      FixedChar = True
      Size = 1
    end
    object Ctb_Altera_MovtosFORNECEDOR: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FORNECEDOR'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."FORNECEDOR"'
    end
    object Ctb_Altera_MovtosHISTORICO: TIBStringField
      DisplayLabel = 'HIst'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."HISTORICO"'
      Size = 100
    end
    object Ctb_Altera_MovtosORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."ORIGEM"'
      Required = True
      Size = 15
    end
    object Ctb_Altera_MovtosPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."PLANILHA"'
      Required = True
    end
    object Ctb_Altera_MovtosTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."TIPO"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Ctb_Altera_MovtosTIPO_LANCAMENTO: TIBStringField
      DisplayLabel = 'Tipo Lacto'
      FieldName = 'TIPO_LANCAMENTO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."TIPO_LANCAMENTO"'
      FixedChar = True
      Size = 1
    end
    object Ctb_Altera_MovtosVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object Ctb_Altera_MovtosVALOR_INDEXADO: TFloatField
      DisplayLabel = 'Valor Indexado'
      FieldName = 'VALOR_INDEXADO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."VALOR_INDEXADO"'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object CONFIG_REL: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = PlanoAfterClose
    AfterInsert = CONFIG_RELAfterInsert
    BeforeOpen = CONFIG_RELBeforeOpen
    BeforePost = CONFIG_RELBeforePost
    DeleteSQL.Strings = (
      'delete from CTB_CONFIGURA_RELATORIO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into CTB_CONFIGURA_RELATORIO'
      '  (CNPJ, CODIGO, NOME)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME'
      'from CTB_CONFIGURA_RELATORIO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME '
      'from CTB_CONFIGURA_RELATORIO'
      'Where CNPJ = :CNPJ')
    ModifySQL.Strings = (
      'update CTB_CONFIGURA_RELATORIO'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 16
    Top = 200
    object CONFIG_RELCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"CTB_CONFIGURA_RELATORIO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CONFIG_RELCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CTB_CONFIGURA_RELATORIO"."CODIGO"'
      Required = True
    end
    object CONFIG_RELNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"CTB_CONFIGURA_RELATORIO"."NOME"'
      Required = True
      Size = 50
    end
  end
  object PLANO_CONF_REL: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = PlanoBeforeOpen
    SQL.Strings = (
      'select CONTA, '
      '           NOME '
      'from CTB_PLANOCONTA'
      'WHERE CNPJ = :CNPJ AND'
      'CONTA NOT IN ( SELECT CONTA FROM '
      'CTB_CONFIGURA_RELATORIO_CONTAS'
      'WHERE CNPJ = :CNPJ AND CODIGO = :CODIGO )'
      'ORDER BY CODIGO')
    Left = 80
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object PLANO_CONF_RELCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"CTB_PLANOCONTA"."CONTA"'
      Required = True
    end
    object PLANO_CONF_RELNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"CTB_PLANOCONTA"."NOME"'
      Size = 50
    end
  end
  object CONFIG_REL_CONTAS: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnNewRecord = CONFIG_REL_CONTASNewRecord
    DeleteSQL.Strings = (
      'delete from CTB_CONFIGURA_RELATORIO_CONTAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  CONTA = :OLD_CONTA')
    InsertSQL.Strings = (
      'insert into CTB_CONFIGURA_RELATORIO_CONTAS'
      '  (CNPJ, CODIGO, CONTA)'
      'values'
      '  (:CNPJ, :CODIGO, :CONTA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  CONTA'
      'from CTB_CONFIGURA_RELATORIO_CONTAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  CONTA = :CONTA')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          CONTA '
      'from CTB_CONFIGURA_RELATORIO_CONTAS'
      'Where CNPJ = :CNPJ AND CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update CTB_CONFIGURA_RELATORIO_CONTAS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  CONTA = :CONTA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  CONTA = :OLD_CONTA')
    DataSource = DSCONFIG_REL
    Left = 16
    Top = 248
    object CONFIG_REL_CONTASCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"CTB_CONFIGURA_RELATORIO_CONTAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CONFIG_REL_CONTASCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CTB_CONFIGURA_RELATORIO_CONTAS"."CODIGO"'
      Required = True
    end
    object CONFIG_REL_CONTASCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"CTB_CONFIGURA_RELATORIO_CONTAS"."CONTA"'
      Required = True
    end
  end
  object VER_CTB_CONFIGURA_REL_CONTAS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = CONFIG_RELBeforeOpen
    SQL.Strings = (
      'SELECT '
      '     CONTA, '
      '     NOME'
      'FROM VER_CTB_CONFIGURA_REL_CONTAS'
      '( :CNPJ, :CODIGO )')
    Left = 88
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object VER_CTB_CONFIGURA_REL_CONTASCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = '"VER_CTB_CONFIGURA_REL_CONTAS"."CONTA"'
    end
    object VER_CTB_CONFIGURA_REL_CONTASNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_CTB_CONFIGURA_REL_CONTAS"."NOME"'
      Size = 50
    end
  end
  object DSCONFIG_REL: TDataSource
    AutoEdit = False
    DataSet = CONFIG_REL
    Left = 152
    Top = 272
  end
  object EXCLUI_CTB_CONFIG_REL_CONTAS: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'EXCLUI_CTB_CONFIG_REL_CONTAS'
    Left = 416
    Top = 272
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
      end
      item
        DataType = ftInteger
        Name = 'CONTA'
        ParamType = ptInput
      end>
  end
  object CONTA_CTB_CONFIG_REL_CONTAS: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'CONTA_CTB_CONFIG_REL_CONTAS'
    Left = 240
    Top = 256
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NUM'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONTA'
        ParamType = ptInput
      end>
  end
  object CONFIGURACOES: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = PlanoAfterClose
    AfterInsert = CONFIGURACOESAfterInsert
    BeforeOpen = PlanoBeforeOpen
    OnNewRecord = CONFIGURACOESNewRecord
    DeleteSQL.Strings = (
      'delete from CTB_CONFIGURACOES'
      'where'
      '  CNPJ = :OLD_CNPJ')
    InsertSQL.Strings = (
      'insert into CTB_CONFIGURACOES'
      '  (CNPJ, ATIVO, PASSIVO, CMV, RECEITAS, DESPESAS)'
      'values'
      '  (:CNPJ, :ATIVO, :PASSIVO, :CMV, :RECEITAS, :DESPESAS)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  ATIVO,'
      '  PASSIVO,'
      '  CMV,'
      '  RECEITAS,'
      '  DESPESAS'
      'from CTB_CONFIGURACOES '
      'where'
      '  CNPJ = :CNPJ')
    SelectSQL.Strings = (
      'SELECT'
      '    CNPJ  ,'
      '    ATIVO,'
      '    PASSIVO,'
      '    CMV ,'
      '    RECEITAS,'
      '    DESPESAS'
      'FROM CTB_CONFIGURACOES'
      'WHERE CNPJ = :CNPJ')
    ModifySQL.Strings = (
      'update CTB_CONFIGURACOES'
      'set'
      '  CNPJ = :CNPJ,'
      '  ATIVO = :ATIVO,'
      '  PASSIVO = :PASSIVO,'
      '  CMV = :CMV,'
      '  RECEITAS = :RECEITAS,'
      '  DESPESAS = :DESPESAS'
      'where'
      '  CNPJ = :OLD_CNPJ')
    Left = 16
    Top = 296
    object CONFIGURACOESCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"CTB_CONFIGURACOES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CONFIGURACOESATIVO: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = '"CTB_CONFIGURACOES"."ATIVO"'
      Required = True
      EditMask = '9.99.99.99.9999;1; '
      Size = 15
    end
    object CONFIGURACOESPASSIVO: TIBStringField
      DisplayLabel = 'Passivo'
      FieldName = 'PASSIVO'
      Origin = '"CTB_CONFIGURACOES"."PASSIVO"'
      Required = True
      EditMask = '9.99.99.99.9999;1; '
      Size = 15
    end
    object CONFIGURACOESCMV: TIBStringField
      DisplayLabel = 'Cmv'
      FieldName = 'CMV'
      Origin = '"CTB_CONFIGURACOES"."CMV"'
      Required = True
      EditMask = '9.99.99.99.9999;1; '
      Size = 15
    end
    object CONFIGURACOESRECEITAS: TIBStringField
      DisplayLabel = 'Receitas'
      FieldName = 'RECEITAS'
      Origin = '"CTB_CONFIGURACOES"."RECEITAS"'
      Required = True
      EditMask = '9.99.99.99.9999;1; '
      Size = 15
    end
    object CONFIGURACOESDESPESAS: TIBStringField
      DisplayLabel = 'Despesas'
      FieldName = 'DESPESAS'
      Origin = '"CTB_CONFIGURACOES"."DESPESAS"'
      Required = True
      EditMask = '9.99.99.99.9999;1; '
      Size = 15
    end
  end
  object Ctb_Fluxo_Caixa: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = PlanoAfterClose
    AfterInsert = Ctb_Fluxo_CaixaAfterInsert
    BeforeOpen = PlanoBeforeOpen
    OnNewRecord = Ctb_Fluxo_CaixaNewRecord
    DeleteSQL.Strings = (
      'delete from CTB_FLUXO_CAIXA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  DATA = :OLD_DATA')
    InsertSQL.Strings = (
      'insert into CTB_FLUXO_CAIXA'
      
        '  (CNPJ, CARTAO, CHQ_PRAZO, DATA, PAGAR, RECEBER, SALDO, SALDO_I' +
        'NICIAL, '
      '   VENDAS_VISTA)'
      'values'
      
        '  (:CNPJ, :CARTAO, :CHQ_PRAZO, :DATA, :PAGAR, :RECEBER, :SALDO, ' +
        ':SALDO_INICIAL, '
      '   :VENDAS_VISTA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  DATA,'
      '  SALDO_INICIAL,'
      '  VENDAS_VISTA,'
      '  RECEBER,'
      '  CARTAO,'
      '  CHQ_PRAZO,'
      '  PAGAR,'
      '  SALDO'
      'from CTB_FLUXO_CAIXA '
      'where'
      '  CNPJ = :CNPJ and'
      '  DATA = :DATA')
    SelectSQL.Strings = (
      'select '
      '     CNPJ,'
      '     CARTAO, '
      '     CHQ_PRAZO, '
      '     DATA, '
      '     PAGAR, '
      '     RECEBER, '
      '     SALDO, '
      '     SALDO_INICIAL, '
      '     VENDAS_VISTA '
      'from CTB_FLUXO_CAIXA'
      'Where CNPJ = :CNPJ'
      'AND DATA >= :DINI AND DATA <= :DFIM')
    ModifySQL.Strings = (
      'update CTB_FLUXO_CAIXA'
      'set'
      '  CNPJ = :CNPJ,'
      '  CARTAO = :CARTAO,'
      '  CHQ_PRAZO = :CHQ_PRAZO,'
      '  DATA = :DATA,'
      '  PAGAR = :PAGAR,'
      '  RECEBER = :RECEBER,'
      '  SALDO = :SALDO,'
      '  SALDO_INICIAL = :SALDO_INICIAL,'
      '  VENDAS_VISTA = :VENDAS_VISTA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  DATA = :OLD_DATA')
    Left = 152
    Top = 320
    object Ctb_Fluxo_CaixaCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"CTB_FLUXO_CAIXA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Ctb_Fluxo_CaixaCARTAO: TFloatField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'CARTAO'
      Origin = '"CTB_FLUXO_CAIXA"."CARTAO"'
      DisplayFormat = '###,##0.00'
    end
    object Ctb_Fluxo_CaixaCHQ_PRAZO: TFloatField
      DisplayLabel = 'Chq Prazo'
      FieldName = 'CHQ_PRAZO'
      Origin = '"CTB_FLUXO_CAIXA"."CHQ_PRAZO"'
      DisplayFormat = '###,##0.00'
    end
    object Ctb_Fluxo_CaixaDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"CTB_FLUXO_CAIXA"."DATA"'
      Required = True
    end
    object Ctb_Fluxo_CaixaPAGAR: TFloatField
      DisplayLabel = 'Pagar'
      FieldName = 'PAGAR'
      Origin = '"CTB_FLUXO_CAIXA"."PAGAR"'
      DisplayFormat = '###,##0.00'
    end
    object Ctb_Fluxo_CaixaRECEBER: TFloatField
      DisplayLabel = 'Receber'
      FieldName = 'RECEBER'
      Origin = '"CTB_FLUXO_CAIXA"."RECEBER"'
      DisplayFormat = '###,##0.00'
    end
    object Ctb_Fluxo_CaixaSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = '"CTB_FLUXO_CAIXA"."SALDO"'
      DisplayFormat = '###,##0.00'
    end
    object Ctb_Fluxo_CaixaSALDO_INICIAL: TFloatField
      DisplayLabel = 'Saldo Inicial'
      FieldName = 'SALDO_INICIAL'
      Origin = '"CTB_FLUXO_CAIXA"."SALDO_INICIAL"'
      DisplayFormat = '###,##0.00'
    end
    object Ctb_Fluxo_CaixaVENDAS_VISTA: TFloatField
      DisplayLabel = 'Vendas a Vista'
      FieldName = 'VENDAS_VISTA'
      Origin = '"CTB_FLUXO_CAIXA"."VENDAS_VISTA"'
      DisplayFormat = '###,##0.00'
    end
  end
  object CRIA_CTB_FLUXO_CAIXA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'CRIA_CTB_FLUXO_CAIXA'
    Left = 272
    Top = 320
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'SALDO_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VENDAS_VISTA'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'RECEBER'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'CARTAO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'CHQ_PRAZO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'PAGAR'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'SALDO'
        ParamType = ptInput
      end>
  end
  object SOMA_CARTAO_FLUXO: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'SOMA_CARTAO_FLUXO'
    Left = 520
    Top = 8
  end
  object IBQuery1: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT '
      '    CODIGOPLANO ,'
      '    TIPO ,'
      '    VALOR ,'
      '    CONTA ,'
      '    NOME '
      'FROM VER_BALANCETE_SINTETICO_DIARIO '
      '('
      '    EMPRESA VARCHAR(14) CHARACTER SET NONE,'
      '    DATINI DATE,'
      '    DATFIM DATE,'
      '    GRUPO INTEGER'
      ')')
    Left = 472
    Top = 88
  end
end
