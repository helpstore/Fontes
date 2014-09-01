 unit Vendas_Dm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet,  IBQuery, IBStoredProc,   RDprint, IBSQL,
  ACBrBase, ACBrExtenso;

type
  TDmVendas = class(TDataModule)
    SelPessoasFJ: TIBQuery;
    SelPessoasFJCODIGO: TIntegerField;
    SelPessoasFJNOME_RAZAO: TIBStringField;
    SelNatureza: TIBQuery;
    SelNaturezaCODIGO: TIntegerField;
    SelNaturezaNOME: TIBStringField;
    SelProduto: TIBQuery;
    SelProdutoCODIGO: TIBStringField;
    SelProdutoCODIGO_2: TIBStringField;
    SelProdutoNOME: TIBStringField;
    SelProdutoPRC_VENDA: TFloatField;
    SelProdutoIPI: TFloatField;
    SelProdutoMARGEM_BRUTA: TFloatField;
    SelTipoDocto: TIBQuery;
    SelTipoDoctoCNPJ: TIBStringField;
    SelTipoDoctoSIGLA: TIBStringField;
    SelTipoDoctoNOME: TIBStringField;
    Parametros: TIBQuery;
    ParametrosCNPJ: TIBStringField;
    ParametrosVENDEDOR: TFloatField;
    ParametrosDESCONTOS: TFloatField;
    ParametrosCUSTO_VARIAVEL: TFloatField;
    ParametrosPROPAGANDA: TFloatField;
    DsVendas: TDataSource;
    SelVendedor: TIBQuery;
    SelVendedorCNPJ: TIBStringField;
    SelVendedorCODIGO: TIntegerField;
    SelVendedorNOME: TIBStringField;
    SelVendedorCOM_VISTA: TFloatField;
    SelVendedorCOM_PRAZO: TFloatField;
    SelFormaPgto: TIBQuery;
    SelFormaPgtoCNPJ: TIBStringField;
    SelFormaPgtoCODIGO: TIntegerField;
    SelFormaPgtoNOME: TIBStringField;
    SelFormaPgtoACRESCIMO: TFloatField;
    SelFormaPgtoDESCONTO: TFloatField;
    SelFormaPgtoNPARCELAS: TIntegerField;
    SelFormaPgtoCOMENTRADA: TIBStringField;
    SelFormaPgtoINTERVALO: TIntegerField;
    SelFormaPgtoAVISTA: TIBStringField;
    SelNaturezaCNPJ: TIBStringField;
    SelTerceiros: TIBQuery;
    SelTerceirosCNPJ: TIBStringField;
    SelTerceirosCODIGO: TIntegerField;
    SelTerceirosNOME: TIBStringField;
    SelTerceirosCOM_VISTA: TFloatField;
    SelTerceirosCOM_PRAZO: TFloatField;
    SelTerceirosPESSOA_FJ: TIntegerField;
    SelPlano: TIBQuery;
    SelPlanoCNPJ: TIBStringField;
    SelPlanoCONTA: TIntegerField;
    SelPlanoCODIGO: TIBStringField;
    SelPlanoCONTAPAI: TIBStringField;
    SelPlanoNOME: TIBStringField;
    SelPlanoBANCO: TIBStringField;
    SelFaturaVendas: TIBQuery;
    SelFaturaVendasCODIGO: TIntegerField;
    SelFaturaVendasFECHADA: TIBStringField;
    SelFaturaVendasHISTORICO: TIBStringField;
    SelFaturaVendasPESSOA_FJ: TIntegerField;
    SelFaturaVendasUSUARIO: TIntegerField;
    SelFaturaVendasVENDEDOR: TIntegerField;
    SelFaturaVendasNUM_NF: TIntegerField;
    SelFaturaVendasNUM_CUPOM: TIntegerField;
    SelFaturaVendasNATUREZA: TIntegerField;
    ConfCliente: TIBQuery;
    SelPessoasFJFANTASIA: TIBStringField;
    SelPessoasFJCPF_CGC: TIBStringField;
    ConfClientePESSOA_FJ: TIntegerField;
    ConfClienteCOD_VEND: TIntegerField;
    ConfClienteCOD_FPAGTO: TIntegerField;
    ConfClienteREQUISICAO: TIBStringField;
    ConfClienteDIA_PREF_FAT: TIntegerField;
    ConfClienteLIMITE_TEMPO: TIntegerField;
    ConfClienteLIMITE_CREDITO: TFloatField;
    ConfClienteCLASSIF: TIBStringField;
    ConfClienteBLOQUEADO: TIBStringField;
    ConfClienteOBS: TBlobField;
    VendasPdv: TIBDataSet;
    VendasPdvCNPJ: TIBStringField;
    VendasPdvCODIGO: TIntegerField;
    VendasPdvFECHADA: TIBStringField;
    VendasPdvHISTORICO: TIBStringField;
    VendasPdvPESSOA_FJ: TIntegerField;
    VendasPdvUSUARIO: TIntegerField;
    VendasPdvVENDEDOR: TIntegerField;
    VendasPdvNATUREZA: TIntegerField;
    VendasPdvENVIADA_CX: TIBStringField;
    VendasPdvFORMA_PGTO: TIntegerField;
    VendasPdvNUM_NF: TIntegerField;
    VendasPdvNUM_CUPOM: TIntegerField;
    VendasPdvPROPRIEDADE: TIntegerField;
    VendasPdvCONVENIADO: TIntegerField;
    VendasPdvTIPO_DOCTO: TIBStringField;
    VendasPdvLOCAL_COBRANCA: TIntegerField;
    VendasPdvDESC_ACRES: TFloatField;
    VendasPdvENTRADA: TFloatField;
    VendasPdvDINHEIRO: TFloatField;
    VendasPdvCHEQUE: TFloatField;
    VendasPdvCARTAO: TFloatField;
    VendasPdvTICKET: TFloatField;
    VendasPdvTOTAL: TFloatField;
    VendasPdvVLR_PARC_LC: TFloatField;
    DsVendasPdv: TDataSource;
    VendasPdv_Itens: TIBDataSet;
    VendasPdv_ItensCNPJ: TIBStringField;
    VendasPdv_ItensCODIGO: TIntegerField;
    VendasPdv_ItensPRODUTO: TIBStringField;
    VendasPdv_ItensQUANTIDADE: TFloatField;
    VendasPdv_ItensPRC_UNITARIO: TFloatField;
    VendasPdv_ItensPRC_CUSTO: TFloatField;
    VendasPdv_ItensICM: TFloatField;
    VendasPdv_ItensICM_SUBS: TFloatField;
    VendasPdv_ItensIPI: TFloatField;
    VendasPdv_ItensVOLUME: TFloatField;
    VendasPdv_ItensPESO: TFloatField;
    SelVendasPdv: TIBQuery;
    SelVendasPdvPESSOA_FJ: TIntegerField;
    SelVendasPdvCODIGO: TIntegerField;
    SelVendasPdvFECHADA: TIBStringField;
    SelVendasPdvHISTORICO: TIBStringField;
    SelVendasPdvVENDEDOR: TIntegerField;
    SelVendasPdvUSUARIO: TIntegerField;
    SelVendasPdvNUM_NF: TIntegerField;
    SelVendasPdvNUM_CUPOM: TIntegerField;
    SelVendasPdvNATUREZA: TIntegerField;
    VendasPdv_ItensTotal: TFloatField;
    VendasPdv_ItensDESCONTO: TFloatField;
    VendasPdv_ItensPORC_DESC: TFloatField;
    SelUnidade: TIBQuery;
    SelUnidadeCNPJ: TIBStringField;
    SelUnidadeSIGLA: TIBStringField;
    SelUnidadeNOME: TIBStringField;
    DsProduto: TDataSource;
    SelProdutoUNIDADE: TIBStringField;
    VendasPdv_ItensUNIDADE: TIBStringField;
    VendasPdv_ItensSEQUENCIA: TSmallintField;
    VendasPdv_ItensPRC_UNIT_ORIGINAL: TFloatField;
    VendasPdvTIPO_VENDA: TIBStringField;
    SelFaturaVendasTIPO_VENDA: TIBStringField;
    VendasPdvNOME_CONSUMIDOR: TIBStringField;
    SelFaturaVendasNOME_CONSUMIDOR: TIBStringField;
    Consulta_Venda: TIBQuery;
    Consulta_VendaPESSOA_FJ: TIntegerField;
    Consulta_VendaCODIGO: TIntegerField;
    Consulta_VendaFECHADA: TIBStringField;
    Consulta_VendaHISTORICO: TIBStringField;
    Consulta_VendaVENDEDOR: TIntegerField;
    Consulta_VendaUSUARIO: TIntegerField;
    Consulta_VendaNUM_NF: TIntegerField;
    Consulta_VendaNUM_CUPOM: TIntegerField;
    Consulta_VendaNATUREZA: TIntegerField;
    Consulta_VendaTIPO_VENDA: TIBStringField;
    Consulta_VendaNOME_CONSUMIDOR: TIBStringField;
    DsConsulta_Venda: TDataSource;
    Consulta_Venda_Itens: TIBQuery;
    Consulta_Venda_ItensPRODUTO: TIBStringField;
    Consulta_Venda_ItensSEQUENCIA: TSmallintField;
    Consulta_Venda_ItensUNIDADE: TIBStringField;
    Consulta_Venda_Parc: TIBQuery;
    Consulta_Venda_ParcVENCTO: TDateTimeField;
    Consulta_Venda_ParcPARCELA: TIBStringField;
    Consulta_Venda_ParcVALOR: TFloatField;
    Consulta_VendaDESCRICAO: TBlobField;
    Consulta_VendaPROPRIEDADE: TIntegerField;
    Consulta_VendaCONVENIADO: TIntegerField;
    Consulta_VendaTERCEIRO: TIntegerField;
    Consulta_VendaTotal_Geral: TFloatField;
    Consulta_Venda_ItensTotal: TFloatField;
    SelOrcamentos: TIBQuery;
    SelFaturaVendasORCAMENTO: TIntegerField;
    Ver_Pessoa: TIBQuery;
    Ver_PessoaCODIGO: TIntegerField;
    Ver_PessoaNOME_RAZAO: TIBStringField;
    Ver_PessoaFANTASIA: TIBStringField;
    Ver_PessoaCOD_ATIVIDADE: TIntegerField;
    Ver_PessoaATIVIDADE: TIBStringField;
    Ver_PessoaCOD_ENDERECO: TIntegerField;
    Ver_PessoaENDERECO: TIBStringField;
    Ver_PessoaNUMERO: TIBStringField;
    Ver_PessoaCOMPLEMENTO: TIBStringField;
    Ver_PessoaCOD_BAIRRO: TIntegerField;
    Ver_PessoaBAIRRO: TIBStringField;
    Ver_PessoaCOD_CIDADE: TIntegerField;
    Ver_PessoaCIDADE: TIBStringField;
    Ver_PessoaUF: TIBStringField;
    Ver_PessoaCEP: TIBStringField;
    Ver_PessoaFONE: TIBStringField;
    Ver_PessoaFAX: TIBStringField;
    Ver_PessoaCELULAR: TIBStringField;
    Ver_PessoaPESSOA: TIBStringField;
    Ver_PessoaCPF_CGC: TIBStringField;
    Ver_PessoaRG_IE: TIBStringField;
    Ver_PessoaCONTATO: TIBStringField;
    Ver_PessoaDT_NASCIMENTO: TDateTimeField;
    Ver_PessoaDT_CADASTRO: TDateTimeField;
    Ver_PessoaEMAIL: TIBStringField;
    Ver_PessoaOBS: TBlobField;
    Ver_PessoaINSC_MUNIC: TIBStringField;
    Consulta_Orcamento_Itens: TIBQuery;
    Consulta_Orcamento_ItensCODIGO: TIntegerField;
    Consulta_Orcamento_ItensDESCONTO: TFloatField;
    Consulta_Orcamento_ItensICM: TFloatField;
    Consulta_Orcamento_ItensICM_SUBS: TFloatField;
    Consulta_Orcamento_ItensIPI: TFloatField;
    Consulta_Orcamento_ItensPESO: TFloatField;
    Consulta_Orcamento_ItensPORC_DESC: TFloatField;
    Consulta_Orcamento_ItensPRC_CUSTO: TFloatField;
    Consulta_Orcamento_ItensPRC_UNIT_ORIGINAL: TFloatField;
    Consulta_Orcamento_ItensPRC_UNITARIO: TFloatField;
    Consulta_Orcamento_ItensPRODUTO: TIBStringField;
    Consulta_Orcamento_ItensQUANTIDADE: TFloatField;
    Consulta_Orcamento_ItensSEQUENCIA: TSmallintField;
    Consulta_Orcamento_ItensUNIDADE: TIBStringField;
    Consulta_Orcamento_ItensVOLUME: TFloatField;
    Consulta_Orcamento_ItensNOME: TIBStringField;
    Consulta_Orcamento_ItensTotal: TFloatField;
    Serie: TIBDataSet;
    SerieCNPJ: TIBStringField;
    SerieSERIE: TIBStringField;
    SerieULTIMO_NUMERO: TIntegerField;
    SerieTIPO: TIBStringField;
    SerieNOTA_NUM_DST: TIntegerField;
    SerieNOTA_NUM_ALT: TIntegerField;
    SerieNOTA_NUMRECIBO_DST: TIntegerField;
    SerieNOTA_NUMRECIBO_ALT: TIntegerField;
    SerieNOTA_ENT_SAI_DST: TIntegerField;
    SerieNOTA_ENT_SAI_ALT: TIntegerField;
    SerieNOTA_NATUREZA_DST: TIntegerField;
    SerieNOTA_NATUREZA_ALT: TIntegerField;
    SerieNOTA_CFOP_DST: TIntegerField;
    SerieNOTA_CFOP_ALT: TIntegerField;
    SerieNOTA_SUBS_TRIB_DST: TIntegerField;
    SerieNOTA_SUBS_TRIB_ALT: TIntegerField;
    SerieNOTA_CNDPG_DST: TIntegerField;
    SerieNOTA_CNDPG_ALT: TIntegerField;
    SerieCLI_NOME_DST: TIntegerField;
    SerieCLI_NOME_ALT: TIntegerField;
    SerieCLI_CGCCPF_DST: TIntegerField;
    SerieCLI_CGCCPF_ALT: TIntegerField;
    SerieCLI_END_DST: TIntegerField;
    SerieCLI_END_ALT: TIntegerField;
    SerieCLI_BAIRRO_DST: TIntegerField;
    SerieCLI_BAIRRO_ALT: TIntegerField;
    SerieCLI_CEP_DST: TIntegerField;
    SerieCLI_CEP_ALT: TIntegerField;
    SerieCLI_CID_DST: TIntegerField;
    SerieCLI_CID_ALT: TIntegerField;
    SerieCLI_FONE_DST: TIntegerField;
    SerieCLI_FONE_ALT: TIntegerField;
    SerieCLI_FAX_DST: TIntegerField;
    SerieCLI_FAX_ALT: TIntegerField;
    SerieCLI_UF_DST: TIntegerField;
    SerieCLI_UF_ALT: TIntegerField;
    SerieCLI_INSCEST_DST: TIntegerField;
    SerieCLI_INSCEST_ALT: TIntegerField;
    SerieCLI_DATEMIS_DST: TIntegerField;
    SerieCLI_DATEMIS_ALT: TIntegerField;
    SerieCLI_DATENTSAI_DST: TIntegerField;
    SerieCLI_DATENTSAI_ALT: TIntegerField;
    SerieCLI_HORASAI_DST: TIntegerField;
    SerieCLI_HORASAI_ALT: TIntegerField;
    SerieCLI_PEDNUM_DST: TIntegerField;
    SerieCLI_PEDNUM_ALT: TIntegerField;
    SerieCLI_INSCMUN_DST: TIntegerField;
    SerieCLI_INSCMUN_ALT: TIntegerField;
    SerieCLI_DUPLNUM_DST: TIntegerField;
    SerieCLI_DUPLVENC_DST: TIntegerField;
    SerieCLI_DUPLVENC_ALT: TIntegerField;
    SerieCLI_DUPLVALOR_DST: TIntegerField;
    SerieCLI_DUPLVALOR_ALT: TIntegerField;
    SeriePROD_COD_DST: TIntegerField;
    SeriePROD_COD_ALT: TIntegerField;
    SeriePROD_PROD_DST: TIntegerField;
    SeriePROD_PROD_ALT: TIntegerField;
    SeriePROD_CF_DST: TIntegerField;
    SeriePROD_CF_ALT: TIntegerField;
    SeriePROD_SITTRIB_DST: TIntegerField;
    SeriePROD_SITTRIB_ALT: TIntegerField;
    SeriePROD_UNIDADE_DST: TIntegerField;
    SeriePROD_UNIDADE_ALT: TIntegerField;
    SeriePROD_QUANT_DST: TIntegerField;
    SeriePROD_QUANT_ALT: TIntegerField;
    SeriePROD_VALORUNIT_DST: TIntegerField;
    SeriePROD_VALORUNIT_ALT: TIntegerField;
    SeriePROD_VALORTOT_DST: TIntegerField;
    SeriePROD_VALORTOT_ALT: TIntegerField;
    SeriePROD_ICMS_DST: TIntegerField;
    SeriePROD_ICMS_ALT: TIntegerField;
    SeriePROD_IPI_DST: TIntegerField;
    SeriePROD_IPI_ALT: TIntegerField;
    SeriePROD_VALORIPI_DST: TIntegerField;
    SeriePROD_VALORIPI_ALT: TIntegerField;
    SerieFEC_BASEICMS_DST: TIntegerField;
    SerieFEC_BASEICMS_ALT: TIntegerField;
    SerieFEC_VALORFRETE_DST: TIntegerField;
    SerieFEC_VALORFRETE_ALT: TIntegerField;
    SerieFEC_VALORICMS_DST: TIntegerField;
    SerieFEC_VALORICMS_ALT: TIntegerField;
    SerieFEC_VALORSEGURO_DST: TIntegerField;
    SerieFEC_VALORSEGURO_ALT: TIntegerField;
    SerieFEC_BASECALCICMS_DST: TIntegerField;
    SerieFEC_BASECALCICMS_ALT: TIntegerField;
    SerieFEC_DESPESAS_DST: TIntegerField;
    SerieFEC_DESPESAS_ALT: TIntegerField;
    SerieFEC_VALORICMSSUB_DST: TIntegerField;
    SerieFEC_VALORICMSSUB_ALT: TIntegerField;
    SerieFEC_IPI_DST: TIntegerField;
    SerieFEC_IPI_ALT: TIntegerField;
    SerieFEC_VALORTOTAL_DST: TIntegerField;
    SerieFEC_ISS_DST: TIntegerField;
    SerieFEC_VALORTOTAL_ALT: TIntegerField;
    SerieFEC_ISS_ALT: TIntegerField;
    SerieFEC_VALORNOTA_DST: TIntegerField;
    SerieFEC_VALORNOTA_ALT: TIntegerField;
    SerieTRANS_NOME_DST: TIntegerField;
    SerieTRANS_NOME_ALT: TIntegerField;
    SerieTRANS_END_DST: TIntegerField;
    SerieTRANS_END_ALT: TIntegerField;
    SerieTRANS_QUANTIDADE_DST: TIntegerField;
    SerieTRANS_QUANTIDADE_ALT: TIntegerField;
    SerieTRANS_ESPECIE_DST: TIntegerField;
    SerieTRANS_ESPECIE_ALT: TIntegerField;
    SerieTRANS_MARCA_DST: TIntegerField;
    SerieTRANS_MARCA_ALT: TIntegerField;
    SerieTRANS_FRETECONTA_DST: TIntegerField;
    SerieTRANS_FRETECONTA_ALT: TIntegerField;
    SerieTRANS_CID_DST: TIntegerField;
    SerieTRANS_CID_ALT: TIntegerField;
    SerieTRANS_NUMERO_DST: TIntegerField;
    SerieTRANS_NUMERO_ALT: TIntegerField;
    SerieTRANS_PLACA_DST: TIntegerField;
    SerieTRANS_PLACA_ALT: TIntegerField;
    SerieTRANS_UFVEI_DST: TIntegerField;
    SerieTRANS_UFVEIALT: TIntegerField;
    SerieTRANS_UF_DST: TIntegerField;
    SerieTRANS_UF_ALT: TIntegerField;
    SerieTRANS_CGCCPF_DST: TIntegerField;
    SerieTRANS_CGCCPF_ALT: TIntegerField;
    SerieTRANS_INSCEST_DST: TIntegerField;
    SerieTRANS_INSCEST_ALT: TIntegerField;
    SerieTRANS_PESBRT_DST: TIntegerField;
    SerieTRANS_PESOBRT_ALT: TIntegerField;
    SerieTRANS_PESOLIQ_DST: TIntegerField;
    SerieTRANS_PESOLIQ_ALT: TIntegerField;
    SerieTRANS_OBS_DST: TIntegerField;
    SerieTRANS_OBS_ALT: TIntegerField;
    SerieIMPRESSORA_PULO: TIntegerField;
    SerieIMPRESSORA_LPP: TIBStringField;
    SeriePRODUTOSNOTA: TIntegerField;
    SerieLOCALDUPLICATAS: TStringField;
    SerieNUMERODELINHASDANOTA: TIntegerField;
    SerieCLI_DUPLNUM_ALT: TIntegerField;
    SeriePROD_DESC_DST: TIntegerField;
    SeriePROD_DESC_ALT: TIntegerField;
    Consulta_Venda_ItensNOME_PRODUTO: TIBStringField;
    Consulta_Venda_ItensALIQUOTA: TIBStringField;
    SerieOrc: TIBQuery;
    SerieOrcCNPJ: TIBStringField;
    SerieOrcSERIE: TIBStringField;
    SerieOrcULTIMO_NUMERO: TIntegerField;
    SerieOrcTIPO: TIBStringField;
    SerieOrcNOTA_NUM_DST: TIntegerField;
    SerieOrcNOTA_NUM_ALT: TIntegerField;
    SerieOrcNOTA_NUMRECIBO_DST: TIntegerField;
    SerieOrcNOTA_NUMRECIBO_ALT: TIntegerField;
    SerieOrcNOTA_ENT_SAI_DST: TIntegerField;
    SerieOrcNOTA_ENT_SAI_ALT: TIntegerField;
    SerieOrcNOTA_NATUREZA_DST: TIntegerField;
    SerieOrcNOTA_NATUREZA_ALT: TIntegerField;
    SerieOrcNOTA_CFOP_DST: TIntegerField;
    SerieOrcNOTA_CFOP_ALT: TIntegerField;
    SerieOrcNOTA_SUBS_TRIB_DST: TIntegerField;
    SerieOrcNOTA_SUBS_TRIB_ALT: TIntegerField;
    SerieOrcNOTA_CNDPG_DST: TIntegerField;
    SerieOrcNOTA_CNDPG_ALT: TIntegerField;
    SerieOrcCLI_NOME_DST: TIntegerField;
    SerieOrcCLI_NOME_ALT: TIntegerField;
    SerieOrcCLI_CGCCPF_DST: TIntegerField;
    SerieOrcCLI_CGCCPF_ALT: TIntegerField;
    SerieOrcCLI_END_DST: TIntegerField;
    SerieOrcCLI_END_ALT: TIntegerField;
    SerieOrcCLI_BAIRRO_DST: TIntegerField;
    SerieOrcCLI_BAIRRO_ALT: TIntegerField;
    SerieOrcCLI_CEP_DST: TIntegerField;
    SerieOrcCLI_CEP_ALT: TIntegerField;
    SerieOrcCLI_CID_DST: TIntegerField;
    SerieOrcCLI_CID_ALT: TIntegerField;
    SerieOrcCLI_FONE_DST: TIntegerField;
    SerieOrcCLI_FONE_ALT: TIntegerField;
    SerieOrcCLI_FAX_DST: TIntegerField;
    SerieOrcCLI_FAX_ALT: TIntegerField;
    SerieOrcCLI_UF_DST: TIntegerField;
    SerieOrcCLI_UF_ALT: TIntegerField;
    SerieOrcCLI_INSCEST_DST: TIntegerField;
    SerieOrcCLI_INSCEST_ALT: TIntegerField;
    SerieOrcCLI_DATEMIS_DST: TIntegerField;
    SerieOrcCLI_DATEMIS_ALT: TIntegerField;
    SerieOrcCLI_DATENTSAI_DST: TIntegerField;
    SerieOrcCLI_DATENTSAI_ALT: TIntegerField;
    SerieOrcCLI_HORASAI_DST: TIntegerField;
    SerieOrcCLI_HORASAI_ALT: TIntegerField;
    SerieOrcCLI_PEDNUM_DST: TIntegerField;
    SerieOrcCLI_PEDNUM_ALT: TIntegerField;
    SerieOrcCLI_INSCMUN_DST: TIntegerField;
    SerieOrcCLI_INSCMUN_ALT: TIntegerField;
    SerieOrcCLI_DUPLNUM_DST: TIntegerField;
    SerieOrcCLI_DUPLNUM_ALT: TIntegerField;
    SerieOrcCLI_DUPLVENC_DST: TIntegerField;
    SerieOrcCLI_DUPLVENC_ALT: TIntegerField;
    SerieOrcCLI_DUPLVALOR_DST: TIntegerField;
    SerieOrcCLI_DUPLVALOR_ALT: TIntegerField;
    SerieOrcPROD_COD_DST: TIntegerField;
    SerieOrcPROD_COD_ALT: TIntegerField;
    SerieOrcPROD_PROD_DST: TIntegerField;
    SerieOrcPROD_PROD_ALT: TIntegerField;
    SerieOrcPROD_CF_DST: TIntegerField;
    SerieOrcPROD_CF_ALT: TIntegerField;
    SerieOrcPROD_SITTRIB_DST: TIntegerField;
    SerieOrcPROD_SITTRIB_ALT: TIntegerField;
    SerieOrcPROD_UNIDADE_DST: TIntegerField;
    SerieOrcPROD_UNIDADE_ALT: TIntegerField;
    SerieOrcPROD_QUANT_DST: TIntegerField;
    SerieOrcPROD_QUANT_ALT: TIntegerField;
    SerieOrcPROD_VALORUNIT_DST: TIntegerField;
    SerieOrcPROD_VALORUNIT_ALT: TIntegerField;
    SerieOrcPROD_VALORTOT_DST: TIntegerField;
    SerieOrcPROD_VALORTOT_ALT: TIntegerField;
    SerieOrcPROD_ICMS_DST: TIntegerField;
    SerieOrcPROD_ICMS_ALT: TIntegerField;
    SerieOrcPROD_IPI_DST: TIntegerField;
    SerieOrcPROD_IPI_ALT: TIntegerField;
    SerieOrcPROD_VALORIPI_DST: TIntegerField;
    SerieOrcPROD_VALORIPI_ALT: TIntegerField;
    SerieOrcFEC_BASEICMS_DST: TIntegerField;
    SerieOrcFEC_BASEICMS_ALT: TIntegerField;
    SerieOrcFEC_VALORFRETE_DST: TIntegerField;
    SerieOrcFEC_VALORFRETE_ALT: TIntegerField;
    SerieOrcFEC_VALORICMS_DST: TIntegerField;
    SerieOrcFEC_VALORICMS_ALT: TIntegerField;
    SerieOrcFEC_VALORSEGURO_DST: TIntegerField;
    SerieOrcFEC_VALORSEGURO_ALT: TIntegerField;
    SerieOrcFEC_BASECALCICMS_DST: TIntegerField;
    SerieOrcFEC_BASECALCICMS_ALT: TIntegerField;
    SerieOrcFEC_DESPESAS_DST: TIntegerField;
    SerieOrcFEC_DESPESAS_ALT: TIntegerField;
    SerieOrcFEC_VALORICMSSUB_DST: TIntegerField;
    SerieOrcFEC_VALORICMSSUB_ALT: TIntegerField;
    SerieOrcFEC_IPI_DST: TIntegerField;
    SerieOrcFEC_IPI_ALT: TIntegerField;
    SerieOrcFEC_VALORTOTAL_DST: TIntegerField;
    SerieOrcFEC_ISS_DST: TIntegerField;
    SerieOrcFEC_VALORTOTAL_ALT: TIntegerField;
    SerieOrcFEC_ISS_ALT: TIntegerField;
    SerieOrcFEC_VALORNOTA_DST: TIntegerField;
    SerieOrcFEC_VALORNOTA_ALT: TIntegerField;
    SerieOrcTRANS_NOME_DST: TIntegerField;
    SerieOrcTRANS_NOME_ALT: TIntegerField;
    SerieOrcTRANS_END_DST: TIntegerField;
    SerieOrcTRANS_END_ALT: TIntegerField;
    SerieOrcTRANS_QUANTIDADE_DST: TIntegerField;
    SerieOrcTRANS_QUANTIDADE_ALT: TIntegerField;
    SerieOrcTRANS_ESPECIE_DST: TIntegerField;
    SerieOrcTRANS_ESPECIE_ALT: TIntegerField;
    SerieOrcTRANS_MARCA_DST: TIntegerField;
    SerieOrcTRANS_MARCA_ALT: TIntegerField;
    SerieOrcTRANS_FRETECONTA_DST: TIntegerField;
    SerieOrcTRANS_FRETECONTA_ALT: TIntegerField;
    SerieOrcTRANS_CID_DST: TIntegerField;
    SerieOrcTRANS_CID_ALT: TIntegerField;
    SerieOrcTRANS_NUMERO_DST: TIntegerField;
    SerieOrcTRANS_NUMERO_ALT: TIntegerField;
    SerieOrcTRANS_PLACA_DST: TIntegerField;
    SerieOrcTRANS_PLACA_ALT: TIntegerField;
    SerieOrcTRANS_UFVEI_DST: TIntegerField;
    SerieOrcTRANS_UFVEIALT: TIntegerField;
    SerieOrcTRANS_UF_DST: TIntegerField;
    SerieOrcTRANS_UF_ALT: TIntegerField;
    SerieOrcTRANS_CGCCPF_DST: TIntegerField;
    SerieOrcTRANS_CGCCPF_ALT: TIntegerField;
    SerieOrcTRANS_INSCEST_DST: TIntegerField;
    SerieOrcTRANS_INSCEST_ALT: TIntegerField;
    SerieOrcTRANS_PESBRT_DST: TIntegerField;
    SerieOrcTRANS_PESOBRT_ALT: TIntegerField;
    SerieOrcTRANS_PESOLIQ_DST: TIntegerField;
    SerieOrcTRANS_PESOLIQ_ALT: TIntegerField;
    SerieOrcTRANS_OBS_DST: TIntegerField;
    SerieOrcTRANS_OBS_ALT: TIntegerField;
    SerieOrcIMPRESSORA_PULO: TIntegerField;
    SerieOrcIMPRESSORA_LPP: TIBStringField;
    SerieOrcPRODUTOSNOTA: TIntegerField;
    SerieOrcLOCALDUPLICATAS: TIBStringField;
    SerieOrcNUMERODELINHASDANOTA: TIntegerField;
    SerieOrcPROD_DESC_DST: TIntegerField;
    SerieOrcPROD_DESC_ALT: TIntegerField;
    SerieDATA_ANO_ALT: TIntegerField;
    SerieDATA_ANO_DST: TIntegerField;
    SerieDATA_DIA_ALT: TIntegerField;
    SerieDATA_DIA_DST: TIntegerField;
    SerieDATA_MES_ALT: TIntegerField;
    SerieDATA_MES_DST: TIntegerField;
    SerieOrcDATA_ANO_ALT: TIntegerField;
    SerieOrcDATA_ANO_DST: TIntegerField;
    SerieOrcDATA_DIA_ALT: TIntegerField;
    SerieOrcDATA_DIA_DST: TIntegerField;
    SerieOrcDATA_MES_ALT: TIntegerField;
    SerieOrcDATA_MES_DST: TIntegerField;
    SerieOBS_ALT: TIntegerField;
    SerieOBS_DST: TIntegerField;
    SerieOrcOBS_DST: TIntegerField;
    SerieOrcOBS_ALT: TIntegerField;
    VendasPdv_ItensNOME_PRODUTO: TIBStringField;
    VendasPdv_ItensALIQUOTA: TIBStringField;
    VendasPdv_ItensPRODUTOFIS: TIBStringField;
    VendasPdv_ItensNOME_FIS: TIBStringField;
    VendasPdvOBSERVACAO: TIBStringField;
    VendasPdvTERCEIRO: TIntegerField;
    VendasPdvCARGA: TIntegerField;
    VendasPdvVOLUME: TFloatField;
    VendasPdvPESO: TFloatField;
    VendasPdvREQUISICAO: TIBStringField;
    VendasPdvDESCRICAO: TBlobField;
    VendasPdvORCAMENTO: TIntegerField;
    VendasPdvTROCO: TFloatField;
    VendasPdvLOCAL: TIntegerField;
    SelFaturaVendasLOCAL: TIntegerField;
    Valida_Cliente: TIBQuery;
    Valida_ClientePESSOA_FJ: TIntegerField;
    Valida_ClienteCOD_VEND: TIntegerField;
    Valida_ClienteCOD_FPAGTO: TIntegerField;
    Valida_ClienteREQUISICAO: TIBStringField;
    Valida_ClienteDIA_PREF_FAT: TIntegerField;
    Valida_ClienteLIMITE_TEMPO: TIntegerField;
    Valida_ClienteLIMITE_CREDITO: TIBBCDField;
    Valida_ClienteCLASSIF: TIBStringField;
    Valida_ClienteBLOQUEADO: TIBStringField;
    Valida_ClienteOBS: TBlobField;
    Valida_ClienteCLASSIFICACAO: TIntegerField;
    VendasPdvNOME: TIBStringField;
    Valida_ClienteNOME: TIBStringField;
    SelFaturaVendasNOME: TIBStringField;
    Consulta_VendaNOME: TIBStringField;
    SelVendasPdvNOMEVENDEDOR: TIBStringField;
    SelVendasPdvNOME: TIBStringField;
    VendasPdv_ItensSUBUNIDADE: TIntegerField;
    SelSubUnidade: TIBQuery;
    DsUnidade: TDataSource;
    SelSubUnidadeCNPJ: TIBStringField;
    SelSubUnidadeSIGLA: TIBStringField;
    SelSubUnidadeUNIDADES: TIntegerField;
    Valida_Produto: TIBQuery;
    Consulta_Venda_ItensORIGEM: TIntegerField;
    Consulta_Venda_ItensCTE: TIntegerField;
    Consulta_Venda_ItensCTIE: TIntegerField;
    VendasPdv_ItensORIGEM: TIntegerField;
    VendasPdv_ItensCTE: TIntegerField;
    VendasPdv_ItensCTIE: TIntegerField;
    VendasPdv_ItensREDUCAO: TIntegerField;
    Consulta_Venda_ItensREDUCAO: TIntegerField;
    SelReducao: TIBQuery;
    SelReducaoPERC_ESTADUAL: TIBBCDField;
    SelReducaoPERC_INTERESTADUAL: TIBBCDField;
    SelReducaoMENSAGEM_NF: TIBStringField;
    SelNaturezaINTERESTADUAL: TIBStringField;
    SelPessoasFJBLOQUEADO: TIBStringField;
    SelVendasPdvNOMENATUREZA: TIBStringField;
    SelVendasPdvTIPO_VENDA: TIBStringField;
    SelVendasPdvNOME_CONSUMIDOR: TIBStringField;
    SelVendasPdvDESC_ACRES: TIBBCDField;
    SelVendasPdvORCAMENTO: TIntegerField;
    SelVendasPdvLOCAL: TIntegerField;
    SelVendasPdvTOTAL: TIBBCDField;
    SelVendasPdvVLR_TOTAL: TIBBCDField;
    SelFaturaVendasTOTAL: TIBBCDField;
    SelFaturaVendasVLR_TOTAL: TIBBCDField;
    SelFaturaVendasDESC_ACRES: TIBBCDField;
    SelFaturaVendasNOMENATUREZA: TIBStringField;
    SelFaturaVendasNOMEVENDEDOR: TIBStringField;
    SelPessoasFJCLASSIFICACAO: TIBStringField;
    Consulta_VendaTOTAL: TIBBCDField;
    Consulta_VendaFORMA_PGTO: TIntegerField;
    Consulta_VendaCARGA: TIntegerField;
    Consulta_VendaCARTAO: TIBBCDField;
    Consulta_VendaCHEQUE: TIBBCDField;
    Consulta_VendaDESC_ACRES: TIBBCDField;
    Consulta_VendaDINHEIRO: TIBBCDField;
    Consulta_VendaENTRADA: TIBBCDField;
    Consulta_VendaTICKET: TIBBCDField;
    Consulta_VendaPESO: TIBBCDField;
    Consulta_VendaVOLUME: TIBBCDField;
    Consulta_VendaLOCAL: TIntegerField;
    Consulta_VendaTIPO_DOCTO: TIBStringField;
    Consulta_VendaNOME_VENDEDOR: TIBStringField;
    Consulta_VendaVLR_TOTAL: TIBBCDField;
    Consulta_VendaNOME_NATUREZA: TIBStringField;
    Consulta_VendaPERC_ICMS: TIBBCDField;
    Consulta_VendaNOME_TERCEIRO: TIBStringField;
    Consulta_VendaNOME_FORMA: TIBStringField;
    Consulta_VendaNOME_DOCUMENTO: TIBStringField;
    Consulta_VendaNOME_LOCAL: TIBStringField;
    Consulta_Venda_ItensPRODUTOFIS: TIBStringField;
    Consulta_Venda_ItensSUBUNIDADE: TIntegerField;
    Consulta_Venda_ItensNOME_FIS: TIBStringField;
    Consulta_Venda_ItensDESCONTO: TIBBCDField;
    Consulta_Venda_ItensICM: TIBBCDField;
    Consulta_Venda_ItensICM_SUBS: TIBBCDField;
    Consulta_Venda_ItensIPI: TIBBCDField;
    Consulta_Venda_ItensPESO: TIBBCDField;
    Consulta_Venda_ItensPORC_DESC: TIBBCDField;
    Consulta_Venda_ItensPRC_CUSTO: TIBBCDField;
    Consulta_Venda_ItensPRC_UNIT_ORIGINAL: TIBBCDField;
    Consulta_Venda_ItensPRC_UNITARIO: TIBBCDField;
    Consulta_Venda_ItensQUANTIDADE: TIBBCDField;
    Consulta_Venda_ItensVOLUME: TIBBCDField;
    SelVendedorPESSOA_FJ: TIntegerField;
    SelVendedorSENHA: TIBStringField;
    SelBoleto: TIBQuery;
    SelBoletoACEITE_ALT: TIntegerField;
    SelBoletoACEITE_DST: TIntegerField;
    SelBoletoBANCO: TIBStringField;
    SelBoletoDATA_ALT: TIntegerField;
    SelBoletoDATA_DST: TIntegerField;
    SelBoletoDOCUMENTO_ALT: TIntegerField;
    SelBoletoDOCUMENTO_DST: TIntegerField;
    SelBoletoDTPROCESSAMENTO_ALT: TIntegerField;
    SelBoletoDTPROCESSAMENTO_DST: TIntegerField;
    SelBoletoESPECIE_ALT: TIntegerField;
    SelBoletoESPECIE_DST: TIntegerField;
    SelBoletoINSTRUCOES_ALT: TIntegerField;
    SelBoletoINSTRUCOES_DST: TIntegerField;
    SelBoletoSACADO_ALT: TIntegerField;
    SelBoletoSACADO_DST: TIntegerField;
    SelBoletoTAMANHOPAGINA: TIntegerField;
    SelBoletoVALOR_ALT: TIntegerField;
    SelBoletoVALOR_DST: TIntegerField;
    SelBoletoVENCIMENTO_ALT: TIntegerField;
    SelBoletoVENCIMENTO_DST: TIntegerField;
    Consulta_Venda_ParcDCNPJ: TIBStringField;
    Consulta_Venda_ParcCODIGO: TIntegerField;
    Consulta_Venda_ParcBOLETO: TIntegerField;
    Consulta_VendaLOCAL_COBRANCA: TIntegerField;
    Localizar_Vendas: TIBQuery;
    Localizar_VendasPESSOA_FJ: TIntegerField;
    Localizar_VendasNOME: TIBStringField;
    Localizar_VendasCODIGO: TIntegerField;
    Localizar_VendasTOTAL: TIBBCDField;
    Localizar_VendasFECHADA: TIBStringField;
    Localizar_VendasHISTORICO: TIBStringField;
    Localizar_VendasVENDEDOR: TIntegerField;
    Localizar_VendasNOMEVENDEDOR: TIBStringField;
    Localizar_VendasUSUARIO: TIntegerField;
    Localizar_VendasNUM_NF: TIntegerField;
    Localizar_VendasNUM_CUPOM: TIntegerField;
    Localizar_VendasNATUREZA: TIntegerField;
    Localizar_VendasNOMENATUREZA: TIBStringField;
    Localizar_VendasTIPO_VENDA: TIBStringField;
    Localizar_VendasNOME_CONSUMIDOR: TIBStringField;
    Localizar_VendasVLR_TOTAL: TIBBCDField;
    Localizar_VendasDESC_ACRES: TIBBCDField;
    Localizar_VendasORCAMENTO: TIntegerField;
    Localizar_VendasLOCAL: TIntegerField;
    SelPessoasFJUF: TIBStringField;
    SelPropriedades: TIBQuery;
    SelPessoasFJEMPRESA: TIBStringField;
    SelPropriedadesNOME: TIBStringField;
    SelPropriedadesPROPRIETARIO: TIBStringField;
    SelPropriedadesIE: TIBStringField;
    SelPropriedadesENDERECO: TIBStringField;
    SelPropriedadesCOMPLEMENTO: TIBStringField;
    SelPropriedadesCIDADE: TIBStringField;
    SelPropriedadesUF: TIBStringField;
    SelPropriedadesCEP: TIBStringField;
    SelPropriedadesAREA_TOTAL: TIBStringField;
    SelPessoasFJFONE: TIBStringField;
    SelFaturaVendasDATA_CAIXA: TDateField;
    SelFaturaVendasCONTA_CAIXA: TIntegerField;
    SerieNOTA_VENDEDOR_DST: TIntegerField;
    SerieNOTA_VENDEDOR_ALT: TIntegerField;
    SerieNOTA_ECF_DST: TIntegerField;
    SerieNOTA_ECF_ALT: TIntegerField;
    SelPropriedadesPROPRIEDADE: TIntegerField;
    SelPropriedade: TIBQuery;
    SelPropriedadeNOME: TIBStringField;
    SelPropriedadePROPRIETARIO: TIBStringField;
    SelPropriedadeIE: TIBStringField;
    SelPropriedadeENDERECO: TIBStringField;
    SelPropriedadeCOMPLEMENTO: TIBStringField;
    SelPropriedadeCIDADE: TIBStringField;
    SelPropriedadeUF: TIBStringField;
    SelPropriedadeCEP: TIBStringField;
    SelPropriedadeAREA_TOTAL: TIBStringField;
    SelPropriedadeOBS: TBlobField;
    SerieNOTA_DESCONTO_DST: TIntegerField;
    SerieNOTA_DESCONTO_ALT: TIntegerField;
    Valida_ClienteOBS2: TBlobField;
    VendasPdvCANCELADA: TIBStringField;
    SelFaturaVendasCANCELADA: TIBStringField;
    SerieNOTA_INDCOMPL_DST: TIntegerField;
    SerieNOTA_INFCOMPL_ALT: TIntegerField;
    SerieOrcNOTA_VENDEDOR_DST: TIntegerField;
    SerieOrcNOTA_VENDEDOR_ALT: TIntegerField;
    SerieOrcNOTA_ECF_DST: TIntegerField;
    SerieOrcNOTA_ECF_ALT: TIntegerField;
    SerieOrcNOTA_DESCONTO_DST: TIntegerField;
    SerieOrcNOTA_DESCONTO_ALT: TIntegerField;
    SerieOrcNOTA_INDCOMPL_DST: TIntegerField;
    SerieOrcNOTA_INFCOMPL_ALT: TIntegerField;
    SelPropriedadeNUMERO: TIBStringField;
    SelPropriedadeBAIRRO: TIBStringField;
    Cotacoes: TIBDataSet;
    CotacoesCNPJ: TIBStringField;
    CotacoesCODIGO: TIntegerField;
    CotacoesDATA: TDateTimeField;
    CotacoesDESC_ACRESC: TFloatField;
    CotacoesFECHADO: TIBStringField;
    CotacoesFORMA_PGTO: TIntegerField;
    CotacoesNOME: TIBStringField;
    CotacoesOBSERVACAO: TIBStringField;
    CotacoesPESSOA_FJ: TIntegerField;
    CotacoesTOTAL: TFloatField;
    CotacoesUSUARIO: TIntegerField;
    CotacoesGeral: TFloatField;
    Cotacoes_Itens: TIBDataSet;
    DsCotacoes: TDataSource;
    Cotacoes_ItensCNPJ: TIBStringField;
    Cotacoes_ItensCODIGO: TIntegerField;
    Cotacoes_ItensDESCONTO: TFloatField;
    Cotacoes_ItensNOME_PRODUTO: TIBStringField;
    Cotacoes_ItensPORC_DESC: TFloatField;
    Cotacoes_ItensPRC_CUSTO: TFloatField;
    Cotacoes_ItensPRC_UNIT_ORIGINAL: TFloatField;
    Cotacoes_ItensPRC_UNITARIO: TFloatField;
    Cotacoes_ItensPRODUTO: TIBStringField;
    Cotacoes_ItensQUANTIDADE: TFloatField;
    Cotacoes_ItensSEQUENCIA: TSmallintField;
    Cotacoes_ItensSUBUNIDADE: TIntegerField;
    Cotacoes_ItensUNIDADE: TIBStringField;
    Cotacoes_ItensTotal: TFloatField;
    SelCotacoes: TIBQuery;
    SelCotacoesCNPJ: TIBStringField;
    SelCotacoesPESSOA_FJ: TIntegerField;
    SelCotacoesNOME_RAZAO: TIBStringField;
    SelCotacoesCODIGO: TIntegerField;
    SelCotacoesDATA: TDateTimeField;
    SelCotacoesUSUARIO: TIntegerField;
    SelCotacoesTOTAL: TFloatField;
    SelCotacoesDESC_ACRESC: TFloatField;
    SelCotacoesFECHADO: TIBStringField;
    SelCotacoesOBSERVACAO: TIBStringField;
    Consulta_Cotacao: TIBQuery;
    Consulta_CotacaoCODIGO: TIntegerField;
    Consulta_CotacaoDATA: TDateTimeField;
    Consulta_CotacaoPESSOA_FJ: TIntegerField;
    Consulta_CotacaoUSUARIO: TIntegerField;
    Consulta_CotacaoFORMA_PGTO: TIntegerField;
    Consulta_CotacaoNOME_FORMA: TIBStringField;
    Consulta_CotacaoOBSERVACAO: TIBStringField;
    Consulta_CotacaoTOTAL: TIBBCDField;
    Consulta_CotacaoFECHADO: TIBStringField;
    Consulta_CotacaoDESC_ACRESC: TIBBCDField;
    Consulta_CotacaoNOME: TIBStringField;
    Consulta_Cotacao_Itens: TIBQuery;
    Consulta_Cotacao_ItensPRODUTO: TIBStringField;
    Consulta_Cotacao_ItensSEQUENCIA: TSmallintField;
    Consulta_Cotacao_ItensQUANTIDADE: TIBBCDField;
    Consulta_Cotacao_ItensPRC_UNITARIO: TIBBCDField;
    Consulta_Cotacao_ItensPRC_CUSTO: TIBBCDField;
    Consulta_Cotacao_ItensDESCONTO: TIBBCDField;
    Consulta_Cotacao_ItensPORC_DESC: TIBBCDField;
    Consulta_Cotacao_ItensUNIDADE: TIBStringField;
    Consulta_Cotacao_ItensPRC_UNIT_ORIGINAL: TIBBCDField;
    Consulta_Cotacao_ItensNOME_PRODUTO: TIBStringField;
    Consulta_Cotacao_ItensSUBUNIDADE: TIntegerField;
    Consulta_Cotacao_ItensTotal: TFloatField;
    Consulta_VendaBASE_ICM: TIBBCDField;
    Consulta_VendaICM: TIBBCDField;
    Consulta_VendaBASE_ICM_SUBST: TIBBCDField;
    Consulta_VendaVALOR_ICM_SUBST: TIBBCDField;
    Consulta_VendaFRETE: TIBBCDField;
    Consulta_VendaSEGURO: TIBBCDField;
    Consulta_VendaDESPESAS: TIBBCDField;
    Consulta_VendaIPI: TIBBCDField;
    Consulta_VendaTOTAL_NOTA: TIBBCDField;
    SelVendasTotais: TIBQuery;
    SelVendasTotaisCODIGO: TIntegerField;
    SelVendasTotaisFECHADA: TIBStringField;
    SelVendasTotaisHISTORICO: TIBStringField;
    SelVendasTotaisPESSOA_FJ: TIntegerField;
    SelVendasTotaisUSUARIO: TIntegerField;
    SelVendasTotaisVENDEDOR: TIntegerField;
    SelVendasTotaisNUM_NF: TIntegerField;
    SelVendasTotaisNUM_CUPOM: TIntegerField;
    SelVendasTotaisNATUREZA: TIntegerField;
    SelVendasTotaisTIPO_VENDA: TIBStringField;
    SelVendasTotaisNOME_CONSUMIDOR: TIBStringField;
    SelVendasTotaisORCAMENTO: TIntegerField;
    SelVendasTotaisLOCAL: TIntegerField;
    SelVendasTotaisNOME: TIBStringField;
    SelVendasTotaisTOTAL: TIBBCDField;
    SelVendasTotaisVLR_TOTAL: TIBBCDField;
    SelVendasTotaisDESC_ACRES: TIBBCDField;
    SelVendasTotaisNOMENATUREZA: TIBStringField;
    SelVendasTotaisNOMEVENDEDOR: TIBStringField;
    SelVendasTotaisCONTA_CAIXA: TIntegerField;
    SelVendasTotaisCANCELADA: TIBStringField;
    SelVendasTotaisBASE_ICM: TIBBCDField;
    SelVendasTotaisICM: TIBBCDField;
    SelVendasTotaisBASE_ICM_SUBST: TIBBCDField;
    SelVendasTotaisVALOR_ICM_SUBST: TIBBCDField;
    SelVendasTotaisFRETE: TIBBCDField;
    SelVendasTotaisSEGURO: TIBBCDField;
    SelVendasTotaisDESPESAS: TIBBCDField;
    SelVendasTotaisIPI: TIBBCDField;
    SelVendasTotaisTOTAL_NOTA: TIBBCDField;
    SelFormaPgtoFATURA_FUTURA: TIBStringField;
    SelFatura_Futura: TIBQuery;
    SelFatura_FuturaCODIGO: TIntegerField;
    SelFatura_FuturaFECHADA: TIBStringField;
    SelFatura_FuturaHISTORICO: TIBStringField;
    SelFatura_FuturaPESSOA_FJ: TIntegerField;
    SelFatura_FuturaUSUARIO: TIntegerField;
    SelFatura_FuturaVENDEDOR: TIntegerField;
    SelFatura_FuturaNUM_NF: TIntegerField;
    SelFatura_FuturaNUM_CUPOM: TIntegerField;
    SelFatura_FuturaNATUREZA: TIntegerField;
    SelFatura_FuturaTIPO_VENDA: TIBStringField;
    SelFatura_FuturaNOME_CONSUMIDOR: TIBStringField;
    SelFatura_FuturaORCAMENTO: TIntegerField;
    SelFatura_FuturaLOCAL: TIntegerField;
    SelFatura_FuturaTOTAL: TIBBCDField;
    SelFatura_FuturaDESC_ACRES: TIBBCDField;
    SelFatura_FuturaPESSOA_RAZAO: TIBStringField;
    SelFatura_FuturaNOME_NATUREZA: TIBStringField;
    SelFatura_FuturaENVIADA_CX: TIBStringField;
    SelFatura_FuturaFORMA_PGTO: TIntegerField;
    SelFatura_FuturaPROPRIEDADE: TIntegerField;
    SelFatura_FuturaCONVENIADO: TIntegerField;
    SelFatura_FuturaTIPO_DOCTO: TIBStringField;
    SelFatura_FuturaLOCAL_COBRANCA: TIntegerField;
    SelFatura_FuturaENTRADA: TIBBCDField;
    SelFatura_FuturaDINHEIRO: TIBBCDField;
    SelFatura_FuturaCHEQUE: TIBBCDField;
    SelFatura_FuturaCARTAO: TIBBCDField;
    SelFatura_FuturaTICKET: TIBBCDField;
    SelFatura_FuturaVLRLIQUIDO: TIBBCDField;
    SelFatura_FuturaVLR_PARC_LC: TIBBCDField;
    SelFatura_FuturaTERCEIRO: TIntegerField;
    SelFatura_FuturaCARGA: TIntegerField;
    SelFatura_FuturaVOLUME: TIBBCDField;
    SelFatura_FuturaPESO: TIBBCDField;
    SelFatura_FuturaREQUISICAO: TIBStringField;
    SelFatura_FuturaDESCRICAO: TBlobField;
    SelFatura_FuturaNOME_FORMA: TIBStringField;
    SelFatura_FuturaFATURA_FUTURA: TIBStringField;
    SelFatura_FuturaNOME_VENDEDOR: TIBStringField;
    SelFatura_FuturaCONTA_CAIXA: TIntegerField;
    SelFatura_FuturaCANCELADA: TIBStringField;
    SelFatura_FuturaBASE_ICM_SUBST: TIBBCDField;
    SelFatura_FuturaVALOR_ICM_SUBST: TIBBCDField;
    SelFatura_FuturaFRETE: TIBBCDField;
    SelFatura_FuturaSEGURO: TIBBCDField;
    SelFatura_FuturaDESPESAS: TIBBCDField;
    SelFatura_FuturaIPI: TIBBCDField;
    SelFatura_FuturaTOTAL_NOTA: TIBBCDField;
    VendasPdvSELECIONADA: TIBStringField;
    SelFatura_FuturaSELECIONADA: TIBStringField;
    SelBanco: TIBQuery;
    SelBancoBOLETO: TIntegerField;
    SelBancoCODIGO: TIBStringField;
    SelBancoNOME: TIBStringField;
    VendasPdvDUPLICATA: TIntegerField;
    SelListaFatura_Futura: TIBQuery;
    SelListaFatura_FuturaCODIGO: TIntegerField;
    SelListaFatura_FuturaDATA: TDateTimeField;
    SelListaFatura_FuturaFECHADA: TIBStringField;
    SelListaFatura_FuturaHISTORICO: TIBStringField;
    SelListaFatura_FuturaPESSOA_FJ: TIntegerField;
    SelListaFatura_FuturaUSUARIO: TIntegerField;
    SelListaFatura_FuturaVENDEDOR: TIntegerField;
    SelListaFatura_FuturaNUM_NF: TIntegerField;
    SelListaFatura_FuturaNUM_CUPOM: TIntegerField;
    SelListaFatura_FuturaNATUREZA: TIntegerField;
    SelListaFatura_FuturaTIPO_VENDA: TIBStringField;
    SelListaFatura_FuturaNOME_CONSUMIDOR: TIBStringField;
    SelListaFatura_FuturaORCAMENTO: TIntegerField;
    SelListaFatura_FuturaLOCAL: TIntegerField;
    SelListaFatura_FuturaTOTAL: TIBBCDField;
    SelListaFatura_FuturaDESC_ACRES: TIBBCDField;
    SelListaFatura_FuturaOBSERVACAO: TIBStringField;
    SelListaFatura_FuturaPESSOA_RAZAO: TIBStringField;
    SelListaFatura_FuturaNOME_NATUREZA: TIBStringField;
    SelListaFatura_FuturaENVIADA_CX: TIBStringField;
    SelListaFatura_FuturaFORMA_PGTO: TIntegerField;
    SelListaFatura_FuturaPROPRIEDADE: TIntegerField;
    SelListaFatura_FuturaCONVENIADO: TIntegerField;
    SelListaFatura_FuturaTIPO_DOCTO: TIBStringField;
    SelListaFatura_FuturaLOCAL_COBRANCA: TIntegerField;
    SelListaFatura_FuturaENTRADA: TIBBCDField;
    SelListaFatura_FuturaDINHEIRO: TIBBCDField;
    SelListaFatura_FuturaCHEQUE: TIBBCDField;
    SelListaFatura_FuturaCARTAO: TIBBCDField;
    SelListaFatura_FuturaTICKET: TIBBCDField;
    SelListaFatura_FuturaVLRLIQUIDO: TIBBCDField;
    SelListaFatura_FuturaVLR_PARC_LC: TIBBCDField;
    SelListaFatura_FuturaTERCEIRO: TIntegerField;
    SelListaFatura_FuturaCARGA: TIntegerField;
    SelListaFatura_FuturaVOLUME: TIBBCDField;
    SelListaFatura_FuturaPESO: TIBBCDField;
    SelListaFatura_FuturaREQUISICAO: TIBStringField;
    SelListaFatura_FuturaDESCRICAO: TBlobField;
    SelListaFatura_FuturaNOME_FORMA: TIBStringField;
    SelListaFatura_FuturaFATURA_FUTURA: TIBStringField;
    SelListaFatura_FuturaNOME_VENDEDOR: TIBStringField;
    SelListaFatura_FuturaCONTA_CAIXA: TIntegerField;
    SelListaFatura_FuturaCANCELADA: TIBStringField;
    SelListaFatura_FuturaBASE_ICM_SUBST: TIBBCDField;
    SelListaFatura_FuturaVALOR_ICM_SUBST: TIBBCDField;
    SelListaFatura_FuturaFRETE: TIBBCDField;
    SelListaFatura_FuturaSEGURO: TIBBCDField;
    SelListaFatura_FuturaDESPESAS: TIBBCDField;
    SelListaFatura_FuturaIPI: TIBBCDField;
    SelListaFatura_FuturaTOTAL_NOTA: TIBBCDField;
    SelListaFatura_FuturaDATA_CAIXA: TDateField;
    SelListaFatura_FuturaSELECIONADA: TIBStringField;
    VendasPdv_ItensFRACIONADO: TIBStringField;
    VendasPdvRECEBIDAS: TFloatField;
    Valida_ClienteCPF_CNPJ: TIBStringField;
    VendasPdv_ItensVENDEDOR: TIntegerField;
    Consulta_Orcamento: TIBQuery;
    Consulta_OrcamentoPESSOA_FJ: TIntegerField;
    Consulta_OrcamentoCODIGO: TIntegerField;
    Consulta_OrcamentoTOTAL: TIBBCDField;
    Consulta_OrcamentoOBSERVACAO: TIBStringField;
    Consulta_OrcamentoNOME_RAZAO: TIBStringField;
    Consulta_OrcamentoNOME_FORMA: TIBStringField;
    Consulta_OrcamentoNOME_VENDEDOR: TIBStringField;
    Consulta_OrcamentoVENDEDOR: TIntegerField;
    Consulta_OrcamentoVLR_TOTAL: TIBBCDField;
    Consulta_OrcamentoDESC_ACRESC: TIBBCDField;
    Consulta_OrcamentoPESO: TIBBCDField;
    Consulta_OrcamentoVOLUME: TIBBCDField;
    Consulta_OrcamentoFORMA: TIntegerField;
    SelVeiculos: TIBQuery;
    SelVeiculosCODIGO: TIntegerField;
    SelVeiculosTIPO_VEICULO: TIntegerField;
    SelVeiculosMARCA_VEICULO: TIntegerField;
    SelVeiculosMODELO: TIBStringField;
    SelVeiculosPLACA: TIBStringField;
    SelVeiculosKM_ATUAL: TIBBCDField;
    SelVeiculosNOME_TIPO: TIBStringField;
    SelVeiculosNOME_MARCA: TIBStringField;
    Empresa: TIBQuery;
    EmpresaCNPJ: TIBStringField;
    EmpresaPDV_MSG1: TIBStringField;
    EmpresaPDV_MSG2: TIBStringField;
    EmpresaPDV_MSG3: TIBStringField;
    EmpresaPDV_MSG4: TIBStringField;
    EmpresaPDV_MSG5: TIBStringField;
    EmpresaMENS_ECF: TIBStringField;
    EmpresaFONE: TIBStringField;
    EmpresaFAX: TIBStringField;
    Valida_ClienteCONTROLA_PLACA: TIBStringField;
    Valida_ClienteCONTROLA_KM: TIBStringField;
    Valida_ClienteASSINA_NOTA: TIBStringField;
    SelFormaPgtoFORMA_ECF: TIBStringField;
    SelFormaPgtoTIPO_PAGAMENTO: TIBStringField;
    SelConta: TIBQuery;
    SelContaAGENCIA: TIBStringField;
    SelContaBANCO: TIBStringField;
    SelContaCONTA: TIBStringField;
    SelContaNOME_BANCO: TIBStringField;
    Contas_Pessoas: TIBDataSet;
    Contas_PessoasAGENCIA: TIBStringField;
    Contas_PessoasBANCO: TIBStringField;
    Contas_PessoasCNPJ: TIBStringField;
    Contas_PessoasCONTA: TIBStringField;
    Contas_PessoasPESSOA_FJ: TIntegerField;
    Valida_ClienteNAO_COBR_JUR_ATE: TFloatField;
    Valida_ClienteTAXA_JUROS: TFloatField;
    Vendas_Formas: TIBQuery;
    Vendas_FormasFORMA_PGTO: TIntegerField;
    Vendas_FormasSEQUENCIA: TIntegerField;
    Vendas_FormasVALOR_ORIGINAL: TIBBCDField;
    Vendas_FormasJUROS: TIBBCDField;
    Vendas_FormasTIPO_PAGTO: TIBStringField;
    Vendas_FormasNOME_FORMA: TIBStringField;
    Vendas_FormasTotal: TFloatField;
    Valida_Forma: TIBQuery;
    Valida_FormaACRESCIMO: TFloatField;
    Valida_FormaAVISTA: TIBStringField;
    Valida_FormaCNPJ: TIBStringField;
    Valida_FormaCODIGO: TIntegerField;
    Valida_FormaCOMENTRADA: TIBStringField;
    Valida_FormaDESCONTO: TFloatField;
    Valida_FormaFATURA_FUTURA: TIBStringField;
    Valida_FormaFORMA_ECF: TIBStringField;
    Valida_FormaINTERVALO: TIntegerField;
    Valida_FormaNOME: TIBStringField;
    Valida_FormaNPARCELAS: TIntegerField;
    Valida_FormaTIPO_PAGAMENTO: TIBStringField;
    Valida_ClienteUF: TIBStringField;
    Consulta_Orcamento_ItensPRC_UNITARIO_2: TFloatField;
    Consulta_Orcamento_ItensMARCA: TIBStringField;
    Consulta_Orcamento_ItensMARCA_2: TIBStringField;
    Consulta_Orcamento_ItensTotal_2: TFloatField;
    Consulta_OrcamentoDESC_ACRESC_2: TIBBCDField;
    Consulta_OrcamentoCLIENTE: TIBStringField;
    Vendas_FormasBANCO: TIBStringField;
    Vendas_FormasCONTA: TIBStringField;
    Vendas_FormasDV_CONTA: TIBStringField;
    Vendas_FormasAGENCIA: TIBStringField;
    Vendas_FormasDV_AGENCIA: TIBStringField;
    Vendas_FormasCHEQUE: TIBStringField;
    Vendas_FormasDV_CHEQUE: TIBStringField;
    Consulta_VendaKM_ATUAL: TIBBCDField;
    Consulta_VendaMEDIA_KM: TIBBCDField;
    Vendas_FormasAVISTA: TIBStringField;
    Vendas_FrmPagto_Agrupadas: TIBQuery;
    Vendas_FrmPagto_AgrupadasVALOR_ORIGINAL: TIBBCDField;
    Vendas_FrmPagto_AgrupadasJUROS: TIBBCDField;
    Vendas_FrmPagto_AgrupadasTIPO_PAGTO: TIBStringField;
    Consulta_VendaMENSAGEM_NAT1: TIBStringField;
    Consulta_VendaMENSAGEM_NAT2: TIBStringField;
    SelFaturaVendasCARGA: TIntegerField;
    SelReducaoMENSAGEM_NF_IE: TIBStringField;
    SerieCLI_DUPLLARGURA_COLUNA: TIntegerField;
    SerieCLI_DUPLNUM_COLUNA: TIntegerField;
    SerieNOTA_MSGNAT_DST: TIntegerField;
    SerieNOTA_MSGNAT_ALT: TIntegerField;
    Consulta_VendaDOCUMENTOS_CONSUMIDOR: TIBStringField;
    Consulta_VendaENDERECO_CONSUMIDOR: TIBStringField;
    SelBoletoCIDADE_ALT: TIntegerField;
    SelBoletoCIDADE_DST: TIntegerField;
    SelBoletoPORTA_IMPRESSORA: TIBStringField;
    Consulta_VendaDATA: TDateField;
    Consulta_OrcamentoDATA: TDateTimeField;
    Consulta_OrcamentoVALIDADE: TDateTimeField;
    CotacoesFORMA_COMBINADA: TIBStringField;
    Valida_Pessoa_Fj: TIBQuery;
    Valida_Pessoa_FjNOME: TIBStringField;
    Valida_Pessoa_FjUF: TIBStringField;
    Valida_Pessoa_FjCPF_CNPJ: TIBStringField;
    Valida_Pessoa_FjOBS: TBlobField;
    Valida_Pessoa_FjOBS2: TBlobField;
    Valida_Pessoa_FjCLASSIFICACAO: TIntegerField;
    CotacoesTRANSPORTADORA: TIntegerField;
    CotacoesNOME_TRANSPORTADORA: TIBStringField;
    SelTransportadora: TIBQuery;
    SelTransportadoraCNPJ: TIBStringField;
    SelTransportadoraCODIGO: TIntegerField;
    SelTransportadoraNOME: TIBStringField;
    Consulta_CotacaoTRANSPORTADORA: TIBStringField;
    Trocas: TIBDataSet;
    TrocasCNPJ: TIBStringField;
    TrocasCODIGO: TIntegerField;
    TrocasFORMA_PGTO: TIntegerField;
    TrocasNOME_CONSUMIDOR: TIBStringField;
    TrocasOBSERVACAO: TIBStringField;
    TrocasPESSOA_FJ: TIntegerField;
    TrocasUSUARIO: TIntegerField;
    TrocasVENDEDOR: TIntegerField;
    TrocasDESC_ACRESC: TFloatField;
    TrocasTOTAL: TFloatField;
    TrocasFECHADO: TIBStringField;
    TrocasGERAL: TFloatField;
    TrocasNOME: TIBStringField;
    TrocasVALIDADE: TDateTimeField;
    TrocasTOTAL_2: TFloatField;
    TrocasGeral2: TFloatField;
    TrocasCLIENTE: TIBStringField;
    TrocasDESC_ACRESC_2: TFloatField;
    TrocasDATA_CAIXA: TDateTimeField;
    Trocas_Itens: TIBDataSet;
    Trocas_ItensCNPJ: TIBStringField;
    Trocas_ItensCODIGO: TIntegerField;
    Trocas_ItensPRODUTO: TIBStringField;
    Trocas_ItensSEQUENCIA: TSmallintField;
    Trocas_ItensQUANTIDADE: TFloatField;
    Trocas_ItensPRC_UNITARIO: TFloatField;
    Trocas_ItensPRC_CUSTO: TFloatField;
    Trocas_ItensICM: TFloatField;
    Trocas_ItensICM_SUBS: TFloatField;
    Trocas_ItensIPI: TFloatField;
    Trocas_ItensVOLUME: TFloatField;
    Trocas_ItensPESO: TFloatField;
    Trocas_ItensDESCONTO: TFloatField;
    Trocas_ItensPORC_DESC: TFloatField;
    Trocas_ItensUNIDADE: TIBStringField;
    Trocas_ItensPRC_UNIT_ORIGINAL: TFloatField;
    Trocas_ItensTotal: TFloatField;
    Trocas_ItensPeso_Total: TFloatField;
    Trocas_ItensVolume_Total: TFloatField;
    Trocas_ItensNOME_PRODUTO: TIBStringField;
    Trocas_ItensSUBUNIDADE: TIntegerField;
    Trocas_ItensMARCA: TIBStringField;
    DsTrocas: TDataSource;
    Trocas_ItensTIPO: TIBStringField;
    TrocasLiquido: TFloatField;
    TrocasNOME_VENDEDOR: TIBStringField;
    TrocasENVIADA_CX: TIBStringField;
    TrocasNOME_FORMA: TIBStringField;
    Trocas_Parc: TIBDataSet;
    Trocas_ParcCNPJ: TIBStringField;
    Trocas_ParcCODIGO: TIntegerField;
    Trocas_ParcVENCTO: TDateTimeField;
    Trocas_ParcPARCELA: TIBStringField;
    Trocas_ParcVALOR: TFloatField;
    TrocasENTRADA: TFloatField;
    TrocasTIPO_DOCTO: TIBStringField;
    TrocasLOCAL_COBRANCA: TIntegerField;
    TrocasVLR_PARC_LC: TFloatField;
    Trocas_ParcBOLETO: TIntegerField;
    TrocasTotal_Parcelar: TFloatField;
    TrocasDiferenca: TFloatField;
    TrocasAVista: TFloatField;
    TrocasPGTO_AVISTA: TIBStringField;
    Consulta_Troca: TIBQuery;
    Consulta_TrocaPESSOA_FJ: TIntegerField;
    Consulta_TrocaNOME: TIBStringField;
    Consulta_TrocaCODIGO: TIntegerField;
    Consulta_TrocaDATA: TDateField;
    Consulta_TrocaTOTAL: TIBBCDField;
    Consulta_TrocaFECHADO: TIBStringField;
    Consulta_TrocaVENDEDOR: TIntegerField;
    Consulta_TrocaUSUARIO: TIntegerField;
    Consulta_TrocaNOME_CONSUMIDOR: TIBStringField;
    Consulta_TrocaOBSERVACAO: TIBStringField;
    Consulta_TrocaFORMA_PGTO: TIntegerField;
    Consulta_TrocaCARTAO: TIBBCDField;
    Consulta_TrocaCHEQUE: TIBBCDField;
    Consulta_TrocaDESC_ACRESC: TIBBCDField;
    Consulta_TrocaDINHEIRO: TIBBCDField;
    Consulta_TrocaENTRADA: TIBBCDField;
    Consulta_TrocaTICKET: TIBBCDField;
    Consulta_TrocaLOCAL_COBRANCA: TIntegerField;
    Consulta_TrocaTIPO_DOCTO: TIBStringField;
    Consulta_TrocaNOME_VENDEDOR: TIBStringField;
    Consulta_TrocaVLR_TOTAL: TIBBCDField;
    Consulta_TrocaNOME_FORMA: TIBStringField;
    Consulta_TrocaNOME_DOCUMENTO: TIBStringField;
    Consulta_TrocaNOME_LOCAL: TIBStringField;
    Consulta_Troca_Parc: TIBQuery;
    Consulta_Troca_ParcBOLETO: TIntegerField;
    Consulta_Troca_ParcCNPJ: TIBStringField;
    Consulta_Troca_ParcCODIGO: TIntegerField;
    Consulta_Troca_ParcPARCELA: TIBStringField;
    Consulta_Troca_ParcVALOR: TFloatField;
    Consulta_Troca_ParcVENCTO: TDateTimeField;
    Consulta_Troca_Itens: TIBQuery;
    Consulta_Troca_ItensDESCONTO: TIBBCDField;
    Consulta_Troca_ItensICM: TIBBCDField;
    Consulta_Troca_ItensICM_SUBS: TIBBCDField;
    Consulta_Troca_ItensIPI: TIBBCDField;
    Consulta_Troca_ItensPESO: TIBBCDField;
    Consulta_Troca_ItensPORC_DESC: TIBBCDField;
    Consulta_Troca_ItensPRC_CUSTO: TIBBCDField;
    Consulta_Troca_ItensPRC_UNIT_ORIGINAL: TIBBCDField;
    Consulta_Troca_ItensPRC_UNITARIO: TIBBCDField;
    Consulta_Troca_ItensPRODUTO: TIBStringField;
    Consulta_Troca_ItensQUANTIDADE: TIBBCDField;
    Consulta_Troca_ItensSEQUENCIA: TIntegerField;
    Consulta_Troca_ItensUNIDADE: TIBStringField;
    Consulta_Troca_ItensSUBUNIDADE: TIntegerField;
    Consulta_Troca_ItensVOLUME: TIBBCDField;
    Consulta_Troca_ItensNOME_PRODUTO: TIBStringField;
    Consulta_Troca_ItensTIPO: TIBStringField;
    Consulta_TrocaGeral: TFloatField;
    Consulta_TrocaGeral2: TFloatField;
    Consulta_TrocaLiquido: TFloatField;
    Consulta_Troca_ItensTotal: TFloatField;
    SelVeiculosMOTORISTA: TIBStringField;
    SelFaturaTrocas: TIBQuery;
    SelFaturaTrocasPESSOA_FJ: TIntegerField;
    SelFaturaTrocasNOME: TIBStringField;
    SelFaturaTrocasCODIGO: TIntegerField;
    SelFaturaTrocasTOTAL: TIBBCDField;
    SelFaturaTrocasFECHADO: TIBStringField;
    SelFaturaTrocasVENDEDOR: TIntegerField;
    SelFaturaTrocasNOMEVENDEDOR: TIBStringField;
    SelFaturaTrocasUSUARIO: TIntegerField;
    SelFaturaTrocasCONTA_CAIXA: TIntegerField;
    SelFaturaTrocasVLR_TOTAL: TIBBCDField;
    SelFaturaTrocasDESC_ACRESC: TIBBCDField;
    SelFaturaTrocasOBSERVACAO: TIBStringField;
    SelFaturaTrocasENVIADA_CX: TIBStringField;
    FaturaTrocas: TIBDataSet;
    Consulta_VendaAVISTA: TIBStringField;
    Retiradas_Clientes: TIBDataSet;
    Retiradas_ClientesCNPJ: TIBStringField;
    Retiradas_ClientesCONTA: TIntegerField;
    Retiradas_ClientesDATA: TDateTimeField;
    Retiradas_ClientesDOCUMENTO: TIBStringField;
    Retiradas_ClientesHISTORICO: TIBStringField;
    Retiradas_ClientesUSUARIO: TIntegerField;
    Retiradas_ClientesVALOR: TFloatField;
    Retiradas_ClientesPESSOA_FJ: TIntegerField;
    Retiradas_ClientesVENDA: TIntegerField;
    Valida_ClienteVALOR_MAXIMO_RETIRADA: TFloatField;
    Valida_ClienteLIMITE_DIARIO_RETIRADA: TFloatField;
    FaturaTrocasCARTAO: TFloatField;
    FaturaTrocasCHEQUE: TFloatField;
    FaturaTrocasCLIENTE: TIBStringField;
    FaturaTrocasCNPJ: TIBStringField;
    FaturaTrocasCODIGO: TIntegerField;
    FaturaTrocasCONTA_CAIXA: TIntegerField;
    FaturaTrocasDATA_CAIXA: TDateTimeField;
    FaturaTrocasDESC_ACRESC: TFloatField;
    FaturaTrocasDESC_ACRESC_2: TFloatField;
    FaturaTrocasDINHEIRO: TFloatField;
    FaturaTrocasENTRADA: TFloatField;
    FaturaTrocasENVIADA_CX: TIBStringField;
    FaturaTrocasFECHADO: TIBStringField;
    FaturaTrocasFORMA_PGTO: TIntegerField;
    FaturaTrocasLOCAL_COBRANCA: TIntegerField;
    FaturaTrocasNOME: TIBStringField;
    FaturaTrocasNOME_CONSUMIDOR: TIBStringField;
    FaturaTrocasNOME_FORMA: TIBStringField;
    FaturaTrocasNOME_VENDEDOR: TIBStringField;
    FaturaTrocasOBSERVACAO: TIBStringField;
    FaturaTrocasPESO: TFloatField;
    FaturaTrocasPESSOA_FJ: TIntegerField;
    FaturaTrocasPGTO_AVISTA: TIBStringField;
    FaturaTrocasTICKET: TFloatField;
    FaturaTrocasTIPO_DOCTO: TIBStringField;
    FaturaTrocasTOTAL: TFloatField;
    FaturaTrocasTOTAL_2: TFloatField;
    FaturaTrocasUSUARIO: TIntegerField;
    FaturaTrocasVALIDADE: TDateTimeField;
    FaturaTrocasVENDEDOR: TIntegerField;
    FaturaTrocasVLR_PARC_LC: TFloatField;
    FaturaTrocasVOLUME: TFloatField;
    Contas_PessoasDV_AGENCIA: TIBStringField;
    Contas_PessoasDV_CONTA: TIBStringField;
    SelContaDV_AGENCIA: TIBStringField;
    SelContaDV_CONTA: TIBStringField;
    SerieNOTA_NUMRDP_DST: TIntegerField;
    SerieNOTA_NUMRDP_ALT: TIntegerField;
    SeriePORTA_IMPRESSAO: TIBStringField;
    SelBoletoLPP: TIntegerField;
    Consulta_TrocaTOTAL_2: TIBBCDField;
    Consulta_TrocaDESC_ACRESC_2: TIBBCDField;
    SelUnidadeUNIDADES: TFloatField;
    VendasPdvTotal_Geral: TFloatField;
    FaturaTrocasDiferenca: TFloatField;
    FaturaTrocastotal_parcelar: TFloatField;
    FaturaTrocasAVISTA: TFloatField;
    FaturaTrocasTOTAL_GERAL: TFloatField;
    FaturaTrocasTOTAL_GERAL2: TFloatField;
    FaturaTrocasLiquido: TFloatField;
    VendasPdv_ItensNOME_VENDEDOR: TIBStringField;
    SelFatura_FuturaDATA: TDateTimeField;
    SelFatura_FuturaDATA_CAIXA: TDateTimeField;
    TrocasCANCELADA: TIBStringField;
    SelFaturaTrocasCANCELADA: TIBStringField;
    Consulta_Venda_ItensCOMPLEMENTO: TIBStringField;
    SelVendedorPdv: TIBQuery;
    SelVendedorPdvCNPJ: TIBStringField;
    SelVendedorPdvCODIGO: TIntegerField;
    SelVendedorPdvNOME: TIBStringField;
    SelVendedorPdvCOM_VISTA: TFloatField;
    SelVendedorPdvCOM_PRAZO: TFloatField;
    SelVendedorPdvPESSOA_FJ: TIntegerField;
    SelVendedorPdvSENHA: TIBStringField;
    VERIFICA_ESTADO_VENDA: TIBQuery;
    VER_ANALISE_CUSTOS: TIBQuery;
    VER_ANALISE_CUSTOSCODIGO: TIntegerField;
    VER_ANALISE_CUSTOSPESSOA: TIntegerField;
    VER_ANALISE_CUSTOSTOTAL: TIBBCDField;
    VER_ANALISE_CUSTOSDATA: TDateTimeField;
    VER_ANALISE_CUSTOSPRODUTO: TIBStringField;
    VER_ANALISE_CUSTOSQUANTIDADE: TIBBCDField;
    VER_ANALISE_CUSTOSPRC_UNITARIO: TIBBCDField;
    VER_ANALISE_CUSTOSPRC_CUSTO: TIBBCDField;
    VER_ANALISE_CUSTOSNOME: TIBStringField;
    VER_ANALISE_CUSTOSNOME_PRODUTO: TIBStringField;
    VER_ANALISE_CUSTOSMARGEM: TIBBCDField;
    VER_ANALISE_CUSTOSVlr_Total: TFloatField;
    VER_ANALISE_CUSTOSMARGEM_2: TIBBCDField;
    VER_ANALISE_CUSTOSPRC_UNITARIO_2: TIBBCDField;
    SelFormaPgtoATIVO: TIBStringField;
    Consulta_Venda_ItensSERVICO: TBlobField;
    Lista_Grades: TIBQuery;
    Lista_GradesMATERIAL: TIntegerField;
    Lista_GradesCOR: TIntegerField;
    Lista_GradesESTOQUE: TIBBCDField;
    Lista_GradesNOME_MATERIAL: TIBStringField;
    Lista_GradesNOME_COR: TIBStringField;
    Lista_GradesPERFIL: TIntegerField;
    Lista_GradesNOME_PERFIL: TIBStringField;
    VendasPdv_ItensSERVICO: TBlobField;
    Fat_Vendas_Garantias: TIBDataSet;
    SelGarantias: TIBQuery;
    SelGarantiasCODIGO: TIntegerField;
    SelGarantiasNOME: TIBStringField;
    Fat_Vendas_GarantiasCNPJ: TIBStringField;
    Fat_Vendas_GarantiasCODIGO: TIntegerField;
    Fat_Vendas_GarantiasGARANTIA: TIntegerField;
    Ver_Fat_Vendas_Garantia: TIBQuery;
    Ver_Fat_Vendas_GarantiaTEXTO: TBlobField;
    Ver_Fat_Vendas_GarantiaPRODUTO: TIBStringField;
    Ver_Fat_Vendas_GarantiaNOME: TIBStringField;
    Ver_Fat_Vendas_GarantiaCOMPLEMENTO: TIBStringField;
    VendasPdv_ItensCOMPLEMENTO: TIBStringField;
    VERIFICA_ESTADO_VENDAFECHADA: TIBStringField;
    VERIFICA_ESTADO_VENDANF: TIntegerField;
    VERIFICA_ESTADO_VENDACF: TIntegerField;
    VERIFICA_ESTADO_VENDADATA_CAIXA: TDateTimeField;
    VERIFICA_ESTADO_VENDAENVIADA_CX: TIBStringField;
    VERIFICA_ESTADO_VENDAUSUARIO: TIntegerField;
    VERIFICA_ESTADO_VENDACONTA_CAIXA: TIntegerField;
    SerieNOTA_DESCONTO_ALT2: TIntegerField;
    SerieNOTA_DESCONTO_DST2: TIntegerField;
    SelPessoas_Conv: TIBQuery;
    SelPessoas_ConvCODIGO: TIntegerField;
    SelPessoas_ConvPESSOA_FJ: TIntegerField;
    SelPessoas_ConvNOME_RAZAO: TIBStringField;
    SelPessoas_ConvFONE: TIBStringField;
    SelPessoas_ConvFANTASIA: TIBStringField;
    SelPessoas_ConvCPF_CGC: TIBStringField;
    SelPessoas_ConvBLOQUEADO: TIBStringField;
    SelPessoas_ConvCLASSIFICACAO: TIBStringField;
    SelPessoas_ConvUF: TIBStringField;
    SelPessoas_ConvEMPRESA: TIBStringField;
    SelPessoasFJORDEM: TIntegerField;
    SelFatura_Futura_Itens: TIBQuery;
    SelFatura_Futura_ItensPRODUTO: TIBStringField;
    SelFatura_Futura_ItensSEQUENCIA: TSmallintField;
    SelFatura_Futura_ItensUNIDADE: TIBStringField;
    SelFatura_Futura_ItensTotal: TFloatField;
    SelFatura_Futura_ItensNOME_PRODUTO: TIBStringField;
    SelFatura_Futura_ItensALIQUOTA: TIBStringField;
    SelFatura_Futura_ItensORIGEM: TIntegerField;
    SelFatura_Futura_ItensCTE: TIntegerField;
    SelFatura_Futura_ItensCTIE: TIntegerField;
    SelFatura_Futura_ItensREDUCAO: TIntegerField;
    SelFatura_Futura_ItensPRODUTOFIS: TIBStringField;
    SelFatura_Futura_ItensSUBUNIDADE: TIntegerField;
    SelFatura_Futura_ItensNOME_FIS: TIBStringField;
    SelFatura_Futura_ItensDESCONTO: TIBBCDField;
    SelFatura_Futura_ItensICM: TIBBCDField;
    SelFatura_Futura_ItensICM_SUBS: TIBBCDField;
    SelFatura_Futura_ItensIPI: TIBBCDField;
    SelFatura_Futura_ItensPESO: TIBBCDField;
    SelFatura_Futura_ItensPORC_DESC: TIBBCDField;
    SelFatura_Futura_ItensPRC_CUSTO: TIBBCDField;
    SelFatura_Futura_ItensPRC_UNIT_ORIGINAL: TIBBCDField;
    SelFatura_Futura_ItensPRC_UNITARIO: TIBBCDField;
    SelFatura_Futura_ItensQUANTIDADE: TIBBCDField;
    SelFatura_Futura_ItensVOLUME: TIBBCDField;
    SelFatura_Futura_ItensCOMPLEMENTO: TIBStringField;
    SelFatura_Futura_ItensSERVICO: TBlobField;
    SelFatura_FuturaBASE_ICM: TIBBCDField;
    SelFatura_FuturaICM: TIBBCDField;
    SelFatura_FuturaPERC_ICMS: TIBBCDField;
    SelFatura_FuturaMENSAGEM_NAT1: TIBStringField;
    SelFatura_FuturaMENSAGEM_NAT2: TIBStringField;
    SelFatura_Futura_Prod: TIBQuery;
    SelFatura_Futura_ProdCODIGO: TIntegerField;
    SelFatura_Futura_ProdFECHADA: TIBStringField;
    SelFatura_Futura_ProdHISTORICO: TIBStringField;
    SelFatura_Futura_ProdPESSOA_FJ: TIntegerField;
    SelFatura_Futura_ProdUSUARIO: TIntegerField;
    SelFatura_Futura_ProdVENDEDOR: TIntegerField;
    SelFatura_Futura_ProdNUM_NF: TIntegerField;
    SelFatura_Futura_ProdNUM_CUPOM: TIntegerField;
    SelFatura_Futura_ProdNATUREZA: TIntegerField;
    SelFatura_Futura_ProdTIPO_VENDA: TIBStringField;
    SelFatura_Futura_ProdNOME_CONSUMIDOR: TIBStringField;
    SelFatura_Futura_ProdORCAMENTO: TIntegerField;
    SelFatura_Futura_ProdLOCAL: TIntegerField;
    SelFatura_Futura_ProdTOTAL: TIBBCDField;
    SelFatura_Futura_ProdDESC_ACRES: TIBBCDField;
    SelFatura_Futura_ProdOBSERVACAO: TIBStringField;
    SelFatura_Futura_ProdPESSOA_RAZAO: TIBStringField;
    SelFatura_Futura_ProdNOME_NATUREZA: TIBStringField;
    SelFatura_Futura_ProdENVIADA_CX: TIBStringField;
    SelFatura_Futura_ProdFORMA_PGTO: TIntegerField;
    SelFatura_Futura_ProdPROPRIEDADE: TIntegerField;
    SelFatura_Futura_ProdCONVENIADO: TIntegerField;
    SelFatura_Futura_ProdTIPO_DOCTO: TIBStringField;
    SelFatura_Futura_ProdLOCAL_COBRANCA: TIntegerField;
    SelFatura_Futura_ProdENTRADA: TIBBCDField;
    SelFatura_Futura_ProdDINHEIRO: TIBBCDField;
    SelFatura_Futura_ProdCHEQUE: TIBBCDField;
    SelFatura_Futura_ProdCARTAO: TIBBCDField;
    SelFatura_Futura_ProdTICKET: TIBBCDField;
    SelFatura_Futura_ProdVLRLIQUIDO: TIBBCDField;
    SelFatura_Futura_ProdVLR_PARC_LC: TIBBCDField;
    SelFatura_Futura_ProdTERCEIRO: TIntegerField;
    SelFatura_Futura_ProdCARGA: TIntegerField;
    SelFatura_Futura_ProdVOLUME: TIBBCDField;
    SelFatura_Futura_ProdPESO: TIBBCDField;
    SelFatura_Futura_ProdREQUISICAO: TIBStringField;
    SelFatura_Futura_ProdDESCRICAO: TBlobField;
    SelFatura_Futura_ProdNOME_FORMA: TIBStringField;
    SelFatura_Futura_ProdFATURA_FUTURA: TIBStringField;
    SelFatura_Futura_ProdNOME_VENDEDOR: TIBStringField;
    SelFatura_Futura_ProdCONTA_CAIXA: TIntegerField;
    SelFatura_Futura_ProdCANCELADA: TIBStringField;
    SelFatura_Futura_ProdBASE_ICM_SUBST: TIBBCDField;
    SelFatura_Futura_ProdVALOR_ICM_SUBST: TIBBCDField;
    SelFatura_Futura_ProdFRETE: TIBBCDField;
    SelFatura_Futura_ProdSEGURO: TIBBCDField;
    SelFatura_Futura_ProdDESPESAS: TIBBCDField;
    SelFatura_Futura_ProdIPI: TIBBCDField;
    SelFatura_Futura_ProdTOTAL_NOTA: TIBBCDField;
    SelFatura_Futura_ProdSELECIONADA: TIBStringField;
    SelFatura_Futura_ProdDATA: TDateTimeField;
    SelFatura_Futura_ProdDATA_CAIXA: TDateTimeField;
    SelFatura_Futura_ProdBASE_ICM: TIBBCDField;
    SelFatura_Futura_ProdICM: TIBBCDField;
    SelFatura_Futura_ProdPERC_ICMS: TIBBCDField;
    SelFatura_Futura_ProdMENSAGEM_NAT1: TIBStringField;
    SelFatura_Futura_ProdMENSAGEM_NAT2: TIBStringField;
    Imp_Vendas_Cor: TIBQuery;
    Imp_Vendas_CorCNPJ: TIBStringField;
    Imp_Vendas_CorCODIGO: TIntegerField;
    Imp_Vendas_CorPRODUTO: TIBStringField;
    Imp_Vendas_CorNOME: TIBStringField;
    Imp_Vendas_CorQUANTIDADE: TFloatField;
    Vendas_Cor: TIBDataSet;
    Vendas_CorCNPJ: TIBStringField;
    Vendas_CorCODIGO: TIntegerField;
    Vendas_CorCOR: TIntegerField;
    Vendas_CorQUANTIDADE: TFloatField;
    Vendas_CorNOME: TIBStringField;
    Vendas_CorPRODUTO: TIBStringField;
    Vendas_CorSEQUENCIA: TIntegerField;
    SeriePROD_QNTD_UNID_ALT: TIntegerField;
    SeriePROD_QNTD_UNID_DST: TIntegerField;
    SelTransportadoraPLACA: TIBStringField;
    SelTransportadoraUF: TIBStringField;
    SelTransportadoraCPF_CNPJ: TIBStringField;
    SelTransportadoraENDERECO: TIBStringField;
    SelTransportadoraCIDADE: TIBStringField;
    SelTransportadoraIE: TIBStringField;
    Consulta_VendaTRANSPORTADORA: TIntegerField;
    SeriePROD_TIPO_UNID_ALT: TIntegerField;
    SeriePROD_TIPO_UNID_DST: TIntegerField;
    SelVendasTotaisDATA: TDateTimeField;
    SelVendasTotaisDATA_CAIXA: TDateTimeField;
    Lista_GradesNUMERO: TIBStringField;
    SelPropriedadesNUMERO: TIBStringField;
    SelPropriedadesBAIRRO: TIBStringField;
    Consulta_VendaDATA_CAIXA: TDateField;
    VendasPdv_ItensNUMERO: TIBStringField;
    Consulta_VendaREQUISICAO: TIBStringField;
    Extintor: TIBDataSet;
    ExtintorCNPJ: TIBStringField;
    ExtintorPESSOA_FJ: TIntegerField;
    ExtintorPLACA: TIBStringField;
    ExtintorMODELO: TIBStringField;
    ExtintorVENCIMENTO: TDateTimeField;
    ExtintorTROCA: TDateTimeField;
    Consulta_VendaNOME_CONVENIADO: TIBStringField;
    CUPOM: TRDprint;
    SelFaturaVendasSERIE: TIBStringField;
    Consulta_VendaTROCO: TIBBCDField;
    ABASTECIMENTOS_ABERTOS: TIBQuery;
    ABASTECIMENTOS_ABERTOSBICO: TIBStringField;
    ABASTECIMENTOS_ABERTOSABERTOS: TIntegerField;
    VendasPdv_ItensGRADE: TIBStringField;
    Lista_GradesGRADE: TIBStringField;
    Valida_ClienteALIQUOTA_DESCONTO: TFloatField;
    SelMascara: TIBQuery;
    SelMascaraCNPJ: TIBStringField;
    SelMascaraCODIGO: TIntegerField;
    SelMascaraGRUPO: TIntegerField;
    SelMascaraNOME: TIBStringField;
    SelMascaraNOME_GRUPO: TIBStringField;
    SelMascaraNOME_SUB_GRUPO: TIBStringField;
    SelMascaraSUB_GRUPO: TIntegerField;
    Consulta_Venda_ItensQUANTIDADE_FIS: TIBBCDField;
    Consulta_Venda_ItensPRC_UNITARIO_FIS: TIBBCDField;
    Consulta_Venda_ItensTOTAL_FIS: TFloatField;
    Valida_ClienteCONS_REV: TIBStringField;
    SerieOrcCLI_DUPLLARGURA_COLUNA: TIntegerField;
    SerieOrcCLI_DUPLNUM_COLUNA: TIntegerField;
    SerieOrcNOTA_MSGNAT_DST: TIntegerField;
    SerieOrcNOTA_MSGNAT_ALT: TIntegerField;
    SerieOrcNOTA_NUMRDP_DST: TIntegerField;
    SerieOrcNOTA_NUMRDP_ALT: TIntegerField;
    SerieOrcPORTA_IMPRESSAO: TIBStringField;
    SerieOrcNOTA_DESCONTO_ALT2: TIntegerField;
    SerieOrcNOTA_DESCONTO_DST2: TIntegerField;
    SerieOrcPROD_QNTD_UNID_ALT: TIntegerField;
    SerieOrcPROD_QNTD_UNID_DST: TIntegerField;
    SerieOrcPROD_TIPO_UNID_ALT: TIntegerField;
    SerieOrcPROD_TIPO_UNID_DST: TIntegerField;
    SerieOrcMODELO: TIBStringField;
    VendasPdvCONS_REV: TIBStringField;
    Trocas_ItensNUMERO: TIBStringField;
    Trocas_ItensGRADE: TIBStringField;
    TRIBUTACAO_REVENDA: TIBQuery;
    TRIBUTACAO_REVENDACTE: TIntegerField;
    TRIBUTACAO_REVENDACTIE: TIntegerField;
    SerieMODELO: TIBStringField;
    SerieNOTA_IRRF_DST: TIntegerField;
    SerieNOTA_IRRF_ALT: TIntegerField;
    SerieNOTA_INSS_DST: TIntegerField;
    SerieNOTA_INSS_ALT: TIntegerField;
    SerieNOTA_PIS_DST: TIntegerField;
    SerieNOTA_PIS_ALT: TIntegerField;
    SerieNOTA_ISS_SUBST_DST: TIntegerField;
    SerieNOTA_ISS_SUBST_ALT: TIntegerField;
    SeriePROD_TAM_NOME: TIntegerField;
    ExcluirCartao: TIBSQL;
    SelMascara_Nome: TIBQuery;
    SelMascara_NomeCNPJ: TIBStringField;
    SelMascara_NomeCODIGO: TIntegerField;
    SelMascara_NomeNOME: TIBStringField;
    SerieCLI_NOME_RODAPE_DST: TIntegerField;
    SerieCLI_NOME_RODAPE_ALT: TIntegerField;
    SerieCLI_DATENTSAI_RODAPE_DST: TIntegerField;
    SerieCLI_DATENTSAI_RODAPE_ALT: TIntegerField;
    SerieFEC_VALORNOTA_RODAPE_ALT: TIntegerField;
    SerieFEC_VALORNOTA_RODAPE_DST: TIntegerField;
    SelPropriedadesCPF: TIBStringField;
    SelPropriedadeCPF: TIBStringField;
    SelFaturaTrocasTOTAL_2: TIBBCDField;
    SelFaturaTrocasDESC_ACRESC_2: TIBBCDField;
    SelFaturaTrocasVLR_TOTAL_2: TIBBCDField;
    SelFaturaTrocasLIQUIDO: TIBBCDField;
    Consulta_Orcamento_ItensCOMPLEMENTO: TIBStringField;
    qryAux: TIBQuery;
    Consulta_Venda_ItensGRADE: TIBStringField;
    Consulta_Venda_ItensNUMERO: TIBStringField;
    Consulta_Venda_ItensCODIGO_2: TIBStringField;
    qryAux2: TIBQuery;
    TrocasDINHEIRO: TFloatField;
    Consulta_Venda_ItensMENSAGEM_REDUCAO: TIBStringField;
    Consulta_Venda_ItensCFOP: TIntegerField;
    SelPessoasFJENDERECO: TIBStringField;
    SelTipoDoctoBLT: TIBStringField;
    SelReducaoPERC_CONTRIBUINTE: TIBBCDField;
    Consulta_VendaCIDADE_CONSUMIDOR: TIBStringField;
    SerieNOTA_DUPLICA_NUMERO: TIBStringField;
    SerieNF_GRAFICA: TIBStringField;
    SerieNOTA_EMPRESA_ALT: TIntegerField;
    SerieNOTA_EMPRESA_DST: TIntegerField;
    SeriePROD_MARCA_ALT: TIntegerField;
    SeriePROD_MARCA_DST: TIntegerField;
    SeriePROD_LOTE_ALT: TIntegerField;
    SeriePROD_LOTE_DST: TIntegerField;
    SerieNOTA_EMPRESA_UF_ALT: TIntegerField;
    SerieNOTA_EMPRESA_UF_DST: TIntegerField;
    SelLote: TIBQuery;
    SelLoteCNPJ: TIBStringField;
    SelLoteCODIGO: TIntegerField;
    SelLoteESTOQUE: TFloatField;
    SelLoteLOTE: TIBStringField;
    SelLotePRODUTO: TIBStringField;
    SelLotePENEIRA: TIBStringField;
    SelLoteATESTADO: TIBStringField;
    SelLoteGERMINACAO: TFloatField;
    SelLotePUREZA: TFloatField;
    SelLoteVALIDADE: TDateTimeField;
    SelLoteDT_ULTIMA_COMPRA: TDateTimeField;
    SelLoteDT_ULTIMA_VENDA: TDateTimeField;
    SerieCLI_CID_PROP_DST: TIntegerField;
    SerieCLI_CID_PROP_ALT: TIntegerField;
    SerieCLI_UF_PROP_DST: TIntegerField;
    SerieCLI_UF_PROP_ALT: TIntegerField;
    Consulta_Venda_ItensNOME_MARCA: TIBStringField;
    Consulta_Venda_ItensLOTE: TIBStringField;
    Consulta_Venda_ItensCODIGO_LOTE: TIntegerField;
    Consulta_Venda_ItensVALIDADE_LOTE: TDateField;
    SeriePROD_LOTE_VALIDADE_ALT: TIntegerField;
    SeriePROD_LOTE_VALIDADE_DST: TIntegerField;
    SerieCLI_END_PROP_ALT: TIntegerField;
    SerieCLI_END_PROP_DST: TIntegerField;
    SerieCLI_NOME_PROP_ALT: TIntegerField;
    SerieCLI_NOME_PROP_DST: TIntegerField;
    Valida_ProdutoPRC_REPOS: TIBBCDField;
    Valida_ProdutoPRC_VENDA: TIBBCDField;
    Valida_ProdutoVOLUME: TIBBCDField;
    Valida_ProdutoPESO_LIQ: TIBBCDField;
    Valida_ProdutoUNIDADE: TIBStringField;
    Valida_ProdutoNOME: TIBStringField;
    Valida_ProdutoATIVO: TIBStringField;
    Valida_ProdutoALIQUOTA_ECF: TIBStringField;
    Valida_ProdutoQTDADE_1: TIBBCDField;
    Valida_ProdutoQTDADE_2: TIBBCDField;
    Valida_ProdutoNEG_QTDADE_2: TIBStringField;
    Valida_ProdutoSUBUNIDADE: TIntegerField;
    Valida_ProdutoCOMPLEMENTO_NF: TIBStringField;
    Valida_ProdutoORIGEM: TIntegerField;
    Valida_ProdutoCTE: TIntegerField;
    Valida_ProdutoCTIE: TIntegerField;
    Valida_ProdutoREDUCAO: TIntegerField;
    Valida_ProdutoVENDE_FRACIONADO: TIBStringField;
    Valida_ProdutoPOSSUI_LOTE: TIBStringField;
    Valida_ProdutoMARCA: TIBStringField;
    Valida_ProdutoMARGEM_BRUTA: TIBBCDField;
    Valida_ProdutoSERVICO: TIBStringField;
    Valida_ProdutoCOMPLEMENTO: TIBStringField;
    Valida_ProdutoIPI: TIBBCDField;
    AtualizaVDServ: TIBSQL;
    SerieNFSERV_GRAFICA: TIBStringField;
    SelFornecedor: TIBQuery;
    SelFornecedorPESSOA_FJ: TIntegerField;
    SelFornecedorNOME_RAZAO: TIBStringField;
    SelFornecedorFONE: TIBStringField;
    SelFornecedorFANTASIA: TIBStringField;
    SelFornecedorCPF_CGC: TIBStringField;
    SelFornecedorEMPRESA: TIBStringField;
    SelFornecedorCODIGO: TIntegerField;
    SelFornecedorUF: TIBStringField;
    SelFatura_FuturaOBSERVACAO: TIBStringField;
    Localizar_VendasOBSERVACAO: TIBStringField;
    SelVendasTotaisOBSERVACAO: TIBStringField;
    SelFaturaVendasOBSERVACAO: TIBStringField;
    SelFaturaTrocasttl_liquido: TFloatField;
    SelOrcamentosPESSOA_FJ: TIntegerField;
    SelOrcamentosCODIGO: TIntegerField;
    SelOrcamentosDATA: TDateTimeField;
    SelOrcamentosTOTAL: TFloatField;
    SelOrcamentosOBSERVACAO: TIBStringField;
    SelOrcamentosVENDEDOR: TIntegerField;
    SelOrcamentosVLR_TOTAL: TFloatField;
    SelOrcamentosDESC_ACRESC: TFloatField;
    SelOrcamentosPESO: TFloatField;
    SelOrcamentosVOLUME: TFloatField;
    SelOrcamentosFORMA: TIntegerField;
    SelOrcamentosVALIDADE: TDateTimeField;
    SelOrcamentosDESC_ACRESC_2: TFloatField;
    SelOrcamentosCLIENTE: TIBStringField;
    SelOrcamentosNOME_CONSUMIDOR: TIBStringField;
    SelOrcamentosCOMPROMETER_ESTOQUE: TIBStringField;
    SelOrcamentosNOME_RAZAO: TIBStringField;
    SelOrcamentosNOME_VENDEDOR: TIBStringField;
    SelOrcamentosNOME_FORMA: TIBStringField;
    SelOrcamentosSTATUS: TIntegerField;
    SerieNF_GRAFICA2: TIBStringField;
    Consulta_Venda_ItensVENDEDOR: TIBStringField;
    Geral: TIBQuery;
    SelPropriedadesTECNICO: TIntegerField;
    SelPropriedadeTECNICO: TIntegerField;
    NotaPromissoria: TIBQuery;
    NotaPromissoriaCNPJ: TIBStringField;
    NotaPromissoriaDATA_ALT: TIntegerField;
    NotaPromissoriaDATA_DST: TIntegerField;
    NotaPromissoriaDOCUMENTO_ALT: TIntegerField;
    NotaPromissoriaDOCUMENTO_DST: TIntegerField;
    NotaPromissoriaEXTENSO_ALT: TIntegerField;
    NotaPromissoriaEXTENSO_DST: TIntegerField;
    NotaPromissoriaINSTRUCOES_ALT: TIntegerField;
    NotaPromissoriaINSTRUCOES_DST: TIntegerField;
    NotaPromissoriaLPP: TIntegerField;
    NotaPromissoriaPARCELA1_ALT: TIntegerField;
    NotaPromissoriaPARCELA1_DST: TIntegerField;
    NotaPromissoriaPARCELA2_ALT: TIntegerField;
    NotaPromissoriaPARCELA2_DST: TIntegerField;
    NotaPromissoriaSACADO1_ALT: TIntegerField;
    NotaPromissoriaSACADO1_DST: TIntegerField;
    NotaPromissoriaSACADO2_ALT: TIntegerField;
    NotaPromissoriaSACADO2_DST: TIntegerField;
    NotaPromissoriaTAMANHOPAGINA: TIntegerField;
    NotaPromissoriaVALOR1_ALT: TIntegerField;
    NotaPromissoriaVALOR1_DST: TIntegerField;
    NotaPromissoriaVALOR2_ALT: TIntegerField;
    NotaPromissoriaVALOR2_DST: TIntegerField;
    NotaPromissoriaVENCIMENTO1_ALT: TIntegerField;
    NotaPromissoriaVENCIMENTO1_DST: TIntegerField;
    NotaPromissoriaVENCIMENTO2_ALT: TIntegerField;
    NotaPromissoriaVENCIMENTO2_DST: TIntegerField;
    NotaPromissoriaVENDA1_ALT: TIntegerField;
    NotaPromissoriaVENDA1_DST: TIntegerField;
    NotaPromissoriaVENDA2_ALT: TIntegerField;
    NotaPromissoriaVENDA2_DST: TIntegerField;
    NotaPromissoriaVECTO_EXT_DST: TIntegerField;
    NotaPromissoriaVECTO_EXT_ALT: TIntegerField;
    NotaPromissoriaEMPRESA_DST: TIntegerField;
    NotaPromissoriaEMPRESA_ALT: TIntegerField;
    NotaPromissoriaEMPRESA: TIBStringField;
    NotaPromissoriaPORTA: TIBStringField;
    NotaPromissoriaCODIGO_DST: TIntegerField;
    NotaPromissoriaCODIGO_ALT: TIntegerField;
    NotaPromissoriaCODIGO2_DST: TIntegerField;
    NotaPromissoriaCODIGO2_ALT: TIntegerField;
    NotaPromissoriaDATA2_DST: TIntegerField;
    NotaPromissoriaDATA2_ALT: TIntegerField;
    NotaPromissoriaTAMANHO_NOME: TIntegerField;
    NotaPromissoriaDATA3_DST: TIntegerField;
    NotaPromissoriaDATA3_ALT: TIntegerField;
    NotaPromissoriaIMPRIME_TOTALIZADOR: TIBStringField;
    NotaPromissoriaDESCRICAO_CANHOTO: TIBStringField;
    NotaPromissoriaVENDEDOR_ALT: TIntegerField;
    NotaPromissoriaVENDEDOR1_DST: TIntegerField;
    NotaPromissoriaVENDEDOR1_ALT: TIntegerField;
    NotaPromissoriaVENDEDOR_DST: TIntegerField;
    NotaPromissoriaMENSAGEM_NP: TIBStringField;
    NotaPromissoriaMENSAGEM_DST: TIntegerField;
    NotaPromissoriaMENSAGEM_ALT: TIntegerField;
    NotaPromissoriaPR_GRAF: TIBStringField;
    NotaPromissoriaPR_GRAF_LEIAUTE: TMemoField;
    NotaPromissoriaCAN_PARC_DST: TIntegerField;
    NotaPromissoriaCAN_PARC_ALT: TIntegerField;
    NotaPromissoriaCAN_VALOR_DST: TIntegerField;
    NotaPromissoriaCAN_VALOR_ALT: TIntegerField;
    NotaPromissoriaCAN_COD_CLI_DST: TIntegerField;
    NotaPromissoriaCAN_COD_CLI_ALT: TIntegerField;
    NotaPromissoriaCAN_COD_VENDA_DST: TIntegerField;
    NotaPromissoriaCAN_COD_VENDA_ALT: TIntegerField;
    NotaPromissoriaCAN_VENCTO_DST: TIntegerField;
    NotaPromissoriaCAN_VENCTO_ALT: TIntegerField;
    SelFaturaVendasSELECIONADA: TIBStringField;
    qProdFracionado: TIBQuery;
    qProdFracionadoVENDE_FRACIONADO: TIBStringField;
    SelPessoasFJEMAIL: TIBStringField;
    Consulta_Venda_ItensQTDE_ENTREGUE: TIBBCDField;
    Consulta_Venda_ItensCUSTO_MEDIO: TIBBCDField;
    Consulta_Venda_ItensLUCRO_ITEM: TIBBCDField;
    SelFaturaVendasID_AGRUPADOR: TIntegerField;
    Consulta_Venda_ItensENTREGUE: TFloatField;
    Consulta_Venda_ItensCARREGADO: TFloatField;
    Consulta_Venda_ItensDEVOLVIDO: TFloatField;
    Consulta_VendaEMP_EMPRESA: TIBStringField;
    Consulta_VendaEMP_CIDADE: TIBStringField;
    Consulta_VendaEMP_FONE: TIBStringField;
    Consulta_VendaEMP_CEP: TIBStringField;
    Consulta_VendaEMP_BAIRRO: TIBStringField;
    Consulta_VendaEMP_ENDERECO: TIBStringField;
    Consulta_VendaEMP_CNPJ: TIBStringField;
    Consulta_Venda_ItensCARGA_CREDITO_UND: TFloatField;
    Consulta_Venda_ItensCARGA_CREDITO_REAIS: TFloatField;
    SelVendasPdvCONTA_CAIXA: TIntegerField;
    SelVendasPdvENVIADA_CX: TIBStringField;
    SelVendasPdvBASE_ICM: TIBBCDField;
    SelVendasPdvICM: TIBBCDField;
    SelVendasPdvBASE_ICM_SUBST: TIBBCDField;
    SelVendasPdvVALOR_ICM_SUBST: TIBBCDField;
    SelVendasPdvFRETE: TIBBCDField;
    SelVendasPdvSEGURO: TIBBCDField;
    SelVendasPdvDESPESAS: TIBBCDField;
    SelVendasPdvIPI: TIBBCDField;
    SelVendasPdvTOTAL_NOTA: TIBBCDField;
    SelVendasPdvCARGA: TIntegerField;
    SelVendasPdvCANCELADA: TIBStringField;
    SelVendasPdvSERIE: TIBStringField;
    SelVendasPdvSELECIONADA: TIBStringField;
    SelVendasPdvSTATUS_CARREGAMENTO: TIntegerField;
    SelVendasPdvORDEM_CARGA: TIntegerField;
    SelVendasPdvPSA_ATIVIDADE: TIntegerField;
    SelVendasPdvPSA_BAIRRO: TIntegerField;
    SelVendasPdvPSA_CELULAR: TIBStringField;
    SelVendasPdvPSA_CEP: TIBStringField;
    SelVendasPdvPSA_CIDADE: TIntegerField;
    SelVendasPdvPSA_COMPLEMENTO: TIBStringField;
    SelVendasPdvPSA_CONTATO: TIBStringField;
    SelVendasPdvPSA_CONVENIO: TIntegerField;
    SelVendasPdvPSA_CPF_CGC: TIBStringField;
    SelVendasPdvPSA_DT_CADASTRO: TDateTimeField;
    SelVendasPdvPSA_DT_NASCIMENTO: TDateTimeField;
    SelVendasPdvPSA_EMISSOR: TIBStringField;
    SelVendasPdvPSA_ENDERECO: TIntegerField;
    SelVendasPdvPSA_FANTASIA: TIBStringField;
    SelVendasPdvPSA_FAX: TIBStringField;
    SelVendasPdvPSA_FONE: TIBStringField;
    SelVendasPdvPSA_INSC_MUNIC: TIBStringField;
    SelVendasPdvPSA_NOME_RAZAO: TIBStringField;
    SelVendasPdvPSA_NUMERO: TIBStringField;
    SelVendasPdvPSA_PESSOA: TIBStringField;
    SelVendasPdvPSA_RG_IE: TIBStringField;
    SelVendasPdvPSA_UF: TIBStringField;
    SelVendasPdvLGD_NOME: TIBStringField;
    SelVendasPdvBAI_NOME: TIBStringField;
    SelVendasPdvCID_NOME: TIBStringField;
    SelVendasPdvID_AGRUPADOR: TIntegerField;
    SelVendasPdvENTREGA_FUTURA: TIBStringField;
    SelVendasPdvATI_NOME: TIBStringField;
    SelVendasPdvREG_NOME: TIBStringField;
    SelVendasPdvPSA_EMAIL: TIBStringField;
    Consulta_VendaPCT_COMISSAO: TIBBCDField;
    SelPessoasFJRG_IE: TIBStringField;
    SelPessoasFJREGIAO: TIntegerField;
    SelPessoasFJNOME_REGIAO: TIBStringField;
    SelPessoasFJATIVIDADE: TIntegerField;
    SelPessoasFJNOME_ATIVIDADE: TIBStringField;
    SelPessoasFJBAIRRO: TIntegerField;
    SelPessoasFJNOME_BAIRRO: TIBStringField;
    SelPessoasFJDT_NASCIMENTO: TDateTimeField;
    SelPessoasFJCELULAR: TIBStringField;
    Consulta_VendaNOME_PROPRIEDADE: TIBStringField;
    VendasPdvCONTA_CAIXA: TIntegerField;
    VendasPdvTOTAL_NOTA: TFloatField;
    VendasPdvBASE_ICM: TFloatField;
    VendasPdvICM: TFloatField;
    VendasPdvBASE_ICM_SUBST: TFloatField;
    VendasPdvVALOR_ICM_SUBST: TFloatField;
    VendasPdvFRETE: TFloatField;
    VendasPdvSEGURO: TFloatField;
    VendasPdvDESPESAS: TFloatField;
    VendasPdvIPI: TFloatField;
    VendasPdvAPRAZO: TFloatField;
    VendasPdvBANCO: TIBStringField;
    VendasPdvCONTROLA_PLACA: TIBStringField;
    VendasPdvCONTROLA_KM: TIBStringField;
    VendasPdvASSINA_NOTA: TIBStringField;
    VendasPdvKM_ATUAL: TFloatField;
    VendasPdvNOME_PROPRIEDADE: TIBStringField;
    VendasPdvNOME_VENDEDOR: TIBStringField;
    VendasPdvNOME_NATUREZA: TIBStringField;
    VendasPdvNOME_TERCEIRO: TIBStringField;
    VendasPdvNOME_FORMA: TIBStringField;
    VendasPdvUF: TIBStringField;
    VendasPdvVALIDADE: TDateTimeField;
    VendasPdvMEDIA_KM: TFloatField;
    VendasPdvDOCUMENTOS_CONSUMIDOR: TIBStringField;
    VendasPdvENDERECO_CONSUMIDOR: TIBStringField;
    VendasPdvTURNO: TIntegerField;
    VendasPdvHORA: TTimeField;
    VendasPdvNAO_COBR_JUR_ATE: TIntegerField;
    VendasPdvSERIE: TIBStringField;
    VendasPdvDESCONTOS_CONCEDIDOS: TFloatField;
    VendasPdvNOME_CONVENIO: TIBStringField;
    VendasPdvDT_EMISSAO_AGRUPADA: TDateTimeField;
    VendasPdvTRANSPORTADORA: TIntegerField;
    VendasPdvDATA_CANCELAMENTO: TDateTimeField;
    VendasPdvTOTAL_FISCAL: TFloatField;
    VendasPdvIRRF: TFloatField;
    VendasPdvINSS: TFloatField;
    VendasPdvPIS_COFINS_CSLL: TFloatField;
    VendasPdvISS: TFloatField;
    VendasPdvVALE_TROCO: TIBStringField;
    VendasPdvCIDADE_CONSUMIDOR: TIBStringField;
    VendasPdvPGTO_FRETE: TIBStringField;
    VendasPdvBAIRRO_CONSUMIDOR: TIBStringField;
    VendasPdvFONE_CONSUMIDOR: TIBStringField;
    VendasPdvMESA: TIntegerField;
    VendasPdvDESCTO_RES: TFloatField;
    VendasPdvCOMPROMETER_ESTOQUE: TIBStringField;
    VendasPdvID_AGRUPADOR: TIntegerField;
    VendasPdvDESCTO_ICMS: TFloatField;
    VendasPdvPCT_DESCTO_ICMS: TFloatField;
    VendasPdvNF_AGRUPADA: TIBStringField;
    VendasPdvTRP_QTDE: TFloatField;
    VendasPdvTRP_ESPECIE: TIBStringField;
    VendasPdvTRP_PESO_BRUTO: TFloatField;
    VendasPdvTRP_PESO_LIQUIDO: TFloatField;
    VendasPdvTRP_NUMERO: TIBStringField;
    VendasPdvTRP_MARCA: TIntegerField;
    VendasPdvTRP_NOME: TIBStringField;
    VendasPdvSTATUS_CARREGAMENTO: TIntegerField;
    VendasPdvORDEM_CARGA: TIntegerField;
    VendasPdvENTREGA_FUTURA: TIBStringField;
    VendasPdvPCT_COMISSAO: TFloatField;
    VendasPdvCENTRO_CUSTO: TIntegerField;
    VendasPdvES: TIBStringField;
    VendasPdvGERA_FINANCEIRO: TIBStringField;
    SelPessoasFJPESSOA_FJ: TIntegerField;
    SelPessoasFJPESSOA: TIBStringField;
    VendasPdvDATA: TDateField;
    SelVendasPdvPCT_COMISSAO: TIBBCDField;
    SelVendasPdvDATA: TDateTimeField;
    TrocasDATA: TDateField;
    FaturaTrocasDATA: TDateField;
    SelFaturaVendasDATA: TDateTimeField;
    Localizar_VendasDATA: TDateTimeField;
    VendasPdvDATA_CAIXA: TDateTimeField;
    SelVendasPdvDATA_CAIXA: TDateField;
    SelFormaPgtoINTERVALO_PRE_DEFINIDO: TIBStringField;
    SelFormaPgtoVENCTO_FIXO: TIBStringField;
    SelFormaPgtoDT_VENCTO_FIXO: TDateField;
    Valida_ProdutoQNTDE_MINIMA_VENDA: TIBBCDField;
    Valida_ProdutoVALIDA_MULT_QTDE_MIN: TIBStringField;
    SelTrocas: TIBQuery;
    SelTrocasttl_liquido: TFloatField;
    SelFaturaTrocasDATA: TDateField;
    SelFaturaTrocasDATA_CAIXA: TDateField;
    SelFaturaTrocasNOME_CONSUMIDOR: TIBStringField;
    SelTrocasPESSOA_FJ: TIntegerField;
    SelTrocasCODIGO: TIntegerField;
    SelTrocasDATA: TDateTimeField;
    SelTrocasVALIDADE: TDateTimeField;
    SelTrocasTOTAL: TIBBCDField;
    SelTrocasTOTAL_2: TIBBCDField;
    SelTrocasENVIADA_CX: TIBStringField;
    SelTrocasFECHADO: TIBStringField;
    SelTrocasOBSERVACAO: TIBStringField;
    SelTrocasNOME_RAZAO: TIBStringField;
    SelTrocasNOME_FORMA: TIBStringField;
    SelTrocasNOME_VENDEDOR: TIBStringField;
    SelTrocasVENDEDOR: TIntegerField;
    SelTrocasVLR_TOTAL: TIBBCDField;
    SelTrocasVLR_TOTAL_2: TIBBCDField;
    SelTrocasDESC_ACRESC: TIBBCDField;
    SelTrocasDESC_ACRESC_2: TIBBCDField;
    SelTrocasCLIENTE: TIBStringField;
    SelTrocasPESO: TIBBCDField;
    SelTrocasVOLUME: TIBBCDField;
    SelTrocasFORMA: TIntegerField;
    SelTrocasENTRADA: TIBBCDField;
    SelTrocasDINHEIRO: TIBBCDField;
    SelTrocasCHEQUE: TIBBCDField;
    SelTrocasCARTAO: TIBBCDField;
    SelTrocasTICKET: TIBBCDField;
    SelTrocasDATA_CAIXA: TDateTimeField;
    SelTrocasUSUARIO: TIntegerField;
    SelTrocasTURNO: TIntegerField;
    VendasPdv_ItensSPRODUTO: TIBStringField;
    Trocas_ItensSPRODUTO: TIBStringField;
    SelPlanoULTIMO_CHEQUE: TIntegerField;
    SelPlanoTIPO: TIBStringField;
    SelPlanoAGENCIA: TIBStringField;
    SelPlanoDV_AGENCIA: TIBStringField;
    SelPlanoCONTA_CORRENTE: TIBStringField;
    SelPlanoDV_CONTA_CORRENTE: TIBStringField;
    SelPlanoDV_AGENCIA_CONTA: TIBStringField;
    PCD_REUTILIZAR_N_NF: TIBStoredProc;
    SelVendasPdvOBSERVACAO: TIBStringField;
    SelFaturaVendasHORA: TTimeField;
    SelFaturaVendasNFE_CHAVE: TIBStringField;
    SelFaturaVendasNFE_SELECIONADO: TIBStringField;
    SelFaturaVendasNFE_VALIDADA: TIBStringField;
    SelFaturaVendasNFE_ASSINADA: TIBStringField;
    SelFaturaVendasNFE_TRANSMITIDA: TIBStringField;
    SelFaturaVendasNFE_AUTORIZADA: TIBStringField;
    SelFaturaVendasNFE_DANFE_IMPRESSO: TIBStringField;
    SelFaturaVendasN_SEQ_ECF: TIBStringField;
    SelFaturaVendasN_SERIE_ECF: TIBStringField;
    SelFaturaVendasNFE_PROTOCOLO: TIBStringField;
    SelFaturaVendasNFE_RECIBO: TIBStringField;
    SelFaturaVendasNFE_XML: TBlobField;
    SelFaturaVendasENVIADA_CX: TIBStringField;
    SelFaturaVendasBASE_ICM: TIBBCDField;
    SelFaturaVendasICM: TIBBCDField;
    SelFaturaVendasBASE_ICM_SUBST: TIBBCDField;
    SelFaturaVendasVALOR_ICM_SUBST: TIBBCDField;
    SelFaturaVendasFRETE: TIBBCDField;
    SelFaturaVendasSEGURO: TIBBCDField;
    SelFaturaVendasDESPESAS: TIBBCDField;
    SelFaturaVendasIPI: TIBBCDField;
    SelFaturaVendasTOTAL_NOTA: TIBBCDField;
    SelFaturaVendasSTATUS_CARREGAMENTO: TIntegerField;
    SelFaturaVendasORDEM_CARGA: TIntegerField;
    SelFaturaVendasPSA_ATIVIDADE: TIntegerField;
    SelFaturaVendasPSA_BAIRRO: TIntegerField;
    SelFaturaVendasPSA_CELULAR: TIBStringField;
    SelFaturaVendasPSA_CEP: TIBStringField;
    SelFaturaVendasPSA_CIDADE: TIntegerField;
    SelFaturaVendasPSA_COMPLEMENTO: TIBStringField;
    SelFaturaVendasPSA_CONTATO: TIBStringField;
    SelFaturaVendasPSA_CONVENIO: TIntegerField;
    SelFaturaVendasPSA_CPF_CGC: TIBStringField;
    SelFaturaVendasPSA_DT_CADASTRO: TDateTimeField;
    SelFaturaVendasPSA_DT_NASCIMENTO: TDateTimeField;
    SelFaturaVendasPSA_EMISSOR: TIBStringField;
    SelFaturaVendasPSA_ENDERECO: TIntegerField;
    SelFaturaVendasPSA_FANTASIA: TIBStringField;
    SelFaturaVendasPSA_FAX: TIBStringField;
    SelFaturaVendasPSA_FONE: TIBStringField;
    SelFaturaVendasPSA_INSC_MUNIC: TIBStringField;
    SelFaturaVendasPSA_NOME_RAZAO: TIBStringField;
    SelFaturaVendasPSA_NUMERO: TIBStringField;
    SelFaturaVendasPSA_PESSOA: TIBStringField;
    SelFaturaVendasPSA_RG_IE: TIBStringField;
    SelFaturaVendasPSA_UF: TIBStringField;
    SelFaturaVendasLGD_NOME: TIBStringField;
    SelFaturaVendasBAI_NOME: TIBStringField;
    SelFaturaVendasCID_NOME: TIBStringField;
    SelFaturaVendasENTREGA_FUTURA: TIBStringField;
    SelFaturaVendasATI_NOME: TIBStringField;
    SelFaturaVendasREG_NOME: TIBStringField;
    SelFaturaVendasPSA_EMAIL: TIBStringField;
    Consulta_VendaNFE_XML: TBlobField;
    SelVeiculosATIVO: TIBStringField;
    SelVeiculosCOD_CLIENTE: TIntegerField;
    SelVeiculosNOME_RAZAO: TIBStringField;
    SelVeiculosCPF_CGC: TIBStringField;
    SelFaturaVendasNUM_NF_XML: TIBStringField;
    Consulta_VendaIMP_PEDIDO: TIBStringField;
    SelFaturaVendasCONT_CARTAO: TIntegerField;
    SelFaturaVendasCONT_CHEQUE: TIntegerField;
    SelFaturaVendasVD_CHEQUE: TFloatField;
    SelFaturaVendasVD_CARTAO: TFloatField;
    SelFaturaVendasVD_DINHEIRO: TFloatField;
    SelFaturaVendasVD_ENTRADA: TFloatField;
    SelFaturaVendasDIVERG_CARTAO: TFloatField;
    SelFaturaVendasDIVERG_CHEQUE: TFloatField;
    SelFaturaVendasDT_EMISSAO_NF: TDateField;
    SelFaturaVendasNFE_IMPRESSAO: TIBStringField;
    VendasPdv_ItensNOME_MARCA: TIBStringField;
    SelPessoasFJCIDADE: TIntegerField;
    SelPessoasFJNOME_CIDADE: TIBStringField;
    Consulta_Venda_ItensBCH_CODIGO: TIntegerField;
    Extenso: TACBrExtenso;
    SelPlanoCTB_FLUXO_CAIXA: TIBStringField;
    SelPlanoGERA_BOLETOS: TIBStringField;
    SelPlanoBLT_INSTRUCAO: TMemoField;
    SelPlanoBLT_LOCAL_PAGTO: TIBStringField;
    SelPlanoBLT_COD_CEDENTE: TIntegerField;
    SelPlanoBLT_DIG_COD_CEDENTE: TIBStringField;
    SelPlanoBLT_AGENCIA: TIBStringField;
    SelPlanoBLT_DIG_AGENCIA: TIBStringField;
    SelPlanoBLT_CONVENIO: TIntegerField;
    SelPlanoBLT_CONTA: TIBStringField;
    SelPlanoBLT_DIG_CONTA: TIBStringField;
    SelPlanoBLT_CARTEIRA: TIBStringField;
    SelPlanoBLT_LAYOUT: TSmallintField;
    SelPlanoBLT_ACEITE_DOCTO: TIBStringField;
    SelPlanoBLT_DIAS_ABATIMENTO: TIBStringField;
    SelPlanoBLT_DIAS_DESCONTO: TIntegerField;
    SelPlanoBLT_DIAS_MORA_JUROS: TIntegerField;
    SelPlanoBLT_DIAS_PROTESTO: TIntegerField;
    SelPlanoBLT_PCT_ABATIMENTO: TFloatField;
    SelPlanoBLT_PCT_DESCONTO: TFloatField;
    SelPlanoDESP_BANCARIA: TFloatField;
    SelPlanoMORA_DIARIA: TFloatField;
    SelPlanoBLT_VLR_IOF: TFloatField;
    SelPlanoBLT_VLR_OUTRAS_DESP: TFloatField;
    SelPlanoBLT_DIR_REMESSA: TIBStringField;
    SelPlanoBLT_DIR_RETORNO: TIBStringField;
    SelPlanoBLT_MULTA: TFloatField;
    SelPlanoBLT_NOSSO_NUM_INI: TIntegerField;
    SelPlanoBLT_NOSSO_NUM_FIM: TIntegerField;
    SelPlanoBLT_NOSSO_NUM_PROX: TIntegerField;
    Consulta_VendaOBSERVACAO: TIBStringField;
    SelOrcamentosCOD_PEDIDO: TIntegerField;
    Consulta_VendaNFE_STATUS: TIBStringField;
    procedure FiltrarDataSet(DataSet: TDataSet);
    procedure VendasBeforeOpen(DataSet: TDataSet);
    procedure VendasAfterInsert(DataSet: TDataSet);
    procedure VendasAfterClose(DataSet: TDataSet);

    procedure VendasPdvNewRecord(DataSet: TDataSet);
    procedure VendasPdvPESSOA_FJValidate(Sender: TField);
    procedure VendasPdv_ItensAfterInsert(DataSet: TDataSet);
    procedure VendasPdv_ItensNewRecord(DataSet: TDataSet);
    procedure VendasPdv_ItensCalcFields(DataSet: TDataSet);
    procedure VendasTIPO_VENDASetText(Sender: TField; const Text: String);
    procedure VendasPdvTIPO_VENDAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure VendasPdvTIPO_VENDASetText(Sender: TField;
      const Text: String);
    procedure Consulta_VendaCalcFields(DataSet: TDataSet);
    procedure Consulta_Venda_ItensCalcFields(DataSet: TDataSet);
    procedure dtChequeAfterInsert(DataSet: TDataSet);
    procedure OrcamentosAfterInsert(DataSet: TDataSet);
    procedure OrcamentosBeforePost(DataSet: TDataSet);
    procedure Consulta_Orcamento_ItensCalcFields(DataSet: TDataSet);
    procedure VendasPdvVENDEDORValidate(Sender: TField);
    procedure CotacoesAfterInsert(DataSet: TDataSet);
    procedure CotacoesBeforePost(DataSet: TDataSet);
    procedure CotacoesCalcFields(DataSet: TDataSet);
    procedure CotacoesNewRecord(DataSet: TDataSet);
    procedure Cotacoes_ItensCalcFields(DataSet: TDataSet);
    procedure Cotacoes_ItensNewRecord(DataSet: TDataSet);
    procedure CotacoesPESSOA_FJValidate(Sender: TField);
    procedure Cotacoes_ItensPRODUTOValidate(Sender: TField);
    procedure Cotacoes_ItensDESCONTOValidate(Sender: TField);
    procedure Cotacoes_ItensPORC_DESCValidate(Sender: TField);
    procedure Consulta_Cotacao_ItensCalcFields(DataSet: TDataSet);
    procedure Contas_PessoasBeforeOpen(DataSet: TDataSet);
    procedure Vendas_FormasNewRecord(DataSet: TDataSet);
    procedure Vendas_FormasCalcFields(DataSet: TDataSet);
    Function  PedeComplemento( Complemento, Documento: String ): String;
    procedure CotacoesTRANSPORTADORAValidate(Sender: TField);
    procedure TrocasNewRecord(DataSet: TDataSet);
    procedure TrocasAfterInsert(DataSet: TDataSet);
    procedure TrocasBeforePost(DataSet: TDataSet);
    procedure TrocasCalcFields(DataSet: TDataSet);
    procedure Trocas_ItensCalcFields(DataSet: TDataSet);
    procedure Trocas_ItensNewRecord(DataSet: TDataSet);
    procedure TrocasPESSOA_FJValidate(Sender: TField);
    procedure TrocasVENDEDORValidate(Sender: TField);
    procedure Trocas_ItensPRODUTOValidate(Sender: TField);
    procedure Trocas_ItensDESCONTOValidate(Sender: TField);
    procedure TrocasFORMA_PGTOValidate(Sender: TField);
    procedure Trocas_ParcNewRecord(DataSet: TDataSet);
    procedure Trocas_ParcAfterPost(DataSet: TDataSet);
    procedure Consulta_TrocaCalcFields(DataSet: TDataSet);
    procedure Consulta_Troca_ItensCalcFields(DataSet: TDataSet);
    procedure NotasAfterInsert(DataSet: TDataSet);
    procedure NotasBeforePost(DataSet: TDataSet);
    procedure Retiradas_ClientesNewRecord(DataSet: TDataSet);
    procedure Retiradas_ClientesBeforeOpen(DataSet: TDataSet);
    procedure VendasPdvCalcFields(DataSet: TDataSet);
    procedure FaturaTrocasCalcFields(DataSet: TDataSet);
    procedure FaturaTrocasFORMA_PGTOValidate(Sender: TField);
    procedure FaturaTrocasDESC_ACRESCValidate(Sender: TField);
    procedure VendasPdv_ItensVENDEDORValidate(Sender: TField);
    procedure VER_ANALISE_CUSTOSCalcFields(DataSet: TDataSet);
    procedure SelFatura_Futura_ItensCalcFields(DataSet: TDataSet);
    procedure VendasPdv_ItensBeforePost(DataSet: TDataSet);
    procedure VendasPdv_ItensGRADEValidate(Sender: TField);
    procedure VendasPdv_ItensNUMEROValidate(Sender: TField);
    procedure ExtintorAfterInsert(DataSet: TDataSet);
    procedure VendasPdvBeforeDelete(DataSet: TDataSet);
    procedure Vendas_ItensPRODUTOSetText(Sender: TField;
      const Text: String);
    procedure Trocas_ItensGRADEValidate(Sender: TField);
    procedure Trocas_ItensNUMEROValidate(Sender: TField);
    procedure Trocas_ItensSPRODUTOSetText(Sender: TField;
      const Text: String);
    procedure FaturaTrocasDINHEIROValidate(Sender: TField);
    procedure FaturaTrocasCHEQUEValidate(Sender: TField);
    procedure FaturaTrocasCARTAOValidate(Sender: TField);
    procedure FaturaTrocasTICKETValidate(Sender: TField);
    procedure SelFaturaVendasBeforeOpen(DataSet: TDataSet);
    procedure OrcamentosFORMA_PGTOValidate(Sender: TField);
    procedure SelTrocasCalcFields(DataSet: TDataSet);
    procedure SelFaturaTrocasCalcFields(DataSet: TDataSet);
    procedure SelOrcamentosCOMPROMETER_ESTOQUEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure OrcamentosSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure OrcamentosSTATUSSetText(Sender: TField; const Text: String);
    procedure Vendas_ParcBeforePost(DataSet: TDataSet);
    procedure Trocas_ParcBeforePost(DataSet: TDataSet);
    procedure VendasPGTO_FRETEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure VendasPGTO_FRETESetText(Sender: TField; const Text: String);
    procedure Vendas_ParcVALORValidate(Sender: TField);
    procedure VendasPdvNATUREZAValidate(Sender: TField);
    procedure VendasPdv_ItensSPRODUTOSetText(Sender: TField;
      const Text: String);
    procedure VendasPdv_ItensPRODUTOSetText(Sender: TField;
      const Text: String);
    procedure SelFaturaVendasNFE_AUTORIZADAGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure SelFaturaVendasNFE_AUTORIZADASetText(Sender: TField;
      const Text: String);
    procedure VendasPdv_ItensPRODUTOValidate(Sender: TField);

  private
    { Private declarations }
  public
    { Public declarations }
    TIPO_VENDA : STRING;
    Bloqueado, Classificacao: String[1];
    UfPessoa: String ;
    FormaCliente: Integer;

    NDocto: Integer;
    Nao_Cobr_Juros_Ate: Integer ;

    //PARAMETROS PARA POSTO
    Media_Atual: Extended ;
    Combustivel: String   ;

    //Parametros para Pdv
    Qntde_Pdv: Real;
    Qtdade_1 : Real;

    //Parametros para Faturamento
    Ven_Requisicao     : String[1] ;
    Ven_Dia_Pref_Fat   : Integer   ;
    Ven_Limite_Tempo   : Integer   ;
    Ven_Limite_Credito : Real      ;
    Agrupador_Mascara  : Integer   ;

    //parametros p/cadastro de cheques
    function Valor_Minimo_Parcelamento  (dsParcela : TDataSource):boolean;
    procedure Proc_Imprime_Nf_Agrupada ( DtInicial, DtFinal: TDateTime; Pessoa: Integer ) ;
    procedure Imprime_Garantia( CodVenda, Garantia: Integer ) ;
    procedure Proc_Imprime_Troca( CodTroca: Integer ) ;
    procedure Proc_Imprime_Orcamento( CodOrcamento: Integer ) ;
    procedure VerPessoa (Codigo: Integer);
    procedure VerVeiculoPessoa (Codigo: Integer);
    Procedure Propriedade ( Cnpj: String; Pessoa_Fj: Integer );
    Procedure Conveniados ( Cnpj: String; Pessoa_Fj: Integer );
    procedure Proc_Consulta_Cotacao( CodCotacao: Integer ) ;
    procedure Proc_Altera_Venda( CodVenda: Integer ) ;
    Procedure ImprimeCf ( PedidoNumero: Integer );
    Procedure ImprimeCnf ( PedidoNumero: Integer );
    procedure Analise_Custos ( Venda: Integer; Novo: Real );
    procedure Ver_Vendas_Cor ( Venda: Integer; Produto: String; Sequencia: Integer );
    procedure Imprime_Vendas_Cor ( Venda: Integer; Produto: String; Sequencia: Integer );

  end;

