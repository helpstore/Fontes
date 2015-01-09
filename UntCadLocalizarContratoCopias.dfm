inherited FrmCadLocalizarContratoCopias: TFrmCadLocalizarContratoCopias
  Caption = 'FrmCadLocalizarContratoCopias'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    ActivePage = tbsLista
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        Height = 336
      end
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'select cp.CNPJ,'
      '       cp.CODIGO,'
      '    COD_CLIENTE,'
      '    COD_CONTRATO ,'
      '    NUM_CONTRATO,'
      '    DT_INICIO,'
      '    DT_FIM,'
      '    ATIVO,'
      '    INFORMACOES,'
      '    VALOR_CONTRATO,'
      '    FRANQUIA_COPIAS,'
      '    VALOR_COPIA_EXCEDENTE,'
      '    DATA,'
      '    GERA_FATURAMENTO,'
      '    GERA_LEITURA,'
      '    psa.nome_razao,'
      '    psa.fantasia,'
      '    tp.nome tipo_contrato'
      'from ofc_grp_contratos cp'
      
        'left join glo_pessoas_fj psa on (psa.codigo = cp.cod_cliente and' +
        ' psa.cnpj = cp.cnpj)'
      
        'left join GLO_TIPO_CONTRATO tp on (tp.codigo = cp.cod_contrato a' +
        'nd cp.cnpj = tp.cnpj)'
      'where  cp.cnpj = :cnpj'
      'and  ((cp.cod_cliente = :cod_cliente) or (:cod_cliente = 0))'
      
        'and (upper(psa.nome_razao) like '#39'%'#39'||upper(cast(:cliente as varc' +
        'har(50)))||'#39'%'#39' or cast(:cliente as varchar(50)) = '#39#39')')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_GRP_CONTRATOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_GRP_CONTRATOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListCOD_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'COD_CLIENTE'
      Origin = '"OFC_GRP_CONTRATOS"."COD_CLIENTE"'
    end
    object dtListCOD_CONTRATO: TIntegerField
      DisplayLabel = 'C'#243'd. Contrato'
      FieldName = 'COD_CONTRATO'
      Origin = '"OFC_GRP_CONTRATOS"."COD_CONTRATO"'
    end
    object dtListNUM_CONTRATO: TIBStringField
      DisplayLabel = 'Num. Contrato'
      FieldName = 'NUM_CONTRATO'
      Origin = '"OFC_GRP_CONTRATOS"."NUM_CONTRATO"'
      Size = 30
    end
    object dtListDT_INICIO: TDateTimeField
      DisplayLabel = 'Dt. Inicio'
      FieldName = 'DT_INICIO'
      Origin = '"OFC_GRP_CONTRATOS"."DT_INICIO"'
    end
    object dtListDT_FIM: TDateTimeField
      DisplayLabel = 'Dt. Fim'
      FieldName = 'DT_FIM'
      Origin = '"OFC_GRP_CONTRATOS"."DT_FIM"'
    end
    object dtListATIVO: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = '"OFC_GRP_CONTRATOS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object dtListINFORMACOES: TMemoField
      DisplayLabel = 'Informa'#231#245'es'
      FieldName = 'INFORMACOES'
      Origin = '"OFC_GRP_CONTRATOS"."INFORMACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object dtListVALOR_CONTRATO: TFloatField
      DisplayLabel = 'Valor Contrato'
      FieldName = 'VALOR_CONTRATO'
      Origin = '"OFC_GRP_CONTRATOS"."VALOR_CONTRATO"'
    end
    object dtListFRANQUIA_COPIAS: TIntegerField
      DisplayLabel = 'Franquia C'#243'pias'
      FieldName = 'FRANQUIA_COPIAS'
      Origin = '"OFC_GRP_CONTRATOS"."FRANQUIA_COPIAS"'
    end
    object dtListVALOR_COPIA_EXCEDENTE: TFloatField
      FieldName = 'VALOR_COPIA_EXCEDENTE'
      Origin = '"OFC_GRP_CONTRATOS"."VALOR_COPIA_EXCEDENTE"'
    end
    object dtListDATA: TDateField
      FieldName = 'DATA'
      Origin = '"OFC_GRP_CONTRATOS"."DATA"'
    end
    object dtListGERA_FATURAMENTO: TIBStringField
      FieldName = 'GERA_FATURAMENTO'
      Origin = '"OFC_GRP_CONTRATOS"."GERA_FATURAMENTO"'
      FixedChar = True
      Size = 1
    end
    object dtListGERA_LEITURA: TIBStringField
      FieldName = 'GERA_LEITURA'
      Origin = '"OFC_GRP_CONTRATOS"."GERA_LEITURA"'
      FixedChar = True
      Size = 1
    end
    object dtListNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object dtListFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object dtListTIPO_CONTRATO: TIBStringField
      FieldName = 'TIPO_CONTRATO'
      Origin = '"GLO_TIPO_CONTRATO"."NOME"'
      Size = 50
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
