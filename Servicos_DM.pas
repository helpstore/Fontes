
 unit Servicos_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db,variants, IBCustomDataSet, IBQuery, IBStoredProc, IBSQL,DateUtils;

type
  TDmServicos = class(TDataModule)
    Servicos: TIBDataSet;
    ServicosCNPJ: TIBStringField;
    ServicosCODIGO: TIntegerField;
    ServicosNOME: TIBStringField;
    ServicosVALOR: TFloatField;
    Motores: TIBDataSet;
    MotoresCNPJ: TIBStringField;
    MotoresCODIGO: TIntegerField;
    MotoresNOME: TIBStringField;
    Motores_Servicos: TIBDataSet;
    Motores_ServicosCNPJ: TIBStringField;
    Motores_ServicosMOTOR: TIntegerField;
    Motores_ServicosSERVICO: TIntegerField;
    Motores_ServicosNOME_SERVICO: TIBStringField;
    SelServicos: TIBQuery;
    SelServicosCNPJ: TIBStringField;
    SelServicosCODIGO: TIntegerField;
    SelServicosNOME: TIBStringField;
    SelServicosVALOR: TFloatField;
    DsMotores: TDataSource;
    SelMotor: TIBQuery;
    SelMotorCNPJ: TIBStringField;
    SelMotorCODIGO: TIntegerField;
    Motores_ServicosATIVO: TIBStringField;
    Geral: TIBQuery;
    Motores_ServicosVALOR: TFloatField;
    MotoresCILINDROS: TIBStringField;
    MotoresCOMBUSTIVEL: TIBStringField;
    MotoresTIPO: TIBStringField;
    SelTipoDocto: TIBQuery;
    SelTipoDoctoCNPJ: TIBStringField;
    SelTipoDoctoSIGLA: TIBStringField;
    SelTipoDoctoNOME: TIBStringField;
    SelPlano: TIBQuery;
    SelPlanoCNPJ: TIBStringField;
    SelPlanoCONTA: TIntegerField;
    SelPlanoCODIGO: TIBStringField;
    SelPlanoCONTAPAI: TIBStringField;
    SelPlanoNOME: TIBStringField;
    SelPlanoBANCO: TIBStringField;
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
    SelFormaPgtoFATURA_FUTURA: TIBStringField;
    SelFormaPgtoFORMA_ECF: TIBStringField;
    SelFormaPgtoTIPO_PAGAMENTO: TIBStringField;
    Ordem: TIBDataSet;
    OrdemCHASSI: TIBStringField;
    OrdemCLIENTE: TIBStringField;
    OrdemCNPJ: TIBStringField;
    OrdemCODIGO: TIntegerField;
    OrdemDATA: TDateTimeField;
    OrdemDESC_ACRESC: TFloatField;
    OrdemENTRADA: TDateTimeField;
    OrdemFECHADO: TIBStringField;
    OrdemHISTORICO: TIBStringField;
    OrdemINFORMACOES: TBlobField;
    OrdemMECANICO: TIntegerField;
    OrdemNATUREZA: TIntegerField;
    OrdemNOME: TIBStringField;
    OrdemPESSOA_FJ: TIntegerField;
    OrdemTOTAL: TFloatField;
    OrdemVIAJANTE: TIntegerField;
    OrdemNOME_NATUREZA: TIBStringField;
    OrdemNOME_MECANICO: TIBStringField;
    OrdemNOME_VIAJANTE: TIBStringField;
    OrdemLiquido: TFloatField;
    SelOrdens_Servicos: TIBQuery;
    SelPessoasFJ: TIBQuery;
    SelPessoasFJEMPRESA: TIBStringField;
    SelPessoasFJPESSOA_FJ: TIntegerField;
    SelPessoasFJCODIGO: TIntegerField;
    SelPessoasFJNOME_RAZAO: TIBStringField;
    SelPessoasFJFANTASIA: TIBStringField;
    SelPessoasFJCPF_CGC: TIBStringField;
    SelPessoasFJBLOQUEADO: TIBStringField;
    SelPessoasFJCLASSIFICACAO: TIBStringField;
    SelPessoasFJUF: TIBStringField;
    SelPessoasFJFONE: TIBStringField;
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
    Valida_ClienteNOME: TIBStringField;
    Valida_ClienteOBS2: TBlobField;
    Valida_ClienteCPF_CNPJ: TIBStringField;
    Valida_ClienteCONTROLA_PLACA: TIBStringField;
    Valida_ClienteCONTROLA_KM: TIBStringField;
    Valida_ClienteASSINA_NOTA: TIBStringField;
    Valida_ClienteNAO_COBR_JUR_ATE: TFloatField;
    Valida_ClienteTAXA_JUROS: TFloatField;
    Valida_ClienteUF: TIBStringField;
    SelNatureza: TIBQuery;
    SelNaturezaCODIGO: TIntegerField;
    SelNaturezaNOME: TIBStringField;
    SelNaturezaCNPJ: TIBStringField;
    SelNaturezaINTERESTADUAL: TIBStringField;
    SelMecanico: TIBQuery;
    SelMecanicoCNPJ: TIBStringField;
    SelMecanicoCODIGO: TIntegerField;
    SelMecanicoCOM_PRAZO: TFloatField;
    SelMecanicoCOM_VISTA: TFloatField;
    SelMecanicoNOME: TIBStringField;
    SelMecanicoPESSOA_FJ: TIntegerField;
    SelViajante: TIBQuery;
    SelViajanteCODIGO: TIntegerField;
    SelViajanteNOME: TIBStringField;
    SelViajantePESSOA_FJ: TIntegerField;
    Servicos_Itens: TIBDataSet;
    DsOrdem: TDataSource;
    Servicos_ItensCNPJ: TIBStringField;
    Servicos_ItensCODIGO: TIntegerField;
    Servicos_ItensNOME: TIBStringField;
    Servicos_ItensQUANTIDADE: TFloatField;
    Servicos_ItensSERVICO: TIntegerField;
    Servicos_ItensUNITARIO: TFloatField;
    Servicos_ItensTotal: TFloatField;
    Servicos_ItensSELECIONADO: TIBStringField;
    SelMotoresServicos: TIBQuery;
    SelMotoresServicosCNPJ: TIBStringField;
    SelMotoresServicosMOTOR: TIntegerField;
    SelMotoresServicosSERVICO: TIntegerField;
    SelMotoresServicosNOME_SERVICO: TIBStringField;
    SelMotoresServicosATIVO: TIBStringField;
    SelMotoresServicosVALOR: TFloatField;
    OrdemMOTOR: TIntegerField;
    OrdemNOME_MOTOR: TIBStringField;
    OrdemENVIADA_CAIXA: TIBStringField;
    Consulta_Ordem: TIBQuery;
    Consulta_OrdemDATA: TDateTimeField;
    Consulta_OrdemPESSOA_FJ: TIntegerField;
    Consulta_OrdemNOME: TIBStringField;
    Consulta_OrdemNATUREZA: TIntegerField;
    Consulta_OrdemMECANICO: TIntegerField;
    Consulta_OrdemVIAJANTE: TIntegerField;
    Consulta_OrdemHISTORICO: TIBStringField;
    Consulta_OrdemCHASSI: TIBStringField;
    Consulta_OrdemTOTAL: TIBBCDField;
    Consulta_OrdemDESC_ACRESC: TIBBCDField;
    Consulta_OrdemCLIENTE: TIBStringField;
    Consulta_OrdemFECHADO: TIBStringField;
    Consulta_OrdemNOME_NATUREZA: TIBStringField;
    Consulta_OrdemNOME_MECANICO: TIBStringField;
    Consulta_OrdemNOME_VIAJANTE: TIBStringField;
    Consulta_Ordem_Itens: TIBQuery;
    Consulta_Ordem_ItensSERVICO: TIntegerField;
    Consulta_Ordem_ItensNOME: TIBStringField;
    Consulta_Ordem_ItensQUANTIDADE: TIBBCDField;
    Consulta_Ordem_ItensUNITARIO: TIBBCDField;
    Consulta_Ordem_ItensSELECIONADO: TIBStringField;
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
    Consulta_OrdemLiquido: TFloatField;
    Consulta_Ordem_ItensTOTAL: TFloatField;
    OrdemPLACA: TIBStringField;
    OrdemDATA_FECHAMENTO: TDateTimeField;
    OrdemOBS_FECHAMENTO: TBlobField;
    OrdemFORMA_PAGTO: TIntegerField;
    OrdemNOME_FORMA: TIBStringField;
    OrdemTIPO_DOCTO: TIBStringField;
    OrdemLOCAL_COBRANCA: TIntegerField;
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
    Ordem_Parcelamento: TIBDataSet;
    Ordem_ParcelamentoBOLETO: TIntegerField;
    Ordem_ParcelamentoCODIGO: TIntegerField;
    Ordem_ParcelamentoVALOR: TFloatField;
    Ordem_ParcelamentoVENCTO: TDateTimeField;
    OrdemTOTAL_PARCELAR: TFloatField;
    OrdemDiferenca: TFloatField;
    OrdemVLR_PARC_LC: TFloatField;
    OrdemAVISTA: TFloatField;
    OrdemVLR_ENTRADA: TFloatField;
    Ordem_ParcelamentoCNPJ: TIBStringField;
    Ctrl_Qualidade: TIBDataSet;
    Ctrl_QualidadeCNPJ: TIBStringField;
    Ctrl_QualidadeCODIGO: TIntegerField;
    Ctrl_QualidadeVIRABREQUIM: TIBStringField;
    Ctrl_QualidadeMEDIDA_MANCAL: TIBStringField;
    Ctrl_QualidadeMEDIDA_BIELA: TIBStringField;
    Ctrl_QualidadeFOLGA_AXIAL_VIRABREQUIM: TIBStringField;
    Ctrl_QualidadeCABECOTE: TIBStringField;
    Ctrl_QualidadeALTURA_CABECOTE: TIBStringField;
    Ctrl_QualidadeALTURA_VALV_ADMISSAO: TIBStringField;
    Ctrl_QualidadeALTURA_VALV_ESCAPE: TIBStringField;
    Ctrl_QualidadeBLOCO: TIBStringField;
    Ctrl_QualidadeFOLGA_CILINDRO: TIBStringField;
    Ctrl_QualidadeFOLGA_RADIAL_BLOCO: TIBStringField;
    Ctrl_QualidadeBIELA: TIBStringField;
    Ctrl_QualidadeFOLGA_RADIAL_BIELA: TIBStringField;
    Ctrl_QualidadeFOLGA_PINO: TIBStringField;
    Ctrl_QualidadeFOLGA_AXIAL_BIELA: TIBStringField;
    Ctrl_QualidadeAJUSTADO: TIBStringField;
    Ctrl_QualidadeTORQUE_MANCAL: TIBStringField;
    Ctrl_QualidadeTORQUE_BIELA: TIBStringField;
    Ctrl_QualidadeALTURA_PISTAO: TIBStringField;
    Ctrl_QualidadeMONTADOR: TIntegerField;
    Ctrl_QualidadeNOME_MONTADOR: TIBStringField;
    Ver_Ctrl_Qualidade: TIBQuery;
    Ver_Ctrl_QualidadeCODIGO: TIntegerField;
    Ver_Ctrl_QualidadeMONTADOR: TIntegerField;
    Ver_Ctrl_QualidadeNOME_MONTADOR: TIBStringField;
    Ver_Ctrl_QualidadePESSOA_FJ: TIntegerField;
    Ver_Ctrl_QualidadeNOME_CLIENTE: TIBStringField;
    Ver_Ctrl_QualidadeDATA: TDateTimeField;
    Ctrl_QualidadeOBSERVACAO: TBlobField;
    Imp_Ctrl_Qualidade: TIBQuery;
    Ctrl_QualidadeMONTADOR_VIRABREQUIM: TIntegerField;
    Ctrl_QualidadeNOME_MONTADOR_VIRABREQUIM: TIBStringField;
    Ctrl_QualidadeMONTADOR_CABECOTE: TIntegerField;
    Ctrl_QualidadeNOME_MONTADOR_CABECOTE: TIBStringField;
    Ctrl_QualidadeMONTADOR_BLOCO: TIntegerField;
    Ctrl_QualidadeNOME_MONTADOR_BLOCO: TIBStringField;
    Ctrl_QualidadeMONTADOR_BIELA: TIntegerField;
    Ctrl_QualidadeNOME_MONTADOR_BIELA: TIBStringField;
    Ctrl_QualidadeMONTADOR_AJUSTE: TIntegerField;
    Ctrl_QualidadeNOME_MONTADOR_AJUSTE: TIBStringField;
    Imp_Ctrl_QualidadeCABECOTE: TIBStringField;
    Imp_Ctrl_QualidadeVIRABREQUIM: TIBStringField;
    Imp_Ctrl_QualidadeALTURA_CABECOTE: TIBStringField;
    Imp_Ctrl_QualidadeALTURA_VALV_ADMISSAO: TIBStringField;
    Imp_Ctrl_QualidadeALTURA_VALV_ESCAPE: TIBStringField;
    Imp_Ctrl_QualidadeBLOCO: TIBStringField;
    Imp_Ctrl_QualidadeFOLGA_CILINDRO: TIBStringField;
    Imp_Ctrl_QualidadeFOLGA_RADIAL_BLOCO: TIBStringField;
    Imp_Ctrl_QualidadeBIELA: TIBStringField;
    Imp_Ctrl_QualidadeFOLGA_RADIAL_BIELA: TIBStringField;
    Imp_Ctrl_QualidadeFOLGA_PINO: TIBStringField;
    Imp_Ctrl_QualidadeFOLGA_AXIAL_BIELA: TIBStringField;
    Imp_Ctrl_QualidadeAJUSTADO: TIBStringField;
    Imp_Ctrl_QualidadeTORQUE_MANCAL: TIBStringField;
    Imp_Ctrl_QualidadeTORQUE_BIELA: TIBStringField;
    Imp_Ctrl_QualidadeALTURA_PISTAO: TIBStringField;
    Imp_Ctrl_QualidadeMONTADOR: TIntegerField;
    Imp_Ctrl_QualidadeNOME_MONTADOR: TIBStringField;
    Imp_Ctrl_QualidadePESSOA_FJ: TIntegerField;
    Imp_Ctrl_QualidadeNOME_CLIENTE: TIBStringField;
    Imp_Ctrl_QualidadeDATA: TDateTimeField;
    Imp_Ctrl_QualidadeMOTOR: TIntegerField;
    Imp_Ctrl_QualidadeNOME_MOTOR: TIBStringField;
    Imp_Ctrl_QualidadeMEDIDA_MANCAL: TIBStringField;
    Imp_Ctrl_QualidadeMEDIDA_BIELA: TIBStringField;
    Imp_Ctrl_QualidadeFOLGA_AXIAL_VIRABREQUIM: TIBStringField;
    Imp_Ctrl_QualidadeOBSERVACAO: TBlobField;
    Imp_Ctrl_QualidadeNOME_MONTADOR_VIRABREQUIM: TIBStringField;
    Imp_Ctrl_QualidadeNOME_MONTADOR_CABECOTE: TIBStringField;
    Imp_Ctrl_QualidadeNOME_MONTADOR_BLOCO: TIBStringField;
    Imp_Ctrl_QualidadeNOME_MONTADOR_BIELA: TIBStringField;
    Imp_Ctrl_QualidadeNOME_MONTADOR_AJUSTE: TIBStringField;
    OS_MOVIMENTOS: TIBDataSet;
    OS_MOVIMENTOSCNPJ: TIBStringField;
    OS_MOVIMENTOSCODIGO: TIntegerField;
    OS_MOVIMENTOSSEQUENCIA: TIntegerField;
    OS_MOVIMENTOSHISTORICO: TBlobField;
    OS_MOVIMENTOSVALOR: TFloatField;
    OS_MOVIMENTOSTIPO: TIBStringField;
    OS_MOVIMENTOSDATA: TDateTimeField;
    OrdemCREDITOS: TFloatField;
    OrdemDEBITOS: TFloatField;
    Ordem_Orc: TIBDataSet;
    Ordem_OrcCNPJ: TIBStringField;
    Ordem_OrcCODIGO: TIntegerField;
    Ordem_OrcCHASSI: TIBStringField;
    Ordem_OrcCLIENTE: TIBStringField;
    Ordem_OrcDATA: TDateTimeField;
    Ordem_OrcDESC_ACRESC: TFloatField;
    Ordem_OrcENTRADA: TDateTimeField;
    Ordem_OrcFECHADO: TIBStringField;
    Ordem_OrcHISTORICO: TIBStringField;
    Ordem_OrcINFORMACOES: TBlobField;
    Ordem_OrcMECANICO: TIntegerField;
    Ordem_OrcNATUREZA: TIntegerField;
    Ordem_OrcNOME: TIBStringField;
    Ordem_OrcPESSOA_FJ: TIntegerField;
    Ordem_OrcTOTAL: TFloatField;
    Ordem_OrcVIAJANTE: TIntegerField;
    Ordem_OrcNOME_NATUREZA: TIBStringField;
    Ordem_OrcNOME_MECANICO: TIBStringField;
    Ordem_OrcNOME_VIAJANTE: TIBStringField;
    Ordem_OrcLiquido: TFloatField;
    Ordem_OrcMOTOR: TIntegerField;
    Ordem_OrcNOME_MOTOR: TIBStringField;
    Ordem_OrcENVIADA_CAIXA: TIBStringField;
    Ordem_OrcKM_ATUAL_FECHAMENTO: TFloatField;
    Ordem_OrcPLACA: TIBStringField;
    Ordem_OrcDATA_FECHAMENTO: TDateTimeField;
    Ordem_OrcOBS_FECHAMENTO: TBlobField;
    Ordem_OrcFORMA_PAGTO: TIntegerField;
    Ordem_OrcNOME_FORMA: TIBStringField;
    Ordem_OrcTIPO_DOCTO: TIBStringField;
    Ordem_OrcLOCAL_COBRANCA: TIntegerField;
    Ordem_OrcTOTAL_PARCELAR: TFloatField;
    Ordem_OrcDiferenca: TFloatField;
    Ordem_OrcVLR_PARC_LC: TFloatField;
    Ordem_OrcAVISTA: TFloatField;
    Ordem_OrcVLR_ENTRADA: TFloatField;
    Ordem_OrcCREDITOS: TFloatField;
    Ordem_OrcDEBITOS: TFloatField;
    Servicos_Itens_Orc: TIBDataSet;
    Servicos_Itens_OrcCNPJ: TIBStringField;
    Servicos_Itens_OrcCODIGO: TIntegerField;
    Servicos_Itens_OrcNOME: TIBStringField;
    Servicos_Itens_OrcQUANTIDADE: TFloatField;
    Servicos_Itens_OrcSERVICO: TIntegerField;
    Servicos_Itens_OrcUNITARIO: TFloatField;
    Servicos_Itens_OrcTotal: TFloatField;
    Servicos_Itens_OrcSELECIONADO: TIBStringField;
    SelServicos_Itens_Orc: TIBQuery;
    SelServicos_Itens_OrcCNPJ: TIBStringField;
    SelServicos_Itens_OrcCODIGO: TIntegerField;
    SelServicos_Itens_OrcNOME: TIBStringField;
    SelServicos_Itens_OrcQUANTIDADE: TFloatField;
    SelServicos_Itens_OrcSERVICO: TIntegerField;
    SelServicos_Itens_OrcUNITARIO: TFloatField;
    SelServicos_Itens_OrcSELECIONADO: TIBStringField;
    SelServicos_Itens_OrcTotal: TFloatField;
    SelOrdens_Servicos_Orc: TIBQuery;
    SelOrdens_Servicos_OrcCODIGO: TIntegerField;
    SelOrdens_Servicos_OrcDATA: TDateTimeField;
    SelOrdens_Servicos_OrcPESSOA_FJ: TIntegerField;
    SelOrdens_Servicos_OrcNOME: TIBStringField;
    SelOrdens_Servicos_OrcNATUREZA: TIntegerField;
    SelOrdens_Servicos_OrcMECANICO: TIntegerField;
    SelOrdens_Servicos_OrcVIAJANTE: TIntegerField;
    SelOrdens_Servicos_OrcENTRADA: TDateTimeField;
    SelOrdens_Servicos_OrcHISTORICO: TIBStringField;
    SelOrdens_Servicos_OrcCHASSI: TIBStringField;
    SelOrdens_Servicos_OrcTOTAL: TIBBCDField;
    SelOrdens_Servicos_OrcDESC_ACRESC: TIBBCDField;
    SelOrdens_Servicos_OrcCLIENTE: TIBStringField;
    SelOrdens_Servicos_OrcFECHADO: TIBStringField;
    SelOrdens_Servicos_OrcNOME_NATUREZA: TIBStringField;
    SelOrdens_Servicos_OrcNOME_MECANICO: TIBStringField;
    SelOrdens_Servicos_OrcNOME_VIAJANTE: TIBStringField;
    DsOrdem_Orc: TDataSource;
    Consulta_Ordem_Orc: TIBQuery;
    Consulta_Ordem_OrcDATA: TDateTimeField;
    Consulta_Ordem_OrcPESSOA_FJ: TIntegerField;
    Consulta_Ordem_OrcNOME: TIBStringField;
    Consulta_Ordem_OrcNATUREZA: TIntegerField;
    Consulta_Ordem_OrcMECANICO: TIntegerField;
    Consulta_Ordem_OrcVIAJANTE: TIntegerField;
    Consulta_Ordem_OrcHISTORICO: TIBStringField;
    Consulta_Ordem_OrcCHASSI: TIBStringField;
    Consulta_Ordem_OrcTOTAL: TIBBCDField;
    Consulta_Ordem_OrcDESC_ACRESC: TIBBCDField;
    Consulta_Ordem_OrcCLIENTE: TIBStringField;
    Consulta_Ordem_OrcFECHADO: TIBStringField;
    Consulta_Ordem_OrcNOME_NATUREZA: TIBStringField;
    Consulta_Ordem_OrcNOME_MECANICO: TIBStringField;
    Consulta_Ordem_OrcNOME_VIAJANTE: TIBStringField;
    Consulta_Ordem_OrcLiquido: TFloatField;
    Consulta_Ordem_Itens_Orc: TIBQuery;
    Consulta_Ordem_Itens_OrcSERVICO: TIntegerField;
    Consulta_Ordem_Itens_OrcNOME: TIBStringField;
    Consulta_Ordem_Itens_OrcQUANTIDADE: TIBBCDField;
    Consulta_Ordem_Itens_OrcUNITARIO: TIBBCDField;
    Consulta_Ordem_Itens_OrcSELECIONADO: TIBStringField;
    Consulta_Ordem_Itens_OrcTOTAL: TFloatField;
    Consulta_OrdemENTRADA: TDateField;
    Consulta_OrdemVLR_ENTRADA: TIBBCDField;
    Consulta_Ordem_OrcENTRADA: TDateField;
    Consulta_Ordem_OrcVLR_ENTRADA: TIBBCDField;
    Departamento: TIBDataSet;
    DepartamentoCNPJ: TIBStringField;
    DepartamentoCODIGO: TIntegerField;
    DepartamentoNOME: TIBStringField;
    Patrimonio: TIBDataSet;
    PatrimonioCNPJ: TIBStringField;
    PatrimonioCODIGO: TIntegerField;
    PatrimonioNOME: TIBStringField;
    PatrimonioDEPARTAMENTO: TIntegerField;
    PatrimonioPLACA: TIBStringField;
    PatrimonioDESCRICAO: TBlobField;
    PatrimonioSERIE: TIBStringField;
    Saida_Patrimonio: TIBDataSet;
    Saida_PatrimonioCNPJ: TIBStringField;
    Saida_PatrimonioCODIGO: TIntegerField;
    Saida_PatrimonioDATA_CHEGADA: TDateTimeField;
    Saida_PatrimonioDATA_SAIDA: TDateTimeField;
    Saida_PatrimonioDESCRICAO: TBlobField;
    Saida_PatrimonioFUNCIONARIO: TIntegerField;
    Saida_PatrimonioHORA_SAIDA: TTimeField;
    Saida_PatrimonioKM_CHEGADA: TFloatField;
    Saida_PatrimonioKM_SAIDA: TFloatField;
    SelFuncionarios: TIBQuery;
    SelFuncionariosCARGO: TIBStringField;
    SelFuncionariosCTPS: TIBStringField;
    SelFuncionariosDT_ADMISSAO: TDateTimeField;
    SelFuncionariosSERIE: TIBStringField;
    SelFuncionariosNOME: TIBStringField;
    SelFuncionariosPESSOA_FJ: TIntegerField;
    Chegada_Patrimonio: TIBDataSet;
    Chegada_PatrimonioCNPJ: TIBStringField;
    Chegada_PatrimonioCODIGO: TIntegerField;
    Chegada_PatrimonioDATA_CHEGADA: TDateTimeField;
    Chegada_PatrimonioDATA_SAIDA: TDateTimeField;
    Chegada_PatrimonioDESCRICAO: TBlobField;
    Chegada_PatrimonioFUNCIONARIO: TIntegerField;
    Chegada_PatrimonioHORA_SAIDA: TTimeField;
    Chegada_PatrimonioKM_CHEGADA: TFloatField;
    Chegada_PatrimonioKM_SAIDA: TFloatField;
    Pecas: TIBDataSet;
    PecasCNPJ: TIBStringField;
    PecasCODIGO: TIntegerField;
    PecasNOME: TIBStringField;
    Garantias_Patrimonio: TIBDataSet;
    Garantias_PatrimonioCNPJ: TIBStringField;
    Garantias_PatrimonioCODIGO: TIntegerField;
    Garantias_PatrimonioDATA: TDateTimeField;
    Garantias_PatrimonioDESCRICAO: TBlobField;
    Garantias_PatrimonioFUNCIONARIO: TIntegerField;
    Garantias_PatrimonioNOME: TIBStringField;
    Garantias_PatrimonioPECA: TIntegerField;
    Garantias_PatrimonioSERIE: TIBStringField;
    Garantias_PatrimonioGARANTIA: TIntegerField;
    Declaracao_venda: TIBDataSet;
    Declaracao_vendaCNPJ: TIBStringField;
    Declaracao_vendaCODIGO: TIntegerField;
    Declaracao_vendaDATA: TDateTimeField;
    Declaracao_vendaDESCRICAO: TIBStringField;
    Declaracao_vendaPESSOA_FJ: TIntegerField;
    Declaracao_vendaSERIE: TIBStringField;
    Declaracao_vendaVALOR: TFloatField;
    SelMotorNOME: TIBStringField;
    Garantias: TIBDataSet;
    GarantiasCNPJ: TIBStringField;
    GarantiasCODIGO: TIntegerField;
    GarantiasDATA: TDateTimeField;
    GarantiasFORMA_PGTO: TIntegerField;
    GarantiasNOME_CONSUMIDOR: TIBStringField;
    GarantiasOBSERVACAO: TIBStringField;
    GarantiasPESSOA_FJ: TIntegerField;
    GarantiasUSUARIO: TIntegerField;
    GarantiasVENDEDOR: TIntegerField;
    GarantiasDESC_ACRESC: TFloatField;
    GarantiasTOTAL: TFloatField;
    GarantiasFECHADO: TIBStringField;
    GarantiasGERAL: TFloatField;
    GarantiasNOME: TIBStringField;
    GarantiasVALIDADE: TDateTimeField;
    GarantiasTOTAL_2: TFloatField;
    GarantiasGeral2: TFloatField;
    GarantiasCLIENTE: TIBStringField;
    GarantiasDESC_ACRESC_2: TFloatField;
    GarantiasDATA_CAIXA: TDateTimeField;
    GarantiasLiquido: TFloatField;
    GarantiasNOME_VENDEDOR: TIBStringField;
    GarantiasENVIADA_CX: TIBStringField;
    GarantiasNOME_FORMA: TIBStringField;
    GarantiasENTRADA: TFloatField;
    GarantiasTIPO_DOCTO: TIBStringField;
    GarantiasLOCAL_COBRANCA: TIntegerField;
    GarantiasVLR_PARC_LC: TFloatField;
    GarantiasTotal_Parcelar: TFloatField;
    GarantiasDiferenca: TFloatField;
    GarantiasAVista: TFloatField;
    GarantiasPGTO_AVISTA: TIBStringField;
    GarantiasCANCELADA: TIBStringField;
    SelGarantias: TIBQuery;
    SelGarantiasPESSOA_FJ: TIntegerField;
    SelGarantiasCODIGO: TIntegerField;
    SelGarantiasDATA: TDateTimeField;
    SelGarantiasVALIDADE: TDateTimeField;
    SelGarantiasTOTAL: TIBBCDField;
    SelGarantiasFECHADO: TIBStringField;
    SelGarantiasOBSERVACAO: TIBStringField;
    SelGarantiasNOME_RAZAO: TIBStringField;
    SelGarantiasNOME_FORMA: TIBStringField;
    SelGarantiasNOME_VENDEDOR: TIBStringField;
    SelGarantiasVENDEDOR: TIntegerField;
    SelGarantiasVLR_TOTAL: TIBBCDField;
    SelGarantiasDESC_ACRESC: TIBBCDField;
    SelGarantiasDESC_ACRESC_2: TIBBCDField;
    SelGarantiasCLIENTE: TIBStringField;
    SelGarantiasPESO: TIBBCDField;
    SelGarantiasVOLUME: TIBBCDField;
    SelGarantiasFORMA: TIntegerField;
    Garantias_Itens: TIBDataSet;
    Garantias_ItensCNPJ: TIBStringField;
    Garantias_ItensCODIGO: TIntegerField;
    Garantias_ItensPRODUTO: TIBStringField;
    Garantias_ItensSEQUENCIA: TSmallintField;
    Garantias_ItensQUANTIDADE: TFloatField;
    Garantias_ItensPRC_UNITARIO: TFloatField;
    Garantias_ItensPRC_CUSTO: TFloatField;
    Garantias_ItensICM: TFloatField;
    Garantias_ItensICM_SUBS: TFloatField;
    Garantias_ItensIPI: TFloatField;
    Garantias_ItensVOLUME: TFloatField;
    Garantias_ItensPESO: TFloatField;
    Garantias_ItensDESCONTO: TFloatField;
    Garantias_ItensPORC_DESC: TFloatField;
    Garantias_ItensUNIDADE: TIBStringField;
    Garantias_ItensPRC_UNIT_ORIGINAL: TFloatField;
    Garantias_ItensTotal: TFloatField;
    Garantias_ItensPeso_Total: TFloatField;
    Garantias_ItensVolume_Total: TFloatField;
    Garantias_ItensNOME_PRODUTO: TIBStringField;
    Garantias_ItensSUBUNIDADE: TIntegerField;
    Garantias_ItensMARCA: TIBStringField;
    Garantias_ItensTIPO: TIBStringField;
    DsGarantias: TDataSource;
    Garantias_Parc: TIBDataSet;
    Garantias_ParcCNPJ: TIBStringField;
    Garantias_ParcCODIGO: TIntegerField;
    Garantias_ParcVENCTO: TDateTimeField;
    Garantias_ParcPARCELA: TIBStringField;
    Garantias_ParcVALOR: TFloatField;
    Garantias_ParcBOLETO: TIntegerField;
    SelVendedor: TIBQuery;
    SelVendedorCNPJ: TIBStringField;
    SelVendedorCODIGO: TIntegerField;
    SelVendedorNOME: TIBStringField;
    SelVendedorCOM_VISTA: TFloatField;
    SelVendedorCOM_PRAZO: TFloatField;
    SelVendedorPESSOA_FJ: TIntegerField;
    SelVendedorSENHA: TIBStringField;
    FaturaGarantias: TIBDataSet;
    FaturaGarantiasCARTAO: TFloatField;
    FaturaGarantiasCHEQUE: TFloatField;
    FaturaGarantiasCLIENTE: TIBStringField;
    FaturaGarantiasCNPJ: TIBStringField;
    FaturaGarantiasCODIGO: TIntegerField;
    FaturaGarantiasCONTA_CAIXA: TIntegerField;
    FaturaGarantiasDATA: TDateTimeField;
    FaturaGarantiasDATA_CAIXA: TDateTimeField;
    FaturaGarantiasDESC_ACRESC: TFloatField;
    FaturaGarantiasDESC_ACRESC_2: TFloatField;
    FaturaGarantiasDINHEIRO: TFloatField;
    FaturaGarantiasENTRADA: TFloatField;
    FaturaGarantiasENVIADA_CX: TIBStringField;
    FaturaGarantiasFECHADO: TIBStringField;
    FaturaGarantiasFORMA_PGTO: TIntegerField;
    FaturaGarantiasLOCAL_COBRANCA: TIntegerField;
    FaturaGarantiasNOME: TIBStringField;
    FaturaGarantiasNOME_CONSUMIDOR: TIBStringField;
    FaturaGarantiasNOME_FORMA: TIBStringField;
    FaturaGarantiasNOME_VENDEDOR: TIBStringField;
    FaturaGarantiasOBSERVACAO: TIBStringField;
    FaturaGarantiasPESO: TFloatField;
    FaturaGarantiasPESSOA_FJ: TIntegerField;
    FaturaGarantiasPGTO_AVISTA: TIBStringField;
    FaturaGarantiasTICKET: TFloatField;
    FaturaGarantiasTIPO_DOCTO: TIBStringField;
    FaturaGarantiasTOTAL: TFloatField;
    FaturaGarantiasTOTAL_2: TFloatField;
    FaturaGarantiasUSUARIO: TIntegerField;
    FaturaGarantiasVALIDADE: TDateTimeField;
    FaturaGarantiasVENDEDOR: TIntegerField;
    FaturaGarantiasVLR_PARC_LC: TFloatField;
    FaturaGarantiasVOLUME: TFloatField;
    FaturaGarantiasDiferenca: TFloatField;
    FaturaGarantiastotal_parcelar: TFloatField;
    FaturaGarantiasAVISTA: TFloatField;
    FaturaGarantiasTOTAL_GERAL: TFloatField;
    FaturaGarantiasTOTAL_GERAL2: TFloatField;
    FaturaGarantiasLiquido: TFloatField;
    Parametros: TIBQuery;
    ParametrosCNPJ: TIBStringField;
    ParametrosVENDEDOR: TFloatField;
    ParametrosDESCONTOS: TFloatField;
    ParametrosCUSTO_VARIAVEL: TFloatField;
    ParametrosPROPAGANDA: TFloatField;
    SelUnidade: TIBQuery;
    SelUnidadeCNPJ: TIBStringField;
    SelUnidadeSIGLA: TIBStringField;
    SelUnidadeNOME: TIBStringField;
    SelUnidadeUNIDADES: TFloatField;
    Valida_Produto: TIBQuery;
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
    Valida_ProdutoIPI: TIntegerField;
    Valida_ProdutoVENDE_FRACIONADO: TIBStringField;
    Valida_ProdutoPOSSUI_LOTE: TIBStringField;
    Valida_ProdutoMARCA: TIBStringField;
    Valida_ProdutoMARGEM_BRUTA: TIBBCDField;
    Valida_ProdutoSERVICO: TIBStringField;
    Consulta_Garantia_Parc: TIBQuery;
    Consulta_Garantia_ParcBOLETO: TIntegerField;
    Consulta_Garantia_ParcCNPJ: TIBStringField;
    Consulta_Garantia_ParcCODIGO: TIntegerField;
    Consulta_Garantia_ParcPARCELA: TIBStringField;
    Consulta_Garantia_ParcVALOR: TFloatField;
    Consulta_Garantia_ParcVENCTO: TDateTimeField;
    Consulta_Garantia: TIBQuery;
    Consulta_GarantiaPESSOA_FJ: TIntegerField;
    Consulta_GarantiaNOME: TIBStringField;
    Consulta_GarantiaCODIGO: TIntegerField;
    Consulta_GarantiaDATA: TDateField;
    Consulta_GarantiaTOTAL: TIBBCDField;
    Consulta_GarantiaFECHADO: TIBStringField;
    Consulta_GarantiaVENDEDOR: TIntegerField;
    Consulta_GarantiaUSUARIO: TIntegerField;
    Consulta_GarantiaNOME_CONSUMIDOR: TIBStringField;
    Consulta_GarantiaOBSERVACAO: TIBStringField;
    Consulta_GarantiaFORMA_PGTO: TIntegerField;
    Consulta_GarantiaCARTAO: TIBBCDField;
    Consulta_GarantiaCHEQUE: TIBBCDField;
    Consulta_GarantiaDESC_ACRESC: TIBBCDField;
    Consulta_GarantiaDINHEIRO: TIBBCDField;
    Consulta_GarantiaENTRADA: TIBBCDField;
    Consulta_GarantiaTICKET: TIBBCDField;
    Consulta_GarantiaLOCAL_COBRANCA: TIntegerField;
    Consulta_GarantiaTIPO_DOCTO: TIBStringField;
    Consulta_GarantiaNOME_VENDEDOR: TIBStringField;
    Consulta_GarantiaVLR_TOTAL: TIBBCDField;
    Consulta_GarantiaNOME_FORMA: TIBStringField;
    Consulta_GarantiaNOME_DOCUMENTO: TIBStringField;
    Consulta_GarantiaNOME_LOCAL: TIBStringField;
    Consulta_GarantiaGeral: TFloatField;
    Consulta_GarantiaGeral2: TFloatField;
    Consulta_GarantiaLiquido: TFloatField;
    Consulta_GarantiaTOTAL_2: TIBBCDField;
    Consulta_GarantiaDESC_ACRESC_2: TIBBCDField;
    Consulta_Garantia_Itens: TIBQuery;
    Consulta_Garantia_ItensDESCONTO: TIBBCDField;
    Consulta_Garantia_ItensICM: TIBBCDField;
    Consulta_Garantia_ItensICM_SUBS: TIBBCDField;
    Consulta_Garantia_ItensIPI: TIBBCDField;
    Consulta_Garantia_ItensPESO: TIBBCDField;
    Consulta_Garantia_ItensPORC_DESC: TIBBCDField;
    Consulta_Garantia_ItensPRC_CUSTO: TIBBCDField;
    Consulta_Garantia_ItensPRC_UNIT_ORIGINAL: TIBBCDField;
    Consulta_Garantia_ItensPRC_UNITARIO: TIBBCDField;
    Consulta_Garantia_ItensPRODUTO: TIBStringField;
    Consulta_Garantia_ItensQUANTIDADE: TIBBCDField;
    Consulta_Garantia_ItensSEQUENCIA: TIntegerField;
    Consulta_Garantia_ItensUNIDADE: TIBStringField;
    Consulta_Garantia_ItensSUBUNIDADE: TIntegerField;
    Consulta_Garantia_ItensVOLUME: TIBBCDField;
    Consulta_Garantia_ItensNOME_PRODUTO: TIBStringField;
    Consulta_Garantia_ItensTIPO: TIBStringField;
    Consulta_Garantia_ItensTotal: TFloatField;
    Consulta_OrdemNF: TIntegerField;
    Consulta_OrdemALIQUOTA_ISS: TIBBCDField;
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
    SerieDATA_ANO_ALT: TIntegerField;
    SerieDATA_ANO_DST: TIntegerField;
    SerieDATA_DIA_ALT: TIntegerField;
    SerieDATA_DIA_DST: TIntegerField;
    SerieDATA_MES_ALT: TIntegerField;
    SerieDATA_MES_DST: TIntegerField;
    SerieOBS_ALT: TIntegerField;
    SerieOBS_DST: TIntegerField;
    SerieNOTA_VENDEDOR_DST: TIntegerField;
    SerieNOTA_VENDEDOR_ALT: TIntegerField;
    SerieNOTA_ECF_DST: TIntegerField;
    SerieNOTA_ECF_ALT: TIntegerField;
    SerieNOTA_DESCONTO_DST: TIntegerField;
    SerieNOTA_DESCONTO_ALT: TIntegerField;
    SerieNOTA_INDCOMPL_DST: TIntegerField;
    SerieNOTA_INFCOMPL_ALT: TIntegerField;
    SerieCLI_DUPLLARGURA_COLUNA: TIntegerField;
    SerieCLI_DUPLNUM_COLUNA: TIntegerField;
    SerieNOTA_MSGNAT_DST: TIntegerField;
    SerieNOTA_MSGNAT_ALT: TIntegerField;
    SerieNOTA_NUMRDP_DST: TIntegerField;
    SerieNOTA_NUMRDP_ALT: TIntegerField;
    SeriePORTA_IMPRESSAO: TIBStringField;
    SerieNOTA_DESCONTO_ALT2: TIntegerField;
    SerieNOTA_DESCONTO_DST2: TIntegerField;
    SeriePROD_QNTD_UNID_ALT: TIntegerField;
    SeriePROD_QNTD_UNID_DST: TIntegerField;
    SeriePROD_TIPO_UNID_ALT: TIntegerField;
    SeriePROD_TIPO_UNID_DST: TIntegerField;
    OrdemNF: TIntegerField;
    SelOrdens_Servicos_OrcMOTOR: TIntegerField;
    SelOrdens_Servicos_OrcNOME_MOTOR: TIBStringField;
    VALOR_SERVICO_MOTOR: TIBStoredProc;
    OrdemA_VISTA: TStringField;
    OrdemMED_VIRABREQUIM: TIBStringField;
    OrdemMED_BIELA: TIBStringField;
    OrdemMED_CILINDRO: TIBStringField;
    OrdemMED_CARCACA: TIBStringField;
    APAGA_ITEM_SERVICO: TIBStoredProc;
    APAGA_ORDEM_SERVICO_SERVICO_ORC: TIBStoredProc;
    OrdemORCAMENTO: TIntegerField;
    Ordem_OrcVALIDADE: TDateTimeField;
    Consulta_Ordem_OrcVALIDADE: TDateField;
    Consulta_OrdemMED_VIRABREQUIM: TIBStringField;
    Consulta_OrdemMED_BIELA: TIBStringField;
    Consulta_OrdemMED_CILINDRO: TIBStringField;
    Consulta_OrdemMED_CARCACA: TIBStringField;
    Consulta_OrdemORCAMENTO: TIntegerField;
    Ordem_OrcNUMERO_ORDEM: TIntegerField;
    Ordem_OrcNUMERO_VENDA: TIntegerField;
    OrdemNUMERO_VENDA: TIntegerField;
    Defeito: TIBDataSet;
    DefeitoCNPJ: TIBStringField;
    DefeitoCODIGO: TIntegerField;
    DefeitoNOME: TIBStringField;
    OrdemDEFEITO_RECLAMADO: TIntegerField;
    OrdemCONDICAO_FINAL_EQUIPAMENTO: TIBStringField;
    OrdemHORA_CHEGADA: TTimeField;
    OrdemHORA_SAIDA: TTimeField;
    OrdemCONTADOR_TOTAL: TFloatField;
    OrdemCONTADOR_CILINDRO: TFloatField;
    OrdemCONTADOR_REVELADOR: TFloatField;
    OrdemNOME_DEFEITO: TIBStringField;
    SelDefeitos: TIBQuery;
    SelDefeitosCNPJ: TIBStringField;
    SelDefeitosCODIGO: TIntegerField;
    SelDefeitosNOME: TIBStringField;
    OrdemPROPRIEDADE: TIntegerField;
    OrdemNOME_PROPRIEDADE: TIBStringField;
    SelPropriedades: TIBQuery;
    SelPropriedadesNOME: TIBStringField;
    SelPropriedadesPROPRIETARIO: TIBStringField;
    SelPropriedadesIE: TIBStringField;
    SelPropriedadesENDERECO: TIBStringField;
    SelPropriedadesCOMPLEMENTO: TIBStringField;
    SelPropriedadesCIDADE: TIBStringField;
    SelPropriedadesUF: TIBStringField;
    SelPropriedadesCEP: TIBStringField;
    SelPropriedadesAREA_TOTAL: TIBStringField;
    SelPropriedadesNUMERO: TIBStringField;
    SelPropriedadesBAIRRO: TIBStringField;
    SelPropriedadesCPF: TIBStringField;
    SelPropriedadesPROPRIEDADE: TIntegerField;
    OrdemTIPO_ATENDIMENTO: TIBStringField;
    Consulta_OrdemPROPRIETARIO: TIBStringField;
    Consulta_OrdemIE: TIBStringField;
    Consulta_OrdemENDERECO: TIBStringField;
    Consulta_OrdemCOMPLEMENTO: TIBStringField;
    Consulta_OrdemCIDADE: TIBStringField;
    Consulta_OrdemUF: TIBStringField;
    Consulta_OrdemCEP: TIBStringField;
    Consulta_OrdemAREA_TOTAL: TIBStringField;
    Consulta_OrdemOBS: TBlobField;
    Consulta_OrdemNUMERO: TIBStringField;
    Consulta_OrdemBAIRRO: TIBStringField;
    Consulta_OrdemATIVA: TIBStringField;
    Consulta_OrdemTIPO_CONTRATO: TIBStringField;
    Consulta_OrdemMODELO: TIBStringField;
    Consulta_OrdemGARANTIA: TDateField;
    Consulta_OrdemCPF: TIBStringField;
    Consulta_OrdemVENDEDOR: TIntegerField;
    Consulta_OrdemTECNICO: TIntegerField;
    Consulta_OrdemCONTRATO: TIBStringField;
    Consulta_OrdemNUMERO_VENDA: TIntegerField;
    Consulta_OrdemDEFEITO_RECLAMADO: TIBStringField;
    Consulta_OrdemCONDICAO_FINAL_EQUIPAMENTO: TIBStringField;
    Consulta_OrdemHORA_CHEGADA: TTimeField;
    Consulta_OrdemHORA_SAIDA: TTimeField;
    Consulta_OrdemCONTADOR_TOTAL: TIBBCDField;
    Consulta_OrdemCONTADOR_CILINDRO: TIBBCDField;
    Consulta_OrdemCONTADOR_REVELADOR: TIBBCDField;
    Consulta_OrdemNOME_DEFEITO: TIBStringField;
    Consulta_OrdemPROPRIEDADE: TIntegerField;
    Consulta_OrdemNOME_PROPRIEDADE: TIBStringField;
    Consulta_OrdemTIPO_ATENDIMENTO: TIBStringField;
    OrdemCAUSA_CHAMADO: TIBStringField;
    Consulta_OrdemCAUSA_CHAMADO: TIBStringField;
    Selorcamentos_Movimentos: TIBQuery;
    Selorcamentos_MovimentosSEQUENCIA: TIntegerField;
    Selorcamentos_MovimentosVALOR: TIBBCDField;
    Selorcamentos_MovimentosDATA: TDateTimeField;
    Selorcamentos_MovimentosHISTORICO: TBlobField;
    Selorcamentos_MovimentosTIPO: TIBStringField;
    OS_MOVIMENTOSTIPO_DESPESA: TIBStringField;
    Selorcamentos_MovimentosTIPO_DESPESA: TIBStringField;
    OrdemCONTADOR_COR: TFloatField;
    OrdemCONTADOR_PRETO: TFloatField;
    OrdemCONTADOR_IMPRESSAO: TFloatField;
    Consulta_OrdemCONTADOR_COR: TIBBCDField;
    Consulta_OrdemCONTADOR_PRETO: TIBBCDField;
    Consulta_OrdemCONTADOR_IMPRESSAO: TIBBCDField;
    Ultimos_Atendimentos: TIBQuery;
    Ultimos_AtendimentosCODIGO: TIntegerField;
    Ultimos_AtendimentosDATA: TDateTimeField;
    Ultimos_AtendimentosPESSOA_FJ: TIntegerField;
    Ultimos_AtendimentosENVIADA_CX: TIBStringField;
    Ultimos_AtendimentosNOME: TIBStringField;
    Ultimos_AtendimentosNATUREZA: TIntegerField;
    Ultimos_AtendimentosMECANICO: TIntegerField;
    Ultimos_AtendimentosVIAJANTE: TIntegerField;
    Ultimos_AtendimentosENTRADA: TDateTimeField;
    Ultimos_AtendimentosMOTOR: TIntegerField;
    Ultimos_AtendimentosHISTORICO: TIBStringField;
    Ultimos_AtendimentosCHASSI: TIBStringField;
    Ultimos_AtendimentosTOTAL: TIBBCDField;
    Ultimos_AtendimentosDESC_ACRESC: TIBBCDField;
    Ultimos_AtendimentosCLIENTE: TIBStringField;
    Ultimos_AtendimentosFECHADO: TIBStringField;
    Ultimos_AtendimentosNOME_NATUREZA: TIBStringField;
    Ultimos_AtendimentosNOME_MECANICO: TIBStringField;
    Ultimos_AtendimentosNOME_VIAJANTE: TIBStringField;
    Ultimos_AtendimentosNOME_MOTOR: TIBStringField;
    Ultimos_AtendimentosNF: TIntegerField;
    Ultimos_AtendimentosALIQUOTA_ISS: TIBBCDField;
    Ultimos_AtendimentosCONTADOR_TOTAL: TIBBCDField;
    Ultimos_AtendimentosCONTADOR_COR: TIBBCDField;
    Ultimos_AtendimentosCONTADOR_PRETO: TIBBCDField;
    Ultimos_AtendimentosCONTADOR_CILINDRO: TIBBCDField;
    Ultimos_AtendimentosCONTADOR_REVELADOR: TIBBCDField;
    Ultimos_AtendimentosCONTADOR_IMPRESSAO: TIBBCDField;
    Ultimos_AtendimentosSOLICITANTE: TIBStringField;
    Ultimos_AtendimentosDEFEITO_RECLAMADO: TIBStringField;
    Ultimos_AtendimentosTIPO_ATENDIMENTO: TIBStringField;
    Ultimos_AtendimentosCONDICAO_FINAL_EQUIPAMENTO: TIBStringField;
    Ultimos_AtendimentosCAUSA_CHAMADO: TIBStringField;
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
    SelPropriedadeNUMERO: TIBStringField;
    SelPropriedadeBAIRRO: TIBStringField;
    SelPropriedadeCPF: TIBStringField;
    Fat_VendasItens: TIBQuery;
    Fat_VendasItensPRODUTO: TIBStringField;
    Fat_VendasItensSEQUENCIA: TSmallintField;
    Fat_VendasItensQUANTIDADE: TIBBCDField;
    Fat_VendasItensNOME: TIBStringField;
    Fat_VendasItensPRC_UNITARIO: TIBBCDField;
    Fat_VendasItensPRC_CUSTO: TIBBCDField;
    Fat_VendasItensICM: TIBBCDField;
    Fat_VendasItensICM_SUBS: TIBBCDField;
    Fat_VendasItensIPI: TIBBCDField;
    Fat_VendasItensVOLUME: TIBBCDField;
    Fat_VendasItensPESO: TIBBCDField;
    Fat_VendasItensDESCONTO: TIBBCDField;
    Fat_VendasItensPORC_DESC: TIBBCDField;
    Fat_VendasItensUNIDADE: TIBStringField;
    Fat_VendasItensPRC_UNIT_ORIGINAL: TIBBCDField;
    Fat_VendasItensNOME_PRODUTO: TIBStringField;
    Fat_VendasItensALIQUOTA: TIBStringField;
    Fat_VendasItensPRODUTOFIS: TIBStringField;
    Fat_VendasItensNOME_FIS: TIBStringField;
    Fat_VendasItensCTE: TIntegerField;
    Fat_VendasItensCTIE: TIntegerField;
    Fat_VendasItensORIGEM: TIntegerField;
    Fat_VendasItensREDUCAO: TIntegerField;
    Fat_VendasItensSUBUNIDADE: TIntegerField;
    Fat_VendasItensDESCONTO_TOTAL: TFloatField;
    OrdemVENDA: TIntegerField;
    Consulta_OrdemVENDA: TIntegerField;
    TipoAtendimento: TIBDataSet;
    TipoAtendimentoCNPJ: TIBStringField;
    TipoAtendimentoCODIGO: TIntegerField;
    TipoAtendimentoNOME: TIBStringField;
    MotivoChamado: TIBDataSet;
    MotivoChamadoCNPJ: TIBStringField;
    MotivoChamadoCODIGO: TIntegerField;
    MotivoChamadoNOME: TIBStringField;
    SelTecnico: TIBQuery;
    SelTecnicoCODIGO: TIntegerField;
    SelTecnicoNOME: TIBStringField;
    SelEquipCliente: TIBQuery;
    SelEquipClienteCODIGO_NOME: TIBStringField;
    SelEquipClienteCODIGO: TIBStringField;
    SelEquipClienteSERIE: TIBStringField;
    SelStatus: TIBQuery;
    SelTA: TIBQuery;
    SelMotivo: TIBQuery;
    SelMotivoCNPJ: TIBStringField;
    SelMotivoCODIGO: TIntegerField;
    SelMotivoNOME: TIBStringField;
    OrdemALIQUOTA_ISS: TFloatField;
    OrdemPRODUTO: TIBStringField;
    OrdemID_MOTIVO_CHAMADO: TIntegerField;
    OrdemID_TIPO_ATENDIMENTO: TIntegerField;
    OrdemCOD_STATUS: TIntegerField;
    SelStatusCODIGO: TIntegerField;
    SelStatusNOME: TIBStringField;
    Servicos_ItensNOME_PRODUTO: TIBStringField;
    Servicos_ItensPRODUTO: TIBStringField;
    INSERE_LOG_STATUS: TIBSQL;
    Servicos_ItensTIPO_SERVICO: TIBStringField;
    SelOrdens_ServicosOFC_CODIGO: TIntegerField;
    SelOrdens_ServicosOFC_DATA: TDateTimeField;
    SelOrdens_ServicosOFC_DT_ATRIBUICAO: TDateTimeField;
    SelOrdens_ServicosOFC_DATA_FECHAMENTO: TDateTimeField;
    SelOrdens_ServicosOFC_TOTAL: TFloatField;
    SelOrdens_ServicosOFC_SOLICITANTE: TIBStringField;
    SelOrdens_ServicosOFC_VENDA: TIntegerField;
    SelOrdens_ServicosMEC_CODIGO: TIntegerField;
    SelOrdens_ServicosMEC_NOME: TIBStringField;
    SelOrdens_ServicosDEF_CODIGO: TIntegerField;
    SelOrdens_ServicosDEF_NOME: TIBStringField;
    SelOrdens_ServicosMTC_CODIGO: TIntegerField;
    SelOrdens_ServicosMTC_NOME: TIBStringField;
    SelOrdens_ServicosTPA_CODIGO: TIntegerField;
    SelOrdens_ServicosTPA_NOME: TIBStringField;
    SelOrdens_ServicosST_COR: TIntegerField;
    SelOrdens_ServicosST_NOME: TIBStringField;
    SelOrdens_ServicosCLI_CODIGO: TIntegerField;
    SelOrdens_ServicosCLI_NOME_RAZAO: TIBStringField;
    SelOrdens_ServicosREG_CODIGO: TIntegerField;
    SelOrdens_ServicosPRD_CODIGO: TIBStringField;
    SelOrdens_ServicosPRD_NOME: TIBStringField;
    SelOrdens_ServicosPRD_SERIE: TIBStringField;
    SelOrdens_ServicosMDL_CODIGO: TIntegerField;
    OrdemDT_ATRIBUICAO: TDateTimeField;
    OrdemHR_INICIALIZACAO: TTimeField;
    OrdemDT_FINALIZACAO: TDateTimeField;
    OrdemHR_FINALIZACAO: TTimeField;
    SelOrdens_ServicosST_CODIGO: TIntegerField;
    OrdemDT_INICIALIZACAO: TDateTimeField;
    SelOrdens_ServicosCP_TEMPO_RESPOSTA: TIntegerField;
    SelOrdens_ServicosOFC_DT_ENTRADA: TDateTimeField;
    OrdemHR_ENTRADA: TTimeField;
    OrdemHR_ATRIBUICAO: TTimeField;
    SelOrdens_ServicosOFC_HR_ATRIBUICAO: TTimeField;
    SelOrdens_ServicosOFC_HR_ENTRADA: TTimeField;
    ResumoGraficoOS: TIBQuery;
    ResumoGraficoOSCOUNT_OFC_CODIGO: TIntegerField;
    ResumoGraficoOSOFC_COD_STATUS: TIntegerField;
    ResumoGraficoOSST_NOME: TIBStringField;
    SelServicos_Itens: TIBDataSet;
    SelServicos_ItensCNPJ: TIBStringField;
    SelServicos_ItensCODIGO: TIntegerField;
    SelServicos_ItensNOME: TIBStringField;
    SelServicos_ItensQUANTIDADE: TFloatField;
    SelServicos_ItensSERVICO: TIntegerField;
    SelServicos_ItensUNITARIO: TFloatField;
    SelServicos_ItensSELECIONADO: TIBStringField;
    SelServicos_ItensCOD_PRODUTO: TIBStringField;
    SelServicos_ItensNOME_PRODUTO: TIBStringField;
    SelServicos_ItensTIPO_SERVICO: TIBStringField;
    SelServicos_ItensTotal: TFloatField;
    SelModelosProduto: TIBQuery;
    SelModelosProdutoCNPJ: TIBStringField;
    SelModelosProdutoCODIGO: TIntegerField;
    SelModelosProdutoNOME: TIBStringField;
    OrdemCT_REVELADOR: TIntegerField;
    OrdemDT_REVELADOR: TDateTimeField;
    OrdemDT_CILINDRO: TDateTimeField;
    OrdemCT_CILINDRO: TIntegerField;
    SelOrdens_ServicosCP_COD_CONTRATO: TIntegerField;
    SelOrdens_ServicosTPC_NOME: TIBStringField;
    OrdemKM_INICIAL: TFloatField;
    OrdemKM_FINAL: TFloatField;
    OS_INTERVALO: TIBDataSet;
    OS_INTERVALOCNPJ: TIBStringField;
    OS_INTERVALOCODIGO: TIntegerField;
    OS_INTERVALOHR_INICIO: TTimeField;
    OS_INTERVALOHR_FIM: TTimeField;
    OS_INTERVALOSEQUENCIA: TIntegerField;
    PreventivaOS: TIBDataSet;
    PreventivaOSCONTRATO_ATIVO: TIBStringField;
    PreventivaOSCONTRATO_CLIENTE: TIntegerField;
    PreventivaOSCONTRATO_CODIGO: TIntegerField;
    PreventivaOSCONTRATO_DIAS_RECHAMADO: TIntegerField;
    PreventivaOSCONTRATO_DT_FIM: TDateTimeField;
    PreventivaOSCONTRATO_DT_INICIO: TDateTimeField;
    PreventivaOSNUMERO_CONTRATO: TIBStringField;
    PreventivaOSTEMPO_RESPOSTA: TIntegerField;
    PreventivaOSATIVIDADE_CLIENTE: TIntegerField;
    PreventivaOSBAIRRO_CLIENTE: TIntegerField;
    PreventivaOSCIDADE_CLIENTE: TIntegerField;
    PreventivaOSCODIGO_CLIENTE: TIntegerField;
    PreventivaOSCPF_CNPJ: TIBStringField;
    PreventivaOSNOME_FANTASIA: TIBStringField;
    PreventivaOSRAZAO_SOCIAL: TIBStringField;
    PreventivaOSREGIAO_CLIENTE: TIntegerField;
    PreventivaOSRG_INSC_ESTADUAL: TIBStringField;
    PreventivaOSUF: TIBStringField;
    PreventivaOSPRODUTO_ATIVO: TIBStringField;
    PreventivaOSCODIGO_PRODUTO: TIBStringField;
    PreventivaOSCODIGO_PRODUTO_SEC: TIBStringField;
    PreventivaOSCODIGO_MARCA: TIntegerField;
    PreventivaOSNOME_PRODUTO: TIBStringField;
    PreventivaOSMARCA_PRODUTO: TIBStringField;
    PreventivaOSMODELO_PRODUTO: TIBStringField;
    PreventivaOSTIPO_CONTRATO: TIntegerField;
    PreventivaOSNOME_CONTRATO: TIBStringField;
    PreventivaOSMEDIA_COPIA: TIntegerField;
    PreventivaOSCONTRATO_COPIAS_PREVENTIVA: TIntegerField;
    PreventivaOSQTDE_COPIA_ATUAL: TIntegerField;
    PreventivaOSQTDE_COPIA_PREVISTA: TIntegerField;
    PreventivaOSDT_FECHAMENTO_ULTIMO: TDateField;
    PreventivaOSCONTADOR_ULTIMO: TIntegerField;
    PreventivaOSPONTO_VISITA_PREVENTIVA: TDateField;
    PreventivaOSDIAS_EM_ATRASO: TIntegerField;
    OS_INTERVALOKM_RODADO: TFloatField;
    SelOrdens_ServicosOFC_KM_RODADO: TFloatField;
    SelOrdens_ServicosOFC_HORAS_TRABALHADAS: TFloatField;
    OrdemHR_FECHAMENTO: TTimeField;
    OrdemTEMPO_RESPOSTA: TFloatField;
    OrdemOS_RECHAMADO: TIntegerField;
    OrdemKM_RODADO: TFloatField;
    OrdemHORAS_TRABALHADAS: TFloatField;
    OrdemTIPO_TECNICO: TIBStringField;
    SelOrdens_ServicosOFC_HR_FECHAMENTO: TTimeField;
    SelContrato: TIBQuery;
    SelContratoPSA_CODIGO: TIntegerField;
    SelContratoCODIGO: TIntegerField;
    SelContratoCONTRATO: TIBStringField;
    SelUserOrigem: TIBQuery;
    SelUserDestino: TIBQuery;
    SelUserDestinoCODIGO: TIntegerField;
    SelUserDestinoLOGIN: TIBStringField;
    SelUserDestinoNOME: TIBStringField;
    SelUserDestinoPERFIL: TIntegerField;
    SelUserDestinoSENHA: TIBStringField;
    SelUserOrigemCODIGO: TIntegerField;
    SelUserOrigemLOGIN: TIBStringField;
    SelUserOrigemNOME: TIBStringField;
    SelUserOrigemPERFIL: TIntegerField;
    SelUserOrigemSENHA: TIBStringField;
    SelProdutos: TIBQuery;
    SelProdutosCNPJ: TIBStringField;
    SelProdutosCODIGO: TIBStringField;
    SelProdutosCODIGO_2: TIBStringField;
    SelProdutosCNPJ_AGRUP: TIBStringField;
    SelProdutosCOD_AGRUP: TIBStringField;
    SelProdutosNOME: TIBStringField;
    SelProdutosMARCA: TIntegerField;
    SelProdutosNOME_MARCA: TIBStringField;
    SelProdutosGRUPO: TIntegerField;
    SelProdutosSUBGRUPO: TIntegerField;
    SelProdutosREDUCAO: TIntegerField;
    SelProdutosUNIDADE: TIBStringField;
    SelProdutosCTE: TSmallintField;
    SelProdutosCTIE: TSmallintField;
    SelProdutosQTDADE_1: TFloatField;
    SelProdutosQTDADE_2: TFloatField;
    SelProdutosLOCALIZACAO_1: TIBStringField;
    SelProdutosLOCALIZACAO_2: TIBStringField;
    SelProdutosLOCALIZACAO_3: TIBStringField;
    SelProdutosNEG_QTDADE_2: TIBStringField;
    SelProdutosQTDADE_MIN: TIntegerField;
    SelProdutosQTDADE_MAX: TIntegerField;
    SelProdutosCOMPLEMENTO_NF: TIBStringField;
    SelProdutosDT_ULT_COMPRA: TDateTimeField;
    SelProdutosQT_ULT_COMPRA: TIntegerField;
    SelProdutosDT_ULT_VENDA: TDateTimeField;
    SelProdutosMARGEM_BRUTA: TFloatField;
    SelProdutosPRC_REPOS: TFloatField;
    SelProdutosPRC_CUSTO_ANT: TFloatField;
    SelProdutosPRC_CUSTO_MED: TFloatField;
    SelProdutosPRC_VENDA: TFloatField;
    SelProdutosPRC_VENDA_ANT: TFloatField;
    SelProdutosPRC_VENDA_MED: TFloatField;
    SelProdutosALIQUOTA_ECF: TIBStringField;
    SelProdutosORIGEM: TSmallintField;
    SelProdutosPESO_LIQ: TFloatField;
    SelProdutosPERC_FRETE: TFloatField;
    SelProdutosIPI: TFloatField;
    SelProdutosVOLUME: TFloatField;
    SelProdutosPROD_PESAVEL: TIBStringField;
    SelProdutosETIQUETA_ENT: TIBStringField;
    SelProdutosATIVO: TIBStringField;
    SelProdutosULTIMO_FORNECEDOR: TIntegerField;
    SelProdutosFORNECEDOR: TIntegerField;
    SelProdutosSUBUNIDADE: TIntegerField;
    SelProdutosPRC_CUSTO_CODIF: TIBStringField;
    SelProdutosCODIGO_INTERNO: TIntegerField;
    SelProdutosDT_ULT_ATU_PRECO: TDateTimeField;
    SelProdutosCUSTO_AQUISICAO: TFloatField;
    SelProdutosVENDE_FRACIONADO: TIBStringField;
    SelProdutosQNTDE_EXPOSTA: TFloatField;
    SelProdutosPOSSUI_LOTE: TIBStringField;
    SelProdutosQNTDE_MAXIMA_VENDA: TFloatField;
    SelProdutosPIS: TIBStringField;
    SelProdutosCOFINS: TIBStringField;
    SelProdutosCOM_VENDA_VLR: TFloatField;
    SelProdutosCOM_VENDA_PCT: TFloatField;
    SelProdutosPARTICIP_LUCRO: TFloatField;
    SelProdutosNAO_COBR_JUR_ATE: TIntegerField;
    SelProdutosPREVISAO_ENTREGA: TDateTimeField;
    SelProdutosQNTDE_PEDIDA: TFloatField;
    SelProdutosATUALIZA_ARQ_EXTERNO: TIBStringField;
    SelProdutosSERVICO: TIBStringField;
    SelProdutosVALIDADE: TIntegerField;
    SelProdutosCUSTO_INDEXADO: TFloatField;
    SelProdutosCOMPLEMENTO: TIBStringField;
    SelProdutosATUALIZAR: TIBStringField;
    SelProdutosEST_MIN: TFloatField;
    SelProdutosEST_MAX: TFloatField;
    SelProdutosMODELO: TIntegerField;
    SelProdutosNOME_MODELO: TIBStringField;
    SelProdutosSERIE: TIBStringField;
    SelProdutosDEBITA_ICMS: TIBStringField;
    SelProdutosSECAO: TIntegerField;
    SelOS: TIBQuery;
    SelOSCODIGO: TIntegerField;
    SelOSOS: TIBStringField;
    OsPendencia: TIBDataSet;
    SelOrdens_ServicosCIDADE: TIBStringField;
    OS_INTERVALOKM_INICIAL: TFloatField;
    OS_INTERVALOKM_FINAL: TFloatField;
    SelCidade: TIBQuery;
    SelCidadeCODIGO: TIntegerField;
    SelCidadeCIDADE: TIBStringField;
    PreventivaOSNOME_CIDADE: TIBStringField;
    PreventivaOSNOME_REGIAO: TIBStringField;
    PreventivaOSNOME_TIPO_CONTRATO: TIBStringField;
    OS_INTERVALOQTDE_HORA: TFloatField;
    OsPendenciaCNPJ: TIBStringField;
    OsPendenciaCODIGO: TIntegerField;
    OsPendenciaDT_PENDENCIA: TDateTimeField;
    OsPendenciaOBS: TBlobField;
    OsPendenciaOS_VINCULADA: TIntegerField;
    OsPendenciaPRODUTO: TIBStringField;
    OsPendenciaQTDE_CREDITADA: TFloatField;
    OsPendenciaQTDE_PENDENTE: TFloatField;
    OsPendenciaST_SERVICO: TIBStringField;
    OsPendenciaUSR_ESTOQUE: TIntegerField;
    OsPendenciaUSR_RESPONSAVEL: TIntegerField;
    OsPendenciaUsuriorequisitante: TIBStringField;
    OsPendenciaUsurioResponsvel: TIBStringField;
    OsPendenciaNomeproduto: TIBStringField;
    OsPendenciaST_PEDIDO: TIBStringField;
    SelContrato2: TIBQuery;
    SelContrato2CONTRATO: TIBStringField;
    SelContrato2PSA_CODIGO: TIntegerField;
    SelContrato2CODIGO: TIntegerField;
    SelOrdens_ServicosTEMPO_GASTO: TFloatField;
    SelOrdens_ServicosTEMPO_RESPOSTA: TFloatField;
    ContratosItens: TIBDataSet;
    ContratosItensCNPJ: TIBStringField;
    ContratosItensCODIGO: TIntegerField;
    ContratosItensCOD_PRODUTO: TIBStringField;
    ContratosItensCONTRATO: TIntegerField;
    ContratosItensDT_ADICAO: TDateTimeField;
    ContratosItensDATA: TDateTimeField;
    ContratosItensATIVO: TIBStringField;
    ContratosItensPRODUTO: TIBStringField;
    ContratosItensTIPO_PRODUTO: TIBStringField;
    OS_INTERVALOTEMPO_VIAJEM: TFloatField;
    TipoAtendimentoRETORNO: TIBStringField;
    SelOrdens_ServicosREG_DESCRICAO: TIBStringField;
    SelOrdens_ServicosMDL_NOME: TIBStringField;
    SelEquipClienteDT_FIM: TDateTimeField;
    SelEquipClienteCODIGO_CONTRATO: TIntegerField;
    SelEquipClienteATIVO: TIBStringField;
    SelOrdens_ServicosID_CONTRATO: TIntegerField;
    SelTecnicoEMAIL: TIBStringField;
    OS_INTERVALOUSUARIO: TIntegerField;
    OS_INTERVALONOME_USUARIO: TIBStringField;
    OS_INTERVALO_EMAIL: TIBDataSet;
    OS_INTERVALO_EMAILCNPJ: TIBStringField;
    OS_INTERVALO_EMAILCODIGO: TIntegerField;
    OS_INTERVALO_EMAILASSUNTO: TIBStringField;
    OS_INTERVALO_EMAILDE: TIBStringField;
    OS_INTERVALO_EMAILENVIADO: TIBStringField;
    OS_INTERVALO_EMAILSEQUENCIA: TIntegerField;
    OS_INTERVALO_EMAILCOD_INTERVALO: TIntegerField;
    OS_INTERVALO_EMAILDATA: TDateTimeField;
    OS_INTERVALO_EMAILPARA: TIBStringField;
    dsIntervalo: TDataSource;
    OS_INTERVALOCUSTO_HORA: TFloatField;
    OS_INTERVALONOME_TECNICO: TIBStringField;
    OS_INTERVALOCOD_TECNICO: TIntegerField;
    OS_INTERVALOCUSTO_ATIVIDADE: TFloatField;
    SelTecnico2: TIBQuery;
    SelTecnico2CODIGO: TIntegerField;
    SelTecnico2NOME: TIBStringField;
    SelTecnico2EMAIL: TIBStringField;
    OrdemPREVENTIVO: TIBStringField;
    OrdemID_CONTRATO: TIntegerField;
    SelEmail: TIBQuery;
    SelEmailNOME: TIBStringField;
    SelEmailEMAIL: TIBStringField;
    OS_INTERVALO_ANEXO: TIBDataSet;
    OS_INTERVALO_ANEXOCNPJ: TIBStringField;
    OS_INTERVALO_ANEXOCODIGO: TIntegerField;
    OS_INTERVALO_ANEXOANEXO: TBlobField;
    OS_INTERVALO_ANEXOSEQUENCIA: TIntegerField;
    OS_INTERVALO_ANEXOFILENAME: TIBStringField;
    OS_INTERVALO_ANEXOTAMANHO: TFloatField;
    OrdemCOD_CONTATO: TIntegerField;
    OrdemPRIORIDADE: TIntegerField;
    SelOrdens_ServicosPRIORIDADE: TIntegerField;
    SelOrdens_ServicosCUSTO_OS: TFloatField;
    OS_INTERVALOTIPO: TIBStringField;
    OS_INTERVALO_EMAILTIPO: TIBStringField;
    OS_INTERVALO_EMAIL_INSERT: TIBDataSet;
    OS_INTERVALO_EMAIL_INSERTCNPJ: TIBStringField;
    OS_INTERVALO_EMAIL_INSERTCODIGO: TIntegerField;
    OS_INTERVALO_EMAIL_INSERTASSUNTO: TIBStringField;
    OS_INTERVALO_EMAIL_INSERTDE: TIBStringField;
    OS_INTERVALO_EMAIL_INSERTPARA: TIBStringField;
    OS_INTERVALO_EMAIL_INSERTENVIADO: TIBStringField;
    OS_INTERVALO_EMAIL_INSERTSEQUENCIA: TIntegerField;
    OS_INTERVALO_EMAIL_INSERTCOD_INTERVALO: TIntegerField;
    OS_INTERVALO_EMAIL_INSERTDATA: TDateTimeField;
    OS_INTERVALO_EMAIL_INSERTTIPO: TIBStringField;
    SelOrdens_ServicosINFORMACOES: TBlobField;
    SelOrdens_ServicosOBS_FECHAMENTO: TBlobField;
    OrdemCUSTO_OS: TFloatField;
    OrdemCONTROLE: TIntegerField;
    SelPessoasFJ2: TIBQuery;
    SelPessoasFJ2CODIGO: TIntegerField;
    SelPessoasFJ2PESSOA_FJ: TIntegerField;
    SelPessoasFJ2NOME_RAZAO: TIBStringField;
    SelPessoasFJ2FONE: TIBStringField;
    SelPessoasFJ2FANTASIA: TIBStringField;
    SelPessoasFJ2CPF_CGC: TIBStringField;
    SelPessoasFJ2BLOQUEADO: TIBStringField;
    SelPessoasFJ2CLASSIFICACAO: TIBStringField;
    SelPessoasFJ2UF: TIBStringField;
    SelPessoasFJ2EMPRESA: TIBStringField;
    SelTecnicoASSINATURA: TMemoField;
    OrdemASSUNTO: TIBStringField;
    SelTecnico3: TIBQuery;
    SelTecnico3CODIGO: TIntegerField;
    SelTecnico3NOME: TIBStringField;
    SelStatus2: TIBQuery;
    SelStatus2CODIGO: TIntegerField;
    SelStatus2NOME: TIBStringField;
    OS_INTERVALODT_INICIO: TDateField;
    OS_INTERVALODT_LANCTO: TDateField;
    OS_INTERVALODT_VENCTO: TDateField;
    OS_INTERVALODT_CONCLUSAO: TDateField;
    OS_INTERVALODT_FIM: TDateField;
    SelTecnico2ASSINATURA: TMemoField;
    SelTecnico4: TIBQuery;
    SelTecnico4CODIGO: TIntegerField;
    SelTecnico4NOME: TIBStringField;
    SelTecnico4EMAIL: TIBStringField;
    SelTecnico4ASSINATURA: TMemoField;
    OS_INTERVALOCOD_TIPO_MOVTO: TIntegerField;
    OS_INTERVALOCOD_CONTATO: TIntegerField;
    OS_INTERVALOCOD_VEICULO: TIBStringField;
    OS_INTERVALOCOD_STATUS: TIntegerField;
    SelStatus3: TIBQuery;
    SelStatus3CODIGO: TIntegerField;
    SelStatus3NOME: TIBStringField;
    SelMovimentos: TIBQuery;
    SelMovimentosCNPJ: TIBStringField;
    SelMovimentosCODIGO: TIntegerField;
    SelMovimentosDT_FIM: TDateField;
    SelMovimentosDT_INICIO: TDateField;
    SelMovimentosHR_INICIO: TTimeField;
    SelMovimentosHR_FIM: TTimeField;
    SelMovimentosSEQUENCIA: TIntegerField;
    SelMovimentosOBSERVACAO: TMemoField;
    SelMovimentosQTDE_HORA: TFloatField;
    SelMovimentosKM_RODADO: TFloatField;
    SelMovimentosKM_INICIAL: TFloatField;
    SelMovimentosKM_FINAL: TFloatField;
    SelMovimentosTEMPO_VIAJEM: TFloatField;
    SelMovimentosUSUARIO: TIntegerField;
    SelMovimentosCOD_TIPO_MOVTO: TIntegerField;
    SelMovimentosNOME_USUARIO: TIBStringField;
    SelMovimentosNOME_TECNICO: TIBStringField;
    SelMovimentosCOD_TECNICO: TIntegerField;
    SelMovimentosNOME_TECNICO_OS: TIBStringField;
    SelMovimentosCOD_TECNICO_OS: TIntegerField;
    SelMovimentosCUSTO_HORA: TFloatField;
    SelMovimentosCUSTO_ATIVIDADE: TFloatField;
    SelMovimentosTIPO: TIBStringField;
    SelMovimentosDT_LANCTO: TDateField;
    SelMovimentosDT_VENCTO: TDateField;
    SelMovimentosDT_CONCLUSAO: TDateField;
    SelMovimentosCOD_CONTATO: TIntegerField;
    SelMovimentosCOD_STATUS: TIntegerField;
    SelMovimentosCOD_VEICULO: TIBStringField;
    SelMovimentosCOD_STATUS1: TIntegerField;
    SelMovimentosST_COR: TIntegerField;
    SelMovimentosSTATUS_MOVTO: TIBStringField;
    SelMovimentosCOD_TIPO_MOVTO1: TIntegerField;
    SelMovimentosTIPO_MOVTO: TIBStringField;
    SelMovimentosCOD_STATUS_OS: TIntegerField;
    SelMovimentosST_COR_OS: TIntegerField;
    SelMovimentosSTATUS_OS: TIBStringField;
    SelMovimentosCOD_CONTATO_MOVTO: TIntegerField;
    SelMovimentosCONTATO_MOVTO: TIBStringField;
    SelMovimentosCOD_CONTATO_OS: TIntegerField;
    SelMovimentosCONTATO_OS: TIBStringField;
    SelMovimentosCOD_CLIENTES: TIntegerField;
    SelMovimentosCLIENTE_OS: TIBStringField;
    SelMovimentosDEF_CODIGO: TIntegerField;
    SelMovimentosDEF_NOME: TIBStringField;
    SelMovimentosMTC_CODIGO: TIntegerField;
    SelMovimentosMTC_NOME: TIBStringField;
    SelMovimentosTPA_CODIGO: TIntegerField;
    SelMovimentosTPA_NOME: TIBStringField;
    SelOrdens_ServicosMovto: TIBQuery;
    SelPessoasF3: TIBQuery;
    SelPessoasF3CODIGO: TIntegerField;
    SelPessoasF3PESSOA_FJ: TIntegerField;
    SelPessoasF3NOME_RAZAO: TIBStringField;
    SelPessoasF3FONE: TIBStringField;
    SelPessoasF3FANTASIA: TIBStringField;
    SelPessoasF3CPF_CGC: TIBStringField;
    SelPessoasF3BLOQUEADO: TIBStringField;
    SelPessoasF3CLASSIFICACAO: TIBStringField;
    SelPessoasF3UF: TIBStringField;
    SelPessoasF3EMPRESA: TIBStringField;
    SelVeiculo: TIBQuery;
    SelVeiculoCODIGO: TIntegerField;
    SelVeiculoPLACA: TIBStringField;
    SelVeiculoCOR: TIBStringField;
    OrdemVEICULO: TIntegerField;
    SelOrdens_ServicosCONTROLE: TIntegerField;
    SelOrdens_ServicosVEICULO: TIBStringField;
    SelOrdens_ServicosPLACA: TIBStringField;
    SelVeiculoMODELO: TIBStringField;
    OrdemKM: TIntegerField;
    qryCamposOrdemServico: TIBQuery;
    IntegerField1: TIntegerField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    DateTimeField3: TDateTimeField;
    FloatField1: TFloatField;
    IBStringField1: TIBStringField;
    IntegerField2: TIntegerField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    IntegerField3: TIntegerField;
    IBStringField2: TIBStringField;
    IntegerField4: TIntegerField;
    IBStringField3: TIBStringField;
    IntegerField5: TIntegerField;
    IBStringField4: TIBStringField;
    IntegerField6: TIntegerField;
    IBStringField5: TIBStringField;
    IntegerField7: TIntegerField;
    IBStringField6: TIBStringField;
    IntegerField8: TIntegerField;
    IBStringField7: TIBStringField;
    IntegerField9: TIntegerField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    DateTimeField4: TDateTimeField;
    TimeField1: TTimeField;
    TimeField2: TTimeField;
    IntegerField13: TIntegerField;
    IBStringField11: TIBStringField;
    TimeField3: TTimeField;
    IBStringField12: TIBStringField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    IBStringField13: TIBStringField;
    IBStringField14: TIBStringField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    FloatField6: TFloatField;
    BlobField1: TBlobField;
    BlobField2: TBlobField;
    IntegerField17: TIntegerField;
    IBStringField15: TIBStringField;
    IBStringField16: TIBStringField;
    SelServicos_ItensNOMETEC: TIBStringField;
    SelServicos_ItensCODIGO_TECNICO: TIntegerField;
    Servicos_ItensCODIGO_TECNICO: TIntegerField;
    Servicos_ItensNOMETEC: TIBStringField;
    OrdemCOD_GRAVIDADE: TIntegerField;
    OrdemPROTOCOLO: TIBStringField;
    SelOrdens_ServicosPROTOCOLO: TIBStringField;
    OFC_GRAVIDADE: TIBDataSet;
    OFC_GRAVIDADECNPJ: TIBStringField;
    OFC_GRAVIDADECODIGO: TIntegerField;
    OFC_GRAVIDADEDESCRICAO: TIBStringField;
    OFC_GRAVIDADETITULO: TIBStringField;
    OrdemGCNPJ: TIBStringField;
    OrdemGCODIGO: TIntegerField;
    OrdemTITULO: TIBStringField;
    OS_INTERVALOOBSERVACAO: TIBStringField;
    SelOrdens_ServicosMovtoCOD_GRAVIDADE: TIntegerField;
    SelOrdens_ServicosMovtoTITULO: TIBStringField;
    SelOrdens_ServicosMovtoCNPJ: TIBStringField;
    SelOrdens_ServicosMovtoCODIGO: TIntegerField;
    SelOrdens_ServicosMovtoDT_FIM: TDateField;
    SelOrdens_ServicosMovtoDT_INICIO: TDateField;
    SelOrdens_ServicosMovtoHR_INICIO: TTimeField;
    SelOrdens_ServicosMovtoHR_FIM: TTimeField;
    SelOrdens_ServicosMovtoSEQUENCIA: TIntegerField;
    SelOrdens_ServicosMovtoOBSERVACAO: TIBStringField;
    SelOrdens_ServicosMovtoQTDE_HORA: TFloatField;
    SelOrdens_ServicosMovtoKM_RODADO: TFloatField;
    SelOrdens_ServicosMovtoKM_INICIAL: TFloatField;
    SelOrdens_ServicosMovtoKM_FINAL: TFloatField;
    SelOrdens_ServicosMovtoTEMPO_VIAJEM: TFloatField;
    SelOrdens_ServicosMovtoUSUARIO: TIntegerField;
    SelOrdens_ServicosMovtoCOD_TIPO_MOVTO: TIntegerField;
    SelOrdens_ServicosMovtoNOME_USUARIO: TIBStringField;
    SelOrdens_ServicosMovtoNOME_TECNICO: TIBStringField;
    SelOrdens_ServicosMovtoCOD_TECNICO: TIntegerField;
    SelOrdens_ServicosMovtoNOME_TECNICO_OS: TIBStringField;
    SelOrdens_ServicosMovtoCOD_TECNICO_OS: TIntegerField;
    SelOrdens_ServicosMovtoCUSTO_HORA: TFloatField;
    SelOrdens_ServicosMovtoCUSTO_ATIVIDADE: TFloatField;
    SelOrdens_ServicosMovtoTIPO: TIBStringField;
    SelOrdens_ServicosMovtoDT_LANCTO: TDateField;
    SelOrdens_ServicosMovtoDT_VENCTO: TDateField;
    SelOrdens_ServicosMovtoDT_CONCLUSAO: TDateField;
    SelOrdens_ServicosMovtoCOD_CONTATO: TIntegerField;
    SelOrdens_ServicosMovtoCOD_VEICULO: TIBStringField;
    SelOrdens_ServicosMovtoCOD_STATUS: TIntegerField;
    SelOrdens_ServicosMovtoST_COR: TIntegerField;
    SelOrdens_ServicosMovtoSTATUS_MOVTO: TIBStringField;
    SelOrdens_ServicosMovtoCOD_TIPO_MOVTO1: TIntegerField;
    SelOrdens_ServicosMovtoTIPO_MOVTO: TIBStringField;
    SelOrdens_ServicosMovtoCOD_STATUS_OS: TIntegerField;
    SelOrdens_ServicosMovtoST_COR_OS: TIntegerField;
    SelOrdens_ServicosMovtoSTATUS_OS: TIBStringField;
    SelOrdens_ServicosMovtoCOD_CONTATO_MOVTO: TIntegerField;
    SelOrdens_ServicosMovtoCONTATO_MOVTO: TIBStringField;
    SelOrdens_ServicosMovtoCOD_CONTATO_OS: TIntegerField;
    SelOrdens_ServicosMovtoCONTATO_OS: TIBStringField;
    SelOrdens_ServicosMovtoCOD_CLIENTES: TIntegerField;
    SelOrdens_ServicosMovtoCLIENTE_OS: TIBStringField;
    SelOrdens_ServicosMovtoDEF_CODIGO: TIntegerField;
    SelOrdens_ServicosMovtoDEF_NOME: TIBStringField;
    SelOrdens_ServicosMovtoMTC_CODIGO: TIntegerField;
    SelOrdens_ServicosMovtoMTC_NOME: TIBStringField;
    SelOrdens_ServicosMovtoTPA_CODIGO: TIntegerField;
    SelOrdens_ServicosMovtoTPA_NOME: TIBStringField;
    SelOrdens_ServicosMovtoASSUNTO: TIBStringField;
    SelEquipClienteINFORMACOES_ITENS: TMemoField;
    SelEquipClienteMODELO: TIBStringField;
    SelEquipClienteNOME: TIBStringField;
    OrdemST_FECHADO: TIBStringField;
    OrdemMAP_LAT: TIBStringField;
    OrdemMAP_LONG: TIBStringField;
    SelEndereco: TIBQuery;
    SelEnderecoMAP_LAT: TIBStringField;
    SelEnderecoMAP_LONG: TIBStringField;
    SelEnderecoLOGRADOURO: TIBStringField;
    SelEnderecoNUMERO: TIBStringField;
    SelEnderecoCIDADE: TIBStringField;
    SelEnderecoUF: TIBStringField;
    SelOrdens_ServicosMAP_LAT: TIBStringField;
    SelOrdens_ServicosMAP_LONG: TIBStringField;
    OrdemTAG: TIBStringField;
    OrdemSERIE: TIBStringField;
    QrySelSerie: TIBQuery;
    QrySelSerieCOD_CLIENTE: TIntegerField;
    QrySelSerieNOME_RAZAO: TIBStringField;
    QrySelSerieCOD_EQUIPAMENTO: TIBStringField;
    SelEquipClienteATIVO2: TIBStringField;
    SelEquipClienteCOD_ITEM: TIntegerField;
    SelEquipClienteTIPO_CONTRATO: TIBStringField;
    RetCodTecnico: TIBQuery;
    RetCodTecnicoCOD_TECNICO: TIntegerField;
    SelOrdens_ServicosDT_CILINDRO: TDateTimeField;
    SelOrdens_ServicosCT_CILINDRO: TIntegerField;
    SelOrdens_ServicosULT_DT_CILINDRO: TDateField;
    SelOrdens_ServicosULT_CT_CILINDRO: TIntegerField;
    DefeitoATIVO: TIBStringField;
    SelOrdens_ServicosCT_CILINDRO_SALDO_DIAS: TIntegerField;
    SelOrdens_ServicosCT_CILINDRO_SALDO_CONTADOR: TFloatField;
    MotivoChamadoATIVO: TIBStringField;
    procedure ServicosAfterClose(DataSet: TDataSet);
    procedure ServicosAfterInsert(DataSet: TDataSet);
    procedure ServicosBeforeOpen(DataSet: TDataSet);
    procedure ServicosBeforePost(DataSet: TDataSet);
    procedure ServicosNewRecord(DataSet: TDataSet);
    procedure Motores_ServicosNewRecord(DataSet: TDataSet);
    procedure Motores_ServicosSERVICOValidate(Sender: TField);
    procedure OrdemBeforeOpen(DataSet: TDataSet);
    procedure OrdemNewRecord(DataSet: TDataSet);
    procedure Servicos_ItensCalcFields(DataSet: TDataSet);
    procedure Servicos_ItensSERVICOValidate(Sender: TField);
    procedure Servicos_ItensNewRecord(DataSet: TDataSet);
    procedure Servicos_ItensSELECIONADOValidate(Sender: TField);
    procedure Consulta_OrdemCalcFields(DataSet: TDataSet);
    procedure Consulta_Ordem_ItensCalcFields(DataSet: TDataSet);
    procedure SelServicos_ItensCalcFields(DataSet: TDataSet);
    procedure Ordem_ParcelamentoNewRecord(DataSet: TDataSet);
    procedure Ctrl_QualidadeAfterInsert(DataSet: TDataSet);
    procedure Ctrl_QualidadeBeforeOpen(DataSet: TDataSet);
    procedure Ctrl_QualidadeMONTADOR_VIRABREQUIMValidate(Sender: TField);
    procedure Ctrl_QualidadeMONTADORValidate(Sender: TField);
    procedure Ctrl_QualidadeMONTADOR_CABECOTEValidate(Sender: TField);
    procedure Ctrl_QualidadeMONTADOR_BLOCOValidate(Sender: TField);
    procedure Ctrl_QualidadeMONTADOR_BIELAValidate(Sender: TField);
    procedure Ctrl_QualidadeMONTADOR_AJUSTEValidate(Sender: TField);
    procedure OS_MOVIMENTOSAfterInsert(DataSet: TDataSet);
    procedure OS_MOVIMENTOSBeforePost(DataSet: TDataSet);
    procedure OS_MOVIMENTOSNewRecord(DataSet: TDataSet);
    procedure Servicos_ItensQUANTIDADEValidate(Sender: TField);
    procedure Ordem_OrcNewRecord(DataSet: TDataSet);
    procedure Ordem_OrcCalcFields(DataSet: TDataSet);
    procedure Ordem_OrcMECANICOValidate(Sender: TField);
    procedure Ordem_OrcNATUREZAValidate(Sender: TField);
    procedure Ordem_OrcPESSOA_FJValidate(Sender: TField);
    procedure Ordem_OrcVIAJANTEValidate(Sender: TField);
    procedure Ordem_OrcMOTORValidate(Sender: TField);
    procedure Ordem_OrcFORMA_PAGTOValidate(Sender: TField);
    procedure Servicos_Itens_OrcCalcFields(DataSet: TDataSet);
    procedure Servicos_Itens_OrcNewRecord(DataSet: TDataSet);
    procedure Servicos_Itens_OrcQUANTIDADEValidate(Sender: TField);
    procedure Servicos_Itens_OrcSERVICOValidate(Sender: TField);
    procedure Servicos_Itens_OrcSELECIONADOValidate(Sender: TField);
    procedure SelServicos_Itens_OrcCalcFields(DataSet: TDataSet);
    procedure Consulta_Ordem_OrcCalcFields(DataSet: TDataSet);
    procedure Consulta_Ordem_Itens_OrcCalcFields(DataSet: TDataSet);
    procedure Saida_PatrimonioNewRecord(DataSet: TDataSet);
    procedure Garantias_PatrimonioNewRecord(DataSet: TDataSet);
    procedure GarantiasCalcFields(DataSet: TDataSet);
    procedure GarantiasNewRecord(DataSet: TDataSet);
    procedure FaturaGarantiasCalcFields(DataSet: TDataSet);
    procedure GarantiasFORMA_PGTOValidate(Sender: TField);
    procedure GarantiasPESSOA_FJValidate(Sender: TField);
    procedure GarantiasVENDEDORValidate(Sender: TField);
    procedure Garantias_ItensPRODUTOValidate(Sender: TField);
    procedure Garantias_ItensDESCONTOValidate(Sender: TField);
    procedure Garantias_ItensCalcFields(DataSet: TDataSet);
    procedure Garantias_ItensNewRecord(DataSet: TDataSet);
    procedure Garantias_ParcNewRecord(DataSet: TDataSet);
    procedure OrdemDEFEITO_RECLAMADOValidate(Sender: TField);
    procedure OS_MOVIMENTOSTIPO_DESPESAGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure OS_MOVIMENTOSTIPO_DESPESASetText(Sender: TField;
      const Text: String);
    procedure Fat_VendasItensCalcFields(DataSet: TDataSet);
    procedure Motores_ServicosAfterInsert(DataSet: TDataSet);
    procedure TipoAtendimentoAfterClose(DataSet: TDataSet);
    procedure TipoAtendimentoAfterInsert(DataSet: TDataSet);
    procedure DefeitoBeforeOpen(DataSet: TDataSet);
    procedure TipoAtendimentoBeforeOpen(DataSet: TDataSet);
    procedure MotivoChamadoAfterClose(DataSet: TDataSet);
    procedure MotivoChamadoAfterInsert(DataSet: TDataSet);
    procedure MotivoChamadoBeforeOpen(DataSet: TDataSet);
    procedure SelStatusBeforeOpen(DataSet: TDataSet);
    procedure Servicos_ItensPRODUTOValidate(Sender: TField);
    procedure OrdemAfterPost(DataSet: TDataSet);
    procedure SelOrdens_ServicosCalcFields(DataSet: TDataSet);
    procedure ContratosItensCalcFields(DataSet: TDataSet);
    procedure SelModelosProdutoBeforeOpen(DataSet: TDataSet);
    procedure OS_INTERVALOBeforePost(DataSet: TDataSet);
    procedure OS_INTERVALOAfterInsert(DataSet: TDataSet);
    procedure OS_INTERVALOAfterPost(DataSet: TDataSet);
    procedure OsPendenciaNewRecord(DataSet: TDataSet);
    procedure OS_INTERVALOKM_INICIALChange(Sender: TField);
    procedure PreventivaOSCONTRATO_ATIVOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure SelContrato2BeforeOpen(DataSet: TDataSet);
    procedure OS_INTERVALO_EMAILNewRecord(DataSet: TDataSet);
    procedure OS_INTERVALO_ANEXONewRecord(DataSet: TDataSet);
    procedure OrdemBeforePost(DataSet: TDataSet);
    procedure OS_INTERVALO_EMAIL_INSERTNewRecord(DataSet: TDataSet);
    procedure OS_INTERVALONewRecord(DataSet: TDataSet);
    procedure Servicos_ItensAfterPost(DataSet: TDataSet);
    procedure OFC_GRAVIDADEBeforePost(DataSet: TDataSet);
    procedure OrdemPESSOA_FJChange(Sender: TField);
    procedure OrdemSERIEChange(Sender: TField);
    procedure OrdemPRODUTOValidate(Sender: TField);
  private
    { Private declarations }
    procedure LOG_STATUS(old_status,new_status,usuario, cod_ordem, cod_cliente: integer);
  public
    { Public declarations }

    NDocto: Integer ;
    BLOQUEADO: STRING;

    Ven_Requisicao     : String[1] ;
    Ven_Dia_Pref_Fat   : Integer   ;
    Ven_Limite_Tempo   : Integer   ;
    Ven_Limite_Credito : Real      ;

    function ValidaDataHora(DataMenor, DataMaior: String; HoraMenor, HoraMaior: TTime; MsgData, MsgHora : String): Boolean;
    procedure Parcela_Garantias;
    procedure Proc_Imprime_Ordem( Codigo: Integer ) ;
    procedure Proc_Imprime_Ordem_Orc( Codigo: Integer ) ;
    procedure Imprime_Controle( Codigo: Integer ) ;
    procedure VerPessoa (Codigo: Integer);
    procedure ParcelaOrdens ;
    procedure Proc_Imprime_Garantia( CodGarantia: Integer ) ;
    procedure Apaga_Item_Ordem(Codigo: integer; produto: string; servico: integer);
    procedure Apaga_Item_Ordem_Orc (Codigo, Servico: Integer);

    function  BuscaValorServico ( Servico: Integer; Motor: Integer ): Real;
    procedure Propriedades ( Pessoa: Integer );
  end;

