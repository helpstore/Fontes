unit untCadClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untCadPadraoMaster, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxContainer,
  dxSkinsdxBarPainter, IBCustomDataSet, cxIntlBase, cxintl,
  cxPropertiesStore, cxGridCustomPopupMenu, cxGridPopupMenu, dxBarDBNav,
  ImgList, ActnList, dxBar, cxClasses, IBQuery, cxLabel, cxTextEdit,
  cxDBEdit, cxGridDBTableView, ExtCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxPC, cxCheckBox, cxButtonEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Menus, cxGroupBox, cxCalendar, cxMemo, cxCalc,
  cxRadioGroup, cxSpinEdit, StdCtrls, cxButtons, dxmdaset;

type
  TfrmCadClientes = class(TfrmCadPadraoMaster)
    dtListCNPJ: TIBStringField;
    dtListPESSOA_FJ: TIntegerField;
    dtListCOMPRADOR: TIBStringField;
    dtListFONE: TIBStringField;
    dtListCNPJ_VEND: TIBStringField;
    dtListCOD_VEND: TIntegerField;
    dtListCNPJ_FPAGTO: TIBStringField;
    dtListCOD_FPAGTO: TIntegerField;
    dtListREQUISICAO: TIBStringField;
    dtListDIA_PREF_FAT: TIntegerField;
    dtListCLASSIF: TIBStringField;
    dtListLIMITE_TEMPO: TIntegerField;
    dtListLIMITE_CREDITO: TFloatField;
    dtListREFERENCIAS: TBlobField;
    dtListOBS: TBlobField;
    dtListBLOQUEADO: TIBStringField;
    dtListULT_VENDEDOR: TIntegerField;
    dtListFREQUENCIA: TIBStringField;
    dtListATIVIDADE: TIntegerField;
    dtListCEP_TRABALHO: TIBStringField;
    dtListCIDADE_PAIS: TIntegerField;
    dtListCONJUGE: TIBStringField;
    dtListDT_NASC_CONJUGE: TDateTimeField;
    dtListENDERECO_PAIS: TIntegerField;
    dtListENDERECO_TRABALHO: TIntegerField;
    dtListFONE_LOCAL_CONJUGE: TIBStringField;
    dtListFONE_TRABALHO: TIBStringField;
    dtListLOCAL_TRAB_CONJUGE: TIBStringField;
    dtListLOCAL_TRABALHO: TIBStringField;
    dtListMAE: TIBStringField;
    dtListPAI: TIBStringField;
    dtListRAMAL_FONE_TRAB: TIBStringField;
    dtListRAMAL_LOCAL_CONJUGE: TIBStringField;
    dtListRENDA_MENSAL: TFloatField;
    dtListTEMPO_SERV_CONJUGE: TIBStringField;
    dtListTEMPO_SERVICO: TIBStringField;
    dtListCNPJ_CLASSIF: TIBStringField;
    dtListCOD_CLASSIF: TIntegerField;
    dtListPRAZO: TIntegerField;
    dtListPERIODO_FATURAMENTO: TIBStringField;
    dtListTOLERANCIA_FATURAMENTO: TIntegerField;
    dtListAJUSTE_AUT_FATURAS: TIBStringField;
    dtListTAXA_JUROS: TFloatField;
    dtListMEDIA_COMPRAS_MES: TIntegerField;
    dtListNAO_COBR_JUR_ATE: TIntegerField;
    dtListASSINA_NOTA: TIBStringField;
    dtListCONTROLA_PLACA: TIBStringField;
    dtListCONTROLA_KM: TIBStringField;
    dtListADMISSAO: TDateTimeField;
    dtListADMISSAO_CONJUGE: TDateTimeField;
    dtListNUMERO_TRABALHO: TIBStringField;
    dtListLIMITE_RETIRADAS_DIARIA: TFloatField;
    dtListVALOR_MAXIMO_RETIRADA: TFloatField;
    dtListNUMERO_PAIS: TIBStringField;
    dtListCHEQUE: TIBStringField;
    dtListALIQUOTA_DESCONTO: TFloatField;
    dtListOPTANTE_SIMPLES: TIBStringField;
    dtListCONS_REV: TIBStringField;
    dtListSENHA_PDV: TIBStringField;
    dtListSUB_TRIBUTARIO: TIBStringField;
    dtListRET_PIS: TIBStringField;
    dtListRET_INSS: TIBStringField;
    dtListRET_IRRF: TIBStringField;
    dtListBAIRRO: TIntegerField;
    dtListNEG_N_VEZES: TSmallintField;
    dtListCOMPLEMENTO: TIBStringField;
    dtListCATEGORIA: TIntegerField;
    dtListSINCRONIZA_FILIAIS: TIBStringField;
    dtListNOME_RAZAO: TIBStringField;
    TVRegistroCNPJ: TcxGridDBBandedColumn;
    TVRegistroPESSOA_FJ: TcxGridDBBandedColumn;
    TVRegistroCOMPRADOR: TcxGridDBBandedColumn;
    TVRegistroFONE: TcxGridDBBandedColumn;
    TVRegistroCNPJ_VEND: TcxGridDBBandedColumn;
    TVRegistroCOD_VEND: TcxGridDBBandedColumn;
    TVRegistroCNPJ_FPAGTO: TcxGridDBBandedColumn;
    TVRegistroCOD_FPAGTO: TcxGridDBBandedColumn;
    TVRegistroREQUISICAO: TcxGridDBBandedColumn;
    TVRegistroDIA_PREF_FAT: TcxGridDBBandedColumn;
    TVRegistroCLASSIF: TcxGridDBBandedColumn;
    TVRegistroLIMITE_TEMPO: TcxGridDBBandedColumn;
    TVRegistroLIMITE_CREDITO: TcxGridDBBandedColumn;
    TVRegistroREFERENCIAS: TcxGridDBBandedColumn;
    TVRegistroOBS: TcxGridDBBandedColumn;
    TVRegistroBLOQUEADO: TcxGridDBBandedColumn;
    TVRegistroULT_VENDEDOR: TcxGridDBBandedColumn;
    TVRegistroFREQUENCIA: TcxGridDBBandedColumn;
    TVRegistroATIVIDADE: TcxGridDBBandedColumn;
    TVRegistroCEP_TRABALHO: TcxGridDBBandedColumn;
    TVRegistroCIDADE_PAIS: TcxGridDBBandedColumn;
    TVRegistroCONJUGE: TcxGridDBBandedColumn;
    TVRegistroDT_NASC_CONJUGE: TcxGridDBBandedColumn;
    TVRegistroENDERECO_PAIS: TcxGridDBBandedColumn;
    TVRegistroENDERECO_TRABALHO: TcxGridDBBandedColumn;
    TVRegistroFONE_LOCAL_CONJUGE: TcxGridDBBandedColumn;
    TVRegistroFONE_TRABALHO: TcxGridDBBandedColumn;
    TVRegistroLOCAL_TRAB_CONJUGE: TcxGridDBBandedColumn;
    TVRegistroLOCAL_TRABALHO: TcxGridDBBandedColumn;
    TVRegistroMAE: TcxGridDBBandedColumn;
    TVRegistroPAI: TcxGridDBBandedColumn;
    TVRegistroRAMAL_FONE_TRAB: TcxGridDBBandedColumn;
    TVRegistroRAMAL_LOCAL_CONJUGE: TcxGridDBBandedColumn;
    TVRegistroRENDA_MENSAL: TcxGridDBBandedColumn;
    TVRegistroTEMPO_SERV_CONJUGE: TcxGridDBBandedColumn;
    TVRegistroTEMPO_SERVICO: TcxGridDBBandedColumn;
    TVRegistroCNPJ_CLASSIF: TcxGridDBBandedColumn;
    TVRegistroCOD_CLASSIF: TcxGridDBBandedColumn;
    TVRegistroPRAZO: TcxGridDBBandedColumn;
    TVRegistroPERIODO_FATURAMENTO: TcxGridDBBandedColumn;
    TVRegistroTOLERANCIA_FATURAMENTO: TcxGridDBBandedColumn;
    TVRegistroAJUSTE_AUT_FATURAS: TcxGridDBBandedColumn;
    TVRegistroTAXA_JUROS: TcxGridDBBandedColumn;
    TVRegistroMEDIA_COMPRAS_MES: TcxGridDBBandedColumn;
    TVRegistroNAO_COBR_JUR_ATE: TcxGridDBBandedColumn;
    TVRegistroASSINA_NOTA: TcxGridDBBandedColumn;
    TVRegistroCONTROLA_PLACA: TcxGridDBBandedColumn;
    TVRegistroCONTROLA_KM: TcxGridDBBandedColumn;
    TVRegistroADMISSAO: TcxGridDBBandedColumn;
    TVRegistroADMISSAO_CONJUGE: TcxGridDBBandedColumn;
    TVRegistroNUMERO_TRABALHO: TcxGridDBBandedColumn;
    TVRegistroLIMITE_RETIRADAS_DIARIA: TcxGridDBBandedColumn;
    TVRegistroVALOR_MAXIMO_RETIRADA: TcxGridDBBandedColumn;
    TVRegistroNUMERO_PAIS: TcxGridDBBandedColumn;
    TVRegistroCHEQUE: TcxGridDBBandedColumn;
    TVRegistroALIQUOTA_DESCONTO: TcxGridDBBandedColumn;
    TVRegistroOPTANTE_SIMPLES: TcxGridDBBandedColumn;
    TVRegistroCONS_REV: TcxGridDBBandedColumn;
    TVRegistroSENHA_PDV: TcxGridDBBandedColumn;
    TVRegistroSUB_TRIBUTARIO: TcxGridDBBandedColumn;
    TVRegistroRET_PIS: TcxGridDBBandedColumn;
    TVRegistroRET_INSS: TcxGridDBBandedColumn;
    TVRegistroRET_IRRF: TcxGridDBBandedColumn;
    TVRegistroBAIRRO: TcxGridDBBandedColumn;
    TVRegistroNEG_N_VEZES: TcxGridDBBandedColumn;
    TVRegistroCOMPLEMENTO: TcxGridDBBandedColumn;
    TVRegistroCATEGORIA: TcxGridDBBandedColumn;
    TVRegistroSINCRONIZA_FILIAIS: TcxGridDBBandedColumn;
    TVRegistroNOME_RAZAO: TcxGridDBBandedColumn;
    TVRegistroCPF_CGC: TcxGridDBBandedColumn;
    dsPessoa: TDataSource;
    QryPessoa: TIBQuery;
    QryPessoaCODIGO: TIntegerField;
    QryPessoaNOME_RAZAO: TIBStringField;
    aTfrmCadPessoas: TcxDBLookupComboBox;
    cxLabel12: TcxLabel;
    dtEditCNPJ: TIBStringField;
    dtEditPESSOA_FJ: TIntegerField;
    dtEditCOMPRADOR: TIBStringField;
    dtEditFONE: TIBStringField;
    dtEditCNPJ_VEND: TIBStringField;
    dtEditCOD_VEND: TIntegerField;
    dtEditCNPJ_FPAGTO: TIBStringField;
    dtEditCOD_FPAGTO: TIntegerField;
    dtEditREQUISICAO: TIBStringField;
    dtEditDIA_PREF_FAT: TIntegerField;
    dtEditCLASSIF: TIBStringField;
    dtEditLIMITE_TEMPO: TIntegerField;
    dtEditLIMITE_CREDITO: TFloatField;
    dtEditREFERENCIAS: TBlobField;
    dtEditOBS: TBlobField;
    dtEditBLOQUEADO: TIBStringField;
    dtEditULT_VENDEDOR: TIntegerField;
    dtEditFREQUENCIA: TIBStringField;
    dtEditATIVIDADE: TIntegerField;
    dtEditCEP_TRABALHO: TIBStringField;
    dtEditCIDADE_PAIS: TIntegerField;
    dtEditCONJUGE: TIBStringField;
    dtEditDT_NASC_CONJUGE: TDateTimeField;
    dtEditENDERECO_PAIS: TIntegerField;
    dtEditENDERECO_TRABALHO: TIntegerField;
    dtEditFONE_LOCAL_CONJUGE: TIBStringField;
    dtEditFONE_TRABALHO: TIBStringField;
    dtEditLOCAL_TRAB_CONJUGE: TIBStringField;
    dtEditLOCAL_TRABALHO: TIBStringField;
    dtEditMAE: TIBStringField;
    dtEditPAI: TIBStringField;
    dtEditRAMAL_FONE_TRAB: TIBStringField;
    dtEditRAMAL_LOCAL_CONJUGE: TIBStringField;
    dtEditRENDA_MENSAL: TFloatField;
    dtEditTEMPO_SERV_CONJUGE: TIBStringField;
    dtEditTEMPO_SERVICO: TIBStringField;
    dtEditCNPJ_CLASSIF: TIBStringField;
    dtEditCOD_CLASSIF: TIntegerField;
    dtEditPRAZO: TIntegerField;
    dtEditPERIODO_FATURAMENTO: TIBStringField;
    dtEditTOLERANCIA_FATURAMENTO: TIntegerField;
    dtEditAJUSTE_AUT_FATURAS: TIBStringField;
    dtEditTAXA_JUROS: TFloatField;
    dtEditMEDIA_COMPRAS_MES: TIntegerField;
    dtEditNAO_COBR_JUR_ATE: TIntegerField;
    dtEditASSINA_NOTA: TIBStringField;
    dtEditCONTROLA_PLACA: TIBStringField;
    dtEditCONTROLA_KM: TIBStringField;
    dtEditADMISSAO: TDateTimeField;
    dtEditADMISSAO_CONJUGE: TDateTimeField;
    dtEditNUMERO_TRABALHO: TIBStringField;
    dtEditLIMITE_RETIRADAS_DIARIA: TFloatField;
    dtEditVALOR_MAXIMO_RETIRADA: TFloatField;
    dtEditNUMERO_PAIS: TIBStringField;
    dtEditCHEQUE: TIBStringField;
    dtEditALIQUOTA_DESCONTO: TFloatField;
    dtEditOPTANTE_SIMPLES: TIBStringField;
    dtEditCONS_REV: TIBStringField;
    dtEditSENHA_PDV: TIBStringField;
    dtEditSUB_TRIBUTARIO: TIBStringField;
    dtEditRET_PIS: TIBStringField;
    dtEditRET_INSS: TIBStringField;
    dtEditRET_IRRF: TIBStringField;
    dtEditBAIRRO: TIntegerField;
    dtEditNEG_N_VEZES: TSmallintField;
    dtEditCOMPLEMENTO: TIBStringField;
    dtEditCATEGORIA: TIntegerField;
    dtEditSINCRONIZA_FILIAIS: TIBStringField;
    PCCLIENTE: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Btnclassificacao: TcxButton;
    BtnForma: TcxButton;
    cxDBTextEdit8: TcxDBTextEdit;
    cxLabel16: TcxLabel;
    cxDBMaskEdit11: TcxDBMaskEdit;
    cxLabel29: TcxLabel;
    aTfrmCadVendedor2: TcxDBLookupComboBox;
    cxLabel42: TcxLabel;
    cmbForma: TcxDBLookupComboBox;
    cxLabel45: TcxLabel;
    cxLabel46: TcxLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    cxLabel83: TcxLabel;
    cxDBSpinEdit4: TcxDBSpinEdit;
    cxDBSpinEdit5: TcxDBSpinEdit;
    cxLabel85: TcxLabel;
    cxDBCheckBox11: TcxDBCheckBox;
    cxDBCheckBox12: TcxDBCheckBox;
    cxDBCheckBox13: TcxDBCheckBox;
    cxLabel86: TcxLabel;
    cxLabel87: TcxLabel;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBRadioGroup4: TcxDBRadioGroup;
    cxDBRadioGroup5: TcxDBRadioGroup;
    cxLabel88: TcxLabel;
    aTfrmCadClassificacao: TcxDBLookupComboBox;
    cxLabel89: TcxLabel;
    cxDBCalcEdit6: TcxDBCalcEdit;
    aTFrmCadCategoriaClientes: TcxDBLookupComboBox;
    cxLabel10: TcxLabel;
    btnCategoria: TcxButton;
    cxDBCheckBox1: TcxDBCheckBox;
    dxTabSheet8: TcxTabSheet;
    cxDBMemo2: TcxDBMemo;
    cxDBMemo3: TcxDBMemo;
    cxLabel90: TcxLabel;
    cxLabel91: TcxLabel;
    cxDBCheckBox14: TcxDBCheckBox;
    cxDBCheckBox15: TcxDBCheckBox;
    cxDBCheckBox16: TcxDBCheckBox;
    cxDBCheckBox17: TcxDBCheckBox;
    cxDBTextEdit10: TcxDBTextEdit;
    cxLabel92: TcxLabel;
    cxDBCheckBox18: TcxDBCheckBox;
    cxDBCheckBox19: TcxDBCheckBox;
    cxLabel93: TcxLabel;
    cxDBCalcEdit7: TcxDBCalcEdit;
    cxLabel94: TcxLabel;
    cxDBSpinEdit6: TcxDBSpinEdit;
    cxLabel96: TcxLabel;
    cxLabel97: TcxLabel;
    cxLabel98: TcxLabel;
    cxDBSpinEdit7: TcxDBSpinEdit;
    cxLabel99: TcxLabel;
    cxDBCalcEdit8: TcxDBCalcEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxLabel100: TcxLabel;
    cxLabel101: TcxLabel;
    cxDBCalcEdit9: TcxDBCalcEdit;
    cxLabel102: TcxLabel;
    cxDBCalcEdit10: TcxDBCalcEdit;
    cxLabel103: TcxLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    dxTabSheet10: TcxTabSheet;
    BtnAtividade: TcxButton;
    BtnEnderecoPai: TcxButton;
    BtnCidadePai: TcxButton;
    cmbLogradouroTrabalho1: TcxDBTextEdit;
    cxLabel104: TcxLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    cxLabel105: TcxLabel;
    cxDBMaskEdit12: TcxDBMaskEdit;
    cxLabel107: TcxLabel;
    cxLabel108: TcxLabel;
    cxDBDateEdit11: TcxDBDateEdit;
    cxLabel109: TcxLabel;
    aTfrmCadAtividades: TcxDBLookupComboBox;
    cxLabel110: TcxLabel;
    cxDBTextEdit18: TcxDBTextEdit;
    cxLabel111: TcxLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    cxLabel112: TcxLabel;
    aTfrmCadLogradouro: TcxDBLookupComboBox;
    cxLabel113: TcxLabel;
    cxLabel114: TcxLabel;
    aTfrmCadCidades: TcxDBLookupComboBox;
    cxLabel115: TcxLabel;
    cxDBMaskEdit13: TcxDBMaskEdit;
    cxLabel116: TcxLabel;
    cxDBMaskEdit14: TcxDBMaskEdit;
    cxLabel117: TcxLabel;
    cxDBCalcEdit11: TcxDBCalcEdit;
    cxDBMaskEdit15: TcxDBMaskEdit;
    cxGroupBox7: TcxGroupBox;
    BtnEnderecoTrab: TcxButton;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBDateEdit12: TcxDBDateEdit;
    cxLabel118: TcxLabel;
    cxLabel119: TcxLabel;
    cxLabel120: TcxLabel;
    cxDBTextEdit21: TcxDBTextEdit;
    cTfrmCadLogradouro: TcxDBLookupComboBox;
    cxLabel121: TcxLabel;
    cxDBDateEdit13: TcxDBDateEdit;
    cxLabel122: TcxLabel;
    cxDBMaskEdit16: TcxDBMaskEdit;
    cxLabel123: TcxLabel;
    cxDBMaskEdit17: TcxDBMaskEdit;
    cxLabel124: TcxLabel;
    cxLabel125: TcxLabel;
    cxDBTextEdit22: TcxDBTextEdit;
    btnCadPessoa: TcxButton;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    dsCategoria: TDataSource;
    QryCategoria: TIBQuery;
    QryCategoriaCNPJ: TIBStringField;
    QryCategoriaCODIGO: TIntegerField;
    QryCategoriaNOME: TIBStringField;
    QryClassificacao: TIBQuery;
    dsClassificacao: TDataSource;
    QryClassificacaoCNPJ: TIBStringField;
    QryClassificacaoCODIGO: TIntegerField;
    QryClassificacaoNOME: TIBStringField;
    QryClassificacaoDIG_SENHA: TIBStringField;
    btnCadVendedor: TcxButton;
    QryVendedor: TIBQuery;
    dsVendedor: TDataSource;
    QryVendedorCNPJ: TIBStringField;
    QryVendedorCODIGO: TIntegerField;
    QryVendedorNOME: TIBStringField;
    QryVendedorCOM_VISTA: TFloatField;
    QryVendedorCOM_PRAZO: TFloatField;
    QryVendedorPESSOA_FJ: TIntegerField;
    QryVendedorSENHA: TIBStringField;
    QryVendedorATIVO: TIBStringField;
    QryVendedorCOD_PERFIL: TIntegerField;
    QryVendedorCOD_PERFIL_PAGTO: TIntegerField;
    QryFormaPagto: TIBQuery;
    dsFormaPagto: TDataSource;
    QryAtividades: TIBQuery;
    dsAtividade: TDataSource;
    QryAtividadesCNPJ: TIBStringField;
    QryAtividadesCODIGO: TIntegerField;
    QryAtividadesNOME: TIBStringField;
    dsLogradouroPai: TDataSource;
    QryLogradouroPai: TIBQuery;
    QryCidades: TIBQuery;
    dsCidades: TDataSource;
    QryCidadesCNPJ: TIBStringField;
    QryCidadesCODIGO: TIntegerField;
    QryCidadesNOME: TIBStringField;
    QryCidadesUF: TIBStringField;
    QryCidadesCOD_IBGE: TIBStringField;
    QryCidadesCOD_IAGRO: TIntegerField;
    ContratosItens: TIBQuery;
    ContratosItensCNPJ: TIBStringField;
    ContratosItensCODIGO: TIntegerField;
    ContratosItensCOD_PRODUTO: TIBStringField;
    ContratosItensCONTRATO: TIntegerField;
    ContratosItensDT_ADICAO: TDateTimeField;
    ContratosItensDATA: TDateTimeField;
    ContratosItensATIVO: TIBStringField;
    ContratosItensPRODUTO: TIBStringField;
    ContratosItensSERIE: TIBStringField;
    ContratosItensTIPO_PRODUTO: TIBStringField;
    ContratosItensMEDIA_COPIAS: TIntegerField;
    ContratosItensQTDE_COPIAS_PREVENTIVA: TIntegerField;
    ContratosItensDIAS_RECHAMADO: TIntegerField;
    ContratosItensTEMPO_RESPOSTA: TIntegerField;
    ContratosItensINFORMACOES_ITENS: TMemoField;
    ContratosItensDT_RETIRADA: TDateField;
    ContratosItensCOD_INDEXADOR: TIntegerField;
    ContratosItensDT_VIGENCIA_INICIAL: TDateField;
    ContratosItensDT_VIGENCIA_FINAL: TDateField;
    ContratosItensVALOR: TFloatField;
    ContratosItensMODELO_EQUIPAMENTO: TIBStringField;
    ContratosItensGERA_LEITURA: TIBStringField;
    dsEquipamento: TDataSource;
    dsLinkContrato: TDataSource;
    Contrato: TIBQuery;
    ContratoCODIGO: TIntegerField;
    ContratoNUM_CONTRATO: TIBStringField;
    ContratoDT_INICIO: TDateTimeField;
    ContratoDT_FIM: TDateTimeField;
    ContratoATIVO: TIBStringField;
    ContratoCOD_CONTRATO: TIntegerField;
    ContratoTIPO_CONTRATO: TIBStringField;
    ContratoDATA: TDateField;
    ContratoCNPJ: TIBStringField;
    Panel6: TPanel;
    GridContratos: TcxGrid;
    TVContratos: TcxGridDBBandedTableView;
    TVContratosCODIGO: TcxGridDBBandedColumn;
    TVContratosNUM_CONTRATO: TcxGridDBBandedColumn;
    TVContratosDT_INICIO: TcxGridDBBandedColumn;
    TVContratosDT_FIM: TcxGridDBBandedColumn;
    TVContratosATIVO: TcxGridDBBandedColumn;
    TVContratosCOD_CONTRATO: TcxGridDBBandedColumn;
    TVContratosTIPO_CONTRATO: TcxGridDBBandedColumn;
    TVContratosDATA: TcxGridDBBandedColumn;
    TVContratosCNPJ: TcxGridDBBandedColumn;
    LVContratos: TcxGridLevel;
    GridEquipamento: TcxGrid;
    TVEquipamentos: TcxGridDBBandedTableView;
    TVEquipamentosCNPJ: TcxGridDBBandedColumn;
    TVEquipamentosCODIGO: TcxGridDBBandedColumn;
    TVEquipamentosCOD_PRODUTO: TcxGridDBBandedColumn;
    TVEquipamentosCONTRATO: TcxGridDBBandedColumn;
    TVEquipamentosDT_ADICAO: TcxGridDBBandedColumn;
    TVEquipamentosDATA: TcxGridDBBandedColumn;
    TVEquipamentosATIVO: TcxGridDBBandedColumn;
    TVEquipamentosPRODUTO: TcxGridDBBandedColumn;
    TVEquipamentosSERIE: TcxGridDBBandedColumn;
    TVEquipamentosTIPO_PRODUTO: TcxGridDBBandedColumn;
    TVEquipamentosMEDIA_COPIAS: TcxGridDBBandedColumn;
    TVEquipamentosQTDE_COPIAS_PREVENTIVA: TcxGridDBBandedColumn;
    TVEquipamentosDIAS_RECHAMADO: TcxGridDBBandedColumn;
    TVEquipamentosTEMPO_RESPOSTA: TcxGridDBBandedColumn;
    TVEquipamentosINFORMACOES_ITENS: TcxGridDBBandedColumn;
    TVEquipamentosDT_RETIRADA: TcxGridDBBandedColumn;
    TVEquipamentosCOD_INDEXADOR: TcxGridDBBandedColumn;
    TVEquipamentosDT_VIGENCIA_INICIAL: TcxGridDBBandedColumn;
    TVEquipamentosDT_VIGENCIA_FINAL: TcxGridDBBandedColumn;
    TVEquipamentosVALOR: TcxGridDBBandedColumn;
    TVEquipamentosMODELO_EQUIPAMENTO: TcxGridDBBandedColumn;
    TVEquipamentosGERA_LEITURA: TcxGridDBBandedColumn;
    LVEquipamento: TcxGridLevel;
    Panel5: TPanel;
    dtListDet1CNPJ: TIBStringField;
    dtListDet1PESSOA_FJ: TIntegerField;
    dtListDet1PORCENTAGEM: TFloatField;
    dtListDet1PRODUTO: TIBStringField;
    dtListDet1NOME_PRODUTO: TIBStringField;
    dtListDet1ORIGINAL: TFloatField;
    dtListDet1RESULTADO: TFloatField;
    TVDet1CNPJ: TcxGridDBBandedColumn;
    TVDet1PESSOA_FJ: TcxGridDBBandedColumn;
    TVDet1PORCENTAGEM: TcxGridDBBandedColumn;
    TVDet1PRODUTO: TcxGridDBBandedColumn;
    TVDet1NOME_PRODUTO: TcxGridDBBandedColumn;
    TVDet1RESULTADO: TcxGridDBBandedColumn;
    TVDet1ORIGINAL: TcxGridDBBandedColumn;
    cxButton1: TcxButton;
    cmbProduto: TcxDBLookupComboBox;
    cxLabel11: TcxLabel;
    dsProduto: TDataSource;
    QryProduto: TIBQuery;
    QryProdutoCODIGO: TIBStringField;
    QryProdutoSERIE: TIBStringField;
    QryProdutoNOME: TIBStringField;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxLabel13: TcxLabel;
    edtPorcentagem: TcxDBCalcEdit;
    cxLabel14: TcxLabel;
    edtResultado: TcxDBCalcEdit;
    cxLabel15: TcxLabel;
    dtEditDet1CNPJ: TIBStringField;
    dtEditDet1PESSOA_FJ: TIntegerField;
    dtEditDet1PORCENTAGEM: TFloatField;
    dtEditDet1PRODUTO: TIBStringField;
    dtEditDet1ORIGINAL: TFloatField;
    dtEditDet1RESULTADO: TFloatField;
    QryProdutoPRC_VENDA: TFloatField;
    dtListDet2ANO: TSmallintField;
    dtListDet2CNPJ: TIBStringField;
    dtListDet2CODIGO: TIntegerField;
    dtListDet2PESSOA_FJ: TIntegerField;
    dtListDet2TIPO_VEICULO: TIntegerField;
    dtListDet2MARCA_VEICULO: TIntegerField;
    dtListDet2MODELO: TIBStringField;
    dtListDet2PLACA: TIBStringField;
    dtListDet2KM_ATUAL: TFloatField;
    dtListDet2COMBUSTIVEL: TIBStringField;
    dtListDet2MEDIA_KM: TFloatField;
    dtListDet2ATIVO: TIBStringField;
    dtListDet2MOTORISTA: TIBStringField;
    dtListDet2COR: TIBStringField;
    dtListDet2N_CHASSI: TIBStringField;
    dtListDet2MARCA_NOME: TIBStringField;
    dtListDet2TIPO_NOME: TIBStringField;
    TVDet2ANO: TcxGridDBBandedColumn;
    TVDet2CNPJ: TcxGridDBBandedColumn;
    TVDet2CODIGO: TcxGridDBBandedColumn;
    TVDet2PESSOA_FJ: TcxGridDBBandedColumn;
    TVDet2TIPO_VEICULO: TcxGridDBBandedColumn;
    TVDet2MARCA_VEICULO: TcxGridDBBandedColumn;
    TVDet2MODELO: TcxGridDBBandedColumn;
    TVDet2PLACA: TcxGridDBBandedColumn;
    TVDet2KM_ATUAL: TcxGridDBBandedColumn;
    TVDet2COMBUSTIVEL: TcxGridDBBandedColumn;
    TVDet2MEDIA_KM: TcxGridDBBandedColumn;
    TVDet2ATIVO: TcxGridDBBandedColumn;
    TVDet2MOTORISTA: TcxGridDBBandedColumn;
    TVDet2COR: TcxGridDBBandedColumn;
    TVDet2N_CHASSI: TcxGridDBBandedColumn;
    TVDet2MARCA_NOME: TcxGridDBBandedColumn;
    TVDet2TIPO_NOME: TcxGridDBBandedColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel17: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel18: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel19: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel20: TcxLabel;
    aTfrmCadTipoVeiculo: TcxDBLookupComboBox;
    cxButton2: TcxButton;
    cxLabel21: TcxLabel;
    cxButton3: TcxButton;
    aTfrmCadMarcaVeiculo: TcxDBLookupComboBox;
    cxLabel22: TcxLabel;
    cxDBCalcEdit4: TcxDBCalcEdit;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxDBCalcEdit5: TcxDBCalcEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel25: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxLabel26: TcxLabel;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBComboBox1: TcxDBComboBox;
    dtEditDet2ANO: TSmallintField;
    dtEditDet2CNPJ: TIBStringField;
    dtEditDet2CODIGO: TIntegerField;
    dtEditDet2PESSOA_FJ: TIntegerField;
    dtEditDet2TIPO_VEICULO: TIntegerField;
    dtEditDet2MARCA_VEICULO: TIntegerField;
    dtEditDet2MODELO: TIBStringField;
    dtEditDet2PLACA: TIBStringField;
    dtEditDet2KM_ATUAL: TFloatField;
    dtEditDet2COMBUSTIVEL: TIBStringField;
    dtEditDet2MEDIA_KM: TFloatField;
    dtEditDet2ATIVO: TIBStringField;
    dtEditDet2MOTORISTA: TIBStringField;
    dtEditDet2COR: TIBStringField;
    dtEditDet2N_CHASSI: TIBStringField;
    cxLabel27: TcxLabel;
    QryTipoVeiculo: TIBQuery;
    dsTipoVeiculo: TDataSource;
    QryTipoVeiculoCNPJ: TIBStringField;
    QryTipoVeiculoCODIGO: TIntegerField;
    QryTipoVeiculoNOME: TIBStringField;
    QryMarcaVeiculo: TIBQuery;
    dsMarcaVeiculo: TDataSource;
    QryMarcaVeiculoCNPJ: TIBStringField;
    QryMarcaVeiculoCODIGO: TIntegerField;
    QryMarcaVeiculoNOME: TIBStringField;
    dtListDet3CNPJ: TIBStringField;
    dtListDet3PESSOA_FJ: TIntegerField;
    dtListDet3PROPRIEDADE: TIntegerField;
    dtListDet3NOME: TIBStringField;
    dtListDet3PROPRIETARIO: TIBStringField;
    dtListDet3IE: TIBStringField;
    dtListDet3ENDERECO: TIntegerField;
    dtListDet3COMPLEMENTO: TIBStringField;
    dtListDet3CIDADE: TIntegerField;
    dtListDet3UF: TIBStringField;
    dtListDet3CEP: TIBStringField;
    dtListDet3AREA_TOTAL: TIBStringField;
    dtListDet3OBS: TBlobField;
    dtListDet3NUMERO: TIBStringField;
    dtListDet3BAIRRO: TIntegerField;
    dtListDet3ATIVA: TIBStringField;
    dtListDet3TIPO_CONTRATO: TIntegerField;
    dtListDet3MODELO: TIntegerField;
    dtListDet3GARANTIA: TDateTimeField;
    dtListDet3CPF: TIBStringField;
    dtListDet3VENDEDOR: TIntegerField;
    dtListDet3TECNICO: TIntegerField;
    dtListDet3CONTRATO: TIBStringField;
    dtListDet3REGIAO: TSmallintField;
    dtListDet3NOME_CIDADE: TIBStringField;
    dtListDet3NOME_LOGRADOURO: TIBStringField;
    dtListDet3NOME_BAIRRO: TIBStringField;
    dtListDet3NOME_TIPO_CONTRATO: TIBStringField;
    dtListDet3NOME_MODELO_PROPRIEDADE: TIBStringField;
    dtListDet3NOME_REGIAO: TIBStringField;
    TVDet3CNPJ: TcxGridDBBandedColumn;
    TVDet3PESSOA_FJ: TcxGridDBBandedColumn;
    TVDet3PROPRIEDADE: TcxGridDBBandedColumn;
    TVDet3NOME: TcxGridDBBandedColumn;
    TVDet3PROPRIETARIO: TcxGridDBBandedColumn;
    TVDet3IE: TcxGridDBBandedColumn;
    TVDet3ENDERECO: TcxGridDBBandedColumn;
    TVDet3COMPLEMENTO: TcxGridDBBandedColumn;
    TVDet3CIDADE: TcxGridDBBandedColumn;
    TVDet3UF: TcxGridDBBandedColumn;
    TVDet3CEP: TcxGridDBBandedColumn;
    TVDet3AREA_TOTAL: TcxGridDBBandedColumn;
    TVDet3OBS: TcxGridDBBandedColumn;
    TVDet3NUMERO: TcxGridDBBandedColumn;
    TVDet3BAIRRO: TcxGridDBBandedColumn;
    TVDet3ATIVA: TcxGridDBBandedColumn;
    TVDet3TIPO_CONTRATO: TcxGridDBBandedColumn;
    TVDet3MODELO: TcxGridDBBandedColumn;
    TVDet3GARANTIA: TcxGridDBBandedColumn;
    TVDet3CPF: TcxGridDBBandedColumn;
    TVDet3VENDEDOR: TcxGridDBBandedColumn;
    TVDet3TECNICO: TcxGridDBBandedColumn;
    TVDet3CONTRATO: TcxGridDBBandedColumn;
    TVDet3REGIAO: TcxGridDBBandedColumn;
    TVDet3NOME_CIDADE: TcxGridDBBandedColumn;
    TVDet3NOME_LOGRADOURO: TcxGridDBBandedColumn;
    TVDet3NOME_BAIRRO: TcxGridDBBandedColumn;
    TVDet3NOME_TIPO_CONTRATO: TcxGridDBBandedColumn;
    TVDet3NOME_MODELO_PROPRIEDADE: TcxGridDBBandedColumn;
    TVDet3NOME_REGIAO: TcxGridDBBandedColumn;
    qryLogradouroConj: TIBQuery;
    qryLogradouroConjCNPJ: TIBStringField;
    qryLogradouroConjCODIGO: TIntegerField;
    qryLogradouroConjNOME: TIBStringField;
    dsLogradouroConj: TDataSource;
    QryBairro: TIBQuery;
    QryBairroCNPJ: TIBStringField;
    QryBairroCODIGO: TIntegerField;
    QryBairroNOME: TIBStringField;
    dsBairros: TDataSource;
    QryCidadeProp: TIBQuery;
    dsCidadeProp: TDataSource;
    qryRegiao: TIBQuery;
    qryRegiaoCNPJ: TIBStringField;
    qryRegiaoCODIGO: TIntegerField;
    qryRegiaoNOME: TIBStringField;
    qryRegiaoVENDEDOR: TIntegerField;
    qryRegiaoTERCEIRO: TIntegerField;
    qryRegiaoDESCRICAO: TIBStringField;
    qryRegiaoTECNICO: TIntegerField;
    dsRegiao: TDataSource;
    dtEditDet3CNPJ: TIBStringField;
    dtEditDet3PESSOA_FJ: TIntegerField;
    dtEditDet3PROPRIEDADE: TIntegerField;
    dtEditDet3NOME: TIBStringField;
    dtEditDet3PROPRIETARIO: TIBStringField;
    dtEditDet3IE: TIBStringField;
    dtEditDet3ENDERECO: TIntegerField;
    dtEditDet3COMPLEMENTO: TIBStringField;
    dtEditDet3CIDADE: TIntegerField;
    dtEditDet3UF: TIBStringField;
    dtEditDet3CEP: TIBStringField;
    dtEditDet3AREA_TOTAL: TIBStringField;
    dtEditDet3OBS: TBlobField;
    dtEditDet3NUMERO: TIBStringField;
    dtEditDet3BAIRRO: TIntegerField;
    dtEditDet3ATIVA: TIBStringField;
    dtEditDet3TIPO_CONTRATO: TIntegerField;
    dtEditDet3MODELO: TIntegerField;
    dtEditDet3GARANTIA: TDateTimeField;
    dtEditDet3CPF: TIBStringField;
    dtEditDet3VENDEDOR: TIntegerField;
    dtEditDet3TECNICO: TIntegerField;
    dtEditDet3CONTRATO: TIBStringField;
    dtEditDet3REGIAO: TSmallintField;
    cxDBTextEdit11: TcxDBTextEdit;
    cxLabel37: TcxLabel;
    btnLogradouro: TcxButton;
    btnBairro: TcxButton;
    btnRegiao: TcxButton;
    btnCidade: TcxButton;
    dtListDet3NOME_VENDEDOR: TIBStringField;
    dtListDet3NOME_TECNICO: TIBStringField;
    TVDet3NOME_VENDEDOR: TcxGridDBBandedColumn;
    TVDet3NOME_TECNICO: TcxGridDBBandedColumn;
    cxDBMemo1: TcxDBMemo;
    cxLabel36: TcxLabel;
    bTfrmCadCidades: TcxDBLookupComboBox;
    cxLabel34: TcxLabel;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxLabel28: TcxLabel;
    aTfrmCadRegiao: TcxDBLookupComboBox;
    cxLabel35: TcxLabel;
    bTfrmCadLogradouro: TcxDBLookupComboBox;
    cxLabel32: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxLabel31: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel30: TcxLabel;
    aTfrmCadBairros: TcxDBLookupComboBox;
    cxLabel33: TcxLabel;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxLabel38: TcxLabel;
    cxDBCalcEdit12: TcxDBCalcEdit;
    cxLabel39: TcxLabel;
    cxDBMaskEdit3: TcxDBMaskEdit;
    cxLabel40: TcxLabel;
    btnTecnico: TcxButton;
    aTfrmCadTecnicos: TcxDBLookupComboBox;
    cxLabel41: TcxLabel;
    btnVendedor: TcxButton;
    bTfrmCadVendedor2: TcxDBLookupComboBox;
    cxLabel43: TcxLabel;
    QryVendedorProp: TIBQuery;
    dsVendedorProp: TDataSource;
    QryTecnicoProp: TIBQuery;
    dsTecnicoProp: TDataSource;
    QryTecnicoPropCODIGO: TIntegerField;
    QryTecnicoPropNOME: TIBStringField;
    QryVendedorPropCODIGO: TIntegerField;
    QryVendedorPropNOME: TIBStringField;
    dtListDet4AGENCIA: TIBStringField;
    dtListDet4BANCO: TIBStringField;
    dtListDet4CNPJ: TIBStringField;
    dtListDet4CONTA: TIBStringField;
    dtListDet4PESSOA_FJ: TIntegerField;
    dtListDet4DV_AGENCIA: TIBStringField;
    dtListDet4DV_CONTA: TIBStringField;
    dtListDet4NOME_BANCO: TIBStringField;
    TVDet4AGENCIA: TcxGridDBBandedColumn;
    TVDet4BANCO: TcxGridDBBandedColumn;
    TVDet4CNPJ: TcxGridDBBandedColumn;
    TVDet4CONTA: TcxGridDBBandedColumn;
    TVDet4PESSOA_FJ: TcxGridDBBandedColumn;
    TVDet4DV_AGENCIA: TcxGridDBBandedColumn;
    TVDet4DV_CONTA: TcxGridDBBandedColumn;
    TVDet4NOME_BANCO: TcxGridDBBandedColumn;
    dtEditDet4AGENCIA: TIBStringField;
    dtEditDet4BANCO: TIBStringField;
    dtEditDet4CNPJ: TIBStringField;
    dtEditDet4CONTA: TIBStringField;
    dtEditDet4PESSOA_FJ: TIntegerField;
    dtEditDet4DV_AGENCIA: TIBStringField;
    dtEditDet4DV_CONTA: TIBStringField;
    aTfrmCadBancos: TcxDBLookupComboBox;
    btnBanco: TcxButton;
    cxLabel44: TcxLabel;
    cxDBMaskEdit4: TcxDBMaskEdit;
    cxLabel47: TcxLabel;
    cxDBMaskEdit5: TcxDBMaskEdit;
    cxDBMaskEdit6: TcxDBMaskEdit;
    cxDBMaskEdit7: TcxDBMaskEdit;
    cxLabel48: TcxLabel;
    dsBanco: TDataSource;
    QryBancos: TIBQuery;
    QryBancosCODIGO: TIBStringField;
    QryBancosNOME: TIBStringField;
    cxDBCheckBox3: TcxDBCheckBox;
    QryCidadePropCNPJ: TIBStringField;
    QryCidadePropCODIGO: TIntegerField;
    QryCidadePropNOME: TIBStringField;
    QryCidadePropUF: TIBStringField;
    QryCidadePropCOD_IBGE: TIBStringField;
    QryCidadePropCOD_IAGRO: TIntegerField;
    dtListCPF_CGC: TIBStringField;
    QryFormaPagtoCNPJ: TIBStringField;
    QryFormaPagtoCODIGO: TIntegerField;
    QryFormaPagtoNOME: TIBStringField;
    QryFormaPagtoACRESCIMO: TFloatField;
    QryFormaPagtoDESCONTO: TFloatField;
    QryFormaPagtoNPARCELAS: TIntegerField;
    QryFormaPagtoCOMENTRADA: TIBStringField;
    QryFormaPagtoINTERVALO: TIntegerField;
    QryFormaPagtoAVISTA: TIBStringField;
    QryFormaPagtoFATURA_FUTURA: TIBStringField;
    QryFormaPagtoFORMA_ECF: TIBStringField;
    QryFormaPagtoTIPO_PAGAMENTO: TIBStringField;
    QryFormaPagtoATIVO: TIBStringField;
    QryFormaPagtoINTERVALO_PRE_DEFINIDO: TIBStringField;
    QryFormaPagtoVENCTO_FIXO: TIBStringField;
    QryFormaPagtoDT_VENCTO_FIXO: TDateField;
    QryFormaPagtoOUTROS: TIBStringField;
    QryLogradouroPaiCNPJ: TIBStringField;
    QryLogradouroPaiCODIGO: TIntegerField;
    QryLogradouroPaiNOME: TIBStringField;
    dsLogradouroProp: TDataSource;
    qryLogradouroProp: TIBQuery;
    qryLogradouroPropCNPJ: TIBStringField;
    qryLogradouroPropCODIGO: TIntegerField;
    qryLogradouroPropNOME: TIBStringField;
    dtListFANTASIA: TIBStringField;
    dtListPSA_FONE: TIBStringField;
    dtListFAX: TIBStringField;
    dtListCELULAR: TIBStringField;
    TVRegistroFANTASIA: TcxGridDBBandedColumn;
    TVRegistroPSA_FONE: TcxGridDBBandedColumn;
    TVRegistroFAX: TcxGridDBBandedColumn;
    TVRegistroCELULAR: TcxGridDBBandedColumn;
    dtEditFANTASIA: TIBStringField;
    cxDBTextEdit12: TcxDBTextEdit;
    cxLabel49: TcxLabel;
    dtListCIDADE: TIBStringField;
    TVRegistroCIDADE: TcxGridDBBandedColumn;
    procedure btnCadPessoaClick(Sender: TObject);
    procedure btnCategoriaClick(Sender: TObject);
    procedure BtnclassificacaoClick(Sender: TObject);
    procedure btnCadVendedorClick(Sender: TObject);
    procedure BtnAtividadeClick(Sender: TObject);
    procedure BtnEnderecoPaiClick(Sender: TObject);
    procedure BtnCidadePaiClick(Sender: TObject);
    procedure dtEditDet1NewRecord(DataSet: TDataSet);
    procedure dtEditDet1PRODUTOValidate(Sender: TField);
    procedure dtEditDet2NewRecord(DataSet: TDataSet);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure dtEditDet3NewRecord(DataSet: TDataSet);
    procedure btnLogradouroClick(Sender: TObject);
    procedure btnBairroClick(Sender: TObject);
    procedure btnRegiaoClick(Sender: TObject);
    procedure btnCidadeClick(Sender: TObject);
    procedure btnTecnicoClick(Sender: TObject);
    procedure btnVendedorClick(Sender: TObject);
    procedure btnBancoClick(Sender: TObject);
    procedure dtEditDet4NewRecord(DataSet: TDataSet);
    procedure dtEditBeforePost(DataSet: TDataSet);
    procedure BtnEnderecoTrabClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtPorcentagemExit(Sender: TObject);
    procedure edtResultadoExit(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  frmCadClientes: TfrmCadClientes;

implementation

uses UntCadCategoriaClientes, untCadPessoas, UntCadClassificacao,
  untCadVendedor2, untCadAtividades, untCadLogradouro, untCadCidades,
  Application_DM, Funcoes, untCadTipoVeitulo, untCadMarcaVeiculo,
  untCadBairros, untCadRegioes, UntCadTecnicos, UntCadBancos;

{$R *.dfm}

procedure TfrmCadClientes.btnCategoriaClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TFrmCadCategoriaClientes,dtEdit,'CATEGORIA',QryCategoria);
end;