var
  DmVendas: TDmVendas;

  //IMPRESSORA FISCAL BEMATECH
  iRetorno: Integer;         // Variável com o retorno da função
  iControle: Integer;
  iACK, iST1, iST2: Integer; // Variáveis com o retorno do Status da Impressora

  sCodigo, sDescricao, sAliquota, sTipoQtde, sQtde, sValor, sTipo, sDesconto : string;
  sAcreDesc, sForma, sMensagem, sConfirma: string;
  iDecimal: Integer;
  sTipoAcreDesc, sTipoDesconto: String;

implementation

uses Application_DM,
     Vendas_Form,
     FaturaVenda_Form,
     MensagemFaturamento_Form,
     ConsultaVendas_Form,
     Funcoes,
     VendasItens_Form,
     Orcamentos_Form,
     VendasPdv_Form,
     OrcamentosItens_Form,
     MensagemClassificacao_Form,
     VendasPdvItens_Form,
     EntraSenha_Form,
     Cadastros_DM,
     Cotacoes_Form,
     CotacoesItens_Form,
     AlteraVendas_Form,

     Cheque_Venda_Form,
     Cartao_Venda_Form,
     EntraComplementoNf_Form,
     Entra_Dados_Consumidor_Form,
     Trocas_Form,
     TrocasItens_Form,
     FaturaTroca_Form,
     AnaliseCustos_Form,
     Localizar_Grade,
     Garantia_FRel,
     Vendas_Cor_Form,
     EntraNumeroReal_Form,
     ConsultaTrocas_Form,
     Entra_Valor_Form,
     Financeiro_Dm,
     Receber_Form, ConsultaCobrancas_Form, Localizar_Lote, Vendas_DM2,
  ListaFaturamento_Form, Pdv_DM;