var
  DmServicos: TDmServicos;

implementation

uses Application_DM,
     Cadastros_DM,
     Funcoes,
     Ordens_Servicos_Form,
     MensagemFaturamento_Form,
     EntraDescricao_Form,
     Localizar_Ordens,
     Garantias_Form,
     GarantiasItens_Form, Ordens_ServicosItens_Orc_Form, Motores_Form,
  Vendas_Dm, Ordens_ServicosItens_Form, Cadastros_Dm2, Vendas_DM2,
  Empresas_DM;

{$R *.DFM}

procedure TDmServicos.Apaga_Item_Ordem(Codigo: INTEGER; produto:string; servico: integer);
Begin
     TRY
        APAGA_ITEM_SERVICO.transaction := DMApp.Transaction;
        APAGA_ITEM_SERVICO.ParamByName('CNPJ').asString  := DmApp.Cnpj ;
        APAGA_ITEM_SERVICO.ParamByName('CODIGO').asInteger := Codigo;
        APAGA_ITEM_SERVICO.ParamByName('PRODUTO').asString := produto;
        APAGA_ITEM_SERVICO.ParamByName('SERVICO').asInteger := servico;
        APAGA_ITEM_SERVICO.ExecProc;

        DMApp.Transaction.CommitRetaining;
     except
        DmApp.TransactionProc.RollbackRetaining;
     end;
