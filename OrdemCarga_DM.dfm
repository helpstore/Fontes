object DmOrdemCarga: TDmOrdemCarga
  OldCreateOrder = False
  Left = 3
  Top = 1
  Height = 450
  Width = 638
  object OrdemCarga: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from CRG_ORDEM_CARGA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into CRG_ORDEM_CARGA'
      '  (CNPJ, CODIGO_VND, CODIGO, DATA, STATUS, PESO_BRUTO, '
      'PESO_LIQUIDO, USUARIO, '
      '   DT_ENTREGA, HR_ENTREGA, NOME_RECEBEDOR, LOGRADOURO, '
      'NUMERO, BAIRRO, '
      '   COMPLEMENTO, CEP, CIDADE, UF, OBSERVACAO)'
      'values'
      '  (:CNPJ, :CODIGO_VND, :CODIGO, :DATA, :STATUS, :PESO_BRUTO, '
      ':PESO_LIQUIDO, '
      '   :USUARIO, :DT_ENTREGA, :HR_ENTREGA, :NOME_RECEBEDOR, '
      ':LOGRADOURO, :NUMERO, '
      '   :BAIRRO, :COMPLEMENTO, :CEP, :CIDADE, :UF, :OBSERVACAO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO_VND,'
      '  CODIGO,'
      '  DATA,'
      '  STATUS,'
      '  PESO_BRUTO,'
      '  PESO_LIQUIDO,'
      '  USUARIO,'
      '  DT_ENTREGA,'
      '  HR_ENTREGA,'
      '  NOME_RECEBEDOR,'
      '  LOGRADOURO,'
      '  NUMERO,'
      '  BAIRRO,'
      '  COMPLEMENTO,'
      '  CEP,'
      '  CIDADE,'
      '  UF,'
      '  OBSERVACAO'
      'from CRG_ORDEM_CARGA '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select'
      'cgr.*,'
      'coalesce(psa.nome_razao,'#39#39') psa_nome_razao,'
      'coalesce(psa.FANTASIA,'#39#39') psa_FANTASIA,'
      'vd.pessoa_fj vd_pessoa_fj,'
      'vd.codigo vd_codigo,'
      'vd.data vd_data,'
      'vd.data_caixa vd_data_caixa,'
      'VD.observacao VD_observacao,'
      'VD.volume VD_volume,'
      'VD.peso VD_peso,'
      'vd.nome_consumidor vd_nome_consumidor,'
      'psa.celular psa_celular,'
      'psa.fax psa_fax,'
      'psa.fone psa_fone,'
      'psa.cpf_cgc psa_cpf_cgc,'
      'PSA.rg_ie PSA_rg_ie'
      'from CRG_ORDEM_CARGA cgr'
      
        'inner join fat_vendas        vd    on (vd.codigo     = cgr.codig' +
        'o_vnd and vd.cnpj = cgr.cnpj)'
      
        'inner join glo_pessoas_fj    psa   on (psa.codigo    = vd.pessoa' +
        '_fj  and psa.cnpj = vd.cnpj  )')
    ModifySQL.Strings = (
      'update CRG_ORDEM_CARGA'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO_VND = :CODIGO_VND,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  STATUS = :STATUS,'
      '  PESO_BRUTO = :PESO_BRUTO,'
      '  PESO_LIQUIDO = :PESO_LIQUIDO,'
      '  USUARIO = :USUARIO,'
      '  DT_ENTREGA = :DT_ENTREGA,'
      '  HR_ENTREGA = :HR_ENTREGA,'
      '  NOME_RECEBEDOR = :NOME_RECEBEDOR,'
      '  LOGRADOURO = :LOGRADOURO,'
      '  NUMERO = :NUMERO,'
      '  BAIRRO = :BAIRRO,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  CEP = :CEP,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  OBSERVACAO = :OBSERVACAO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 32
    Top = 24
    object OrdemCargaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CRG_ORDEM_CARGA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object OrdemCargaCODIGO_VND: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'CODIGO_VND'
      Origin = '"CRG_ORDEM_CARGA"."CODIGO_VND"'
      Required = True
    end
    object OrdemCargaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CRG_ORDEM_CARGA"."CODIGO"'
      Required = True
    end
    object OrdemCargaDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"CRG_ORDEM_CARGA"."DATA"'
    end
    object OrdemCargaSTATUS: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = '"CRG_ORDEM_CARGA"."STATUS"'
    end
    object OrdemCargaPESO_BRUTO: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'PESO_BRUTO'
      Origin = '"CRG_ORDEM_CARGA"."PESO_BRUTO"'
    end
    object OrdemCargaPESO_LIQUIDO: TFloatField
      DisplayLabel = 'Peso Liquido'
      FieldName = 'PESO_LIQUIDO'
      Origin = '"CRG_ORDEM_CARGA"."PESO_LIQUIDO"'
    end
    object OrdemCargaUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"CRG_ORDEM_CARGA"."USUARIO"'
    end
    object OrdemCargaDT_ENTREGA: TDateTimeField
      DisplayLabel = 'Dt. Entrega'
      FieldName = 'DT_ENTREGA'
      Origin = '"CRG_ORDEM_CARGA"."DT_ENTREGA"'
    end
    object OrdemCargaHR_ENTREGA: TTimeField
      DisplayLabel = 'Hr. Entrega'
      FieldName = 'HR_ENTREGA'
      Origin = '"CRG_ORDEM_CARGA"."HR_ENTREGA"'
    end
    object OrdemCargaNOME_RECEBEDOR: TIBStringField
      DisplayLabel = 'Recebedor'
      FieldName = 'NOME_RECEBEDOR'
      Origin = '"CRG_ORDEM_CARGA"."NOME_RECEBEDOR"'
      Size = 50
    end
    object OrdemCargaLOGRADOURO: TIBStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'LOGRADOURO'
      Origin = '"CRG_ORDEM_CARGA"."LOGRADOURO"'
      Size = 50
    end
    object OrdemCargaNUMERO: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = '"CRG_ORDEM_CARGA"."NUMERO"'
      Size = 15
    end
    object OrdemCargaBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"CRG_ORDEM_CARGA"."BAIRRO"'
      Size = 50
    end
    object OrdemCargaCOMPLEMENTO: TIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Origin = '"CRG_ORDEM_CARGA"."COMPLEMENTO"'
      Size = 30
    end
    object OrdemCargaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CRG_ORDEM_CARGA"."CEP"'
      Size = 8
    end
    object OrdemCargaCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"CRG_ORDEM_CARGA"."CIDADE"'
      Size = 50
    end
    object OrdemCargaUF: TIBStringField
      FieldName = 'UF'
      Origin = '"CRG_ORDEM_CARGA"."UF"'
      FixedChar = True
      Size = 2
    end
    object OrdemCargaOBSERVACAO: TBlobField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBSERVACAO'
      Origin = '"CRG_ORDEM_CARGA"."OBSERVACAO"'
      Size = 8
    end
    object OrdemCargaPSA_NOME_RAZAO: TIBStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'PSA_NOME_RAZAO'
      Size = 50
    end
    object OrdemCargaPSA_FANTASIA: TIBStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'PSA_FANTASIA'
      Size = 50
    end
    object OrdemCargaVD_PESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Pessoa'
      FieldName = 'VD_PESSOA_FJ'
      Origin = '"FAT_VENDAS"."PESSOA_FJ"'
      Required = True
    end
    object OrdemCargaVD_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Venda'
      FieldName = 'VD_CODIGO'
      Origin = '"FAT_VENDAS"."CODIGO"'
      Required = True
    end
    object OrdemCargaVD_DATA: TDateTimeField
      DisplayLabel = 'Dt. Venda'
      FieldName = 'VD_DATA'
      Origin = '"FAT_VENDAS"."DATA"'
      Required = True
    end
    object OrdemCargaVD_DATA_CAIXA: TDateTimeField
      DisplayLabel = 'Dt. Caixa'
      FieldName = 'VD_DATA_CAIXA'
      Origin = '"FAT_VENDAS"."DATA_CAIXA"'
    end
    object OrdemCargaVD_OBSERVACAO: TIBStringField
      DisplayLabel = 'Obs. Venda'
      FieldName = 'VD_OBSERVACAO'
      Origin = '"FAT_VENDAS"."OBSERVACAO"'
      Size = 200
    end
    object OrdemCargaVD_VOLUME: TFloatField
      DisplayLabel = 'Volume'
      FieldName = 'VD_VOLUME'
      Origin = '"FAT_VENDAS"."VOLUME"'
    end
    object OrdemCargaVD_PESO: TFloatField
      DisplayLabel = 'Peso'
      FieldName = 'VD_PESO'
      Origin = '"FAT_VENDAS"."PESO"'
    end
    object OrdemCargaVD_NOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Nome Consumidor'
      FieldName = 'VD_NOME_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object OrdemCargaPSA_CELULAR: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'PSA_CELULAR'
      Origin = '"GLO_PESSOAS_FJ"."CELULAR"'
    end
    object OrdemCargaPSA_FAX: TIBStringField
      DisplayLabel = 'Fax'
      FieldName = 'PSA_FAX'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object OrdemCargaPSA_FONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'PSA_FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object OrdemCargaPSA_CPF_CGC: TIBStringField
      DisplayLabel = 'CPF/CGC'
      FieldName = 'PSA_CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object OrdemCargaPSA_RG_IE: TIBStringField
      DisplayLabel = 'RG/Insc. Est.'
      FieldName = 'PSA_RG_IE'
      Origin = '"GLO_PESSOAS_FJ"."RG_IE"'
      Size = 15
    end
  end
  object OrdemCargaItens: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from CRG_ORDEM_CARGA_ITENS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  GRADE = :OLD_GRADE and'
      '  NUMERO = :OLD_NUMERO and'
      '  PRODUTO = :OLD_PRODUTO')
    InsertSQL.Strings = (
      'insert into CRG_ORDEM_CARGA_ITENS'
      '  (CARREGADO, CNPJ, CODIGO, ENTREGUE, GRADE, NOME_PRODUTO, '
      'NUMERO, PRODUTO, '
      '   QUANTIDADE, SEQUENCIA, UNIDADE, CODIGO_LOTE, LOTE)'
      'values'
      
        '  (:CARREGADO, :CNPJ, :CODIGO, :ENTREGUE, :GRADE, :NOME_PRODUTO,' +
        ' '
      ':NUMERO, '
      
        '   :PRODUTO, :QUANTIDADE, :SEQUENCIA, :UNIDADE, :CODIGO_LOTE, :L' +
        'OTE)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO_VND,'
      '  CODIGO,'
      '  PRODUTO,'
      '  QUANTIDADE,'
      '  NOME_PRODUTO,'
      '  GRADE,'
      '  NUMERO,'
      '  SEQUENCIA,'
      '  UNIDADE,'
      '  CARREGADO,'
      '  ENTREGUE,'
      '  DEVOLVIDO,'
      '  CODIGO_LOTE,'
      '  LOTE'
      'from CRG_ORDEM_CARGA_ITENS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  GRADE = :GRADE and'
      '  NUMERO = :NUMERO and'
      '  PRODUTO = :PRODUTO')
    SelectSQL.Strings = (
      
        'select crgi.CARREGADO, crgi.CNPJ, crgi.CODIGO, crgi.ENTREGUE, cr' +
        'gi.GRADE, crgi.NOME_PRODUTO,'
      
        'crgi.NUMERO, crgi.PRODUTO, crgi.QUANTIDADE, crgi.SEQUENCIA, crgi' +
        '.UNIDADE, crgi.DEVOLVIDO,'
      'crgi.CODIGO_LOTE, crgi.LOTE,'
      'mat.nome MATERIAL, cor.nome COR, per.nome PERFIL'
      'from CRG_ORDEM_CARGA_ITENS crgi'
      
        'left join EST_PRODUTOS_GRADES grd on (grd.grade = crgi.grade and' +
        ' grd.cnpj = crgi.cnpj)'
      
        'left join EST_MATERIAL mat on (mat.codigo = grd.material and grd' +
        '.cnpj = mat.cnpj)'
      
        'left join EST_COR cor on (cor.codigo = grd.cor and cor.cnpj = gr' +
        'd.cnpj)'
      
        'left join EST_GRADES per on (per.codigo = grd.perfil and per.cnp' +
        'j = grd.cnpj)'
      'where crgi.codigo = :codigo and crgi.cnpj = :cnpj')
    ModifySQL.Strings = (
      'update CRG_ORDEM_CARGA_ITENS'
      'set'
      '  CARREGADO = :CARREGADO,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  ENTREGUE = :ENTREGUE,'
      '  GRADE = :GRADE,'
      '  NOME_PRODUTO = :NOME_PRODUTO,'
      '  NUMERO = :NUMERO,'
      '  PRODUTO = :PRODUTO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  SEQUENCIA = :SEQUENCIA,'
      '  UNIDADE = :UNIDADE,'
      '  CODIGO_LOTE = :CODIGO_LOTE,'
      '  LOTE = :LOTE'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  GRADE = :OLD_GRADE and'
      '  NUMERO = :OLD_NUMERO and'
      '  PRODUTO = :OLD_PRODUTO')
    Left = 32
    Top = 72
    object OrdemCargaItensCARREGADO: TFloatField
      DisplayLabel = 'Carregado'
      FieldName = 'CARREGADO'
      Origin = '"CRG_ORDEM_CARGA_ITENS"."CARREGADO"'
    end
    object OrdemCargaItensCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CRG_ORDEM_CARGA_ITENS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object OrdemCargaItensCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CRG_ORDEM_CARGA_ITENS"."CODIGO"'
      Required = True
    end
    object OrdemCargaItensENTREGUE: TFloatField
      DisplayLabel = 'Entregue'
      FieldName = 'ENTREGUE'
      Origin = '"CRG_ORDEM_CARGA_ITENS"."ENTREGUE"'
    end
    object OrdemCargaItensGRADE: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'GRADE'
      Origin = '"CRG_ORDEM_CARGA_ITENS"."GRADE"'
      Size = 4
    end
    object OrdemCargaItensNOME_PRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'NOME_PRODUTO'
      Origin = '"CRG_ORDEM_CARGA_ITENS"."NOME_PRODUTO"'
      Size = 50
    end
    object OrdemCargaItensNUMERO: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = '"CRG_ORDEM_CARGA_ITENS"."NUMERO"'
      Size = 6
    end
    object OrdemCargaItensPRODUTO: TIBStringField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'PRODUTO'
      Origin = '"CRG_ORDEM_CARGA_ITENS"."PRODUTO"'
      Required = True
      Size = 15
    end
    object OrdemCargaItensQUANTIDADE: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Origin = '"CRG_ORDEM_CARGA_ITENS"."QUANTIDADE"'
    end
    object OrdemCargaItensSEQUENCIA: TSmallintField
      DisplayLabel = 'Sequencia'
      FieldName = 'SEQUENCIA'
      Origin = '"CRG_ORDEM_CARGA_ITENS"."SEQUENCIA"'
      Required = True
    end
    object OrdemCargaItensUNIDADE: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Origin = '"CRG_ORDEM_CARGA_ITENS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object OrdemCargaItensDEVOLVIDO: TFloatField
      DisplayLabel = 'Devolvido'
      FieldName = 'DEVOLVIDO'
      Origin = '"CRG_ORDEM_CARGA_ITENS"."DEVOLVIDO"'
    end
    object OrdemCargaItensCODIGO_LOTE: TIntegerField
      DisplayLabel = 'C'#243'd. Lote'
      FieldName = 'CODIGO_LOTE'
      Origin = '"CRG_ORDEM_CARGA_ITENS"."CODIGO_LOTE"'
    end
    object OrdemCargaItensLOTE: TIBStringField
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
      Origin = '"CRG_ORDEM_CARGA_ITENS"."LOTE"'
      Size = 10
    end
    object OrdemCargaItensMATERIAL: TIBStringField
      DisplayLabel = 'Material'
      FieldName = 'MATERIAL'
      Origin = '"EST_MATERIAL"."NOME"'
      Size = 50
    end
    object OrdemCargaItensCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'COR'
      Origin = '"EST_COR"."NOME"'
      Size = 50
    end
    object OrdemCargaItensPERFIL: TIBStringField
      DisplayLabel = 'Perfil'
      FieldName = 'PERFIL'
      Origin = '"EST_GRADES"."NOME"'
      Size = 50
    end
  end
  object Gera_OrdemCarga: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'PCD_EXECUTA_ORDEM_CARGA'
    Left = 32
    Top = 120
  end
  object edtLayoutRequisicao: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from sis_empresas'
      'where'
      '  CNPJ = :OLD_CNPJ')
    InsertSQL.Strings = (
      'insert into sis_empresas'
      '  (CNPJ, CONFIG_REQUISICAO)'
      'values'
      '  (:CNPJ, :CONFIG_REQUISICAO)')
    RefreshSQL.Strings = (
      'Select *'
      'from sis_empresas '
      'where'
      '  CNPJ = :CNPJ')
    SelectSQL.Strings = (
      'select cnpj, CONFIG_REQUISICAO'
      'from sis_empresas'
      'where cnpj = :cnpj')
    ModifySQL.Strings = (
      'update sis_empresas'
      'set'
      '  CNPJ = :CNPJ,'
      '  CONFIG_REQUISICAO = :CONFIG_REQUISICAO'
      'where'
      '  CNPJ = :OLD_CNPJ')
    Left = 32
    Top = 184
    object edtLayoutRequisicaoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_EMPRESAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object edtLayoutRequisicaoCONFIG_REQUISICAO: TMemoField
      FieldName = 'CONFIG_REQUISICAO'
      Origin = '"SIS_EMPRESAS"."CONFIG_REQUISICAO"'
      BlobType = ftMemo
      Size = 8
    end
  end
  object dsLayoutRequisicao: TDataSource
    DataSet = edtLayoutRequisicao
    Left = 32
    Top = 232
  end
  object qrySeries_Requisicao: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from PCD_IMPRIME_SERIE_REQUISICAO(:ORDEM_CARGA , :cnpj)')
    Left = 30
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ORDEM_CARGA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qrySeries_RequisicaoCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."CLIENTE"'
      Size = 50
    end
    object qrySeries_RequisicaoCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."CIDADE"'
      Size = 60
    end
    object qrySeries_RequisicaoENDERECO_CLI: TIBStringField
      FieldName = 'ENDERECO_CLI'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."ENDERECO_CLI"'
      Size = 100
    end
    object qrySeries_RequisicaoCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."COD_VENDA"'
    end
    object qrySeries_RequisicaoCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."COD_CLIENTE"'
    end
    object qrySeries_RequisicaoDT_VENDA: TDateField
      FieldName = 'DT_VENDA'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."DT_VENDA"'
    end
    object qrySeries_RequisicaoDATA_CAIXA: TDateField
      FieldName = 'DATA_CAIXA'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."DATA_CAIXA"'
    end
    object qrySeries_RequisicaoDESC_ACRESC: TFloatField
      FieldName = 'DESC_ACRESC'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."DESC_ACRESC"'
    end
    object qrySeries_RequisicaoDESC_ITEM: TFloatField
      FieldName = 'DESC_ITEM'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."DESC_ITEM"'
    end
    object qrySeries_RequisicaoTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."TOTAL"'
    end
    object qrySeries_RequisicaoTOTAL_BRUTO: TFloatField
      FieldName = 'TOTAL_BRUTO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."TOTAL_BRUTO"'
    end
    object qrySeries_RequisicaoNUM_CUPOM: TIntegerField
      FieldName = 'NUM_CUPOM'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."NUM_CUPOM"'
    end
    object qrySeries_RequisicaoNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."NUM_NF"'
    end
    object qrySeries_RequisicaoNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."NOME_VENDEDOR"'
      Size = 50
    end
    object qrySeries_RequisicaoPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PRODUTO"'
      Size = 50
    end
    object qrySeries_RequisicaoVDI_GRADE: TIBStringField
      FieldName = 'VDI_GRADE'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."VDI_GRADE"'
      FixedChar = True
      Size = 4
    end
    object qrySeries_RequisicaoVDI_NUMERO: TIBStringField
      FieldName = 'VDI_NUMERO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."VDI_NUMERO"'
      Size = 6
    end
    object qrySeries_RequisicaoFORMA_PAGTO: TIBStringField
      FieldName = 'FORMA_PAGTO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."FORMA_PAGTO"'
      Size = 50
    end
    object qrySeries_RequisicaoSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."SEQUENCIA"'
    end
    object qrySeries_RequisicaoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."QUANTIDADE"'
    end
    object qrySeries_RequisicaoPRC_UNITARIO: TFloatField
      FieldName = 'PRC_UNITARIO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PRC_UNITARIO"'
    end
    object qrySeries_RequisicaoPRC_UNITARIO_LIQ: TFloatField
      FieldName = 'PRC_UNITARIO_LIQ'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PRC_UNITARIO_LIQ"'
    end
    object qrySeries_RequisicaoTOTAL_ITEM: TFloatField
      FieldName = 'TOTAL_ITEM'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."TOTAL_ITEM"'
    end
    object qrySeries_RequisicaoPARCELAMENTO: TIBStringField
      FieldName = 'PARCELAMENTO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PARCELAMENTO"'
      Size = 500
    end
    object qrySeries_RequisicaoCOD_PRODUTO: TIBStringField
      FieldName = 'COD_PRODUTO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."COD_PRODUTO"'
      Size = 15
    end
    object qrySeries_RequisicaoBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."BAIRRO"'
      Size = 50
    end
    object qrySeries_RequisicaoCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."COMPLEMENTO"'
      Size = 50
    end
    object qrySeries_RequisicaoPCT_ITEM_DESCTO: TFloatField
      FieldName = 'PCT_ITEM_DESCTO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PCT_ITEM_DESCTO"'
    end
    object qrySeries_RequisicaoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object qrySeries_RequisicaoPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PESSOA_FJ"'
    end
    object qrySeries_RequisicaoCGC_CPF_CLI: TIBStringField
      FieldName = 'CGC_CPF_CLI'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."CGC_CPF_CLI"'
    end
    object qrySeries_RequisicaoTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."TIPO_DOCTO"'
      Size = 3
    end
    object qrySeries_RequisicaoNOME_TIPO_DOCTO: TIBStringField
      FieldName = 'NOME_TIPO_DOCTO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."NOME_TIPO_DOCTO"'
      Size = 50
    end
    object qrySeries_RequisicaoRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."RG_IE"'
      Size = 15
    end
    object qrySeries_RequisicaoHORA: TTimeField
      FieldName = 'HORA'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."HORA"'
    end
    object qrySeries_RequisicaoPCT_DESCTO_VENDA: TFloatField
      FieldName = 'PCT_DESCTO_VENDA'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PCT_DESCTO_VENDA"'
    end
    object qrySeries_RequisicaoCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."CPF_CGC"'
      Size = 14
    end
    object qrySeries_RequisicaoCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."CEP"'
    end
    object qrySeries_RequisicaoCEP_EMP: TIBStringField
      FieldName = 'CEP_EMP'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."CEP_EMP"'
    end
    object qrySeries_RequisicaoBAIRRO_EMP: TIBStringField
      FieldName = 'BAIRRO_EMP'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."BAIRRO_EMP"'
      Size = 50
    end
    object qrySeries_RequisicaoFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."FONE"'
    end
    object qrySeries_RequisicaoFONE_CLIENTE: TIBStringField
      FieldName = 'FONE_CLIENTE'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."FONE_CLIENTE"'
    end
    object qrySeries_RequisicaoENDERECO_EMP: TIBStringField
      FieldName = 'ENDERECO_EMP'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."ENDERECO_EMP"'
      Size = 80
    end
    object qrySeries_RequisicaoFANTASIA_CLI: TIBStringField
      FieldName = 'FANTASIA_CLI'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."FANTASIA_CLI"'
      Size = 50
    end
    object qrySeries_RequisicaoEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."EMPRESA"'
      Size = 50
    end
    object qrySeries_RequisicaoCIDADE_EMP: TIBStringField
      FieldName = 'CIDADE_EMP'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."CIDADE_EMP"'
      Size = 50
    end
    object qrySeries_RequisicaoCNPJ_EMP: TIBStringField
      FieldName = 'CNPJ_EMP'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."CNPJ_EMP"'
    end
    object qrySeries_RequisicaoOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."OBSERVACAO"'
      Size = 200
    end
    object qrySeries_RequisicaoCONT_ITENS: TIBBCDField
      FieldName = 'CONT_ITENS'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."CONT_ITENS"'
      Precision = 18
      Size = 4
    end
    object qrySeries_RequisicaoVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object qrySeries_RequisicaoPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PESO"'
      Precision = 18
      Size = 4
    end
    object qrySeries_RequisicaoMRC_CODIGO: TIntegerField
      FieldName = 'MRC_CODIGO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."MRC_CODIGO"'
    end
    object qrySeries_RequisicaoMRC_NOME: TIBStringField
      FieldName = 'MRC_NOME'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."MRC_NOME"'
      Size = 50
    end
    object qrySeries_RequisicaoPRO_NOME: TIBStringField
      FieldName = 'PRO_NOME'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PRO_NOME"'
      Size = 50
    end
    object qrySeries_RequisicaoPRO_PROPRIETARIO: TIBStringField
      FieldName = 'PRO_PROPRIETARIO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PRO_PROPRIETARIO"'
      Size = 50
    end
    object qrySeries_RequisicaoPRO_IE: TIBStringField
      FieldName = 'PRO_IE'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PRO_IE"'
      Size = 15
    end
    object qrySeries_RequisicaoPRO_PROPRIEDADE: TIntegerField
      FieldName = 'PRO_PROPRIEDADE'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PRO_PROPRIEDADE"'
    end
    object qrySeries_RequisicaoPRO_ENDERECO: TIntegerField
      FieldName = 'PRO_ENDERECO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PRO_ENDERECO"'
    end
    object qrySeries_RequisicaoPRO_COMPLEMENTO: TIBStringField
      FieldName = 'PRO_COMPLEMENTO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PRO_COMPLEMENTO"'
      Size = 30
    end
    object qrySeries_RequisicaoPRO_CIDADE: TIntegerField
      FieldName = 'PRO_CIDADE'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PRO_CIDADE"'
    end
    object qrySeries_RequisicaoPRO_UF: TIBStringField
      FieldName = 'PRO_UF'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PRO_UF"'
      FixedChar = True
      Size = 2
    end
    object qrySeries_RequisicaoPRO_CEP: TIBStringField
      FieldName = 'PRO_CEP'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PRO_CEP"'
      Size = 8
    end
    object qrySeries_RequisicaoPRO_AREA_TOTAL: TIBStringField
      FieldName = 'PRO_AREA_TOTAL'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PRO_AREA_TOTAL"'
      Size = 30
    end
    object qrySeries_RequisicaoPRO_ATIVA: TIBStringField
      FieldName = 'PRO_ATIVA'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PRO_ATIVA"'
      FixedChar = True
      Size = 1
    end
    object qrySeries_RequisicaoPRO_BAIRRO: TIntegerField
      FieldName = 'PRO_BAIRRO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PRO_BAIRRO"'
    end
    object qrySeries_RequisicaoPRO_NUMERO: TIBStringField
      FieldName = 'PRO_NUMERO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PRO_NUMERO"'
      Size = 15
    end
    object qrySeries_RequisicaoPRO_CPF: TIBStringField
      FieldName = 'PRO_CPF'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PRO_CPF"'
    end
    object qrySeries_RequisicaoPRO_TECNICO: TIntegerField
      FieldName = 'PRO_TECNICO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PRO_TECNICO"'
    end
    object qrySeries_RequisicaoPSA_CELULAR: TIBStringField
      FieldName = 'PSA_CELULAR'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PSA_CELULAR"'
    end
    object qrySeries_RequisicaoPSA_FAX: TIBStringField
      FieldName = 'PSA_FAX'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PSA_FAX"'
    end
    object qrySeries_RequisicaoGRD_GRADE: TIBStringField
      FieldName = 'GRD_GRADE'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."GRD_GRADE"'
      FixedChar = True
      Size = 4
    end
    object qrySeries_RequisicaoGRD_MATERIAL: TIntegerField
      FieldName = 'GRD_MATERIAL'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."GRD_MATERIAL"'
    end
    object qrySeries_RequisicaoGRD_COR: TIntegerField
      FieldName = 'GRD_COR'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."GRD_COR"'
    end
    object qrySeries_RequisicaoGRD_NOME_MATERIAL: TIBStringField
      FieldName = 'GRD_NOME_MATERIAL'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."GRD_NOME_MATERIAL"'
      Size = 50
    end
    object qrySeries_RequisicaoGRD_NOME_COR: TIBStringField
      FieldName = 'GRD_NOME_COR'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."GRD_NOME_COR"'
      Size = 50
    end
    object qrySeries_RequisicaoGRD_PERFIL: TIntegerField
      FieldName = 'GRD_PERFIL'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."GRD_PERFIL"'
    end
    object qrySeries_RequisicaoGRD_NOME_PERFIL: TIBStringField
      FieldName = 'GRD_NOME_PERFIL'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."GRD_NOME_PERFIL"'
      Size = 50
    end
    object qrySeries_RequisicaoGRD_NUMERO: TIBStringField
      FieldName = 'GRD_NUMERO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."GRD_NUMERO"'
      Size = 6
    end
    object qrySeries_RequisicaoGRD_ORDEM: TIntegerField
      FieldName = 'GRD_ORDEM'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."GRD_ORDEM"'
    end
    object qrySeries_RequisicaoPC_PARCELAMENTO: TIBStringField
      FieldName = 'PC_PARCELAMENTO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."PC_PARCELAMENTO"'
      Size = 300
    end
    object qrySeries_RequisicaoVDI_CARREGADO: TFloatField
      FieldName = 'VDI_CARREGADO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."VDI_CARREGADO"'
    end
    object qrySeries_RequisicaoVDI_CARREGAR: TFloatField
      FieldName = 'VDI_CARREGAR'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."VDI_CARREGAR"'
    end
    object qrySeries_RequisicaoVDI_ENTREGUE: TFloatField
      FieldName = 'VDI_ENTREGUE'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."VDI_ENTREGUE"'
    end
    object qrySeries_RequisicaoVD_ORDEM_CARGA: TIntegerField
      FieldName = 'VD_ORDEM_CARGA'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."VD_ORDEM_CARGA"'
    end
    object qrySeries_RequisicaoVDI_DEVOLVIDO: TFloatField
      FieldName = 'VDI_DEVOLVIDO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."VDI_DEVOLVIDO"'
    end
    object qrySeries_RequisicaoVDI_ENTREGAR: TFloatField
      FieldName = 'VDI_ENTREGAR'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."VDI_ENTREGAR"'
    end
    object qrySeries_RequisicaoVDI_DEVOLVER: TFloatField
      FieldName = 'VDI_DEVOLVER'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."VDI_DEVOLVER"'
    end
    object qrySeries_RequisicaoCGRI_CARREGADO: TFloatField
      FieldName = 'CGRI_CARREGADO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."CGRI_CARREGADO"'
    end
    object qrySeries_RequisicaoCGRI_DEVOLVIDO: TFloatField
      FieldName = 'CGRI_DEVOLVIDO'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."CGRI_DEVOLVIDO"'
    end
    object qrySeries_RequisicaoCGRI_ENTREGUE: TFloatField
      FieldName = 'CGRI_ENTREGUE'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."CGRI_ENTREGUE"'
    end
    object qrySeries_RequisicaoCGRI_QUANTIDADE: TFloatField
      FieldName = 'CGRI_QUANTIDADE'
      Origin = '"PCD_IMPRIME_SERIE_REQUISICAO"."CGRI_QUANTIDADE"'
    end
  end
  object dsSeries_Requisicao: TDataSource
    DataSet = qrySeries_Requisicao
    Left = 33
    Top = 328
  end
  object OrdemCargaFormacao: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from CRG_ORDEM_CARGA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO_VND = :OLD_CODIGO_VND and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into CRG_ORDEM_CARGA'
      '  (CNPJ, CODIGO_VND, CODIGO, DATA, STATUS, PESO_BRUTO, '
      'PESO_LIQUIDO, USUARIO, '
      '   DT_ENTREGA, HR_ENTREGA, LOGRADOURO, NUMERO, BAIRRO, '
      'COMPLEMENTO, CEP, '
      '   CIDADE, UF, OBSERVACAO)'
      'values'
      '  (:CNPJ, :CODIGO_VND, :CODIGO, :DATA, :STATUS, :PESO_BRUTO, '
      ':PESO_LIQUIDO, '
      '   :USUARIO, :DT_ENTREGA, :HR_ENTREGA, :LOGRADOURO, :NUMERO, '
      ':BAIRRO, :COMPLEMENTO, '
      '   :CEP, :CIDADE, :UF, :OBSERVACAO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO_VND,'
      '  CODIGO,'
      '  DATA,'
      '  STATUS,'
      '  PESO_BRUTO,'
      '  PESO_LIQUIDO,'
      '  USUARIO,'
      '  DT_ENTREGA,'
      '  HR_ENTREGA,'
      '  LOGRADOURO,'
      '  NUMERO,'
      '  BAIRRO,'
      '  COMPLEMENTO,'
      '  CEP,'
      '  CIDADE,'
      '  UF,'
      '  OBSERVACAO'
      'from CRG_ORDEM_CARGA '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO_VND = :CODIGO_VND and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select'
      'cgr.*,'
      'coalesce(psa.nome_razao,'#39#39') psa_nome_razao,'
      'coalesce(psa.FANTASIA,'#39#39') psa_FANTASIA,'
      'vd.pessoa_fj vd_pessoa_fj,'
      'vd.codigo vd_codigo,'
      'vd.data vd_data,'
      'vd.data_caixa vd_data_caixa,'
      'VD.observacao VD_observacao,'
      'VD.volume VD_volume,'
      'VD.peso VD_peso,'
      'vd.nome_consumidor vd_nome_consumidor,'
      'psa.celular psa_celular,'
      'psa.fax psa_fax,'
      'psa.fone psa_fone,'
      'psa.cpf_cgc psa_cpf_cgc,'
      'PSA.rg_ie PSA_rg_ie'
      'from CRG_ORDEM_CARGA cgr'
      
        'inner join fat_vendas        vd    on (vd.codigo     = cgr.codig' +
        'o_vnd and vd.cnpj = cgr.cnpj)'
      
        'inner join glo_pessoas_fj    psa   on (psa.codigo    = vd.pessoa' +
        '_fj  and psa.cnpj = vd.cnpj  )'
      'WHERE'
      'cgr.STATUS IN (5,6) AND'
      'cgr.cnpj = :cnpj AND'
      'cgr.CODIGO not IN ('
      'SELECT crg_carga FROM crg_formar_carga_itens'
      ')')
    ModifySQL.Strings = (
      'update CRG_ORDEM_CARGA'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO_VND = :CODIGO_VND,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  STATUS = :STATUS,'
      '  PESO_BRUTO = :PESO_BRUTO,'
      '  PESO_LIQUIDO = :PESO_LIQUIDO,'
      '  USUARIO = :USUARIO,'
      '  DT_ENTREGA = :DT_ENTREGA,'
      '  HR_ENTREGA = :HR_ENTREGA,'
      '  LOGRADOURO = :LOGRADOURO,'
      '  NUMERO = :NUMERO,'
      '  BAIRRO = :BAIRRO,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  CEP = :CEP,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  OBSERVACAO = :OBSERVACAO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO_VND = :OLD_CODIGO_VND and'
      '  CODIGO = :OLD_CODIGO')
    Left = 128
    Top = 24
    object OrdemCargaFormacaoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CRG_ORDEM_CARGA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object OrdemCargaFormacaoCODIGO_VND: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'CODIGO_VND'
      Origin = '"CRG_ORDEM_CARGA"."CODIGO_VND"'
      Required = True
    end
    object OrdemCargaFormacaoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CRG_ORDEM_CARGA"."CODIGO"'
      Required = True
    end
    object OrdemCargaFormacaoDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"CRG_ORDEM_CARGA"."DATA"'
    end
    object OrdemCargaFormacaoSTATUS: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = '"CRG_ORDEM_CARGA"."STATUS"'
    end
    object OrdemCargaFormacaoPESO_BRUTO: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'PESO_BRUTO'
      Origin = '"CRG_ORDEM_CARGA"."PESO_BRUTO"'
    end
    object OrdemCargaFormacaoPESO_LIQUIDO: TFloatField
      DisplayLabel = 'Peso Liquido'
      FieldName = 'PESO_LIQUIDO'
      Origin = '"CRG_ORDEM_CARGA"."PESO_LIQUIDO"'
    end
    object OrdemCargaFormacaoUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"CRG_ORDEM_CARGA"."USUARIO"'
    end
    object OrdemCargaFormacaoDT_ENTREGA: TDateTimeField
      DisplayLabel = 'Dt. Entrega'
      FieldName = 'DT_ENTREGA'
      Origin = '"CRG_ORDEM_CARGA"."DT_ENTREGA"'
    end
    object OrdemCargaFormacaoHR_ENTREGA: TTimeField
      DisplayLabel = 'Hr. Entrega'
      FieldName = 'HR_ENTREGA'
      Origin = '"CRG_ORDEM_CARGA"."HR_ENTREGA"'
    end
    object OrdemCargaFormacaoNOME_RECEBEDOR: TIBStringField
      DisplayLabel = 'Recebedor'
      FieldName = 'NOME_RECEBEDOR'
      Origin = '"CRG_ORDEM_CARGA"."NOME_RECEBEDOR"'
      Size = 50
    end
    object OrdemCargaFormacaoLOGRADOURO: TIBStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'LOGRADOURO'
      Origin = '"CRG_ORDEM_CARGA"."LOGRADOURO"'
      Size = 50
    end
    object OrdemCargaFormacaoNUMERO: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = '"CRG_ORDEM_CARGA"."NUMERO"'
      Size = 15
    end
    object OrdemCargaFormacaoBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"CRG_ORDEM_CARGA"."BAIRRO"'
      Size = 50
    end
    object OrdemCargaFormacaoCOMPLEMENTO: TIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Origin = '"CRG_ORDEM_CARGA"."COMPLEMENTO"'
      Size = 30
    end
    object OrdemCargaFormacaoCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CRG_ORDEM_CARGA"."CEP"'
      Size = 8
    end
    object OrdemCargaFormacaoCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"CRG_ORDEM_CARGA"."CIDADE"'
      Size = 50
    end
    object OrdemCargaFormacaoUF: TIBStringField
      FieldName = 'UF'
      Origin = '"CRG_ORDEM_CARGA"."UF"'
      FixedChar = True
      Size = 2
    end
    object OrdemCargaFormacaoOBSERVACAO: TBlobField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBSERVACAO'
      Origin = '"CRG_ORDEM_CARGA"."OBSERVACAO"'
      Size = 8
    end
    object OrdemCargaFormacaoPSA_NOME_RAZAO: TIBStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'PSA_NOME_RAZAO'
      Size = 50
    end
    object OrdemCargaFormacaoPSA_FANTASIA: TIBStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'PSA_FANTASIA'
      Size = 50
    end
    object OrdemCargaFormacaoVD_PESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Pessoa'
      FieldName = 'VD_PESSOA_FJ'
      Origin = '"FAT_VENDAS"."PESSOA_FJ"'
      Required = True
    end
    object OrdemCargaFormacaoVD_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Venda'
      FieldName = 'VD_CODIGO'
      Origin = '"FAT_VENDAS"."CODIGO"'
      Required = True
    end
    object OrdemCargaFormacaoVD_DATA: TDateTimeField
      DisplayLabel = 'Dt. Venda'
      FieldName = 'VD_DATA'
      Origin = '"FAT_VENDAS"."DATA"'
      Required = True
    end
    object OrdemCargaFormacaoVD_DATA_CAIXA: TDateTimeField
      DisplayLabel = 'Dt. Caixa'
      FieldName = 'VD_DATA_CAIXA'
      Origin = '"FAT_VENDAS"."DATA_CAIXA"'
    end
    object OrdemCargaFormacaoVD_OBSERVACAO: TIBStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'VD_OBSERVACAO'
      Origin = '"FAT_VENDAS"."OBSERVACAO"'
      Size = 200
    end
    object OrdemCargaFormacaoVD_VOLUME: TFloatField
      DisplayLabel = 'Volume'
      FieldName = 'VD_VOLUME'
      Origin = '"FAT_VENDAS"."VOLUME"'
    end
    object OrdemCargaFormacaoVD_PESO: TFloatField
      DisplayLabel = 'Peso'
      FieldName = 'VD_PESO'
      Origin = '"FAT_VENDAS"."PESO"'
    end
    object OrdemCargaFormacaoVD_NOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Consumidor'
      FieldName = 'VD_NOME_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object OrdemCargaFormacaoPSA_CELULAR: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'PSA_CELULAR'
      Origin = '"GLO_PESSOAS_FJ"."CELULAR"'
    end
    object OrdemCargaFormacaoPSA_FAX: TIBStringField
      DisplayLabel = 'Fax'
      FieldName = 'PSA_FAX'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object OrdemCargaFormacaoPSA_FONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'PSA_FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object OrdemCargaFormacaoPSA_CPF_CGC: TIBStringField
      DisplayLabel = 'CPF/CGC'
      FieldName = 'PSA_CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object OrdemCargaFormacaoPSA_RG_IE: TIBStringField
      DisplayLabel = 'RG/Insc. Est.'
      FieldName = 'PSA_RG_IE'
      Origin = '"GLO_PESSOAS_FJ"."RG_IE"'
      Size = 15
    end
  end
  object FormacaoItens: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnNewRecord = FormacaoItensNewRecord
    DeleteSQL.Strings = (
      'delete from CRG_FORMAR_CARGA_ITENS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  CRG_CARGA = :OLD_CRG_CARGA')
    InsertSQL.Strings = (
      'insert into CRG_FORMAR_CARGA_ITENS'
      '  (CNPJ, CODIGO, CRG_CARGA)'
      'values'
      '  (:CNPJ, :CODIGO, :CRG_CARGA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  CRG_CARGA'
      'from CRG_FORMAR_CARGA_ITENS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  CRG_CARGA = :CRG_CARGA')
    SelectSQL.Strings = (
      'select '
      'fci.*'
      'from CRG_FORMAR_CARGA_ITENS fci'
      'where fci.codigo = :codigo and fci.cnpj = :cnpj')
    ModifySQL.Strings = (
      'update CRG_FORMAR_CARGA_ITENS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  CRG_CARGA = :CRG_CARGA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  CRG_CARGA = :OLD_CRG_CARGA')
    Left = 128
    Top = 72
    object FormacaoItensCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CRG_FORMAR_CARGA_ITENS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object FormacaoItensCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CRG_FORMAR_CARGA_ITENS"."CODIGO"'
      Required = True
    end
    object FormacaoItensCRG_CARGA: TIntegerField
      DisplayLabel = 'Carga'
      FieldName = 'CRG_CARGA'
      Origin = '"CRG_FORMAR_CARGA_ITENS"."CRG_CARGA"'
      Required = True
    end
  end
  object Formacao: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnNewRecord = FormacaoNewRecord
    DeleteSQL.Strings = (
      'delete from CRG_FORMAR_CARGA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into CRG_FORMAR_CARGA'
      '  (CNPJ, CODIGO, NOME_MOTORISTA, LOGRADOURO, CIDADE, BAIRRO, '
      'NUMERO, FONE, '
      '   STATUS, USUARIO, CNPJ_CPF, IE_RG)'
      'values'
      
        '  (:CNPJ, :CODIGO, :NOME_MOTORISTA, :LOGRADOURO, :CIDADE, :BAIRR' +
        'O, '
      ':NUMERO, '
      '   :FONE, :STATUS, :USUARIO, :CNPJ_CPF, :IE_RG)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME_MOTORISTA,'
      '  LOGRADOURO,'
      '  CIDADE,'
      '  BAIRRO,'
      '  NUMERO,'
      '  FONE,'
      '  STATUS,'
      '  USUARIO,'
      '  CNPJ_CPF,'
      '  IE_RG'
      'from CRG_FORMAR_CARGA '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from CRG_FORMAR_CARGA'
      'where cnpj = :cnpj')
    ModifySQL.Strings = (
      'update CRG_FORMAR_CARGA'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME_MOTORISTA = :NOME_MOTORISTA,'
      '  LOGRADOURO = :LOGRADOURO,'
      '  CIDADE = :CIDADE,'
      '  BAIRRO = :BAIRRO,'
      '  NUMERO = :NUMERO,'
      '  FONE = :FONE,'
      '  STATUS = :STATUS,'
      '  USUARIO = :USUARIO,'
      '  CNPJ_CPF = :CNPJ_CPF,'
      '  IE_RG = :IE_RG'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_CRG_FORMAR_CARGA_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 128
    Top = 120
    object FormacaoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CRG_FORMAR_CARGA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object FormacaoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CRG_FORMAR_CARGA"."CODIGO"'
      Required = True
    end
    object FormacaoNOME_MOTORISTA: TIBStringField
      DisplayLabel = 'Motorista'
      FieldName = 'NOME_MOTORISTA'
      Origin = '"CRG_FORMAR_CARGA"."NOME_MOTORISTA"'
      Size = 50
    end
    object FormacaoSTATUS: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = '"CRG_FORMAR_CARGA"."STATUS"'
    end
    object FormacaoUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"CRG_FORMAR_CARGA"."USUARIO"'
    end
    object FormacaoLOGRADOURO: TIBStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'LOGRADOURO'
      Origin = '"CRG_FORMAR_CARGA"."LOGRADOURO"'
      Size = 40
    end
    object FormacaoCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"CRG_FORMAR_CARGA"."CIDADE"'
      Size = 50
    end
    object FormacaoBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"CRG_FORMAR_CARGA"."BAIRRO"'
      Size = 50
    end
    object FormacaoNUMERO: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = '"CRG_FORMAR_CARGA"."NUMERO"'
      Size = 15
    end
    object FormacaoFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"CRG_FORMAR_CARGA"."FONE"'
    end
    object FormacaoCNPJ_CPF: TIBStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'CNPJ_CPF'
      Origin = '"CRG_FORMAR_CARGA"."CNPJ_CPF"'
      FixedChar = True
      Size = 14
    end
    object FormacaoIE_RG: TIBStringField
      DisplayLabel = 'IE/Insc. Est'
      FieldName = 'IE_RG'
      Origin = '"CRG_FORMAR_CARGA"."IE_RG"'
      Size = 15
    end
  end
  object qListagemProdutos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * '
      'from PCD_LST_CRG_FORMACAO_SINT(:cnpj, :CODIGO_FORMACAO)')
    Left = 128
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_FORMACAO'
        ParamType = ptUnknown
      end>
    object qListagemProdutosCRGI_PRODUTO: TIBStringField
      FieldName = 'CRGI_PRODUTO'
      Origin = '"PCD_LST_CRG_FORMACAO_SINT"."CRGI_PRODUTO"'
      Size = 15
    end
    object qListagemProdutosCRGI_NOME_PRODUTO: TIBStringField
      FieldName = 'CRGI_NOME_PRODUTO'
      Origin = '"PCD_LST_CRG_FORMACAO_SINT"."CRGI_NOME_PRODUTO"'
      Size = 50
    end
    object qListagemProdutosCRGI_GRADE: TIBStringField
      FieldName = 'CRGI_GRADE'
      Origin = '"PCD_LST_CRG_FORMACAO_SINT"."CRGI_GRADE"'
      Size = 4
    end
    object qListagemProdutosCRGI_NUMERO: TIBStringField
      FieldName = 'CRGI_NUMERO'
      Origin = '"PCD_LST_CRG_FORMACAO_SINT"."CRGI_NUMERO"'
      Size = 6
    end
    object qListagemProdutosCRGI_UNIDADE: TIBStringField
      FieldName = 'CRGI_UNIDADE'
      Origin = '"PCD_LST_CRG_FORMACAO_SINT"."CRGI_UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object qListagemProdutosCRGI_CARREGADO: TFloatField
      FieldName = 'CRGI_CARREGADO'
      Origin = '"PCD_LST_CRG_FORMACAO_SINT"."CRGI_CARREGADO"'
    end
    object qListagemProdutosPRD_LOCALIZACAO_1: TIBStringField
      FieldName = 'PRD_LOCALIZACAO_1'
      Origin = '"PCD_LST_CRG_FORMACAO_SINT"."PRD_LOCALIZACAO_1"'
      Size = 30
    end
    object qListagemProdutosPRD_LOCALIZACAO_2: TIBStringField
      FieldName = 'PRD_LOCALIZACAO_2'
      Origin = '"PCD_LST_CRG_FORMACAO_SINT"."PRD_LOCALIZACAO_2"'
      Size = 30
    end
    object qListagemProdutosPRD_LOCALIZACAO_3: TIBStringField
      FieldName = 'PRD_LOCALIZACAO_3'
      Origin = '"PCD_LST_CRG_FORMACAO_SINT"."PRD_LOCALIZACAO_3"'
      Size = 30
    end
    object qListagemProdutosE_NOME: TIBStringField
      FieldName = 'E_NOME'
      Origin = '"PCD_LST_CRG_FORMACAO_SINT"."E_NOME"'
      Size = 50
    end
    object qListagemProdutosE_FONE: TIBStringField
      FieldName = 'E_FONE'
      Origin = '"PCD_LST_CRG_FORMACAO_SINT"."E_FONE"'
    end
    object qListagemProdutosE_ENDERECO: TIBStringField
      FieldName = 'E_ENDERECO'
      Origin = '"PCD_LST_CRG_FORMACAO_SINT"."E_ENDERECO"'
      Size = 50
    end
    object qListagemProdutosE_CEP: TIBStringField
      FieldName = 'E_CEP'
      Origin = '"PCD_LST_CRG_FORMACAO_SINT"."E_CEP"'
      Size = 8
    end
    object qListagemProdutosE_BAIRRO: TIBStringField
      FieldName = 'E_BAIRRO'
      Origin = '"PCD_LST_CRG_FORMACAO_SINT"."E_BAIRRO"'
      Size = 50
    end
    object qListagemProdutosE_CIDADE: TIBStringField
      FieldName = 'E_CIDADE'
      Origin = '"PCD_LST_CRG_FORMACAO_SINT"."E_CIDADE"'
      Size = 50
    end
    object qListagemProdutosE_CNPJ: TIBStringField
      FieldName = 'E_CNPJ'
      Origin = '"PCD_LST_CRG_FORMACAO_SINT"."E_CNPJ"'
    end
  end
  object dsListagemProdutos: TDataSource
    DataSet = qListagemProdutos
    Left = 128
    Top = 232
  end
  object dsRota: TDataSource
    DataSet = qRota
    Left = 128
    Top = 328
  end
  object qRota: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select *'
      'from PCD_CRG_FORMACAO_ROTA (:CNPJ, :CODIGO_FORMACAO)'
      'ORDER BY CRG_DT_ENTREGA, CRG_HR_ENTREGA')
    Left = 128
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_FORMACAO'
        ParamType = ptUnknown
      end>
    object qRotaCRG_CODIGO: TIntegerField
      FieldName = 'CRG_CODIGO'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRG_CODIGO"'
    end
    object qRotaCRG_CODIGO_VND: TIntegerField
      FieldName = 'CRG_CODIGO_VND'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRG_CODIGO_VND"'
    end
    object qRotaCRG_DATA: TDateTimeField
      FieldName = 'CRG_DATA'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRG_DATA"'
    end
    object qRotaCRG_NOME_RECEBEDOR: TIBStringField
      FieldName = 'CRG_NOME_RECEBEDOR'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRG_NOME_RECEBEDOR"'
      Size = 50
    end
    object qRotaCRG_LOGRADOURO: TIBStringField
      FieldName = 'CRG_LOGRADOURO'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRG_LOGRADOURO"'
      Size = 50
    end
    object qRotaCRG_NUMERO: TIBStringField
      FieldName = 'CRG_NUMERO'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRG_NUMERO"'
      Size = 15
    end
    object qRotaCRG_BAIRRO: TIBStringField
      FieldName = 'CRG_BAIRRO'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRG_BAIRRO"'
      Size = 50
    end
    object qRotaCRG_CEP: TIBStringField
      FieldName = 'CRG_CEP'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRG_CEP"'
      Size = 8
    end
    object qRotaCRG_CIDADE: TIBStringField
      FieldName = 'CRG_CIDADE'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRG_CIDADE"'
      Size = 50
    end
    object qRotaCRG_COMPLEMENTO: TIBStringField
      FieldName = 'CRG_COMPLEMENTO'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRG_COMPLEMENTO"'
      Size = 30
    end
    object qRotaCRG_DT_ENTREGA: TDateTimeField
      FieldName = 'CRG_DT_ENTREGA'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRG_DT_ENTREGA"'
    end
    object qRotaCRG_HR_ENTREGA: TTimeField
      FieldName = 'CRG_HR_ENTREGA'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRG_HR_ENTREGA"'
    end
    object qRotaCRG_OBSERVACAO: TBlobField
      FieldName = 'CRG_OBSERVACAO'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRG_OBSERVACAO"'
      Size = 8
    end
    object qRotaCRG_PESO_BRUTO: TFloatField
      FieldName = 'CRG_PESO_BRUTO'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRG_PESO_BRUTO"'
    end
    object qRotaCRG_PESO_LIQUIDO: TFloatField
      FieldName = 'CRG_PESO_LIQUIDO'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRG_PESO_LIQUIDO"'
    end
    object qRotaCRG_STATUS: TIntegerField
      FieldName = 'CRG_STATUS'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRG_STATUS"'
    end
    object qRotaCRG_UF: TIBStringField
      FieldName = 'CRG_UF'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRG_UF"'
      FixedChar = True
      Size = 2
    end
    object qRotaCRG_USUARIO: TIntegerField
      FieldName = 'CRG_USUARIO'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRG_USUARIO"'
    end
    object qRotaCRGF_CODIGO: TIntegerField
      FieldName = 'CRGF_CODIGO'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRGF_CODIGO"'
    end
    object qRotaCRGF_NOME_MOTORISTA: TIBStringField
      FieldName = 'CRGF_NOME_MOTORISTA'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRGF_NOME_MOTORISTA"'
      Size = 50
    end
    object qRotaCRGF_STATUS: TIntegerField
      FieldName = 'CRGF_STATUS'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRGF_STATUS"'
    end
    object qRotaCRGF_USUARIO: TIntegerField
      FieldName = 'CRGF_USUARIO'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRGF_USUARIO"'
    end
    object qRotaCRGF_BAIRRO: TIBStringField
      FieldName = 'CRGF_BAIRRO'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRGF_BAIRRO"'
      Size = 50
    end
    object qRotaCRGF_CIDADE: TIBStringField
      FieldName = 'CRGF_CIDADE'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRGF_CIDADE"'
      Size = 50
    end
    object qRotaCRGF_CNPJ_CPF: TIBStringField
      FieldName = 'CRGF_CNPJ_CPF'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRGF_CNPJ_CPF"'
      FixedChar = True
      Size = 14
    end
    object qRotaCRGF_FONE: TIBStringField
      FieldName = 'CRGF_FONE'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRGF_FONE"'
    end
    object qRotaCRGF_IE_RG: TIBStringField
      FieldName = 'CRGF_IE_RG'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRGF_IE_RG"'
      Size = 15
    end
    object qRotaCRGF_LOGRADOURO: TIBStringField
      FieldName = 'CRGF_LOGRADOURO'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRGF_LOGRADOURO"'
      Size = 40
    end
    object qRotaCRGF_NUMERO: TIBStringField
      FieldName = 'CRGF_NUMERO'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."CRGF_NUMERO"'
      Size = 15
    end
    object qRotaE_NOME: TIBStringField
      FieldName = 'E_NOME'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."E_NOME"'
      Size = 50
    end
    object qRotaE_FONE: TIBStringField
      FieldName = 'E_FONE'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."E_FONE"'
    end
    object qRotaE_CEP: TIBStringField
      FieldName = 'E_CEP'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."E_CEP"'
      Size = 8
    end
    object qRotaE_BAIRRO: TIBStringField
      FieldName = 'E_BAIRRO'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."E_BAIRRO"'
      Size = 50
    end
    object qRotaE_CIDADE: TIBStringField
      FieldName = 'E_CIDADE'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."E_CIDADE"'
      Size = 50
    end
    object qRotaE_CNPJ: TIBStringField
      FieldName = 'E_CNPJ'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."E_CNPJ"'
    end
    object qRotaE_ENDERECO: TIBStringField
      FieldName = 'E_ENDERECO'
      Origin = '"PCD_CRG_FORMACAO_ROTA"."E_ENDERECO"'
      Size = 50
    end
  end
  object qImportaDadosPed: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select '
      'coalesce(ven.nome,ven.nome_consumidor) fantasia,'
      
        'LOG.nome endereco, BAR.nome BAIRRO, PES.numero, PES.complemento,' +
        ' PES.cep,'
      'CID.nome CIDADE, PES.uf, PES.obs,'
      'VEN.observacao'
      'from FAT_VENDAS VEN'
      
        'INNER JOIN GLO_PESSOAS_FJ PES ON (PES.CODIGO = VEN.PESSOA_FJ AND' +
        ' PES.CNPJ = VEN.CNPJ)'
      
        'LEFT JOIN  glo_bairros BAR ON (BAR.codigo = PES.bairro AND BAR.C' +
        'NPJ = VEN.CNPJ)'
      
        'LEFT JOIN  glo_cidades CID ON (CID.codigo = PES.CIDADE AND CID.C' +
        'NPJ = VEN.CNPJ)'
      
        'LEFT JOIN  glo_logradouros LOG ON (LOG.codigo = PES.endereco AND' +
        ' CID.CNPJ = VEN.CNPJ)'
      'where VEN.cnpj = :cnpj and VEN.codigo = :codigo')
    Left = 200
    Top = 24
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
    object qImportaDadosPedFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object qImportaDadosPedENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      Size = 50
    end
    object qImportaDadosPedBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"GLO_BAIRROS"."NOME"'
      Size = 50
    end
    object qImportaDadosPedNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"GLO_PESSOAS_FJ"."NUMERO"'
      Size = 15
    end
    object qImportaDadosPedCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_PESSOAS_FJ"."COMPLEMENTO"'
      Size = 30
    end
    object qImportaDadosPedCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"GLO_PESSOAS_FJ"."CEP"'
      Size = 8
    end
    object qImportaDadosPedCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object qImportaDadosPedUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PESSOAS_FJ"."UF"'
      FixedChar = True
      Size = 2
    end
    object qImportaDadosPedOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"GLO_PESSOAS_FJ"."OBS"'
      Size = 8
    end
    object qImportaDadosPedOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"FAT_VENDAS"."OBSERVACAO"'
      Size = 200
    end
  end
  object edtLayoutDevolucao: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from sis_documentos'
      'where'
      '  CNPJ = :OLD_CNPJ')
    InsertSQL.Strings = (
      'insert into sis_documentos'
      '  (CNPJ, CONFIG_DEVOLUCAO)'
      'values'
      '  (:CNPJ, :CONFIG_DEVOLUCAO)')
    RefreshSQL.Strings = (
      'Select *'
      'from sis_documentos '
      'where'
      '  CNPJ = :CNPJ')
    SelectSQL.Strings = (
      'select cnpj, CONFIG_DEVOLUCAO'
      'from sis_documentos'
      'where cnpj = :cnpj')
    ModifySQL.Strings = (
      'update sis_documentos'
      'set'
      '  CNPJ = :CNPJ,'
      '  CONFIG_DEVOLUCAO = :CONFIG_DEVOLUCAO'
      'where'
      '  CNPJ = :OLD_CNPJ')
    Left = 200
    Top = 72
    object edtLayoutDevolucaoCONFIG_DEVOLUCAO: TMemoField
      FieldName = 'CONFIG_DEVOLUCAO'
      Origin = '"SIS_DOCUMENTOS"."CONFIG_DEVOLUCAO"'
      BlobType = ftMemo
      Size = 8
    end
    object edtLayoutDevolucaoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_DOCUMENTOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
  end
  object dsLayoutDevolucao: TDataSource
    DataSet = edtLayoutDevolucao
    Left = 200
    Top = 120
  end
  object qrySeries_Devolucao: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from PCD_IMPRIME_SERIE_DEVOLUCAO(:ORDEM_CARGA , :cnpj)')
    Left = 209
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ORDEM_CARGA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qrySeries_DevolucaoPSA_CLIENTE: TIBStringField
      FieldName = 'PSA_CLIENTE'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PSA_CLIENTE"'
      Size = 50
    end
    object qrySeries_DevolucaoPSA_FANTASIA_CLI: TIBStringField
      FieldName = 'PSA_FANTASIA_CLI'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PSA_FANTASIA_CLI"'
      Size = 50
    end
    object qrySeries_DevolucaoPSA_CIDADE: TIBStringField
      FieldName = 'PSA_CIDADE'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PSA_CIDADE"'
      Size = 60
    end
    object qrySeries_DevolucaoPSA_ENDERECO_CLI: TIBStringField
      FieldName = 'PSA_ENDERECO_CLI'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PSA_ENDERECO_CLI"'
      Size = 100
    end
    object qrySeries_DevolucaoVD_COD_VENDA: TIntegerField
      FieldName = 'VD_COD_VENDA'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."VD_COD_VENDA"'
    end
    object qrySeries_DevolucaoVD_PESSOA_FJ: TIntegerField
      FieldName = 'VD_PESSOA_FJ'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."VD_PESSOA_FJ"'
    end
    object qrySeries_DevolucaoVD_DT_VENDA: TDateField
      FieldName = 'VD_DT_VENDA'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."VD_DT_VENDA"'
    end
    object qrySeries_DevolucaoVD_DATA_CAIXA: TDateField
      FieldName = 'VD_DATA_CAIXA'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."VD_DATA_CAIXA"'
    end
    object qrySeries_DevolucaoVD_DESC_ACRESC: TFloatField
      FieldName = 'VD_DESC_ACRESC'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."VD_DESC_ACRESC"'
    end
    object qrySeries_DevolucaoVD_TOTAL: TFloatField
      FieldName = 'VD_TOTAL'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."VD_TOTAL"'
    end
    object qrySeries_DevolucaoVD_NUM_CUPOM: TIntegerField
      FieldName = 'VD_NUM_CUPOM'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."VD_NUM_CUPOM"'
    end
    object qrySeries_DevolucaoVD_NUM_NF: TIntegerField
      FieldName = 'VD_NUM_NF'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."VD_NUM_NF"'
    end
    object qrySeries_DevolucaoVD_OBSERVACAO: TIBStringField
      FieldName = 'VD_OBSERVACAO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."VD_OBSERVACAO"'
      Size = 200
    end
    object qrySeries_DevolucaoVD_VOLUME: TIBBCDField
      FieldName = 'VD_VOLUME'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."VD_VOLUME"'
      Precision = 18
      Size = 4
    end
    object qrySeries_DevolucaoVD_PESO: TIBBCDField
      FieldName = 'VD_PESO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."VD_PESO"'
      Precision = 18
      Size = 4
    end
    object qrySeries_DevolucaoVD_HORA: TTimeField
      FieldName = 'VD_HORA'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."VD_HORA"'
    end
    object qrySeries_DevolucaoVD_TIPO_DOCTO: TIBStringField
      FieldName = 'VD_TIPO_DOCTO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."VD_TIPO_DOCTO"'
      Size = 3
    end
    object qrySeries_DevolucaoVD_TOTAL_BRUTO: TFloatField
      FieldName = 'VD_TOTAL_BRUTO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."VD_TOTAL_BRUTO"'
    end
    object qrySeries_DevolucaoCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."COD_CLIENTE"'
    end
    object qrySeries_DevolucaoDESC_ITEM: TFloatField
      FieldName = 'DESC_ITEM'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."DESC_ITEM"'
    end
    object qrySeries_DevolucaoNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."NOME_VENDEDOR"'
      Size = 50
    end
    object qrySeries_DevolucaoVD_ORDEM_CARGA: TIntegerField
      FieldName = 'VD_ORDEM_CARGA'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."VD_ORDEM_CARGA"'
    end
    object qrySeries_DevolucaoPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PRODUTO"'
      Size = 50
    end
    object qrySeries_DevolucaoFORMA_PAGTO: TIBStringField
      FieldName = 'FORMA_PAGTO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."FORMA_PAGTO"'
      Size = 50
    end
    object qrySeries_DevolucaoSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."SEQUENCIA"'
    end
    object qrySeries_DevolucaoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."QUANTIDADE"'
    end
    object qrySeries_DevolucaoPRC_UNITARIO: TFloatField
      FieldName = 'PRC_UNITARIO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PRC_UNITARIO"'
    end
    object qrySeries_DevolucaoPRC_UNITARIO_LIQ: TFloatField
      FieldName = 'PRC_UNITARIO_LIQ'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PRC_UNITARIO_LIQ"'
    end
    object qrySeries_DevolucaoTOTAL_ITEM: TFloatField
      FieldName = 'TOTAL_ITEM'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."TOTAL_ITEM"'
    end
    object qrySeries_DevolucaoPARCELAMENTO: TIBStringField
      FieldName = 'PARCELAMENTO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PARCELAMENTO"'
      Size = 500
    end
    object qrySeries_DevolucaoCOD_PRODUTO: TIBStringField
      FieldName = 'COD_PRODUTO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."COD_PRODUTO"'
      Size = 15
    end
    object qrySeries_DevolucaoBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."BAIRRO"'
      Size = 50
    end
    object qrySeries_DevolucaoCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."COMPLEMENTO"'
      Size = 50
    end
    object qrySeries_DevolucaoPCT_ITEM_DESCTO: TFloatField
      FieldName = 'PCT_ITEM_DESCTO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PCT_ITEM_DESCTO"'
    end
    object qrySeries_DevolucaoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object qrySeries_DevolucaoCGC_CPF_CLI: TIBStringField
      FieldName = 'CGC_CPF_CLI'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."CGC_CPF_CLI"'
    end
    object qrySeries_DevolucaoNOME_TIPO_DOCTO: TIBStringField
      FieldName = 'NOME_TIPO_DOCTO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."NOME_TIPO_DOCTO"'
      Size = 50
    end
    object qrySeries_DevolucaoRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."RG_IE"'
      Size = 15
    end
    object qrySeries_DevolucaoPCT_DESCTO_VENDA: TFloatField
      FieldName = 'PCT_DESCTO_VENDA'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PCT_DESCTO_VENDA"'
    end
    object qrySeries_DevolucaoCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."CPF_CGC"'
      Size = 14
    end
    object qrySeries_DevolucaoCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."CEP"'
    end
    object qrySeries_DevolucaoCEP_EMP: TIBStringField
      FieldName = 'CEP_EMP'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."CEP_EMP"'
    end
    object qrySeries_DevolucaoBAIRRO_EMP: TIBStringField
      FieldName = 'BAIRRO_EMP'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."BAIRRO_EMP"'
      Size = 50
    end
    object qrySeries_DevolucaoFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."FONE"'
    end
    object qrySeries_DevolucaoFONE_CLIENTE: TIBStringField
      FieldName = 'FONE_CLIENTE'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."FONE_CLIENTE"'
    end
    object qrySeries_DevolucaoENDERECO_EMP: TIBStringField
      FieldName = 'ENDERECO_EMP'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."ENDERECO_EMP"'
      Size = 80
    end
    object qrySeries_DevolucaoEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."EMPRESA"'
      Size = 50
    end
    object qrySeries_DevolucaoCIDADE_EMP: TIBStringField
      FieldName = 'CIDADE_EMP'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."CIDADE_EMP"'
      Size = 50
    end
    object qrySeries_DevolucaoCNPJ_EMP: TIBStringField
      FieldName = 'CNPJ_EMP'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."CNPJ_EMP"'
    end
    object qrySeries_DevolucaoCONT_ITENS: TIBBCDField
      FieldName = 'CONT_ITENS'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."CONT_ITENS"'
      Precision = 18
      Size = 4
    end
    object qrySeries_DevolucaoMRC_CODIGO: TIntegerField
      FieldName = 'MRC_CODIGO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."MRC_CODIGO"'
    end
    object qrySeries_DevolucaoMRC_NOME: TIBStringField
      FieldName = 'MRC_NOME'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."MRC_NOME"'
      Size = 50
    end
    object qrySeries_DevolucaoPRO_NOME: TIBStringField
      FieldName = 'PRO_NOME'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PRO_NOME"'
      Size = 50
    end
    object qrySeries_DevolucaoPRO_PROPRIETARIO: TIBStringField
      FieldName = 'PRO_PROPRIETARIO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PRO_PROPRIETARIO"'
      Size = 50
    end
    object qrySeries_DevolucaoPRO_IE: TIBStringField
      FieldName = 'PRO_IE'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PRO_IE"'
      Size = 15
    end
    object qrySeries_DevolucaoPRO_PROPRIEDADE: TIntegerField
      FieldName = 'PRO_PROPRIEDADE'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PRO_PROPRIEDADE"'
    end
    object qrySeries_DevolucaoPRO_ENDERECO: TIntegerField
      FieldName = 'PRO_ENDERECO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PRO_ENDERECO"'
    end
    object qrySeries_DevolucaoPRO_COMPLEMENTO: TIBStringField
      FieldName = 'PRO_COMPLEMENTO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PRO_COMPLEMENTO"'
      Size = 30
    end
    object qrySeries_DevolucaoPRO_CIDADE: TIntegerField
      FieldName = 'PRO_CIDADE'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PRO_CIDADE"'
    end
    object qrySeries_DevolucaoPRO_UF: TIBStringField
      FieldName = 'PRO_UF'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PRO_UF"'
      FixedChar = True
      Size = 2
    end
    object qrySeries_DevolucaoPRO_CEP: TIBStringField
      FieldName = 'PRO_CEP'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PRO_CEP"'
      Size = 8
    end
    object qrySeries_DevolucaoPRO_AREA_TOTAL: TIBStringField
      FieldName = 'PRO_AREA_TOTAL'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PRO_AREA_TOTAL"'
      Size = 30
    end
    object qrySeries_DevolucaoPRO_ATIVA: TIBStringField
      FieldName = 'PRO_ATIVA'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PRO_ATIVA"'
      FixedChar = True
      Size = 1
    end
    object qrySeries_DevolucaoPRO_BAIRRO: TIntegerField
      FieldName = 'PRO_BAIRRO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PRO_BAIRRO"'
    end
    object qrySeries_DevolucaoPRO_NUMERO: TIBStringField
      FieldName = 'PRO_NUMERO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PRO_NUMERO"'
      Size = 15
    end
    object qrySeries_DevolucaoPRO_CPF: TIBStringField
      FieldName = 'PRO_CPF'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PRO_CPF"'
    end
    object qrySeries_DevolucaoPRO_TECNICO: TIntegerField
      FieldName = 'PRO_TECNICO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PRO_TECNICO"'
    end
    object qrySeries_DevolucaoPSA_CELULAR: TIBStringField
      FieldName = 'PSA_CELULAR'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PSA_CELULAR"'
    end
    object qrySeries_DevolucaoPSA_FAX: TIBStringField
      FieldName = 'PSA_FAX'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PSA_FAX"'
    end
    object qrySeries_DevolucaoGRD_GRADE: TIBStringField
      FieldName = 'GRD_GRADE'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."GRD_GRADE"'
      FixedChar = True
      Size = 4
    end
    object qrySeries_DevolucaoGRD_MATERIAL: TIntegerField
      FieldName = 'GRD_MATERIAL'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."GRD_MATERIAL"'
    end
    object qrySeries_DevolucaoGRD_COR: TIntegerField
      FieldName = 'GRD_COR'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."GRD_COR"'
    end
    object qrySeries_DevolucaoGRD_NOME_MATERIAL: TIBStringField
      FieldName = 'GRD_NOME_MATERIAL'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."GRD_NOME_MATERIAL"'
      Size = 50
    end
    object qrySeries_DevolucaoGRD_NOME_COR: TIBStringField
      FieldName = 'GRD_NOME_COR'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."GRD_NOME_COR"'
      Size = 50
    end
    object qrySeries_DevolucaoGRD_PERFIL: TIntegerField
      FieldName = 'GRD_PERFIL'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."GRD_PERFIL"'
    end
    object qrySeries_DevolucaoGRD_NOME_PERFIL: TIBStringField
      FieldName = 'GRD_NOME_PERFIL'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."GRD_NOME_PERFIL"'
      Size = 50
    end
    object qrySeries_DevolucaoGRD_NUMERO: TIBStringField
      FieldName = 'GRD_NUMERO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."GRD_NUMERO"'
      Size = 6
    end
    object qrySeries_DevolucaoGRD_ORDEM: TIntegerField
      FieldName = 'GRD_ORDEM'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."GRD_ORDEM"'
    end
    object qrySeries_DevolucaoPC_PARCELAMENTO: TIBStringField
      FieldName = 'PC_PARCELAMENTO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."PC_PARCELAMENTO"'
      Size = 300
    end
    object qrySeries_DevolucaoCGRI_CARREGADO: TFloatField
      FieldName = 'CGRI_CARREGADO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."CGRI_CARREGADO"'
    end
    object qrySeries_DevolucaoCGRI_DEVOLVIDO: TFloatField
      FieldName = 'CGRI_DEVOLVIDO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."CGRI_DEVOLVIDO"'
    end
    object qrySeries_DevolucaoCGRI_ENTREGUE: TFloatField
      FieldName = 'CGRI_ENTREGUE'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."CGRI_ENTREGUE"'
    end
    object qrySeries_DevolucaoCGRI_QUANTIDADE: TFloatField
      FieldName = 'CGRI_QUANTIDADE'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."CGRI_QUANTIDADE"'
    end
    object qrySeries_DevolucaoCGRI_GRADE: TIBStringField
      FieldName = 'CGRI_GRADE'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."CGRI_GRADE"'
      Size = 4
    end
    object qrySeries_DevolucaoCGRI_NUMERO: TIBStringField
      FieldName = 'CGRI_NUMERO'
      Origin = '"PCD_IMPRIME_SERIE_DEVOLUCAO"."CGRI_NUMERO"'
      Size = 6
    end
  end
  object dsSeries_Devolucao: TDataSource
    DataSet = qrySeries_Devolucao
    Left = 209
    Top = 328
  end
  object IBQuery1: TIBQuery
    Left = 296
    Top = 24
  end
end