procedure TfrmCadClientes.btnCadPessoaClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadPessoas,dtEdit,'PESSOA_FJ',QryPessoa);
end;

procedure TfrmCadClientes.BtnclassificacaoClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadClassificacao,dtEdit,'COD_CLASSIF',QryClassificacao);
end;

procedure TfrmCadClientes.btnCadVendedorClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadVendedor2,dtEdit,'COD_VEND',QryVendedor);
end;

procedure TfrmCadClientes.BtnAtividadeClick(Sender: TObject);
begin
  inherited;
   CadastroLookup(TfrmCadAtividades,dtEdit,'ATIVIDADE',QryVendedor);
end;

procedure TfrmCadClientes.BtnEnderecoPaiClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadLogradouro,dtEdit,'ENDERECO_PAIS',QryLogradouroPai);
end;

procedure TfrmCadClientes.BtnCidadePaiClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadCidades,dtEdit,'CIDADE_PAIS',QryCidades);
end;

procedure TfrmCadClientes.dtEditDet1NewRecord(DataSet: TDataSet);
begin
  inherited;
  dtEditDet1PESSOA_FJ.Value := dtEditPESSOA_FJ.value ;
  dtEditDet1PORCENTAGEM.Value := 0;
end;

procedure TfrmCadClientes.dtEditDet1PRODUTOValidate(Sender: TField);
begin
  inherited;
  QryProduto.Locate('CODIGO',dtEditDet1PRODUTO.Value, []);
  dtEditDet1ORIGINAL.Value := QryProdutoPRC_VENDA.asFloat;
  dtEditDet1RESULTADO.Value := QryProdutoPRC_VENDA.asFloat;