end;

procedure TDmServicos.Apaga_Item_Ordem_Orc (Codigo, Servico: Integer);
Begin
     TRY
        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        APAGA_ORDEM_SERVICO_SERVICO_ORC.ParamByName  ('CNPJ'     ).asString  := DmApp.Cnpj ;
        APAGA_ORDEM_SERVICO_SERVICO_ORC.ParamByName  ('CODIGO'   ).asInteger := Codigo     ;
        APAGA_ORDEM_SERVICO_SERVICO_ORC.ParamByName  ('SERVICO'  ).asInteger := Servico    ;

        APAGA_ORDEM_SERVICO_SERVICO_ORC.ExecProc;

        DmApp.TransactionProc.Commit ;
     except
        DmApp.TransactionProc.Rollback ;
     end;
end;

function TDmServicos.BuscaValorServico ( Servico: Integer; Motor: Integer ): Real;
begin
     VALOR_SERVICO_MOTOR.CLOSE ;

     VALOR_SERVICO_MOTOR.ParamByName('CNPJ'        ).asString  := dmapp.CNPJ  ;
     VALOR_SERVICO_MOTOR.ParamByName('MOTOR'       ).asInteger := Motor       ;
     VALOR_SERVICO_MOTOR.ParamByName('SERVICO'     ).asInteger := Servico     ;

     VALOR_SERVICO_MOTOR.ExecProc;

     RESULT := VALOR_SERVICO_MOTOR.ParamByName('VALOR').asFloat;

     VALOR_SERVICO_MOTOR.CLOSE ;
