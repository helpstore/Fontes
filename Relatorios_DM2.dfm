object dmRelatorios2: TdmRelatorios2
  OldCreateOrder = False
  Left = 302
  Top = 157
  Height = 564
  Width = 741
  object qryRelComVendas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = qryRelComVendasCalcFields
    Active = True
    SQL.Strings = (
      
        'select vd.codigo CM_COD_VENDA, vd.data vd_data, vd.cnpj, vd.data' +
        '_caixa vd_dt_cx, coalesce(vd.total,0) vd_total,'
      
        'coalesce(vd.desc_acres,0) vd_desc_acresc, (coalesce(vd.total,0) ' +
        '+ coalesce(vd.desc_acres,0)) vd_total_liq ,'
      ' coalesce(vdi.quantidade,0) vdi_qtde,'
      
        'coalesce(vdi.prc_unitario,0) vdi_prc_unitario, coalesce(vdi.prc_' +
        'custo,0) vdi_custo, vdi.sequencia,'
      'coalesce(vdi.desconto,0) vdi_desconto,'
      
        '(coalesce(vdi.quantidade,0) * (coalesce(vdi.prc_unitario,0) - co' +
        'alesce(vdi.desconto,0))) vdi_ttl_item,'
      
        'coalesce(vdi.produto,'#39#39') prd_codigo, coalesce(prd.nome,'#39#39') prd_n' +
        'ome, vd.pessoa_fj vd_cod_cliente,'
      
        'psa.nome_razao vd_cliente, vd.entrada VD_ENTRADA, vd.forma_pgto ' +
        'vd_cod_pagto, log.com_vista, log.com_prazo'
      'from fat_vendas vd'
      
        'inner join glo_pessoas_fj psa on (psa.codigo = vd.pessoa_fj and ' +
        'vd.cnpj = psa.cnpj)'
      
        'inner join cm_comissao cm on (vd.codigo = cm.cod_venda and cm.cn' +
        'pj = vd.cnpj)'
      
        'inner join fat_vendas_itens vdi on (vd.cnpj = vdi.cnpj and vdi.c' +
        'odigo = vd.codigo)'
      
        'inner join est_produtos prd on (prd.cnpj = vdi.cnpj and vdi.prod' +
        'uto = prd.codigo)'
      
        'left join cm_log log on (log.cnpj = vdi.cnpj and log.cod_venda =' +
        ' vdi.codigo and log.cod_produto = vdi.produto and log.sequencia ' +
        '= vdi.sequencia)'
      'where  vdi.vendedor = :vendedor and vd.cnpj = :cnpj')
    Left = 175
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryRelComVendasVD_DATA: TDateTimeField
      FieldName = 'VD_DATA'
      Origin = '"FAT_VENDAS"."DATA"'
      Required = True
    end
    object qryRelComVendasVD_DT_CX: TDateTimeField
      FieldName = 'VD_DT_CX'
      Origin = '"FAT_VENDAS"."DATA_CAIXA"'
    end
    object qryRelComVendasVD_TOTAL: TFloatField
      FieldName = 'VD_TOTAL'
    end
    object qryRelComVendasVD_DESC_ACRESC: TFloatField
      FieldName = 'VD_DESC_ACRESC'
    end
    object qryRelComVendasVD_TOTAL_LIQ: TFloatField
      FieldName = 'VD_TOTAL_LIQ'
    end
    object qryRelComVendasVDI_QTDE: TFloatField
      FieldName = 'VDI_QTDE'
    end
    object qryRelComVendasVDI_PRC_UNITARIO: TFloatField
      FieldName = 'VDI_PRC_UNITARIO'
    end
    object qryRelComVendasVDI_CUSTO: TFloatField
      FieldName = 'VDI_CUSTO'
    end
    object qryRelComVendasVDI_DESCONTO: TFloatField
      FieldName = 'VDI_DESCONTO'
    end
    object qryRelComVendasVDI_TTL_ITEM: TFloatField
      FieldName = 'VDI_TTL_ITEM'
    end
    object qryRelComVendasPRD_CODIGO: TIBStringField
      FieldName = 'PRD_CODIGO'
      Size = 15
    end
    object qryRelComVendasPRD_NOME: TIBStringField
      FieldName = 'PRD_NOME'
      Size = 50
    end
    object qryRelComVendasVD_COD_CLIENTE: TIntegerField
      FieldName = 'VD_COD_CLIENTE'
      Origin = '"FAT_VENDAS"."PESSOA_FJ"'
      Required = True
    end
    object qryRelComVendasVD_CLIENTE: TIBStringField
      FieldName = 'VD_CLIENTE'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
    object qryRelComVendasVD_ENTRADA: TFloatField
      FieldName = 'VD_ENTRADA'
      Origin = '"FAT_VENDAS"."ENTRADA"'
    end
    object qryRelComVendasVD_COD_PAGTO: TIntegerField
      FieldName = 'VD_COD_PAGTO'
      Origin = '"FAT_VENDAS"."FORMA_PGTO"'
    end
    object qryRelComVendasCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object qryRelComVendasCM_COD_VENDA: TIntegerField
      FieldName = 'CM_COD_VENDA'
      Origin = '"FAT_VENDAS"."CODIGO"'
      Required = True
    end
    object qryRelComVendasprd_cod_nome: TStringField
      FieldKind = fkCalculated
      FieldName = 'prd_cod_nome'
      Size = 90
      Calculated = True
    end
    object qryRelComVendasSEQUENCIA: TSmallintField
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_VENDAS_ITENS"."SEQUENCIA"'
      Required = True
    end
    object qryRelComVendasCOM_VISTA: TFloatField
      FieldName = 'COM_VISTA'
      Origin = '"CM_LOG"."COM_VISTA"'
    end
    object qryRelComVendasCOM_PRAZO: TFloatField
      FieldName = 'COM_PRAZO'
      Origin = '"CM_LOG"."COM_PRAZO"'
    end
    object qryRelComVendasttl_comissao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ttl_comissao'
      Calculated = True
    end
  end
  object dsRelatorios: TDataSource
    DataSet = qryRelComVendas
    Left = 20
    Top = 74
  end
  object qryRelComBaixas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsLink
    SQL.Strings = (
      'select (coalesce(bx.valor,0) - coalesce(bx.juros,0)) valor,'
      'bx.dt_baixa, bx.parcela, bx.codigo_cr, bx.codigo, '
      'coalesce(bx.valor,0) vlr_bruto, coalesce(bx.juros,0) vlr_juros'
      'from fin_baixas_receber bx'
      'where bx.pessoa_fj = :VD_COD_CLIENTE and bx.cnpj = :CNPJ'
      'and bx.codigo_vn = :CM_COD_VENDA')
    Left = 263
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VD_COD_CLIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CM_COD_VENDA'
        ParamType = ptUnknown
      end>
    object qryRelComBaixasVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object qryRelComBaixasDT_BAIXA: TDateTimeField
      FieldName = 'DT_BAIXA'
      Origin = '"FIN_BAIXAS_RECEBER"."DT_BAIXA"'
      Required = True
    end
    object qryRelComBaixasPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"FIN_BAIXAS_RECEBER"."PARCELA"'
      Required = True
      Size = 6
    end
    object qryRelComBaixasCODIGO_CR: TIntegerField
      FieldName = 'CODIGO_CR'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO_CR"'
      Required = True
    end
    object qryRelComBaixasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO"'
      Required = True
    end
    object qryRelComBaixasVLR_BRUTO: TFloatField
      FieldName = 'VLR_BRUTO'
    end
    object qryRelComBaixasVLR_JUROS: TFloatField
      FieldName = 'VLR_JUROS'
    end
  end
  object qryRelComissoes: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsLink
    SQL.Strings = (
      '/*parcelas das  comiss'#245'es*/'
      'select cm.cod_venda, cm.cod_vendedor, cm.codigo, '
      'case coalesce(cm.status,'#39'A'#39')'
      ' when '#39'Q'#39' then '#39'Quitada'#39
      ' when '#39'G'#39' then '#39'Gerada'#39
      ' when '#39'C'#39' then '#39'Cancelada'#39
      ' when '#39'N'#39' then '#39'Sem Comiss'#227'o'#39
      ' when '#39'A'#39' then '#39'Aberta'#39
      'end status,'
      
        '       cmp.cod_receber, cmp.codigo codigo_parc, cmp.pct_liberado' +
        ','
      '       cmp.pct_pago, cmp.vlr_total, cmp.vlr_receber,'
      
        '       ((cmp.pct_liberado * cmp.vlr_total)/100.00) vlr_liberado,' +
        ' cmp.pgt_atraso, cmp.PGT_FX_PCT_PAGTO'
      '       from cm_comissao cm'
      
        'inner join cm_comissao_parc cmp on (cmp.cnpj = cm.cnpj and cm.co' +
        'digo = cmp.cod_comissao)'
      'where cmp.cnpj = :CNPJ and cm.cod_venda = :cm_cod_venda')
    Left = 462
    Top = 96
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CM_COD_VENDA'
        ParamType = ptUnknown
      end>
    object qryRelComissoesCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Origin = '"CM_COMISSAO"."COD_VENDA"'
    end
    object qryRelComissoesCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = '"CM_COMISSAO"."COD_VENDEDOR"'
    end
    object qryRelComissoesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CM_COMISSAO"."CODIGO"'
      Required = True
    end
    object qryRelComissoesCOD_RECEBER: TIntegerField
      FieldName = 'COD_RECEBER'
      Origin = '"CM_COMISSAO_PARC"."COD_RECEBER"'
    end
    object qryRelComissoesCODIGO_PARC: TIntegerField
      FieldName = 'CODIGO_PARC'
      Origin = '"CM_COMISSAO_PARC"."CODIGO"'
      Required = True
    end
    object qryRelComissoesPCT_LIBERADO: TFloatField
      FieldName = 'PCT_LIBERADO'
      Origin = '"CM_COMISSAO_PARC"."PCT_LIBERADO"'
    end
    object qryRelComissoesPCT_PAGO: TFloatField
      FieldName = 'PCT_PAGO'
      Origin = '"CM_COMISSAO_PARC"."PCT_PAGO"'
    end
    object qryRelComissoesVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      Origin = '"CM_COMISSAO_PARC"."VLR_TOTAL"'
    end
    object qryRelComissoesVLR_RECEBER: TFloatField
      FieldName = 'VLR_RECEBER'
      Origin = '"CM_COMISSAO_PARC"."VLR_RECEBER"'
    end
    object qryRelComissoesVLR_LIBERADO: TFloatField
      FieldName = 'VLR_LIBERADO'
    end
    object qryRelComissoesPGT_ATRASO: TIntegerField
      FieldName = 'PGT_ATRASO'
      Origin = '"CM_COMISSAO_PARC"."PGT_ATRASO"'
    end
    object qryRelComissoesPGT_FX_PCT_PAGTO: TFloatField
      FieldName = 'PGT_FX_PCT_PAGTO'
      Origin = '"CM_COMISSAO_PARC"."PGT_FX_PCT_PAGTO"'
    end
    object qryRelComissoesSTATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      FixedChar = True
      Size = 12
    end
  end
  object qryRelParametros: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = qryRelParametrosCalcFields
    DataSource = dsLink
    SQL.Strings = (
      'select cl.*, prd.nome prd_nome from cm_log cl'
      
        'inner join est_produtos prd on (prd.cnpj = cl.cnpj and prd.codig' +
        'o = cl.cod_produto)'
      'where cl.cnpj = :CNPJ and cl.cod_venda =  :CM_COD_VENDA'
      'order by cl.sequencia')
    Left = 376
    Top = 16
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CM_COD_VENDA'
        ParamType = ptUnknown
      end>
    object qryRelParametrosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CM_LOG"."CODIGO"'
      Required = True
    end
    object qryRelParametrosCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CM_LOG"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object qryRelParametrosCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Origin = '"CM_LOG"."COD_VENDA"'
    end
    object qryRelParametrosSEQUENCIA: TSmallintField
      FieldName = 'SEQUENCIA'
      Origin = '"CM_LOG"."SEQUENCIA"'
    end
    object qryRelParametrosP_CODIGO: TIntegerField
      FieldName = 'P_CODIGO'
      Origin = '"CM_LOG"."P_CODIGO"'
    end
    object qryRelParametrosP_PERFIL: TIBStringField
      FieldName = 'P_PERFIL'
      Origin = '"CM_LOG"."P_PERFIL"'
      Size = 50
    end
    object qryRelParametrosP_BASE_CALC: TSmallintField
      FieldName = 'P_BASE_CALC'
      Origin = '"CM_LOG"."P_BASE_CALC"'
    end
    object qryRelParametrosP_FX_CODIGO: TIntegerField
      FieldName = 'P_FX_CODIGO'
      Origin = '"CM_LOG"."P_FX_CODIGO"'
    end
    object qryRelParametrosP_FX_VLR_INICIAL: TFloatField
      FieldName = 'P_FX_VLR_INICIAL'
      Origin = '"CM_LOG"."P_FX_VLR_INICIAL"'
    end
    object qryRelParametrosP_FX_VLR_FINAL: TFloatField
      FieldName = 'P_FX_VLR_FINAL'
      Origin = '"CM_LOG"."P_FX_VLR_FINAL"'
    end
    object qryRelParametrosP_FX_D_CODIGO: TIntegerField
      FieldName = 'P_FX_D_CODIGO'
      Origin = '"CM_LOG"."P_FX_D_CODIGO"'
    end
    object qryRelParametrosP_FX_D_PCT_INI: TFloatField
      FieldName = 'P_FX_D_PCT_INI'
      Origin = '"CM_LOG"."P_FX_D_PCT_INI"'
    end
    object qryRelParametrosP_FX_D_PCT_FIN: TFloatField
      FieldName = 'P_FX_D_PCT_FIN'
      Origin = '"CM_LOG"."P_FX_D_PCT_FIN"'
    end
    object qryRelParametrosP_FX_D_PCT_VISTA: TFloatField
      FieldName = 'P_FX_D_PCT_VISTA'
      Origin = '"CM_LOG"."P_FX_D_PCT_VISTA"'
    end
    object qryRelParametrosP_FX_D_PCT_PRAZO: TFloatField
      FieldName = 'P_FX_D_PCT_PRAZO'
      Origin = '"CM_LOG"."P_FX_D_PCT_PRAZO"'
    end
    object qryRelParametrosP_FX_D_PRD_CODIGO: TIntegerField
      FieldName = 'P_FX_D_PRD_CODIGO'
      Origin = '"CM_LOG"."P_FX_D_PRD_CODIGO"'
    end
    object qryRelParametrosP_FX_D_PRD_PCT_VISTA: TFloatField
      FieldName = 'P_FX_D_PRD_PCT_VISTA'
      Origin = '"CM_LOG"."P_FX_D_PRD_PCT_VISTA"'
    end
    object qryRelParametrosP_FX_D_PRD_PCT_PRAZO: TFloatField
      FieldName = 'P_FX_D_PRD_PCT_PRAZO'
      Origin = '"CM_LOG"."P_FX_D_PRD_PCT_PRAZO"'
    end
    object qryRelParametrosTTL_FATURAMENTO: TFloatField
      FieldName = 'TTL_FATURAMENTO'
      Origin = '"CM_LOG"."TTL_FATURAMENTO"'
    end
    object qryRelParametrosTTL_DESCTO_ITEM: TFloatField
      FieldName = 'TTL_DESCTO_ITEM'
      Origin = '"CM_LOG"."TTL_DESCTO_ITEM"'
    end
    object qryRelParametrosDT_INICIAL: TDateTimeField
      FieldName = 'DT_INICIAL'
      Origin = '"CM_LOG"."DT_INICIAL"'
    end
    object qryRelParametrosDT_FINAL: TDateTimeField
      FieldName = 'DT_FINAL'
      Origin = '"CM_LOG"."DT_FINAL"'
    end
    object qryRelParametrosCOM_VISTA: TFloatField
      FieldName = 'COM_VISTA'
      Origin = '"CM_LOG"."COM_VISTA"'
    end
    object qryRelParametrosCOM_PRAZO: TFloatField
      FieldName = 'COM_PRAZO'
      Origin = '"CM_LOG"."COM_PRAZO"'
    end
    object qryRelParametrosUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"CM_LOG"."USUARIO"'
    end
    object qryRelParametrosDT_GERACAO: TDateTimeField
      FieldName = 'DT_GERACAO'
      Origin = '"CM_LOG"."DT_GERACAO"'
    end
    object qryRelParametrosHORA: TTimeField
      FieldName = 'HORA'
      Origin = '"CM_LOG"."HORA"'
    end
    object qryRelParametrosprd_cod_nome: TStringField
      FieldKind = fkCalculated
      FieldName = 'prd_cod_nome'
      Size = 70
      Calculated = True
    end
    object qryRelParametrosCOD_PRODUTO: TIBStringField
      FieldName = 'COD_PRODUTO'
      Origin = '"CM_LOG"."COD_PRODUTO"'
      Size = 15
    end
    object qryRelParametrosPRD_NOME: TIBStringField
      FieldName = 'PRD_NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
  end
  object dsLink: TDataSource
    DataSet = qryRelComVendas
    Left = 96
    Top = 8
  end
  object qryRelComVendd: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select distinct vdd.cnpj, vdd.codigo vendedor, vdd.nome  from fa' +
        't_vendedor vdd'
      
        'inner join fat_vendas_itens vdi on (vdi.cnpj = vdd.cnpj and vdd.' +
        'codigo = vdi.vendedor)'
      
        'inner join cm_comissao cm on (cm.cnpj = vdi.cnpj and vdi.codigo ' +
        '= cm.cod_venda)'
      'where vdd.cnpj = :cnpj')
    Left = 20
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryRelComVenddCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDEDOR"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object qryRelComVenddVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDEDOR"."CODIGO"'
      Required = True
    end
    object qryRelComVenddNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
  end
  object qryRelComissaoSint: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      '/*parcelas das  comiss'#245'es*/'
      
        'select distinct cm.cod_venda, cm.cod_vendedor, vdd.nome,  cm.cod' +
        'igo,'
      'case coalesce(cm.status,'#39'A'#39')'
      ' when '#39'Q'#39' then '#39'Quitada'#39
      ' when '#39'G'#39' then '#39'Gerada'#39
      ' when '#39'C'#39' then '#39'Cancelada'#39
      ' when '#39'N'#39' then '#39'Sem Comiss'#227'o'#39
      ' when '#39'A'#39' then '#39'Aberta'#39
      'end status,'
      
        'cmp.cod_receber, cmp.codigo codigo_parc, coalesce(cmp.pct_libera' +
        'do,0) pct_liberado,'
      'cmp.pct_pago, cmp.vlr_total,'
      
        'coalesce(((cmp.pct_liberado * cmp.vlr_total)/100.00),0) vlr_libe' +
        'rado'
      'from cm_comissao cm'
      
        'inner join cm_comissao_parc cmp on (cmp.cnpj = cm.cnpj and cm.co' +
        'digo = cmp.cod_comissao)'
      
        'inner join fat_vendas vd on (vd.cnpj = cm.cnpj and vd.codigo = c' +
        'm.cod_venda)'
      
        'inner join fat_vendas_itens vdi on (vdi.cnpj = vd.cnpj and vdi.c' +
        'odigo = vd.codigo)'
      
        'inner join fat_vendedor vdd on (vdd.cnpj = vdd.cnpj and vdd.codi' +
        'go = vdi.vendedor)'
      'where vdi.cnpj = :cnpj')
    Left = 111
    Top = 74
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryRelComissaoSintCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Origin = '"CM_COMISSAO"."COD_VENDA"'
    end
    object qryRelComissaoSintCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = '"CM_COMISSAO"."COD_VENDEDOR"'
    end
    object qryRelComissaoSintCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CM_COMISSAO"."CODIGO"'
      Required = True
    end
    object qryRelComissaoSintCOD_RECEBER: TIntegerField
      FieldName = 'COD_RECEBER'
      Origin = '"CM_COMISSAO_PARC"."COD_RECEBER"'
    end
    object qryRelComissaoSintCODIGO_PARC: TIntegerField
      FieldName = 'CODIGO_PARC'
      Origin = '"CM_COMISSAO_PARC"."CODIGO"'
      Required = True
    end
    object qryRelComissaoSintPCT_PAGO: TFloatField
      FieldName = 'PCT_PAGO'
      Origin = '"CM_COMISSAO_PARC"."PCT_PAGO"'
    end
    object qryRelComissaoSintVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      Origin = '"CM_COMISSAO_PARC"."VLR_TOTAL"'
    end
    object qryRelComissaoSintNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object qryRelComissaoSintVLR_LIBERADO: TFloatField
      FieldName = 'VLR_LIBERADO'
    end
    object qryRelComissaoSintSTATUS: TIBStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 12
    end
    object qryRelComissaoSintPCT_LIBERADO: TFloatField
      FieldName = 'PCT_LIBERADO'
    end
  end
  object qryRelComCob: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = qryRelComCobCalcFields
    Active = True
    SQL.Strings = (
      'select * from PCD_REL_COM_COBRADOR(:cnpj,:data1,:data2)')
    Left = 480
    Top = 170
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
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
    object qryRelComCobCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PCD_REL_COM_COBRADOR"."CODIGO"'
    end
    object qryRelComCobCOD_COBRADOR: TIntegerField
      FieldName = 'COD_COBRADOR'
      Origin = '"PCD_REL_COM_COBRADOR"."COD_COBRADOR"'
    end
    object qryRelComCobCOBRADOR: TIBStringField
      FieldName = 'COBRADOR'
      Origin = '"PCD_REL_COM_COBRADOR"."COBRADOR"'
      Size = 50
    end
    object qryRelComCobCLIENTE: TIBStringField
      DisplayWidth = 75
      FieldName = 'CLIENTE'
      Origin = '"PCD_REL_COM_COBRADOR"."CLIENTE"'
      Size = 75
    end
    object qryRelComCobCOD_DOCTO: TIntegerField
      FieldName = 'COD_DOCTO'
      Origin = '"PCD_REL_COM_COBRADOR"."COD_DOCTO"'
    end
    object qryRelComCobVLR_NOMINAL: TIBBCDField
      FieldName = 'VLR_NOMINAL'
      Origin = '"PCD_REL_COM_COBRADOR"."VLR_NOMINAL"'
      Precision = 18
      Size = 4
    end
    object qryRelComCobVLR_BAIXA: TIBBCDField
      FieldName = 'VLR_BAIXA'
      Origin = '"PCD_REL_COM_COBRADOR"."VLR_BAIXA"'
      Precision = 18
      Size = 4
    end
    object qryRelComCobVLR_JUROS: TIBBCDField
      FieldName = 'VLR_JUROS'
      Origin = '"PCD_REL_COM_COBRADOR"."VLR_JUROS"'
      Precision = 18
      Size = 4
    end
    object qryRelComCobVLR_DESCONTOS: TIBBCDField
      FieldName = 'VLR_DESCONTOS'
      Origin = '"PCD_REL_COM_COBRADOR"."VLR_DESCONTOS"'
      Precision = 18
      Size = 4
    end
    object qryRelComCobDT_VENCTO: TDateField
      FieldName = 'DT_VENCTO'
      Origin = '"PCD_REL_COM_COBRADOR"."DT_VENCTO"'
    end
    object qryRelComCobDT_PAGTO: TDateField
      FieldName = 'DT_PAGTO'
      Origin = '"PCD_REL_COM_COBRADOR"."DT_PAGTO"'
    end
    object qryRelComCobATRASO: TIntegerField
      FieldName = 'ATRASO'
      Origin = '"PCD_REL_COM_COBRADOR"."ATRASO"'
    end
    object qryRelComCobpct_comissao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'pct_comissao'
      Calculated = True
    end
    object qryRelComCobcomissao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'comissao'
      Calculated = True
    end
  end
  object qryRelSugestaoCompra: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = qryRelComCobCalcFields
    Active = True
    SQL.Strings = (
      
        'select * from pcd_rel_sugestao_compra(:cnpj,:data1,:data2,:forne' +
        'cedor)')
    Left = 215
    Top = 66
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
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
      end
      item
        DataType = ftUnknown
        Name = 'fornecedor'
        ParamType = ptUnknown
      end>
    object qryRelSugestaoCompraCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"PCD_REL_SUGESTAO_COMPRA"."CODIGO"'
      Size = 15
    end
    object qryRelSugestaoCompraPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"PCD_REL_SUGESTAO_COMPRA"."PRODUTO"'
      Size = 80
    end
    object qryRelSugestaoCompraCOD_MARCA: TIntegerField
      FieldName = 'COD_MARCA'
      Origin = '"PCD_REL_SUGESTAO_COMPRA"."COD_MARCA"'
    end
    object qryRelSugestaoCompraMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"PCD_REL_SUGESTAO_COMPRA"."MARCA"'
      Size = 50
    end
    object qryRelSugestaoCompraCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
      Origin = '"PCD_REL_SUGESTAO_COMPRA"."COD_FORNECEDOR"'
    end
    object qryRelSugestaoCompraVMM: TFloatField
      FieldName = 'VMM'
      Origin = '"PCD_REL_SUGESTAO_COMPRA"."VMM"'
    end
    object qryRelSugestaoCompraFORNECEDOR: TIBStringField
      DisplayWidth = 50
      FieldName = 'FORNECEDOR'
      Origin = '"PCD_REL_SUGESTAO_COMPRA"."FORNECEDOR"'
      Size = 50
    end
    object qryRelSugestaoCompraCOD_GRUPO: TIntegerField
      FieldName = 'COD_GRUPO'
      Origin = '"PCD_REL_SUGESTAO_COMPRA"."COD_GRUPO"'
    end
    object qryRelSugestaoCompraGRUPO: TIBStringField
      FieldName = 'GRUPO'
      Origin = '"PCD_REL_SUGESTAO_COMPRA"."GRUPO"'
      Size = 50
    end
    object qryRelSugestaoCompraCOD_SUBGRUPO: TIntegerField
      FieldName = 'COD_SUBGRUPO'
      Origin = '"PCD_REL_SUGESTAO_COMPRA"."COD_SUBGRUPO"'
    end
    object qryRelSugestaoCompraSUBGRUPO: TIBStringField
      FieldName = 'SUBGRUPO'
      Origin = '"PCD_REL_SUGESTAO_COMPRA"."SUBGRUPO"'
      Size = 50
    end
    object qryRelSugestaoCompraUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PCD_REL_SUGESTAO_COMPRA"."UNIDADE"'
      Size = 4
    end
    object qryRelSugestaoCompraQTDE_PEDIDA: TFloatField
      FieldName = 'QTDE_PEDIDA'
      Origin = '"PCD_REL_SUGESTAO_COMPRA"."QTDE_PEDIDA"'
    end
    object qryRelSugestaoCompraQTDE_MAX: TFloatField
      FieldName = 'QTDE_MAX'
      Origin = '"PCD_REL_SUGESTAO_COMPRA"."QTDE_MAX"'
    end
    object qryRelSugestaoCompraQTDE_MIN: TFloatField
      FieldName = 'QTDE_MIN'
      Origin = '"PCD_REL_SUGESTAO_COMPRA"."QTDE_MIN"'
    end
    object qryRelSugestaoCompraQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = '"PCD_REL_SUGESTAO_COMPRA"."QTDE"'
    end
  end
  object qryRelCompras: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = qryRelComCobCalcFields
    DataSource = dsCopLink
    SQL.Strings = (
      'select * from PCD_LISTA_COMPRAS(:cnpj,:codigo,:load)')
    Left = 382
    Top = 74
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
        Name = 'load'
        ParamType = ptUnknown
      end>
    object qryRelComprasCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
      Origin = '"PCD_LISTA_COMPRAS"."COD_FORNECEDOR"'
    end
    object qryRelComprasFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = '"PCD_LISTA_COMPRAS"."FORNECEDOR"'
      Size = 80
    end
    object qryRelComprasTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"PCD_LISTA_COMPRAS"."TELEFONE"'
    end
    object qryRelComprasCUSTO: TFloatField
      FieldName = 'CUSTO'
      Origin = '"PCD_LISTA_COMPRAS"."CUSTO"'
    end
    object qryRelComprasDATA: TDateField
      FieldName = 'DATA'
      Origin = '"PCD_LISTA_COMPRAS"."DATA"'
    end
    object qryRelComprasQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = '"PCD_LISTA_COMPRAS"."QTDE"'
    end
    object qryRelComprasNDOCTO: TIBStringField
      FieldName = 'NDOCTO'
      Origin = '"PCD_LISTA_COMPRAS"."NDOCTO"'
    end
    object qryRelComprasTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"PCD_LISTA_COMPRAS"."TIPO_DOCTO"'
    end
    object qryRelComprasLOCAL_ESTOQUE: TIntegerField
      FieldName = 'LOCAL_ESTOQUE'
      Origin = '"PCD_LISTA_COMPRAS"."LOCAL_ESTOQUE"'
    end
  end
  object dsCopLink: TDataSource
    DataSet = qryRelSugestaoCompra
    Left = 296
    Top = 74
  end
  object qryPosicaoEstoque: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = qryRelComCobCalcFields
    SQL.Strings = (
      'select * from PCD_LST_POSICAO_EST(:cnpj,:data,:cpl) p')
    Left = 318
    Top = 376
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
        Name = 'cpl'
        ParamType = ptUnknown
      end>
    object qryPosicaoEstoquePRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"PCD_LST_POSICAO_EST"."PRODUTO"'
      Size = 15
    end
    object qryPosicaoEstoqueNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"PCD_LST_POSICAO_EST"."NOME_PRODUTO"'
      Size = 50
    end
    object qryPosicaoEstoqueCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
      Origin = '"PCD_LST_POSICAO_EST"."COD_FORNECEDOR"'
    end
    object qryPosicaoEstoqueFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = '"PCD_LST_POSICAO_EST"."FORNECEDOR"'
      Size = 50
    end
    object qryPosicaoEstoqueCOD_GRUPO: TIntegerField
      FieldName = 'COD_GRUPO'
      Origin = '"PCD_LST_POSICAO_EST"."COD_GRUPO"'
    end
    object qryPosicaoEstoqueGRUPO: TIBStringField
      FieldName = 'GRUPO'
      Origin = '"PCD_LST_POSICAO_EST"."GRUPO"'
      Size = 50
    end
    object qryPosicaoEstoqueCOD_SUBGRUPO: TIntegerField
      FieldName = 'COD_SUBGRUPO'
      Origin = '"PCD_LST_POSICAO_EST"."COD_SUBGRUPO"'
    end
    object qryPosicaoEstoqueSUBGRUPO: TIBStringField
      FieldName = 'SUBGRUPO'
      Origin = '"PCD_LST_POSICAO_EST"."SUBGRUPO"'
      Size = 50
    end
    object qryPosicaoEstoqueCOD_MARCA: TIntegerField
      FieldName = 'COD_MARCA'
      Origin = '"PCD_LST_POSICAO_EST"."COD_MARCA"'
    end
    object qryPosicaoEstoqueMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"PCD_LST_POSICAO_EST"."MARCA"'
      Size = 50
    end
    object qryPosicaoEstoqueDATA_MOV: TDateField
      FieldName = 'DATA_MOV'
      Origin = '"PCD_LST_POSICAO_EST"."DATA_MOV"'
    end
    object qryPosicaoEstoqueORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"PCD_LST_POSICAO_EST"."ORIGEM"'
      Size = 6
    end
    object qryPosicaoEstoqueQTDE_ANT: TIBBCDField
      FieldName = 'QTDE_ANT'
      Origin = '"PCD_LST_POSICAO_EST"."QTDE_ANT"'
      Precision = 18
      Size = 4
    end
    object qryPosicaoEstoqueQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = '"PCD_LST_POSICAO_EST"."QTDE"'
      Precision = 18
      Size = 4
    end
    object qryPosicaoEstoqueSALDO: TIBBCDField
      FieldName = 'SALDO'
      Origin = '"PCD_LST_POSICAO_EST"."SALDO"'
      Precision = 18
      Size = 4
    end
    object qryPosicaoEstoqueTIPO_MOV: TIBStringField
      FieldName = 'TIPO_MOV'
      Origin = '"PCD_LST_POSICAO_EST"."TIPO_MOV"'
      FixedChar = True
      Size = 1
    end
    object qryPosicaoEstoqueUND: TIBStringField
      FieldName = 'UND'
      Origin = '"PCD_LST_POSICAO_EST"."UND"'
      Size = 4
    end
    object qryPosicaoEstoquePRC_CUSTO_MED: TIBBCDField
      FieldName = 'PRC_CUSTO_MED'
      Origin = '"PCD_LST_POSICAO_EST"."PRC_CUSTO_MED"'
      Precision = 18
      Size = 4
    end
    object qryPosicaoEstoquePRC_VENDA: TIBBCDField
      FieldName = 'PRC_VENDA'
      Origin = '"PCD_LST_POSICAO_EST"."PRC_VENDA"'
      Precision = 18
      Size = 4
    end
    object qryPosicaoEstoqueCUSTO_AQUISICAO: TIBBCDField
      FieldName = 'CUSTO_AQUISICAO'
      Origin = '"PCD_LST_POSICAO_EST"."CUSTO_AQUISICAO"'
      Precision = 18
      Size = 4
    end
    object qryPosicaoEstoqueTTL_PRC_CUSTO_MED: TIBBCDField
      FieldName = 'TTL_PRC_CUSTO_MED'
      Origin = '"PCD_LST_POSICAO_EST"."TTL_PRC_CUSTO_MED"'
      Precision = 18
      Size = 4
    end
    object qryPosicaoEstoqueTTL_PRC_VENDA: TIBBCDField
      FieldName = 'TTL_PRC_VENDA'
      Origin = '"PCD_LST_POSICAO_EST"."TTL_PRC_VENDA"'
      Precision = 18
      Size = 4
    end
    object qryPosicaoEstoqueTTL_CUSTO_AQUISICAO: TIBBCDField
      FieldName = 'TTL_CUSTO_AQUISICAO'
      Origin = '"PCD_LST_POSICAO_EST"."TTL_CUSTO_AQUISICAO"'
      Precision = 18
      Size = 4
    end
    object qryPosicaoEstoqueDT_VENCTO_PRC_VENDA: TDateField
      FieldName = 'DT_VENCTO_PRC_VENDA'
      Origin = '"PCD_LST_POSICAO_EST"."DT_VENCTO_PRC_VENDA"'
    end
  end
  object SelPropriedade: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = SelPropriedadeAfterClose
    BeforeOpen = SelPropriedadeBeforeOpen
    SQL.Strings = (
      
        'select AREA_TOTAL, ATIVA, BAIRRO, CEP, CIDADE, CNPJ, COMPLEMENTO' +
        ', CONTRATO, CPF, ENDERECO, GARANTIA, IE, MODELO, NOME, NUMERO, O' +
        'BS, PESSOA_FJ, PROPRIEDADE, PROPRIETARIO, REGIAO, TECNICO, TIPO_' +
        'CONTRATO, UF, VENDEDOR'
      'from GLO_PROPRIEDADES'
      'WHERE CNPJ = :CNPJ AND PESSOA_FJ = :PESSOA_FJ '
      'order by NOME')
    Left = 127
    Top = 137
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
    object SelPropriedadeAREA_TOTAL: TIBStringField
      FieldName = 'AREA_TOTAL'
      Origin = '"GLO_PROPRIEDADES"."AREA_TOTAL"'
      Size = 30
    end
    object SelPropriedadeATIVA: TIBStringField
      FieldName = 'ATIVA'
      Origin = '"GLO_PROPRIEDADES"."ATIVA"'
      FixedChar = True
      Size = 1
    end
    object SelPropriedadeBAIRRO: TIntegerField
      FieldName = 'BAIRRO'
      Origin = '"GLO_PROPRIEDADES"."BAIRRO"'
    end
    object SelPropriedadeCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"GLO_PROPRIEDADES"."CEP"'
      Size = 8
    end
    object SelPropriedadeCIDADE: TIntegerField
      FieldName = 'CIDADE'
      Origin = '"GLO_PROPRIEDADES"."CIDADE"'
    end
    object SelPropriedadeCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_PROPRIEDADES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelPropriedadeCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_PROPRIEDADES"."COMPLEMENTO"'
      Size = 30
    end
    object SelPropriedadeCONTRATO: TIBStringField
      FieldName = 'CONTRATO'
      Origin = '"GLO_PROPRIEDADES"."CONTRATO"'
    end
    object SelPropriedadeCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"GLO_PROPRIEDADES"."CPF"'
    end
    object SelPropriedadeENDERECO: TIntegerField
      FieldName = 'ENDERECO'
      Origin = '"GLO_PROPRIEDADES"."ENDERECO"'
    end
    object SelPropriedadeGARANTIA: TDateTimeField
      FieldName = 'GARANTIA'
      Origin = '"GLO_PROPRIEDADES"."GARANTIA"'
    end
    object SelPropriedadeIE: TIBStringField
      FieldName = 'IE'
      Origin = '"GLO_PROPRIEDADES"."IE"'
      Size = 15
    end
    object SelPropriedadeMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = '"GLO_PROPRIEDADES"."MODELO"'
    end
    object SelPropriedadeNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_PROPRIEDADES"."NOME"'
      Size = 50
    end
    object SelPropriedadeNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"GLO_PROPRIEDADES"."NUMERO"'
      Size = 15
    end
    object SelPropriedadeOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"GLO_PROPRIEDADES"."OBS"'
      Size = 8
    end
    object SelPropriedadePESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_PROPRIEDADES"."PESSOA_FJ"'
      Required = True
    end
    object SelPropriedadePROPRIEDADE: TIntegerField
      FieldName = 'PROPRIEDADE'
      Origin = '"GLO_PROPRIEDADES"."PROPRIEDADE"'
      Required = True
    end
    object SelPropriedadePROPRIETARIO: TIBStringField
      FieldName = 'PROPRIETARIO'
      Origin = '"GLO_PROPRIEDADES"."PROPRIETARIO"'
      Size = 50
    end
    object SelPropriedadeREGIAO: TSmallintField
      FieldName = 'REGIAO'
      Origin = '"GLO_PROPRIEDADES"."REGIAO"'
    end
    object SelPropriedadeTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = '"GLO_PROPRIEDADES"."TECNICO"'
    end
    object SelPropriedadeTIPO_CONTRATO: TIntegerField
      FieldName = 'TIPO_CONTRATO'
      Origin = '"GLO_PROPRIEDADES"."TIPO_CONTRATO"'
    end
    object SelPropriedadeUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PROPRIEDADES"."UF"'
      FixedChar = True
      Size = 2
    end
    object SelPropriedadeVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"GLO_PROPRIEDADES"."VENDEDOR"'
    end
  end
  object qryRelHistoricoEquip: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select os.defeito_reclamado os_defeito_reclamado, os.tipo_atendi' +
        'mento os_tipo_atendimento,'
      
        'os.causa_chamado os_causa_chamado, os.condicao_final_equipamento' +
        ' os_condicao_final_equipamento,'
      
        'os.pessoa_fj os_pessoa_fj, os.nome os_nome, os.codigo os_codigo,' +
        ' os.data os_data, def.nome def_nome,'
      
        'mdl.codigo mdl_codigo, mdl.nome mdl_nome, pro.propriedade pro_pr' +
        'opriedade, pro.nome pro_nome, os.obs_fechamento,'
      'os.dt_cilindro, os.dt_revelador'
      'from OFC_ORDEM_SERVICO os'
      
        'left join ofc_defeito def on (def.codigo = os.defeito_reclamado ' +
        'and os.cnpj = def.cnpj)'
      
        'left join glo_propriedades pro on (pro.pessoa_fj = os.pessoa_fj ' +
        'and os.cnpj = def.cnpj and pro.propriedade = os.propriedade)'
      
        'left join glo_modelo_propriedade mdl on (mdl.codigo = pro.modelo' +
        ' and os.cnpj = def.cnpj)'
      
        'where (os.cnpj = :cnpj) and (os.pessoa_fj = :pessoa_fj) and (os.' +
        'propriedade = :propriedade)'
      'and (os.data between :dtIni and :dtFim)'
      'order by (os.data) descending')
    Left = 240
    Top = 137
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pessoa_fj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'propriedade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtFim'
        ParamType = ptUnknown
      end>
    object qryRelHistoricoEquipOS_CODIGO: TIntegerField
      FieldName = 'OS_CODIGO'
      Required = True
    end
    object qryRelHistoricoEquipOS_DATA: TDateTimeField
      FieldName = 'OS_DATA'
      Required = True
    end
    object qryRelHistoricoEquipOS_NOME: TIBStringField
      FieldName = 'OS_NOME'
      Size = 50
    end
    object qryRelHistoricoEquipOS_DEFEITO_RECLAMADO: TIntegerField
      FieldName = 'OS_DEFEITO_RECLAMADO'
    end
    object qryRelHistoricoEquipOS_TIPO_ATENDIMENTO: TIBStringField
      FieldName = 'OS_TIPO_ATENDIMENTO'
      Size = 50
    end
    object qryRelHistoricoEquipOS_CAUSA_CHAMADO: TIBStringField
      FieldName = 'OS_CAUSA_CHAMADO'
      Size = 200
    end
    object qryRelHistoricoEquipOS_CONDICAO_FINAL_EQUIPAMENTO: TIBStringField
      FieldName = 'OS_CONDICAO_FINAL_EQUIPAMENTO'
      Size = 50
    end
    object qryRelHistoricoEquipOS_PESSOA_FJ: TIntegerField
      FieldName = 'OS_PESSOA_FJ'
      Required = True
    end
    object qryRelHistoricoEquipDEF_NOME: TIBStringField
      FieldName = 'DEF_NOME'
      Size = 50
    end
    object qryRelHistoricoEquipMDL_CODIGO: TIntegerField
      FieldName = 'MDL_CODIGO'
    end
    object qryRelHistoricoEquipMDL_NOME: TIBStringField
      FieldName = 'MDL_NOME'
      Size = 50
    end
    object qryRelHistoricoEquipPRO_PROPRIEDADE: TIntegerField
      FieldName = 'PRO_PROPRIEDADE'
    end
    object qryRelHistoricoEquipPRO_NOME: TIBStringField
      FieldName = 'PRO_NOME'
      Size = 50
    end
    object qryRelHistoricoEquipOBS_FECHAMENTO: TBlobField
      FieldName = 'OBS_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."OBS_FECHAMENTO"'
      Size = 8
    end
    object qryRelHistoricoEquipDT_CILINDRO: TDateTimeField
      FieldName = 'DT_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."DT_CILINDRO"'
    end
    object qryRelHistoricoEquipDT_REVELADOR: TDateTimeField
      FieldName = 'DT_REVELADOR'
      Origin = '"OFC_ORDEM_SERVICO"."DT_REVELADOR"'
    end
  end
  object qryRelHistoricoEquip2: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select'
      'os.CONTADOR_TOTAL,'
      'os.cnpj,'
      'os.informacoes os_informacoes,'
      'ta.nome os_tipo_atendimento,'
      'mc.nome os_causa_chamado,'
      'os.obs_fechamento obs_fechamento,'
      'os.pessoa_fj os_pessoa_fj,'
      'os.nome os_nome,'
      'os.codigo os_codigo,'
      'os.data os_data,'
      'def.nome def_nome,'
      'pro.serie pro_serie,'
      'pro.codigo pro_propriedade,'
      'pro.nome pro_nome,'
      'mdl.nome mdl_nome,'
      'st.nome st_nome,'
      'os.data_fechamento os_dt_fechamento,'
      'os.dt_cilindro,'
      'os.dt_revelador,'
      'v.modelo veiculo,'
      'v.placa,'
      'os.assunto,'
      'psa.nome_razao'
      'from OFC_ORDEM_SERVICO os'
      
        'left join glo_pessoas_fj psa on (psa.cnpj = os.cnpj and psa.codi' +
        'go = os.pessoa_fj)'
      ''
      
        'left join glo_veiculos v on (v.cnpj = os.cnpj and v.pessoa_fj = ' +
        'os.pessoa_fj and v.codigo = os.veiculo)'
      
        'left join ofc_defeito def on (def.codigo = os.defeito_reclamado ' +
        'and os.cnpj = def.cnpj)'
      
        'left join ofc_tipo_atendimento ta on (ta.codigo = os.id_tipo_ate' +
        'ndimento and ta.cnpj = os.cnpj)'
      
        'left join ofc_status st on (st.codigo = os.cod_status and st.cnp' +
        'j = os.cnpj)'
      
        'left join ofc_motivo_chamado mc on (mc.codigo = os.id_motivo_cha' +
        'mado and mc.cnpj = os.cnpj)'
      
        'left join est_produtos pro on (pro.codigo = os.produto and os.cn' +
        'pj = pro.cnpj)'
      
        'left join glo_modelo_propriedade mdl on (mdl.codigo = pro.modelo' +
        '  and mdl.cnpj = pro.cnpj)'
      'where (os.cnpj = :cnpj) and (os.pessoa_fj = :pessoa_fj)')
    Left = 191
    Top = 313
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pessoa_fj'
        ParamType = ptUnknown
      end>
    object qryRelHistoricoEquip2OS_INFORMACOES: TBlobField
      FieldName = 'OS_INFORMACOES'
      Origin = '"OFC_ORDEM_SERVICO"."INFORMACOES"'
      Size = 8
    end
    object qryRelHistoricoEquip2OS_TIPO_ATENDIMENTO: TIBStringField
      FieldName = 'OS_TIPO_ATENDIMENTO'
      Origin = '"OFC_TIPO_ATENDIMENTO"."NOME"'
      Size = 50
    end
    object qryRelHistoricoEquip2OS_CAUSA_CHAMADO: TIBStringField
      FieldName = 'OS_CAUSA_CHAMADO'
      Origin = '"OFC_MOTIVO_CHAMADO"."NOME"'
      Size = 50
    end
    object qryRelHistoricoEquip2OBS_FECHAMENTO: TBlobField
      FieldName = 'OBS_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."OBS_FECHAMENTO"'
      Size = 8
    end
    object qryRelHistoricoEquip2OS_PESSOA_FJ: TIntegerField
      FieldName = 'OS_PESSOA_FJ'
      Origin = '"OFC_ORDEM_SERVICO"."PESSOA_FJ"'
      Required = True
    end
    object qryRelHistoricoEquip2OS_NOME: TIBStringField
      FieldName = 'OS_NOME'
      Origin = '"OFC_ORDEM_SERVICO"."NOME"'
      Size = 50
    end
    object qryRelHistoricoEquip2OS_CODIGO: TIntegerField
      FieldName = 'OS_CODIGO'
      Origin = '"OFC_ORDEM_SERVICO"."CODIGO"'
      Required = True
    end
    object qryRelHistoricoEquip2OS_DATA: TDateTimeField
      FieldName = 'OS_DATA'
      Origin = '"OFC_ORDEM_SERVICO"."DATA"'
      Required = True
    end
    object qryRelHistoricoEquip2DEF_NOME: TIBStringField
      FieldName = 'DEF_NOME'
      Origin = '"OFC_DEFEITO"."NOME"'
      Size = 50
    end
    object qryRelHistoricoEquip2PRO_PROPRIEDADE: TIBStringField
      FieldName = 'PRO_PROPRIEDADE'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Size = 15
    end
    object qryRelHistoricoEquip2PRO_NOME: TIBStringField
      FieldName = 'PRO_NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object qryRelHistoricoEquip2PRO_SERIE: TIBStringField
      FieldName = 'PRO_SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
    object qryRelHistoricoEquip2ST_NOME: TIBStringField
      FieldName = 'ST_NOME'
      Origin = '"OFC_STATUS"."NOME"'
      Size = 50
    end
    object qryRelHistoricoEquip2OS_DT_FECHAMENTO: TDateTimeField
      FieldName = 'OS_DT_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."DATA_FECHAMENTO"'
    end
    object qryRelHistoricoEquip2DT_CILINDRO: TDateTimeField
      FieldName = 'DT_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."DT_CILINDRO"'
    end
    object qryRelHistoricoEquip2DT_REVELADOR: TDateTimeField
      FieldName = 'DT_REVELADOR'
      Origin = '"OFC_ORDEM_SERVICO"."DT_REVELADOR"'
    end
    object qryRelHistoricoEquip2CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_ORDEM_SERVICO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object qryRelHistoricoEquip2CONTADOR_TOTAL: TFloatField
      FieldName = 'CONTADOR_TOTAL'
      Origin = '"OFC_ORDEM_SERVICO"."CONTADOR_TOTAL"'
    end
    object qryRelHistoricoEquip2MDL_NOME: TIBStringField
      FieldName = 'MDL_NOME'
      Origin = '"GLO_MODELO_PROPRIEDADE"."NOME"'
      Size = 50
    end
    object qryRelHistoricoEquip2VEICULO: TIBStringField
      FieldName = 'VEICULO'
      Origin = '"GLO_VEICULOS"."MODELO"'
      Size = 50
    end
    object qryRelHistoricoEquip2PLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"GLO_VEICULOS"."PLACA"'
      FixedChar = True
      Size = 8
    end
    object qryRelHistoricoEquip2ASSUNTO: TIBStringField
      FieldName = 'ASSUNTO'
      Origin = '"OFC_ORDEM_SERVICO"."ASSUNTO"'
      Size = 200
    end
    object qryRelHistoricoEquip2NOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
  end
  object qryRelEquipSint: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from PCD_REL_EQUIPAMENTOS(:CNPJ,'
      ':DATA1,'
      ':DATA2,'
      ':PR_REGIAO,'
      ':PR_CLIENTE,'
      ':PR_MARCA,'
      ':PR_MODELO ,'
      ':PR_EQUIPAMENTO,'
      ':PR_TPCONTRATO,'
      ':PR_CONTRATO,'
      ':PR_CIDADE,'
      ':PR_SERIE,'
      ':ATIVO,'
      ':descontinuado'
      ') pcd')
    Left = 400
    Top = 137
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PR_REGIAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PR_CLIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PR_MARCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PR_MODELO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PR_EQUIPAMENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PR_TPCONTRATO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PR_CONTRATO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PR_CIDADE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PR_SERIE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ATIVO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descontinuado'
        ParamType = ptUnknown
      end>
    object qryRelEquipSintCOD_PRODUTO: TIBStringField
      FieldName = 'COD_PRODUTO'
      Origin = '"PCD_REL_EQUIPAMENTOS"."COD_PRODUTO"'
      Size = 15
    end
    object qryRelEquipSintPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"PCD_REL_EQUIPAMENTOS"."PRODUTO"'
      Size = 90
    end
    object qryRelEquipSintSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"PCD_REL_EQUIPAMENTOS"."SERIE"'
      Size = 30
    end
    object qryRelEquipSintMRC_CODIGO: TIntegerField
      FieldName = 'MRC_CODIGO'
      Origin = '"PCD_REL_EQUIPAMENTOS"."MRC_CODIGO"'
    end
    object qryRelEquipSintMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"PCD_REL_EQUIPAMENTOS"."MARCA"'
      Size = 50
    end
    object qryRelEquipSintMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"PCD_REL_EQUIPAMENTOS"."MODELO"'
      Size = 50
    end
    object qryRelEquipSintMDL_CODIGO: TIntegerField
      FieldName = 'MDL_CODIGO'
      Origin = '"PCD_REL_EQUIPAMENTOS"."MDL_CODIGO"'
    end
    object qryRelEquipSintMEDIA_COPIAS: TIntegerField
      FieldName = 'MEDIA_COPIAS'
      Origin = '"PCD_REL_EQUIPAMENTOS"."MEDIA_COPIAS"'
    end
    object qryRelEquipSintCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = '"PCD_REL_EQUIPAMENTOS"."COD_CLIENTE"'
    end
    object qryRelEquipSintCHAMADOS_SUB: TIntegerField
      FieldName = 'CHAMADOS_SUB'
      Origin = '"PCD_REL_EQUIPAMENTOS"."CHAMADOS_SUB"'
    end
    object qryRelEquipSintCHAMADOS_TIT: TIntegerField
      FieldName = 'CHAMADOS_TIT'
      Origin = '"PCD_REL_EQUIPAMENTOS"."CHAMADOS_TIT"'
    end
    object qryRelEquipSintKM_RODADO: TFloatField
      FieldName = 'KM_RODADO'
      Origin = '"PCD_REL_EQUIPAMENTOS"."KM_RODADO"'
    end
    object qryRelEquipSintTEMPO_RESP_VENC: TIntegerField
      FieldName = 'TEMPO_RESP_VENC'
      Origin = '"PCD_REL_EQUIPAMENTOS"."TEMPO_RESP_VENC"'
    end
    object qryRelEquipSintTEMPO_RESP_MED: TFloatField
      FieldName = 'TEMPO_RESP_MED'
      Origin = '"PCD_REL_EQUIPAMENTOS"."TEMPO_RESP_MED"'
    end
    object qryRelEquipSintREG_CODIGO: TIntegerField
      FieldName = 'REG_CODIGO'
      Origin = '"PCD_REL_EQUIPAMENTOS"."REG_CODIGO"'
    end
    object qryRelEquipSintREG_NOME: TIBStringField
      FieldName = 'REG_NOME'
      Origin = '"PCD_REL_EQUIPAMENTOS"."REG_NOME"'
      Size = 50
    end
    object qryRelEquipSintTOTAL_CHAMADOS: TIntegerField
      FieldName = 'TOTAL_CHAMADOS'
      Origin = '"PCD_REL_EQUIPAMENTOS"."TOTAL_CHAMADOS"'
    end
    object qryRelEquipSintCOD_TIPO_CONTRATO: TIntegerField
      FieldName = 'COD_TIPO_CONTRATO'
      Origin = '"PCD_REL_EQUIPAMENTOS"."COD_TIPO_CONTRATO"'
    end
    object qryRelEquipSintBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"PCD_REL_EQUIPAMENTOS"."BAIRRO"'
      Size = 50
    end
    object qryRelEquipSintENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"PCD_REL_EQUIPAMENTOS"."ENDERECO"'
      Size = 100
    end
    object qryRelEquipSintCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"PCD_REL_EQUIPAMENTOS"."CIDADE"'
      Size = 60
    end
    object qryRelEquipSintFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"PCD_REL_EQUIPAMENTOS"."FONE"'
    end
    object qryRelEquipSintPSA_FANTASIA: TIBStringField
      FieldName = 'PSA_FANTASIA'
      Origin = '"PCD_REL_EQUIPAMENTOS"."PSA_FANTASIA"'
      Size = 80
    end
    object qryRelEquipSintTECNICO_ESPECIFICO: TIntegerField
      FieldName = 'TECNICO_ESPECIFICO'
      Origin = '"PCD_REL_EQUIPAMENTOS"."TECNICO_ESPECIFICO"'
    end
  end
  object SelKardex: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelKardexBeforeOpen
    SQL.Strings = (
      'select k.cnpj, K.hr_kardex,'
      '               k.produto, '
      '               pd.nome nome_produto,'
      '               k.codigo, '
      '               k.ndocto,'
      '               k.dt_movto,'
      '               k.origem, '
      '               k.tipo_es, '
      '               k.pessoa_fj, '
      '               p.nome_razao nome_pessoa,'
      '               k.qtdade_ant, '
      '               k.qtdade, '
      '               pd.qtdade_2 qtdade_atual,'
      '               k.prc_unit, '
      '               k.descontos,'
      '               k.dt_kardex,'
      '               k.CFOP,'
      '               k.cfop_estoque'
      'from est_kardex k'
      
        'inner join est_produtos pd on (pd.cnpj = k.cnpj and pd.codigo = ' +
        'k.produto)'
      'left join glo_pessoas_fj p on (p.codigo = k.pessoa_fj)'
      'where k.cnpj = :cnpj')
    Left = 16
    Top = 190
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelKardexCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_KARDEX"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelKardexPRODUTO: TIBStringField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'PRODUTO'
      Origin = '"EST_KARDEX"."PRODUTO"'
      Required = True
      Size = 15
    end
    object SelKardexNOME_PRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'NOME_PRODUTO'
      Origin = '"EST_PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object SelKardexCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd.Kardex'
      FieldName = 'CODIGO'
      Origin = '"EST_KARDEX"."CODIGO"'
      Required = True
    end
    object SelKardexNDOCTO: TIBStringField
      DisplayLabel = 'Nr. Doc.'
      FieldName = 'NDOCTO'
      Origin = '"EST_KARDEX"."NDOCTO"'
      Required = True
    end
    object SelKardexDT_MOVTO: TDateTimeField
      DisplayLabel = 'Dt. Mov.'
      FieldName = 'DT_MOVTO'
      Origin = '"EST_KARDEX"."DT_MOVTO"'
      Required = True
    end
    object SelKardexORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"EST_KARDEX"."ORIGEM"'
      Required = True
      Size = 6
    end
    object SelKardexTIPO_ES: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_ES'
      Origin = '"EST_KARDEX"."TIPO_ES"'
      FixedChar = True
      Size = 1
    end
    object SelKardexPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Pessoa'
      FieldName = 'PESSOA_FJ'
      Origin = '"EST_KARDEX"."PESSOA_FJ"'
    end
    object SelKardexNOME_PESSOA: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_PESSOA'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object SelKardexQTDADE_ANT: TFloatField
      DisplayLabel = 'Qtde Anterior'
      FieldName = 'QTDADE_ANT'
      Origin = '"EST_KARDEX"."QTDADE_ANT"'
      Required = True
      DisplayFormat = '###,##0.00'
    end
    object SelKardexQTDADE: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'QTDADE'
      Origin = '"EST_KARDEX"."QTDADE"'
      Required = True
      DisplayFormat = '###,##0.00'
    end
    object SelKardexQTDADE_ATUAL: TFloatField
      DisplayLabel = 'Qtde Atual'
      FieldName = 'QTDADE_ATUAL'
      Origin = '"EST_PRODUTOS"."QTDADE_2"'
      DisplayFormat = '###,##0.00'
    end
    object SelKardexPRC_UNIT: TFloatField
      DisplayLabel = 'Pre'#231'o Unit.'
      FieldName = 'PRC_UNIT'
      Origin = '"EST_KARDEX"."PRC_UNIT"'
      DisplayFormat = '###,##0.00'
    end
    object SelKardexDESCONTOS: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTOS'
      Origin = '"EST_KARDEX"."DESCONTOS"'
      DisplayFormat = '###,##0.00'
    end
    object SelKardexQTDADE_ENT: TFloatField
      DisplayLabel = 'Qtde Ent.'
      FieldKind = fkCalculated
      FieldName = 'QTDADE_ENT'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object SelKardexSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldKind = fkCalculated
      FieldName = 'SALDO'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object SelKardexQTDADE_SAI: TFloatField
      DisplayLabel = 'Qtde Sa'#237'da'
      FieldKind = fkCalculated
      FieldName = 'QTDADE_SAI'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object SelKardexVLR_TOTAL: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldKind = fkCalculated
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object SelKardexDT_KARDEX: TDateTimeField
      DisplayLabel = 'Dt. Kardex'
      FieldName = 'DT_KARDEX'
      Origin = '"EST_KARDEX"."DT_KARDEX"'
    end
    object SelKardexHR_KARDEX: TTimeField
      DisplayLabel = 'Hr. Kardex'
      FieldName = 'HR_KARDEX'
      Origin = '"EST_KARDEX"."HR_KARDEX"'
    end
    object SelKardexCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"EST_KARDEX"."CFOP"'
    end
    object SelKardexCFOP_ESTOQUE: TIBStringField
      DisplayLabel = 'Mov. Estoque'
      FieldName = 'CFOP_ESTOQUE'
      Origin = '"EST_KARDEX"."CFOP_ESTOQUE"'
      FixedChar = True
      Size = 1
    end
  end
  object SelPessoasFJ: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelPessoasFJBeforeOpen
    SQL.Strings = (
      'select psa.nome_razao, psa.codigo from glo_pessoas_fj psa'
      'where psa.cnpj = :cnpj '
      'and (psa.regiao = :codigo or coalesce(:codigo,0) = 0)'
      'ORDER BY NOME_RAZAO')
    Left = 80
    Top = 191
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object SelPessoasFJNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
    object SelPessoasFJCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
  end
  object SelProdutos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelProdutosBeforeOpen
    SQL.Strings = (
      'select prd.codigo, prd.nome, prd.serie'
      'from est_produtos prd'
      
        'left join glo_clientes_produtos cp on (prd.codigo = cp.cod_produ' +
        'to   and prd.cnpj = cp.cnpj)'
      
        'where cp.cnpj = :cnpj and (cp.cod_cliente = :codigo or :codigo =' +
        ' 0)'
      'and (prd.marca = coalesce(:marca,0) or coalesce(:marca,0) = 0)'
      
        'and (prd.modelo = coalesce(:modelo,0) or coalesce(:modelo,0) = 0' +
        ')'
      ''
      'ORDER BY prd.NOME')
    Left = 154
    Top = 191
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'marca'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'marca'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'modelo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'modelo'
        ParamType = ptUnknown
      end>
    object SelProdutosCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Required = True
      Size = 15
    end
    object SelProdutosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object SelProdutosSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
  end
  object qryRelComVendRec: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select * from pcd_lista_comissao(:cnpj,:dt_ini,:dt_fin,:vendedor' +
        ')')
    Left = 379
    Top = 190
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt_ini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt_fin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vendedor'
        ParamType = ptUnknown
      end>
    object qryRelComVendRecVD_TOTAL: TFloatField
      FieldName = 'VD_TOTAL'
      Origin = '"PCD_LISTA_COMISSAO"."VD_TOTAL"'
    end
    object qryRelComVendRecVD_COD_VENDEDOR: TIntegerField
      FieldName = 'VD_COD_VENDEDOR'
      Origin = '"PCD_LISTA_COMISSAO"."VD_COD_VENDEDOR"'
    end
    object qryRelComVendRecVD_DT_VD: TDateField
      FieldName = 'VD_DT_VD'
      Origin = '"PCD_LISTA_COMISSAO"."VD_DT_VD"'
    end
    object qryRelComVendRecVD_DT_CX: TDateField
      FieldName = 'VD_DT_CX'
      Origin = '"PCD_LISTA_COMISSAO"."VD_DT_CX"'
    end
    object qryRelComVendRecVD_CODIGO: TIntegerField
      FieldName = 'VD_CODIGO'
      Origin = '"PCD_LISTA_COMISSAO"."VD_CODIGO"'
    end
    object qryRelComVendRecVD_TIPO: TIBStringField
      FieldName = 'VD_TIPO'
      Origin = '"PCD_LISTA_COMISSAO"."VD_TIPO"'
      Size = 30
    end
    object qryRelComVendRecPCT_COMISSAO: TFloatField
      FieldName = 'PCT_COMISSAO'
      Origin = '"PCD_LISTA_COMISSAO"."PCT_COMISSAO"'
    end
    object qryRelComVendRecVLR_COMISSAO: TFloatField
      FieldName = 'VLR_COMISSAO'
      Origin = '"PCD_LISTA_COMISSAO"."VLR_COMISSAO"'
    end
    object qryRelComVendRecBX_CODIGO: TIntegerField
      FieldName = 'BX_CODIGO'
      Origin = '"PCD_LISTA_COMISSAO"."BX_CODIGO"'
    end
    object qryRelComVendRecBX_VALOR: TFloatField
      FieldName = 'BX_VALOR'
      Origin = '"PCD_LISTA_COMISSAO"."BX_VALOR"'
    end
    object qryRelComVendRecBX_JUROS: TFloatField
      FieldName = 'BX_JUROS'
      Origin = '"PCD_LISTA_COMISSAO"."BX_JUROS"'
    end
    object qryRelComVendRecBX_DESCONTOS: TFloatField
      FieldName = 'BX_DESCONTOS'
      Origin = '"PCD_LISTA_COMISSAO"."BX_DESCONTOS"'
    end
    object qryRelComVendRecBX_DATA: TDateField
      FieldName = 'BX_DATA'
      Origin = '"PCD_LISTA_COMISSAO"."BX_DATA"'
    end
  end
  object qryRelPropriedade: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryRelPropriedadeBeforeOpen
    Active = True
    SQL.Strings = (
      
        'select coalesce(lgd.nome,'#39#39')||'#39' '#39'||coalesce(p.numero,'#39#39') prop_en' +
        'dereco,'
      'psa.fone cli_fone, psa.fax cli_fax, psa.cpf_cgc cli_cpf_cgc,'
      'psa.fantasia cli_fantasia, lgd.nome prop_endereco,'
      
        'p.complemento prop_complemento, psa.codigo cli_codigo, psa.nome_' +
        'razao cli_nome_razao,'
      'p.propriedade prop_codigo, p.nome prop_nome,'
      
        'p.ie prop_ie, coalesce(cdd.nome,'#39#39')||'#39'-'#39'||coalesce(cdd.uf,'#39#39') pr' +
        'op_cidade,'
      'p.cpf prop_cnpj, p.cep prop_cep, reg.nome prop_regiao'
      'from glo_propriedades p'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj = p.cnpj and psa.codi' +
        'go = p.pessoa_fj)'
      
        'left join glo_cidades cdd on (p.cidade = cdd.codigo and p.cnpj =' +
        ' cdd.cnpj)'
      
        'left join glo_regioes reg on (reg.codigo = p.regiao and p.cnpj =' +
        ' reg.cnpj)'
      
        'left join glo_bairros br on (br.codigo = p.bairro and p.cnpj = b' +
        'r.cnpj)'
      
        'left join glo_logradouros lgd on (lgd.codigo = p.endereco and lg' +
        'd.cnpj = p.cnpj)'
      
        'left join fat_vendedor ved on (ved.codigo = p.vendedor and ved.c' +
        'npj = p.cnpj)'
      'where p.cnpj = :cnpj')
    Left = 24
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryRelPropriedadePROP_ENDERECO: TIBStringField
      FieldName = 'PROP_ENDERECO'
      Size = 66
    end
    object qryRelPropriedadeCLI_FONE: TIBStringField
      FieldName = 'CLI_FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object qryRelPropriedadeCLI_FAX: TIBStringField
      FieldName = 'CLI_FAX'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object qryRelPropriedadeCLI_CPF_CGC: TIBStringField
      FieldName = 'CLI_CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object qryRelPropriedadeCLI_FANTASIA: TIBStringField
      FieldName = 'CLI_FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object qryRelPropriedadePROP_ENDERECO1: TIBStringField
      FieldName = 'PROP_ENDERECO1'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      Size = 50
    end
    object qryRelPropriedadePROP_COMPLEMENTO: TIBStringField
      FieldName = 'PROP_COMPLEMENTO'
      Origin = '"GLO_PROPRIEDADES"."COMPLEMENTO"'
      Size = 30
    end
    object qryRelPropriedadeCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
    object qryRelPropriedadeCLI_NOME_RAZAO: TIBStringField
      FieldName = 'CLI_NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object qryRelPropriedadePROP_CODIGO: TIntegerField
      FieldName = 'PROP_CODIGO'
      Origin = '"GLO_PROPRIEDADES"."PROPRIEDADE"'
      Required = True
    end
    object qryRelPropriedadePROP_NOME: TIBStringField
      FieldName = 'PROP_NOME'
      Origin = '"GLO_PROPRIEDADES"."NOME"'
      Size = 50
    end
    object qryRelPropriedadePROP_IE: TIBStringField
      FieldName = 'PROP_IE'
      Origin = '"GLO_PROPRIEDADES"."IE"'
      Size = 15
    end
    object qryRelPropriedadePROP_CIDADE: TIBStringField
      FieldName = 'PROP_CIDADE'
      Size = 53
    end
    object qryRelPropriedadePROP_CNPJ: TIBStringField
      FieldName = 'PROP_CNPJ'
      Origin = '"GLO_PROPRIEDADES"."CPF"'
    end
    object qryRelPropriedadePROP_CEP: TIBStringField
      FieldName = 'PROP_CEP'
      Origin = '"GLO_PROPRIEDADES"."CEP"'
      Size = 8
    end
    object qryRelPropriedadePROP_REGIAO: TIBStringField
      FieldName = 'PROP_REGIAO'
      Origin = '"GLO_REGIOES"."NOME"'
      Size = 50
    end
  end
  object Kardex: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = KardexBeforeOpen
    OnCalcFields = KardexCalcFields
    Active = True
    SQL.Strings = (
      'select k.cnpj, K.hr_kardex,'
      '               k.produto, '
      '               pd.nome nome_produto,'
      '               k.codigo, '
      '               k.ndocto,'
      '               k.dt_movto,'
      '               k.origem, '
      '               k.tipo_es, '
      '               k.pessoa_fj, '
      '               p.nome_razao nome_pessoa,'
      '               k.qtdade_ant, '
      '               k.qtdade, '
      '               pd.qtdade_2 qtdade_atual,'
      '               pd.qtdade_1 qtdade_fiscal,'
      '               k.prc_unit, '
      '               k.descontos,'
      '               k.dt_kardex'
      'from est_kardex k'
      
        'inner join est_produtos pd on (pd.cnpj = k.cnpj and pd.codigo = ' +
        'k.produto)'
      'left join glo_pessoas_fj p on (p.codigo = k.pessoa_fj)'
      'where k.cnpj = :cnpj and produto = :produto '
      '')
    Left = 112
    Top = 246
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRODUTO'
        ParamType = ptUnknown
      end>
    object KardexCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_KARDEX"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object KardexPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"EST_KARDEX"."PRODUTO"'
      Required = True
      Size = 15
    end
    object KardexNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"EST_PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object KardexCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_KARDEX"."CODIGO"'
      Required = True
    end
    object KardexNDOCTO: TIBStringField
      FieldName = 'NDOCTO'
      Origin = '"EST_KARDEX"."NDOCTO"'
      Required = True
    end
    object KardexDT_MOVTO: TDateTimeField
      FieldName = 'DT_MOVTO'
      Origin = '"EST_KARDEX"."DT_MOVTO"'
      Required = True
    end
    object KardexORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"EST_KARDEX"."ORIGEM"'
      Required = True
      Size = 6
    end
    object KardexTIPO_ES: TIBStringField
      FieldName = 'TIPO_ES'
      Origin = '"EST_KARDEX"."TIPO_ES"'
      FixedChar = True
      Size = 1
    end
    object KardexPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"EST_KARDEX"."PESSOA_FJ"'
    end
    object KardexNOME_PESSOA: TIBStringField
      FieldName = 'NOME_PESSOA'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object KardexQTDADE_ANT: TFloatField
      FieldName = 'QTDADE_ANT'
      Origin = '"EST_KARDEX"."QTDADE_ANT"'
      Required = True
      DisplayFormat = '###,##0.00'
    end
    object KardexQTDADE: TFloatField
      FieldName = 'QTDADE'
      Origin = '"EST_KARDEX"."QTDADE"'
      Required = True
      DisplayFormat = '###,##0.00'
    end
    object KardexQTDADE_ATUAL: TFloatField
      FieldName = 'QTDADE_ATUAL'
      Origin = '"EST_PRODUTOS"."QTDADE_2"'
      DisplayFormat = '###,##0.00'
    end
    object KardexPRC_UNIT: TFloatField
      FieldName = 'PRC_UNIT'
      Origin = '"EST_KARDEX"."PRC_UNIT"'
      DisplayFormat = '###,##0.00'
    end
    object KardexDESCONTOS: TFloatField
      FieldName = 'DESCONTOS'
      Origin = '"EST_KARDEX"."DESCONTOS"'
      DisplayFormat = '###,##0.00'
    end
    object KardexQTDADE_ENT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'QTDADE_ENT'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object KardexSALDO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SALDO'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object KardexQTDADE_SAI: TFloatField
      FieldKind = fkCalculated
      FieldName = 'QTDADE_SAI'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object KardexVLR_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object KardexDT_KARDEX: TDateTimeField
      FieldName = 'DT_KARDEX'
      Origin = '"EST_KARDEX"."DT_KARDEX"'
    end
    object KardexHR_KARDEX: TTimeField
      FieldName = 'HR_KARDEX'
      Origin = '"EST_KARDEX"."HR_KARDEX"'
    end
    object KardexQTDADE_FISCAL: TFloatField
      FieldName = 'QTDADE_FISCAL'
      Origin = '"EST_PRODUTOS"."QTDADE_1"'
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
    OnBeforeNewPage = ImpressoraBeforeNewPage
    Left = 230
    Top = 197
  end
  object qEndFornecedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qEndFornecedorBeforeOpen
    SQL.Strings = (
      'select coalesce(l.nome, '#39' '#39') ||'#39', '#39'|| coalesce(p.numero,'#39'S/N'#39'),'
      
        '                p.complemento, b.nome bairro, c.nome cidade, p.u' +
        'f'
      'from glo_pessoas_fj p'
      
        'left join glo_logradouros l on (l.codigo = p.endereco and l.cnpj' +
        ' = p.cnpj)'
      
        'left join glo_bairros b on (b.codigo = p.bairro and b.cnpj = p.c' +
        'npj)'
      
        'left join glo_cidades c on (c.codigo = p.cidade and c.cnpj = p.c' +
        'npj)'
      'where p.codigo = :codigo and p.cnpj = :cnpj')
    Left = 196
    Top = 248
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
      end>
    object qEndFornecedorCONCATENATION: TIBStringField
      FieldName = 'CONCATENATION'
      Size = 67
    end
    object qEndFornecedorCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_PESSOAS_FJ"."COMPLEMENTO"'
      Size = 30
    end
    object qEndFornecedorBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"GLO_BAIRROS"."NOME"'
      Size = 50
    end
    object qEndFornecedorCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object qEndFornecedorUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PESSOAS_FJ"."UF"'
      FixedChar = True
      Size = 2
    end
  end
  object qryRelVendasGrupo: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = qryRelVendasGrupoCalcFields
    SelectSQL.Strings = (
      
        'select * from pcd_rel_vd_grupo(:cnpj,:vendedor,:cliente,:fechada' +
        ',:dataini,:datafim,:tipo_custo) pcd'
      'order by nome')
    Active = True
    Left = 306
    Top = 248
    object qryRelVendasGrupo_Lucro: TFloatField
      FieldKind = fkCalculated
      FieldName = '_Lucro'
      Calculated = True
    end
    object qryRelVendasGrupo_Margen: TFloatField
      FieldKind = fkCalculated
      FieldName = '_Margen'
      Calculated = True
    end
    object qryRelVendasGrupoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PCD_REL_VD_GRUPO"."CODIGO"'
    end
    object qryRelVendasGrupoNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"PCD_REL_VD_GRUPO"."NOME_PRODUTO"'
      Size = 80
    end
    object qryRelVendasGrupoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"PCD_REL_VD_GRUPO"."DATA"'
    end
    object qryRelVendasGrupoDATA_CAIXA: TDateField
      FieldName = 'DATA_CAIXA'
      Origin = '"PCD_REL_VD_GRUPO"."DATA_CAIXA"'
    end
    object qryRelVendasGrupoNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"PCD_REL_VD_GRUPO"."NOME_RAZAO"'
      Size = 50
    end
    object qryRelVendasGrupoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"PCD_REL_VD_GRUPO"."NOME"'
      Size = 50
    end
    object qryRelVendasGrupoQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = '"PCD_REL_VD_GRUPO"."QTDE"'
      Precision = 18
      Size = 4
    end
    object qryRelVendasGrupoVLR_VENDA: TIBBCDField
      FieldName = 'VLR_VENDA'
      Origin = '"PCD_REL_VD_GRUPO"."VLR_VENDA"'
      Precision = 18
      Size = 4
    end
    object qryRelVendasGrupoVLR_DESCONTO: TIBBCDField
      FieldName = 'VLR_DESCONTO'
      Origin = '"PCD_REL_VD_GRUPO"."VLR_DESCONTO"'
      Precision = 18
      Size = 4
    end
    object qryRelVendasGrupoVLR_BRUTO: TIBBCDField
      FieldName = 'VLR_BRUTO'
      Origin = '"PCD_REL_VD_GRUPO"."VLR_BRUTO"'
      Precision = 18
      Size = 4
    end
    object qryRelVendasGrupoVLR_CUSTO: TIBBCDField
      FieldName = 'VLR_CUSTO'
      Origin = '"PCD_REL_VD_GRUPO"."VLR_CUSTO"'
      Precision = 18
      Size = 4
    end
  end
  object QryRecibo: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = QryReciboCalcFields
    Active = True
    SQL.Strings = (
      'select * from pcd_recibo_rec(:cnpj,:codigo,:reimpressao)')
    Left = 24
    Top = 304
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
        Name = 'reimpressao'
        ParamType = ptUnknown
      end>
    object QryRecibo_ValorExtenso: TStringField
      FieldKind = fkCalculated
      FieldName = '_ValorExtenso'
      Size = 300
      Calculated = True
    end
    object QryReciboRECIBO: TIntegerField
      FieldName = 'RECIBO'
      Origin = '"PCD_RECIBO_REC"."RECIBO"'
    end
    object QryReciboREC_DT_LANCTO: TDateField
      FieldName = 'REC_DT_LANCTO'
      Origin = '"PCD_RECIBO_REC"."REC_DT_LANCTO"'
    end
    object QryReciboEP_NOME: TIBStringField
      FieldName = 'EP_NOME'
      Origin = '"PCD_RECIBO_REC"."EP_NOME"'
      Size = 50
    end
    object QryReciboEP_ENDERECO: TIBStringField
      FieldName = 'EP_ENDERECO'
      Origin = '"PCD_RECIBO_REC"."EP_ENDERECO"'
      Size = 100
    end
    object QryReciboEP_BAIRRO: TIBStringField
      FieldName = 'EP_BAIRRO'
      Origin = '"PCD_RECIBO_REC"."EP_BAIRRO"'
      Size = 50
    end
    object QryReciboEP_CIDADE: TIBStringField
      FieldName = 'EP_CIDADE'
      Origin = '"PCD_RECIBO_REC"."EP_CIDADE"'
      Size = 50
    end
    object QryReciboEP_FONE: TIBStringField
      FieldName = 'EP_FONE'
      Origin = '"PCD_RECIBO_REC"."EP_FONE"'
    end
    object QryReciboEP_CNPJ: TIBStringField
      FieldName = 'EP_CNPJ'
      Origin = '"PCD_RECIBO_REC"."EP_CNPJ"'
    end
    object QryReciboCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = '"PCD_RECIBO_REC"."CLI_CODIGO"'
    end
    object QryReciboCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"PCD_RECIBO_REC"."CLI_NOME"'
      Size = 80
    end
    object QryReciboCLI_CPF_CNPJ: TIBStringField
      FieldName = 'CLI_CPF_CNPJ'
      Origin = '"PCD_RECIBO_REC"."CLI_CPF_CNPJ"'
    end
    object QryReciboVLR_BAIXA: TIBBCDField
      FieldName = 'VLR_BAIXA'
      Origin = '"PCD_RECIBO_REC"."VLR_BAIXA"'
      Precision = 18
      Size = 4
    end
    object QryReciboREC_CODIGO: TIntegerField
      FieldName = 'REC_CODIGO'
      Origin = '"PCD_RECIBO_REC"."REC_CODIGO"'
    end
    object QryReciboREC_PARCELA: TIBStringField
      FieldName = 'REC_PARCELA'
      Origin = '"PCD_RECIBO_REC"."REC_PARCELA"'
      Size = 6
    end
    object QryReciboREC_SALDO: TIBBCDField
      FieldName = 'REC_SALDO'
      Origin = '"PCD_RECIBO_REC"."REC_SALDO"'
      Precision = 18
      Size = 4
    end
    object QryReciboREC_JUROS: TIBBCDField
      FieldName = 'REC_JUROS'
      Origin = '"PCD_RECIBO_REC"."REC_JUROS"'
      Precision = 18
      Size = 4
    end
    object QryReciboREC_MULTA: TIBBCDField
      FieldName = 'REC_MULTA'
      Origin = '"PCD_RECIBO_REC"."REC_MULTA"'
      Precision = 18
      Size = 4
    end
    object QryReciboREC_HISTORICO: TIBStringField
      FieldName = 'REC_HISTORICO'
      Origin = '"PCD_RECIBO_REC"."REC_HISTORICO"'
      Size = 100
    end
    object QryReciboREC_VENDA: TIntegerField
      FieldName = 'REC_VENDA'
      Origin = '"PCD_RECIBO_REC"."REC_VENDA"'
    end
    object QryReciboTIPO_BAIXA: TIBStringField
      FieldName = 'TIPO_BAIXA'
      Origin = '"PCD_RECIBO_REC"."TIPO_BAIXA"'
      Size = 50
    end
    object QryReciboEP_FAX: TIBStringField
      FieldName = 'EP_FAX'
      Origin = '"PCD_RECIBO_REC"."EP_FAX"'
    end
    object QryReciboREC_VALOR_NOMINAL: TIBBCDField
      FieldName = 'REC_VALOR_NOMINAL'
      Origin = '"PCD_RECIBO_REC"."REC_VALOR_NOMINAL"'
      Precision = 18
      Size = 4
    end
    object QryReciboREC_BX_PARCIAL: TIBBCDField
      FieldName = 'REC_BX_PARCIAL'
      Origin = '"PCD_RECIBO_REC"."REC_BX_PARCIAL"'
      Precision = 18
      Size = 4
    end
    object QryReciboREC_SALDO_NOMINAL: TIBBCDField
      FieldName = 'REC_SALDO_NOMINAL'
      Origin = '"PCD_RECIBO_REC"."REC_SALDO_NOMINAL"'
      Precision = 18
      Size = 4
    end
    object QryReciboREC_DESCONTOS: TIBBCDField
      FieldName = 'REC_DESCONTOS'
      Origin = '"PCD_RECIBO_REC"."REC_DESCONTOS"'
      Precision = 18
      Size = 4
    end
    object QryReciboREC_VLR_BAIXA: TIBBCDField
      FieldName = 'REC_VLR_BAIXA'
      Origin = '"PCD_RECIBO_REC"."REC_VLR_BAIXA"'
      Precision = 18
      Size = 4
    end
    object QryReciboIMPRESSAO: TIBStringField
      FieldName = 'IMPRESSAO'
      Origin = '"PCD_RECIBO_REC"."IMPRESSAO"'
      Size = 50
    end
    object QryReciboBX_HISTORICO: TIBStringField
      FieldName = 'BX_HISTORICO'
      Origin = '"PCD_RECIBO_REC"."BX_HISTORICO"'
      Size = 100
    end
    object QryReciboREC_DOCTO: TIBStringField
      FieldName = 'REC_DOCTO'
      Origin = '"PCD_RECIBO_REC"."REC_DOCTO"'
    end
    object QryReciboNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"PCD_RECIBO_REC"."NUM_NF"'
    end
  end
  object dsRecibo: TDataSource
    DataSet = QryRecibo
    Left = 80
    Top = 303
  end
  object qryRelHistEquipItens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsLinkHist
    SQL.Strings = (
      
        'select prd.codigo cod_produto,  prd.nome nome_produto, osi.quant' +
        'idade, mrc.nome marca'
      'from ofc_ordem_servico_servico osi'
      
        'left join est_produtos prd on (prd.cnpj = osi.cnpj and osi.produ' +
        'to = prd.codigo)'
      
        'left join est_marcas mrc on (prd.cnpj = mrc.cnpj and mrc.codigo ' +
        '= prd.marca)'
      'where osi.cnpj = :cnpj and osi.codigo = :os_codigo')
    Left = 376
    Top = 312
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
        Size = 15
      end
      item
        DataType = ftInteger
        Name = 'OS_CODIGO'
        ParamType = ptUnknown
        Size = 4
      end>
    object qryRelHistEquipItensCOD_PRODUTO: TIBStringField
      FieldName = 'COD_PRODUTO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Size = 15
    end
    object qryRelHistEquipItensNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object qryRelHistEquipItensQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."QUANTIDADE"'
    end
    object qryRelHistEquipItensMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"EST_MARCAS"."NOME"'
      Size = 50
    end
  end
  object dsLinkHist: TDataSource
    DataSet = qryRelHistoricoEquip2
    Left = 288
    Top = 311
  end
  object QryRelContratos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Active = True
    SQL.Strings = (
      
        'select ct.codigo, ct.num_contrato, tpc.nome, psa.codigo psa_codi' +
        'go,  psa.nome_razao,'
      'ct.dt_inicio, ct.dt_fim, ct.ativo,'
      
        'cti.codigo cod_item, cti.cod_produto, coalesce(cti.cod_produto,'#39 +
        #39')||'#39'-'#39'||coalesce(prd.nome,'#39#39') produto,'
      
        'prd.serie, prd.ativo item_ativo, cti.data, cti.dt_adicao, cti.dt' +
        '_retirada'
      'from ofc_contratos ct'
      
        'inner join glo_pessoas_fj psa on (psa.codigo = ct.cod_cliente an' +
        'd psa.cnpj = ct.cnpj)'
      
        'left join glo_tipo_contrato tpc on (tpc.cnpj = ct.cnpj and tpc.c' +
        'odigo = ct.cod_contrato)'
      
        'left join ofc_contratos_itens cti on (ct.cnpj = cti.cnpj and ct.' +
        'codigo = cti.contrato)'
      
        'inner join est_produtos prd on (cti.cnpj = prd.cnpj and cti.cod_' +
        'produto = prd.codigo)'
      'where'
      'ct.cnpj = :cnpj and'
      '('
      
        '  ( /*esse negocio '#233' um rolo, a id'#233'ia '#233' saber o que estava ativo' +
        ' dentrodo perio espeficado,'
      
        '   logo a dt. de inicio do contrato tem de ser inferior a dt. fi' +
        'nal estipulada no filtro e da dt. fim'
      
        '   dever'#225' estar contida entre os periodos espeficiados ou estar ' +
        'como nulla*/'
      '    ((cast(ct.dt_inicio as date) <= :data2)'
      '    and'
      '    (cast(ct.dt_inicio as date) >= :data1))'
      '  )'
      '  and'
      '  ('
      '   ('
      '     ((cast(ct.dt_fim as date) >= :data1)'
      '     and'
      '     (cast(ct.dt_fim as date) <= :data2))'
      '   )'
      '   or'
      '   (ct.dt_fim is null)'
      '  )'
      ')'
      'and'
      '('
      ' ('
      '   (cti.dt_adicao <= :DtIten2)'
      '   and'
      '   (cti.dt_adicao >= :DtIten1)'
      ' )'
      ' and'
      ' ('
      '  ('
      '    (cti.dt_retirada >= :DtIten1)'
      '    and'
      '    (cti.dt_retirada <= :DtIten2)'
      '  )'
      '  or'
      '  (cti.dt_retirada is null)'
      ' )'
      ')'
      'and ((psa.codigo = :psa_codigo) or (:psa_codigo = 0))'
      'and ((psa.cidade = :psa_cidade) or (:psa_cidade = 0))'
      'and ((psa.regiao = :psa_regiao) or (:psa_regiao = 0))'
      
        'and (cti.cod_produto = cast(:pr_equipamento as varchar(15)) or c' +
        'ast(:pr_equipamento as varchar(15)) = '#39#39')'
      'and ((ct.cod_contrato = :cod_contrato) or (:cod_contrato = 0))'
      
        'and ((ct.ativo = cast(:ativo as char(1))) or (cast(:ativo as cha' +
        'r(1)) = '#39#39'))'
      
        'and ((cti.ativo = cast(:iten_ativo as char(1))) or (cast(:iten_a' +
        'tivo as char(1)) = '#39#39'))'
      'order by ct.codigo, cti.codigo')
    Left = 480
    Top = 218
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
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
      end
      item
        DataType = ftUnknown
        Name = 'DtIten2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DtIten1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DtIten1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DtIten2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'psa_codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'psa_codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'psa_cidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'psa_cidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'psa_regiao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'psa_regiao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pr_equipamento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pr_equipamento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_contrato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iten_ativo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iten_ativo'
        ParamType = ptUnknown
      end>
    object QryRelContratosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_CONTRATOS"."CODIGO"'
      Required = True
    end
    object QryRelContratosNUM_CONTRATO: TIBStringField
      FieldName = 'NUM_CONTRATO'
      Origin = '"OFC_CONTRATOS"."NUM_CONTRATO"'
      Size = 30
    end
    object QryRelContratosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_TIPO_CONTRATO"."NOME"'
      Size = 50
    end
    object QryRelContratosPSA_CODIGO: TIntegerField
      FieldName = 'PSA_CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
    object QryRelContratosNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object QryRelContratosDT_INICIO: TDateTimeField
      FieldName = 'DT_INICIO'
      Origin = '"OFC_CONTRATOS"."DT_INICIO"'
    end
    object QryRelContratosDT_FIM: TDateTimeField
      FieldName = 'DT_FIM'
      Origin = '"OFC_CONTRATOS"."DT_FIM"'
    end
    object QryRelContratosATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"OFC_CONTRATOS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object QryRelContratosCOD_ITEM: TIntegerField
      FieldName = 'COD_ITEM'
      Origin = '"OFC_CONTRATOS_ITENS"."CODIGO"'
    end
    object QryRelContratosCOD_PRODUTO: TIBStringField
      FieldName = 'COD_PRODUTO'
      Origin = '"OFC_CONTRATOS_ITENS"."COD_PRODUTO"'
      Size = 15
    end
    object QryRelContratosSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
    object QryRelContratosITEM_ATIVO: TIBStringField
      FieldName = 'ITEM_ATIVO'
      Origin = '"EST_PRODUTOS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object QryRelContratosDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"OFC_CONTRATOS_ITENS"."DATA"'
    end
    object QryRelContratosDT_ADICAO: TDateTimeField
      FieldName = 'DT_ADICAO'
      Origin = '"OFC_CONTRATOS_ITENS"."DT_ADICAO"'
    end
    object QryRelContratosDT_RETIRADA: TDateField
      FieldName = 'DT_RETIRADA'
      Origin = '"OFC_CONTRATOS_ITENS"."DT_RETIRADA"'
    end
    object QryRelContratosPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 66
    end
  end
  object QryRelPosicaoTitulos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Active = True
    SQL.Strings = (
      
        'select * from pcd_rel_titulos_pendentes(:cnpj, :e_pessoa_fj, :e_' +
        'dt_vencto_1, :e_dt_vencto_2,:e_dt_emissao_1, :e_dt_emissao_2,:e_' +
        'juros, :e_desconto, :dtbase)'
      'order by cod_pessoa, tipo, dt_vencimento,codigo')
    Left = 38
    Top = 370
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'e_pessoa_fj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'e_dt_vencto_1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'e_dt_vencto_2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'e_dt_emissao_1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'e_dt_emissao_2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'e_juros'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'e_desconto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtbase'
        ParamType = ptUnknown
      end>
    object QryRelPosicaoTitulosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."CODIGO"'
    end
    object QryRelPosicaoTitulosTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."TIPO"'
    end
    object QryRelPosicaoTitulosCOD_PESSOA: TIntegerField
      FieldName = 'COD_PESSOA'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."COD_PESSOA"'
    end
    object QryRelPosicaoTitulosDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."DOCTO"'
    end
    object QryRelPosicaoTitulosTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."TIPO_DOCTO"'
      Size = 3
    end
    object QryRelPosicaoTitulosDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."DT_EMISSAO"'
    end
    object QryRelPosicaoTitulosDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."DT_VENCIMENTO"'
    end
    object QryRelPosicaoTitulosVALOR_NOMINAL: TIBBCDField
      FieldName = 'VALOR_NOMINAL'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."VALOR_NOMINAL"'
      Precision = 18
      Size = 4
    end
    object QryRelPosicaoTitulosAMORTIZACAO: TIBBCDField
      FieldName = 'AMORTIZACAO'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."AMORTIZACAO"'
      Precision = 18
      Size = 4
    end
    object QryRelPosicaoTitulosSALDO_NOMINAL: TIBBCDField
      FieldName = 'SALDO_NOMINAL'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."SALDO_NOMINAL"'
      Precision = 18
      Size = 4
    end
    object QryRelPosicaoTitulosQTDE_INDEXADOR: TIBBCDField
      FieldName = 'QTDE_INDEXADOR'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."QTDE_INDEXADOR"'
      Precision = 18
      Size = 4
    end
    object QryRelPosicaoTitulosVARIACAO_INDEXADOR: TIBBCDField
      FieldName = 'VARIACAO_INDEXADOR'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."VARIACAO_INDEXADOR"'
      Precision = 18
      Size = 4
    end
    object QryRelPosicaoTitulosJUROS: TIBBCDField
      FieldName = 'JUROS'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."JUROS"'
      Precision = 18
      Size = 4
    end
    object QryRelPosicaoTitulosDESCONTOS: TIBBCDField
      FieldName = 'DESCONTOS'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."DESCONTOS"'
      Precision = 18
      Size = 4
    end
    object QryRelPosicaoTitulosSALDO_FINAL: TIBBCDField
      FieldName = 'SALDO_FINAL'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."SALDO_FINAL"'
      Precision = 18
      Size = 4
    end
    object QryRelPosicaoTitulosNOME_PESSOA: TIBStringField
      FieldName = 'NOME_PESSOA'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."NOME_PESSOA"'
      Size = 70
    end
    object QryRelPosicaoTitulosDATA_ULT_BX: TDateField
      FieldName = 'DATA_ULT_BX'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."DATA_ULT_BX"'
    end
    object QryRelPosicaoTitulosB_JUROS: TIBBCDField
      FieldName = 'B_JUROS'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."B_JUROS"'
      Precision = 18
      Size = 4
    end
    object QryRelPosicaoTitulosB_DESCONTOS: TIBBCDField
      FieldName = 'B_DESCONTOS'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."B_DESCONTOS"'
      Precision = 18
      Size = 4
    end
    object QryRelPosicaoTitulosB_SALDO_FINAL: TIBBCDField
      FieldName = 'B_SALDO_FINAL'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."B_SALDO_FINAL"'
      Precision = 18
      Size = 4
    end
    object QryRelPosicaoTitulosB_VALOR_NOMINAL: TIBBCDField
      FieldName = 'B_VALOR_NOMINAL'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."B_VALOR_NOMINAL"'
      Precision = 18
      Size = 4
    end
    object QryRelPosicaoTitulosB_AMORTIZACAO: TIBBCDField
      FieldName = 'B_AMORTIZACAO'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."B_AMORTIZACAO"'
      Precision = 18
      Size = 4
    end
    object QryRelPosicaoTitulosB_SALDO_NOMINAL: TIBBCDField
      FieldName = 'B_SALDO_NOMINAL'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."B_SALDO_NOMINAL"'
      Precision = 18
      Size = 4
    end
    object QryRelPosicaoTitulosINDEXADOR: TIBStringField
      FieldName = 'INDEXADOR'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."INDEXADOR"'
    end
    object QryRelPosicaoTitulosCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Origin = '"PCD_REL_TITULOS_PENDENTES"."COD_VENDA"'
    end
  end
  object qryRelVDRec: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryRelVDRecBeforeOpen
    DataSource = dsLinkPosicao
    SQL.Strings = (
      
        'select vd.codigo, vd.num_nf, vd.data, vd.nome, vd.total, vd.desc' +
        '_acres,'
      
        '       (coalesce(vd.total,0) + coalesce(vd.desc_acres,0)) vd_tot' +
        'al,'
      
        '       vdi.quantidade, vdi.prc_unitario, vdi.desconto, prd.codig' +
        'o cod_produto, (coalesce(prd.codigo,'#39#39')||'#39'-'#39'||coalesce(prd.nome,' +
        #39#39')) produto,'
      
        '       ((coalesce(vdi.prc_unitario,0) ) * coalesce(vdi.quantidad' +
        'e,0)) total_item'
      '    from fat_vendas vd'
      
        '    inner join fat_vendas_itens vdi on (vdi.cnpj = vd.cnpj and v' +
        'di.codigo = vd.codigo)'
      
        '    inner join est_produtos prd on (prd.codigo = vdi.produto and' +
        ' vdi.cnpj = vd.cnpj)'
      
        '    where vd.cnpj = :cnpj and vd.codigo = :cod_venda and vd.pess' +
        'oa_fj = :cod_pessoa')
    Left = 229
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_venda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_pessoa'
        ParamType = ptUnknown
      end>
    object qryRelVDRecNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_VENDAS"."NOME"'
      Size = 50
    end
    object qryRelVDRecTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = '"FAT_VENDAS"."TOTAL"'
    end
    object qryRelVDRecDESC_ACRES: TFloatField
      FieldName = 'DESC_ACRES'
      Origin = '"FAT_VENDAS"."DESC_ACRES"'
    end
    object qryRelVDRecVD_TOTAL: TFloatField
      FieldName = 'VD_TOTAL'
    end
    object qryRelVDRecQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_VENDAS_ITENS"."QUANTIDADE"'
    end
    object qryRelVDRecPRC_UNITARIO: TFloatField
      FieldName = 'PRC_UNITARIO'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNITARIO"'
    end
    object qryRelVDRecDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = '"FAT_VENDAS_ITENS"."DESCONTO"'
    end
    object qryRelVDRecCOD_PRODUTO: TIBStringField
      FieldName = 'COD_PRODUTO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Required = True
      Size = 15
    end
    object qryRelVDRecTOTAL_ITEM: TFloatField
      FieldName = 'TOTAL_ITEM'
    end
    object qryRelVDRecCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS"."CODIGO"'
      Required = True
    end
    object qryRelVDRecPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 66
    end
    object qryRelVDRecNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDAS"."NUM_NF"'
    end
    object qryRelVDRecDATA: TDateField
      FieldName = 'DATA'
      Origin = '"FAT_VENDAS"."DATA"'
    end
  end
  object dsLinkPosicao: TDataSource
    DataSet = QryRelPosicaoTitulos
    Left = 136
    Top = 375
  end
  object Qry_Faturamentos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Active = True
    SQL.Strings = (
      
        'select distinct vd2.num_nf, vd2.codigo, psa.nome_razao, vd2.tota' +
        'l, vd2.desc_acres,'
      
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
      
        '                                    (select sum(coalesce(vdi.vlr' +
        '_lucro_item,0) + ('
      '                                     ('
      '                                      ('
      '                                       ('
      '                                        ('
      
        '                                         coalesce(vdi.quantidade' +
        ',0) * coalesce(vdi.prc_unitario,0)'
      '                                        )'
      '                                        * 100'
      '                                       )'
      '                                       /'
      '                                       coalesce(vd.total,0)'
      '                                      )'
      '                                      *'
      '                                      coalesce(vd.desc_acres,0)'
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
      
        '                                  (coalesce(e.CMD_VDT_PCT,0)/100' +
        '.00) /*20% - America Agrosseeds*/'
      '                                 ) com_faturamento,'
      
        '                                 pgt.nome  FORMA_PAGTO, vd2.natu' +
        'reza CFOP,'
      '('
      
        '                                    select coalesce(sum(cm3.valo' +
        'r),0) from cm2_comissao_parc cm3'
      
        '                                    where cm3.cnpj = vd2.cnpj an' +
        'd cm3.status = '#39'L'#39' and cm3.cod_venda = vd2.codigo'
      '                                 ) cm_liberada,'
      '                                 ('
      
        '                                    select coalesce(sum(cm3.valo' +
        'r),0) from cm2_comissao_parc cm3'
      
        '                                    where cm3.cnpj = vd2.cnpj an' +
        'd cm3.status = '#39'P'#39' and cm3.cod_venda = vd2.codigo'
      '                                 ) cm_quitada'
      ''
      ''
      'from fat_vendas vd2'
      
        'inner join est_natureza nat on (vd2.natureza = nat.codigo and vd' +
        '2.cnpj = nat.cnpj)'
      
        'inner join glo_pessoas_fj psa on (psa.codigo = vd2.pessoa_fj and' +
        ' psa.cnpj = vd2.cnpj)'
      
        'inner join cm2_comissao_parc cm on (cm.cnpj = vd2.cnpj and cm.co' +
        'd_venda = vd2.codigo)'
      'inner join sis_empresas e on (e.cnpj = vd2.cnpj)'
      
        'left join fin_formas_pagto pgt on (pgt.codigo = vd2.forma_pgto a' +
        'nd pgt.cnpj = vd2.cnpj)'
      
        'left join fat_vendas_itens vdi on (vdi.cnpj = vd2.cnpj and vdi.c' +
        'odigo = vd2.codigo)'
      
        'left join fat_vendas_itens_comissoes cmi on (cmi.cnpj = vdi.cnpj' +
        ' and cmi.produto = vdi.produto and'
      
        '                                             cmi.sequencia = vdi' +
        '.sequencia and cmi.cod_item = vdi.codigo)'
      
        'where vd2.cnpj = :cnpj and coalesce(vd2.fechada,'#39'N'#39') = '#39'S'#39' and c' +
        'oalesce(vd2.enviada_cx,'#39'N'#39') = '#39'S'#39' and coalesce(vd2.cancelada,'#39#39')' +
        ' = '#39'N'#39
      'and coalesce(nat.paga_comissao,'#39'N'#39') = '#39'S'#39)
    Left = 30
    Top = 434
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object Qry_FaturamentosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_FaturamentosNOME_RAZAO: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object Qry_FaturamentosTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"FAT_VENDAS"."TOTAL"'
    end
    object Qry_FaturamentosDESC_ACRES: TFloatField
      DisplayLabel = 'Desc/Acr'#233'sc'
      FieldName = 'DESC_ACRES'
      Origin = '"FAT_VENDAS"."DESC_ACRES"'
    end
    object Qry_FaturamentosNATUREZA: TIntegerField
      DisplayLabel = 'CFOP'
      FieldName = 'NATUREZA'
      Origin = '"FAT_VENDAS"."NATUREZA"'
    end
    object Qry_FaturamentosCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object Qry_FaturamentosTOTAL_LIQUIDO: TFloatField
      DisplayLabel = 'Ttl. L'#237'quido'
      FieldName = 'TOTAL_LIQUIDO'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object Qry_FaturamentosLUCRO_FATURAMENTO: TFloatField
      DisplayLabel = 'Ttl. Lucro'
      FieldName = 'LUCRO_FATURAMENTO'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object Qry_FaturamentosCOM_FATURAMENTO: TFloatField
      DisplayLabel = 'Ttl. Comiss'#227'o'
      FieldName = 'COM_FATURAMENTO'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object Qry_FaturamentosCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"FAT_VENDAS"."NATUREZA"'
    end
    object Qry_FaturamentosFORMA_PAGTO: TIBStringField
      FieldName = 'FORMA_PAGTO'
      Origin = '"FIN_FORMAS_PAGTO"."NOME"'
      Size = 50
    end
    object Qry_FaturamentosNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDAS"."NUM_NF"'
    end
    object Qry_FaturamentosCM_LIBERADA: TFloatField
      FieldName = 'CM_LIBERADA'
      ProviderFlags = []
    end
    object Qry_FaturamentosCM_QUITADA: TFloatField
      FieldName = 'CM_QUITADA'
      ProviderFlags = []
    end
  end
  object Qry_FatItens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsLnkFaturamento
    SQL.Strings = (
      'select vdi.produto, vdi.cnpj, vdi.codigo, vdi.sequencia,'
      
        '       coalesce(vdi.produto,'#39#39')||'#39' - '#39'||coalesce(prd.nome,'#39#39') no' +
        'me,'
      '       vdi.prc_unitario,'
      '       coalesce(vdi.custo_medio,0) custo_medio,'
      '       vdi.quantidade,'
      '       /*despesas operacinais*/'
      
        '       ((coalesce(vdi.custo_medio,0) * coalesce(cfg.despesas_ope' +
        'racionais,0))/100.00) desp_op,'
      ''
      '       /*custo do item ja incluindo as despesas operacionais*/'
      
        '       (coalesce(vdi.custo_medio,0) + ((coalesce(vdi.custo_medio' +
        ',0) * coalesce(cfg.despesas_operacionais,0))/100.00)) custo_item' +
        ','
      '       /**/'
      
        '       (vdi.prc_unitario - (coalesce(vdi.custo_medio,0) + ((coal' +
        'esce(vdi.custo_medio,0) * coalesce(cfg.despesas_operacionais,0))' +
        '/100.00))) lucro_unitario,'
      
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
      '             0.2)'
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
      'where vdi.cnpj = :cnpj and vdi.codigo = :codigo'
      ''
      '')
    Left = 125
    Top = 434
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
        Size = 15
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
        Size = 4
      end>
    object Qry_FatItensCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS_ITENS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object Qry_FatItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS_ITENS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_FatItensSEQUENCIA: TSmallintField
      DisplayLabel = 'Seq.'
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_VENDAS_ITENS"."SEQUENCIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_FatItensCUSTO_MEDIO: TFloatField
      DisplayLabel = 'Custo M'#233'dio'
      FieldName = 'CUSTO_MEDIO'
      Origin = '"FAT_VENDAS_ITENS"."CUSTO_MEDIO"'
      DisplayFormat = '###,##0.00'
    end
    object Qry_FatItensPRC_UNITARIO: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'PRC_UNITARIO'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNITARIO"'
      DisplayFormat = '###,##0.00'
    end
    object Qry_FatItensQUANTIDADE: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_VENDAS_ITENS"."QUANTIDADE"'
      DisplayFormat = '###,##0.00'
    end
    object Qry_FatItensDESP_OP: TFloatField
      DisplayLabel = 'Vlr. Desp. Op.'
      FieldName = 'DESP_OP'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object Qry_FatItensCUSTO_ITEM: TFloatField
      DisplayLabel = 'Custo Item'
      FieldName = 'CUSTO_ITEM'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object Qry_FatItensLUCRO_UNITARIO: TFloatField
      DisplayLabel = 'Lucro Unit'#225'rio'
      FieldName = 'LUCRO_UNITARIO'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object Qry_FatItensLUCRO_BRUTO: TFloatField
      DisplayLabel = 'Vlr. Lucro Bruto'
      FieldName = 'LUCRO_BRUTO'
      Origin = '"FAT_VENDAS_ITENS"."VLR_LUCRO_ITEM"'
      DisplayFormat = '###,##0.00'
    end
    object Qry_FatItensLUCRO_LIQUIDO: TFloatField
      DisplayLabel = 'Vlr. Lucro L'#237'q.'
      FieldName = 'LUCRO_LIQUIDO'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object Qry_FatItensCOMISSAO_ITEM: TFloatField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'COMISSAO_ITEM'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object Qry_FatItensNOME: TIBStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 68
    end
    object Qry_FatItensPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
  end
  object Qry_FatItensAgentes: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsLnkFatItens
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
      '             0.2)'
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
    Left = 259
    Top = 434
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
        Size = 15
      end
      item
        DataType = ftString
        Name = 'PRODUTO'
        ParamType = ptUnknown
        Size = 16
      end
      item
        DataType = ftSmallint
        Name = 'SEQUENCIA'
        ParamType = ptUnknown
        Size = 2
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
        Size = 4
      end>
    object Qry_FatItensAgentesNOME_RAZAO: TIBStringField
      DisplayLabel = 'Pessoa'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object Qry_FatItensAgentesCPF_CGC: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object Qry_FatItensAgentesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS_ITENS_COMISSOES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object Qry_FatItensAgentesCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS_ITENS_COMISSOES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Qry_FatItensAgentesCOD_ITEM: TIntegerField
      FieldName = 'COD_ITEM'
      Origin = '"FAT_VENDAS_ITENS_COMISSOES"."COD_ITEM"'
    end
    object Qry_FatItensAgentesPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"FAT_VENDAS_ITENS_COMISSOES"."PRODUTO"'
      Size = 15
    end
    object Qry_FatItensAgentesSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_VENDAS_ITENS_COMISSOES"."SEQUENCIA"'
    end
    object Qry_FatItensAgentesPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Pessoa'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDAS_ITENS_COMISSOES"."PESSOA_FJ"'
    end
    object Qry_FatItensAgentesPERCENTUAL: TFloatField
      DisplayLabel = 'Pct(%)'
      FieldName = 'PERCENTUAL'
      Origin = '"FAT_VENDAS_ITENS_COMISSOES"."PERCENTUAL"'
      DisplayFormat = '###,##0.00'
    end
    object Qry_FatItensAgentesCOMISSAO_ITEM: TFloatField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'COMISSAO_ITEM'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
  end
  object Qry_FatComissoes: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsLnkFaturamento
    SQL.Strings = (
      'select * from PCD_REL_COMISSOES_TERCEIROS(:cnpj,:codigo)'
      'order by agente')
    Left = 384
    Top = 435
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
        Size = 15
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
        Size = 4
      end>
    object Qry_FatComissoesAGENTE: TIBStringField
      FieldName = 'AGENTE'
      Origin = '"PCD_REL_COMISSOES_TERCEIROS"."AGENTE"'
      Size = 100
    end
    object Qry_FatComissoesVLR_COMISSAO: TIBBCDField
      FieldName = 'VLR_COMISSAO'
      Origin = '"PCD_REL_COMISSOES_TERCEIROS"."VLR_COMISSAO"'
      Precision = 18
      Size = 4
    end
    object Qry_FatComissoesVLR_CONTA: TIBBCDField
      FieldName = 'VLR_CONTA'
      Origin = '"PCD_REL_COMISSOES_TERCEIROS"."VLR_CONTA"'
      Precision = 18
      Size = 4
    end
    object Qry_FatComissoesSALDO_COMISSAO: TIBBCDField
      FieldName = 'SALDO_COMISSAO'
      Origin = '"PCD_REL_COMISSOES_TERCEIROS"."SALDO_COMISSAO"'
      Precision = 18
      Size = 4
    end
    object Qry_FatComissoesCOD_PAGAR: TIntegerField
      FieldName = 'COD_PAGAR'
      Origin = '"PCD_REL_COMISSOES_TERCEIROS"."COD_PAGAR"'
    end
    object Qry_FatComissoesCOD_RECEBER: TIntegerField
      FieldName = 'COD_RECEBER'
      Origin = '"PCD_REL_COMISSOES_TERCEIROS"."COD_RECEBER"'
    end
    object Qry_FatComissoesRCNPJ: TIBStringField
      FieldName = 'RCNPJ'
      Origin = '"PCD_REL_COMISSOES_TERCEIROS"."RCNPJ"'
      Size = 14
    end
    object Qry_FatComissoesRCODIGO: TIntegerField
      FieldName = 'RCODIGO'
      Origin = '"PCD_REL_COMISSOES_TERCEIROS"."RCODIGO"'
    end
  end
  object Qry_ComBaixas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsLnkBxCom
    SQL.Strings = (
      
        'select * from PCD_REL_COMISSOES_TERC_BX(:rcnpj,:cod_receber,:cod' +
        '_pagar,:rcodigo)')
    Left = 476
    Top = 435
    ParamData = <
      item
        DataType = ftString
        Name = 'RCNPJ'
        ParamType = ptUnknown
        Size = 15
      end
      item
        DataType = ftInteger
        Name = 'COD_RECEBER'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'COD_PAGAR'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftUnknown
        Name = 'rcodigo'
        ParamType = ptUnknown
      end>
    object Qry_ComBaixasCOD_BAIXA: TIntegerField
      FieldName = 'COD_BAIXA'
      Origin = '"PCD_REL_COMISSOES_TERC_BX"."COD_BAIXA"'
    end
    object Qry_ComBaixasVLR_COMISSAO: TIBBCDField
      FieldName = 'VLR_COMISSAO'
      Origin = '"PCD_REL_COMISSOES_TERC_BX"."VLR_COMISSAO"'
      Precision = 18
      Size = 4
    end
    object Qry_ComBaixasPCT_BAIXA: TIBBCDField
      FieldName = 'PCT_BAIXA'
      Origin = '"PCD_REL_COMISSOES_TERC_BX"."PCT_BAIXA"'
      Precision = 18
      Size = 4
    end
    object Qry_ComBaixasVALOR_BAIXA: TIBBCDField
      FieldName = 'VALOR_BAIXA'
      Origin = '"PCD_REL_COMISSOES_TERC_BX"."VALOR_BAIXA"'
      Precision = 18
      Size = 4
    end
    object Qry_ComBaixasSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"PCD_REL_COMISSOES_TERC_BX"."STATUS"'
      FixedChar = True
      Size = 1
    end
  end
  object dsLnkFaturamento: TDataSource
    DataSet = Qry_Faturamentos
    Left = 64
    Top = 485
  end
  object dsLnkFatItens: TDataSource
    DataSet = Qry_FatItens
    Left = 184
    Top = 485
  end
  object dsLnkBxCom: TDataSource
    DataSet = Qry_FatComissoes
    Left = 432
    Top = 483
  end
  object QryCuboEstoque: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AutoCalcFields = False
    SQL.Strings = (
      
        'select prd.codigo cod_produto, prd.nome produto, mrc.nome marca,' +
        ' psa.nome_razao fornecedor,'
      
        'gr.nome grupo, sgr.nome subgrupo, sc.nome secao, mdl.nome modelo' +
        ', c.nome cor_produto,'
      'mat.nome material_produto, mat.nome material_grade,'
      
        'prd.qtdade_2 saldo_fisico_produto,(prd.qtdade_2 * prd.prc_venda)' +
        ' saldo_financeiro_produto,'
      
        'prd.prod_pesavel, prd.ETIQUETA_ENT, mat2.nome materia_grade, c2.' +
        'nome cor_grade,'
      'pgr.nome_perfil, prd.servico, prd.complemento, prd.possui_lote,'
      'case prd.trib_aliq_est'
      '  when '#39'1'#39' then '#39'1 - Tributada Integralmente'#39
      '  when '#39'2'#39' then '#39'2 - Tributada com Redu'#231#227'o na Base de C'#225'lculo'#39
      '  when '#39'3'#39' then '#39'3 - Isento de ICMS'#39
      '  when '#39'4'#39' then '#39'4 - ICMS n'#227'o incid'#234'ncia'#39
      '  when '#39'5'#39' then '#39'5 - Diferido'#39
      '  when '#39'6'#39' then '#39'6 - Substitui'#231#227'o Tribut'#225'ria'#39
      '  when '#39'7'#39' then '#39'7 - ISS'#39
      'end trib_aliq_est'
      ', case prd.trib_aliq_int'
      '  when '#39'1'#39' then '#39'1 - Tributada Integralmente'#39
      '  when '#39'2'#39' then '#39'2 - Tributada com Redu'#231#227'o na Base de C'#225'lculo'#39
      '  when '#39'3'#39' then '#39'3 - Isento de ICMS'#39
      '  when '#39'4'#39' then '#39'4 - ICMS n'#227'o incid'#234'ncia'#39
      '  when '#39'5'#39' then '#39'5 - Diferido'#39
      '  when '#39'6'#39' then '#39'6 - Substitui'#231#227'o Tribut'#225'ria'#39
      '  when '#39'7'#39' then '#39'7 - ISS'#39
      'end trib_aliq_int'
      ',r.mensagem_nf reducao,'
      'prd.trib_modalidade,'
      'pgr.estoque saldo_fisico_grade_perfil,'
      '(pgr.estoque * prd.prc_custo_med) saldo_financeiro_grade_perfil,'
      'n.numero , n.estoque saldo_fisico_numero,'
      'n.ordem,'
      'coalesce(n.ordem,'#39#39')||'#39'-'#39'||coalesce(n.numero,'#39#39')NUM_ORD'
      'from est_produtos prd'
      
        'left join est_marcas mrc on (mrc.cnpj = prd.cnpj and mrc.codigo ' +
        '= prd.marca)'
      
        'left join glo_pessoas_fj psa  on (psa.cnpj = prd.cnpj and psa.co' +
        'digo = prd.fornecedor)'
      
        'left join est_grupos gr on (prd.cnpj = gr.cnpj and gr.codigo = p' +
        'rd.grupo)'
      
        'left join est_subgrupos sgr on (prd.cnpj = sgr.cnpj and sgr.grup' +
        'o = prd.grupo and sgr.subgrupo = prd.subgrupo)'
      
        'left join est_secao sc on (prd.cnpj = sc.cnpj and prd.secao = sc' +
        '.cod_secao)'
      
        'left join glo_modelo_propriedade mdl on (mdl.cnpj = prd.cnpj and' +
        ' mdl.codigo = prd.modelo)'
      
        'left join est_cor c on (c.cnpj = prd.cnpj and c.codigo = prd.cor' +
        ')'
      
        'left join est_material mat on (mat.cnpj = prd.cnpj and mat.codig' +
        'o = prd.material)'
      
        'left join est_produtos_grades pgr on (pgr.cnpj = prd.cnpj and pg' +
        'r.produto = prd.codigo)'
      
        'left join est_produtos_grades_numeros n on (n.cnpj = pgr.cnpj an' +
        'd n.produto = pgr.produto and n.grade = pgr.grade)'
      
        'left join est_cor c2 on (c2.cnpj = prd.cnpj and c2.codigo = prd.' +
        'cor)'
      
        'left join est_material mat2 on (mat2.cnpj = prd.cnpj and mat2.co' +
        'digo = prd.material)'
      
        'left join est_reducoes r on (r.cnpj = prd.cnpj and r.codigo = pr' +
        'd.reducao)'
      'where prd.cnpj = :cnpj'
      'and ((prd.marca = :marca) or (:marca = 0))'
      'and ((prd.fornecedor = :fornecedor) or (:fornecedor = 0))'
      'and ((prd.secao = :secao) or (:secao = 0))'
      'and ((prd.grupo = :grupo) or (:grupo = 0))'
      'and ((prd.subgrupo = :subgrupo) or (:subgrupo = 0))'
      'and ((pgr.perfil = :perfil) or (:perfil = 0))')
    UniDirectional = True
    Left = 568
    Top = 177
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'marca'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'marca'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'secao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'secao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'grupo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'grupo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'subgrupo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'subgrupo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'perfil'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'perfil'
        ParamType = ptUnknown
      end>
    object QryCuboEstoqueCOD_PRODUTO: TIBStringField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'COD_PRODUTO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Size = 15
    end
    object QryCuboEstoquePRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object QryCuboEstoqueMARCA: TIBStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Origin = '"EST_MARCAS"."NOME"'
      Size = 50
    end
    object QryCuboEstoqueFORNECEDOR: TIBStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FORNECEDOR'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object QryCuboEstoqueGRUPO: TIBStringField
      DisplayLabel = 'Grupo'
      FieldName = 'GRUPO'
      Origin = '"EST_GRUPOS"."NOME"'
      Size = 50
    end
    object QryCuboEstoqueSUBGRUPO: TIBStringField
      DisplayLabel = 'Sub. Grupo'
      FieldName = 'SUBGRUPO'
      Origin = '"EST_SUBGRUPOS"."NOME"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object QryCuboEstoqueSECAO: TIBStringField
      DisplayLabel = 'Se'#231#227'o'
      FieldName = 'SECAO'
      Origin = '"EST_SECAO"."NOME"'
      Size = 50
    end
    object QryCuboEstoqueMODELO: TIBStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELO'
      Origin = '"GLO_MODELO_PROPRIEDADE"."NOME"'
      Size = 50
    end
    object QryCuboEstoqueCOR_PRODUTO: TIBStringField
      DisplayLabel = 'Cor. Produto'
      FieldName = 'COR_PRODUTO'
      Origin = '"EST_COR"."NOME"'
      Size = 50
    end
    object QryCuboEstoqueMATERIAL_PRODUTO: TIBStringField
      DisplayLabel = 'Material Produto'
      FieldName = 'MATERIAL_PRODUTO'
      Origin = '"EST_MATERIAL"."NOME"'
      Size = 50
    end
    object QryCuboEstoqueMATERIAL_GRADE: TIBStringField
      DisplayLabel = 'Material Grade'
      FieldName = 'MATERIAL_GRADE'
      Origin = '"EST_MATERIAL"."NOME"'
      Size = 50
    end
    object QryCuboEstoqueSALDO_FISICO_PRODUTO: TFloatField
      DisplayLabel = 'Sld. Fis. Produto'
      FieldName = 'SALDO_FISICO_PRODUTO'
      Origin = '"EST_PRODUTOS"."QTDADE_2"'
    end
    object QryCuboEstoqueSALDO_FINANCEIRO_PRODUTO: TFloatField
      DisplayLabel = 'Sld. Fin. Produto'
      FieldName = 'SALDO_FINANCEIRO_PRODUTO'
      ProviderFlags = []
    end
    object QryCuboEstoquePROD_PESAVEL: TIBStringField
      DisplayLabel = 'Pesavel'
      FieldName = 'PROD_PESAVEL'
      Origin = '"EST_PRODUTOS"."PROD_PESAVEL"'
      FixedChar = True
      Size = 1
    end
    object QryCuboEstoqueETIQUETA_ENT: TIBStringField
      DisplayLabel = 'Etiqueta'
      FieldName = 'ETIQUETA_ENT'
      Origin = '"EST_PRODUTOS"."ETIQUETA_ENT"'
      FixedChar = True
      Size = 1
    end
    object QryCuboEstoqueMATERIA_GRADE: TIBStringField
      DisplayLabel = 'Material Grade'
      FieldName = 'MATERIA_GRADE'
      Origin = '"EST_MATERIAL"."NOME"'
      Size = 50
    end
    object QryCuboEstoqueCOR_GRADE: TIBStringField
      DisplayLabel = 'Cor Grade'
      FieldName = 'COR_GRADE'
      Origin = '"EST_COR"."NOME"'
      Size = 50
    end
    object QryCuboEstoqueNOME_PERFIL: TIBStringField
      DisplayLabel = 'Perfil'
      FieldName = 'NOME_PERFIL'
      Origin = '"EST_PRODUTOS_GRADES"."NOME_PERFIL"'
      Size = 50
    end
    object QryCuboEstoqueSERVICO: TIBStringField
      DisplayLabel = 'Servico'
      FieldName = 'SERVICO'
      Origin = '"EST_PRODUTOS"."SERVICO"'
      FixedChar = True
      Size = 1
    end
    object QryCuboEstoqueCOMPLEMENTO: TIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Origin = '"EST_PRODUTOS"."COMPLEMENTO"'
      Size = 100
    end
    object QryCuboEstoquePOSSUI_LOTE: TIBStringField
      DisplayLabel = 'Possui Lote'
      FieldName = 'POSSUI_LOTE'
      Origin = '"EST_PRODUTOS"."POSSUI_LOTE"'
      FixedChar = True
      Size = 1
    end
    object QryCuboEstoqueTRIB_ALIQ_EST: TIBStringField
      DisplayLabel = 'Trib. Estadual'
      FieldName = 'TRIB_ALIQ_EST'
      ProviderFlags = []
      FixedChar = True
      Size = 44
    end
    object QryCuboEstoqueTRIB_ALIQ_INT: TIBStringField
      DisplayLabel = 'Trib. Interestadual'
      FieldName = 'TRIB_ALIQ_INT'
      ProviderFlags = []
      FixedChar = True
      Size = 44
    end
    object QryCuboEstoqueREDUCAO: TIBStringField
      DisplayLabel = 'Reducao'
      FieldName = 'REDUCAO'
      Origin = '"EST_REDUCOES"."MENSAGEM_NF"'
      Size = 80
    end
    object QryCuboEstoqueTRIB_MODALIDADE: TIBStringField
      DisplayLabel = 'Trib. Modalidade'
      FieldName = 'TRIB_MODALIDADE'
      Origin = '"EST_PRODUTOS"."TRIB_MODALIDADE"'
      Size = 50
    end
    object QryCuboEstoqueSALDO_FISICO_GRADE_PERFIL: TFloatField
      DisplayLabel = 'Sld. Fis. Grade'
      FieldName = 'SALDO_FISICO_GRADE_PERFIL'
      Origin = '"EST_PRODUTOS_GRADES"."ESTOQUE"'
    end
    object QryCuboEstoqueSALDO_FINANCEIRO_GRADE_PERFIL: TFloatField
      DisplayLabel = 'Sld. Fin. Grade'
      FieldName = 'SALDO_FINANCEIRO_GRADE_PERFIL'
      ProviderFlags = []
    end
    object QryCuboEstoqueNUMERO: TIBStringField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO'
      Origin = '"EST_PRODUTOS_GRADES_NUMEROS"."NUMERO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 6
    end
    object QryCuboEstoqueSALDO_FISICO_NUMERO: TFloatField
      DisplayLabel = 'Sld. Fis. Numero'
      FieldName = 'SALDO_FISICO_NUMERO'
      Origin = '"EST_PRODUTOS_GRADES_NUMEROS"."ESTOQUE"'
    end
    object QryCuboEstoqueORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = '"EST_PRODUTOS_GRADES_NUMEROS"."ORDEM"'
    end
    object QryCuboEstoqueNUM_ORD: TIBStringField
      FieldName = 'NUM_ORD'
      ProviderFlags = []
      Size = 18
    end
  end
  object Extenso: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 520
    Top = 64
  end
end