end;

procedure TfrmCadClientes.dtEditDet2NewRecord(DataSet: TDataSet);
begin
  inherited;
  dtEditDet2PESSOA_FJ.value := dtEditPESSOA_FJ.value;
  dtEditDet2ATIVO.value := 'S';
end;

procedure TfrmCadClientes.cxButton2Click(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadTipoVeiculo,dtEditDet2,'TIPO_VEICULO',QryTipoVeiculo);
end;

procedure TfrmCadClientes.cxButton3Click(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadMarcaVeiculo,dtEditDet2,'MARCA_VEICULO',QryMarcaVeiculo);
end;

procedure TfrmCadClientes.dtEditDet3NewRecord(DataSet: TDataSet);
begin
  inherited;
  dtEditDet3PESSOA_FJ.Value   := dtEditPESSOA_FJ.Value;
  dtEditDet3PROPRIEDADE.Value := DMApp.GerarCodigoPropriedade(dtEditPESSOA_FJ.Value);
end;

procedure TfrmCadClientes.btnLogradouroClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadLogradouro,dtEditDet3,'ENDERECO',qryLogradouroProp);
end;

procedure TfrmCadClientes.btnBairroClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadBairros,dtEditDet3,'BAIRRO',QryBairro);
end;

procedure TfrmCadClientes.btnRegiaoClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadRegiao,dtEditDet3,'REGIAO',qryRegiao);
end;