end;

procedure TDmServicos.Proc_Imprime_Garantia( CodGarantia: Integer ) ;
begin
     Consulta_Garantia.Close ;

     Consulta_Garantia.ParamByName ('CNPJ'   ).AsString  := DmApp.Cnpj   ;
     Consulta_Garantia.ParamByName ('CODIGO' ).AsInteger := CodGarantia ;

     Consulta_Garantia.Prepare ;

     Consulta_Garantia.Open ;

     If Consulta_Garantia.Fields[0].isNull
     then Begin
          Showmessage ('Garantia Não Cadastrada, Verifique!');
          Exit;
     end;

     //Itens da Garantia
     Consulta_Garantia_Itens.Close ;

     Consulta_Garantia_Itens.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     Consulta_Garantia_Itens.ParamByName ('CODIGO').AsInteger := CodGarantia ;

     Consulta_Garantia_Itens.Prepare ;

     Consulta_Garantia_Itens.Open ;

     //Parcelas da Garantia
     Consulta_Garantia_Parc.Close ;

     Consulta_Garantia_Parc.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     Consulta_Garantia_Parc.ParamByName ('CODIGO').AsInteger := CodGarantia ;

     Consulta_Garantia_Parc.Prepare ;

     Consulta_Garantia_Parc.Open ;