{$R *.DFM}


Procedure TDmVendas.ImprimeCf ( PedidoNumero: Integer );
Var
   Str : String ;
   CODPROD, PRODUTO, INCID, QUANTIDADE, UNITARIO, DESC, UNIDADE, TOTAL, VALORPAGO, AUX: STRING;
   ITEM, NomeCliente, NomeVendedor, Endereco, NomeCidade, NomeBairro : STRING;
   NUMERICO, Data, OBSERVACAO, vlrultc, RAZAO, TipoDoc, EstadoCep: STRING;
   NumeroFone, Documentos, IERG, Condicoes, NPedido, desconto, liquido, Conveniado: String;
   I, LocalCobranca, Len : INTEGER;
   Resto, SomaDesctoItem, SomaDescto, ValorVenda, Dinheiro, Cheque, Cartao, CartaoAux, Ticket, SOMATOTAL : REAL;
   Linha : String;
   Entrada, ttlParc, parc1, vencto1 : string;
begin
          i := 0;
          Resto := 0;
          parc1 := '';
          Entrada := '';
          ttlParc := '';
          vencto1 := '';

          Consulta_Venda_Parc.close;
          Consulta_Venda_Parc.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj;
          Consulta_Venda_Parc.ParamByName ('CODIGO').AsInteger := PedidoNumero;
          Consulta_Venda_Parc.Open ;
          Consulta_Venda_Parc.first;
          while not Consulta_Venda_Parc.eof do
          begin
            inc(i);
            if (i) = 1 then
            begin
              parc1 := 'Vlr. Pc.: '+FormatFloat('###,###.00',Consulta_Venda_ParcVALOR.asFloat);
              vencto1 := ' 1º Vcto: '+formatdatetime('dd/mm/yy',Consulta_Venda_ParcVENCTO.asDateTime);
            end;
            Consulta_Venda_Parc.next;
          end;
          if (I <= 9) then
            ttlParc := 'Nº Pc: 0'+IntToStr(i)
          else
            ttlParc := 'Nº Pc: '+IntToStr(i);

          i := 0;
          Resto := 0;

          dmvendas2.Proc_Imprime_Venda(PedidoNumero);

          VerPessoa ( Consulta_VendaPESSOA_FJ.Value );

          Str := Ver_PessoaCodigo.Text ;

          WHILE LENGTH(STR) < 4 DO
          BEGIN
               STR := '0' + STR ;
          END;

          If trim(Consulta_VendaNOME_CONSUMIDOR.value) = ''
          then begin
               Razao   := Str + '-' + Ver_PessoaNOME_RAZAO.Value  ;
          end
          else begin
               Razao   := Str + '-' + Consulta_VendaNOME_CONSUMIDOR.value ;
          end;

          IF ( TRIM(Consulta_VendaNOME_CONVENIADO.Value) <> '' )
          THEN BEGIN
               CONVENIADO := Consulta_VendaNOME_CONVENIADO.Value ;
          END
          ELSE
              CONVENIADO := '';

          NomeCliente  := Ver_PessoaFANTASIA.Value           ;
          Data         := DateToStr(Consulta_VendaDATA.Value);
          OBSERVACAO   := Consulta_VendaOBSERVACAO.Value     ;

          If Trim(Observacao )= ''
          then begin
               OBSERVACAO   := Consulta_VendaHISTORICO.Value ;
          end;

          NomeVendedor := Consulta_VendaNOME_VENDEDOR.Value   ;
          TipoDoc      := Consulta_VendaTIPO_DOCTO.Value  ;

          If Consulta_VendaPESSOA_FJ.Value = 1
          THEN BEGIN
               Endereco   := Consulta_VendaENDERECO_CONSUMIDOR.VALUE   ;
               Documentos := Consulta_VendaDOCUMENTOS_CONSUMIDOR.VALUE ;
          END
          ELSE BEGIN
               Endereco     := Ver_PessoaENDERECO.Value + ', ' + Ver_PessoaNUMERO.Value ;
               If length(Ver_PessoaCPF_CGC.Value) > 11
               then begin
                    Documentos   := mascaracnpj(Ver_PessoaCPF_CGC.Value);
               end
               else begin
                    Documentos   := mascaracpf(Ver_PessoaCPF_CGC.Value);
               end;
          END;

          If Endereco = '< NAO ESPECIFICADO >'
          then
              Endereco := '';

          NomeCidade   := Ver_PessoaCIDADE.Value;

          If NomeCidade = '< NAO ESPECIFICADO >'
          then
              NomeCidade := '';

          NomeBairro   := Ver_PessoaBAIRRO.Value;

          If NomeBairro = '< NAO ESPECIFICADO >'
          then
              NomeBairro := '';

          EstadoCep    := Ver_PessoaUF.Value + '   ,CEP ' + Ver_PessoaCEP.Value;
          NumeroFone   := Ver_PessoaFONE.Value + '/' + Ver_PessoaFAX.Value;

          IERG              := Ver_PessoaRG_IE.Value + ' IM ' + Ver_PessoaINSC_MUNIC.Value;
          Condicoes         := Consulta_VendaNOME_FORMA.Value      ;
          NPedido           := preenche(IntToStr(PedidoNumero),'0',6);
          Total             := Formatfloat('###,###,##0.00', Consulta_VendaTotal.Value);
          Desconto          := Formatfloat('###,###,##0.00', Consulta_VendaDESC_ACRES.Value);
          Liquido           := Formatfloat('###,###,##0.00', Consulta_VendaTotal.Value + Consulta_VendaDESC_ACRES.Value);
          LocalCobranca     := Consulta_VendaLocal_COBRANCA.Value ;

          Dinheiro          := Consulta_VendaDinheiro.value;
          Cheque            := Consulta_VendaCheque.value;
          Cartao            := Consulta_VendaCartao.value;
          Ticket            := Consulta_VendaTicket.value;
          ValorVenda        := Consulta_VendaTotal.Value + Consulta_VendaDESC_ACRES.Value ;

          Linha := '';

          //Parcelamentos
          if Consulta_VendaENTRADA.asFloat > 0 then
          begin
            entrada := 'Entrada: '+formatFloat('###,###.00',Consulta_VendaENTRADA.asFloat);
            Linha  := linha + LinhaCupom(entrada);
          end;

          //Forma de Pagto
          Linha  :=linha + LinhaCupom(ttlParc+' '+parc1+' '+vencto1);

          //Nome
          Linha  := Linha + LinhaCupom(Razao);

          IF ( TRIM(CONVENIADO) <> '' )
          THEN BEGIN
               //Conveniado
               Linha := Linha + LinhaCupom ( 'CONVENIADO= ' + CONVENIADO );
          END;

          //Endereco
          Linha := Linha + LinhaCupom ( Endereco );

          //Bairro
          Linha := Linha + LinhaCupom ( NomeBairro + ' ' + NomeCidade + ' ' + EstadoCep );

          //Fone/Fax
          Linha := Linha + LinhaCupom ( NumeroFone );

          //Documentos
          Linha := Linha + LinhaCupom ( 'CGC/CPF: ' + Documentos + ' IE/RG ' +  IERG );

          //NUMERO DA VENDA  ...retirado da linha abaixo 'CTRL ' + IntToStr (PedidoNumero)+ '-' +
          Linha := Linha + LinhaCupom (  NomeVendedor);

          //Mensagem Cupom
          Linha := Linha + LinhaCupom ( DmApp.PDV_MENSAGEM ) ;

          If trim(DmApp.PDV_MENSAGEM1) <> ''
          then begin
               //Mensagem Cupom
               Linha := Linha + LinhaCupom ( DmApp.PDV_MENSAGEM1 ) ;
          end;

          If trim(DmApp.PDV_MENSAGEM2) <> ''
          then begin
               //Mensagem Cupom
               Linha := Linha + LinhaCupom ( DmApp.PDV_MENSAGEM2 ) ;
          end;

          If Not ImpressoraLigada
          then begin
               MessageDlg('Erro na Comunicação Com a Impressora Fiscal', mtError, [mbOK], 0);
               Exit ;
          end;

          //ABRE A GAVETA
          AbreGaveta ;

          //ABRE O CUPOM FISCAL
          AbreCupomFiscal ;

          Consulta_Venda_Itens.First;

          SOMATOTAL := 0 ;

          SomaDescto := 0;

          SomaDesctoItem := 0;

          While Not Consulta_Venda_Itens.Eof
          Do Begin
             IF Consulta_Venda_ItensPRODUTO.Value = Consulta_Venda_ItensPRODUTOFIS.Value
             THEN BEGIN
                  CODPROD := COPY(Consulta_Venda_ItensPRODUTO.Value,1,13) ;
             END
             ELSE BEGIN
                  IF TRIM(COPY(Consulta_Venda_ItensPRODUTOFIS.Value,1,13)) <> ''
                  THEN BEGIN
                       CODPROD := COPY(Consulta_Venda_ItensPRODUTOFIS.Value,1,13) ;
                  END
                  ELSE BEGIN
                       CODPROD := COPY(Consulta_Venda_ItensPRODUTO.Value,1,13) ;
                  END;
             END;

             WHILE LENGTH(CODPROD) < 13 DO
             BEGIN
                  CODPROD := '0' + CODPROD ;
             END;

             IF Consulta_Venda_ItensPRODUTO.Value = Consulta_Venda_ItensPRODUTOFIS.Value
             THEN BEGIN
                  PRODUTO := ' '+COPY(Consulta_Venda_ItensNOME_PRODUTO.Value ,1,23) ;
             END
             ELSE BEGIN
                  IF TRIM(COPY(Consulta_Venda_ItensNOME_FIS.Value ,1,23)) <> ''
                  THEN BEGIN
                       PRODUTO := ' '+COPY(Consulta_Venda_ItensNOME_FIS.Value ,1,23) ;
                  END
                  ELSE BEGIN
                       PRODUTO := ' '+COPY(Consulta_Venda_ItensNOME_PRODUTO.Value ,1,23) ;
                  END;
             END;

             WHILE LENGTH(PRODUTO) < 20 DO
             BEGIN
                  PRODUTO := PRODUTO +  ' ' ;
             END;

             { Esse código permite o 'câmbio' entre alíquotas definidas nos produtos
             e as que estão no perfil de computador.. permite o cruzamento das mesmo
             muito util pra contornar os casos de alíquotas trocadas na impressora fiscal}

             INCID := TRIM(Consulta_Venda_ItensALIQUOTA.Value);
             IF INCID = 'T1' THEN
                INCID := DMAPP.PDV_T01;

             IF INCID = 'T2' THEN
                INCID := DMAPP.PDV_T02;

             IF INCID = 'T3' THEN
                INCID := DMAPP.PDV_T03;

             IF INCID = 'T4' THEN
                INCID := DMAPP.PDV_T04;

             IF (INCID = 'T5')THEN
                INCID := DMAPP.PDV_T05;

             IF (INCID = 'T6')THEN
                INCID := DMAPP.PDV_T06;

             IF (INCID = 'FF') THEN
                INCID := 'FF';

             IF (INCID = 'II') THEN
                INCID := 'II';
             // se produto nao tem aliquota, recebe T1
             IF (INCID <> '01') AND (INCID <> '02')AND (INCID <> '03')
             AND (INCID <> '04')AND (INCID <> '05')AND (INCID <> 'FF')
             AND (INCID <> 'II') AND (INCID <> 'NN')
             THEN BEGIN
                  INCID := '01';
             END;

             //UNIDADE DE MEDIDA
             UNIDADE := Copy(Consulta_Venda_ItensUNIDADE.VALUE,1,2);

             If UNIDADE = ''
             Then
                 UNIDADE := 'UN' ;

             SOMATOTAL  := SOMATOTAL + ARREDONDA(( Consulta_Venda_ItensQUANTIDADE.Value * ( Consulta_Venda_ItensPRC_UNITARIO.Value {- Consulta_Venda_ItensDESCONTO.Value} ) ),2);