procedure TfrmCadClientes.btnCidadeClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadCidades,dtEditDet3,'CIDADE',QryCidadeProp);
end;

procedure TfrmCadClientes.btnTecnicoClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadTecnicos,dtEditDet3,'TECNICO',QryTecnicoProp);
end;

procedure TfrmCadClientes.btnVendedorClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadBancos,dtEditDet3,'VENDEDOR',QryVendedorProp);
end;

procedure TfrmCadClientes.btnBancoClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadBancos,dtEditDet4,'BANCO',QryBancos);
end;

procedure TfrmCadClientes.dtEditDet4NewRecord(DataSet: TDataSet);
begin
  inherited;
  dtEditDet4PESSOA_FJ.value := dtEditPESSOA_FJ.value;
end;

procedure TfrmCadClientes.dtEditBeforePost(DataSet: TDataSet);
var
  OldValue,NewValue:String;
begin
  OldValue := dtEditPESSOA_FJ.OldValue;
  NewValue := dtEditPESSOA_FJ.NewValue;
  if (( OldValue <> '') and (OldValue <> NewValue)) then
  begin
    Application.MessageBox(Pchar('Alteração Indevida: Cadastro de Pessoa '+OldValue+' modificado para '+NewValue),'Aviso',mb_ok+mb_iconerror);
    ActCancel.Execute;
    abort;
    exit;
  end;
  inherited;