end;

procedure TDmServicos.Parcela_Garantias;
Var
   Total, Valor              : Real      ;
   SaldoRest                 : Real      ;
   Parcelas, Intervalo, I, J : Integer   ;
   Vencimento                : TDateTime ;
   Dia, Mes, Ano             : Word      ;
begin
     //Apaga as Parcelas da Venda
     DmApp.Apaga_Parcelas_Garantias ( DmApp.Cnpj, FaturaGarantiasCODIGO.Value );

     garantias_Parc.Close ;
     garantias_Parc.Open  ;

     //Faz o Parcelamento Automático das Vendas
     Total := Dsgarantias.DataSet.FieldByName('Total_Parcelar').AsFloat ;

     Valida_Forma.Close ;

     Valida_Forma.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     Valida_Forma.ParamByName ('CODIGO').AsInteger := Dsgarantias.DataSet.FieldByName('FORMA_PGTO').AsInteger ;

     Valida_Forma.Prepare ;
     Valida_Forma.Open ;

     //Saldo Restante
     SaldoRest := Total ;

     //Numero de Parcelas
     Parcelas  := Valida_FormaNPARCELAS.Value ;

     J := Parcelas ;

     //PARCELAMENTO COM OS VALORES SEMPRE INTEIROS
     //UTILIZADO EM LOJAS DE ROUPAS E CALCADOS
     If DmApp.FAT_TIPO_PARCEL = 'Int' THEN
     BEGIN
          If Parcelas > 0 then
              Valor     := TRUNC(Total / Parcelas)
          Else
              Valor     := 0;

          //A PRIMEIRA PARCELA DEVERÁ SER A MAIOR  ????/#$@@!!!
          Valor := Total - Valor * ( Parcelas - 1 );

          //Intervalo
          Intervalo := Valida_FormaINTERVALO.Value ;

          //Contador
          I := 1;

          garantias_Parc.DisableControls ;
          Vencimento :=Dsgarantias.DataSet.FieldByName('DATA').AsDateTime ;
          While I <= J do
          Begin
               //Vencimento
               Vencimento := Vencimento + Intervalo ;

               If (Ven_Dia_Pref_Fat > 0) and (Ven_Dia_Pref_Fat < 30) then
               begin
                    Decodedate(Vencimento, Ano, Mes, Dia);

                    If ( Mes = 2 ) and ( Ven_Dia_Pref_Fat > 28 ) then
                      Vencimento := Encodedate(Ano, Mes, 28)
                    Else
                      Vencimento := Encodedate(Ano, Mes, Ven_Dia_Pref_Fat);
               end;

               garantias_Parc.Append;
               garantias_ParcVALOR.Value   := Valor      ;
               garantias_ParcVENCTO.Value  := Vencimento ;
               garantias_ParcPARCELA.Value := IntToStr(I) + '/' + IntToStr(J) ;
               SaldoRest := SaldoRest - Valor ;
               Parcelas := Parcelas - 1 ;

               IF Parcelas > 0 THEN
                 Valor := SaldoRest / Parcelas  ;

               garantias_Parc.Post ;
               I := I + 1;
          end;
     end
     else
     begin
       if Parcelas > 0 then
         Valor     := Total / Parcelas
       else
         Valor     := 0;

       //Intervalo
       Intervalo := Valida_FormaINTERVALO.Value ;

       //Contador
       I := 1;

       garantias_Parc.DisableControls ;

       Vencimento :=Dsgarantias.DataSet.FieldByName('DATA').AsDateTime ;

       while I <= J do
       Begin
         //Vencimento
         Vencimento := Vencimento + Intervalo ;

         If (Ven_Dia_Pref_Fat > 0) and (Ven_Dia_Pref_Fat < 30) then
         begin
           Decodedate(Vencimento, Ano, Mes, Dia);

           If ( Mes = 2 ) and ( Ven_Dia_Pref_Fat > 28 ) then
             Vencimento := Encodedate(Ano, Mes, 28)
           Else
             Vencimento := Encodedate(Ano, Mes, Ven_Dia_Pref_Fat);
         end;

         garantias_Parc.Append;
         garantias_ParcVALOR.Value   := Valor      ;
         garantias_ParcVENCTO.Value  := Vencimento ;
         garantias_ParcPARCELA.Value := IntToStr(I) + '/' + IntToStr(J) ;
         SaldoRest := SaldoRest - Valor ;
         Parcelas := Parcelas - 1 ;

         if Parcelas > 0 THEN
           Valor := SaldoRest / Parcelas  ;

         garantias_Parc.Post ;
         I := I + 1;
       end;
     end;
     garantias_Parc.EnableControls ;
end;

procedure TDmServicos.ParcelaOrdens;
Var
   Total, Valor              : Real      ;
   SaldoRest                 : Real      ;
   Parcelas, Intervalo, I, J : Integer   ;
   Vencimento                : TDateTime ;
   Dia, Mes, Ano             : Word      ;
begin
     //Faz o Parcelamento Automático das Vendas
     Total := Arredonda(DsOrdem.DataSet.FieldByName('Total_Parcelar').AsFloat,2) ;

     Valida_Forma.Close ;

     Valida_Forma.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     Valida_Forma.ParamByName ('CODIGO').AsInteger := DsOrdem.DataSet.FieldByName('FORMA_PAGTO').AsInteger ;

     Valida_Forma.Prepare ;
     Valida_Forma.Open ;

     //Saldo Restante
     SaldoRest := Total ;

     //Numero de Parcelas
     Parcelas  := Valida_FormaNPARCELAS.Value ;

     J := Parcelas ;

     If Parcelas > 0
     then
         Valor     := arredonda((Total / Parcelas),2)
     Else
         Valor     := 0;

     //Intervalo
     Intervalo := Valida_FormaINTERVALO.Value ;

     //Contador
     I := 1;

     Ordem_Parcelamento.DisableControls ;

     If DsOrdem.DataSet.FieldByName('DATA').ISNULL
     THEN BEGIN
          Vencimento := DsOrdem.DataSet.FieldByName('DATA').AsDateTime ;
     END
     ELSE BEGIN
          Vencimento := DsOrdem.DataSet.FieldByName('DATA').AsDateTime ;
     END;

     While I <= J do
     Begin
          //Vencimento
          Vencimento := Vencimento + Intervalo ;

          If (Ven_Dia_Pref_Fat > 0) and (Ven_Dia_Pref_Fat < 30)
          then begin
               Decodedate(Vencimento, Ano, Mes, Dia);

               If ( Mes = 2 ) and ( Ven_Dia_Pref_Fat > 28 )
               then
                   Vencimento := Encodedate(Ano, Mes, 28)
               Else
                   Vencimento := Encodedate(Ano, Mes, Ven_Dia_Pref_Fat);
          end;

          Ordem_Parcelamento.Append;

          Ordem_ParcelamentoVALOR.Value   := ARREDONDA(Valor,2)      ;
          Ordem_ParcelamentoVENCTO.Value  := Vencimento ;

          SaldoRest := ARREDONDA(SaldoRest - Valor,2) ;

          Parcelas := Parcelas - 1 ;

          IF Parcelas > 0
          THEN
              Valor := ARREDONDA(SaldoRest / Parcelas,2)  ;

          Ordem_Parcelamento.Post ;

          I := I + 1;
     end;

     Ordem_Parcelamento.EnableControls ;
end;

procedure TDmServicos.VerPessoa (Codigo: Integer);
begin
     //Dados da Pessoa
     Ver_Pessoa.Close ;

     Ver_Pessoa.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     Ver_Pessoa.ParamByName ('COD').AsInteger    := Codigo       ;

     Ver_Pessoa.Prepare ;

     Ver_Pessoa.Open ;
end;

procedure TDmServicos.ServicosAfterClose(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     (Dataset as TIBQuery).UnPrepare;
  If (DataSet is TIBDataSet) Then
     (Dataset as TIBDataset).UnPrepare;
end;

procedure TDmServicos.Proc_Imprime_Ordem( Codigo: Integer ) ;
begin
     Consulta_Ordem.Close ;

     Consulta_Ordem.ParamByName ('CNPJ'    ).AsString  := DmApp.Cnpj   ;
     Consulta_Ordem.ParamByName ('CODIGO'  ).AsInteger := Codigo       ;

     Consulta_Ordem.Prepare ;

     Consulta_Ordem.Open ;

     If Consulta_Ordem.Fields[0].isNull
     then Begin
          Showmessage ('OS Não Cadastrada, Verifique!');
          Exit;
     end;

     //Itens da Venda
     Consulta_Ordem_Itens.Close ;

     Consulta_Ordem_Itens.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     Consulta_Ordem_Itens.ParamByName ('CODIGO').AsInteger := Codigo       ;

     Consulta_Ordem_Itens.Prepare ;

     Consulta_Ordem_Itens.Open ;

     //Propriedades
     IF Consulta_OrdemPROPRIEDADE.Value > 0
     then begin
          SelPropriedade.Close ;

          SelPropriedade.ParamByName ('CNPJ'       ).AsString  := DmApp.Cnpj   ;
          SelPropriedade.ParamByName ('PESSOA_FJ'  ).AsInteger := Consulta_OrdemPESSOA_FJ.Value  ;
          SelPropriedade.ParamByName ('PROPRIEDADE').AsInteger := Consulta_OrdemPROPRIEDADE.Value  ;

          SelPropriedade.Prepare ;
          SelPropriedade.Open ;
     end;
end;

procedure TDmServicos.Proc_Imprime_Ordem_Orc( Codigo: Integer ) ;
begin
     Consulta_Ordem_Orc.Close ;

     Consulta_Ordem_Orc.ParamByName ('CNPJ'    ).AsString  := DmApp.Cnpj   ;
     Consulta_Ordem_Orc.ParamByName ('CODIGO'  ).AsInteger := Codigo       ;

     Consulta_Ordem_Orc.Prepare ;

     Consulta_Ordem_Orc.Open ;

     If Consulta_Ordem_Orc.Fields[0].isNull
     then Begin
          Showmessage ('Orçamento de OS Não Cadastrado, Verifique!');
          Exit;
     end;

     //Itens da Venda
     Consulta_Ordem_Itens_Orc.Close ;

     Consulta_Ordem_Itens_Orc.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     Consulta_Ordem_Itens_Orc.ParamByName ('CODIGO').AsInteger := Codigo       ;

     Consulta_Ordem_Itens_Orc.Prepare ;

     Consulta_Ordem_Itens_Orc.Open ;
end;

procedure TDmServicos.Imprime_Controle( Codigo: Integer ) ;
begin
     Imp_Ctrl_Qualidade.Close ;

     Imp_Ctrl_Qualidade.ParamByName ('CNPJ'      ).AsString  := DmApp.Cnpj   ;
     Imp_Ctrl_Qualidade.ParamByName ('CONTROLE'  ).AsInteger := Codigo       ;

     Imp_Ctrl_Qualidade.Prepare ;

     Imp_Ctrl_Qualidade.Open ;

     If Imp_Ctrl_Qualidade.Fields[0].isNull
     then Begin
          Showmessage ('Controle Não Cadastrado, Verifique!');
          Exit;
     end;
end;

procedure TDmServicos.ServicosAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].Value := DMApp.Cnpj;
  Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 0) + 1;