//             SomaDescto := SomaDescto + ARREDONDA( Consulta_Venda_ItensQUANTIDADE.Value * Consulta_Venda_ItensDESCONTO.Value, 2 );

             //  Verifica o Tipo da Quantidade:
             // 'I' para Inteira ou 'F' para Fracionária

             sTipoQtde := 'F' ;

             //SOMA DO DESCONTOS DOS ITENS
             SomaDesctoItem := SomaDesctoItem + ( Consulta_Venda_ItensDESCONTO.Value * Consulta_Venda_ItensQUANTIDADE.Value ) ;

             // Verifica o Tipo de Decimal:
             // 2 para duas casas ou 3 para três casas
             If DmaPP.Ecf_Casas_Dec = 2
             Then Begin
                  iDecimal := 2 ;
                  //VALOR TOTAL
                  TOTAL :=  FORMATFLOAT('###,###,##0.00', ARREDONDA(Consulta_Venda_ItensQUANTIDADE.Value * ( Consulta_Venda_ItensPRC_UNITARIO.Value {- Consulta_Venda_ItensDESCONTO.Value} ),2));

                  //DESCONTO
                  DESC := '0,00';

                  //QUANTIDADE
                  QUANTIDADE := FORMATFLOAT('###,###,##0.00', ARREDONDA(Consulta_Venda_ItensQUANTIDADE.Value,3) );

                  //VALOR UNITARIO
                  UNITARIO := FORMATFLOAT('###,###,##0.00', ARREDONDA(Consulta_Venda_ItensPRC_UNITARIO.Value {- Consulta_Venda_ItensDESCONTO.Value},2));
             End
             else begin
                  iDecimal := 3 ;

                  //VALOR TOTAL
                  TOTAL :=  FORMATFLOAT('###,###,##0.000', ARREDONDA(Consulta_Venda_ItensQUANTIDADE.Value * ARREDONDA(( Consulta_Venda_ItensPRC_UNITARIO.Value {- Consulta_Venda_ItensDESCONTO.Value} ),2),2));

                  //DESCONTO
                  DESC := '0,000';

                  //QUANTIDADE
                  QUANTIDADE := FORMATFLOAT('###,###,##0.000', ARREDONDA(Consulta_Venda_ItensQUANTIDADE.Value,3) );

                  //VALOR UNITARIO
                  UNITARIO := FORMATFLOAT('###,###,##0.000', ARREDONDA(Consulta_Venda_ItensPRC_UNITARIO.Value {- Consulta_Venda_ItensDESCONTO.Value},2));
             End;

             // Verifica o Tipo de Desconto:
             // '%' para percentual ou '$' para valor

             sTipoDesconto := '$';

             VendeItem(  CodProd, Produto, Incid,
                         sTipoQtde, Quantidade , iDecimal, Unitario,
                         sTipoDesconto, Desc );

             Consulta_Venda_Itens.Next;
          end;

          //ACRESCIMO
          If ( arredonda(Consulta_VendaDESC_ACRES.value,2) > 0 ) or ( arredonda(SomaDescto,2) < 0 )
          then begin
               sAcreDesc := 'A' ;

               sTipoAcreDesc := '$' ;

               TOTAL :=  FORMATFLOAT('###,###,##0.00', arredonda(Consulta_VendaDESC_ACRES.value,2) +  arredonda(SomaDescto * - 1,2));
          end
          else begin //DESCONTO
               sAcreDesc := 'D' ;

               sTipoAcreDesc := '$' ;

               SomaDescto := ARREDONDA(( -1 * Consulta_VendaDESC_ACRES.value ), 2) + arredonda(SomaDescto,2) ;

               TOTAL :=  FORMATFLOAT('###,###,##0.00', SomaDescto );
          end;

          IniciaFechamentoCupom (sAcreDesc, sTipoAcreDesc, Total );


           If arredonda(Dinheiro,2) > 0
           then begin
                TOTAL :=  Formatfloat('###,###,##0.00', arredonda(Dinheiro,2) );

                FormaPagamento ( 'Dinheiro', Total );
           end;

           If arredonda(Cheque,2) > 0
           then begin
                TOTAL :=  Formatfloat('###,###,##0.00', arredonda(Cheque,2) );

                FormaPagamento ( 'Cheque', Total );
           end;

           If arredonda(Ticket,2) > 0
           then begin
                TOTAL :=  Formatfloat('###,###,##0.00', arredonda(Ticket,2) );

                FormaPagamento ( 'Ticket', Total );
           end;

           If arredonda(ValorVenda,2) > arredonda(Dinheiro + Cheque + Cartao + Ticket,2)
           then begin
                TOTAL :=  Formatfloat('###,###,##0.00', arredonda(ValorVenda - (Dinheiro + Cheque + Cartao + Ticket),2) );

                FormaPagamento ( 'Convenio', Total );
           end;

           If (( arredonda(Cartao,2) > 0 ) and ( TRIM(DmApp.DIRETORIO_TEF) = '' ))
           then begin
                TOTAL :=  Formatfloat('###,###,##0.00', arredonda(Cartao,2) );

                FormaPagamento ( 'Cartao', Total );
           end;

          //Aqui verifica se tem O ARQUIVO TEF
          If (( Arredonda(Cartao,2) > 0 ) and ( TRIM(DmApp.DIRETORIO_TEF) <> '' ))
          then begin

               CartaoAux := Cartao ;

               try
                  SetLength (Aux,14);

                  Daruma_FI_SubTotal (Aux) ;

                  Len := Length(Aux);

                  Aux := Copy ( Aux, 1, len - 2 ) + ',' + Copy ( Aux, Len - 1, 2 );

                  Cartao := StrToFloat(Aux) ;
               except
                  Cartao := CartaoAux ;
               end;
          end
          else
              //Fecha o Cupom Fiscal
              FechaCupom ( Linha );