end;

procedure TfrmCadClientes.BtnEnderecoTrabClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadLogradouro,dtEdit,'ENDERECO_TRABALHO',qryLogradouroConj);
end;

procedure TfrmCadClientes.FormShow(Sender: TObject);
begin
  inherited;
  PCCLIENTE.ActivePageIndex := 0;
end;

procedure TfrmCadClientes.edtPorcentagemExit(Sender: TObject);
begin
  inherited;
  if dtEditDet1.state in [dsInsert, dsEdit] then
  begin
    dtEditDet1RESULTADO.Value := dtEditDet1ORIGINAL.value - (( dtEditDet1ORIGINAL.asFloat * dtEditDet1PORCENTAGEM.asFloat )/100) ;;
    dtEditDet1RESULTADO.Value := arredonda(dtEditDet1RESULTADO.asFloat,2);
  end;
end;

procedure TfrmCadClientes.edtResultadoExit(Sender: TObject);
begin
  inherited;
  if dtEditDet1.state in [dsInsert, dsEdit] then
  begin
    if dtEditDet1ORIGINAL.value > 0 then
    begin
      dtEditDet1PORCENTAGEM.value  := 100 - (dtEditDet1RESULTADO.Value * 100)/dtEditDet1ORIGINAL.value;
      dtEditDet1PORCENTAGEM.value  := arredonda(dtEditDet1PORCENTAGEM.value,2);
    end
    else
      dtEditDet1PORCENTAGEM.value := 0;
  end;
end;

initialization
 RegisterClass(TfrmCadClientes);

end.