end;

procedure TDmServicos.ServicosBeforeOpen(DataSet: TDataSet);
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

procedure TDmServicos.ServicosBeforePost(DataSet: TDataSet);
begin
     If Dataset.State = dsInsert Then
         Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 1);
end;

procedure TDmServicos.ServicosNewRecord(DataSet: TDataSet);
begin
     ServicosVALOR.Value := 0;
end;

procedure TDmServicos.Motores_ServicosNewRecord(DataSet: TDataSet);
begin
     Motores_ServicosMOTOR.Value := MotoresCODIGO.Value ;
     Motores_ServicosCNPJ.Value  := MotoresCNPJ.Value   ;
     Motores_ServicosATIVO.Value := 'S';
     Motores_ServicosVALOR.Value := 0  ;
end;

procedure TDmServicos.Motores_ServicosSERVICOValidate(Sender: TField);
begin
     GERAL.Close;
     GERAL.Sql.Clear;

     GERAL.Params.CreateParam ( FtString, 'CNPJ', PtInput ) ;
     GERAL.Params.CreateParam ( FtString, 'C', PtInput ) ;

     GERAL.Sql.Add (' Select NOME, VALOR From OFC_SERVICOS Where CNPJ = :CNPJ AND Codigo = :C ');

     GERAL.ParamByName ('C').AsString    := Sender.Value ;
     GERAL.ParamByName ('CNPJ').AsString := DmApp.Cnpj   ;

     GERAL.open;

     IF GERAL.FIELDS[0].ISNULL
     THEN BEGIN
          MessageDlg('Serviço Não Cadastrado, Verifique!',MtError,[MbOk],0);
          Abort;
     END
     ELSE BEGIN
          Motores_ServicosNOME_SERVICO.vALUE := GERAL.FIELDS[0].Value ;
          Motores_ServicosVALOR.vALUE        := GERAL.FIELDS[1].Value ;
     END;
end;

procedure TDmServicos.OrdemBeforeOpen(DataSet: TDataSet);
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

procedure TDmServicos.OrdemNewRecord(DataSet: TDataSet);
var
  tecnico,prioridade : variant;
begin
     OrdemCNPJ.Value          := DmApp.Cnpj          ;
     OrdemDATA.value          := DmApp.Data_Servidor ;
     OrdemFECHADO.value       := 'N'  ;
     OrdemENVIADA_CAIXA.Value := 'N'  ;
     OrdemENTRADA.value := DmApp.Data_Servidor;
     if (dmApp.EXIBE_OFC_VISUALIZACAO <> '0') then
     begin
       tecnico := RetornaValor('select t.codigo from ofc_mecanicos t  where t.cnpj ='+QuotedStr(dmApp.Cnpj)+' and t.cod_usuario ='+IntToStr(dmapp.USR_CONECTADO));
       if not VarIsNull(Tecnico) then
        OrdemMECANICO.value := tecnico;

       //Gambiarra feita pro andré, ele nao quer que nao permita selecao do tecnico no momento da insercao do caso,
       //este deverá ser ligado automaticamente ao usuáiro.
       FrmOrdens_Servicos.cmbTecnico.Enabled := false;
     end;
end;

procedure TDmServicos.Servicos_ItensCalcFields(DataSet: TDataSet);
begin
     Servicos_ItensTotal.value := Servicos_ItensQUANTIDADE.value * Servicos_ItensUNITARIO.value ;
end;

procedure TDmServicos.Servicos_ItensSERVICOValidate(Sender: TField);
var
   Aux: String;
begin
     If Sender.IsNull  Then
         Exit ;

     Geral.Close ;
     Geral.Sql.Clear;
     Geral.Sql.text := ' select count(*) from ofc_ordem_servico_servico osi '+
                       ' left join est_produtos prd on (prd.cnpj = osi.cnpj and osi.produto = prd.codigo) '+
                       ' where osi.cnpj = :cnpj and osi.codigo = :codigo and prd.codigo = :produto';

     Geral.ParamByName ('cnpj').value  := DmApp.Cnpj   ;
     Geral.ParamByName ('produto').value := Sender.Value ;
     Geral.ParamByName ('codigo').value := OrdemCODIGO.value;
     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          Showmessage ('Serviço Inexistente!');
          Abort;
     end
     else begin
          If ( UpperCase(Geral.Fields[0].Value) = 'VAZIO' )
          OR ( UpperCase(Geral.Fields[0].Value) = 'NADA' )
          then begin
               Application.CreateForm(TFrmEntraDescricao, FrmEntraDescricao);
               FrmEntraDescricao.LblTitulo.Caption := 'Serviço';
               FrmEntraDescricao.LBLPROMPT.Caption := 'Descrição';

               IF FrmEntraDescricao.ShowModal = MROK
               THEN BEGIN
                    Aux := FrmEntraDescricao.EdNumero.Text ;
               END;

               FrmEntraDescricao.Free ;
               FrmEntraDescricao := Nil;

               If Trim(Aux) = ''
               then
                   Servicos_ItensNOME.Value := 'VAZIO'
               else
                   Servicos_ItensNOME.Value := Aux ;
          end
          else begin
               Servicos_ItensNOME.Value := Geral.Fields[0].Value ;
          end;

          Servicos_ItensUNITARIO.VALUE  := Geral.Fields[1].Value ;
     End;
end;

procedure TDmServicos.Servicos_ItensNewRecord(DataSet: TDataSet);
begin
    Servicos_ItensCNPJ.value   := DmaPP.Cnpj ;
    Servicos_ItensCODIGO.Value := OrdemCODIGO.value ;
end;

procedure TDmServicos.Servicos_ItensSELECIONADOValidate(Sender: TField);
VAR
   Aux: String;
begin
     If Sender.value = 'N'
     THEN BEGIN
          Servicos_ItensUNITARIO.VALUE := 0;
     END
     ELSE BEGIN
          IF (UPPERCASE(Servicos_ItensNOME.VALUE) = 'VAZIO')
          OR (UPPERCASE(Servicos_ItensNOME.VALUE) = 'NADA' )
          THEN BEGIN
               Application.CreateForm(TFrmEntraDescricao, FrmEntraDescricao);
               FrmEntraDescricao.LblTitulo.Caption := 'Serviço';
               FrmEntraDescricao.LBLPROMPT.Caption := 'Descrição';

               IF FrmEntraDescricao.ShowModal = MROK
               THEN BEGIN
                    Aux := FrmEntraDescricao.EdNumero.Text ;
               END;

               FrmEntraDescricao.Free ;
               FrmEntraDescricao := Nil;

               If Trim(Aux) = ''
               then
                   Servicos_ItensNOME.Value := 'VAZIO'
               else
                   Servicos_ItensNOME.Value := Aux ;
          END;
     END;
end;

procedure TDmServicos.Consulta_OrdemCalcFields(DataSet: TDataSet);
begin
     Consulta_OrdemLiquido.value := Consulta_OrdemTotal.value + Consulta_OrdemDESC_ACRESC.value ;
end;

procedure TDmServicos.Consulta_Ordem_ItensCalcFields(DataSet: TDataSet);
begin
     Consulta_Ordem_ItensTOTAL.VALUE := Consulta_Ordem_ItensQUANTIDADE.VALUE * Consulta_Ordem_ItensUNITARIO.VALUE ;
end;

procedure TDmServicos.SelServicos_ItensCalcFields(DataSet: TDataSet);
begin
     SelServicos_ItensTotal.value := SelServicos_ItensQUANTIDADE.value * SelServicos_ItensUNITARIO.value ;
end;

procedure TDmServicos.Ordem_ParcelamentoNewRecord(DataSet: TDataSet);
begin
  Ordem_ParcelamentoCODIGO.VALUE := OrdemCODIGO.VALUE;
  Ordem_ParcelamentoCNPJ.vALUE   := OrdemCNPJ.Value;
end;

procedure TDmServicos.Ctrl_QualidadeAfterInsert(DataSet: TDataSet);
begin
     DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TDmServicos.Ctrl_QualidadeBeforeOpen(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBQuery).ParamByName('CNPJ').asString      := DMApp.Cnpj;
       (DataSet as TIBQuery).ParamByName('CODIGO').asInteger   := NDocto;
       (Dataset as TIBQuery).Prepare;
     End;
  If (DataSet is TIBDataset) Then
     Begin
       (DataSet as TIBDataSet).ParamByName('CNPJ').asString    := DMApp.Cnpj;
       (DataSet as TIBDataSet).ParamByName('CODIGO').asInteger := NDocto;
       (Dataset as TIBDataSet).Prepare;
     End;
end;

procedure TDmServicos.Ctrl_QualidadeMONTADOR_VIRABREQUIMValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;

     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select NOME From OFC_MECANICOS Where Codigo = :C and CNPJ = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          Showmessage ('Mecânico Inexistente!');
          Abort;
     end
     ELSE BEGIN
          Ctrl_QualidadeNOME_MONTADOR_VIRABREQUIM.Value := Geral.Fields[0].Value ;
     END;
end;

procedure TDmServicos.Ctrl_QualidadeMONTADORValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;

     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select NOME From OFC_MECANICOS Where Codigo = :C and CNPJ = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          Showmessage ('Mecânico Inexistente!');
          Abort;
     end
     ELSE BEGIN
          Ctrl_QualidadeNOME_MONTADOR.Value := Geral.Fields[0].Value ;
     END;

end;