end;

Procedure TDmVendas.ImprimeCnf ( PedidoNumero: Integer );
Var
   Str : String ;
   CODPROD, PRODUTO, INCID, QUANTIDADE, UNITARIO, DESC, UNIDADE, TOTAL, VALORPAGO, AUX: STRING;
   ITEM, NomeCliente, NomeVendedor, Endereco, NomeCidade, NomeBairro : STRING;
   NUMERICO, Data, OBSERVACAO, vlrultc, RAZAO, TipoDoc, EstadoCep: STRING;
   NumeroFone, Documentos, IERG, Condicoes, NPedido, desconto, liquido, Conveniado, DATA_PARC: String;
   NumItem, Incremento, I, LocalCobranca : INTEGER;
   SomaDescto, ValorVenda, Dinheiro, Cheque, Cartao, Ticket, SOMATOTAL : REAL;
begin
          dmvendas2.Proc_Imprime_Venda  (PedidoNumero);

          VerPessoa ( Consulta_VendaPESSOA_FJ.Value );

          Str := Ver_PessoaCodigo.Text ;

          WHILE LENGTH(STR) < 4 DO
          BEGIN
               STR := '0' + STR ;
          END;

          If trim(Consulta_VendaNOME_CONSUMIDOR.value) = ''
          then begin
               Razao   := Str + '-' + Ver_PessoaNOME_RAZAO.Value  ;
          end
          else begin
               Razao   := Str + '-' + Consulta_VendaNOME_CONSUMIDOR.value ;
          end;

          IF ( TRIM(Consulta_VendaNOME_CONVENIADO.Value) <> '' )
          THEN BEGIN
               CONVENIADO := Consulta_VendaNOME_CONVENIADO.Value ;
          END
          ELSE
              CONVENIADO := '';

          NomeCliente  := Ver_PessoaFANTASIA.Value           ;
          Data         := DateToStr(Consulta_VendaDATA.Value);
          OBSERVACAO   := Consulta_VendaOBSERVACAO.Value     ;

          If Trim(Observacao )= ''
          then begin
               OBSERVACAO   := Consulta_VendaHISTORICO.Value ;
          end;

          NomeVendedor := Consulta_VendaNOME_VENDEDOR.Value   ;
          TipoDoc      := Consulta_VendaTIPO_DOCTO.Value  ;

          If Consulta_VendaPESSOA_FJ.Value = 1
          THEN BEGIN
               Endereco   := Consulta_VendaENDERECO_CONSUMIDOR.VALUE   ;
               Documentos := Consulta_VendaDOCUMENTOS_CONSUMIDOR.VALUE ;
          END
          ELSE BEGIN
               Endereco     := Ver_PessoaENDERECO.Value + ', ' + Ver_PessoaNUMERO.Value ;
               If length(Ver_PessoaCPF_CGC.Value) > 11
               then begin
                    Documentos   := mascaracnpj(Ver_PessoaCPF_CGC.Value);
               end
               else begin
                    Documentos   := mascaracpf(Ver_PessoaCPF_CGC.Value);
               end;
          END;

          If Endereco = '< NAO ESPECIFICADO >'
          then
              Endereco := '';

          NomeCidade   := Ver_PessoaCIDADE.Value;

          If NomeCidade = '< NAO ESPECIFICADO >'
          then
              NomeCidade := '';

          NomeBairro   := Ver_PessoaBAIRRO.Value;

          If NomeBairro = '< NAO ESPECIFICADO >'
          then
              NomeBairro := '';

          EstadoCep    := Ver_PessoaUF.Value + '   ,CEP ' + Ver_PessoaCEP.Value;
          NumeroFone   := Ver_PessoaFONE.Value + '/' + Ver_PessoaFAX.Value;

          IERG              := Ver_PessoaRG_IE.Value + ' IM ' + Ver_PessoaINSC_MUNIC.Value;
          Condicoes         := Consulta_VendaNOME_FORMA.Value      ;
          NPedido           := preenche(IntToStr(PedidoNumero),'0',6);
          Total             := Formatfloat('###,###,##0.00', Consulta_VendaTotal.Value);
          Desconto          := Formatfloat('###,###,##0.00', Consulta_VendaDESC_ACRES.Value);
          Liquido           := Formatfloat('###,###,##0.00', Consulta_VendaTotal.Value + Consulta_VendaDESC_ACRES.Value);
          LocalCobranca     := Consulta_VendaLocal_COBRANCA.Value ;

          Dinheiro          := Consulta_VendaDinheiro.value;
          Cheque            := Consulta_VendaCheque.value;
          Cartao            := Consulta_VendaCartao.value;
          Ticket            := Consulta_VendaTicket.value;
          ValorVenda        := Consulta_VendaTotal.Value + Consulta_VendaDESC_ACRES.Value ;

          If UPPERCASE(DmApp.TIPO_IMPRESSORA) = 'EPSON' //IMPRIME EM FONTE PARA IMPRESSORA EPSON
          then begin
               //Venda ou Condicional
               If UPPERCASE(Consulta_VendaTIPO_VENDA.Value) = 'VEN'
               THEN BEGIN
                    CUPOM.TamanhoQteLinhas := Consulta_Venda_Itens.RecordCount + 23;
               END
               ELSE BEGIN
                    CUPOM.TamanhoQteLinhas := Consulta_Venda_Itens.RecordCount + 25;
               END;

               If ( TRIM( DmApp.PORTA_IMPRESSORA ) <> '' )
               THEN BEGIN
                    SetDefaultPRINTer( trim(DmApp.PORTA_IMPRESSORA) ) ;
                    CUPOM.PortaComunicacao  := trim(DmApp.PORTA_IMPRESSORA ) ;
                    CUPOM.SetPRINTerbyPorta (trim( DmApp.PORTA_IMPRESSORA )) ;
               END
               ELSE BEGIN
                    CUPOM.PortaComunicacao  := ('LPT1') ;
                    CUPOM.SetPRINTerbyPorta ('LPT1') ;
               END;

               CUPOM.OpcoesPreview.Preview := false ;

               CUPOM.Abrir;

               CUPOM.ImpF(01, 01, Replicate('-', 52) ,[COMP17,NEGRITO]);

               If DmApp.Perfil_ComputadorIMP_NEGRITO_EMPRESA_36.Value = 'S'
               THEN BEGIN
                    CUPOM.ImpF(02, 01, DMAPP.Nome ,[COMP17, NEGRITO]);
                    CUPOM.ImpF(03, 01, DMAPP.ENDER + ' FONE ' + DmApp.FONE  ,[COMP17]);
               END
               ELSE BEGIN
                    CUPOM.ImpF(02, 01, DMAPP.Nome ,[COMP17, NEGRITO]);
                    CUPOM.ImpF(03, 01, DMAPP.ENDER + ' FONE ' + DmApp.FONE  ,[COMP17]);
               END;

               CUPOM.ImpF(04, 01, NPEDIDO,[COMP17, NEGRITO]);
               CUPOM.ImpF(04, 12, NomeVendedor,[COMP17]);

               CUPOM.ImpF(05, 01, 'NOME ' + Razao,[COMP17]);

               Incremento := 0;

               IF ( TRIM( Endereco ) <> '' )
               THEN BEGIN
                    CUPOM.ImpF(06, 01, 'END  ' + TRIM( Endereco   ),[COMP17]);
                    CUPOM.ImpF(07, 01, 'BAI  ' + TRIM( NomeBairro ),[COMP17]);
                    CUPOM.ImpF(08, 01, 'CID  ' + TRIM( NomeCidade ),[COMP17]);
                    CUPOM.ImpF(09, 01, 'CTRL ' + IntToStr (PedidoNumero) + ' / USR  ' + INTTOSTR(DMAPP.USUARIOCAIXA) + ' / HORA ' +  TIMETOSTR(NOW),[COMP17]);

                    Incremento := 5;
               END;

               CUPOM.ImpF(06 + Incremento, 01, 'DATA ' + Data + ' ' + Timetostr(time),[COMP17]);

               CUPOM.ImpF(07 + Incremento, 01, 'FONE ' + NUMEROFONE ,[COMP17]);

               CUPOM.ImpF(08 + Incremento, 01, Replicate('-', 52),[COMP17]);
               CUPOM.ImpF(09 + Incremento, 01, DmApp.PDV_MENSAGEM ,[COMP17]);

               //CABECALHO DO PEDIDO
               CUPOM.ImpF(11 + Incremento, 01, 'Produto   '  ,[COMP17]);
               CUPOM.ImpF(11 + Incremento, 13, 'Descricao '  ,[COMP17]);
               CUPOM.ImpF(12 + Incremento, 01, '       Qtd'  ,[COMP17]);
               CUPOM.ImpF(12 + Incremento, 15, '  Unitario'  ,[COMP17]);
               CUPOM.ImpF(12 + Incremento, 25, '     Total'  ,[COMP17]);
               CUPOM.ImpF(13 + Incremento, 01, Replicate('=', 52),[COMP17]);

               //
               NumItem  := 00;

               Linha := 14 + Incremento;

               TotDesconto := 0;

               Consulta_Venda_Itens.First;

               While Not Consulta_Venda_Itens.Eof
               Do Begin
                  CUPOM.ImpF(Linha, 01, Consulta_Venda_ItensPRODUTO.Value,[COMP17]);

                  CUPOM.ImpF(Linha, 12, COPY(Consulta_Venda_ItensNOME_PRODUTO.Value,1, 28),[COMP17]);

                  Linha := Linha + 1;

                  //QNTDE
                  STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Venda_ItensQUANTIDADE.Value);
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  CUPOM.ImpF(Linha, 01, STR ,[COMP17]);

                  //UNITARIO
                  STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Venda_ItensPRC_UNITARIO.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  CUPOM.ImpF(Linha, 15, STR ,[COMP17]);

                  TotDesconto := TotDesconto + Consulta_Venda_ItensDESCONTO.Value ;

                  //TOTAL
                  STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Venda_ItensTotal.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  CUPOM.ImpF(Linha, 25, STR,[COMP17] );

                  Consulta_Venda_Itens.Next;

                  NumItem := NumItem + trunc(Consulta_Venda_ItensQUANTIDADE.Value);

                  Linha := Linha + 1;
               end;//

               Linha := Linha + 1;
               Linha := Linha + 1;

               //TOTAL SEM DESCONTO
               STR :=  TOTAL ;
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               CUPOM.ImpF(Linha, 20, '--------------------',[COMP17]);
               Linha := Linha + 1;
               CUPOM.ImpF(Linha, 01, 'TOTAL..........:',[COMP17]);
               CUPOM.ImpF(Linha, 25, STR,[COMP17] );

               Linha := Linha + 1;

               //DESCONTO
               STR :=  DESCONTO ;
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               CUPOM.ImpF(Linha, 01, 'DESCONTO.......:',[COMP17]);
               CUPOM.ImpF(Linha, 25, STR,[COMP17] );

               Linha := Linha + 1;

               //TOTAL
               STR :=  Liquido ;
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               CUPOM.ImpF(Linha, 01, 'LIQUIDO........:',[COMP17]);
               CUPOM.ImpF(Linha, 25, STR,[COMP17] );

               Linha := Linha + 1;

               //PECAS
               STR :=  FORMATFLOAT ('###,###,##0', NumItem );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               CUPOM.ImpF(Linha, 01, 'TOTAL DE PECAS.:',[COMP17]);
               CUPOM.ImpF(Linha, 25, STR,[COMP17]);

               Linha := Linha + 1;

               If UPPERCASE(Consulta_VendaTIPO_VENDA.Value) = 'VEN'
               THEN BEGIN
                    CUPOM.ImpF(Linha, 01, '-----------------FORMAS DE PAGAMENTO----------------',[COMP17]);

                    Linha := Linha + 1;
                    Linha := Linha + 1;

                    Str :=  Condicoes;

                    WHILE LENGTH(STR) < 30 DO
                    BEGIN
                         STR := STR + '.';
                    END;

                    CUPOM.ImpF(Linha, 01, Str ,[COMP17]);

                    STR :=  LIQUIDO;

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    CUPOM.ImpF(Linha, 25, Str ,[COMP17]);

                    Linha := Linha + 1;
                    Linha := Linha + 1;

                    IF ARREDONDA(CONSULTA_VENDAENTRADA.Value,2) > 0
                    THEN BEGIN
                         STR := FORMATFLOAT('###,###,##0.00', ARREDONDA(CONSULTA_VENDAENTRADA.Value,2)) ;

                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         DATA_PARC := 'ENTRADA' ;

                         WHILE LENGTH(DATA_PARC) < 30 DO
                         BEGIN
                              DATA_PARC := DATA_PARC + '.';
                         END;

                         CUPOM.ImpF(Linha, 01, DATA_PARC ,[COMP17]);

                         CUPOM.ImpF(Linha, 25, STR ,[COMP17]);

                         Linha := Linha + 1;
                    END;

                    Consulta_Venda_Parc.First ;

                    while not Consulta_Venda_Parc.eof do
                    begin
                         Data_Parc := Consulta_Venda_ParcVENCTO.text ;

                         Str := FormatFloat ('###,###0.00', Consulta_Venda_ParcValor.value );

                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         WHILE LENGTH(DATA_PARC) < 30 DO
                         BEGIN
                              DATA_PARC := DATA_PARC + '.';
                         END;

                         CUPOM.ImpF(Linha, 01, DATA_PARC ,[COMP17]);

                         CUPOM.ImpF(Linha, 25, Str ,[COMP17]);

                         Consulta_Venda_Parc.next ;

                         Linha := Linha + 1;
                    end;
               END
               ELSE BEGIN
                    CUPOM.ImpF(Linha, 01, '----------------C O N D I C I O N A L---------------',[COMP17]);

                    Linha := Linha + 1;

                    Linha := Linha + 1;

                    Linha := Linha + 1;

                    Str :=  '_';

                    WHILE LENGTH(STR) < 30 DO
                    BEGIN
                         STR := STR + '-';
                    END;

                    CUPOM.ImpF(Linha, 01, Str ,[COMP17]);

                    Linha := Linha + 1;

                    CUPOM.ImpF(Linha, 01, Razao ,[COMP17]);

                    Linha := Linha + 1;

                    Linha := Linha + 1;

                    CUPOM.ImpF(Linha, 01, DMAPP.MENSAGEM_CONDIC ,[COMP17]);

                    Linha := Linha + 1;
               END;

               Linha := Linha + 1;
               Linha := Linha + 1;

               CUPOM.ImpF(Linha, 01, 'NAO VALE COMO COMPROVANTE FISCAL',[COMP17]);

               Linha := Linha + 1;

               CUPOM.ImpF(Linha, 01, Replicate('-', 52),[COMP17]);

               CUPOM.Fechar ;
          end;
