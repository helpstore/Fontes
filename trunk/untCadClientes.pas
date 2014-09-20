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
  cxRadioGroup, cxSpinEdit, StdCtrls, cxButtons;

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
    dtListCPF_CGC: TIBStringField;
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
    cbPessoaFJ: TcxDBLookupComboBox;
    cxLabel12: TcxLabel;
    btnPessoa: TcxButtonEdit;
    ckCompartilha: TcxDBCheckBox;
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
    cmbVendedor: TcxDBLookupComboBox;
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
    CmbClassificacao: TcxDBLookupComboBox;
    cxLabel89: TcxLabel;
    cxDBCalcEdit6: TcxDBCalcEdit;
    cmbCategorias: TcxDBLookupComboBox;
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
    cxDBDateEdit8: TcxDBDateEdit;
    cxLabel95: TcxLabel;
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
    cxLabel106: TcxLabel;
    cxDBDateEdit10: TcxDBDateEdit;
    cxLabel107: TcxLabel;
    cxLabel108: TcxLabel;
    cxDBDateEdit11: TcxDBDateEdit;
    cxLabel109: TcxLabel;
    CmbAtividade: TcxDBLookupComboBox;
    cxLabel110: TcxLabel;
    cxDBTextEdit18: TcxDBTextEdit;
    cxLabel111: TcxLabel;
    cxDBTextEdit19: TcxDBTextEdit;
    cxLabel112: TcxLabel;
    cmbLogradouroPai: TcxDBLookupComboBox;
    cxLabel113: TcxLabel;
    cxLabel114: TcxLabel;
    cmbCidadePai: TcxDBLookupComboBox;
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
    cmbLogradouroTrab: TcxDBLookupComboBox;
    cxLabel121: TcxLabel;
    cxDBDateEdit13: TcxDBDateEdit;
    cxLabel122: TcxLabel;
    cxDBMaskEdit16: TcxDBMaskEdit;
    cxLabel123: TcxLabel;
    cxDBMaskEdit17: TcxDBMaskEdit;
    cxLabel124: TcxLabel;
    cxLabel125: TcxLabel;
    cxDBTextEdit22: TcxDBTextEdit;
  private
    { Private declarations }
  public
     
    { Public declarations }
  end;

var
  frmCadClientes: TfrmCadClientes;

implementation

{$R *.dfm}

end.