procedure TDmServicos.Ctrl_QualidadeMONTADOR_CABECOTEValidate(
  Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;

     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select NOME From OFC_MECANICOS Where Codigo = :C and CNPJ = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          Showmessage ('Mecânico Inexistente!');
          Abort;
     end
     ELSE BEGIN
          Ctrl_QualidadeNOME_MONTADOR_CABECOTE.Value := Geral.Fields[0].Value ;
     END;

end;

procedure TDmServicos.Ctrl_QualidadeMONTADOR_BLOCOValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;

     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select NOME From OFC_MECANICOS Where Codigo = :C and CNPJ = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          Showmessage ('Mecânico Inexistente!');
          Abort;
     end
     ELSE BEGIN
          Ctrl_QualidadeNOME_MONTADOR_BLOCO.Value := Geral.Fields[0].Value ;
     END;

end;

procedure TDmServicos.Ctrl_QualidadeMONTADOR_BIELAValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;

     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select NOME From OFC_MECANICOS Where Codigo = :C and CNPJ = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          Showmessage ('Mecânico Inexistente!');
          Abort;
     end
     ELSE BEGIN
          Ctrl_QualidadeNOME_MONTADOR_BIELA.Value := Geral.Fields[0].Value ;
     END;

end;

procedure TDmServicos.Ctrl_QualidadeMONTADOR_AJUSTEValidate(
  Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;

     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select NOME From OFC_MECANICOS Where Codigo = :C and CNPJ = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          Showmessage ('Mecânico Inexistente!');
          Abort;
     end
     ELSE BEGIN
          Ctrl_QualidadeNOME_MONTADOR_AJUSTE.Value := Geral.Fields[0].Value ;
     END;
end;

procedure TDmServicos.OS_MOVIMENTOSAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].Value := DMApp.Cnpj;
  Dataset.Fields[2].Value := DMApp.GerarCodigo(UpperCase('ORDENS_MOVTOS'), 0) + 1;
end;

procedure TDmServicos.OS_MOVIMENTOSBeforePost(DataSet: TDataSet);
begin
     If Dataset.State = dsInsert
     Then
         Dataset.Fields[2].Value := DMApp.GerarCodigo(UpperCase('ORDENS_MOVTOS'), 1);
end;

procedure TDmServicos.OS_MOVIMENTOSNewRecord(DataSet: TDataSet);
begin
     OS_MOVIMENTOSCNPJ.VALUE   := OrdemCNPJ.Value    ;
     OS_MOVIMENTOSCODIGO.VALUE := OrdemCODIGO.VALUE  ;
     OS_MOVIMENTOSDATA.Value   := dmapp.dataservidor ;
end;

procedure TDmServicos.Servicos_ItensQUANTIDADEValidate(Sender: TField);
begin
     IF SENDER.VALUE > 0
     THEN BEGIN
          Servicos_ItensSELECIONADO.Value := 'S' ;
     END
     ELSE BEGIN
          Servicos_ItensSELECIONADO.Value := 'N' ;
     END;
end;

procedure TDmServicos.Ordem_OrcNewRecord(DataSet: TDataSet);
begin
     Ordem_OrcDATA.value          := DmApp.Data_Servidor ;
     Ordem_OrcDESC_ACRESC.value   := 0    ;
     Ordem_OrcENTRADA.value       := DmApp.Data_Servidor ;
     Ordem_OrcVLR_ENTRADA.Value   := 0    ;
     Ordem_OrcFECHADO.value       := 'N'  ;
     Ordem_OrcTOTAL.VALUE         := 0    ;
     Ordem_OrcENVIADA_CAIXA.Value := 'N'  ;
end;

procedure TDmServicos.Ordem_OrcCalcFields(DataSet: TDataSet);
begin
     Ordem_OrcLiquido.value := Ordem_OrcTOTAL.value + Ordem_OrcDESC_ACRESC.Value ;

     //TOTAL QUE DEVERA SER PARCELADO
     Ordem_OrcTotal_Parcelar.Value := Ordem_OrcLiquido.Value - Ordem_OrcVLR_ENTRADA.Value ;

     IF ((SelFormaPgtoAVISTA.Value <> 'S') AND (SelFormaPgtoFATURA_FUTURA.Value <> 'S'))
     THEN BEGIN
          //DIFERENCA DO TOTAL A PARCELAR COM O TOTAL PARCELADO
          Ordem_OrcDiferenca.Value := Ordem_OrcTotal_Parcelar.Value - Ordem_OrcVLR_PARC_LC.Value ;
     END
     ELSE BEGIN
          //DIFERENCA DO TOTAL A PARCELAR COM O TOTAL PARCELADO
          Ordem_OrcDiferenca.Value := 0 ;
     END;

     IF SelFormaPgtoAVISTA.Value = 'S'
     THEN BEGIN
          Ordem_OrcAVista.Value := Ordem_OrcLiquido.value ;
     END
     ELSE BEGIN
          Ordem_OrcAVista.Value := Ordem_OrcVLR_ENTRADA.Value ;
     END;
end;

procedure TDmServicos.Ordem_OrcMECANICOValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;

    
     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select NOME From OFC_MECANICOS Where Codigo = :C and CNPJ = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          Showmessage ('Mecânico Inexistente!');
          Abort;
     end
     ELSE BEGIN
          Ordem_ORCNOME_MECANICO.Value := Geral.Fields[0].Value ;
     END;
end;

procedure TDmServicos.Ordem_OrcNATUREZAValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;



     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select NOME From EST_NATUREZA Where Codigo = :C and CNPJ = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          Showmessage ('Natureza Inexistente!');
          Abort;
     end
     ELSE BEGIN
          Ordem_ORCNOME_NATUREZA.Value := Geral.Fields[0].Value ;
     END;
end;

procedure TDmServicos.Ordem_OrcPESSOA_FJValidate(Sender: TField);
begin
     If ( Sender.IsNull ) OR ( DmApp.CLIAVISTA = Sender.Value )
     Then begin
          Ordem_ORCCLIENTE.Value := Uppercase(InputBox ('Nome do Consumidor', 'Nome',''));
          Ordem_OrcNOME.value    := Ordem_ORCCLIENTE.Value ;
          Exit ;
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
          Ordem_OrcNOME.Value := Valida_ClienteNOME.Value ;
     end ;

     If Not Valida_ClienteREQUISICAO.isNull
     then Begin
          Ven_Requisicao  := Valida_ClienteREQUISICAO.Value ;
     end
     else begin
          Ven_Requisicao  := 'N' ;
     end;

     If Not Valida_ClienteDIA_PREF_FAT.isNull
     then Begin
          Ven_Dia_Pref_Fat  := Valida_ClienteDIA_PREF_FAT.Value ;
     end
     else begin
          Ven_Dia_Pref_Fat  := 0 ;
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

     If Not Valida_ClienteOBS.isNull
     then Begin
          Application.CreateForm(TFrmMensagemFaturamento, FrmMensagemFaturamento);
          FrmMensagemFaturamento.Showmodal ;
          FrmMensagemFaturamento.Free ;
          FrmMensagemFaturamento  := Nil;
     end;
end;

procedure TDmServicos.Ordem_OrcVIAJANTEValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;



     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select NOME From OFC_VIAJANTES Where Codigo = :C and CNPJ = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          Showmessage ('Mecânico Inexistente!');
          Abort;
     end
     ELSE BEGIN
          Ordem_ORCNOME_VIAJANTE.Value := Geral.Fields[0].Value ;
     END;
end;

procedure TDmServicos.Ordem_OrcMOTORValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;



     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select NOME From OFC_MOTORES Where Codigo = :C and CNPJ = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          Showmessage ('Motor Inexistente!');
          Abort;
     end
     ELSE BEGIN
          Ordem_orcNOME_MOTOR.Value := Geral.Fields[0].Value ;
     END;
end;

procedure TDmServicos.Ordem_OrcFORMA_PAGTOValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;

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
          Ordem_OrcNOME_FORMA.Value := Valida_FormaNOME.Value ;
     END;

end;

procedure TDmServicos.Servicos_Itens_OrcCalcFields(DataSet: TDataSet);
begin
     Servicos_Itens_ORCTotal.value := Servicos_Itens_ORCQUANTIDADE.value * Servicos_Itens_ORCUNITARIO.value ;
end;

procedure TDmServicos.Servicos_Itens_OrcNewRecord(DataSet: TDataSet);
begin
     Servicos_Itens_OrcQUANTIDADE.Value := 0 ;
     Servicos_Itens_ORCCNPJ.value       := DmaPP.Cnpj ;
     Servicos_Itens_ORCCODIGO.Value     := Ordem_ORCCODIGO.value ;
end;

procedure TDmServicos.Servicos_Itens_OrcQUANTIDADEValidate(Sender: TField);
begin
     IF SENDER.VALUE > 0
     THEN BEGIN
          Servicos_Itens_ORCSELECIONADO.Value := 'S' ;
     END
     ELSE BEGIN
          Servicos_Itens_ORCSELECIONADO.Value := 'N' ;
     END;
end;

procedure TDmServicos.Servicos_Itens_OrcSERVICOValidate(Sender: TField);
var
   Aux: String;
begin
     If Sender.IsNull
     Then
         Exit ;

     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select Nome_Servico, Valor From OFC_MOTORES_SERVICOS        ');
     Geral.Sql.Add (' Where Servico = :C and CNPJ = :E and Motor = :Motor  ');

     Geral.ParamByName ('E').AsString      := DmApp.Cnpj   ;
     Geral.ParamByName ('MOTOR').AsInteger := Ordem_OrcMOTOR.Value ;
     Geral.ParamByName ('C').AsInteger     := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          If DmApp.CHM_PROD_INEXIST = 'S'
          THEN BEGIN
               If FrmOrdensServicosItens_Orc <> Nil
               then
                   FrmOrdensServicosItens_Orc.LocServ := True ;

               Exit;
          END
          ELSE BEGIN
               Showmessage ('Serviço Inexistente!');
               Abort ;
          END;
     end
     else begin
          If ( UpperCase(Geral.Fields[0].Value) = 'VAZIO' )
          OR ( UpperCase(Geral.Fields[0].Value) = 'NADA' )
          then begin
               Application.CreateForm(TFrmEntraDescricao, FrmEntraDescricao);
               FrmEntraDescricao.LblTitulo.Caption := 'Serviço';
               FrmEntraDescricao.LBLPROMPT.Caption := 'Descrição';

               IF FrmEntraDescricao.ShowModal = MROK
               THEN BEGIN
                    Aux := FrmEntraDescricao.EdNumero.Text ;
               END;

               FrmEntraDescricao.Free ;
               FrmEntraDescricao := Nil;

               If Trim(Aux) = ''
               then
                   Servicos_Itens_ORCNOME.Value := 'VAZIO'
               else
                   Servicos_Itens_ORCNOME.Value := Aux ;
          end
          else begin
               Servicos_Itens_ORCNOME.Value     := Geral.Fields[0].Value ;
          end;

          Servicos_Itens_ORCUNITARIO.VALUE := Geral.Fields[1].Value ;
     End;
end;

procedure TDmServicos.Servicos_Itens_OrcSELECIONADOValidate( Sender: TField);
VAR
   Aux: String;
begin
     If Sender.value = 'N'
     THEN BEGIN
          Servicos_Itens_ORCUNITARIO.VALUE := 0;
     END
     ELSE BEGIN
          IF  (UPPERCASE(Servicos_Itens_ORCNOME.VALUE) = 'VAZIO')
          OR (UPPERCASE(Servicos_Itens_ORCNOME.VALUE) = 'NADA')
          THEN BEGIN
               Application.CreateForm(TFrmEntraDescricao, FrmEntraDescricao);
               FrmEntraDescricao.LblTitulo.Caption := 'Serviço';
               FrmEntraDescricao.LBLPROMPT.Caption := 'Descrição';

               IF FrmEntraDescricao.ShowModal = MROK
               THEN BEGIN
                    Aux := FrmEntraDescricao.EdNumero.Text ;
               END;

               FrmEntraDescricao.Free ;
               FrmEntraDescricao := Nil;

               If Trim(Aux) = ''
               then
                   Servicos_Itens_ORCNOME.Value := 'VAZIO'
               else
                   Servicos_Itens_ORCNOME.Value := Aux ;
          END;
     END;
end;

procedure TDmServicos.SelServicos_Itens_OrcCalcFields(DataSet: TDataSet);
begin
     SelServicos_Itens_OrcTotal.value := SelServicos_Itens_OrcQUANTIDADE.value * SelServicos_Itens_OrcUNITARIO.value ;
end;

procedure TDmServicos.Consulta_Ordem_OrcCalcFields(DataSet: TDataSet);
begin
     Consulta_Ordem_OrcLiquido.value := Consulta_Ordem_OrcTotal.value + Consulta_Ordem_OrcDESC_ACRESC.value ;
end;

procedure TDmServicos.Consulta_Ordem_Itens_OrcCalcFields( DataSet: TDataSet);
begin
     Consulta_Ordem_Itens_OrcTOTAL.VALUE := Consulta_Ordem_Itens_OrcQUANTIDADE.VALUE * Consulta_Ordem_Itens_OrcUNITARIO.VALUE ;
end;

procedure TDmServicos.Saida_PatrimonioNewRecord(DataSet: TDataSet);
begin
     Saida_PatrimonioCNPJ.Value       := Dmapp.cnpj ;
     Saida_PatrimonioDATA_SAIDA.Value := DATE ;
     Saida_PatrimonioHORA_SAIDA.Value := NOW  ;
end;

procedure TDmServicos.Garantias_PatrimonioNewRecord(DataSet: TDataSet);
begin
     Garantias_PatrimonioCNPJ.Value := Dmapp.cnpj ;
     Garantias_PatrimonioDATA.Value := DATE ;
end;

procedure TDmServicos.GarantiasCalcFields(DataSet: TDataSet);
begin
     garantiasGeral.Value   := garantiasTotal.Value + garantiasDESC_ACRESC.Value ;
     garantiasGeral2.Value  := garantiasTotal_2.Value + garantiasDESC_ACRESC_2.Value ;

     garantiasLiquido.Value := garantiasGeral2.Value - garantiasGeral.Value;

     //TOTAL QUE DEVERA SER PARCELADO
     garantiasTotal_Parcelar.Value := garantiasLiquido.Value - garantiasENTRADA.Value ;

     IF ( garantiasPGTO_AVISTA.Value <> 'S' )
     THEN BEGIN
          //DIFERENCA DO TOTAL A PARCELAR COM O TOTAL PARCELADO
          garantiasDiferenca.Value := garantiasTotal_Parcelar.Value - garantiasVLR_PARC_LC.Value ;
          garantiasAVista.Value    := garantiasENTRADA.Value ;
     END
     ELSE BEGIN
          //DIFERENCA DO TOTAL A PARCELAR COM O TOTAL PARCELADO
          garantiasDiferenca.Value := 0 ;
          garantiasAVista.Value := garantiasLiquido.Value ;
     END;
end;

procedure TDmServicos.GarantiasNewRecord(DataSet: TDataSet);
Var
   I: Integer;
begin
     For I := 0 to garantias.FieldCount - 1 do
     begin
          if garantias.Fields.FIELDS[i].DataType = FtFloat
          then Begin
               garantias.Fields[i].Value := 0;
          end;
     end;

     garantiasFECHADO.Value       := 'N' ;
     garantiasENVIADA_CX.Value    := 'N' ;

     //TEMP
     garantiasUSUARIO.Value       := DmApp.UsuarioCaixa ;
     garantiasDATA.Value          := DATE;
     garantiasCANCELADA.Value     := 'N' ;
end;

procedure TDmServicos.FaturaGarantiasCalcFields(DataSet: TDataSet);
begin
     Valida_Forma.Close ;

     Valida_Forma.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     Valida_Forma.ParamByName ('CODIGO').AsInteger := FaturaGarantiasFORMA_PGTO.Value ;

     Valida_Forma.Prepare ;
     Valida_Forma.Open ;

     FaturagarantiasTotal_Geral.Value  := FaturagarantiasTOTAL.Value   + FaturagarantiasDESC_ACRESC.Value ;
     FaturagarantiasTOTAL_GERAL2.Value := FaturagarantiasTotal_2.Value + FaturagarantiasDESC_ACRESC_2.Value ;

     FaturagarantiasLiquido.Value      := Faturagarantiastotal_Geral2.Value  - Faturagarantiastotal_Geral.Value;

     //TOTAL QUE DEVERA SER PARCELADO
     FaturagarantiasTotal_Parcelar.Value := FaturagarantiasLiquido.Value - FaturagarantiasENTRADA.Value ;

     IF ((Valida_FormaAVISTA.Value <> 'S') AND (Valida_FormaFATURA_FUTURA.Value <> 'S'))
     THEN BEGIN
          //DIFERENCA DO TOTAL A PARCELAR COM O TOTAL PARCELADO
          FaturagarantiasDiferenca.Value := FaturagarantiasTotal_Parcelar.Value - FaturagarantiasVlr_Parc_Lc.Value ;
     END
     ELSE BEGIN
          //DIFERENCA DO TOTAL A PARCELAR COM O TOTAL PARCELADO
          FaturagarantiasDiferenca.Value := 0 ;
     END;

     IF Valida_FormaAVISTA.Value = 'S'
     THEN BEGIN
          FaturagarantiasAVista.Value := FaturagarantiasLiquido.Value ;
     END
     ELSE BEGIN
          FaturagarantiasAVista.Value := FaturagarantiasENTRADA.Value ;
     END;
end;

procedure TDmServicos.GarantiasFORMA_PGTOValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;

     If ( Sender.Value = 0 )
     then Begin
          FrmGarantias.LocForma := True ;
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
          GarantiasNOME_FORMA.Value := Valida_FormaNOME.Value ;
     END;

     //Apaga Parcelas
     DmApp.Apaga_Parcelas_Troca ( DmApp.Cnpj, FaturaGarantiasCODIGO.Value );

     Garantias_Parc.Close ;
     Garantias_Parc.Open  ;

     IF FrmGarantias <> Nil
     THEN BEGIN
          //Habilita os componentes para cada tipo de Pagamento
          WITH FrmGarantias DO
          BEGIN
               //Numero de Parcelas = 2 ; a vista = 3
               IF (( Valida_FormaNPARCELAS.Value > 0 ) AND ( Valida_FormaAVISTA.Value <> 'S' )) OR ( Valida_FormaFATURA_FUTURA.Value = 'S')
               THEN BEGIN
                    //CONFERE SE O CLIENTE ESTA HABILITADO PARA Garantias A PRAZO
                    IF BLOQUEADO = 'S'
                    THEN BEGIN
                         MessageDlg('Este Cliente Está Bloqueado Para Garantias a Prazo, Verifique!', mtError, [mbOK], 0);
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

                         GarantiasLOCAL_COBRANCA.Clear ;
                         GarantiasENTRADA.Clear        ;

                         GarantiasTIPO_DOCTO.Clear     ;

                         GRIDFATURAMENTO.Enabled := FALSE ;

                         GarantiasPGTO_AVISTA.Value := 'S' ;
                    END
                    ELSE BEGIN
                         CmbLocal.Enabled     := true ;
                         EDENTRADA.Enabled    := true ;
                         cmbTipoDocto.Enabled := true ;

                         GRIDFATURAMENTO.Enabled := TRUE ;

                         GarantiasPGTO_AVISTA.Value := 'N' ;

                         IF (Valida_FormaCOMENTRADA.Value = 'N')
                         THEN BEGIN
                              EDENTRADA.Enabled    := false ;
                              GarantiasENTRADA.VALUE := 0  ;

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
                    GarantiasLOCAL_COBRANCA.Clear ;
                    GarantiasENTRADA.Clear        ;
                    GarantiasTIPO_DOCTO.Clear     ;

                    GRIDFATURAMENTO.Enabled := FALSE ;
               END;

               IF ( Valida_FormaDESCONTO.Value > 0 )
               THEN BEGIN
                    GarantiasDESC_ACRESC.Value := -1 * ((GarantiasTOTAL.VALUE * Valida_FormaDESCONTO.VALUE)/100);
               END
               ELSE BEGIN
                    GarantiasDESC_ACRESC.Value := 0 ;
               END;

               IF ( Valida_FormaACRESCIMO.Value > 0 )
               THEN BEGIN
                    GarantiasDESC_ACRESC.Value := GarantiasDESC_ACRESC.Value + ((GarantiasTOTAL.VALUE * Valida_FormaACRESCIMO.value)/100);
               END;
          End;
     END;
end;

procedure TDmServicos.GarantiasPESSOA_FJValidate(Sender: TField);
begin
     If ( Sender.IsNull ) OR ( DmApp.CLIAVISTA = Sender.Value )
     Then begin
          GarantiasNOME_CONSUMIDOR.Value := Uppercase(InputBox ('Nome do Consumidor', 'Nome',''));
          GarantiasNome.VALUE            := GarantiasNOME_CONSUMIDOR.Value ;
          Exit ;
     end;

     If ( Sender.Value = 0 )
     then Begin
          If FrmGarantias <> Nil
          then begin
               FrmGarantias.LocCli := True ;
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
          GarantiasNOME.Value := Valida_ClienteNOME.Value ;
     end ;

     If Not Valida_ClienteCOD_VEND.isNull
     then Begin
          GarantiasVENDEDOR.Value    := Valida_ClienteCOD_VEND.Value ;
     end;

     If Not Valida_ClienteCOD_FPAGTO.isNull
     then Begin
          GarantiasFORMA_PGTO.Value  := Valida_ClienteCOD_FPAGTO.Value ;
     end;

     If Not Valida_ClienteOBS.isNull
     then Begin
          Application.CreateForm(TFrmMensagemFaturamento, FrmMensagemFaturamento);
          FrmMensagemFaturamento.Showmodal ;
          FrmMensagemFaturamento.Free ;
          FrmMensagemFaturamento  := Nil;
     end;
end;

procedure TDmServicos.GarantiasVENDEDORValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;

     If ( Sender.Value = 0 )
     then Begin
          FrmGarantias.LocVen := True ;
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
          GarantiasNOME_VENDEDOR.Value := Geral.Fields[0].Value ;
     END;
end;

procedure TDmServicos.Garantias_ItensPRODUTOValidate(Sender: TField);
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
     Valida_Produto.ParamByName ('VENDEDOR').AsInteger     := 0;
     Valida_Produto.Prepare ;

     Valida_Produto.OPEN ;

     If Valida_ProdutoPRC_VENDA.IsNull
     then Begin
          If FrmGarantiasItens <> Nil
          then
              FrmGarantiasItens.LocProd := True ;

          Exit;
     end
     else begin
          Garantias_ItensPRC_CUSTO.Value         := Valida_ProdutoPRC_REPOS.Value ;
          Garantias_ItensPRC_UNITARIO.Value      := Valida_ProdutoPRC_VENDA.Value ;
          Garantias_ItensPRC_UNIT_ORIGINAL.Value := Valida_ProdutoPRC_VENDA.Value ;
          Garantias_ItensNOME_PRODUTO.Value      := Valida_ProdutoNOME.Value ;

          If Not Valida_ProdutoVOLUME.IsNull
          then
              Garantias_ItensVOLUME.Value       := Valida_ProdutoVOLUME.Value
          else
              Garantias_ItensVOLUME.Value       := 0;

          If Not Valida_ProdutoPESO_LIQ.IsNull
          then
              Garantias_ItensPESO.Value         := Valida_ProdutoPESO_LIQ.Value
          else
              Garantias_ItensPESO.Value         := 0;

          If Not Valida_ProdutoUNIDADE.IsNull
          then
              Garantias_ItensUNIDADE.Value      := Valida_ProdutoUNIDADE.Value
          else
              Garantias_ItensUNIDADE.Value      := 'UN';

          If Not Valida_ProdutoMARCA.IsNull
          then BEGIN
               Garantias_ItensMARCA.Value       := COPY(Valida_ProdutoMARCA.Value,1,30);
          END;
     end;

     //Verifica se Ele Já Foi Faturado Nesta Nota
     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );
     Geral.Params.CreateParam ( FtString , 'P', PtInput );

     Geral.Sql.Add (' Select * From Fat_Garantias_Itens Where Produto = :P and CNPJ = :E and Codigo = :C ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Garantias_ItensCODIGO.Value ;
     Geral.ParamByName ('P').AsString  := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Not Geral.Fields[1].isNull
     then begin
          Showmessage('Este Produto Já Foi Faturado Nesta Nota!');
          Abort;
     end;
end;

procedure TDmServicos.Garantias_ItensDESCONTOValidate(Sender: TField);
begin
     IF ( Sender.Value < 0 )
     THEN BEGIN
          Showmessage('O Valor do ' + Sender.DisPlayLabel  + ' Digitado deve Maior Ou Igual a Zero');
          Abort;
     END;
end;

procedure TDmServicos.Garantias_ItensCalcFields(DataSet: TDataSet);
begin
     Garantias_ItensTotal.value        := Garantias_ItensQUANTIDADE.Value * ( Garantias_ItensPRC_UNITARIO.Value - Garantias_ItensDESCONTO.Value);
     Garantias_ItensPeso_Total.Value   := Garantias_ItensQUANTIDADE.Value * Garantias_ItensPeso.Value ;
     Garantias_ItensVolume_Total.Value := Garantias_ItensQUANTIDADE.Value * Garantias_ItensVolume.Value ;
end;

procedure TDmServicos.Garantias_ItensNewRecord(DataSet: TDataSet);
begin
     Garantias_ItensCNPJ.Value          := GarantiasCNPJ.Value ;
     Garantias_ItensCODIGO.Value        := GarantiasCODIGO.Value ;
     Garantias_ItensQUANTIDADE.Value    := 0;
     Garantias_ItensPRC_UNITARIO.Value  := 0;
     Garantias_ItensPRC_CUSTO.Value     := 0;
     Garantias_ItensICM.Value           := 0;
     Garantias_ItensICM_SUBS.Value      := 0;
     Garantias_ItensIPI.Value           := 0;
     Garantias_ItensVOLUME.Value        := 0;
     Garantias_ItensPESO.Value          := 0;
     Garantias_ItensDESCONTO.Value      := 0;
     Garantias_ItensPORC_DESC.Value     := 0;
     Garantias_ItensUNIDADE.Value       := 'UN' ;
     Garantias_ItensSUBUNIDADE.Value    := 1;
     Garantias_ItensSequencia.Value     := Garantias_Itens.RecordCount ;
     Garantias_ItensTIPO.Value          := 'E' ;
end;

procedure TDmServicos.Garantias_ParcNewRecord(DataSet: TDataSet);
begin
     Garantias_ParcVALOR.Value  := 0;
     Garantias_ParcCNPJ.Value   := DsGarantias.DataSet.FieldByName('CNPJ').AsString    ;
     Garantias_ParcCODIGO.Value := DsGarantias.DataSet.FieldByName('CODIGO').AsInteger ;
end;

procedure TDmServicos.OrdemDEFEITO_RECLAMADOValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;

     If ( Sender.Value = 0 )
     then Begin
          FrmOrdens_Servicos.LocDef := True ;
          Exit ;
     end;

     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select NOME From OFC_DEFEITO Where Codigo = :C and CNPJ = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          Showmessage ('Defeito Inexistente!');
          Abort;
     end
     ELSE BEGIN
          OrdemNOME_DEFEITO.Value := Geral.Fields[0].Value ;
     END;
end;

procedure TDmServicos.Propriedades(Pessoa: Integer);
begin
     SelPropriedades.Close ;

     SelPropriedades.ParamByName ('CNPJ'     ).AsString  := DmApp.Cnpj ;
     SelPropriedades.ParamByName ('PESSOA_FJ').AsInteger := Pessoa     ;

     SelPropriedades.Prepare ;
     SelPropriedades.Open ;
     SelPropriedades.FetchAll ;
end;

procedure TDmServicos.OS_MOVIMENTOSTIPO_DESPESAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 'AVU' Then
     Text := 'AVULSO';
  If Sender.Value = 'DES' Then
     Text := 'DESPESAS ( KM/ESTADIA/ALIMENTACAO )';
end;

procedure TDmServicos.OS_MOVIMENTOSTIPO_DESPESASetText(Sender: TField; const Text: String);
begin
  If Text = 'AVULSO' Then
     Sender.Value := 'AVU';
  If Text = 'DESPESAS ( KM/ESTADIA/ALIMENTACAO )' Then
     Sender.Value := 'DES';
end;

procedure TDmServicos.Fat_VendasItensCalcFields(DataSet: TDataSet);
begin
     Fat_VendasItensDESCONTO_TOTAL.VALUE := Fat_VendasItensQUANTIDADE.VALUE * Fat_VendasItensDESCONTO.VALUE ;
end;

procedure TDmServicos.Motores_ServicosAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].Value := DMApp.Cnpj;
  DataSet.Fields[1].Value := FrmMotores.DataSource.DataSet.FieldByName ('CODIGO').AsInteger ; 
end;