end;

procedure TDmVendas.Proc_Altera_Venda( CodVenda: Integer ) ;
begin
     NDocto := CodVenda ;

     If FrmAlteraVendas = Nil Then
     Begin
          FrmAlteraVendas := TFrmAlteraVendas.Create(Self);

          FrmAlteraVendas.Showmodal ;

          FrmAlteraVendas.Free   ;
          FrmAlteraVendas := Nil ;
     End;
end;

procedure TDmVendas.Analise_Custos ( Venda: Integer; Novo: Real );
Begin
     VER_ANALISE_CUSTOS.Close ;

     VER_ANALISE_CUSTOS.ParamByName ( 'CNPJ'  ).AsString  := DmApp.Cnpj   ;
     VER_ANALISE_CUSTOS.ParamByName ( 'VENDA' ).AsInteger := Venda        ;
     VER_ANALISE_CUSTOS.ParamByName ( 'NOVO'  ).AsFloat   := Novo         ;

     VER_ANALISE_CUSTOS.Prepare ;

     VER_ANALISE_CUSTOS.Open ;

     If VER_ANALISE_CUSTOS.Fields[0].isNull
     then Begin
          Showmessage ('Venda Não Cadastrada, Verifique!');
     end
     ELSE BEGIN
          FrmAnaliseCustos := TFrmAnaliseCustos.Create(Self);

          FrmAnaliseCustos.Showmodal ;

          FrmAnaliseCustos.Free   ;

          FrmAnaliseCustos := Nil ;
     END;
end;


procedure TDmVendas.Ver_Vendas_Cor ( Venda: Integer; Produto: String; Sequencia: Integer );
Begin
     Vendas_Cor.Close ;

     Vendas_Cor.ParamByName ( 'CNPJ'      ).AsString  := DmApp.Cnpj   ;
     Vendas_Cor.ParamByName ( 'CODIGO'    ).AsInteger := Venda        ;
     Vendas_Cor.ParamByName ( 'PRODUTO'   ).AsString  := Produto      ;
     Vendas_Cor.ParamByName ( 'SEQUENCIA' ).AsInteger := Sequencia    ;

     Vendas_Cor.Prepare ;

     Vendas_Cor.Open ;
     Vendas_Cor.FetchAll ;

     If Vendas_Cor.Fields[0].isNull
     then Begin
          Showmessage ('Venda Não Cadastrada, Verifique!');
     end
     ELSE BEGIN
          FrmVendas_Cor := TFrmVendas_Cor.Create(Self);

          FrmVendas_Cor.Showmodal ;

          FrmVendas_Cor.Free   ;

          FrmVendas_Cor := Nil ;
     END;
end;

procedure TDmVendas.Imprime_Vendas_Cor ( Venda: Integer; Produto: String; Sequencia: Integer );
Begin
     Imp_Vendas_Cor.Close ;

     Imp_Vendas_Cor.ParamByName ( 'CNPJ'      ).AsString  := DmApp.Cnpj   ;
     Imp_Vendas_Cor.ParamByName ( 'CODIGO'    ).AsInteger := Venda        ;
     Imp_Vendas_Cor.ParamByName ( 'PRODUTO'   ).AsString  := Produto      ;
     Imp_Vendas_Cor.ParamByName ( 'SEQUENCIA' ).AsInteger := Sequencia    ;

     Imp_Vendas_Cor.Prepare ;

     Imp_Vendas_Cor.Open ;

     Imp_Vendas_Cor.FetchAll ;
end;

procedure TDmVendas.Imprime_Garantia( CodVenda, Garantia: Integer ) ;
begin
     Ver_Fat_Vendas_Garantia.Close ;

     Ver_Fat_Vendas_Garantia.ParamByName ('CNPJ'    ).AsString  := DmApp.Cnpj ;
     Ver_Fat_Vendas_Garantia.ParamByName ('CODIGO'  ).AsInteger := CodVenda   ;
     Ver_Fat_Vendas_Garantia.ParamByName ('GARANTIA').AsInteger := Garantia   ;

     Ver_Fat_Vendas_Garantia.Prepare ;

     Ver_Fat_Vendas_Garantia.Open ;

     If Ver_Fat_Vendas_Garantia.Fields[0].isNull
     then Begin
          Showmessage ('Venda Não Cadastrada, Verifique!');
          Exit;
     end
     else begin
          Consulta_Venda.Close ;

          Consulta_Venda.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
          Consulta_Venda.ParamByName ('COD'   ).AsInteger := CodVenda ;

          Consulta_Venda.Prepare ;

          Consulta_Venda.Open ;

          verpessoa ( Consulta_VendaPESSOA_FJ.value );

          FRelGarantia              := TFRelGarantia.Create(Self);
          FRelGarantia.PedidoNumero := CodVenda   ;
          FRelGarantia.Tipo         := 'GARANTIA' ;
          FRelGarantia.Showmodal ;

          FRelGarantia.FREE   ;
          FRelGarantia := nIL ;
     end;

     Consulta_Venda.Close ;
     Ver_Fat_Vendas_Garantia.Close ;
     Ver_Pessoa.close ;
end;



procedure TDmVendas.Proc_Imprime_Nf_Agrupada ( DtInicial, DtFinal: TDateTime; Pessoa: Integer ) ;
begin
     //Itens da Venda
     SelFatura_Futura_Itens.Close ;

     SelFatura_Futura_Itens.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj  ;
     SelFatura_Futura_Itens.ParamByName ('DINI'  ).AsDate    := DtInicial   ;
     SelFatura_Futura_Itens.ParamByName ('DFIM'  ).AsDate    := DtFinal     ;
     SelFatura_Futura_Itens.ParamByName ('PESSOA').AsInteger := Pessoa      ;

     SelFatura_Futura_Itens.Prepare ;

     SelFatura_Futura_Itens.Open ;
end;

procedure TDmVendas.Proc_Imprime_Troca( CodTroca: Integer ) ;
begin
     Consulta_Troca.Close ;

     Consulta_Troca.ParamByName ('CNPJ'   ).AsString  := DmApp.Cnpj   ;
     Consulta_Troca.ParamByName ('CODIGO' ).AsInteger := CodTroca ;

     Consulta_Troca.Prepare ;

     Consulta_Troca.Open ;

     If Consulta_Troca.Fields[0].isNull
     then Begin
          Showmessage ('Troca Não Cadastrada, Verifique!');
          Exit;
     end;

     //Itens da Troca
     Consulta_Troca_Itens.Close ;

     Consulta_Troca_Itens.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     Consulta_Troca_Itens.ParamByName ('CODIGO').AsInteger := CodTroca ;

     Consulta_Troca_Itens.Prepare ;

     Consulta_Troca_Itens.Open ;

     //Parcelas da Troca
     Consulta_Troca_Parc.Close ;

     Consulta_Troca_Parc.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     Consulta_Troca_Parc.ParamByName ('CODIGO').AsInteger := CodTroca ;

     Consulta_Troca_Parc.Prepare ;

     Consulta_Troca_Parc.Open ;
end;

procedure TDmVendas.Proc_Consulta_Cotacao( CodCotacao: Integer ) ;
begin
     Consulta_Cotacao.Close ;

     Consulta_Cotacao.ParamByName ('CNPJ'    ).AsString  := DmApp.Cnpj   ;
     Consulta_Cotacao.ParamByName ('COD'     ).AsInteger := CodCotacao   ;

     Consulta_Cotacao.Prepare ;

     Consulta_Cotacao.Open ;

     If Consulta_Cotacao.Fields[0].isNull
     then Begin
          Showmessage ('Cotação Não Cadastrada, Verifique!');
          Exit;
     end;

     //Itens da Cotacao
     Consulta_Cotacao_Itens.Close ;

     Consulta_Cotacao_Itens.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     Consulta_Cotacao_Itens.ParamByName ('CODIGO').AsInteger := CodCotacao ;

     Consulta_Cotacao_Itens.Prepare ;

     Consulta_Cotacao_Itens.Open ;
end;

procedure TDmVendas.Proc_Imprime_Orcamento( CodOrcamento: Integer ) ;
begin
     Consulta_Orcamento.Close ;

     Consulta_Orcamento.ParamByName ('CNPJ'  ).AsString     := DmApp.Cnpj   ;
     Consulta_Orcamento.ParamByName ('ORCAMENTO').AsInteger := CodOrcamento ;

     Consulta_Orcamento.Prepare ;

     Consulta_Orcamento.Open ;

     If Consulta_Orcamento.Fields[0].isNull
     then Begin
          Showmessage ('Orcamento Não Cadastrado, Verifique!');
          Exit;
     end;

     //Itens da Orcamento
     Consulta_Orcamento_Itens.Close ;

     Consulta_Orcamento_Itens.ParamByName ('CNPJ'     ).AsString  := DmApp.Cnpj   ;
     Consulta_Orcamento_Itens.ParamByName ('ORCAMENTO').AsInteger := CodOrcamento ;

     Consulta_Orcamento_Itens.Prepare ;

     Consulta_Orcamento_Itens.Open ;
end;

procedure TDmVendas.VendasBeforeOpen(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBDataSet).ParamByName('CNPJ').asString       := DMApp.Cnpj;
       (DataSet as TIBDataSet).ParamByName('CODIGO').asInteger    := NDocto;
       (Dataset as TIBQuery).Prepare;
     End;
  If (DataSet is TIBDataset) Then
     Begin
       (DataSet as TIBDataSet).ParamByName('CNPJ').asString       := DMApp.Cnpj;
       (DataSet as TIBDataSet).ParamByName('CODIGO').asInteger    := NDocto;
       (Dataset as TIBDataSet).Prepare;
     End;
end;

procedure TDmVendas.VendasAfterInsert(DataSet: TDataSet);
begin
     DataSet.Fields[0].Value := DMApp.Cnpj;
end;

Function TDmVendas.PedeComplemento( Complemento, Documento: String ): String;
begin
     //Pede o Complemento para a Nota Fiscal
     FrmEntraComplementoNf := TFrmEntraComplementoNf.Create(Self);
     FrmEntraComplementoNf.EdDocumento.Text := Documento;
     //FrmEntraComplementoNf.EdDocumento.Text := dmvendas2.Vendas_ItensPRODUTO.Value + '-' + dmvendas2.Vendas_ItensNOME_PRODUTO.Value ;
     FrmEntraComplementoNf.EDCOMPLEMENTO.Text := ( Complemento );

     If FrmEntraComplementoNf.Showmodal = MrOk
     then begin
          Result := FrmEntraComplementoNf.EDCOMPLEMENTO.Text ;
     end
     Else
         Result := '' ;

     FrmEntraComplementoNf.Free ;
     FrmEntraComplementoNf := Nil ;
end;

procedure TDmVendas.VendasAfterClose(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     (Dataset as TIBQuery).UnPrepare;
  If (DataSet is TIBDataSet) Then
     (Dataset as TIBDataset).UnPrepare;
end;



procedure TDmVendas.VendasPdvNewRecord(DataSet: TDataSet);
begin
     VendasPdvCANCELADA.Value   := 'N' ;
     VendasPdvENTRADA.value     := 0;
     VendasPdvDINHEIRO.value    := 0;
     VendasPdvCHEQUE.Value      := 0;
     VendasPdvCARTAO.value      := 0;
     VendasPdvTICKET.value      := 0;
     VendasPdvCARTAO.value      := 0;
     VendasPdvTOTAL.Value       := 0;
     VendasPdvENVIADA_CX.Value  := 'N' ;
     VendasPdvSELECIONADA.Value := 'N' ;
     VendasPdvFECHADA.Value     := 'N' ;
     VendasPdvVLR_PARC_LC.Value := 0;
     VendasPdvNUM_NF.Value      := 0;
     VendasPdvNUM_CUPOM.Value   := 0;
     VendasPdvDESC_ACRES.Value  := 0;
     VendasPdvDUPLICATA.Value   := 0;
     VendasPdvTIPO_VENDA.Value  := 'Venda' ;
     VendasPdvRECEBIDAS.Value   := 0;
     VendasPdvCONS_REV.Value    := 'C';

     //TEMP
     VendasPdvUSUARIO.Value := DmApp.UsuarioCaixa ;
     VendasPdvDATA.Value    := DmApp.DataHora ('D');

     VendasPdvNATUREZA.Value       := DmApp.PDVNATUREZA  ;
     VendasPdvTIPO_DOCTO.Value     := DmApp.PDVTIPODOCTO ;
     VendasPdvLOCAL_COBRANCA.Value := DmApp.PDVLOCAL     ;

     VendasPdvLOCAL.Value          := 1;
     VendasPdvFORMA_PGTO.Value     := DmApp.PDV_FORMA_PAGTO ;
end;

procedure TDmVendas.VendasPdvPESSOA_FJValidate(Sender: TField);
Var
   Clas: Integer;
   NomeClas, Dig_Senha: String;
   SOMA_CHEQUES : real ;
begin
     If ( Sender.IsNull ) OR ( DmApp.CLIAVISTA = Sender.Value )
     Then begin
          VendasPdvNOME_CONSUMIDOR.Value := Uppercase(InputBox ('Nome do Conumidor', 'Nome',''));

          If trim(VendasPdvNOME_CONSUMIDOR.Value) <> ''
          then begin
               VendasPdvNOME.VAlue := VendasPdvNOME_CONSUMIDOR.Value ; 
          end
          else begin
               VendasPdvNOME.VAlue := 'Consumidor' ;
          end;
          exit ;
     end;

     If ( VendasPdvPessoa_Fj.Value = 0 )
     then Begin
          If FrmVendasPdv <> Nil
          then begin
               FrmVendasPdv.LocCli := True ;
               exit ;
          end;
     end;

     Valida_Cliente.Close ;
     Valida_Cliente.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     Valida_Cliente.ParamByName ('CODIGO').AsInteger := Sender.Value ;
     Valida_Cliente.Open ;

     dmVendas2.Valida_Cliente.Close ;
     dmVendas2.Valida_Cliente.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     dmVendas2.Valida_Cliente.ParamByName ('CODIGO').AsInteger := Sender.Value ;
     dmVendas2.Valida_Cliente.Open ;

     If Valida_ClientePESSOA_FJ.isNull
     then Begin
          Showmessage ('Cliente Inexistente!');
          Abort;
     end;

     If Valida_ClienteBLOQUEADO.value = 'S'
     then Begin
          Showmessage ('Cliente Desativado!');
          Abort;
     end;

     If Not Valida_ClienteNOME.IsNull
     then Begin
          VendasPdvNOME.VAlue := Valida_ClienteNOME.Value ;
     end;

     If Not Valida_ClienteREQUISICAO.isNull
     then Begin
          Ven_Requisicao  := Valida_ClienteREQUISICAO.Value ;
     end
     else begin
          Ven_Requisicao  := 'N' ;
     end;

     IF ( Ven_Requisicao  = 'S' )
     THEN BEGIN
          Application.CreateForm(TFrmEntraNumeroReal, FrmEntraNumeroReal);

          FrmEntraNumeroReal.LblTitulo.Caption := 'Requisição';
          FrmEntraNumeroReal.LBLPROMPT.Caption := 'Nº'   ;

          IF FrmEntraNumeroReal.ShowModal = MROK
          THEN BEGIN
               DmVendas.VendasPdvREQUISICAO.Value := floattostr((FrmEntraNumeroReal.Numero));
          END;

          FrmEntraNumeroReal.Free ;
          FrmEntraNumeroReal := Nil;
     END;

     If Not Valida_ClienteOBS.isNull
     then Begin
          Application.CreateForm(TFrmMensagemFaturamento, FrmMensagemFaturamento);
          FrmMensagemFaturamento.Showmodal ;
          FrmMensagemFaturamento.Free ;
          FrmMensagemFaturamento  := Nil;
     end
     else begin
          If Not Valida_ClienteOBS2.isNull
          then Begin
               Application.CreateForm(TFrmMensagemFaturamento, FrmMensagemFaturamento);
               FrmMensagemFaturamento.dxDBMemo1.DataField := 'OBS2' ;
               FrmMensagemFaturamento.Showmodal ;
               FrmMensagemFaturamento.Free ;
               FrmMensagemFaturamento  := Nil;
          end;
     end;

     If Not Valida_ClienteCLASSIFICACAO.isNull
     then Begin
          Clas := Valida_ClienteCLASSIFICACAO.Value ;

          //Confere se a Classificacao Pede Senha
          Geral.Close ;
          Geral.Sql.Clear ;
          Geral.Params.Clear ;

          Geral.Params.CreateParam ( FtString , 'E', PtInput );
          Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

          Geral.Sql.Add (' Select Nome, Dig_Senha from Glo_Classificacao Where Codigo = :C and CNPJ = :E ');

          Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
          Geral.ParamByName ('C').AsInteger := Clas         ;

          Geral.Prepare ;
          Geral.Open ;

          If Not Geral.Fields[0].isNull
          then Begin
               NomeClas := Geral.Fields[0].Value ;
          end
          Else
              NomeClas := 'Não Informada';

          If Not Geral.Fields[1].isNull
          then Begin
               Dig_Senha := Geral.Fields[1].Value ;
          end
          else begin
               Dig_Senha := 'N' ;
          end;

          Geral.Close ;

          Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);

          FrmMensagemClassificacao.MEMO.Lines.Add (NomeClas);

          If ( Dig_Senha = 'S' ) OR ( Valida_ClienteBLOQUEADO.Value = 'S' )
          Then Begin
               FrmMensagemClassificacao.EdSenha.Visible := true ;
               FrmMensagemClassificacao.Label6.Visible  := true ;
               //Se o Nível ou a Classificacao exigir senha e não foi digitada
               if FrmMensagemClassificacao.Showmodal = MrCancel
               then Begin
                    MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
                    Abort ;
               end;
          end
          else begin
               FrmMensagemClassificacao.EdSenha.Visible := false ;
               FrmMensagemClassificacao.Label6.Visible  := false ;
               FrmMensagemClassificacao.Showmodal ;
          end;

          FrmMensagemClassificacao.Free ;
          FrmMensagemClassificacao := Nil;
     end;

     If Not Valida_ClienteLIMITE_TEMPO.isNull
     then Begin
          Ven_Limite_Tempo  := Valida_ClienteLIMITE_TEMPO.Value ;
     end
     else begin
          Ven_Limite_Tempo  := 0 ;
     end;

     If Not Valida_ClienteLIMITE_CREDITO.isNull
     then Begin
          Ven_Limite_Credito  := Valida_ClienteLIMITE_CREDITO.Value ;
     end
     else begin
          ven_Limite_Credito  := 0 ;
     end;

     SOMA_CHEQUES := DmApp.Soma_Cheques_Devolvidos ( Sender.value ) ;

     //VERIFICANDO SE TEM CHEQUE DEVOLVIDO
     IF ( SOMA_CHEQUES > 0 )
     Then begin
          MessageDlg('Cliente com Cheques Devolvidos no Valor de ' + formatfloat('###,##0.00', SOMA_CHEQUES), mtError, [mbOK], 0);
          FrmVendaspdv.EdPessoa.SetFocus ;
          Sender.Clear ;
          Abort ;
     end;

     If (Ven_Limite_Credito > 0) or (Ven_Limite_Tempo > 0) then
     begin
       //Verifica os Limites de Crédito ( Tempo e Valor )
       If Not DmApp.Verifica_Limite ( DmApp.Cnpj, VendasPdvPESSOA_FJ.Value, VendasPdvNOME.Value, Ven_Limite_Tempo, Ven_Limite_Credito, VendasPdvDATA.Value, 0 )
       then Begin
               MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
               FrmVendasPdv.EdPessoa.SetFocus ;
               Sender.Clear ;
               Abort ;
          end
     end;
end;

procedure TDmVendas.VendasPdv_ItensAfterInsert(DataSet: TDataSet);
begin
     Qntde_Pdv                   := 0;
     VendasPdv_ItensCNPJ.Value   := VendasPdvCNPJ.value   ;
     VendasPdv_ItensCODIGO.Value := VendasPdvCODIGO.Value ;
end;

procedure TDmVendas.VendasPdv_ItensNewRecord(DataSet: TDataSet);
begin
     IF DmaPP.PDV_DIGITA_QNTDE = 'S'
     THEN BEGIN
          VendasPdv_ItensQUANTIDADE.Value    := 0;
     END
     ELSE BEGIN
          VendasPdv_ItensQUANTIDADE.Value    := 1;
     END;
     VendasPdv_ItensCODIGO.Value        := VendasPdvCODIGO.Value ;
     VendasPdv_ItensPRC_UNITARIO.Value  := 0;
     VendasPdv_ItensPRC_CUSTO.Value     := 0;
     VendasPdv_ItensICM.Value           := 0;
     VendasPdv_ItensICM_SUBS.Value      := 0;
     VendasPdv_ItensIPI.Value           := 0;
     VendasPdv_ItensVOLUME.Value        := 0;
     VendasPdv_ItensPESO.Value          := 0;
     VendasPdv_ItensDESCONTO.Value      := 0;
     VendasPdv_ItensPORC_DESC.Value     := 0;
     VendasPdv_ItensUNIDADE.Value       := 'UN' ;
     VendasPdv_ItensSEQUENCIA.Value     := VendasPdv_Itens.RecordCount ;
     VendasPdv_ItensVENDEDOR.Value      := VendasPdvVENDEDOR.Value ;
     VendasPdv_ItensSUBUNIDADE.VALUE    := 1;
end;


procedure TDmVendas.VendasPdv_ItensCalcFields(DataSet: TDataSet);
begin
     VendasPdv_ItensTotal.value := arredonda(VendasPdv_ItensQUANTIDADE.Value * arredonda(VendasPdv_ItensPRC_UNITARIO.Value,2) , 3);
end;

procedure TDmVendas.VendasTIPO_VENDASetText(Sender: TField; const Text: String);
begin
  If Text = 'Venda'  Then
     Sender.Value := 'Ven';

  If Text = 'Condicional' Then
     Sender.Value := 'Condicional';

  If Text = 'Entr. Futura' Then
     Sender.Value := 'EnF';
end;

procedure TDmVendas.VendasPdvTIPO_VENDAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 'Ven' Then
     Text := 'Venda';
  If Sender.Value = 'Con' Then
     Text := 'Condicional';
  If Sender.Value = 'EnF' Then
     Text := 'Entr. Futura';
end;

procedure TDmVendas.VendasPdvTIPO_VENDASetText(Sender: TField;
  const Text: String);
begin
  If Text = 'Venda' Then
     Sender.Value := 'Ven';
  If Text = 'Condicional' Then
     Sender.Value := 'Condicional';
  If Text = 'Entr. Futura' Then
     Sender.Value := 'EnF';
end;

procedure TDmVendas.Consulta_VendaCalcFields(DataSet: TDataSet);
begin
     Consulta_VendaTotal_Geral.Value := arredonda(Consulta_VendaTOTAL.Value + Consulta_VendaDESC_ACRES.Value ,2);
end;

procedure TDmVendas.Consulta_Venda_ItensCalcFields(DataSet: TDataSet);
begin
   Consulta_Venda_ItensTotal.value := arredonda(Consulta_Venda_ItensQUANTIDADE.Value * Consulta_Venda_ItensPRC_UNITARIO.value, 3);
  // Consulta_Venda_ItensTotal.value := arredonda(Consulta_Venda_ItensQUANTIDADE.Value * ( Consulta_Venda_ItensPRC_UNIT_ORIGINAL.Value - Consulta_Venda_ItensDESCONTO.Value ), 3);
   Consulta_Venda_ItensTotal_fis.value := arredonda(Consulta_Venda_ItensQUANTIDADE_FIS.Value * ( Consulta_Venda_ItensPRC_UNITARIO_FIS.Value  ), 3);
end;

procedure TDmVendas.dtChequeAfterInsert(DataSet: TDataSet);
begin
     DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TDmVendas.OrcamentosAfterInsert(DataSet: TDataSet);
begin
     DataSet.Fields[0].Value := DMApp.Cnpj;
     Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase('ORCAMENTOS'), 0) + 1;
end;

procedure TDmVendas.OrcamentosBeforePost(DataSet: TDataSet);
begin
     If Dataset.State = dsInsert Then
        Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase('ORCAMENTOS'), 1);
end;

procedure TDmVendas.VerPessoa ( Codigo: Integer );
begin
     //Dados da Pessoa
     Ver_Pessoa.Close ;

     Ver_Pessoa.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     Ver_Pessoa.ParamByName ('COD').AsInteger    := Codigo       ;

     Ver_Pessoa.Prepare ;

     Ver_Pessoa.Open ;
end;

procedure TDmVendas.VerVeiculoPessoa (Codigo: Integer);
begin
     //Dados da Pessoa
     SelVeiculos.Close ;

     SelVeiculos.ParamByName ('CNPJ'     ).AsString   := DmApp.Cnpj   ;
     SelVeiculos.ParamByName ('PESSOA_FJ').AsInteger  := Codigo       ;

     SelVeiculos.Prepare ;

     SelVeiculos.Open ;
end;

procedure TDmVendas.Consulta_Orcamento_ItensCalcFields(DataSet: TDataSet);
begin
     Consulta_ORCAMENTO_ItensTotal.value  := Consulta_ORCAMENTO_ItensQUANTIDADE.Value * ( Consulta_ORCAMENTO_ItensPRC_UNITARIO.Value - Consulta_ORCAMENTO_ItensDESCONTO.Value );
     Consulta_ORCAMENTO_ItensTotal_2.value := Consulta_ORCAMENTO_ItensQUANTIDADE.Value * ( Consulta_ORCAMENTO_ItensPRC_UNITARIO_2.Value );
