object FrmExportaBemacash: TFrmExportaBemacash
  Left = 309
  Top = 146
  Width = 467
  Height = 180
  BorderIcons = [biSystemMenu]
  Caption = 'Exporta'#231#227'o BemaCash'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 459
    Height = 153
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Bevel1: TBevel
      Left = 2
      Top = 149
      Width = 455
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 289
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 8
      Caption = 'Exporta'#231#227'o BemaCash'
      ParentFont = False
      Transparent = True
    end
    object Label142: TcxLabel
      Left = 6
      Top = 48
      Caption = 'Diret'#243'rio para Exporta'#231#227'o de Registros de Opera'#231#227'o'
      ParentFont = False
      Transparent = True
    end
    object Panel2: TPanel
      Left = 2
      Top = 109
      Width = 455
      Height = 40
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object LblStatus: TcxLabel
        Left = 205
        Top = 13
        Caption = 'Status'
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object RzBitBtn2: TcxButton
        Left = 8
        Top = 7
        Width = 91
        Height = 25
        Cursor = crHandPoint
        Cancel = True
        Caption = '&Fechar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = RzBitBtn2Click
        OnKeyDown = RzBitBtn2KeyDown
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
          0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
          0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
          0333337F777FFFFF7F3333000000000003333377777777777333}
        NumGlyphs = 2
      end
      object ANDA: TProgressBar
        Left = 248
        Top = 12
        Width = 193
        Height = 16
        TabOrder = 0
      end
      object BtnCriar: TcxButton
        Left = 102
        Top = 7
        Width = 91
        Height = 25
        Cursor = crHandPoint
        Action = ActExporta
        Caption = 'Exportar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnKeyDown = BtnCriarKeyDown
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADAD0DADADADDADADADA00DADADAADADADAD0D0DADADDADADADA0AD0
          DADA000000000DAD0DADD0DADADADADAD0DAAD0DADADADADAD0DDAD0DADADADA
          DAD0AD0DADADADADAD0DD0DADADADADAD0DA000000000DAD0DADDADADADA0AD0
          DADAADADADAD0D0DADADDADADADA00DADADAADADADAD0DADADAD}
      end
    end
    object edtDiretorio: TdxEdit
      Left = 6
      Top = 64
      Width = 427
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
    end
  end
  object DIR: TOpenDialog
    DefaultExt = 'txt'
    Filter = '*.TXT'
    Left = 408
  end
  object Actions: TActionList
    Left = 368
    Top = 8
    object ActFechar: TAction
      Caption = '&Fechar'
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActAbre: TAction
      Caption = 'Abre'
    end
    object ActExporta: TAction
      Caption = 'Exporta'
      OnExecute = ActExportaExecute
    end
  end
  object qryBanco: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from FIN_BANCO')
    Left = 232
    Top = 48
    object qryBancoCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"FIN_BANCO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 3
    end
    object qryBancoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_BANCO"."NOME"'
      Size = 50
    end
    object qryBancoBOLETO: TIntegerField
      FieldName = 'BOLETO'
      Origin = '"FIN_BANCO"."BOLETO"'
    end
    object qryBancoGERA_ARQUIVO_MAGNETICO: TIBStringField
      FieldName = 'GERA_ARQUIVO_MAGNETICO'
      Origin = '"FIN_BANCO"."GERA_ARQUIVO_MAGNETICO"'
      FixedChar = True
      Size = 1
    end
    object qryBancoPADRAO_BOLETO: TIBStringField
      FieldName = 'PADRAO_BOLETO'
      Origin = '"FIN_BANCO"."PADRAO_BOLETO"'
      FixedChar = True
      Size = 1
    end
    object qryBancoCONFIG_CH: TBlobField
      FieldName = 'CONFIG_CH'
      Origin = '"FIN_BANCO"."CONFIG_CH"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qryBancoCONFIG_CHEQUE: TMemoField
      FieldName = 'CONFIG_CHEQUE'
      Origin = '"FIN_BANCO"."CONFIG_CHEQUE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object qryClientes: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select    GLO_CLIENTES.*,'
      '          glo_pessoas_fj.*,'
      '          glo_logradouros.nome as endereco_nome,'
      '          glo_Bairros.nome    as bairro_nome,'
      '          glo_cidades.nome    as cidades_nome'
      ''
      'from    glo_clientes'
      
        'inner join glo_pessoas_fj on (glo_clientes.pessoa_fj = glo_pesso' +
        'as_fj.codigo)'
      
        'left join glo_logradouros  on (glo_pessoas_fj.cnpj    = glo_logr' +
        'adouros.cnpj and glo_pessoas_fj.endereco = glo_logradouros.codig' +
        'o)'
      
        'left join glo_Bairros  on ((glo_pessoas_fj.cnpj   = glo_bairros.' +
        'cnpj) and glo_pessoas_fj.endereco = glo_Bairros.codigo)'
      
        'left join glo_cidades  on ((glo_pessoas_fj.cnpj   = glo_cidades.' +
        'cnpj) and glo_pessoas_fj.endereco = glo_cidades.codigo)')
    Left = 196
    Top = 48
    object qryClientesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CLIENTES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 14
    end
    object qryClientesPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_CLIENTES"."PESSOA_FJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryClientesCOMPRADOR: TIBStringField
      FieldName = 'COMPRADOR'
      Origin = '"GLO_CLIENTES"."COMPRADOR"'
      Size = 50
    end
    object qryClientesFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"GLO_CLIENTES"."FONE"'
    end
    object qryClientesCNPJ_VEND: TIBStringField
      FieldName = 'CNPJ_VEND'
      Origin = '"GLO_CLIENTES"."CNPJ_VEND"'
      FixedChar = True
      Size = 14
    end
    object qryClientesCOD_VEND: TIntegerField
      FieldName = 'COD_VEND'
      Origin = '"GLO_CLIENTES"."COD_VEND"'
    end
    object qryClientesCNPJ_FPAGTO: TIBStringField
      FieldName = 'CNPJ_FPAGTO'
      Origin = '"GLO_CLIENTES"."CNPJ_FPAGTO"'
      FixedChar = True
      Size = 14
    end
    object qryClientesCOD_FPAGTO: TIntegerField
      FieldName = 'COD_FPAGTO'
      Origin = '"GLO_CLIENTES"."COD_FPAGTO"'
    end
    object qryClientesREQUISICAO: TIBStringField
      FieldName = 'REQUISICAO'
      Origin = '"GLO_CLIENTES"."REQUISICAO"'
      FixedChar = True
      Size = 1
    end
    object qryClientesDIA_PREF_FAT: TIntegerField
      FieldName = 'DIA_PREF_FAT'
      Origin = '"GLO_CLIENTES"."DIA_PREF_FAT"'
    end
    object qryClientesCLASSIF: TIBStringField
      FieldName = 'CLASSIF'
      Origin = '"GLO_CLIENTES"."CLASSIF"'
      FixedChar = True
      Size = 1
    end
    object qryClientesLIMITE_TEMPO: TIntegerField
      FieldName = 'LIMITE_TEMPO'
      Origin = '"GLO_CLIENTES"."LIMITE_TEMPO"'
    end
    object qryClientesLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
      Origin = '"GLO_CLIENTES"."LIMITE_CREDITO"'
    end
    object qryClientesREFERENCIAS: TBlobField
      FieldName = 'REFERENCIAS'
      Origin = '"GLO_CLIENTES"."REFERENCIAS"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qryClientesOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"GLO_CLIENTES"."OBS"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qryClientesBLOQUEADO: TIBStringField
      FieldName = 'BLOQUEADO'
      Origin = '"GLO_CLIENTES"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object qryClientesULT_VENDEDOR: TIntegerField
      FieldName = 'ULT_VENDEDOR'
      Origin = '"GLO_CLIENTES"."ULT_VENDEDOR"'
    end
    object qryClientesFREQUENCIA: TIBStringField
      FieldName = 'FREQUENCIA'
      Origin = '"GLO_CLIENTES"."FREQUENCIA"'
      FixedChar = True
      Size = 3
    end
    object qryClientesATIVIDADE: TIntegerField
      FieldName = 'ATIVIDADE'
      Origin = '"GLO_CLIENTES"."ATIVIDADE"'
    end
    object qryClientesCEP_TRABALHO: TIBStringField
      FieldName = 'CEP_TRABALHO'
      Origin = '"GLO_CLIENTES"."CEP_TRABALHO"'
      Size = 8
    end
    object qryClientesCIDADE_PAIS: TIntegerField
      FieldName = 'CIDADE_PAIS'
      Origin = '"GLO_CLIENTES"."CIDADE_PAIS"'
    end
    object qryClientesCONJUGE: TIBStringField
      FieldName = 'CONJUGE'
      Origin = '"GLO_CLIENTES"."CONJUGE"'
      Size = 50
    end
    object qryClientesDT_NASC_CONJUGE: TDateTimeField
      FieldName = 'DT_NASC_CONJUGE'
      Origin = '"GLO_CLIENTES"."DT_NASC_CONJUGE"'
    end
    object qryClientesENDERECO_PAIS: TIntegerField
      FieldName = 'ENDERECO_PAIS'
      Origin = '"GLO_CLIENTES"."ENDERECO_PAIS"'
    end
    object qryClientesENDERECO_TRABALHO: TIntegerField
      FieldName = 'ENDERECO_TRABALHO'
      Origin = '"GLO_CLIENTES"."ENDERECO_TRABALHO"'
    end
    object qryClientesFONE_LOCAL_CONJUGE: TIBStringField
      FieldName = 'FONE_LOCAL_CONJUGE'
      Origin = '"GLO_CLIENTES"."FONE_LOCAL_CONJUGE"'
    end
    object qryClientesFONE_TRABALHO: TIBStringField
      FieldName = 'FONE_TRABALHO'
      Origin = '"GLO_CLIENTES"."FONE_TRABALHO"'
    end
    object qryClientesLOCAL_TRAB_CONJUGE: TIBStringField
      FieldName = 'LOCAL_TRAB_CONJUGE'
      Origin = '"GLO_CLIENTES"."LOCAL_TRAB_CONJUGE"'
      Size = 50
    end
    object qryClientesLOCAL_TRABALHO: TIBStringField
      FieldName = 'LOCAL_TRABALHO'
      Origin = '"GLO_CLIENTES"."LOCAL_TRABALHO"'
      Size = 50
    end
    object qryClientesMAE: TIBStringField
      FieldName = 'MAE'
      Origin = '"GLO_CLIENTES"."MAE"'
      Size = 50
    end
    object qryClientesPAI: TIBStringField
      FieldName = 'PAI'
      Origin = '"GLO_CLIENTES"."PAI"'
      Size = 50
    end
    object qryClientesRAMAL_FONE_TRAB: TIBStringField
      FieldName = 'RAMAL_FONE_TRAB'
      Origin = '"GLO_CLIENTES"."RAMAL_FONE_TRAB"'
      FixedChar = True
      Size = 3
    end
    object qryClientesRAMAL_LOCAL_CONJUGE: TIBStringField
      FieldName = 'RAMAL_LOCAL_CONJUGE'
      Origin = '"GLO_CLIENTES"."RAMAL_LOCAL_CONJUGE"'
      FixedChar = True
      Size = 3
    end
    object qryClientesRENDA_MENSAL: TFloatField
      FieldName = 'RENDA_MENSAL'
      Origin = '"GLO_CLIENTES"."RENDA_MENSAL"'
    end
    object qryClientesTEMPO_SERV_CONJUGE: TIBStringField
      FieldName = 'TEMPO_SERV_CONJUGE'
      Origin = '"GLO_CLIENTES"."TEMPO_SERV_CONJUGE"'
      Size = 10
    end
    object qryClientesTEMPO_SERVICO: TIBStringField
      FieldName = 'TEMPO_SERVICO'
      Origin = '"GLO_CLIENTES"."TEMPO_SERVICO"'
      Size = 10
    end
    object qryClientesCNPJ_CLASSIF: TIBStringField
      FieldName = 'CNPJ_CLASSIF'
      Origin = '"GLO_CLIENTES"."CNPJ_CLASSIF"'
      FixedChar = True
      Size = 14
    end
    object qryClientesCOD_CLASSIF: TIntegerField
      FieldName = 'COD_CLASSIF'
      Origin = '"GLO_CLIENTES"."COD_CLASSIF"'
    end
    object qryClientesPRAZO: TIntegerField
      FieldName = 'PRAZO'
      Origin = '"GLO_CLIENTES"."PRAZO"'
    end
    object qryClientesPERIODO_FATURAMENTO: TIBStringField
      FieldName = 'PERIODO_FATURAMENTO'
      Origin = '"GLO_CLIENTES"."PERIODO_FATURAMENTO"'
      FixedChar = True
      Size = 1
    end
    object qryClientesTOLERANCIA_FATURAMENTO: TIntegerField
      FieldName = 'TOLERANCIA_FATURAMENTO'
      Origin = '"GLO_CLIENTES"."TOLERANCIA_FATURAMENTO"'
    end
    object qryClientesAJUSTE_AUT_FATURAS: TIBStringField
      FieldName = 'AJUSTE_AUT_FATURAS'
      Origin = '"GLO_CLIENTES"."AJUSTE_AUT_FATURAS"'
      FixedChar = True
      Size = 1
    end
    object qryClientesTAXA_JUROS: TFloatField
      FieldName = 'TAXA_JUROS'
      Origin = '"GLO_CLIENTES"."TAXA_JUROS"'
    end
    object qryClientesMEDIA_COMPRAS_MES: TIntegerField
      FieldName = 'MEDIA_COMPRAS_MES'
      Origin = '"GLO_CLIENTES"."MEDIA_COMPRAS_MES"'
    end
    object qryClientesNAO_COBR_JUR_ATE: TIntegerField
      FieldName = 'NAO_COBR_JUR_ATE'
      Origin = '"GLO_CLIENTES"."NAO_COBR_JUR_ATE"'
    end
    object qryClientesASSINA_NOTA: TIBStringField
      FieldName = 'ASSINA_NOTA'
      Origin = '"GLO_CLIENTES"."ASSINA_NOTA"'
      FixedChar = True
      Size = 1
    end
    object qryClientesCONTROLA_PLACA: TIBStringField
      FieldName = 'CONTROLA_PLACA'
      Origin = '"GLO_CLIENTES"."CONTROLA_PLACA"'
      FixedChar = True
      Size = 1
    end
    object qryClientesCONTROLA_KM: TIBStringField
      FieldName = 'CONTROLA_KM'
      Origin = '"GLO_CLIENTES"."CONTROLA_KM"'
      FixedChar = True
      Size = 1
    end
    object qryClientesADMISSAO: TDateTimeField
      FieldName = 'ADMISSAO'
      Origin = '"GLO_CLIENTES"."ADMISSAO"'
    end
    object qryClientesADMISSAO_CONJUGE: TDateTimeField
      FieldName = 'ADMISSAO_CONJUGE'
      Origin = '"GLO_CLIENTES"."ADMISSAO_CONJUGE"'
    end
    object qryClientesNUMERO_TRABALHO: TIBStringField
      FieldName = 'NUMERO_TRABALHO'
      Origin = '"GLO_CLIENTES"."NUMERO_TRABALHO"'
      Size = 15
    end
    object qryClientesLIMITE_RETIRADAS_DIARIA: TFloatField
      FieldName = 'LIMITE_RETIRADAS_DIARIA'
      Origin = '"GLO_CLIENTES"."LIMITE_RETIRADAS_DIARIA"'
    end
    object qryClientesVALOR_MAXIMO_RETIRADA: TFloatField
      FieldName = 'VALOR_MAXIMO_RETIRADA'
      Origin = '"GLO_CLIENTES"."VALOR_MAXIMO_RETIRADA"'
    end
    object qryClientesNUMERO_PAIS: TIBStringField
      FieldName = 'NUMERO_PAIS'
      Origin = '"GLO_CLIENTES"."NUMERO_PAIS"'
      Size = 15
    end
    object qryClientesCHEQUE: TIBStringField
      FieldName = 'CHEQUE'
      Origin = '"GLO_CLIENTES"."CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object qryClientesALIQUOTA_DESCONTO: TFloatField
      FieldName = 'ALIQUOTA_DESCONTO'
      Origin = '"GLO_CLIENTES"."ALIQUOTA_DESCONTO"'
    end
    object qryClientesOPTANTE_SIMPLES: TIBStringField
      FieldName = 'OPTANTE_SIMPLES'
      Origin = '"GLO_CLIENTES"."OPTANTE_SIMPLES"'
      FixedChar = True
      Size = 1
    end
    object qryClientesCONS_REV: TIBStringField
      FieldName = 'CONS_REV'
      Origin = '"GLO_CLIENTES"."CONS_REV"'
      FixedChar = True
      Size = 1
    end
    object qryClientesSENHA_PDV: TIBStringField
      FieldName = 'SENHA_PDV'
      Origin = '"GLO_CLIENTES"."SENHA_PDV"'
      Size = 6
    end
    object qryClientesSUB_TRIBUTARIO: TIBStringField
      FieldName = 'SUB_TRIBUTARIO'
      Origin = '"GLO_CLIENTES"."SUB_TRIBUTARIO"'
      FixedChar = True
      Size = 1
    end
    object qryClientesRET_PIS: TIBStringField
      FieldName = 'RET_PIS'
      Origin = '"GLO_CLIENTES"."RET_PIS"'
      FixedChar = True
      Size = 1
    end
    object qryClientesRET_INSS: TIBStringField
      FieldName = 'RET_INSS'
      Origin = '"GLO_CLIENTES"."RET_INSS"'
      FixedChar = True
      Size = 1
    end
    object qryClientesRET_IRRF: TIBStringField
      FieldName = 'RET_IRRF'
      Origin = '"GLO_CLIENTES"."RET_IRRF"'
      FixedChar = True
      Size = 1
    end
    object qryClientesBAIRRO: TIntegerField
      FieldName = 'BAIRRO'
      Origin = '"GLO_CLIENTES"."BAIRRO"'
    end
    object qryClientesNEG_N_VEZES: TSmallintField
      FieldName = 'NEG_N_VEZES'
      Origin = '"GLO_CLIENTES"."NEG_N_VEZES"'
    end
    object qryClientesCNPJ1: TIBStringField
      FieldName = 'CNPJ1'
      Origin = '"GLO_PESSOAS_FJ"."CNPJ"'
      FixedChar = True
      Size = 14
    end
    object qryClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qryClientesNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object qryClientesFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object qryClientesATIVIDADE1: TIntegerField
      FieldName = 'ATIVIDADE1'
      Origin = '"GLO_PESSOAS_FJ"."ATIVIDADE"'
    end
    object qryClientesENDERECO: TIntegerField
      FieldName = 'ENDERECO'
      Origin = '"GLO_PESSOAS_FJ"."ENDERECO"'
    end
    object qryClientesNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"GLO_PESSOAS_FJ"."NUMERO"'
      Size = 15
    end
    object qryClientesCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_PESSOAS_FJ"."COMPLEMENTO"'
      Size = 30
    end
    object qryClientesBAIRRO1: TIntegerField
      FieldName = 'BAIRRO1'
      Origin = '"GLO_PESSOAS_FJ"."BAIRRO"'
    end
    object qryClientesCIDADE: TIntegerField
      FieldName = 'CIDADE'
      Origin = '"GLO_PESSOAS_FJ"."CIDADE"'
    end
    object qryClientesUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PESSOAS_FJ"."UF"'
      FixedChar = True
      Size = 2
    end
    object qryClientesCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"GLO_PESSOAS_FJ"."CEP"'
      Size = 8
    end
    object qryClientesFONE1: TIBStringField
      FieldName = 'FONE1'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object qryClientesFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object qryClientesCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"GLO_PESSOAS_FJ"."CELULAR"'
    end
    object qryClientesPESSOA: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"GLO_PESSOAS_FJ"."PESSOA"'
      FixedChar = True
      Size = 1
    end
    object qryClientesCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object qryClientesRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"GLO_PESSOAS_FJ"."RG_IE"'
    end
    object qryClientesCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO"'
      Size = 30
    end
    object qryClientesDT_NASCIMENTO: TDateTimeField
      FieldName = 'DT_NASCIMENTO'
      Origin = '"GLO_PESSOAS_FJ"."DT_NASCIMENTO"'
    end
    object qryClientesDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
      Origin = '"GLO_PESSOAS_FJ"."DT_CADASTRO"'
    end
    object qryClientesEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"GLO_PESSOAS_FJ"."EMAIL"'
      Size = 80
    end
    object qryClientesOBS1: TBlobField
      FieldName = 'OBS1'
      Origin = '"GLO_PESSOAS_FJ"."OBS"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qryClientesINSC_MUNIC: TIBStringField
      FieldName = 'INSC_MUNIC'
      Origin = '"GLO_PESSOAS_FJ"."INSC_MUNIC"'
      Size = 15
    end
    object qryClientesCONVENIO: TIntegerField
      FieldName = 'CONVENIO'
      Origin = '"GLO_PESSOAS_FJ"."CONVENIO"'
    end
    object qryClientesEMISSOR: TIBStringField
      FieldName = 'EMISSOR'
      Origin = '"GLO_PESSOAS_FJ"."EMISSOR"'
      Size = 6
    end
    object qryClientesCONTATO1: TIBStringField
      FieldName = 'CONTATO1'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO1"'
      Size = 50
    end
    object qryClientesCONTATO2: TIBStringField
      FieldName = 'CONTATO2'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO2"'
      Size = 50
    end
    object qryClientesCONTATO3: TIBStringField
      FieldName = 'CONTATO3'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO3"'
      Size = 50
    end
    object qryClientesORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = '"GLO_PESSOAS_FJ"."ORDEM"'
    end
    object qryClientesREGIAO: TIntegerField
      FieldName = 'REGIAO'
      Origin = '"GLO_PESSOAS_FJ"."REGIAO"'
    end
    object qryClientesNFE_EXP: TIBStringField
      FieldName = 'NFE_EXP'
      Origin = '"GLO_PESSOAS_FJ"."NFE_EXP"'
      FixedChar = True
      Size = 1
    end
    object qryClientesSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"GLO_PESSOAS_FJ"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object qryClientesCODIGO_2: TIntegerField
      FieldName = 'CODIGO_2'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO_2"'
    end
    object qryClientesENDERECO_NOME: TIBStringField
      FieldName = 'ENDERECO_NOME'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      Size = 50
    end
    object qryClientesBAIRRO_NOME: TIBStringField
      FieldName = 'BAIRRO_NOME'
      Origin = '"GLO_BAIRROS"."NOME"'
      Size = 50
    end
    object qryClientesCIDADES_NOME: TIBStringField
      FieldName = 'CIDADES_NOME'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
  end
  object qryEmpresa: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select  sis_configuracoes.* , sis_empresas.*'
      '        '
      'from sis_empresas'
      
        'inner join sis_configuracoes on (sis_empresas.cnpj = sis_configu' +
        'racoes.cnpj)')
    Left = 124
    Top = 48
    object qryEmpresaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_EMPRESAS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 14
    end
    object qryEmpresaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"SIS_EMPRESAS"."NOME"'
      Size = 50
    end
    object qryEmpresaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"SIS_EMPRESAS"."ENDERECO"'
      Size = 50
    end
    object qryEmpresaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"SIS_EMPRESAS"."BAIRRO"'
      Size = 50
    end
    object qryEmpresaCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"SIS_EMPRESAS"."CIDADE"'
      Size = 50
    end
    object qryEmpresaUF: TIBStringField
      FieldName = 'UF'
      Origin = '"SIS_EMPRESAS"."UF"'
      FixedChar = True
      Size = 2
    end
    object qryEmpresaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"SIS_EMPRESAS"."CEP"'
      Size = 8
    end
    object qryEmpresaFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"SIS_EMPRESAS"."FONE"'
    end
    object qryEmpresaFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"SIS_EMPRESAS"."FAX"'
    end
    object qryEmpresaMENS_ECF: TIBStringField
      FieldName = 'MENS_ECF'
      Origin = '"SIS_EMPRESAS"."MENS_ECF"'
      Size = 80
    end
    object qryEmpresaALT_PRC_VND: TIBStringField
      FieldName = 'ALT_PRC_VND'
      Origin = '"SIS_EMPRESAS"."ALT_PRC_VND"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaTX_JUROS_ATE: TFloatField
      FieldName = 'TX_JUROS_ATE'
      Origin = '"SIS_EMPRESAS"."TX_JUROS_ATE"'
    end
    object qryEmpresaTX_JUROS_APOS: TFloatField
      FieldName = 'TX_JUROS_APOS'
      Origin = '"SIS_EMPRESAS"."TX_JUROS_APOS"'
    end
    object qryEmpresaTIPO_TAXA: TIBStringField
      FieldName = 'TIPO_TAXA'
      Origin = '"SIS_EMPRESAS"."TIPO_TAXA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaMENSAGEM_BOL: TIBStringField
      FieldName = 'MENSAGEM_BOL'
      Origin = '"SIS_EMPRESAS"."MENSAGEM_BOL"'
      Size = 50
    end
    object qryEmpresaMENSAGEM_BOL2: TIBStringField
      FieldName = 'MENSAGEM_BOL2'
      Origin = '"SIS_EMPRESAS"."MENSAGEM_BOL2"'
      Size = 50
    end
    object qryEmpresaCLI_VND_VISTA: TIntegerField
      FieldName = 'CLI_VND_VISTA'
      Origin = '"SIS_EMPRESAS"."CLI_VND_VISTA"'
    end
    object qryEmpresaDT_ULT_VENDA: TDateTimeField
      FieldName = 'DT_ULT_VENDA'
      Origin = '"SIS_EMPRESAS"."DT_ULT_VENDA"'
    end
    object qryEmpresaCUSTO_VARIAVEL: TFloatField
      FieldName = 'CUSTO_VARIAVEL'
      Origin = '"SIS_EMPRESAS"."CUSTO_VARIAVEL"'
    end
    object qryEmpresaVENDEDOR: TFloatField
      FieldName = 'VENDEDOR'
      Origin = '"SIS_EMPRESAS"."VENDEDOR"'
    end
    object qryEmpresaPROPAGANDA: TFloatField
      FieldName = 'PROPAGANDA'
      Origin = '"SIS_EMPRESAS"."PROPAGANDA"'
    end
    object qryEmpresaDESCONTOS: TFloatField
      FieldName = 'DESCONTOS'
      Origin = '"SIS_EMPRESAS"."DESCONTOS"'
    end
    object qryEmpresaPG_COM_TERC: TIBStringField
      FieldName = 'PG_COM_TERC'
      Origin = '"SIS_EMPRESAS"."PG_COM_TERC"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaPDV_NATUREZA: TIntegerField
      FieldName = 'PDV_NATUREZA'
      Origin = '"SIS_EMPRESAS"."PDV_NATUREZA"'
    end
    object qryEmpresaPDV_TIPODOCTO: TIBStringField
      FieldName = 'PDV_TIPODOCTO'
      Origin = '"SIS_EMPRESAS"."PDV_TIPODOCTO"'
      FixedChar = True
      Size = 3
    end
    object qryEmpresaPDV_LOCALCOBRANCA: TIntegerField
      FieldName = 'PDV_LOCALCOBRANCA'
      Origin = '"SIS_EMPRESAS"."PDV_LOCALCOBRANCA"'
    end
    object qryEmpresaDIG_DESC_VENDA: TIBStringField
      FieldName = 'DIG_DESC_VENDA'
      Origin = '"SIS_EMPRESAS"."DIG_DESC_VENDA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaDIG_CHEQUE_VENDA: TIBStringField
      FieldName = 'DIG_CHEQUE_VENDA'
      Origin = '"SIS_EMPRESAS"."DIG_CHEQUE_VENDA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaPDV_MSG1: TIBStringField
      FieldName = 'PDV_MSG1'
      Origin = '"SIS_EMPRESAS"."PDV_MSG1"'
      Size = 80
    end
    object qryEmpresaPDV_MSG2: TIBStringField
      FieldName = 'PDV_MSG2'
      Origin = '"SIS_EMPRESAS"."PDV_MSG2"'
      Size = 80
    end
    object qryEmpresaPDV_MSG3: TIBStringField
      FieldName = 'PDV_MSG3'
      Origin = '"SIS_EMPRESAS"."PDV_MSG3"'
      Size = 80
    end
    object qryEmpresaPDV_MSG4: TIBStringField
      FieldName = 'PDV_MSG4'
      Origin = '"SIS_EMPRESAS"."PDV_MSG4"'
      Size = 80
    end
    object qryEmpresaPDV_MSG5: TIBStringField
      FieldName = 'PDV_MSG5'
      Origin = '"SIS_EMPRESAS"."PDV_MSG5"'
      Size = 80
    end
    object qryEmpresaPDV_ECF: TIBStringField
      FieldName = 'PDV_ECF'
      Origin = '"SIS_EMPRESAS"."PDV_ECF"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaPDV_MAIORVALORUNIT: TFloatField
      FieldName = 'PDV_MAIORVALORUNIT'
      Origin = '"SIS_EMPRESAS"."PDV_MAIORVALORUNIT"'
    end
    object qryEmpresaPDV_SENHA: TIBStringField
      FieldName = 'PDV_SENHA'
      Origin = '"SIS_EMPRESAS"."PDV_SENHA"'
      Size = 10
    end
    object qryEmpresaLOCAL_FATURA: TIBStringField
      FieldName = 'LOCAL_FATURA'
      Origin = '"SIS_EMPRESAS"."LOCAL_FATURA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaECF_ULTNUMERO: TIntegerField
      FieldName = 'ECF_ULTNUMERO'
      Origin = '"SIS_EMPRESAS"."ECF_ULTNUMERO"'
    end
    object qryEmpresaDIG_UNIDADE_VENDA: TIBStringField
      FieldName = 'DIG_UNIDADE_VENDA'
      Origin = '"SIS_EMPRESAS"."DIG_UNIDADE_VENDA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaPDV_PARCELA_VENDA: TIBStringField
      FieldName = 'PDV_PARCELA_VENDA'
      Origin = '"SIS_EMPRESAS"."PDV_PARCELA_VENDA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaSELAGRUPADOR: TIBStringField
      FieldName = 'SELAGRUPADOR'
      Origin = '"SIS_EMPRESAS"."SELAGRUPADOR"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaPDV_ELIMINA_ZEROS: TIBStringField
      FieldName = 'PDV_ELIMINA_ZEROS'
      Origin = '"SIS_EMPRESAS"."PDV_ELIMINA_ZEROS"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaTIPO_CONSULTA_PROD: TIBStringField
      FieldName = 'TIPO_CONSULTA_PROD'
      Origin = '"SIS_EMPRESAS"."TIPO_CONSULTA_PROD"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaPDV_ACRESCENTA_ZEROS: TIBStringField
      FieldName = 'PDV_ACRESCENTA_ZEROS'
      Origin = '"SIS_EMPRESAS"."PDV_ACRESCENTA_ZEROS"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCARREGAR_ARQUIVOS: TIBStringField
      FieldName = 'CARREGAR_ARQUIVOS'
      Origin = '"SIS_EMPRESAS"."CARREGAR_ARQUIVOS"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaVER_VENDAS_ENVIADAS: TIBStringField
      FieldName = 'VER_VENDAS_ENVIADAS'
      Origin = '"SIS_EMPRESAS"."VER_VENDAS_ENVIADAS"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCHM_LOCPROD_INEXISTENTE: TIBStringField
      FieldName = 'CHM_LOCPROD_INEXISTENTE'
      Origin = '"SIS_EMPRESAS"."CHM_LOCPROD_INEXISTENTE"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaPDV_F4_ALTERACLIENTE: TIBStringField
      FieldName = 'PDV_F4_ALTERACLIENTE'
      Origin = '"SIS_EMPRESAS"."PDV_F4_ALTERACLIENTE"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaDIG_SENHA_VENDEDOR: TIBStringField
      FieldName = 'DIG_SENHA_VENDEDOR'
      Origin = '"SIS_EMPRESAS"."DIG_SENHA_VENDEDOR"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCOR_FUNDO_SELECIONADO: TIBStringField
      FieldName = 'COR_FUNDO_SELECIONADO'
      Origin = '"SIS_EMPRESAS"."COR_FUNDO_SELECIONADO"'
      Size = 15
    end
    object qryEmpresaNUM_REG_LOAD: TIntegerField
      FieldName = 'NUM_REG_LOAD'
      Origin = '"SIS_EMPRESAS"."NUM_REG_LOAD"'
    end
    object qryEmpresaPDV_DIGITA_QUANTIDADE: TIBStringField
      FieldName = 'PDV_DIGITA_QUANTIDADE'
      Origin = '"SIS_EMPRESAS"."PDV_DIGITA_QUANTIDADE"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCOR_FUNDO_DESELECIONADO: TIBStringField
      FieldName = 'COR_FUNDO_DESELECIONADO'
      Origin = '"SIS_EMPRESAS"."COR_FUNDO_DESELECIONADO"'
      Size = 15
    end
    object qryEmpresaCX_PAGAR_CAIXA: TIBStringField
      FieldName = 'CX_PAGAR_CAIXA'
      Origin = '"SIS_EMPRESAS"."CX_PAGAR_CAIXA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCX_RECEBER_CAIXA: TIBStringField
      FieldName = 'CX_RECEBER_CAIXA'
      Origin = '"SIS_EMPRESAS"."CX_RECEBER_CAIXA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaEXT_LANC_CAIXA_FECHADO: TIBStringField
      FieldName = 'EXT_LANC_CAIXA_FECHADO'
      Origin = '"SIS_EMPRESAS"."EXT_LANC_CAIXA_FECHADO"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaNUM_MAX_ITENS: TIntegerField
      FieldName = 'NUM_MAX_ITENS'
      Origin = '"SIS_EMPRESAS"."NUM_MAX_ITENS"'
    end
    object qryEmpresaIMP_UNIT_ORC: TIBStringField
      FieldName = 'IMP_UNIT_ORC'
      Origin = '"SIS_EMPRESAS"."IMP_UNIT_ORC"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaDUPLICATA: TIntegerField
      FieldName = 'DUPLICATA'
      Origin = '"SIS_EMPRESAS"."DUPLICATA"'
    end
    object qryEmpresaBLQQTDEFISCAL: TIBStringField
      FieldName = 'BLQQTDEFISCAL'
      Origin = '"SIS_EMPRESAS"."BLQQTDEFISCAL"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaNUM_MAX_ITENS_ORC: TIntegerField
      FieldName = 'NUM_MAX_ITENS_ORC'
      Origin = '"SIS_EMPRESAS"."NUM_MAX_ITENS_ORC"'
    end
    object qryEmpresaALTERA_PRECO_VENDA_ENT: TIBStringField
      FieldName = 'ALTERA_PRECO_VENDA_ENT'
      Origin = '"SIS_EMPRESAS"."ALTERA_PRECO_VENDA_ENT"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaTIPO_EMPRESA: TIBStringField
      FieldName = 'TIPO_EMPRESA'
      Origin = '"SIS_EMPRESAS"."TIPO_EMPRESA"'
      Size = 30
    end
    object qryEmpresaDIG_CARTAO_VENDA: TIBStringField
      FieldName = 'DIG_CARTAO_VENDA'
      Origin = '"SIS_EMPRESAS"."DIG_CARTAO_VENDA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaPIS: TFloatField
      FieldName = 'PIS'
      Origin = '"SIS_EMPRESAS"."PIS"'
    end
    object qryEmpresaCOFINS: TFloatField
      FieldName = 'COFINS'
      Origin = '"SIS_EMPRESAS"."COFINS"'
    end
    object qryEmpresaDIGITA_NUM_NOTA: TIBStringField
      FieldName = 'DIGITA_NUM_NOTA'
      Origin = '"SIS_EMPRESAS"."DIGITA_NUM_NOTA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaDIGITA_COTACOES: TIBStringField
      FieldName = 'DIGITA_COTACOES'
      Origin = '"SIS_EMPRESAS"."DIGITA_COTACOES"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = '"SIS_EMPRESAS"."FOTO"'
      Size = 100
    end
    object qryEmpresaLOJA_DESC_AVISTA: TFloatField
      FieldName = 'LOJA_DESC_AVISTA'
      Origin = '"SIS_EMPRESAS"."LOJA_DESC_AVISTA"'
    end
    object qryEmpresaITENS_ORCAMENTO: TIntegerField
      FieldName = 'ITENS_ORCAMENTO'
      Origin = '"SIS_EMPRESAS"."ITENS_ORCAMENTO"'
    end
    object qryEmpresaIMPRIME_CABEC_2FOL: TIBStringField
      FieldName = 'IMPRIME_CABEC_2FOL'
      Origin = '"SIS_EMPRESAS"."IMPRIME_CABEC_2FOL"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaIMPRIME_DESCONTO_AGRUPADO: TIBStringField
      FieldName = 'IMPRIME_DESCONTO_AGRUPADO'
      Origin = '"SIS_EMPRESAS"."IMPRIME_DESCONTO_AGRUPADO"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaIMPRIME_RODAPE_ORCAMENTO: TIBStringField
      FieldName = 'IMPRIME_RODAPE_ORCAMENTO'
      Origin = '"SIS_EMPRESAS"."IMPRIME_RODAPE_ORCAMENTO"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaTIPO_CUSTO: TIBStringField
      FieldName = 'TIPO_CUSTO'
      Origin = '"SIS_EMPRESAS"."TIPO_CUSTO"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaTIPO_ORCAMENTO: TIBStringField
      FieldName = 'TIPO_ORCAMENTO'
      Origin = '"SIS_EMPRESAS"."TIPO_ORCAMENTO"'
      Size = 10
    end
    object qryEmpresaSELECIONA_IMPRESSORA: TIBStringField
      FieldName = 'SELECIONA_IMPRESSORA'
      Origin = '"SIS_EMPRESAS"."SELECIONA_IMPRESSORA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCX_COMP_SLD_ANT: TIBStringField
      FieldName = 'CX_COMP_SLD_ANT'
      Origin = '"SIS_EMPRESAS"."CX_COMP_SLD_ANT"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCX_IMP_VND_AGRUPADA: TIBStringField
      FieldName = 'CX_IMP_VND_AGRUPADA'
      Origin = '"SIS_EMPRESAS"."CX_IMP_VND_AGRUPADA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaMENS2_ECF: TIBStringField
      FieldName = 'MENS2_ECF'
      Origin = '"SIS_EMPRESAS"."MENS2_ECF"'
      Size = 50
    end
    object qryEmpresaCX_TRANSP_SLD_ANT: TIBStringField
      FieldName = 'CX_TRANSP_SLD_ANT'
      Origin = '"SIS_EMPRESAS"."CX_TRANSP_SLD_ANT"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaMENS3_ECF: TIBStringField
      FieldName = 'MENS3_ECF'
      Origin = '"SIS_EMPRESAS"."MENS3_ECF"'
      Size = 50
    end
    object qryEmpresaTIPO_CAB_FATURA: TIBStringField
      FieldName = 'TIPO_CAB_FATURA'
      Origin = '"SIS_EMPRESAS"."TIPO_CAB_FATURA"'
      FixedChar = True
      Size = 3
    end
    object qryEmpresaTIPO_CONTAGEM: TIBStringField
      FieldName = 'TIPO_CONTAGEM'
      Origin = '"SIS_EMPRESAS"."TIPO_CONTAGEM"'
      FixedChar = True
      Size = 3
    end
    object qryEmpresaIMP_CASAS_QNTDE_FATURA: TIBStringField
      FieldName = 'IMP_CASAS_QNTDE_FATURA'
      Origin = '"SIS_EMPRESAS"."IMP_CASAS_QNTDE_FATURA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaVALIDA_DOCUMENTOS: TIBStringField
      FieldName = 'VALIDA_DOCUMENTOS'
      Origin = '"SIS_EMPRESAS"."VALIDA_DOCUMENTOS"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaNUMERO_ZEROS: TIntegerField
      FieldName = 'NUMERO_ZEROS'
      Origin = '"SIS_EMPRESAS"."NUMERO_ZEROS"'
    end
    object qryEmpresaPST_MOSTRA_ENTRADAS: TIBStringField
      FieldName = 'PST_MOSTRA_ENTRADAS'
      Origin = '"SIS_EMPRESAS"."PST_MOSTRA_ENTRADAS"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaTROCO_MAXIMO: TFloatField
      FieldName = 'TROCO_MAXIMO'
      Origin = '"SIS_EMPRESAS"."TROCO_MAXIMO"'
    end
    object qryEmpresaMASCARA_FONE: TIBStringField
      FieldName = 'MASCARA_FONE'
      Origin = '"SIS_EMPRESAS"."MASCARA_FONE"'
      Size = 30
    end
    object qryEmpresaCTB_JUROS_RECEBIDOS_REC: TIntegerField
      FieldName = 'CTB_JUROS_RECEBIDOS_REC'
      Origin = '"SIS_EMPRESAS"."CTB_JUROS_RECEBIDOS_REC"'
    end
    object qryEmpresaPDV_REPETE_PRODUTOS: TIBStringField
      FieldName = 'PDV_REPETE_PRODUTOS'
      Origin = '"SIS_EMPRESAS"."PDV_REPETE_PRODUTOS"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaIMPRIME_SUBTOTAL_ORCAMENTO: TIBStringField
      FieldName = 'IMPRIME_SUBTOTAL_ORCAMENTO'
      Origin = '"SIS_EMPRESAS"."IMPRIME_SUBTOTAL_ORCAMENTO"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaEMBUTIR_JUROS_IMPRESSOES: TIBStringField
      FieldName = 'EMBUTIR_JUROS_IMPRESSOES'
      Origin = '"SIS_EMPRESAS"."EMBUTIR_JUROS_IMPRESSOES"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaMASCARA_PRODUTOS_ENT: TIBStringField
      FieldName = 'MASCARA_PRODUTOS_ENT'
      Origin = '"SIS_EMPRESAS"."MASCARA_PRODUTOS_ENT"'
      Size = 15
    end
    object qryEmpresaPDV_IMP_VINC_VALOR: TIBStringField
      FieldName = 'PDV_IMP_VINC_VALOR'
      Origin = '"SIS_EMPRESAS"."PDV_IMP_VINC_VALOR"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaPDV_PROPRIEDADE: TIBStringField
      FieldName = 'PDV_PROPRIEDADE'
      Origin = '"SIS_EMPRESAS"."PDV_PROPRIEDADE"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaPST_SENHA_CAIXA: TIBStringField
      FieldName = 'PST_SENHA_CAIXA'
      Origin = '"SIS_EMPRESAS"."PST_SENHA_CAIXA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaIMPRIMIR_POSICOES: TIBStringField
      FieldName = 'IMPRIMIR_POSICOES'
      Origin = '"SIS_EMPRESAS"."IMPRIMIR_POSICOES"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaSINCRONIZAR_BOL_DPL: TIBStringField
      FieldName = 'SINCRONIZAR_BOL_DPL'
      Origin = '"SIS_EMPRESAS"."SINCRONIZAR_BOL_DPL"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCOMISSAO_POR_FAIXA: TIBStringField
      FieldName = 'COMISSAO_POR_FAIXA'
      Origin = '"SIS_EMPRESAS"."COMISSAO_POR_FAIXA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCONTA_CARTAO_CAIXA: TIntegerField
      FieldName = 'CONTA_CARTAO_CAIXA'
      Origin = '"SIS_EMPRESAS"."CONTA_CARTAO_CAIXA"'
    end
    object qryEmpresaDIGITA_VENDEDOR_PDV: TIBStringField
      FieldName = 'DIGITA_VENDEDOR_PDV'
      Origin = '"SIS_EMPRESAS"."DIGITA_VENDEDOR_PDV"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCOMISSAO_NORMAL: TIBStringField
      FieldName = 'COMISSAO_NORMAL'
      Origin = '"SIS_EMPRESAS"."COMISSAO_NORMAL"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaULTIMO_TURNO: TIntegerField
      FieldName = 'ULTIMO_TURNO'
      Origin = '"SIS_EMPRESAS"."ULTIMO_TURNO"'
    end
    object qryEmpresaIP_EXTERNO: TIBStringField
      FieldName = 'IP_EXTERNO'
      Origin = '"SIS_EMPRESAS"."IP_EXTERNO"'
      Size = 15
    end
    object qryEmpresaCAMINHO_EXTERNO: TIBStringField
      FieldName = 'CAMINHO_EXTERNO'
      Origin = '"SIS_EMPRESAS"."CAMINHO_EXTERNO"'
      Size = 50
    end
    object qryEmpresaSENHA_EMPRESA_EXTERNA: TIBStringField
      FieldName = 'SENHA_EMPRESA_EXTERNA'
      Origin = '"SIS_EMPRESAS"."SENHA_EMPRESA_EXTERNA"'
      Size = 10
    end
    object qryEmpresaUTILIZA_DOCTOS_INT_ENTR: TIBStringField
      FieldName = 'UTILIZA_DOCTOS_INT_ENTR'
      Origin = '"SIS_EMPRESAS"."UTILIZA_DOCTOS_INT_ENTR"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCONF_DUPLIC_REC_LANCTO: TIBStringField
      FieldName = 'CONF_DUPLIC_REC_LANCTO'
      Origin = '"SIS_EMPRESAS"."CONF_DUPLIC_REC_LANCTO"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaSIS_MENSAGEM_INTERNA: TIBStringField
      FieldName = 'SIS_MENSAGEM_INTERNA'
      Origin = '"SIS_EMPRESAS"."SIS_MENSAGEM_INTERNA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaMENSAGEM_CONDICIONAL: TIBStringField
      FieldName = 'MENSAGEM_CONDICIONAL'
      Origin = '"SIS_EMPRESAS"."MENSAGEM_CONDICIONAL"'
      Size = 50
    end
    object qryEmpresaFAT_TIPO_PARCELAMENTO: TIBStringField
      FieldName = 'FAT_TIPO_PARCELAMENTO'
      Origin = '"SIS_EMPRESAS"."FAT_TIPO_PARCELAMENTO"'
      FixedChar = True
      Size = 3
    end
    object qryEmpresaFAZ_FECHAMENTO_DIARIO: TIBStringField
      FieldName = 'FAZ_FECHAMENTO_DIARIO'
      Origin = '"SIS_EMPRESAS"."FAZ_FECHAMENTO_DIARIO"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaATUALIZA_ARQ_EXTERNO: TIBStringField
      FieldName = 'ATUALIZA_ARQ_EXTERNO'
      Origin = '"SIS_EMPRESAS"."ATUALIZA_ARQ_EXTERNO"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCAIXA_SINCRONIZADO: TIBStringField
      FieldName = 'CAIXA_SINCRONIZADO'
      Origin = '"SIS_EMPRESAS"."CAIXA_SINCRONIZADO"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaICM_PRESUMIDO_IPI: TFloatField
      FieldName = 'ICM_PRESUMIDO_IPI'
      Origin = '"SIS_EMPRESAS"."ICM_PRESUMIDO_IPI"'
    end
    object qryEmpresaICM_PRESUMIDO_SEM_IPI: TFloatField
      FieldName = 'ICM_PRESUMIDO_SEM_IPI'
      Origin = '"SIS_EMPRESAS"."ICM_PRESUMIDO_SEM_IPI"'
    end
    object qryEmpresaALT_PRCVEND_MARGEM: TIBStringField
      FieldName = 'ALT_PRCVEND_MARGEM'
      Origin = '"SIS_EMPRESAS"."ALT_PRCVEND_MARGEM"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaBLQ_VENDA_SEM_IERG: TIBStringField
      FieldName = 'BLQ_VENDA_SEM_IERG'
      Origin = '"SIS_EMPRESAS"."BLQ_VENDA_SEM_IERG"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaPDV_UNITARIO_ZERADO: TIBStringField
      FieldName = 'PDV_UNITARIO_ZERADO'
      Origin = '"SIS_EMPRESAS"."PDV_UNITARIO_ZERADO"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaDIRETORIO_TEF: TIBStringField
      FieldName = 'DIRETORIO_TEF'
      Origin = '"SIS_EMPRESAS"."DIRETORIO_TEF"'
      Size = 50
    end
    object qryEmpresaIMPRIME_NF_BALCAO: TIBStringField
      FieldName = 'IMPRIME_NF_BALCAO'
      Origin = '"SIS_EMPRESAS"."IMPRIME_NF_BALCAO"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaTRANSF_VLRS_CAIXA: TIBStringField
      FieldName = 'TRANSF_VLRS_CAIXA'
      Origin = '"SIS_EMPRESAS"."TRANSF_VLRS_CAIXA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaLOCAL_FATURA_TROCA: TIBStringField
      FieldName = 'LOCAL_FATURA_TROCA'
      Origin = '"SIS_EMPRESAS"."LOCAL_FATURA_TROCA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaEST_ET_PROD_GRD1: TMemoField
      FieldName = 'EST_ET_PROD_GRD1'
      Origin = '"SIS_EMPRESAS"."EST_ET_PROD_GRD1"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryEmpresaEST_ET_PROD_GRD2: TMemoField
      FieldName = 'EST_ET_PROD_GRD2'
      Origin = '"SIS_EMPRESAS"."EST_ET_PROD_GRD2"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryEmpresaEST_ET_PROD_GRD3: TMemoField
      FieldName = 'EST_ET_PROD_GRD3'
      Origin = '"SIS_EMPRESAS"."EST_ET_PROD_GRD3"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryEmpresaEST_ET_PROD_GRD3_PARC: TMemoField
      FieldName = 'EST_ET_PROD_GRD3_PARC'
      Origin = '"SIS_EMPRESAS"."EST_ET_PROD_GRD3_PARC"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryEmpresaEST_ET_PROD_GRD3_DESCTO: TMemoField
      FieldName = 'EST_ET_PROD_GRD3_DESCTO'
      Origin = '"SIS_EMPRESAS"."EST_ET_PROD_GRD3_DESCTO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryEmpresaEST_ET_PROD_GRD4: TMemoField
      FieldName = 'EST_ET_PROD_GRD4'
      Origin = '"SIS_EMPRESAS"."EST_ET_PROD_GRD4"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryEmpresaCH_INFLUENCIA_VENDA: TIBStringField
      FieldName = 'CH_INFLUENCIA_VENDA'
      Origin = '"SIS_EMPRESAS"."CH_INFLUENCIA_VENDA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCRT_INFLUENCIA_VENDA: TIBStringField
      FieldName = 'CRT_INFLUENCIA_VENDA'
      Origin = '"SIS_EMPRESAS"."CRT_INFLUENCIA_VENDA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaIMP_SERIE_NF: TIBStringField
      FieldName = 'IMP_SERIE_NF'
      Origin = '"SIS_EMPRESAS"."IMP_SERIE_NF"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCONFIG_SERIE_NF: TMemoField
      FieldName = 'CONFIG_SERIE_NF'
      Origin = '"SIS_EMPRESAS"."CONFIG_SERIE_NF"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryEmpresaCONFIG_CT13: TMemoField
      FieldName = 'CONFIG_CT13'
      Origin = '"SIS_EMPRESAS"."CONFIG_CT13"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryEmpresaCONFIG_MALADIRETA: TMemoField
      FieldName = 'CONFIG_MALADIRETA'
      Origin = '"SIS_EMPRESAS"."CONFIG_MALADIRETA"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryEmpresaGERA_BOLETOS: TIBStringField
      FieldName = 'GERA_BOLETOS'
      Origin = '"SIS_EMPRESAS"."GERA_BOLETOS"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaBLT_INSTRUCAO: TMemoField
      FieldName = 'BLT_INSTRUCAO'
      Origin = '"SIS_EMPRESAS"."BLT_INSTRUCAO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryEmpresaBLT_LOCAL_PAGTO: TIBStringField
      FieldName = 'BLT_LOCAL_PAGTO'
      Origin = '"SIS_EMPRESAS"."BLT_LOCAL_PAGTO"'
      Size = 200
    end
    object qryEmpresaBLT_COD_CEDENTE: TIntegerField
      FieldName = 'BLT_COD_CEDENTE'
      Origin = '"SIS_EMPRESAS"."BLT_COD_CEDENTE"'
    end
    object qryEmpresaBLT_DIG_COD_CEDENTE: TIBStringField
      FieldName = 'BLT_DIG_COD_CEDENTE'
      Origin = '"SIS_EMPRESAS"."BLT_DIG_COD_CEDENTE"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaBLT_AGENCIA: TIBStringField
      FieldName = 'BLT_AGENCIA'
      Origin = '"SIS_EMPRESAS"."BLT_AGENCIA"'
      Size = 10
    end
    object qryEmpresaBLT_DIG_AGENCIA: TIBStringField
      FieldName = 'BLT_DIG_AGENCIA'
      Origin = '"SIS_EMPRESAS"."BLT_DIG_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaBLT_CONVENIO: TIntegerField
      FieldName = 'BLT_CONVENIO'
      Origin = '"SIS_EMPRESAS"."BLT_CONVENIO"'
    end
    object qryEmpresaBLT_CONTA: TIBStringField
      FieldName = 'BLT_CONTA'
      Origin = '"SIS_EMPRESAS"."BLT_CONTA"'
      Size = 10
    end
    object qryEmpresaBLT_DIG_CONTA: TIBStringField
      FieldName = 'BLT_DIG_CONTA'
      Origin = '"SIS_EMPRESAS"."BLT_DIG_CONTA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaBLT_CARTEIRA: TIBStringField
      FieldName = 'BLT_CARTEIRA'
      Origin = '"SIS_EMPRESAS"."BLT_CARTEIRA"'
      Size = 10
    end
    object qryEmpresaBLT_LAYOUT: TSmallintField
      FieldName = 'BLT_LAYOUT'
      Origin = '"SIS_EMPRESAS"."BLT_LAYOUT"'
    end
    object qryEmpresaBLT_ACEITE_DOCTO: TIBStringField
      FieldName = 'BLT_ACEITE_DOCTO'
      Origin = '"SIS_EMPRESAS"."BLT_ACEITE_DOCTO"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaBLT_DIAS_ABATIMENTO: TIBStringField
      FieldName = 'BLT_DIAS_ABATIMENTO'
      Origin = '"SIS_EMPRESAS"."BLT_DIAS_ABATIMENTO"'
      FixedChar = True
      Size = 14
    end
    object qryEmpresaBLT_DIAS_DESCONTO: TIntegerField
      FieldName = 'BLT_DIAS_DESCONTO'
      Origin = '"SIS_EMPRESAS"."BLT_DIAS_DESCONTO"'
    end
    object qryEmpresaBLT_DIAS_MORA_JUROS: TIntegerField
      FieldName = 'BLT_DIAS_MORA_JUROS'
      Origin = '"SIS_EMPRESAS"."BLT_DIAS_MORA_JUROS"'
    end
    object qryEmpresaBLT_DIAS_PROTESTO: TIntegerField
      FieldName = 'BLT_DIAS_PROTESTO'
      Origin = '"SIS_EMPRESAS"."BLT_DIAS_PROTESTO"'
    end
    object qryEmpresaBLT_PCT_ABATIMENTO: TFloatField
      FieldName = 'BLT_PCT_ABATIMENTO'
      Origin = '"SIS_EMPRESAS"."BLT_PCT_ABATIMENTO"'
    end
    object qryEmpresaBLT_PCT_DESCONTO: TFloatField
      FieldName = 'BLT_PCT_DESCONTO'
      Origin = '"SIS_EMPRESAS"."BLT_PCT_DESCONTO"'
    end
    object qryEmpresaDESP_BANCARIA: TFloatField
      FieldName = 'DESP_BANCARIA'
      Origin = '"SIS_EMPRESAS"."DESP_BANCARIA"'
    end
    object qryEmpresaMORA_DIARIA: TFloatField
      FieldName = 'MORA_DIARIA'
      Origin = '"SIS_EMPRESAS"."MORA_DIARIA"'
    end
    object qryEmpresaBLT_VLR_IOF: TFloatField
      FieldName = 'BLT_VLR_IOF'
      Origin = '"SIS_EMPRESAS"."BLT_VLR_IOF"'
    end
    object qryEmpresaBLT_VLR_OUTRAS_DESP: TFloatField
      FieldName = 'BLT_VLR_OUTRAS_DESP'
      Origin = '"SIS_EMPRESAS"."BLT_VLR_OUTRAS_DESP"'
    end
    object qryEmpresaBLT_DIR_REMESSA: TIBStringField
      FieldName = 'BLT_DIR_REMESSA'
      Origin = '"SIS_EMPRESAS"."BLT_DIR_REMESSA"'
      Size = 200
    end
    object qryEmpresaBLT_DIR_RETORNO: TIBStringField
      FieldName = 'BLT_DIR_RETORNO'
      Origin = '"SIS_EMPRESAS"."BLT_DIR_RETORNO"'
      Size = 200
    end
    object qryEmpresaDESCONTO_MAXIMO: TFloatField
      FieldName = 'DESCONTO_MAXIMO'
      Origin = '"SIS_EMPRESAS"."DESCONTO_MAXIMO"'
    end
    object qryEmpresaCONFIG_NF_SERV: TMemoField
      FieldName = 'CONFIG_NF_SERV'
      Origin = '"SIS_EMPRESAS"."CONFIG_NF_SERV"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryEmpresaDIG_ITENS_NF: TSmallintField
      FieldName = 'DIG_ITENS_NF'
      Origin = '"SIS_EMPRESAS"."DIG_ITENS_NF"'
    end
    object qryEmpresaVALIDA_ABERTURA_CX: TIBStringField
      FieldName = 'VALIDA_ABERTURA_CX'
      Origin = '"SIS_EMPRESAS"."VALIDA_ABERTURA_CX"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCONTROLE_PEDIDO_RESTAURANTE: TIBStringField
      FieldName = 'CONTROLE_PEDIDO_RESTAURANTE'
      Origin = '"SIS_EMPRESAS"."CONTROLE_PEDIDO_RESTAURANTE"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaDB_VERSAO: TIntegerField
      FieldName = 'DB_VERSAO'
      Origin = '"SIS_EMPRESAS"."DB_VERSAO"'
    end
    object qryEmpresaTAXA_ACRESC_PDV: TFloatField
      FieldName = 'TAXA_ACRESC_PDV'
      Origin = '"SIS_EMPRESAS"."TAXA_ACRESC_PDV"'
    end
    object qryEmpresaMSG_PDVTELA: TIBStringField
      FieldName = 'MSG_PDVTELA'
      Origin = '"SIS_EMPRESAS"."MSG_PDVTELA"'
      Size = 200
    end
    object qryEmpresaCONTAGEM_INCREMENTAL: TIBStringField
      FieldName = 'CONTAGEM_INCREMENTAL'
      Origin = '"SIS_EMPRESAS"."CONTAGEM_INCREMENTAL"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaEXIBE_MOD: TIBStringField
      FieldName = 'EXIBE_MOD'
      Origin = '"SIS_EMPRESAS"."EXIBE_MOD"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaEXIBE_PENDENCIA: TIBStringField
      FieldName = 'EXIBE_PENDENCIA'
      Origin = '"SIS_EMPRESAS"."EXIBE_PENDENCIA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaKEY_RELEASE: TIBStringField
      FieldName = 'KEY_RELEASE'
      Origin = '"SIS_EMPRESAS"."KEY_RELEASE"'
      Size = 50
    end
    object qryEmpresaEXIBE_MESAS: TIBStringField
      FieldName = 'EXIBE_MESAS'
      Origin = '"SIS_EMPRESAS"."EXIBE_MESAS"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaEXIBE_CTB: TIBStringField
      FieldName = 'EXIBE_CTB'
      Origin = '"SIS_EMPRESAS"."EXIBE_CTB"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaEXIBE_CB: TIBStringField
      FieldName = 'EXIBE_CB'
      Origin = '"SIS_EMPRESAS"."EXIBE_CB"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaEXIBE_SRV: TIBStringField
      FieldName = 'EXIBE_SRV'
      Origin = '"SIS_EMPRESAS"."EXIBE_SRV"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCARREGAMENTO_PARCIAL: TIBStringField
      FieldName = 'CARREGAMENTO_PARCIAL'
      Origin = '"SIS_EMPRESAS"."CARREGAMENTO_PARCIAL"'
      Size = 8
    end
    object qryEmpresaCONFIG_NF_GRAF: TMemoField
      FieldName = 'CONFIG_NF_GRAF'
      Origin = '"SIS_EMPRESAS"."CONFIG_NF_GRAF"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryEmpresaBLT_EMAIL_SERVIDOR: TIBStringField
      FieldName = 'BLT_EMAIL_SERVIDOR'
      Origin = '"SIS_EMPRESAS"."BLT_EMAIL_SERVIDOR"'
      Size = 50
    end
    object qryEmpresaBLT_EMAIL_PORTA: TSmallintField
      FieldName = 'BLT_EMAIL_PORTA'
      Origin = '"SIS_EMPRESAS"."BLT_EMAIL_PORTA"'
    end
    object qryEmpresaBLT_EMAIL_USER: TIBStringField
      FieldName = 'BLT_EMAIL_USER'
      Origin = '"SIS_EMPRESAS"."BLT_EMAIL_USER"'
      Size = 50
    end
    object qryEmpresaBLT_EMAIL_SENHA: TIBStringField
      FieldName = 'BLT_EMAIL_SENHA'
      Origin = '"SIS_EMPRESAS"."BLT_EMAIL_SENHA"'
      Size = 50
    end
    object qryEmpresaBLT_NOSSO_NUM_INI: TIntegerField
      FieldName = 'BLT_NOSSO_NUM_INI'
      Origin = '"SIS_EMPRESAS"."BLT_NOSSO_NUM_INI"'
    end
    object qryEmpresaBLT_NOSSO_NUM_FIM: TIntegerField
      FieldName = 'BLT_NOSSO_NUM_FIM'
      Origin = '"SIS_EMPRESAS"."BLT_NOSSO_NUM_FIM"'
    end
    object qryEmpresaBLT_NOSSO_NUM_PROX: TIntegerField
      FieldName = 'BLT_NOSSO_NUM_PROX'
      Origin = '"SIS_EMPRESAS"."BLT_NOSSO_NUM_PROX"'
    end
    object qryEmpresaEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"SIS_EMPRESAS"."EMAIL"'
      Size = 50
    end
    object qryEmpresaBLT_MULTA: TFloatField
      FieldName = 'BLT_MULTA'
      Origin = '"SIS_EMPRESAS"."BLT_MULTA"'
    end
    object qryEmpresaCONFIG_COPIA_CHEQUE: TMemoField
      FieldName = 'CONFIG_COPIA_CHEQUE'
      Origin = '"SIS_EMPRESAS"."CONFIG_COPIA_CHEQUE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryEmpresaCONFIG_SERIE_ORC_NF: TMemoField
      FieldName = 'CONFIG_SERIE_ORC_NF'
      Origin = '"SIS_EMPRESAS"."CONFIG_SERIE_ORC_NF"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryEmpresaCONFIG_REQUISICAO: TMemoField
      FieldName = 'CONFIG_REQUISICAO'
      Origin = '"SIS_EMPRESAS"."CONFIG_REQUISICAO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryEmpresaCONFIG_CARTA_SCPC: TMemoField
      FieldName = 'CONFIG_CARTA_SCPC'
      Origin = '"SIS_EMPRESAS"."CONFIG_CARTA_SCPC"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryEmpresaATIVA_AGENTE: TIBStringField
      FieldName = 'ATIVA_AGENTE'
      Origin = '"SIS_EMPRESAS"."ATIVA_AGENTE"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaNF_CONTINUO_COM_MESMO_NUM_NF: TIBStringField
      FieldName = 'NF_CONTINUO_COM_MESMO_NUM_NF'
      Origin = '"SIS_EMPRESAS"."NF_CONTINUO_COM_MESMO_NUM_NF"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaNF_CONTINUO_NOME_CAMPO_TRUE: TIBStringField
      FieldName = 'NF_CONTINUO_NOME_CAMPO_TRUE'
      Origin = '"SIS_EMPRESAS"."NF_CONTINUO_NOME_CAMPO_TRUE"'
      Size = 50
    end
    object qryEmpresaCONFIG_CONVENIO_PDV: TMemoField
      FieldName = 'CONFIG_CONVENIO_PDV'
      Origin = '"SIS_EMPRESAS"."CONFIG_CONVENIO_PDV"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryEmpresaIMP_CONVENIO_GRAF: TIBStringField
      FieldName = 'IMP_CONVENIO_GRAF'
      Origin = '"SIS_EMPRESAS"."IMP_CONVENIO_GRAF"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCONFIG_RECIBO: TMemoField
      FieldName = 'CONFIG_RECIBO'
      Origin = '"SIS_EMPRESAS"."CONFIG_RECIBO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryEmpresaNUM_ITENS_NF: TSmallintField
      FieldName = 'NUM_ITENS_NF'
      Origin = '"SIS_EMPRESAS"."NUM_ITENS_NF"'
    end
    object qryEmpresaNUM_ITENS_PDD: TSmallintField
      FieldName = 'NUM_ITENS_PDD'
      Origin = '"SIS_EMPRESAS"."NUM_ITENS_PDD"'
    end
    object qryEmpresaCONFIG_OS: TMemoField
      FieldName = 'CONFIG_OS'
      Origin = '"SIS_EMPRESAS"."CONFIG_OS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryEmpresaOFC_LT_PRODUTO_COPIAS: TIBStringField
      FieldName = 'OFC_LT_PRODUTO_COPIAS'
      Origin = '"SIS_EMPRESAS"."OFC_LT_PRODUTO_COPIAS"'
      Size = 15
    end
    object qryEmpresaEXIBE_AGR: TIBStringField
      FieldName = 'EXIBE_AGR'
      Origin = '"SIS_EMPRESAS"."EXIBE_AGR"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaIE: TIBStringField
      FieldName = 'IE'
      Origin = '"SIS_EMPRESAS"."IE"'
      Size = 15
    end
    object qryEmpresaCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = '"SIS_EMPRESAS"."COD_CIDADE"'
    end
    object qryEmpresaCOD_LOGRADOURO: TIntegerField
      FieldName = 'COD_LOGRADOURO'
      Origin = '"SIS_EMPRESAS"."COD_LOGRADOURO"'
    end
    object qryEmpresaCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
      Origin = '"SIS_EMPRESAS"."COD_BAIRRO"'
    end
    object qryEmpresaEND_NUMERO: TIntegerField
      FieldName = 'END_NUMERO'
      Origin = '"SIS_EMPRESAS"."END_NUMERO"'
    end
    object qryEmpresaEXIBE_CARGA: TIBStringField
      FieldName = 'EXIBE_CARGA'
      Origin = '"SIS_EMPRESAS"."EXIBE_CARGA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaEXIBE_NFE: TIBStringField
      FieldName = 'EXIBE_NFE'
      Origin = '"SIS_EMPRESAS"."EXIBE_NFE"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaEXIBE_SINTEGRA: TIBStringField
      FieldName = 'EXIBE_SINTEGRA'
      Origin = '"SIS_EMPRESAS"."EXIBE_SINTEGRA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaNFE_AMBIENTE: TIBStringField
      FieldName = 'NFE_AMBIENTE'
      Origin = '"SIS_EMPRESAS"."NFE_AMBIENTE"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaNFE_VERSAO_APP: TIBStringField
      FieldName = 'NFE_VERSAO_APP'
      Origin = '"SIS_EMPRESAS"."NFE_VERSAO_APP"'
    end
    object qryEmpresaNFE_DIR_EXPORTACAO: TIBStringField
      FieldName = 'NFE_DIR_EXPORTACAO'
      Origin = '"SIS_EMPRESAS"."NFE_DIR_EXPORTACAO"'
      Size = 200
    end
    object qryEmpresaNFE_LEIAUTE_DANFE: TIBStringField
      FieldName = 'NFE_LEIAUTE_DANFE'
      Origin = '"SIS_EMPRESAS"."NFE_LEIAUTE_DANFE"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaLOCAL_PADRAO: TIBStringField
      FieldName = 'LOCAL_PADRAO'
      Origin = '"SIS_EMPRESAS"."LOCAL_PADRAO"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCONFIG_AGR_RECEITA: TMemoField
      FieldName = 'CONFIG_AGR_RECEITA'
      Origin = '"SIS_EMPRESAS"."CONFIG_AGR_RECEITA"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryEmpresaCONFIG_ACERTO_1: TMemoField
      FieldName = 'CONFIG_ACERTO_1'
      Origin = '"SIS_EMPRESAS"."CONFIG_ACERTO_1"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryEmpresaDESC_BX_PARCIAL: TIBStringField
      FieldName = 'DESC_BX_PARCIAL'
      Origin = '"SIS_EMPRESAS"."DESC_BX_PARCIAL"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCM_AGR: TIBStringField
      FieldName = 'CM_AGR'
      Origin = '"SIS_EMPRESAS"."CM_AGR"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCM_VDT: TIBStringField
      FieldName = 'CM_VDT'
      Origin = '"SIS_EMPRESAS"."CM_VDT"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCMD_VDT_PCT: TFloatField
      FieldName = 'CMD_VDT_PCT'
      Origin = '"SIS_EMPRESAS"."CMD_VDT_PCT"'
    end
    object qryEmpresaPDV_FORMA_PAGTO: TIntegerField
      FieldName = 'PDV_FORMA_PAGTO'
      Origin = '"SIS_EMPRESAS"."PDV_FORMA_PAGTO"'
    end
    object qryEmpresaEXIBE_TBL: TIBStringField
      FieldName = 'EXIBE_TBL'
      Origin = '"SIS_EMPRESAS"."EXIBE_TBL"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaEXIBE_ACERTO_CONTAS: TIBStringField
      FieldName = 'EXIBE_ACERTO_CONTAS'
      Origin = '"SIS_EMPRESAS"."EXIBE_ACERTO_CONTAS"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaEMAIL_PADRAO: TIBStringField
      FieldName = 'EMAIL_PADRAO'
      Origin = '"SIS_EMPRESAS"."EMAIL_PADRAO"'
      Size = 80
    end
    object qryEmpresaSMTP: TIBStringField
      FieldName = 'SMTP'
      Origin = '"SIS_EMPRESAS"."SMTP"'
    end
    object qryEmpresaLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = '"SIS_EMPRESAS"."LOGIN"'
    end
    object qryEmpresaSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"SIS_EMPRESAS"."SENHA"'
    end
    object qryEmpresaNOME_USUARIO: TIBStringField
      FieldName = 'NOME_USUARIO'
      Origin = '"SIS_EMPRESAS"."NOME_USUARIO"'
      Size = 80
    end
    object qryEmpresaEMAIL_CONTROLE: TIBStringField
      FieldName = 'EMAIL_CONTROLE'
      Origin = '"SIS_EMPRESAS"."EMAIL_CONTROLE"'
      Size = 80
    end
    object qryEmpresaEXIBE_MESALIDADES: TIBStringField
      FieldName = 'EXIBE_MESALIDADES'
      Origin = '"SIS_EMPRESAS"."EXIBE_MESALIDADES"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaFORMA_PAGTO_MENSALIDADE: TIntegerField
      FieldName = 'FORMA_PAGTO_MENSALIDADE'
      Origin = '"SIS_EMPRESAS"."FORMA_PAGTO_MENSALIDADE"'
    end
    object qryEmpresaNFE_CERT_CAMINHO: TIBStringField
      FieldName = 'NFE_CERT_CAMINHO'
      Origin = '"SIS_EMPRESAS"."NFE_CERT_CAMINHO"'
      Size = 80
    end
    object qryEmpresaNFE_CERT_SENHA: TIBStringField
      FieldName = 'NFE_CERT_SENHA'
      Origin = '"SIS_EMPRESAS"."NFE_CERT_SENHA"'
      Size = 80
    end
    object qryEmpresaNFE_CERT_NUM_SERIE: TIBStringField
      FieldName = 'NFE_CERT_NUM_SERIE'
      Origin = '"SIS_EMPRESAS"."NFE_CERT_NUM_SERIE"'
      Size = 80
    end
    object qryEmpresaNFE_GER_TP_DANFE: TIBStringField
      FieldName = 'NFE_GER_TP_DANFE'
      Origin = '"SIS_EMPRESAS"."NFE_GER_TP_DANFE"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaNFE_GER_FORMA_EMISSAO: TIBStringField
      FieldName = 'NFE_GER_FORMA_EMISSAO'
      Origin = '"SIS_EMPRESAS"."NFE_GER_FORMA_EMISSAO"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaNFE_GER_PATH_LOGS: TIBStringField
      FieldName = 'NFE_GER_PATH_LOGS'
      Origin = '"SIS_EMPRESAS"."NFE_GER_PATH_LOGS"'
      Size = 80
    end
    object qryEmpresaNFE_GER_IMG_DANFE: TIBStringField
      FieldName = 'NFE_GER_IMG_DANFE'
      Origin = '"SIS_EMPRESAS"."NFE_GER_IMG_DANFE"'
      Size = 80
    end
    object qryEmpresaNFE_WS_UF: TIBStringField
      FieldName = 'NFE_WS_UF'
      Origin = '"SIS_EMPRESAS"."NFE_WS_UF"'
      Size = 2
    end
    object qryEmpresaNFE_WS_AMBIENTE: TIBStringField
      FieldName = 'NFE_WS_AMBIENTE'
      Origin = '"SIS_EMPRESAS"."NFE_WS_AMBIENTE"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaNFE_WS_PROXY_HOST: TIBStringField
      FieldName = 'NFE_WS_PROXY_HOST'
      Origin = '"SIS_EMPRESAS"."NFE_WS_PROXY_HOST"'
    end
    object qryEmpresaNFE_WS_PROXY_PORTA: TIBStringField
      FieldName = 'NFE_WS_PROXY_PORTA'
      Origin = '"SIS_EMPRESAS"."NFE_WS_PROXY_PORTA"'
    end
    object qryEmpresaNFE_WS_PROXY_USUARIO: TIBStringField
      FieldName = 'NFE_WS_PROXY_USUARIO'
      Origin = '"SIS_EMPRESAS"."NFE_WS_PROXY_USUARIO"'
    end
    object qryEmpresaNFE_WS_PROXY_SENHA: TIBStringField
      FieldName = 'NFE_WS_PROXY_SENHA'
      Origin = '"SIS_EMPRESAS"."NFE_WS_PROXY_SENHA"'
    end
    object qryEmpresaNFE_EMIT_CNPJ: TIBStringField
      FieldName = 'NFE_EMIT_CNPJ'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_CNPJ"'
      Size = 80
    end
    object qryEmpresaNFE_EMIT_INSC_ESTADUAL: TIBStringField
      FieldName = 'NFE_EMIT_INSC_ESTADUAL'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_INSC_ESTADUAL"'
      Size = 80
    end
    object qryEmpresaNFE_EMIT_FANTASIA: TIBStringField
      FieldName = 'NFE_EMIT_FANTASIA'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_FANTASIA"'
      Size = 80
    end
    object qryEmpresaNFE_EMIT_FONE: TIBStringField
      FieldName = 'NFE_EMIT_FONE'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_FONE"'
    end
    object qryEmpresaNFE_EMIT_CEP: TIBStringField
      FieldName = 'NFE_EMIT_CEP'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_CEP"'
    end
    object qryEmpresaNFE_EMIT_LOGRADOURO: TIBStringField
      FieldName = 'NFE_EMIT_LOGRADOURO'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_LOGRADOURO"'
      Size = 80
    end
    object qryEmpresaNFE_EMIT_BAIRRO: TIBStringField
      FieldName = 'NFE_EMIT_BAIRRO'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_BAIRRO"'
      Size = 80
    end
    object qryEmpresaNFE_EMIT_COMPLEMENTO: TIBStringField
      FieldName = 'NFE_EMIT_COMPLEMENTO'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_COMPLEMENTO"'
      Size = 80
    end
    object qryEmpresaNFE_EMIT_NUMERO: TIntegerField
      FieldName = 'NFE_EMIT_NUMERO'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_NUMERO"'
    end
    object qryEmpresaNFE_EMIT_COD_CIDADE: TIntegerField
      FieldName = 'NFE_EMIT_COD_CIDADE'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_COD_CIDADE"'
    end
    object qryEmpresaNFE_EMIT_CIDADE: TIBStringField
      FieldName = 'NFE_EMIT_CIDADE'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_CIDADE"'
      Size = 80
    end
    object qryEmpresaNFE_EMIT_UF: TIBStringField
      FieldName = 'NFE_EMIT_UF'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_UF"'
      Size = 2
    end
    object qryEmpresaNFE_EMIT_EMAIL: TIBStringField
      FieldName = 'NFE_EMIT_EMAIL'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_EMAIL"'
      Size = 80
    end
    object qryEmpresaNFE_EMAIL_PORTA: TIntegerField
      FieldName = 'NFE_EMAIL_PORTA'
      Origin = '"SIS_EMPRESAS"."NFE_EMAIL_PORTA"'
    end
    object qryEmpresaNFE_EMAIL_USUARIO: TIBStringField
      FieldName = 'NFE_EMAIL_USUARIO'
      Origin = '"SIS_EMPRESAS"."NFE_EMAIL_USUARIO"'
      Size = 80
    end
    object qryEmpresaNFE_EMAIL_SENHA: TIBStringField
      FieldName = 'NFE_EMAIL_SENHA'
      Origin = '"SIS_EMPRESAS"."NFE_EMAIL_SENHA"'
    end
    object qryEmpresaNFE_EMAIL_SMTP_SEGURA: TIBStringField
      FieldName = 'NFE_EMAIL_SMTP_SEGURA'
      Origin = '"SIS_EMPRESAS"."NFE_EMAIL_SMTP_SEGURA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaNFE_EMAIL_SMTP: TIBStringField
      FieldName = 'NFE_EMAIL_SMTP'
      Origin = '"SIS_EMPRESAS"."NFE_EMAIL_SMTP"'
    end
    object qryEmpresaNFE_EMIT_RAZAO_SOCIAL: TIBStringField
      FieldName = 'NFE_EMIT_RAZAO_SOCIAL'
      Origin = '"SIS_EMPRESAS"."NFE_EMIT_RAZAO_SOCIAL"'
      Size = 80
    end
    object qryEmpresaEXIBE_INDICE_PDV: TIBStringField
      FieldName = 'EXIBE_INDICE_PDV'
      Origin = '"SIS_EMPRESAS"."EXIBE_INDICE_PDV"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaNFE_PATH_LEIAUTE_DANFE: TIBStringField
      FieldName = 'NFE_PATH_LEIAUTE_DANFE'
      Origin = '"SIS_EMPRESAS"."NFE_PATH_LEIAUTE_DANFE"'
      Size = 200
    end
    object qryEmpresaBCH_FILIAL: TIntegerField
      FieldName = 'BCH_FILIAL'
      Origin = '"SIS_EMPRESAS"."BCH_FILIAL"'
    end
    object qryEmpresaRESUMO_MOEDAS: TIntegerField
      FieldName = 'RESUMO_MOEDAS'
      Origin = '"SIS_CONFIGURACOES"."RESUMO_MOEDAS"'
    end
    object qryEmpresaVENCTO_FIXO_PRESTACOES: TIBStringField
      FieldName = 'VENCTO_FIXO_PRESTACOES'
      Origin = '"SIS_CONFIGURACOES"."VENCTO_FIXO_PRESTACOES"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaTOLERANCIA_JUROS: TIntegerField
      FieldName = 'TOLERANCIA_JUROS'
      Origin = '"SIS_CONFIGURACOES"."TOLERANCIA_JUROS"'
    end
    object qryEmpresaMULTA_FINANCEIRA: TFloatField
      FieldName = 'MULTA_FINANCEIRA'
      Origin = '"SIS_CONFIGURACOES"."MULTA_FINANCEIRA"'
    end
    object qryEmpresaINCLUI_VENDA_LIMITE: TIBStringField
      FieldName = 'INCLUI_VENDA_LIMITE'
      Origin = '"SIS_CONFIGURACOES"."INCLUI_VENDA_LIMITE"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaEXCLUI_VENDAS_BX_PARC_PDV: TIBStringField
      FieldName = 'EXCLUI_VENDAS_BX_PARC_PDV'
      Origin = '"SIS_CONFIGURACOES"."EXCLUI_VENDAS_BX_PARC_PDV"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaUTLIZA_INDEXADOR_CUSTO: TIBStringField
      FieldName = 'UTLIZA_INDEXADOR_CUSTO'
      Origin = '"SIS_CONFIGURACOES"."UTLIZA_INDEXADOR_CUSTO"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaIMPRIME_ITENS_CUPOM_PDV: TIBStringField
      FieldName = 'IMPRIME_ITENS_CUPOM_PDV'
      Origin = '"SIS_CONFIGURACOES"."IMPRIME_ITENS_CUPOM_PDV"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaITENSORCAMENTO_ORC: TIntegerField
      FieldName = 'ITENSORCAMENTO_ORC'
      Origin = '"SIS_CONFIGURACOES"."ITENSORCAMENTO_ORC"'
    end
    object qryEmpresaCODIGO_SCPC: TIBStringField
      FieldName = 'CODIGO_SCPC'
      Origin = '"SIS_CONFIGURACOES"."CODIGO_SCPC"'
      Size = 10
    end
    object qryEmpresaPDV_TROCO_MAXIMO: TFloatField
      FieldName = 'PDV_TROCO_MAXIMO'
      Origin = '"SIS_CONFIGURACOES"."PDV_TROCO_MAXIMO"'
    end
    object qryEmpresaALIQUOTA_ISS: TFloatField
      FieldName = 'ALIQUOTA_ISS'
      Origin = '"SIS_CONFIGURACOES"."ALIQUOTA_ISS"'
    end
    object qryEmpresaPEDE_SENHAGER_CAIXA: TIBStringField
      FieldName = 'PEDE_SENHAGER_CAIXA'
      Origin = '"SIS_CONFIGURACOES"."PEDE_SENHAGER_CAIXA"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaIMP_VND_FATURAMENTO: TIBStringField
      FieldName = 'IMP_VND_FATURAMENTO'
      Origin = '"SIS_CONFIGURACOES"."IMP_VND_FATURAMENTO"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCTB_CAIXA_FRENTISTA_GERAL: TIBStringField
      FieldName = 'CTB_CAIXA_FRENTISTA_GERAL'
      Origin = '"SIS_CONFIGURACOES"."CTB_CAIXA_FRENTISTA_GERAL"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaEST_ENTRADAS_DOLAR: TIBStringField
      FieldName = 'EST_ENTRADAS_DOLAR'
      Origin = '"SIS_CONFIGURACOES"."EST_ENTRADAS_DOLAR"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaOFC_ORDEM_VENDEDOR: TIntegerField
      FieldName = 'OFC_ORDEM_VENDEDOR'
      Origin = '"SIS_CONFIGURACOES"."OFC_ORDEM_VENDEDOR"'
    end
    object qryEmpresaOFC_ORDEM_NATUREZA: TIntegerField
      FieldName = 'OFC_ORDEM_NATUREZA'
      Origin = '"SIS_CONFIGURACOES"."OFC_ORDEM_NATUREZA"'
    end
    object qryEmpresaOFC_ORDEM_FRM_PAGTO: TIntegerField
      FieldName = 'OFC_ORDEM_FRM_PAGTO'
      Origin = '"SIS_CONFIGURACOES"."OFC_ORDEM_FRM_PAGTO"'
    end
    object qryEmpresaOFC_ORDEM_PRODUTO: TIBStringField
      FieldName = 'OFC_ORDEM_PRODUTO'
      Origin = '"SIS_CONFIGURACOES"."OFC_ORDEM_PRODUTO"'
      Size = 15
    end
    object qryEmpresaEST_UTILIZA_GRADES: TIBStringField
      FieldName = 'EST_UTILIZA_GRADES'
      Origin = '"SIS_CONFIGURACOES"."EST_UTILIZA_GRADES"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaITENSORDEM_SERVICO: TIntegerField
      FieldName = 'ITENSORDEM_SERVICO'
      Origin = '"SIS_CONFIGURACOES"."ITENSORDEM_SERVICO"'
    end
    object qryEmpresaBLOQ_CAD_SEM_CPF: TIBStringField
      FieldName = 'BLOQ_CAD_SEM_CPF'
      Origin = '"SIS_CONFIGURACOES"."BLOQ_CAD_SEM_CPF"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaPDV_IMP_END_PRAZO: TIBStringField
      FieldName = 'PDV_IMP_END_PRAZO'
      Origin = '"SIS_CONFIGURACOES"."PDV_IMP_END_PRAZO"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaOFC_NOME_RAZAO: TIBStringField
      FieldName = 'OFC_NOME_RAZAO'
      Origin = '"SIS_CONFIGURACOES"."OFC_NOME_RAZAO"'
      Size = 50
    end
    object qryEmpresaOFC_ENDERECO: TIBStringField
      FieldName = 'OFC_ENDERECO'
      Origin = '"SIS_CONFIGURACOES"."OFC_ENDERECO"'
      Size = 80
    end
    object qryEmpresaOFC_FONE: TIBStringField
      FieldName = 'OFC_FONE'
      Origin = '"SIS_CONFIGURACOES"."OFC_FONE"'
    end
    object qryEmpresaOFC_FAX: TIBStringField
      FieldName = 'OFC_FAX'
      Origin = '"SIS_CONFIGURACOES"."OFC_FAX"'
    end
    object qryEmpresaOFC_COR_TELA: TIBStringField
      FieldName = 'OFC_COR_TELA'
      Origin = '"SIS_CONFIGURACOES"."OFC_COR_TELA"'
      Size = 15
    end
    object qryEmpresaCTB_DIFERENCA_CAIXA: TIntegerField
      FieldName = 'CTB_DIFERENCA_CAIXA'
      Origin = '"SIS_CONFIGURACOES"."CTB_DIFERENCA_CAIXA"'
    end
    object qryEmpresaENT_FRETE_MANUAL: TIBStringField
      FieldName = 'ENT_FRETE_MANUAL'
      Origin = '"SIS_CONFIGURACOES"."ENT_FRETE_MANUAL"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCONVENIO_CHEQUE: TIBStringField
      FieldName = 'CONVENIO_CHEQUE'
      Origin = '"SIS_CONFIGURACOES"."CONVENIO_CHEQUE"'
      Size = 15
    end
    object qryEmpresaCODIGO_CONVENIO_BANCO: TIBStringField
      FieldName = 'CODIGO_CONVENIO_BANCO'
      Origin = '"SIS_CONFIGURACOES"."CODIGO_CONVENIO_BANCO"'
      Size = 10
    end
    object qryEmpresaPATH_ARQUIVO_BANCO: TIBStringField
      FieldName = 'PATH_ARQUIVO_BANCO'
      Origin = '"SIS_CONFIGURACOES"."PATH_ARQUIVO_BANCO"'
      Size = 50
    end
    object qryEmpresaNOME_ARQUIVO_BANCO: TIBStringField
      FieldName = 'NOME_ARQUIVO_BANCO'
      Origin = '"SIS_CONFIGURACOES"."NOME_ARQUIVO_BANCO"'
      Size = 30
    end
    object qryEmpresaGLO_PROPRIEDADE_EQUIPAMENTOS: TIBStringField
      FieldName = 'GLO_PROPRIEDADE_EQUIPAMENTOS'
      Origin = '"SIS_CONFIGURACOES"."GLO_PROPRIEDADE_EQUIPAMENTOS"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCSLL: TFloatField
      FieldName = 'CSLL'
      Origin = '"SIS_CONFIGURACOES"."CSLL"'
    end
    object qryEmpresaUTILIZA_MASCARA_ORCAMENTO: TIBStringField
      FieldName = 'UTILIZA_MASCARA_ORCAMENTO'
      Origin = '"SIS_CONFIGURACOES"."UTILIZA_MASCARA_ORCAMENTO"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaVALOR_MINIMO_PARCELAMENTO: TFloatField
      FieldName = 'VALOR_MINIMO_PARCELAMENTO'
      Origin = '"SIS_CONFIGURACOES"."VALOR_MINIMO_PARCELAMENTO"'
    end
    object qryEmpresaPDV_OBRIGA_QNTDE: TIBStringField
      FieldName = 'PDV_OBRIGA_QNTDE'
      Origin = '"SIS_CONFIGURACOES"."PDV_OBRIGA_QNTDE"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaPDV_COR_FUNDO: TIntegerField
      FieldName = 'PDV_COR_FUNDO'
      Origin = '"SIS_CONFIGURACOES"."PDV_COR_FUNDO"'
    end
    object qryEmpresaPDV_COR_FONTE: TIntegerField
      FieldName = 'PDV_COR_FONTE'
      Origin = '"SIS_CONFIGURACOES"."PDV_COR_FONTE"'
    end
    object qryEmpresaDIFERENCIA_FIS_FISC: TIBStringField
      FieldName = 'DIFERENCIA_FIS_FISC'
      Origin = '"SIS_CONFIGURACOES"."DIFERENCIA_FIS_FISC"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaPDV_FATURAMENTO_FIM_MES: TIBStringField
      FieldName = 'PDV_FATURAMENTO_FIM_MES'
      Origin = '"SIS_CONFIGURACOES"."PDV_FATURAMENTO_FIM_MES"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaPDV_FOTO_FUNDO: TIBStringField
      FieldName = 'PDV_FOTO_FUNDO'
      Origin = '"SIS_CONFIGURACOES"."PDV_FOTO_FUNDO"'
      Size = 80
    end
    object qryEmpresaBLOQUEIA_VENDA_SEM_CPF: TIBStringField
      FieldName = 'BLOQUEIA_VENDA_SEM_CPF'
      Origin = '"SIS_CONFIGURACOES"."BLOQUEIA_VENDA_SEM_CPF"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaDESPESAS_OPERACIONAIS: TFloatField
      FieldName = 'DESPESAS_OPERACIONAIS'
      Origin = '"SIS_CONFIGURACOES"."DESPESAS_OPERACIONAIS"'
    end
    object qryEmpresaIMPOSTO_RENDA: TFloatField
      FieldName = 'IMPOSTO_RENDA'
      Origin = '"SIS_CONFIGURACOES"."IMPOSTO_RENDA"'
    end
    object qryEmpresaEST_REPETE_COD_SEC: TIBStringField
      FieldName = 'EST_REPETE_COD_SEC'
      Origin = '"SIS_CONFIGURACOES"."EST_REPETE_COD_SEC"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaOFC_USA_CONTADORES: TIBStringField
      FieldName = 'OFC_USA_CONTADORES'
      Origin = '"SIS_CONFIGURACOES"."OFC_USA_CONTADORES"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaIMPRIME_CUPOM_NOMINAL: TIBStringField
      FieldName = 'IMPRIME_CUPOM_NOMINAL'
      Origin = '"SIS_CONFIGURACOES"."IMPRIME_CUPOM_NOMINAL"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaIMP_NOME_PROPRIEDADE: TIBStringField
      FieldName = 'IMP_NOME_PROPRIEDADE'
      Origin = '"SIS_CONFIGURACOES"."IMP_NOME_PROPRIEDADE"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaPDV_VER_ULTIMAS_VENDAS: TIBStringField
      FieldName = 'PDV_VER_ULTIMAS_VENDAS'
      Origin = '"SIS_CONFIGURACOES"."PDV_VER_ULTIMAS_VENDAS"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaCNPJ1: TIBStringField
      FieldName = 'CNPJ1'
      Origin = '"SIS_EMPRESAS"."CNPJ"'
      FixedChar = True
      Size = 14
    end
    object qryEmpresaCODIFICA_PRODUTOS: TIBStringField
      FieldName = 'CODIFICA_PRODUTOS'
      Origin = '"SIS_CONFIGURACOES"."CODIFICA_PRODUTOS"'
      FixedChar = True
      Size = 1
    end
    object qryEmpresaBCH_INS_MUN: TSmallintField
      FieldName = 'BCH_INS_MUN'
      Origin = '"SIS_EMPRESAS"."BCH_INS_MUN"'
    end
    object qryEmpresaBCH_NOMECONTATO: TIBStringField
      FieldName = 'BCH_NOMECONTATO'
      Origin = '"SIS_EMPRESAS"."BCH_NOMECONTATO"'
      Size = 50
    end
  end
  object qryPreco: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select    p.bch_codigo,'
      '          p.prc_venda,'
      '          sis_empresas.bch_filial'
      'from est_produtos p'
      'inner join sis_empresas on(sis_empresas.cnpj = p.cnpj)')
    Left = 52
    Top = 48
    object qryPrecoBCH_CODIGO: TIntegerField
      FieldName = 'BCH_CODIGO'
      Origin = '"EST_PRODUTOS"."BCH_CODIGO"'
    end
    object qryPrecoPRC_VENDA: TFloatField
      FieldName = 'PRC_VENDA'
      Origin = '"EST_PRODUTOS"."PRC_VENDA"'
    end
    object qryPrecoBCH_FILIAL: TIntegerField
      FieldName = 'BCH_FILIAL'
      Origin = '"SIS_EMPRESAS"."BCH_FILIAL"'
    end
  end
  object qryCaixa: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select USUARIO from FAT_USUARIOS_CAIXA')
    Left = 160
    Top = 48
    object qryCaixaUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"FAT_USUARIOS_CAIXA"."USUARIO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object qryProdutos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from EST_PRODUTOS')
    Left = 16
    Top = 48
    object qryProdutosCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_PRODUTOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object qryProdutosCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object qryProdutosCODIGO_2: TIBStringField
      FieldName = 'CODIGO_2'
      Origin = '"EST_PRODUTOS"."CODIGO_2"'
      Size = 15
    end
    object qryProdutosCNPJ_AGRUP: TIBStringField
      FieldName = 'CNPJ_AGRUP'
      Origin = '"EST_PRODUTOS"."CNPJ_AGRUP"'
      FixedChar = True
      Size = 14
    end
    object qryProdutosCOD_AGRUP: TIBStringField
      FieldName = 'COD_AGRUP'
      Origin = '"EST_PRODUTOS"."COD_AGRUP"'
      Size = 15
    end
    object qryProdutosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object qryProdutosMARCA: TIntegerField
      FieldName = 'MARCA'
      Origin = '"EST_PRODUTOS"."MARCA"'
    end
    object qryProdutosNOME_MARCA: TIBStringField
      FieldName = 'NOME_MARCA'
      Origin = '"EST_PRODUTOS"."NOME_MARCA"'
      Size = 50
    end
    object qryProdutosGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"EST_PRODUTOS"."GRUPO"'
    end
    object qryProdutosSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = '"EST_PRODUTOS"."SUBGRUPO"'
    end
    object qryProdutosREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"EST_PRODUTOS"."REDUCAO"'
    end
    object qryProdutosUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"EST_PRODUTOS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object qryProdutosUND_PRIMARIA: TIBStringField
      FieldName = 'UND_PRIMARIA'
      Origin = '"EST_PRODUTOS"."UND_PRIMARIA"'
      FixedChar = True
      Size = 4
    end
    object qryProdutosCTE: TSmallintField
      FieldName = 'CTE'
      Origin = '"EST_PRODUTOS"."CTE"'
    end
    object qryProdutosCTIE: TSmallintField
      FieldName = 'CTIE'
      Origin = '"EST_PRODUTOS"."CTIE"'
    end
    object qryProdutosQTDADE_1: TFloatField
      FieldName = 'QTDADE_1'
      Origin = '"EST_PRODUTOS"."QTDADE_1"'
    end
    object qryProdutosQTDADE_2: TFloatField
      FieldName = 'QTDADE_2'
      Origin = '"EST_PRODUTOS"."QTDADE_2"'
    end
    object qryProdutosLOCALIZACAO_1: TIBStringField
      FieldName = 'LOCALIZACAO_1'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_1"'
      Size = 30
    end
    object qryProdutosLOCALIZACAO_2: TIBStringField
      FieldName = 'LOCALIZACAO_2'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_2"'
      Size = 30
    end
    object qryProdutosLOCALIZACAO_3: TIBStringField
      FieldName = 'LOCALIZACAO_3'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_3"'
      Size = 30
    end
    object qryProdutosNEG_QTDADE_2: TIBStringField
      FieldName = 'NEG_QTDADE_2'
      Origin = '"EST_PRODUTOS"."NEG_QTDADE_2"'
      FixedChar = True
      Size = 1
    end
    object qryProdutosQTDADE_MIN: TIntegerField
      FieldName = 'QTDADE_MIN'
      Origin = '"EST_PRODUTOS"."QTDADE_MIN"'
    end
    object qryProdutosQTDADE_MAX: TIntegerField
      FieldName = 'QTDADE_MAX'
      Origin = '"EST_PRODUTOS"."QTDADE_MAX"'
    end
    object qryProdutosCOMPLEMENTO_NF: TIBStringField
      FieldName = 'COMPLEMENTO_NF'
      Origin = '"EST_PRODUTOS"."COMPLEMENTO_NF"'
      FixedChar = True
      Size = 1
    end
    object qryProdutosDT_ULT_COMPRA: TDateTimeField
      FieldName = 'DT_ULT_COMPRA'
      Origin = '"EST_PRODUTOS"."DT_ULT_COMPRA"'
    end
    object qryProdutosQT_ULT_COMPRA: TIntegerField
      FieldName = 'QT_ULT_COMPRA'
      Origin = '"EST_PRODUTOS"."QT_ULT_COMPRA"'
    end
    object qryProdutosDT_ULT_VENDA: TDateTimeField
      FieldName = 'DT_ULT_VENDA'
      Origin = '"EST_PRODUTOS"."DT_ULT_VENDA"'
    end
    object qryProdutosMARGEM_BRUTA: TFloatField
      FieldName = 'MARGEM_BRUTA'
      Origin = '"EST_PRODUTOS"."MARGEM_BRUTA"'
    end
    object qryProdutosPRC_REPOS: TFloatField
      FieldName = 'PRC_REPOS'
      Origin = '"EST_PRODUTOS"."PRC_REPOS"'
    end
    object qryProdutosPRC_CUSTO_ANT: TFloatField
      FieldName = 'PRC_CUSTO_ANT'
      Origin = '"EST_PRODUTOS"."PRC_CUSTO_ANT"'
    end
    object qryProdutosPRC_CUSTO_MED: TFloatField
      FieldName = 'PRC_CUSTO_MED'
      Origin = '"EST_PRODUTOS"."PRC_CUSTO_MED"'
    end
    object qryProdutosPRC_VENDA: TFloatField
      FieldName = 'PRC_VENDA'
      Origin = '"EST_PRODUTOS"."PRC_VENDA"'
    end
    object qryProdutosPRC_VENDA_ANT: TFloatField
      FieldName = 'PRC_VENDA_ANT'
      Origin = '"EST_PRODUTOS"."PRC_VENDA_ANT"'
    end
    object qryProdutosPRC_VENDA_MED: TFloatField
      FieldName = 'PRC_VENDA_MED'
      Origin = '"EST_PRODUTOS"."PRC_VENDA_MED"'
    end
    object qryProdutosALIQUOTA_ECF: TIBStringField
      FieldName = 'ALIQUOTA_ECF'
      Origin = '"EST_PRODUTOS"."ALIQUOTA_ECF"'
      FixedChar = True
      Size = 5
    end
    object qryProdutosORIGEM: TSmallintField
      FieldName = 'ORIGEM'
      Origin = '"EST_PRODUTOS"."ORIGEM"'
    end
    object qryProdutosPESO_LIQ: TFloatField
      FieldName = 'PESO_LIQ'
      Origin = '"EST_PRODUTOS"."PESO_LIQ"'
    end
    object qryProdutosPERC_FRETE: TFloatField
      FieldName = 'PERC_FRETE'
      Origin = '"EST_PRODUTOS"."PERC_FRETE"'
    end
    object qryProdutosIPI: TFloatField
      FieldName = 'IPI'
      Origin = '"EST_PRODUTOS"."IPI"'
    end
    object qryProdutosVOLUME: TFloatField
      FieldName = 'VOLUME'
      Origin = '"EST_PRODUTOS"."VOLUME"'
    end
    object qryProdutosPROD_PESAVEL: TIBStringField
      FieldName = 'PROD_PESAVEL'
      Origin = '"EST_PRODUTOS"."PROD_PESAVEL"'
      FixedChar = True
      Size = 1
    end
    object qryProdutosETIQUETA_ENT: TIBStringField
      FieldName = 'ETIQUETA_ENT'
      Origin = '"EST_PRODUTOS"."ETIQUETA_ENT"'
      FixedChar = True
      Size = 1
    end
    object qryProdutosATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"EST_PRODUTOS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object qryProdutosULTIMO_FORNECEDOR: TIntegerField
      FieldName = 'ULTIMO_FORNECEDOR'
      Origin = '"EST_PRODUTOS"."ULTIMO_FORNECEDOR"'
    end
    object qryProdutosFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = '"EST_PRODUTOS"."FORNECEDOR"'
    end
    object qryProdutosSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"EST_PRODUTOS"."SUBUNIDADE"'
    end
    object qryProdutosPRC_CUSTO_CODIF: TIBStringField
      FieldName = 'PRC_CUSTO_CODIF'
      Origin = '"EST_PRODUTOS"."PRC_CUSTO_CODIF"'
      Size = 15
    end
    object qryProdutosCODIGO_INTERNO: TIntegerField
      FieldName = 'CODIGO_INTERNO'
      Origin = '"EST_PRODUTOS"."CODIGO_INTERNO"'
    end
    object qryProdutosDT_ULT_ATU_PRECO: TDateTimeField
      FieldName = 'DT_ULT_ATU_PRECO'
      Origin = '"EST_PRODUTOS"."DT_ULT_ATU_PRECO"'
    end
    object qryProdutosCUSTO_AQUISICAO: TFloatField
      FieldName = 'CUSTO_AQUISICAO'
      Origin = '"EST_PRODUTOS"."CUSTO_AQUISICAO"'
    end
    object qryProdutosVENDE_FRACIONADO: TIBStringField
      FieldName = 'VENDE_FRACIONADO'
      Origin = '"EST_PRODUTOS"."VENDE_FRACIONADO"'
      FixedChar = True
      Size = 1
    end
    object qryProdutosQNTDE_EXPOSTA: TFloatField
      FieldName = 'QNTDE_EXPOSTA'
      Origin = '"EST_PRODUTOS"."QNTDE_EXPOSTA"'
    end
    object qryProdutosPOSSUI_LOTE: TIBStringField
      FieldName = 'POSSUI_LOTE'
      Origin = '"EST_PRODUTOS"."POSSUI_LOTE"'
      FixedChar = True
      Size = 1
    end
    object qryProdutosQNTDE_MAXIMA_VENDA: TFloatField
      FieldName = 'QNTDE_MAXIMA_VENDA'
      Origin = '"EST_PRODUTOS"."QNTDE_MAXIMA_VENDA"'
    end
    object qryProdutosPIS: TIBStringField
      FieldName = 'PIS'
      Origin = '"EST_PRODUTOS"."PIS"'
      FixedChar = True
      Size = 1
    end
    object qryProdutosCOFINS: TIBStringField
      FieldName = 'COFINS'
      Origin = '"EST_PRODUTOS"."COFINS"'
      FixedChar = True
      Size = 1
    end
    object qryProdutosCOM_VENDA_VLR: TFloatField
      FieldName = 'COM_VENDA_VLR'
      Origin = '"EST_PRODUTOS"."COM_VENDA_VLR"'
    end
    object qryProdutosCOM_VENDA_PCT: TFloatField
      FieldName = 'COM_VENDA_PCT'
      Origin = '"EST_PRODUTOS"."COM_VENDA_PCT"'
    end
    object qryProdutosPARTICIP_LUCRO: TFloatField
      FieldName = 'PARTICIP_LUCRO'
      Origin = '"EST_PRODUTOS"."PARTICIP_LUCRO"'
    end
    object qryProdutosNAO_COBR_JUR_ATE: TIntegerField
      FieldName = 'NAO_COBR_JUR_ATE'
      Origin = '"EST_PRODUTOS"."NAO_COBR_JUR_ATE"'
    end
    object qryProdutosPREVISAO_ENTREGA: TDateTimeField
      FieldName = 'PREVISAO_ENTREGA'
      Origin = '"EST_PRODUTOS"."PREVISAO_ENTREGA"'
    end
    object qryProdutosQNTDE_PEDIDA: TFloatField
      FieldName = 'QNTDE_PEDIDA'
      Origin = '"EST_PRODUTOS"."QNTDE_PEDIDA"'
    end
    object qryProdutosATUALIZA_ARQ_EXTERNO: TIBStringField
      FieldName = 'ATUALIZA_ARQ_EXTERNO'
      Origin = '"EST_PRODUTOS"."ATUALIZA_ARQ_EXTERNO"'
      FixedChar = True
      Size = 1
    end
    object qryProdutosSERVICO: TIBStringField
      FieldName = 'SERVICO'
      Origin = '"EST_PRODUTOS"."SERVICO"'
      FixedChar = True
      Size = 1
    end
    object qryProdutosVALIDADE: TIntegerField
      FieldName = 'VALIDADE'
      Origin = '"EST_PRODUTOS"."VALIDADE"'
    end
    object qryProdutosCUSTO_INDEXADO: TFloatField
      FieldName = 'CUSTO_INDEXADO'
      Origin = '"EST_PRODUTOS"."CUSTO_INDEXADO"'
    end
    object qryProdutosCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"EST_PRODUTOS"."COMPLEMENTO"'
      Size = 100
    end
    object qryProdutosATUALIZAR: TIBStringField
      FieldName = 'ATUALIZAR'
      Origin = '"EST_PRODUTOS"."ATUALIZAR"'
      FixedChar = True
      Size = 1
    end
    object qryProdutosEST_MIN: TFloatField
      FieldName = 'EST_MIN'
      Origin = '"EST_PRODUTOS"."EST_MIN"'
    end
    object qryProdutosEST_MAX: TFloatField
      FieldName = 'EST_MAX'
      Origin = '"EST_PRODUTOS"."EST_MAX"'
    end
    object qryProdutosMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = '"EST_PRODUTOS"."MODELO"'
    end
    object qryProdutosNOME_MODELO: TIBStringField
      FieldName = 'NOME_MODELO'
      Origin = '"EST_PRODUTOS"."NOME_MODELO"'
      Size = 80
    end
    object qryProdutosSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
    object qryProdutosDEBITA_ICMS: TIBStringField
      FieldName = 'DEBITA_ICMS'
      Origin = '"EST_PRODUTOS"."DEBITA_ICMS"'
      FixedChar = True
      Size = 1
    end
    object qryProdutosSECAO: TIntegerField
      FieldName = 'SECAO'
      Origin = '"EST_PRODUTOS"."SECAO"'
    end
    object qryProdutosNFE_EXP: TIBStringField
      FieldName = 'NFE_EXP'
      Origin = '"EST_PRODUTOS"."NFE_EXP"'
      FixedChar = True
      Size = 1
    end
    object qryProdutosSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"EST_PRODUTOS"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object qryProdutosQNTDE_MINIMA_VENDA: TFloatField
      FieldName = 'QNTDE_MINIMA_VENDA'
      Origin = '"EST_PRODUTOS"."QNTDE_MINIMA_VENDA"'
    end
    object qryProdutosVALIDA_MULT_QTDE_MIN: TIBStringField
      FieldName = 'VALIDA_MULT_QTDE_MIN'
      Origin = '"EST_PRODUTOS"."VALIDA_MULT_QTDE_MIN"'
      FixedChar = True
      Size = 1
    end
    object qryProdutosFATOR_CONVERSAO: TFloatField
      FieldName = 'FATOR_CONVERSAO'
      Origin = '"EST_PRODUTOS"."FATOR_CONVERSAO"'
    end
    object qryProdutosSINCRONIZA_FILIAIS: TIBStringField
      FieldName = 'SINCRONIZA_FILIAIS'
      Origin = '"EST_PRODUTOS"."SINCRONIZA_FILIAIS"'
      FixedChar = True
      Size = 1
    end
    object qryProdutosQNTDE_PDR_CARGA: TFloatField
      FieldName = 'QNTDE_PDR_CARGA'
      Origin = '"EST_PRODUTOS"."QNTDE_PDR_CARGA"'
    end
    object qryProdutosUND_CARREGAMENTO: TIBStringField
      FieldName = 'UND_CARREGAMENTO'
      Origin = '"EST_PRODUTOS"."UND_CARREGAMENTO"'
      FixedChar = True
      Size = 4
    end
    object qryProdutosTRIB_ALIQ_EST: TFloatField
      FieldName = 'TRIB_ALIQ_EST'
      Origin = '"EST_PRODUTOS"."TRIB_ALIQ_EST"'
    end
    object qryProdutosTRIB_ALIQ_INT: TFloatField
      FieldName = 'TRIB_ALIQ_INT'
      Origin = '"EST_PRODUTOS"."TRIB_ALIQ_INT"'
    end
    object qryProdutosTRIB_MODALIDADE: TIBStringField
      FieldName = 'TRIB_MODALIDADE'
      Origin = '"EST_PRODUTOS"."TRIB_MODALIDADE"'
      Size = 50
    end
    object qryProdutosBCH_CODIGO: TIntegerField
      FieldName = 'BCH_CODIGO'
      Origin = '"EST_PRODUTOS"."BCH_CODIGO"'
    end
  end
  object qryVendedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select  fat_vendedor.*,'
      '        sis_empresas.bch_filial'
      'from fat_vendedor'
      
        'inner join  sis_empresas on( sis_empresas.cnpj = fat_vendedor.cn' +
        'pj)')
    Left = 88
    Top = 48
    object qryVendedorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDEDOR"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object qryVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDEDOR"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVendedorNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object qryVendedorCOM_VISTA: TFloatField
      FieldName = 'COM_VISTA'
      Origin = '"FAT_VENDEDOR"."COM_VISTA"'
    end
    object qryVendedorCOM_PRAZO: TFloatField
      FieldName = 'COM_PRAZO'
      Origin = '"FAT_VENDEDOR"."COM_PRAZO"'
    end
    object qryVendedorPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDEDOR"."PESSOA_FJ"'
    end
    object qryVendedorSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"FAT_VENDEDOR"."SENHA"'
      Size = 6
    end
    object qryVendedorATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"FAT_VENDEDOR"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object qryVendedorCOD_PERFIL: TIntegerField
      FieldName = 'COD_PERFIL'
      Origin = '"FAT_VENDEDOR"."COD_PERFIL"'
    end
    object qryVendedorCOD_PERFIL_PAGTO: TIntegerField
      FieldName = 'COD_PERFIL_PAGTO'
      Origin = '"FAT_VENDEDOR"."COD_PERFIL_PAGTO"'
    end
    object qryVendedorBCH_FILIAL: TIntegerField
      FieldName = 'BCH_FILIAL'
      Origin = '"SIS_EMPRESAS"."BCH_FILIAL"'
    end
  end
end