procedure TDmServicos.TipoAtendimentoAfterClose(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     (Dataset as TIBQuery).UnPrepare;
  If (DataSet is TIBDataSet) Then
     (Dataset as TIBDataset).UnPrepare;
end;

procedure TDmServicos.TipoAtendimentoAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TDmServicos.DefeitoBeforeOpen(DataSet: TDataSet);
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

procedure TDmServicos.TipoAtendimentoBeforeOpen(DataSet: TDataSet);
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

procedure TDmServicos.MotivoChamadoAfterClose(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     (Dataset as TIBQuery).UnPrepare;
  If (DataSet is TIBDataSet) Then
     (Dataset as TIBDataset).UnPrepare;
end;

procedure TDmServicos.MotivoChamadoAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TDmServicos.MotivoChamadoBeforeOpen(DataSet: TDataSet);
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

procedure TDmServicos.SelStatusBeforeOpen(DataSet: TDataSet);
begin
  TIBQuery(DataSet).ParamByName('CNPJ').asString  := DMApp.Cnpj;
end;

procedure TDmServicos.Servicos_ItensPRODUTOValidate(Sender: TField);
VAR
   DESCONTO, ValorUsado, VALORPromocao, PctPromocao, PctEspecial, ValorEspecial: REAL;
begin
  with dmVendas do
  begin
    if ((Sender.IsNull) or (trim(Sender.Value) = '')) then
      Exit ;

    Valida_Produto.Close ;
    Valida_Produto.ParamByName ('CNPJ').AsString        := DmApp.Cnpj   ;
    Valida_Produto.ParamByName ('PRODUTO').AsString     := Sender.Value ;
    Valida_Produto.ParamByName ('VENDEDOR').AsInteger     := 0;
    Valida_Produto.Open ;

    if Valida_ProdutoPRC_VENDA.IsNull then
    begin
       If DmApp.CHM_PROD_INEXIST = 'S' THEN
       begin
         If FrmOrdensServicosItens <> Nil then
           FrmOrdensServicosItens.LocServ := True ;

         Exit;
       end
       else
       begin
         Application.MessageBox('Produto inexistente','Aviso',mb_iconerror + mb_ok);
         Abort ;
       end;
    end
    else
    begin
       Servicos_ItensUNITARIO.Value := Valida_ProdutoPRC_VENDA.Value;

       VALORPromocao := 0;
       ValorEspecial := 0;
       ValorUsado := 0;
       PctPromocao := 0;

       //------------------------Verificando se existe um vlr. promocional do produto------------------
       IF dmapp.DataCaixa > STRTODATE('01/01/2004') THEN
          VALORPromocao :=  dmapp.Verifica_Promocao ( Sender.value, dmapp.DataCaixa );

       //procedimento retorna 0 quando não há promoções
       if (ValorPromocao = 0) then
         pctpromocao := 0
       else
       begin
         ValorPromocao := (Servicos_ItensUNITARIO.Value - ValorPromocao);
         pctPromocao := (ValorPromocao * 100)/Servicos_ItensUNITARIO.Value;
       end;
       //------------------------------------------------------------------------------------------------

       //------------------------Verificando se existe um vlr. especial---------------------------------
       PctEspecial := dmapp.Verifica_Preco_Especial(Sender.value,OrdemPESSOA_FJ.value);
       ValorEspecial := Servicos_ItensUNITARIO.Value - ((Servicos_ItensUNITARIO.Value * PctEspecial)/100);
       //---------------------------------------------------------------------------------------------

       //verifiando qual dos dois´possui o maior desconto
       if (PctEspecial <= 0) and (PctPromocao > 0) then
         Desconto := PctPromocao
       else if (PctPromocao <= 0) and (PctEspecial > 0) then
         Desconto := PctEspecial
       else if (PctPromocao > PctEspecial) then //neste caso é porcentagem portanto tem de ser '>'
         Desconto := PctPromocao
       else
         Desconto := PctEspecial;



       Servicos_ItensUNITARIO.Value  := Valida_ProdutoPRC_VENDA.Value;

       Servicos_ItensNOME.Value      := Valida_ProdutoNOME.Value;
    end;

    Geral.Close ;
    Geral.Sql.Clear;
    Geral.Sql.text := ' select count(*) total from ofc_ordem_servico_servico osi '+
                      ' left join est_produtos prd on (prd.cnpj = osi.cnpj and osi.produto = prd.codigo) '+
                      ' where osi.cnpj = :cnpj and osi.codigo = :codigo and prd.codigo = :produto';

    Geral.ParamByName ('cnpj').value  := DmApp.Cnpj   ;
    Geral.ParamByName ('produto').value := Sender.Value ;
    Geral.ParamByName ('codigo').value := OrdemCODIGO.value;
    Geral.Open ;

    if not Geral.FieldByName('total').asInteger > 1 then
    begin
      if DmApp.REPETE_PRODUTO = 'N' then
      begin
        Application.messagebox('Produto repetido','Aviso',mb_iconerror + mb_ok);
        Abort;
      end;
    end;
  end;
end;

procedure TDmServicos.LOG_STATUS(old_status,new_status,usuario, cod_ordem, cod_cliente: integer);
begin
  INSERE_LOG_STATUS.parambyName('cnpj').value := dmApp.cnpj;
  INSERE_LOG_STATUS.parambyName('old_status').value := old_status;
  INSERE_LOG_STATUS.parambyName('new_status').value := new_status;
  INSERE_LOG_STATUS.parambyName('usuario').value := usuario;
  INSERE_LOG_STATUS.parambyName('data').value :=  dmApp.DataHora('D');
  INSERE_LOG_STATUS.parambyName('hora').value := dmApp.DataHora('T');
  INSERE_LOG_STATUS.parambyName('cod_ordem').value := cod_ordem;
  INSERE_LOG_STATUS.parambyName('cod_cliente').value := cod_cliente;
  INSERE_LOG_STATUS.ExecQuery;
  INSERE_LOG_STATUS.Transaction.CommitRetaining;
end;

procedure TDmServicos.OrdemAfterPost(DataSet: TDataSet);
var
  Origem, NOrigem, Destino, NDestino : string;
begin
  if (OrdemCOD_STATUS.OldValue <> OrdemCOD_STATUS.NewValue) then
    LOG_STATUS(OrdemCOD_STATUS.OldValue,OrdemCOD_STATUS.NewValue,dmApp.UsuarioCaixa,OrdemCODIGO.value,OrdemPESSOA_FJ.value);

  if ((OrdemMECANICO.OldValue <> OrdemMECANICO.NewValue) and (dmApp.EXIBE_EMAIL_AUTOMATICO = 'S'))  then
  begin
    SelEmail.Close;
    SelEmail.sql.text := ' select t.nome, t.email from ofc_mecanicos t where t.codigo = :codigo and t.cnpj = :cnpj';
    SelEmail.ParamByName('codigo').value := OrdemMECANICO.OldValue;
    SelEmail.Open;
    if (SelEmail.fieldbyname('email').asString = '') then
    begin
      Application.MessageBox('Defina um email para o técnico de origem','Aviso',mb_ok+mb_iconerror);
      exit;
    end;

    Origem := SelEmail.fieldbyname('email').Value;
    NOrigem := SelEmail.fieldbyname('nome').Value;

    SelEmail.Close;
    SelEmail.sql.text := ' select t.nome, t.email from ofc_mecanicos t where t.codigo = :codigo and t.cnpj = :cnpj';
    SelEmail.ParamByName('codigo').value := OrdemMECANICO.NewValue;
    SelEmail.Open;

    if (SelEmail.fieldbyname('email').asString = '') then
    begin
      Application.MessageBox('Defina um email para o técnico de destino','Aviso',mb_ok+mb_iconerror);
      exit;
    end;

    Destino := SelEmail.fieldbyname('email').Value;
    NDestino := SelEmail.fieldbyname('nome').Value;

    FrmOrdens_Servicos.EnviaEmailTecnico(Origem,NOrigem,Destino,NDestino,'Caso '+Completaesq(OrdemCODIGO.asString,'0',9)+ ' transferido à você',
    'Informamos que a ordem de serviço nº '+OrdemCODIGO.AsString+' esta sob sua responsabilidade a partir deste momento');
  end;
  FrmOrdens_Servicos.cmbTecnico.Enabled := true;
end;

procedure TDmServicos.SelOrdens_ServicosCalcFields(DataSet: TDataSet);
var
  DATA_INI  , DATA_FIM,
  HORA_INI  , HORA_FIM,
  INTER_INI , INTER_FIM,
  TRAB_INI  , TRAB_FIM : STRING;
  i : integer;
begin

  if (SelOrdens_ServicosOFC_CODIGO.value = 39563 ) then
    i := 0;
  //-->> Pega o tempo de resposta para cada contrato com seu respectivo produto
  if (SelOrdens_ServicosOFC_DATA_FECHAMENTO.IsNull)or(SelOrdens_ServicosOFC_DATA_FECHAMENTO.AsString = '') then
  begin
    DATA_INI := DateToStr(SelOrdens_ServicosOFC_DT_ENTRADA.asDateTime);
    DATA_FIM := DateToStr(dmApp.data_servidor);

    if StrtoDate(DATA_INI) > StrtoDate(DATA_FIM) then //
    begin
      SelOrdens_ServicosTEMPO_GASTO.Value := 0;
      SelOrdens_ServicosCP_TEMPO_RESPOSTA.value := 10;
      exit;
    end;


    HORA_INI := TimeToStr(SelOrdens_ServicosOFC_HR_ENTRADA.value);
    HORA_FIM := TimeToStr(dmApp.data_servidor);
    INTER_INI:= '11:00:00';
    INTER_FIM:= '13:00:00';
    TRAB_INI := '08:00:00';
    TRAB_FIM := '18:00:00';
    SelOrdens_ServicosTEMPO_GASTO.Value    := HORAS_CORRIDA(DATA_INI  , DATA_FIM,
                                                            HORA_INI  , HORA_FIM,
                                                            INTER_INI , INTER_FIM,
                                                            TRAB_INI  , TRAB_FIM);
  end; 
end;








procedure TDmServicos.ContratosItensCalcFields(DataSet: TDataSet);
begin
  SelServicos_ItensTotal.value := SelServicos_ItensQUANTIDADE.value * SelServicos_ItensUNITARIO.value ;
end;

procedure TDmServicos.SelModelosProdutoBeforeOpen(DataSet: TDataSet);
begin
  TIBQuery(DataSet).ParamByName('CNPJ').asString  := DMApp.Cnpj;
end;

procedure TDmServicos.OS_INTERVALOBeforePost(DataSet: TDataSet);
var
  DATA_INI  , DATA_FIM,
  HORA_INI  , HORA_FIM,
  INTER_INI , INTER_FIM,
  TRAB_INI  , TRAB_FIM : String;
  DtFim : TDate;
  HrFim : TTime;
  MsgData, MsgHora : string;
begin
    if OS_INTERVALO.State in [dsInsert , dsEdit] then
    begin
      If Dataset.State = dsInsert Then
         Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase('ORDENS_INTERVALO'), 1);

      if (OS_INTERVALODT_INICIO.IsNull) OR (OS_INTERVALOHR_INICIO.IsNull)OR
         (OS_INTERVALODT_FIM.IsNull)    OR (OS_INTERVALOHR_FIM.IsNull)   then
      begin
        Application.MessageBox('Campo Data e Hora não poderão ficar vazio','Aviso',mb_iconerror+mb_ok);
        Abort;
      end;

      //-->> Validando Hora/Data [PROGRAMAÇÃO e INICIO ATIVIDADE]
     { MsgData := 'Dt. de Programação não pode ser superior a Dt. de Inicialização do serviço';
      MsgHora := 'Hr. de Programação não pode ser superior a Hr. de Inicialização do serviço';
      if ValidaDataHora(DateToStr(OrdemDT_ATRIBUICAO.value),DateToStr(OS_INTERVALODT_INICIO.value),OrdemHR_ATRIBUICAO.value, OS_INTERVALOHR_INICIO.value, MsgData, MsgHora) then
      begin
        abort;
        exit;
      end;}

      //-->> Validando Hora/Data [INICIO ATIVIDADE e FIM ATIVIDADE]
      {MsgData := 'Dt. de Inicialização não pode ser superior a Dt. de Finalização do serviço';
      MsgHora := 'Hr. de Inicialização não pode ser superior a Hr. de Finalização do serviço';

      if ValidaDataHora(DateToStr(OS_INTERVALODT_INICIO.value),DateToStr(OS_INTERVALODT_FIM.value),OS_INTERVALOHR_INICIO.value,OS_INTERVALOHR_FIM.value, MsgData, MsgHora) then
      begin
        abort;
        exit;
      end;}

      //-->> Validando Hora/Data [FIM ATIVIDADE e FECHAMENTO]
      if (OrdemDATA_FECHAMENTO.isNull) then
        DtFim := Date
      else
        DtFim := OrdemDATA_FECHAMENTO.value;

      if (OrdemHR_FECHAMENTO.isNull) then
        HrFim := Time
      else
        HrFim := OrdemHR_FECHAMENTO.value;


      {MsgData := 'Dt. de Finalização não pode ser superior a Dt. de Fechamento da OS';
      MsgHora := 'Hr. de Finalização não pode ser superior a Hr. de Fechamento da OS';
      if ValidaDataHora(DateToStr(OS_INTERVALODT_FIM.value),DateToStr(DtFim), OS_INTERVALOHR_FIM.value, HrFim, MsgData, MsgHora) then
      begin
        abort;
        exit;
      end;}


      DATA_INI := DateToStr(DmServicos.OS_INTERVALODT_INICIO.Value);
      HORA_INI := TimeToStr(DmServicos.OS_INTERVALOHR_INICIO.Value);

      //** Data_Fim se não estiver preenchido pegara data_atual
      if DmServicos.OS_INTERVALODT_FIM.Text='' then
        DATA_FIM := DateToStr(dmapp.DataServidor)
      else
        DATA_FIM := DateToStr(DmServicos.OS_INTERVALODT_FIM.Value   );

      //** Hora_Fim se não estiver preenchido pegara hora_atual
      if DmServicos.OS_INTERVALOHR_FIM.Text='00:00:00' then
        HORA_FIM := TimeToStr(dmapp.DataServidor)
      else
        HORA_FIM := TimeToStr(DmServicos.OS_INTERVALOHR_FIM.Value   );

      INTER_INI:= '11:00:00';
      INTER_FIM:= '13:00:00';
      TRAB_INI := '08:00:00';
      TRAB_FIM := '18:00:00';
      DmServicos.OS_INTERVALOQTDE_HORA.Value  := HORAS_TRABALHADAS(DATA_INI  , DATA_FIM,
                                                             HORA_INI  , HORA_FIM,
                                                             INTER_INI , INTER_FIM,
                                                             TRAB_INI  , TRAB_FIM);



      if OS_INTERVALOKM_FINAL.value < OS_INTERVALOKM_INICIAL.value then
      begin
        application.messagebox('Km. Final não poderá ser inferior a km. Inicial','Aviso',mb_iconerror + mb_ok);
        abort;//aqui boy
        exit;
      end;

    end;
end;

procedure TDmServicos.OS_INTERVALOAfterInsert(DataSet: TDataSet);
begin
  OS_INTERVALOCNPJ.Value      := DMApp.Cnpj;
  OS_INTERVALOSEQUENCIA.Value := DMApp.GerarCodigo(UpperCase('ORDENS_INTERVALO'), 0) + 1;
  OS_INTERVALOCODIGO.Value    := DmServicos.OrdemCODIGO.Value;
  OS_INTERVALODT_INICIO.Value := DateOF(DMApp.DataServidor);
  OS_INTERVALOHR_INICIO.Value := TimeOF(DMApp.DataServidor)-0.003;
  OS_INTERVALODT_FIM.Value := DateOF(DMApp.DataServidor);
  OS_INTERVALOHR_FIM.Value := TimeOF(DMApp.DataServidor);
  OS_INTERVALOUSUARIO.value := dmApp.USR_CONECTADO;
  OS_INTERVALOCOD_TECNICO.value := OrdemMECANICO.value;

end;

procedure TDmServicos.OS_INTERVALOAfterPost(DataSet: TDataSet);
var
  existe : variant;
  sql : string;
begin
  if (dmApp.EXIBE_EMAIL_AUTOMATICO = 'S') then
  begin
    if (((OS_INTERVALO.RecordCount = 1) or (OS_INTERVALOTIPO.Value = 'A')) and (OS_INTERVALO_EMAIL.RecordCount = 0)) then
    begin
       FrmOrdens_Servicos.EnviaEmailAb_Fec(dmCadastros2.SelClientesEMAIL.AsString,dmCadastros2.SelClientesNOME_RAZAO.AsString,
                                           dmCadastros2.SelClientes2EMAIL.AsString,dmCadastros2.SelClientes2NOME_RAZAO.AsString,
                                           'Caso '+Completaesq(OrdemCODIGO.asString,'0',9)+' - Abertura',OrdemINFORMACOES.Value,'A');
    end
    else if (OS_INTERVALOTIPO.Value = 'F') then
    begin
      sql := ' select count(*) from ofc_o_s_intervalo_email e  where e.cnpj = '+QuotedStr(dmApp.cnpj)+' and e.cod_intervalo = '+OS_INTERVALOCODIGO.AsString
             +' and e.tipo = ''F'' and e.enviado = ''1'' and e.sequencia = '+OS_INTERVALOSEQUENCIA.AsString;

      existe := RetornaValor(sql,dmapp.Transaction);
      if (existe <= 0) then
        FrmOrdens_Servicos.EnviaEmailAb_Fec(dmCadastros2.SelClientesEMAIL.AsString,dmCadastros2.SelClientesNOME_RAZAO.AsString,
                                           dmCadastros2.SelClientes2EMAIL.AsString,dmCadastros2.SelClientes2NOME_RAZAO.AsString,
                                           'Caso '+Completaesq(OrdemCODIGO.asString,'0',9)+' - Fechamento',OrdemOBS_FECHAMENTO.Value,'F');
    end;
  end;

end;

function TDmServicos.ValidaDataHora(DataMenor, DataMaior: String;
  HoraMenor, HoraMaior: TTime; MsgData, MsgHora : String): Boolean;
var
  IndexError : integer;
begin
  if DataMaior = '  /  /    ' then
    DataMaior := '31/12/9999';
  if DataMenor = '  /  /    ' then
    DataMenor := '01/01/1900';

  IndexError := 0;
  if(StrToDate(DataMaior) < StrToDate(DataMenor)) then
      IndexError := 1
  else if StrToDate(DataMaior) = StrToDate(DataMenor) then
     if (HoraMaior < HoraMenor) then
      IndexError := 2;

  if IndexError = 0 then
    Result := FALSE
  else
  begin
    if IndexError = 1 then
      Application.MessageBox(Pchar(MsgData),'Aviso',mb_ok+mb_iconerror)
    else if IndexError = 2 then
      Application.MessageBox(Pchar(MsgHora),'Aviso',mb_ok+mb_iconerror);
    Result := TRUE;
  end;

end;

procedure TDmServicos.OsPendenciaNewRecord(DataSet: TDataSet);
begin
 OsPendenciaDT_PENDENCIA.value := Date;
 OsPendenciaUSR_RESPONSAVEL.value := dmApp.UsuarioCaixa;
 OsPendenciaST_SERVICO.value := 'Pendente';
 OsPendenciaST_PEDIDO.value := 'Pendente';
 OsPendenciaCNPJ.value := dmApp.cnpj;
end;

procedure TDmServicos.OS_INTERVALOKM_INICIALChange(Sender: TField);
begin
   OS_INTERVALOKM_RODADO.value := OS_INTERVALOKM_FINAL.asFloat - OS_INTERVALOKM_INICIAL.asFloat;
end;

procedure TDmServicos.PreventivaOSCONTRATO_ATIVOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.value = 'S' then
    text := 'Sim'
  else
    text := 'Não';
end;

procedure TDmServicos.SelContrato2BeforeOpen(DataSet: TDataSet);
begin
  TIBQuery(DataSet).ParamByName('CNPJ').asString  := DMApp.Cnpj;
end;

procedure TDmServicos.OS_INTERVALO_EMAILNewRecord(DataSet: TDataSet);
begin
  OS_INTERVALO_EMAILCNPJ.value := dmapp.cnpj;
end;

procedure TDmServicos.OS_INTERVALO_ANEXONewRecord(DataSet: TDataSet);
begin
  OS_INTERVALO_ANEXOCNPJ.value := dmapp.cnpj;
end;

procedure TDmServicos.OrdemBeforePost(DataSet: TDataSet);
var
  codigo : variant;
  sql : string;
  fechado, prdserie : variant;
begin
  if (trim(OrdemSerie.asString) <> '') then
  begin
    sql := 'select prd.serie from est_produtos prd where prd.cnpj =  '+QuotedStr(dmApp.Cnpj)+' and prd.codigo = ' +QuotedStr(OrdemPRODUTO.AsString);
    prdserie := RetornaValor(sql,dmApp.Transaction);

    if (Trim(VarToStr(prdserie)) <> trim(OrdemSerie.asString)) then
    begin
      Application.MessageBox('Serie definida na OS difere da série do equipamento selecionado','Aviso',mb_ok+mb_iconerror);
      abort;
      exit;
    end;
  end;
  {if Ordem.State in [dsinsert] then
  begin
      if (OrdemCOD_STATUS.AsInteger < 0)then
      begin
        Application.MessageBox('Selecione um status para a OS e salve-a antes de adicionar itens','Aviso',mb_iconerror + mb_ok);
        FrmOrdens_Servicos.Status.SetFocus;
      end;
      if (OrdemCOD_STATUS.AsInteger > 0)then
          Ordem.Post;
  end;}
  if OrdemCod_status.AsString = '' then
      OrdemCod_status.Value := 0;
  sql := 'select coalesce(s.fechado,''N'') from ofc_status s where s.cnpj = '+QuotedStr(dmApp.Cnpj)+' and s.codigo = ' +OrdemCOD_STATUS.asString;
  fechado := RetornaValor(sql,dmApp.Transaction);
  if not (VarIsNull(Fechado)) then
  begin
    if ((fechado = 'S') and (OrdemDATA_FECHAMENTO.value <= 0)) then
    begin
      OrdemDATA_FECHAMENTO.Value := DateOf(DmApp.Data_Servidor);
      OrdemHR_FECHAMENTO.Value := TimeOf(DmApp.Data_Servidor);
    end;
  end;

  if ((OrdemDATA_FECHAMENTO.value > 0) and (OrdemOBS_FECHAMENTO.IsNull)) then
  begin
    Application.MessageBox('Impossível salvar alterações. Defina o comentário de fechamento da OS','Aviso',mb_iconerror + mb_ok);
    abort;
    exit;
  end;

  if ((OrdemHR_FECHAMENTO.value = StrToTime('00:00:00')) and (OrdemDATA_FECHAMENTO.value > 0)) then
  begin
    Application.MessageBox('Impossível salvar alterações. Defina um horário de fechamento válido','Aviso',mb_iconerror + mb_ok);
    OrdemHR_FECHAMENTO.value := TimeOF(dmapp.Data_Servidor);
    abort;
    exit;
  end;

  //validando a selecao de uma prioridade válida
  if not(OrdemPRIORIDADE.IsNull) then
  begin
    sql :=  'select codigo from OFC_ORDEM_SERVICO Where cnpj =' +QuotedStr(dmApp.Cnpj)+' and pessoa_fj = '+OrdemPESSOA_FJ.AsString+' and data_fechamento is null and prioridade = '+OrdemPRIORIDADE.AsString +' and codigo <> '+OrdemCODIGO.AsString;
    codigo := RetornaValor(sql,dmApp.Transaction);
    if not VarIsNull(codigo) then
    begin
      Application.MessageBox(Pchar('A prioridade selecionada já esta atribuída para a OS de nº '+VarToStr(codigo)),'Aviso',mb_ok+mb_iconerror);
      abort;
      exit;
    end;
  end;
end;

procedure TDmServicos.OS_INTERVALO_EMAIL_INSERTNewRecord(
  DataSet: TDataSet);
begin
 OS_INTERVALO_EMAIL_INSERTCNPJ.value := dmapp.cnpj;
end;

procedure TDmServicos.OS_INTERVALONewRecord(DataSet: TDataSet);
begin
  OS_INTERVALODT_LANCTO.value := DmApp.DataServidor;
end;

procedure TDmServicos.Servicos_ItensAfterPost(DataSet: TDataSet);
begin
      DmServicos.Servicos_Itens.Refresh;
end;

procedure TDmServicos.OFC_GRAVIDADEBeforePost(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBQuery).FieldByName('CNPJ').asString := DMApp.Cnpj;
       (Dataset as TIBQuery).Prepare;
     End;
  If (DataSet is TIBDataset) Then
     Begin
       (DataSet as TIBDataSet).FieldByName('CNPJ').asString := DMApp.Cnpj;
       (Dataset as TIBDataSet).Prepare;
     End;
end;

procedure TDmServicos.OrdemPESSOA_FJChange(Sender: TField);
begin
  if (OrdemMAP_LAT.asString = '') then
  begin
    SelEndereco.Close;
    SelEndereco.parambyname('cnpj').value := dmapp.cnpj;
    SelEndereco.parambyname('codigo').value := DmServicos.OrdemPESSOA_FJ.Value;
    SelEndereco.Open;

    OrdemMAP_LAT.value := SelEnderecoMAP_LAT.Value;
    OrdemMAP_LONG.value := SelEnderecoMAP_LONG.Value;
  end;

  if(dmApp.OFC_EXIBE_NOTIFICACAO = 'S') then
  begin
    if (OrdemCOD_CONTATO.asInteger <=0) then
      OrdemCOD_CONTATO.value := OrdemPESSOA_FJ.Value;
  end;

  if (dmApp.EXIBE_OFC_VISUALIZACAO = '0') then
  begin
    dmCadastros2.SelClientes.Locate('CODIGO',OrdemPESSOA_FJ.Value,[loCaseInsensitive]);
    OrdemMECANICO.value :=  dmCadastros2.SelClientesTECNICO.value ;
  end;
end;

procedure TDmServicos.OrdemSERIEChange(Sender: TField);
begin
  if OrdemSERIE.asString <> '' then
  begin
    QrySelSerie.Close;
    QrySelSerie.ParamByName('serie').value := OrdemSERIE.asString;
    QrySelSerie.Open;

    if (QrySelSerieCOD_CLIENTE.AsInteger > 0) then
      OrdemPESSOA_FJ.Value := QrySelSerieCOD_CLIENTE.AsInteger;

    if (QrySelSerieCOD_EQUIPAMENTO.AsString <> '') then
      OrdemPRODUTO.Value := QrySelSerieCOD_EQUIPAMENTO.value;
  end;
end;

procedure TDmServicos.OrdemPRODUTOValidate(Sender: TField);
begin
  RetCodTecnico.Close;
  RetCodTecnico.parambyname('cnpj').value := dmApp.cnpj;
  RetCodTecnico.parambyname('codigo').value := OrdemPRODUTO.value;
  RetCodTecnico.Open;

  if RetCodTecnicoCOD_TECNICO.AsInteger > 0 then
  begin
    if RetCodTecnicoCOD_TECNICO.AsInteger <> OrdemMECANICO.AsInteger then
    begin
      if application.messagebox('Equipamento possuí técnico específico vinculado. Deseja alterar técnico atual?','Aviso', mb_yesno + mb_iconquestion) = id_yes then
         OrdemMECANICO.value := RetCodTecnicoCOD_TECNICO.AsInteger;
    end;
  end;
end;

end.