end;

procedure TDmVendas.VendasPdvVENDEDORValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;

     If ( Sender.Value = 0 )
     then Begin
          FrmVendasPdv.LocVen := True ;
          Exit ;
     end;

     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );
     Geral.Params.CreateParam ( FtString , 'A', PtInput );

     Geral.Sql.Add (' Select Codigo From Fat_Vendedor Where Codigo = :C and CNPJ = :E ');
     Geral.Sql.Add (' and ATIVO = :A ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;
     Geral.ParamByName ('A').AsString  := 'S'          ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          Showmessage ('Vendedor Inexistente!');
          Abort;
     end;
end;

Procedure TDmVendas.Propriedade ( Cnpj: String; Pessoa_Fj: Integer );
Begin
     SelPropriedades.Close ;

     SelPropriedades.ParamByName ('CNPJ'     ).AsString  := DmApp.Cnpj   ;
     SelPropriedades.ParamByName ('PESSOA_FJ').AsInteger := Pessoa_Fj    ;

     SelPropriedades.Prepare ;
     SelPropriedades.Open ;
     SelPropriedades.FetchAll ;

     If FrmVendas <> Nil
     then begin
          If SelPropriedades.RecordCount > 0
          then begin
               FrmVendas.EdPropriedade.Visible := true ;
               FrmVendas.Label15.Visible        := true ;
               FrmVendas.EdPropriedade.Visible  := true ;
               FrmVendas.CmbPropriedade.Visible := true ;
          end
          else begin
               FrmVendas.EdPropriedade.Visible  := False  ;
               FrmVendas.Label15.Visible        := False ;
               FrmVendas.EdPropriedade.Visible  := False ;
               FrmVendas.CmbPropriedade.Visible := False ;
               FrmVendas.EdNatureza.SetFocus ;
          end;
     end;
end;

Procedure TDmVendas.Conveniados ( Cnpj: String; Pessoa_Fj: Integer );
Begin
     SelPessoas_Conv.Close ;

     SelPessoas_Conv.ParamByName ('CNPJ'     ).AsString  := DmApp.Cnpj   ;
     SelPessoas_Conv.ParamByName ('CONVENIO' ).AsInteger := Pessoa_Fj    ;

     SelPessoas_Conv.Prepare ;
     SelPessoas_Conv.Open ;
     SelPessoas_Conv.FetchAll ;
end;

procedure TDmVendas.CotacoesAfterInsert(DataSet: TDataSet);
begin
     DataSet.Fields[0].Value := DMApp.Cnpj;
     Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase('COTACOES'), 0) + 1;
end;

procedure TDmVendas.CotacoesBeforePost(DataSet: TDataSet);
begin
     If Dataset.State = dsInsert Then
        Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase('COTACOES'), 1);
end;

procedure TDmVendas.CotacoesCalcFields(DataSet: TDataSet);
begin
     CotacoesGeral.Value := CotacoesTotal.Value + CotacoesDESC_ACRESC.Value ;
end;

procedure TDmVendas.CotacoesNewRecord(DataSet: TDataSet);
begin
     CotacoesDESC_ACRESC.Value := 0   ;
     CotacoesTOTAL.Value       := 0   ;
     CotacoesFECHADO.Value     := 'N' ;
     //TEMP
     CotacoesUSUARIO.Value := DmaPP.UsuarioCaixa;
     CotacoesDATA.Value    := DmApp.Data_Servidor;
end;

procedure TDmVendas.Cotacoes_ItensCalcFields(DataSet: TDataSet);
begin
     Cotacoes_ItensTotal.value        := Cotacoes_ItensQUANTIDADE.Value * ( Cotacoes_ItensPRC_UNITARIO.Value - Cotacoes_ItensDESCONTO.Value);
end;

procedure TDmVendas.Cotacoes_ItensNewRecord(DataSet: TDataSet);
begin
     Cotacoes_ItensCNPJ.Value          := CotacoesCNPJ.Value ;
     Cotacoes_ItensCODIGO.Value        := CotacoesCODIGO.Value ;
     Cotacoes_ItensQUANTIDADE.Value    := 0;
     Cotacoes_ItensPRC_UNITARIO.Value  := 0;
     Cotacoes_ItensPRC_CUSTO.Value     := 0;
     Cotacoes_ItensDESCONTO.Value      := 0;
     Cotacoes_ItensPORC_DESC.Value     := 0;
     Cotacoes_ItensUNIDADE.Value       := 'UN' ;
     Cotacoes_ItensSUBUNIDADE.Value    := 1;
     Cotacoes_ItensSequencia.Value     := Cotacoes_Itens.RecordCount ;
end;

procedure TDmVendas.CotacoesPESSOA_FJValidate(Sender: TField);
begin
     If ( Sender.IsNull ) OR ( DmApp.CLIAVISTA = Sender.Value )
     Then begin
          Exit ;
     end;

     If ( Sender.Value = 0 )
     then Begin
          If FrmCotacoes <> Nil
          then begin
               FrmCotacoes.LocCli := True ;
               Exit ;
          end;
     end;

     Valida_Pessoa_Fj.Close ;

     Valida_Pessoa_Fj.ParamByName ('CNPJ').AsString    := DmApp.Cnpj   ;
     Valida_Pessoa_Fj.ParamByName ('CODIGO').AsInteger := Sender.Value ;

     Valida_Pessoa_Fj.Prepare ;
     Valida_Pessoa_Fj.Open ;

     If Valida_Pessoa_FjNOME.isNull
     then Begin
          //Verifica se Nao
          Showmessage ('Pessoa Inexistente!');
          Abort;
     end;

     If Not Valida_Pessoa_FjNOME.isNull
     then Begin
          CotacoesNOME.Value := Valida_Pessoa_FjNOME.Value ;
     end ;
end;

procedure TDmVendas.Cotacoes_ItensPRODUTOValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;

     If trim(Sender.Value) = ''
     Then
         Exit ;

     //BUSCA OS VALORES DO PRODUTO
     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtString , 'C', PtInput );

     Geral.Sql.Add (' Select PRC_REPOS, PRC_VENDA, Volume, Peso_Liq, Unidade, NOME From Est_Produtos Where Codigo = :C and CNPJ = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsString  := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[1].isNull
     then Begin
          If FrmCotacoesItens <> Nil
          then begin
               If MessageDlg('Produto Não Cadastrado, Confirmar a Operação?', mtConfirmation, [mbOK, mbCancel], 0) = MrOk
               then begin
                    FrmCotacoesItens.LocProd := False ;
               end
               else begin
                    FrmCotacoesItens.LocProd := True ;
               end;
          end;

          Exit;
     end
     else begin
          Cotacoes_ItensPRC_CUSTO.Value         := Geral.Fields[0].Value ;
          Cotacoes_ItensPRC_UNITARIO.Value      := Geral.Fields[1].Value ;
          Cotacoes_ItensPRC_UNIT_ORIGINAL.Value := Geral.Fields[1].Value ;
          Cotacoes_ItensNOME_PRODUTO.Value      := Geral.Fields[5].Value ;

          If Not Geral.Fields[4].IsNull
          then begin
               Cotacoes_ItensUNIDADE.Value      := Geral.Fields[4].Value ;
               Cotacoes_ItensSUBUNIDADE.Value   := 1 ;
          end
          else begin
               Cotacoes_ItensUNIDADE.Value      := 'UN';
               Cotacoes_ItensSUBUNIDADE.Value   := 1;
          end;
     end;
end;

procedure TDmVendas.Cotacoes_ItensDESCONTOValidate(Sender: TField);
begin
     IF ( Sender.Value < 0 )
     THEN BEGIN
          Showmessage('O Valor do ' + Sender.DisPlayLabel  + ' Digitado deve Maior Ou Igual a Zero');
          Abort;
     END;
end;

procedure TDmVendas.Cotacoes_ItensPORC_DESCValidate(Sender: TField);
begin
     IF ( Sender.Value < 0 )
     THEN BEGIN
          Showmessage('O Valor do ' + Sender.DisPlayLabel  + ' Digitado deve Maior Ou Igual a Zero');
          Abort;
     END;
end;

procedure TDmVendas.Consulta_Cotacao_ItensCalcFields(DataSet: TDataSet);
begin
     Consulta_Cotacao_ItensTotal.value := Consulta_Cotacao_ItensQUANTIDADE.Value * ( Consulta_Cotacao_ItensPRC_UNITARIO.Value - Consulta_Cotacao_ItensDESCONTO.Value );
end;

procedure TDmVendas.Contas_PessoasBeforeOpen(DataSet: TDataSet);
begin
     If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBDataSet).ParamByName('CNPJ').asString       := DMApp.Cnpj;
       (DataSet as TIBDataSet).ParamByName('CODIGO').asInteger    := NDocto;
       (Dataset as TIBQuery).Prepare;
     End;

end;

procedure TDmVendas.Vendas_FormasNewRecord(DataSet: TDataSet);
begin
   Vendas_FormasSEQUENCIA.Value := Vendas_Formas.RecordCount + 1;
end;

procedure TDmVendas.Vendas_FormasCalcFields(DataSet: TDataSet);
begin
     Vendas_FormasTotal.Value := Vendas_FormasVALOR_ORIGINAL.Value + Vendas_FormasJUROS.Value ;
end;

procedure TDmVendas.CotacoesTRANSPORTADORAValidate(Sender: TField);
begin
     If ( Sender.IsNull ) and ( Sender.Text = '' )
     Then
         Exit ;

     If ( Sender.Value = 0 )
     then Begin
          FrmCotacoes.LocTrans := True ;
          Exit ;
     end;

     Geral.Close ;
     Geral.Sql.Clear ;
     Geral.Params.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select Nome from Glo_Transportadoras Where Codigo = :C and CNPJ = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          Showmessage ('Transportadora Inexistente!');
          Abort;
     end
     else
          CotacoesNOME_TRANSPORTADORA.Value := Geral.Fields[0].Value ;
end;

procedure TDmVendas.TrocasNewRecord(DataSet: TDataSet);
Var
   I: Integer;
begin
     For I := 0 to Trocas.FieldCount - 1 do
     begin
          if Trocas.Fields.FIELDS[i].DataType = FtFloat
          then Begin
               Trocas.Fields[i].Value := 0;
          end;
     end;

     TrocasFECHADO.Value       := 'N' ;
     TrocasENVIADA_CX.Value    := 'N' ;
     //TEMP      
     TrocasUSUARIO.Value       := DmApp.UsuarioCaixa ;
     TrocasDATA.Value          := DmApp.Data_Servidor;
     TrocasCANCELADA.Value     := 'N' ;
   //  TrocasFORMA_PGTO.Value := dm
end;

procedure TDmVendas.TrocasAfterInsert(DataSet: TDataSet);
begin
     DataSet.Fields[0].Value := DMApp.Cnpj;
     Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase('TROCAS'), 0) + 1;
end;

procedure TDmVendas.TrocasBeforePost(DataSet: TDataSet);
begin
     If Dataset.State = dsInsert Then
        Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase('TROCAS'), 1);
end;

procedure TDmVendas.TrocasCalcFields(DataSet: TDataSet);
begin
     TrocasGeral.Value   := TrocasTotal.Value + TrocasDESC_ACRESC.Value ;
     TrocasGeral2.Value  := TrocasTotal_2.Value + TrocasDESC_ACRESC_2.Value ;

     TrocasLiquido.Value := TrocasGeral2.Value - TrocasGeral.Value;

     //TOTAL QUE DEVERA SER PARCELADO
     TrocasTotal_Parcelar.Value := TrocasLiquido.Value - TrocasENTRADA.Value ;

     IF ( TrocasPGTO_AVISTA.Value <> 'S' )
     THEN BEGIN
          //DIFERENCA DO TOTAL A PARCELAR COM O TOTAL PARCELADO
          TrocasDiferenca.Value := TrocasTotal_Parcelar.Value - TrocasVLR_PARC_LC.Value ;
          TrocasAVista.Value    := TrocasENTRADA.Value ;
     END
     ELSE BEGIN
          //DIFERENCA DO TOTAL A PARCELAR COM O TOTAL PARCELADO
          TrocasDiferenca.Value := 0 ;
          TrocasAVista.Value := TrocasLiquido.Value ;
     END;
end;

procedure TDmVendas.Trocas_ItensCalcFields(DataSet: TDataSet);
begin
     Trocas_ItensTotal.value        := Trocas_ItensQUANTIDADE.Value * ( Trocas_ItensPRC_UNITARIO.Value - Trocas_ItensDESCONTO.Value);

     Trocas_ItensPeso_Total.Value   := Trocas_ItensQUANTIDADE.Value * Trocas_ItensPeso.Value ;
     Trocas_ItensVolume_Total.Value := Trocas_ItensQUANTIDADE.Value * Trocas_ItensVolume.Value ;
end;

procedure TDmVendas.Trocas_ItensNewRecord(DataSet: TDataSet);
begin
     Trocas_ItensCNPJ.Value          := TrocasCNPJ.Value ;
     Trocas_ItensCODIGO.Value        := TrocasCODIGO.Value ;
     Trocas_ItensQUANTIDADE.Value    := 0;
     Trocas_ItensPRC_UNITARIO.Value  := 0;
     Trocas_ItensPRC_CUSTO.Value     := 0;
     Trocas_ItensICM.Value           := 0;
     Trocas_ItensICM_SUBS.Value      := 0;
     Trocas_ItensIPI.Value           := 0;
     Trocas_ItensVOLUME.Value        := 0;
     Trocas_ItensPESO.Value          := 0;
     Trocas_ItensDESCONTO.Value      := 0;
     Trocas_ItensPORC_DESC.Value     := 0;
     Trocas_ItensUNIDADE.Value       := 'UN' ;
     Trocas_ItensSUBUNIDADE.Value    := 1;
     Trocas_ItensSequencia.Value     := Trocas_Itens.RecordCount ;
     Trocas_ItensTIPO.Value          := 'E' ;
end;

procedure TDmVendas.TrocasPESSOA_FJValidate(Sender: TField);
begin
     If ( Sender.IsNull ) OR ( DmApp.CLIAVISTA = Sender.Value )
     Then begin
          TrocasNOME_CONSUMIDOR.Value := Uppercase(InputBox ('Nome do Consumidor', 'Nome',''));
          TrocasNome.VALUE            := TrocasNOME_CONSUMIDOR.Value ;
          Exit ;
     end;

     If ( Sender.Value = 0 )
     then Begin
          If FrmTrocas <> Nil
          then begin
               FrmTrocas.LocCli := True ;
               Exit ;
          end;
     end;

     Valida_Cliente.Close ;

     Valida_Cliente.ParamByName ('CNPJ').AsString    := DmApp.Cnpj   ;
     Valida_Cliente.ParamByName ('CODIGO').AsInteger := Sender.Value ;

     Valida_Cliente.Prepare ;
     Valida_Cliente.Open ;

     If Valida_ClientePESSOA_FJ.isNull
     then Begin
          Showmessage ('Cliente Inexistente!');
          Abort;
     end;

     If Not Valida_ClienteNOME.isNull
     then Begin
          TrocasNOME.Value := Valida_ClienteNOME.Value ;
     end ;

     If Not Valida_ClienteCOD_VEND.isNull
     then Begin
          TrocasVENDEDOR.Value    := Valida_ClienteCOD_VEND.Value ;
     end;

     If Not Valida_ClienteCOD_FPAGTO.isNull
     then Begin
          TrocasFORMA_PGTO.Value  := Valida_ClienteCOD_FPAGTO.Value ;
     end;

     If Not Valida_ClienteBLOQUEADO.isNull
     then Begin
          Bloqueado  := Valida_ClienteBLOQUEADO.Value ;
     end
     else begin
          Bloqueado  := 'N' ;
     end;

     If Not Valida_ClienteOBS.isNull
     then Begin
          Application.CreateForm(TFrmMensagemFaturamento, FrmMensagemFaturamento);
          FrmMensagemFaturamento.Showmodal ;
          FrmMensagemFaturamento.Free ;
          FrmMensagemFaturamento  := Nil;
     end;
end;

procedure TDmVendas.TrocasVENDEDORValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;

     If ( Sender.Value = 0 )
     then Begin
          FrmTrocas.LocVen := True ;
          Exit ;
     end;

     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select NOME From Fat_Vendedor Where Codigo = :C and CNPJ = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          Showmessage ('Vendedor Inexistente!');
          Abort;
     end
     ELSE BEGIN
          TrocasNOME_VENDEDOR.Value := Geral.Fields[0].Value ;
     END;
end;

procedure TDmVendas.Trocas_ItensPRODUTOValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;

     If trim(Sender.Value) = ''
     Then
         Exit ;

     //BUSCA OS VALORES DO PRODUTO
     Valida_Produto.Close ;

     Valida_Produto.ParamByName ('CNPJ').AsString        := DmApp.Cnpj   ;
     Valida_Produto.ParamByName ('PRODUTO').AsString     := Sender.Value ;
     Valida_Produto.ParamByName ('VENDEDOR').AsInteger     := TrocasVENDEDOR.value;
     Valida_Produto.Prepare ;

     Valida_Produto.OPEN ;

     If Valida_ProdutoPRC_VENDA.IsNull
     then Begin
          If FrmTrocasItens <> Nil
          then
              FrmTrocasItens.LocProd := True ;

          Exit;
     end
     else begin
          Trocas_ItensPRC_CUSTO.Value         := Valida_ProdutoPRC_REPOS.Value ;
          Trocas_ItensPRC_UNITARIO.Value      := Valida_ProdutoPRC_VENDA.Value ;
          Trocas_ItensPRC_UNIT_ORIGINAL.Value := Valida_ProdutoPRC_VENDA.Value ;
          Trocas_ItensNOME_PRODUTO.Value      := Valida_ProdutoNOME.Value ;

          If Not Valida_ProdutoVOLUME.IsNull
          then
              Trocas_ItensVOLUME.Value       := Valida_ProdutoVOLUME.Value
          else
              Trocas_ItensVOLUME.Value       := 0;

          If Not Valida_ProdutoPESO_LIQ.IsNull
          then
              Trocas_ItensPESO.Value         := Valida_ProdutoPESO_LIQ.Value
          else
              Trocas_ItensPESO.Value         := 0;

          If Not Valida_ProdutoUNIDADE.IsNull
          then
              Trocas_ItensUNIDADE.Value      := Valida_ProdutoUNIDADE.Value
          else
              Trocas_ItensUNIDADE.Value      := 'UN';

          If Not Valida_ProdutoMARCA.IsNull
          then BEGIN
               Trocas_ItensMARCA.Value       := COPY(Valida_ProdutoMARCA.Value,1,30);
          END;
     end;


     //Verifica se Ele Já Foi Faturado Nesta Nota
     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );
     Geral.Params.CreateParam ( FtString , 'P', PtInput );

     Geral.Sql.Add (' Select * From Fat_Trocas_Itens Where Produto = :P and CNPJ = :E and Codigo = :C ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Trocas_ItensCODIGO.Value ;
     Geral.ParamByName ('P').AsString  := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Not Geral.Fields[1].isNull then
     begin
      IF DmApp.REPETE_PRODUTO = 'S' THEN
        MessageDlg('Atenção Produto Repetido!', mtError, [mbOK], 0)
      ELSE
      BEGIN
        MessageDlg('Este Produto Já Foi Faturado Nesta Troca, Verifique!', mtError, [mbOK], 0);
        Abort;
      END
     end;
end;

procedure TDmVendas.Trocas_ItensDESCONTOValidate(Sender: TField);
begin
     IF ( Sender.Value < 0 )
     THEN BEGIN
          Showmessage('O Valor do ' + Sender.DisPlayLabel  + ' Digitado deve Maior Ou Igual a Zero');
          Abort;
     END;
end;

procedure TDmVendas.TrocasFORMA_PGTOValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;

     If ( Sender.Value = 0 )
     then Begin
          FrmTrocas.LocForma := True ;
          Exit ;
     end;

     Valida_Forma.Close ;

     Valida_Forma.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     Valida_Forma.ParamByName ('CODIGO').AsInteger := Sender.Value ;

     Valida_Forma.Prepare ;
     Valida_Forma.Open ;

     If Valida_FormaCODIGO.isNull
     then Begin
          MessageDlg('Forma de Pagamento Inexistente!', mtError, [mbOK], 0);
          Abort;
     end
     ELSE BEGIN
          TrocasNOME_FORMA.Value := Valida_FormaNOME.Value ;
     END;

     //Apaga Parcelas
     DmApp.Apaga_Parcelas_Troca ( DmApp.Cnpj, TrocasCODIGO.Value );

     Trocas_Parc.Close ;
     Trocas_Parc.Open  ;

     IF FrmTrocas <> Nil
     THEN BEGIN
          //Habilita os componentes para cada tipo de Pagamento
          WITH FrmTrocas DO
          BEGIN
               //Numero de Parcelas = 2 ; a vista = 3
               IF (( Valida_FormaNPARCELAS.Value > 0 ) AND ( Valida_FormaAVISTA.Value <> 'S' )) OR ( Valida_FormaFATURA_FUTURA.Value = 'S')
               THEN BEGIN
                    //CONFERE SE O CLIENTE ESTA HABILITADO PARA Trocas A PRAZO
                    IF BLOQUEADO = 'S'
                    THEN BEGIN
                         MessageDlg('Este Cliente Está Bloqueado Para Trocas a Prazo, Verifique!', mtError, [mbOK], 0);
                         ABORT ;
                    END
                    ELSE
                        VENDAPARCELADA := TRUE ;
               END;

               IF Valida_FormaFATURA_FUTURA.Value <> 'S'
               THEN BEGIN
                    IF Valida_FormaAVISTA.Value = 'S'
                    THEN BEGIN
                         CmbLocal.Enabled     := false ;
                         EDENTRADA.Enabled    := false ;
                         cmbTipoDocto.Enabled := false ;

                         TrocasLOCAL_COBRANCA.Clear ;
                         TrocasENTRADA.Clear        ;

                         TrocasTIPO_DOCTO.Clear     ;

                         GRIDFATURAMENTO.Enabled := FALSE ;

                         TrocasPGTO_AVISTA.Value := 'S' ;
                         trocasdinheiro.value    := TrocasAVista.Value ;
                    END
                    ELSE BEGIN
                         CmbLocal.Enabled     := true ;
                         EDENTRADA.Enabled    := true ;
                         cmbTipoDocto.Enabled := true ;

                         GRIDFATURAMENTO.Enabled := TRUE ;

                         TrocasPGTO_AVISTA.Value := 'N' ;

                         IF (Valida_FormaCOMENTRADA.Value = 'N')
                         THEN BEGIN
                              EDENTRADA.Enabled    := false ;
                              TrocasENTRADA.VALUE := 0  ;

                         END
                         ELSE BEGIN
                              EDENTRADA.Enabled    := TRUE ;
                         END;
                    END;
               END
               ELSE BEGIN
                    CmbLocal.Enabled       := false ;
                    EDENTRADA.Enabled      := false ;
                    cmbTipoDocto.Enabled   := false ;
                    TrocasLOCAL_COBRANCA.Clear ;
                    TrocasENTRADA.Clear        ;
                    TrocasTIPO_DOCTO.Clear     ;

                    GRIDFATURAMENTO.Enabled := FALSE ;
               END;

               IF ( Valida_FormaDESCONTO.Value > 0 )
               THEN BEGIN
                    TrocasDESC_ACRESC.Value := -1 * ((TrocasTOTAL.VALUE * Valida_FormaDESCONTO.VALUE)/100);
               END
               ELSE BEGIN
                    TrocasDESC_ACRESC.Value := 0 ;
               END;

               IF ( Valida_FormaACRESCIMO.Value > 0 )
               THEN BEGIN
                    TrocasDESC_ACRESC.Value := TrocasDESC_ACRESC.Value + ((TrocasTOTAL.VALUE * Valida_FormaACRESCIMO.value)/100);
               END;
          End;
     END;
end;

procedure TDmVendas.Trocas_ParcNewRecord(DataSet: TDataSet);
begin
     Trocas_ParcVALOR.Value := 0;
     Trocas_ParcCNPJ.Value   := DsTrocas.DataSet.FieldByName('CNPJ').AsString    ;
     Trocas_ParcCODIGO.Value := DsTrocas.DataSet.FieldByName('CODIGO').AsInteger ;
end;

procedure TDmVendas.Trocas_ParcAfterPost(DataSet: TDataSet);
begin
     If FrmTrocas <> Nil
     Then
         FrmTrocas.Calcular_Parcelas ;

     If FrmFaturaTroca <> Nil
     Then
         FrmFaturaTroca.Calcular_Parcelas ;
end;

procedure TDmVendas.Consulta_TrocaCalcFields(DataSet: TDataSet);
begin
     Consulta_TrocaGeral.Value   := Consulta_TrocaTotal.Value + Consulta_TrocaDESC_ACRESC.Value ;
     Consulta_TrocaGeral2.Value  := Consulta_TrocaTotal_2.Value + Consulta_TrocaDESC_ACRESC_2.Value ;

     Consulta_TrocaLiquido.Value := Consulta_TrocaGeral2.Value - Consulta_TrocaGeral.Value;
end;

procedure TDmVendas.Consulta_Troca_ItensCalcFields(DataSet: TDataSet);
begin
     Consulta_Troca_ItensTotal.value := Consulta_Troca_ItensQUANTIDADE.Value * ( Consulta_Troca_ItensPRC_UNITARIO.Value - Consulta_Troca_ItensDESCONTO.Value );
end;

procedure TDmVendas.NotasAfterInsert(DataSet: TDataSet);
begin
     DataSet.Fields[0].Value := DMApp.Cnpj;
     If DmaPP.PST_DIG_NUMERO <> 'S'
     THEN BEGIN
          Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase('VENDAS'), 0) + 1;
     END;
end;

procedure TDmVendas.NotasBeforePost(DataSet: TDataSet);
begin
     If DmaPP.PST_DIG_NUMERO <> 'S'
     THEN BEGIN
          If Dataset.State = dsInsert Then
          Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase('VENDAS'), 1);
     END;
end;

procedure TDmVendas.Retiradas_ClientesNewRecord(DataSet: TDataSet);
begin
     Retiradas_ClientesCONTA.Value     := DmaPP.ContaCaixa     ;
     Retiradas_ClientesUSUARIO.Value   := DmaPP.UsuarioCaixa   ;
     Retiradas_ClientesDATA.Value      := DmApp.DataCaixa      ;
end;

procedure TDmVendas.Retiradas_ClientesBeforeOpen(DataSet: TDataSet);
begin
     If (DataSet is TIBDataset) Then
     Begin
       (DataSet as TIBDataSet).Params.ByName('CNPJ').asString     := DMApp.Cnpj         ;
       (DataSet as TIBDataSet).Params.ByName('DATA').asDate       := DMApp.DataCaixa    ;
       (DataSet as TIBDataSet).Params.ByName('USUARIO').asInteger := DmApp.UsuarioCaixa ;
       (DataSet as TIBDataSet).Params.ByName('CONTA'  ).asInteger := DmApp.ContaCaixa   ;
       (Dataset as TIBDataSet).Prepare;
     End;
end;


procedure TDmVendas.VendasPdvCalcFields(DataSet: TDataSet);
begin
     VendasPdvTotal_Geral.Value := VendasPdvTOTAL.Value + VendasPdvDESC_ACRES.Value ;
end;

procedure TDmVendas.FaturaTrocasCalcFields(DataSet: TDataSet);
var
  x : integer;
  DescontoAcresc : Real;
begin
     // estava dando stack overflow
     DescontoAcresc := 0;
     DescontoAcresc := (FaturaTrocasDesc_acresc.value * -1);

     FaturaTrocasTotal_Geral.Value  := FaturaTrocasTOTAL.Value   - DescontoAcresc;
     FaturaTrocasTOTAL_GERAL2.Value := FaturaTrocasTotal_2.Value + FaturaTrocasDESC_ACRESC_2.Value ;

     FaturaTrocasLiquido.Value      := FaturaTrocastotal_Geral2.Value  - FaturaTrocastotal_Geral.Value;

     //TOTAL QUE DEVERA SER PARCELADO
     FaturaTrocasTotal_Parcelar.Value := FaturaTrocasLiquido.Value - FaturaTrocasENTRADA.Value ;
     IF ((SelFormaPgtoAVISTA.Value <> 'S') AND (SelFormaPgtoFATURA_FUTURA.Value <> 'S'))
     THEN BEGIN
          //DIFERENCA DO TOTAL A PARCELAR COM O TOTAL PARCELADO
          FaturaTrocasDiferenca.Value := FaturaTrocasTotal_Parcelar.Value - FaturaTrocasVlr_Parc_Lc.Value ;
     END
     ELSE BEGIN
          //DIFERENCA DO TOTAL A PARCELAR COM O TOTAL PARCELADO
          FaturaTrocasDiferenca.Value := 0 ;
     END;

     IF SelFormaPgtoAVISTA.Value = 'S'
     THEN BEGIN
          FaturaTrocasAVista.Value := FaturaTrocasLiquido.Value ;
     END
     ELSE BEGIN
          FaturaTrocasAVista.Value := FaturaTrocasENTRADA.Value ;
     END;
end;

procedure TDmVendas.FaturaTrocasFORMA_PGTOValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;

     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select * From Fin_Formas_Pagto Where Codigo = :C and CNPJ = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          Showmessage  ('Forma de Pagto Inexistente!');
          Abort;
     end
     else
     begin
          Valida_Forma.Close ;
          Valida_Forma.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
          Valida_Forma.ParamByName ('CODIGO').AsInteger := Sender.Value ;
          Valida_Forma.Prepare ;
          Valida_Forma.Open ;
          //setando a forma de pagto
          FaturaTrocasNOME_FORMA.value := Valida_FormaNOME.AsString;

          IF Valida_FormaAVISTA.Value = 'S' THEN
            FaturaTrocasPGTO_AVISTA.Value := 'S'
          else
            FaturaTrocasPGTO_AVISTA.Value := 'N';

          //Apaga Parcelas
          DmApp.Apaga_Parcelas_Troca ( DmApp.Cnpj, FaturaTrocasCODIGO.Value );

          Trocas_Parc.Close ;
          Trocas_Parc.Open  ;
     end;
end;

procedure TDmVendas.FaturaTrocasDESC_ACRESCValidate(Sender: TField);
begin
     //Apaga Parcelas
    DmApp.Apaga_Parcelas_Troca ( DmApp.Cnpj, FaturaTrocasCODIGO.Value );
end;

procedure TDmVendas.VendasPdv_ItensVENDEDORValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;

     If ( Sender.Value = 0 )
     then Begin
          FrmVendasPdv.LocVen := True ;
          Exit ;
     end;

     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select NOME From Fat_Vendedor Where Codigo = :C and CNPJ = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          MessageDlg('Vendedor Inexistente!', mtError, [mbOK], 0);
          Abort;
     end
     ELSE BEGIN
          VendasPdv_ItensNOME_VENDEDOR.Value := copy(Geral.Fields[0].Value,1,15);
     END;
end;

procedure TDmVendas.VER_ANALISE_CUSTOSCalcFields(DataSet: TDataSet);
begin
     VER_ANALISE_CUSTOSVlr_Total.Value := VER_ANALISE_CUSTOSQUANTIDADE.Value * VER_ANALISE_CUSTOSPRC_UNITARIO.value ;
end;

procedure TDmVendas.SelFatura_Futura_ItensCalcFields(DataSet: TDataSet);
begin
     SelFatura_Futura_ItensTotal.value :=
     SelFatura_Futura_ItensQUANTIDADE.Value *
     ( SelFatura_Futura_ItensPRC_UNITARIO.Value - SelFatura_Futura_ItensDESCONTO.Value );
end;

procedure TDmVendas.VendasPdv_ItensBeforePost(DataSet: TDataSet);
var
  resto : real;
begin
    if not dmapp.VerificaDescontoItem(VendasPdv_ItensPRODUTO.asString,VendasPdvPESSOA_FJ.Value,(VendasPdv_ItensPRC_UNITARIO.AsFloat)) then
    begin
      if not PedirSenha('Desconto Acima do ', 'Máximo Permitido!','') THEN
      begin
        abort;
        exit;
      end;
    end;

  if (Valida_ProdutoVALIDA_MULT_QTDE_MIN.value = 'S') then
  begin
    if (Valida_ProdutoQNTDE_MINIMA_VENDA.value > 0) then
    begin
      resto := (VendasPDV_ItensQUANTIDADE.value/Valida_ProdutoQNTDE_MINIMA_VENDA.value);
      resto := resto - trunc(resto);
      if (resto <> 0) then
      begin
        Application.MessageBox(Pchar('A quantidade vendida deverá ser no mínimo de '+Valida_ProdutoQNTDE_MINIMA_VENDA.AsString+' ou multipla deste valor'),'Aviso',mb_iconerror + mb_ok);
        abort;
        exit;
      end
    end
  end;

     IF ( VendasPdv_ItensGRADE.VALUE) = '' THEN
         VendasPdv_ItensGRADE.VALUE := '0';

     IF ( VendasPdv_ItensNUMERO.VALUE) = '' THEN
         VendasPdv_ItensNUMERO.VALUE := '0';

     IF (( DMAPP.EST_USA_GRADE = 'S' ) and ( Frmvendaspdvitens <> nil )) THEN
     BEGIN
       IF VendasPdv_ItensGRADE.IsNull THEN
       BEGIN
         MESSAGEDLG('Digite uma Grade Válida!', mterror, [mbok],0);
         frmvendaspdvitens.EDGRADE.SetFocus;
         Abort;
       END
       ELSE
       BEGIN
         IF VendasPdv_ItensNUMERO.IsNull THEN
         BEGIN
           MESSAGEDLG('Digite um Número Válido!', mterror, [mbok],0);
           frmvendaspdvitens.EDNUMERO.SetFocus;
           Abort;
         END
         ELSE
         BEGIN
           IF (DMAPP.POSSUI_GRADE (VendasPdv_ItensPRODUTO.VALUE )) AND (( VendasPdv_ItensNUMERO.VALUE = '0' ) OR (VendasPdv_ItensGRADE.VALUE  = '0' ))
                    THEN BEGIN
                         MESSAGEDLG('Digite uma Grade Válida!', mterror, [mbok],0);
                         frmvendaspdvitens.EDGRADE.SetFocus;
                         Abort;
                    END
               END;
          END;
     END;
end;

procedure TDmVendas.VendasPdv_ItensGRADEValidate(Sender: TField);
begin
     If trim(sender.value) <> '0'
     then begin
          GERAL.Close;
          GERAL.Sql.Clear;
          GERAL.Sql.Add (' Select * From EST_PRODUTOS_GRADES Where CNPJ = :CNPJ AND PRODUTO = :P AND GRADE = :G ');
          GERAL.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;
          GERAL.ParamByName ('P'   ).AsString  := VendasPdv_ItensPRODUTO.Value ;
          GERAL.ParamByName ('G'   ).AsString  := Sender.value ;

          GERAL.open;

          IF GERAL.FIELDS[0].ISNULL
          THEN BEGIN
               MessageDlg('Grade não Cadastrada, Verifique!',MtError,[MbOk],0);
               Abort;
          END;
     end;
end;

procedure TDmVendas.VendasPdv_ItensNUMEROValidate(Sender: TField);
begin
     IF ( Sender.value <> '0' )
     THEN BEGIN
          GERAL.Close;
          GERAL.Sql.Clear;

          GERAL.Params.CreateParam ( FtString,  'CNPJ', PtInput ) ;
          GERAL.Params.CreateParam ( FtString,  'P'   , PtInput ) ;
          GERAL.Params.CreateParam ( FtString,  'G'   , PtInput ) ;
          GERAL.Params.CreateParam ( FtString,  'N'   , PtInput ) ;

          GERAL.Sql.Add (' Select * From EST_PRODUTOS_GRADES_NUMEROS                          ');
          GERAL.Sql.Add (' Where CNPJ = :CNPJ AND PRODUTO = :P AND GRADE = :G and NUMERO = :N ');

          GERAL.ParamByName ('CNPJ').AsString  := DmApp.Cnpj                   ;
          GERAL.ParamByName ('P'   ).AsString  := VendasPdv_ItensPRODUTO.Value ;
          GERAL.ParamByName ('G'   ).AsString  := VendasPdv_ItensGRADE.value   ;
          GERAL.ParamByName ('N'   ).AsString  := Sender.Value                 ;

          GERAL.open;

          IF GERAL.FIELDS[0].ISNULL
          THEN BEGIN
               MessageDlg('Número Inexistente nesta Grade, Verifique!',MtError,[MbOk],0);
               Abort;
          END;
     end;
end;

procedure TDmVendas.ExtintorAfterInsert(DataSet: TDataSet);
begin
     DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TDmVendas.VendasPdvBeforeDelete(DataSet: TDataSet);
begin
     DMApp.LOG_TRANSACOES ( VendasPDVCODIGO.TEXT, 'VND' );
end;

procedure TDmVendas.Vendas_ItensPRODUTOSetText(Sender: TField; const Text: String);
begin

end;

// verifica se o valor da parcela está no valor mínimo do parcelamento
function TDmVendas.Valor_Minimo_Parcelamento(dsParcela : TDataSource):boolean; // minimo estourado = true
var
 parcela : boolean; // true = tem parcela menor
begin
  DsParcela.DataSet.First;
  parcela := false;
  while not DsParcela.DataSet.Eof do  //verifica valor minimo de parcelamento
  begin
    if ((dsParcela.DataSet.FieldByName('VALOR').asfloat <= DmaPP.VALOR_MINIMO_PARC) and (DmaPP.VALOR_MINIMO_PARC > 0)) then
      parcela := true;
    DsParcela.DataSet.Next;
  end;

  if (parcela = true) then // se tem parcela acima do minimo
  begin
    Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);
    FrmMensagemClassificacao.MEMO.Lines.Add ('Valor Mínimo de parcela ultrapassado: ' + formatfloat('###,###,##0.00',dmapp.VALOR_MINIMO_PARC));
    FrmMensagemClassificacao.EdSenha.Visible := true ;
    FrmMensagemClassificacao.Label6.Visible  := true ;
    //Se senha não foi digitada
    if (FrmMensagemClassificacao.Showmodal = MrCancel) then
    begin
      result := true; //bloqueia
    end
    else
    begin
      result := false;
    end;
    FrmMensagemClassificacao.Free ;
    FrmMensagemClassificacao := Nil;

  end
  else
  begin
    result := false;
  end;
end;

procedure TDmVendas.Trocas_ItensGRADEValidate(Sender: TField);
begin
     If trim(sender.value) <> '0'
     then begin
          GERAL.Close;
          GERAL.Sql.Clear;

          GERAL.Params.CreateParam ( FtString,  'CNPJ', PtInput ) ;
          GERAL.Params.CreateParam ( FtString,  'P'   , PtInput ) ;
          GERAL.Params.CreateParam ( FtString,  'G'   , PtInput ) ;

          GERAL.Sql.Add (' Select * From EST_PRODUTOS_GRADES Where CNPJ = :CNPJ AND PRODUTO = :P AND GRADE = :G ');

          GERAL.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;
          GERAL.ParamByName ('P'   ).AsString  := Trocas_ItensPRODUTO.Value ;
          GERAL.ParamByName ('G'   ).AsString  := Sender.value ;

          GERAL.open;

          IF GERAL.FIELDS[0].ISNULL
          THEN BEGIN
               MessageDlg('Grade não Cadastrada, Verifique!',MtError,[MbOk],0);
               Abort;
          END;
          GERAL.Close;
     end;
end;

procedure TDmVendas.Trocas_ItensNUMEROValidate(Sender: TField);
begin
     IF ( Sender.value <> '0' )
     THEN BEGIN
          GERAL.Close;
          GERAL.Sql.Clear;

          GERAL.Params.CreateParam ( FtString,  'CNPJ', PtInput ) ;
          GERAL.Params.CreateParam ( FtString,  'P'   , PtInput ) ;
          GERAL.Params.CreateParam ( FtString, 'G'   , PtInput ) ;
          GERAL.Params.CreateParam ( FtString,  'N'   , PtInput ) ;

          GERAL.Sql.Add (' Select * From EST_PRODUTOS_GRADES_NUMEROS                          ');
          GERAL.Sql.Add (' Where CNPJ = :CNPJ AND PRODUTO = :P AND GRADE = :G and NUMERO = :N ');

          GERAL.ParamByName ('CNPJ').AsString  := DmApp.Cnpj                   ;
          GERAL.ParamByName ('P'   ).AsString  := Trocas_ItensPRODUTO.Value ;
          GERAL.ParamByName ('G'   ).AsString  := Trocas_ItensGRADE.value   ;
          GERAL.ParamByName ('N'   ).AsString  := Sender.Value                 ;

          GERAL.open;

          IF GERAL.FIELDS[0].ISNULL
          THEN BEGIN
               MessageDlg('Número Inexistente nesta Grade, Verifique!',MtError,[MbOk],0);
               Abort;
          END;
          GERAL.Close;
     end;
end;

procedure TDmVendas.Trocas_ItensSPRODUTOSetText(Sender: TField;
  const Text: String);
          Function RetiraZeros ( Str: String ): String;
          Var
             Aux: String;
             I, Len: Integer ;
             Inicio: Boolean ;
          Begin
               I := 1;

               Len := Length(Str);

               Aux := '';

               Inicio := False ;

               While I <= Len do
               begin
                    If (( Copy(Str,I,1) <> '0' ) OR ( Inicio ))
                    then Begin
                         Aux := Aux + Copy(Str,I,1);
                         Inicio := TRUE ;
                    end
                    else begin
                         Inicio := FALSE ;
                    end;

                    I := I + 1;
               end;

               result := Aux;
          end;
Var
   Aux: String;
   Codigo, Grade, Numero: String;
begin
     Aux := Text ;
     //VERIFICA SE TEM GRADE
     IF (( LENGTH( TRIM( AUX )) >= 15 ) AND ( DMAPP.EST_USA_GRADE = 'S' ))
     THEN BEGIN
          CODIGO := COPY(AUX,  1, 6);
          if LENGTH(TRIM(AUX))=15 then
          begin
            GRADE := COPY(AUX,  7, 3);

            if (Pos('0',GRADE) = 0) then
              GRADE := 'A'+GRADE
            else if ((Pos('0',GRADE) > 0) and (length(trim(grade)) > 1)) then
              GRADE := 'A'+GRADE;

            NUMERO := COPY(AUX, 10, 6);
          end
          else
          begin
            GRADE  := COPY(AUX,  7, 4);
            NUMERO := COPY(AUX, 11, 7);
          end;

          CODIGO := RETIRAZEROS ( CODIGO );
          NUMERO := RETIRAZEROS ( NUMERO );

          Trocas_ItensPRODUTO.VALUE := CODIGO;
          SENDER.VALUE := CODIGO;

          IF NOT ( Trocas_Itens.STATE IN [ DSINSERT, DSEDIT ] )
          THEN
              Trocas_Itens.EDIT ;

          IF TRIM(GRADE) = ''
          THEN BEGIN
               Trocas_ItensGRADE.VALUE  := '0'  ;
          END
          ELSE BEGIN
               Trocas_ItensGRADE.VALUE  := (GRADE)  ;
          END;

          IF TRIM(NUMERO) = '' THEN
          BEGIN
               Trocas_ItensNUMERO.VALUE := '0';
          END
          ELSE BEGIN
               Trocas_ItensNUMERO.VALUE := (NUMERO) ;
          END;
     END
     ELSE BEGIN
          If DmApp.Elimina_Zeros = 'S'
          THEN BEGIN
               While Copy ( Aux, 1, 1 ) = '0' DO
               BEGIN
                    Aux := Copy ( Aux, 2, 15 );
               End;
               Sender.Value := Aux ;
               Trocas_ItensPRODUTO.VALUE := Aux;
          END
          ELSE BEGIN
               If DmApp.Acrescenta_Zeros = 'S'
               THEN BEGIN
                    While Length ( Aux ) < 10 DO
                    BEGIN
                         Aux := '0' + Aux ;
                    End;
                    Sender.Value := Aux ;
                    Trocas_ItensPRODUTO.VALUE := aux;
               END
               ELSE BEGIN
                    Sender.Value := Aux ;
                    Trocas_ItensPRODUTO.VALUE := Aux;
               END;
          END;
     END;
end;

procedure TDmVendas.FaturaTrocasDINHEIROValidate(Sender: TField);
begin
  If ARREDONDA(Sender.Value,2) > ARREDONDA(FaturaTrocasAVISTA.Value,2)
  then begin
      FaturaTrocasCHEQUE.Value := 0 ;

  end
  else begin
      FaturaTrocasCHEQUE.Value := Arredonda((FaturaTrocasAVista.Value - Sender.Value),2) ;
  end;
end;

procedure TDmVendas.FaturaTrocasCHEQUEValidate(Sender: TField);
begin
  If ARREDONDA(FaturaTrocasDinheiro.Value + Sender.Value,2) > ARREDONDA(FaturaTrocasAVista.Value,2)
 then begin
      FaturaTrocasCARTAO.Value := 0 ;
 end
 else begin
      FaturaTrocasCARTAO.Value := Arredonda((FaturaTrocasAVista.Value - FaturaTrocasDinheiro.Value - Sender.Value),2) ;
 end;
end;

procedure TDmVendas.FaturaTrocasCARTAOValidate(Sender: TField);
begin
  If ARREDONDA(Sender.Value + FaturaTrocasDinheiro.Value + FaturaTrocasCHEQUE.Value,2) > FaturaTrocasAVista.Value then
  begin
      FaturaTrocasTICKET.Value := 0 ;
  end
  else
  begin
      FaturaTrocasTICKET.Value := Arredonda((FaturaTrocasAVista.Value - FaturaTrocasCHEQUE.Value - FaturaTrocasDinheiro.Value - Sender.Value),2) ;
  END;
end;

procedure TDmVendas.FaturaTrocasTICKETValidate(Sender: TField);
begin
 { If ARREDONDA(Sender.Value + FaturaTrocasDinheiro.Value + FaturaTrocasCHEQUE.Value + FaturaTrocasCARTAO.Value,2) > FaturaTrocasAVista.Value  then

  else}
end;

procedure TDmVendas.SelFaturaVendasBeforeOpen(DataSet: TDataSet);
begin
  SelFaturaVendas.parambyname('cnpj').value := dmApp.cnpj;
end;

procedure TDmVendas.FiltrarDataSet(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
  Begin
    (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
    (Dataset as TIBQuery).Prepare;
  End;
  If (DataSet is TIBDataset) Then
  Begin
    (DataSet as TIBDataSet).ParamByName('CNPJ').asString := DMApp.Cnpj;
    (Dataset as TIBDataSet).Prepare;
  End;
end;

procedure TDmVendas.OrcamentosFORMA_PGTOValidate(Sender: TField);
begin
     If Sender.IsNull then
         Exit ;


     Valida_Forma.Close ;
     Valida_Forma.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     Valida_Forma.ParamByName ('CODIGO').AsInteger := Sender.Value ;
     Valida_Forma.Prepare ;
     Valida_Forma.Open ;

     If Valida_FormaCODIGO.isNull then
     Begin
       MessageDlg('Forma de Pagamento Inexistente!', mtError, [mbOK], 0);
       Abort;
     end;
end;

procedure TDmVendas.SelTrocasCalcFields(DataSet: TDataSet);

begin
  SelTrocasTtl_liquido.value := (SelTrocasTotal_2.asFloat + SelTrocasDESC_ACRESC_2.asFloat) -
                                (SelTrocasTotal.asFloat + SelTrocasDESC_ACRESC.asFloat);
end;

procedure TDmVendas.SelFaturaTrocasCalcFields(DataSet: TDataSet);
begin
  SelFaturaTrocasTtl_liquido.value := (SelFaturaTrocasTotal_2.asFloat + SelFaturaTrocasDESC_ACRESC_2.asFloat) - (SelFaturaTrocasTotal.asFloat + SelFaturaTrocasDESC_ACRESC.asFloat);
end;

procedure TDmVendas.SelOrcamentosCOMPROMETER_ESTOQUEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Trim(Sender.value) = 'S' then
    Text := 'Sim'
  else
    Text := 'Não';

end;

procedure TDmVendas.OrcamentosSTATUSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  case Sender.Value of
    1 : Text := 'Aberto';
    2 : Text := 'Parc. Faturado';
    3 : Text := 'Faturado';
    4 : Text := 'Cancelado';
  end;
end;

procedure TDmVendas.OrcamentosSTATUSSetText(Sender: TField;
  const Text: String);
begin
  if Text = 'Aberto' then
    Sender.Value := 1
  else if (Text = 'Parc. Faturado') then
    Sender.Value := 2
  else if (Text = 'Faturado') then
    Sender.Value := 3
  else if (Text = 'Cancelado') then
    Sender.Value := 4;
end;

procedure TDmVendas.Vendas_ParcBeforePost(DataSet: TDataSet);
begin
  //Validando dt. de vencto inferior a dt. corrente
 { if (Vendas_ParcVENCTO.value < Date ) then
  begin
    if Application.MessageBox(Pchar('Parcela com dt. de vencto inválida'+#13+'Confirmar parcela?'),'Aviso',mb_yesno+mb_iconquestion) = id_no then
      abort;
  end;}
end;

procedure TDmVendas.Trocas_ParcBeforePost(DataSet: TDataSet);
begin
  //Validando dt. de vencto inferior a dt. corrente
  if (Trocas_ParcVENCTO.value < Date ) then
  begin
    Application.MessageBox('Parcela com dt. de vencto inválida. Verifique','Aviso',mb_ok+mb_iconinformation);
    abort;
  end;
end;



procedure TDmVendas.VendasPGTO_FRETEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if (Sender.value = '1') then
    Text := '1 - Emitente'
  else if (Sender.value = '2') then
    Text := '2 - Destinatário';
end;

procedure TDmVendas.VendasPGTO_FRETESetText(Sender: TField;
  const Text: String);
begin
  if (Text = '1 - Emitente') then
    Sender.value := '1'
  else if (Text = '2 - Destinatário') then
    Sender.value := '2';
end;

procedure TDmVendas.Vendas_ParcVALORValidate(Sender: TField);
begin
  {dmapp.Extenso.Valor := Sender.value;
  Vendas_ParcVALOR_EXTENSO.value := dmapp.Extenso.texto;}
end;

procedure TDmVendas.VendasPdvNATUREZAValidate(Sender: TField);
begin
  If Sender.IsNull Then
         Exit ;


  Geral.Close ;
  Geral.Sql.text := ' Select Codigo, ES, NOME, InterEstadual, remessa, devolucao, gera_financeiro '+
                       ' From Est_Natureza Where Codigo ='+IntToStr(Sender.Value)+
                       ' and CNPJ = '+QuotedStr(DmApp.Cnpj)+' and ATIVA = ''S''';
  Geral.Open ;

  if Geral.Fields[0].isNull then
  begin
    MessageDlg('Natureza Inexistente ou Desativada!', mtError, [mbOK], 0);
    Abort;
  end
  else
  begin
    VendasPDVNOME_NATUREZA.Value := Geral.Fields[2].Value ;
    VendasPDVES.asString := Geral.FieldByName('es').asString;

    if (Geral.FieldByName('gera_financeiro').asString <> 'N') then
      VendasPDVGERA_FINANCEIRO.asString := 'S'
    else
      VendasPDVGERA_FINANCEIRO.asString := 'N';
  end;
end;

procedure TDmVendas.VendasPdv_ItensSPRODUTOSetText(Sender: TField;
  const Text: String);
Var
   Aux: String;
   Codigo, Grade, Numero: String;
begin
  Aux := Text ;
  //verifica grade
  if ((LENGTH( TRIM( AUX )) >= 15 ) AND ( DMAPP.EST_USA_GRADE = 'S' )) then
  begin
    CODIGO := COPY(AUX,  1, 6);
    if LENGTH(TRIM(AUX))= 15 then
    begin
      GRADE := COPY(AUX,  7, 3);

      if (Pos('0',GRADE) = 0) then
        GRADE := 'A'+GRADE
      else if ((Pos('0',GRADE) > 0) and (length(trim(grade)) > 1)) then
        GRADE := 'A'+GRADE;

      NUMERO := COPY(AUX, 10, 6);
    end
    else
    begin
      GRADE  := COPY(AUX,  7, 4);
      NUMERO := COPY(AUX, 11, 7);
    end;

    CODIGO := RETIRAZEROS (CODIGO);
    NUMERO := RETIRAZEROS (NUMERO);
    VendasPdv_ItensPRODUTO.value := CODIGO;
    sender.value := codigo ;

    if not (VendasPdv_Itens.STATE IN [ DSINSERT, DSEDIT ]) then
      VendasPdv_Itens.edit;

    if TRIM(GRADE) = '' then
      VendasPdv_ItensGRADE.VALUE  := '0'
    else
      VendasPdv_ItensGRADE.VALUE  := (GRADE)  ;


    if TRIM(NUMERO) = '' THEN
      VendasPdv_ItensNUMERO.VALUE := '0'
    else
      VendasPdv_ItensNUMERO.VALUE := (NUMERO);
  end
  else
  begin
    if DmApp.ELIMINA_ZERO_PRD_SEM_GRADE = 'S' then
    begin
      while Copy ( Aux, 1, 1 ) = '0' DO
      begin
        Aux := Copy ( Aux, 2, 15 );
      end;

      while Copy ( Aux, (length(aux)), 1 ) = '0' DO
      begin
        Aux := Copy (Aux,1, (length(aux)-1) );
      end;

      VendasPdv_ItensPRODUTO.value := trim(Aux) ;
      sender.value := aux ;
    end
    else
    if DmApp.Elimina_Zeros = 'S' then
    begin
      while Copy ( Aux, 1, 1 ) = '0' DO
      begin
        Aux := Copy ( Aux, 2, 15 );
      end;
      VendasPdv_ItensPRODUTO.value := Aux ;
      sender.value := aux ;
    end
    else
    begin
      if DmApp.Acrescenta_Zeros = 'S' then
      begin
        while Length ( Aux ) < 10 DO
        begin
          Aux := '0' + Aux ;
        end;
        VendasPdv_ItensPRODUTO.value := Aux ;
        sender.value := aux ;
      end
      else
      begin//EAN128
        if ((Copy (Aux,8,8)= ' 000000') or (Copy (Aux,8,8)= '  000000')) and ((Length(Aux)=15) or (Length(Aux)=14)) then
        begin
          Codigo := Copy ( Aux, 1, 6 );

          while Copy ( Codigo, 1, 1 ) = '0' do
          begin
            Codigo := Copy ( Codigo, 2, 5 );
          end;

          //Novo Código do Produto
          VendasPdv_ItensPRODUTO.Value := Codigo ;
          sender.value := Codigo ;
        end
        else
        begin
          VendasPdv_ItensPRODUTO.value := Aux ;
          sender.value := aux ;
        end;
      end;
    end;
  end;
end;

procedure TDmVendas.VendasPdv_ItensPRODUTOSetText(Sender: TField;
  const Text: String);
Var
   Aux: String;
   Codigo, Grade, Numero: String;
begin
     Aux := Text ;
     //VERIFICA SE TEM GRADE
     IF ((LENGTH( TRIM( AUX )) >= 15 ) AND ( DMAPP.EST_USA_GRADE = 'S' ))
     THEN BEGIN
          CODIGO := COPY(AUX,  1, 6);
          if LENGTH(TRIM(AUX))=15 then
          begin
            GRADE := COPY(AUX,  7, 3);

            if (Pos('0',GRADE) = 0) then
              GRADE := 'A'+GRADE
            else if ((Pos('0',GRADE) > 0) and (length(trim(grade)) > 1)) then
              GRADE := 'A'+GRADE;

            NUMERO := COPY(AUX, 10, 6);
          end
          else
          begin
            GRADE  := COPY(AUX,  7, 4);
            NUMERO := COPY(AUX, 11, 7);
          end;

          CODIGO := RETIRAZEROS (CODIGO);
          NUMERO := RETIRAZEROS (NUMERO);
          SENDER.VALUE := CODIGO;

          IF NOT ( VendasPdv_Itens.STATE IN [ DSINSERT, DSEDIT ]) THEN
              VendasPdv_Itens.EDIT ;

          IF TRIM(GRADE) = '' THEN
            VendasPdv_ItensGRADE.VALUE  := '0'
          ELSE
            VendasPdv_ItensGRADE.VALUE  := (GRADE)  ;


          IF TRIM(NUMERO) = '' THEN
            VendasPdv_ItensNUMERO.VALUE := '0'
          ELSE
            VendasPdv_ItensNUMERO.VALUE := (NUMERO);
     END
     ELSE BEGIN
          If DmApp.Elimina_Zeros = 'S'
          THEN BEGIN
               While Copy ( Aux, 1, 1 ) = '0' DO
               BEGIN
                    Aux := Copy ( Aux, 2, 15 );
               End;
               Sender.Value := Aux ;
          END
          ELSE BEGIN
               If DmApp.Acrescenta_Zeros = 'S'
               THEN BEGIN
                    While Length ( Aux ) < 10 DO
                    BEGIN
                         Aux := '0' + Aux ;
                    End;
                    Sender.Value := Aux ;
               END
               ELSE BEGIN
                    If ( Copy ( Aux, 8, 8 ) = '  000000' ) AND ( Length(Aux) = 15 )
                    //EAN128
                    then begin
                         Codigo := Copy ( Aux, 1, 6 );

                         While Copy ( Codigo, 1, 1 ) = '0' do
                         begin
                              Codigo := Copy ( Codigo, 2, 5 );
                         end;

                         //Novo Código do Produto
                         Sender.Value := Codigo ;

                    END
                    ELSE
                    BEGIN
                         Sender.Value := Aux ;

                    end;
               END;
          END;
     END;

end;

procedure TDmVendas.SelFaturaVendasNFE_AUTORIZADAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if (Sender.Value = '1') then
    Text := 'Autorizada';
  if (Sender.Value = '3') then
    Text := 'Pendente';

end;

procedure TDmVendas.SelFaturaVendasNFE_AUTORIZADASetText(Sender: TField;
  const Text: String);
begin
  if (Text = 'Autorizada') then
    Sender.Value := '1'
  else if (Text = 'Pendente') then
    Sender.Value := '3';
end;

procedure TDmVendas.VendasPdv_ItensPRODUTOValidate(Sender: TField);
Var
   Aux: String;
   VALOR, DescPromocao, DESCONTO: REAL;
begin
  If ((Sender.IsNull) or (trim(Sender.Value) = '')) then
    Exit ;

   Valida_Produto.Close ;
   Valida_Produto.ParamByName ('CNPJ').AsString        := DmApp.Cnpj   ;
   Valida_Produto.ParamByName ('PRODUTO').AsString     := Sender.Value;
   Valida_Produto.ParamByName ('VENDEDOR').AsInteger     := 0;
   Valida_Produto.open ;


   If Valida_ProdutoPRC_VENDA.IsNull then
   Begin
     If DmApp.CHM_PROD_INEXIST = 'S' THEN
     BEGIN
        If FrmVendasPdvItens <> Nil then
          FrmVendasPdvItens.LocProd := True ;

        Exit;
     END
     ELSE
     BEGIN
           MessageDlg('Produto Inexistente!', mtError, [mbOK], 0);
           Abort ;
           exit;
     END;
  end;

  IF Arredonda(Qntde_Pdv,2) > 0 THEN
  BEGIN
    VendasPdv_ItensQUANTIDADE.Value := Arredonda(Qntde_Pdv,2) ;
    Qntde_Pdv                       := 0;
  END;

  VendasPdv_ItensFRACIONADO.Value        := Valida_ProdutoVENDE_FRACIONADO.Value ;
  VendasPdv_ItensPRC_CUSTO.Value         := Valida_ProdutoPRC_REPOS.Value  ;

  //verificando preço em promoção
  Valor :=  dmapp.Verifica_Promocao ( Sender.value, dmapp.Data_Servidor);

  //verificando se cliente tem preço especial
  Desconto := DmaPP.Verifica_Preco_Especial ( Sender.Value, VendasPdvPESSOA_FJ.value );


  //caso o produto esteja em promoção, e seja menor que o preço normal - o desconto especial entao o utilizo
  if ((valor > 0) and (valor < (Valida_ProdutoPRC_VENDA.Value - (Valida_ProdutoPRC_VENDA.Value * desconto)/100))) then
  begin
    VendasPdv_ItensPRC_UNITARIO.Value := VALOR  ;
    Desconto := 0;
  end
  else If ARREDONDA(Desconto, 2) <> 0 then
  begin
    VendasPdv_ItensPORC_DESC.VALUE := Desconto ;
    VendasPdv_ItensDESCONTO.value  := arredonda(((Valida_ProdutoPRC_VENDA.Value * Desconto )/100),2);
    VendasPdv_ItensPRC_UNITARIO.Value := (Valida_ProdutoPRC_VENDA.Value - VendasPdv_ItensDESCONTO.asfloat);
  end
  else //caso o produto não tenha desconto especial e nem esteja em promoção
    VendasPdv_ItensPRC_UNITARIO.Value := Valida_ProdutoPRC_VENDA.Value;

  VendasPdv_ItensPRC_UNIT_ORIGINAL.Value := Valida_ProdutoPRC_VENDA.Value;
  VendasPdv_ItensNOME_PRODUTO.Value      := Valida_ProdutoNOME.Value       ;
  VendasPdv_ItensNOME_FIS.Value          := Valida_ProdutoNOME.Value       ;
  VendasPdv_ItensPRODUTOFIS.Value        := Sender.Value                                     ;

  If Not Valida_ProdutoVOLUME.IsNull
  then
      VendasPdv_ItensVOLUME.Value       := Valida_ProdutoVOLUME.Value
  else
      VendasPdv_ItensVOLUME.Value       := 0;

  If Not Valida_ProdutoPESO_LIQ.IsNull
  then
      VendasPdv_ItensPESO.Value         := Valida_ProdutoPESO_LIQ.Value
  else
      VendasPdv_ItensPESO.Value         := 0;

  If Not Valida_ProdutoUNIDADE.IsNull
  then
      VendasPdv_ItensUNIDADE.Value      := Valida_ProdutoUNIDADE.Value
  else
      VendasPdv_ItensUNIDADE.Value      := 'UN';

  If Not Valida_ProdutoSUBUNIDADE.IsNull
  then
      VendasPdv_ItensSUBUNIDADE.Value      := Valida_ProdutoSUBUNIDADE.Value
  else
      VendasPdv_ItensSUBUNIDADE.Value      := 1;

  If Not Valida_ProdutoATIVO.IsNull
  then begin
       If Valida_ProdutoATIVO.Value = 'N'
       then begin
          MessageDlg('Este Produto Não Esta Ativo, Verifique', mtError, [mbOK], 0);
          Abort;
       end;
  end;

  If Not Valida_ProdutoALIQUOTA_ECF.IsNull
  then begin
       VendasPdv_ItensALIQUOTA.Value := Valida_ProdutoALIQUOTA_ECF.Value ;
  end
  else begin
       VendasPdv_ItensALIQUOTA.Value := 'T1' ;
  end;

  If Not Valida_ProdutoORIGEM.IsNull
  then begin
       VendasPdv_ItensORIGEM.Value := Valida_ProdutoORIGEM.value ;
  end
  else begin
       VendasPdv_ItensORIGEM.Value := 0 ;
  end;

  If Not Valida_ProdutoCTE.IsNull
  then begin
       VendasPdv_ItensCTE.Value := Valida_ProdutoCTE.value ;
  end
  else begin
       VendasPdv_ItensCTE.Value := 1 ;
  end;

  If Not Valida_ProdutoCTIE.IsNull
  then begin
       VendasPdv_ItensCTIE.Value := Valida_ProdutoCTIE.value ;
  end
  else begin
       VendasPdv_ItensCTIE.Value := 1 ;
  end;

  If Not Valida_ProdutoReducao.IsNull
  then begin
       VendasPdv_ItensReducao.Value := Valida_ProdutoReducao.value ;
  end
  else begin
       VendasPdv_ItensReducao.Value := 0 ;
  end;

  //SERVICO
  If FrmVendasPdvItens <> Nil
  then begin
       If Valida_ProdutoSERVICO.Value = 'S' then
       begin
         FrmVendasPdvItens.GridItens.Top    := 160 ;
         FrmVendasPdvItens.GridItens.Height := 211 ;

         FrmVendasPdvItens.EdServico.Visible := true ;
       end
       else
       begin
         FrmVendasPdvItens.EdServico.Visible := False  ;

         FrmVendasPdvItens.GridItens.Top    := 80 ;
         FrmVendasPdvItens.GridItens.Height := 291 ;
       end;
  end;

  //COMPLEMENTO
  If Valida_ProdutoCOMPLEMENTO_NF.Value = 'S' then
    VendasPdv_ItensCOMPLEMENTO.Value := PedeComplemento ( VendasPdv_ItensCOMPLEMENTO.Value,VendasPdv_ItensPRODUTO.Value + '-' + VendasPdv_ItensNOME_PRODUTO.Value );
end;
end.
