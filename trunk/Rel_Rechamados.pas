unit Rel_Rechamados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, Db, ppProd, ppClass, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, ppCtrls, ppVar, ppPrnabl, ppBands, ppCache, dxCntner,
  dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, StdCtrls,   ComCtrls,
  Mask,  ppStrtch, ppSubRpt, ppMemo, IBCustomDataSet, IBQuery,
  ppModule, raCodMod,   cxPropertiesStore,  ppEndUsr, ppParameter,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxControls,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel, cxButtons,       
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxCurrencyEdit,
  cxCheckBox;

type
  TFRel_Rechamados = class(TForm)
    Panel2: TPanel;
    BtnOk: TcxButton;
    RzBitBtn2: TcxButton;
    pnlClient: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    DsClientes: TDataSource;
    dsMecanico: TDataSource;
    dsRegiao: TDataSource;
    dsEquipamentos: TDataSource;
    GroupBox1: TGroupBox;
    Label12: TcxLabel;
    cmbTecnico: TdxLookupEdit;
    Label11: TcxLabel;
    cmbRegiao: TdxLookupEdit;
    Label1: TcxLabel;
    Label37: TcxLabel;
    cmbMarca: TdxLookupEdit;
    cmbModelo: TdxLookupEdit;
    dsMarcas: TDataSource;
    dsModelo: TDataSource;
    gbData: TGroupBox;
    Label4: TcxLabel;
    Label5: TcxLabel;
    edAs1: TcxLabel;
    edAs3: TcxLabel;
    rdSolicitacao: TRadioButton;
    rdProgramacao: TRadioButton;
    DataInicial: tcxDateEdit;
    DataFinal: tcxDateEdit;
    rdFechamento: TRadioButton;
    dsStatus: TDataSource;
    dsAtendimento_Sint: TDataSource;
    qAtendimento_Sint: TIBQuery;
    qAtendimento_SintOFC_CODIGO: TIntegerField;
    qAtendimento_SintOFC_DATA: TDateField;
    qAtendimento_SintOFC_DT_ENTRADA: TDateField;
    qAtendimento_SintOFC_DT_ATRIBUICAO: TDateField;
    qAtendimento_SintOFC_TOTAL: TIBBCDField;
    qAtendimento_SintOFC_SOLICITANTE: TIBStringField;
    qAtendimento_SintOFC_VENDA: TIntegerField;
    qAtendimento_SintST_CODIGO: TIntegerField;
    qAtendimento_SintST_COR: TIntegerField;
    qAtendimento_SintST_NOME: TIBStringField;
    qAtendimento_SintMEC_CODIGO: TIntegerField;
    qAtendimento_SintMEC_NOME: TIBStringField;
    qAtendimento_SintDEF_CODIGO: TIntegerField;
    qAtendimento_SintDEF_NOME: TIBStringField;
    qAtendimento_SintMTC_CODIGO: TIntegerField;
    qAtendimento_SintMTC_NOME: TIBStringField;
    qAtendimento_SintTPA_CODIGO: TIntegerField;
    qAtendimento_SintTPA_NOME: TIBStringField;
    qAtendimento_SintCLI_CODIGO: TIntegerField;
    qAtendimento_SintCLI_NOME_RAZAO: TIBStringField;
    qAtendimento_SintREG_CODIGO: TIntegerField;
    qAtendimento_SintREG_DESCRICAO: TIBStringField;
    qAtendimento_SintPRD_CODIGO: TIBStringField;
    qAtendimento_SintPRD_NOME: TIBStringField;
    qAtendimento_SintPRD_SERIE: TIBStringField;
    qAtendimento_SintMDL_CODIGO: TIntegerField;
    qAtendimento_SintMDL_NOME: TIBStringField;
    qAtendimento_SintMRC_CODIGO: TIntegerField;
    qAtendimento_SintMRC_NOME: TIBStringField;
    qAtendimento_SintCP_COD_CONTRATO: TIntegerField;
    qAtendimento_SintTPC_NOME: TIBStringField;
    qAtendimento_SintOFC_KM_RODADO: TIBBCDField;
    qAtendimento_SintOFC_HORAS_TRABALHADAS: TIBBCDField;
    rptAtendimento: TppReport;
    ppAtendimento: TppDBPipeline;
    qAtendimento_SintTP_ATENDIMENTO: TIBStringField;
    cmbContrato: TdxLookupEdit;
    cmbTPContrato: TdxLookupEdit;
    Label6: TcxLabel;
    Label19: TcxLabel;
    cmbEquipamento: TdxLookupEdit;
    Label7: TcxLabel;
    Label9: TcxLabel;
    cmbCliente: TdxLookupEdit;
    cmbStatus: TdxLookupEdit;
    Label3: TcxLabel;
    cmbMotivo: TdxLookupEdit;
    Label2: TcxLabel;
    dsMotivo: TDataSource;
    dsTpContrato: TDataSource;
    dsContratos: TDataSource;
    qAtendimento_SintID_CONTRATO: TIntegerField;
    GroupBox2: TGroupBox;
    rdRechamado: TRadioButton;
    rdOriginador: TRadioButton;
    rdNormal: TRadioButton;
    GroupBox7: TGroupBox;
    Label17: TcxLabel;
    Label18: TcxLabel;
    edtKmIni: TcxCurrencyEdit;
    edtKmFim: TcxCurrencyEdit;
    gbValor: TGroupBox;
    Label8: TcxLabel;
    Label10: TcxLabel;
    edtVlrInicial: TcxCurrencyEdit;
    edtVlrFinal: TcxCurrencyEdit;
    GroupBox4: TGroupBox;
    Label13: TcxLabel;
    Label14: TcxLabel;
    edtTpAtdIni: TcxCurrencyEdit;
    edtTpAtdFin: TcxCurrencyEdit;
    GroupBox5: TGroupBox;
    Label15: TcxLabel;
    Label16: TcxLabel;
    edtTpRspIni: TcxCurrencyEdit;
    edtTpRspFin: TcxCurrencyEdit;
    GroupBox3: TGroupBox;
    rdRegiao: TRadioButton;
    rdMarca: TRadioButton;
    rdModelo: TRadioButton;
    rdCliente: TRadioButton;
    rdTecnico: TRadioButton;
    rdEquipamento: TRadioButton;
    rdTodos: TRadioButton;
    cmbCidade: TdxLookupEdit;
    Label20: TcxLabel;
    GroupBox6: TGroupBox;
    rdTecSub: TRadioButton;
    rdTecTit: TRadioButton;
    rdTecAmbos: TRadioButton;
    dsCidade: TDataSource;
    qAtendimento_SintCOD_CIDADE: TIntegerField;
    qAtendimento_SintCIDADE: TIBStringField;
    qAtendimento_SintTECNICO_ATDD: TIBStringField;
    stgFRel_Rechamados: TcxPropertiesStore;
    qAtendimento_SintOFC_DT_SOLICITACAO: TDateField;
    qAtendimento_SintBAIRRO: TIBStringField;
    qAtendimento_SintENDERECO: TIBStringField;
    qAtendimento_SintFONE: TIBStringField;
    qAtendimento_SintCP_TEMPO_RESPOSTA: TFloatField;
    cmbServExecutado: TdxLookupEdit;
    Label21: TcxLabel;
    dsSelServico: TDataSource;
    qAtendimento_SintOFC_TEMPO_VIAJEM: TFloatField;
    ppLayout: TppDBPipeline;
    dsLayout: TDataSource;
    ckConfigurar: TcxCheckBox;
    Designer: TppDesigner;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    GroupBox8: TGroupBox;
    ckEsp: TRadioButton;
    ckConv: TRadioButton;
    ckATAmbos: TRadioButton;
    qAtendimento_SintTECNICO_ESPECIFICO: TIntegerField;
    qAtendimento_SintCONTADOR_TOTAL: TIBBCDField;
    rdMotivoChamado: TRadioButton;
    qAtendimento_SintKM_INICIAL: TIBBCDField;
    qAtendimento_SintKM_FINAL: TIBBCDField;
    qAtendimento_SintOFC_HR_ENTRADA: TTimeField;
    qAtendimento_SintOFC_HR_ATRIBUICAO: TTimeField;
    qAtendimento_SintDT_INICIAL: TDateField;
    qAtendimento_SintHR_INICIAL: TTimeField;
    qAtendimento_SintDT_FINAL: TDateField;
    qAtendimento_SintHR_FINAL: TTimeField;
    qAtendimento_SintTEMPO_DECORRIDO_RESP: TFloatField;
    qAtendimento_SintKM_NAO_UTILIZADO: TIBBCDField;
    qAtendimento_SintOFC_DATA_FECHAMENTO: TDateField;
    qAtendimento_SintHR_TRABALHADAS_TMP_VIAJEM: TFloatField;
    ppTitleBand12: TppTitleBand;
    SubRegiao: TppSubReport;
    ppChildReport1: TppChildReport;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel13: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport6: TppChildReport;
    ppHeaderBand7: TppHeaderBand;
    ppDetailBand6: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel2: TppLabel;
    ppLabel1: TppLabel;
    ppLabel10: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel15: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    OFC_TEMPO_VIAJEM: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText13: TppDBText;
    ppDBText3: TppDBText;
    ppDBText1: TppDBText;
    ppDBText12: TppDBText;
    ppDBText4: TppDBText;
    ppDBText11: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppLabel14: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc72: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine3: TppLine;
    ppLine21: TppLine;
    ppDBText77: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine4: TppLine;
    ppLabel16: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc71: TppDBCalc;
    ppLine22: TppLine;
    raCodeModule1: TraCodeModule;
    SubTecnico: TppSubReport;
    ppChildReport26: TppChildReport;
    ppHeaderBand6: TppHeaderBand;
    ppLine68: TppLine;
    ppLabel183: TppLabel;
    ppLabel179: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLabel189: TppLabel;
    ppLabel19: TppLabel;
    ppLabel33: TppLabel;
    ppLabel68: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel17: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppDetailBand27: TppDetailBand;
    ppDBText252: TppDBText;
    ppDBText253: TppDBText;
    ppDBText254: TppDBText;
    ppDBText256: TppDBText;
    ppDBText257: TppDBText;
    ppDBText245: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText60: TppDBText;
    ppDBText78: TppDBText;
    ppDBText29: TppDBText;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppSummaryBand28: TppSummaryBand;
    ppLine73: TppLine;
    ppLabel266: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc70: TppDBCalc;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppLabel267: TppLabel;
    ppDBText255: TppDBText;
    ppLine27: TppLine;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppLine75: TppLine;
    ppLabel268: TppLabel;
    ppDBCalc22: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc69: TppDBCalc;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppLine74: TppLine;
    ppLabel99: TppLabel;
    ppDBText92: TppDBText;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppDBCalc85: TppDBCalc;
    ppLabel100: TppLabel;
    ppVariable1: TppVariable;
    ppDBCalc86: TppDBCalc;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppDBCalc87: TppDBCalc;
    ppDBCalc88: TppDBCalc;
    raCodeModule8: TraCodeModule;
    ppShape6: TppShape;
    ppTituloRel: TppLabel;
    lblEmpresa: TppLabel;
    SubMarca: TppSubReport;
    ppChildReport2: TppChildReport;
    ppHeaderBand2: TppHeaderBand;
    ppLine5: TppLine;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText20: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine6: TppLine;
    ppLabel30: TppLabel;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc68: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel31: TppLabel;
    ppLine7: TppLine;
    ppDBText28: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine8: TppLine;
    ppLabel32: TppLabel;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc67: TppDBCalc;
    raCodeModule2: TraCodeModule;
    SubModelo: TppSubReport;
    ppChildReport3: TppChildReport;
    ppHeaderBand3: TppHeaderBand;
    ppLine9: TppLine;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLine10: TppLine;
    ppLabel46: TppLabel;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppDBCalc66: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel47: TppLabel;
    ppLine11: TppLine;
    ppDBText42: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLine12: TppLine;
    ppLabel48: TppLabel;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc65: TppDBCalc;
    raCodeModule3: TraCodeModule;
    SubEquipamento: TppSubReport;
    ppChildReport4: TppChildReport;
    ppHeaderBand4: TppHeaderBand;
    ppLine13: TppLine;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLine14: TppLine;
    ppLabel62: TppLabel;
    ppDBCalc41: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppDBCalc62: TppDBCalc;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLabel63: TppLabel;
    ppLine15: TppLine;
    ppDBText56: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLine16: TppLine;
    ppLabel64: TppLabel;
    ppDBCalc46: TppDBCalc;
    ppDBCalc47: TppDBCalc;
    ppDBCalc48: TppDBCalc;
    ppDBCalc49: TppDBCalc;
    ppDBCalc50: TppDBCalc;
    ppDBCalc61: TppDBCalc;
    raCodeModule4: TraCodeModule;
    SubCliente: TppSubReport;
    ppChildReport5: TppChildReport;
    ppHeaderBand5: TppHeaderBand;
    ppLine17: TppLine;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel81: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText8: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppLine18: TppLine;
    ppLabel78: TppLabel;
    ppDBCalc51: TppDBCalc;
    ppDBCalc52: TppDBCalc;
    ppDBCalc53: TppDBCalc;
    ppDBCalc54: TppDBCalc;
    ppDBCalc55: TppDBCalc;
    ppDBCalc64: TppDBCalc;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppLabel79: TppLabel;
    ppLine19: TppLine;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLine20: TppLine;
    ppLabel80: TppLabel;
    ppDBCalc56: TppDBCalc;
    ppDBCalc57: TppDBCalc;
    ppDBCalc58: TppDBCalc;
    ppDBCalc59: TppDBCalc;
    ppDBCalc60: TppDBCalc;
    ppDBCalc63: TppDBCalc;
    raCodeModule5: TraCodeModule;
    lblFiltro: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    SubMotivoChamado: TppSubReport;
    ppChildReport7: TppChildReport;
    ppHeaderBand8: TppHeaderBand;
    ppLine23: TppLine;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    ppLine24: TppLine;
    ppLabel96: TppLabel;
    ppDBCalc73: TppDBCalc;
    ppDBCalc74: TppDBCalc;
    ppDBCalc75: TppDBCalc;
    ppDBCalc76: TppDBCalc;
    ppDBCalc77: TppDBCalc;
    ppDBCalc78: TppDBCalc;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppLabel97: TppLabel;
    ppLine25: TppLine;
    ppDBText91: TppDBText;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppLine26: TppLine;
    ppLabel98: TppLabel;
    ppDBCalc79: TppDBCalc;
    ppDBCalc80: TppDBCalc;
    ppDBCalc81: TppDBCalc;
    ppDBCalc82: TppDBCalc;
    ppDBCalc83: TppDBCalc;
    ppDBCalc84: TppDBCalc;
    raCodeModule7: TraCodeModule;
    ppDetailBand18: TppDetailBand;
    ppFooterBand7: TppFooterBand;
    ppShape80: TppShape;
    ppLabel211: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    raCodeModule6: TraCodeModule;
    procedure BtnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure cmbClienteExit(Sender: TObject);
    procedure cmbClienteEnter(Sender: TObject);
    procedure cmbEquipamentoExit(Sender: TObject);
    procedure cmbClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    function CompletaWhere(sFiltro, texto:string):string;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppHeaderBand6BeforePrint(Sender: TObject);
    procedure qAtendimento_SintCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    sqlOriginal : string;
  public
    sFiltro, sOrder, tipo, filtro : string;
    { Public declarations }
  end;

var
  FRel_Rechamados: TFRel_Rechamados;

implementation

uses Servicos_DM, Application_DM, Usuarios_DM, Funcoes, Relatorios_DM,
  Cadastros_DM, Financeiro_Dm, Cadastros_Dm2;

{$R *.DFM}

procedure TFRel_Rechamados.BtnOkClick(Sender: TObject);
var
  sOrder, tpdata, vlrIni, vlrFim, kmIni, kmFim, tpaIni, tpaFim, tprIni, tprFim : string;
begin
  if (ckConfigurar.Checked) then
  begin
    dmApp.ConfigurarRelatorio(rptAtendimento,Designer,FRel_Rechamados.Caption);
    exit;
  end;

  dmCadastros2.CONFIG_REL_GRAFICO.close;
  dmCadastros2.CONFIG_REL_GRAFICO.parambyname('relatorio').value := FRel_Rechamados.Caption;
  dmCadastros2.CONFIG_REL_GRAFICO.Open;

  rptAtendimento.Template.DatabaseSettings.Name := FRel_Rechamados.Caption;
  rptAtendimento.Template.LoadFromDatabase;
  
  sFiltro := '';
  filtro := '';
  SubTecnico.Visible := False;
  SubRegiao.Visible := False;
  SubMarca.Visible := False;
  SubModelo.Visible := False;
  SubEquipamento.Visible := False;
  SubCliente.Visible := False;

  filtro := 'Filtro: '+DateToStr(DataInicial.Date)+' à '+DateToStr(DataFinal.Date);

  vlrIni := StringReplace(edtVlrInicial.Text,'.','',[rfReplaceAll]);
  vlrIni := StringReplace(vlrIni,',','.',[rfReplaceAll]);

  vlrFim := StringReplace(edtVlrFinal.Text,'.','',[rfReplaceAll]);
  vlrFim := StringReplace(vlrFim,',','.',[rfReplaceAll]);

  kmIni  := StringReplace(edtKmIni.Text,'.','',[rfReplaceAll]);
  kmIni  := StringReplace(kmIni,',','.',[rfReplaceAll]);

  kmFim  := StringReplace(edtKmFim.Text,'.','',[rfReplaceAll]);
  kmFim  := StringReplace(kmFim,',','.',[rfReplaceAll]);

  tpaIni := StringReplace(edtTpAtdIni.Text,'.','',[rfReplaceAll]);
  tpaIni := StringReplace(tpaIni,',','.',[rfReplaceAll]);

  tpaFim := StringReplace(edtTpAtdFin.Text,'.','',[rfReplaceAll]);
  tpaFim := StringReplace(tpaFim,',','.',[rfReplaceAll]);

  tprIni := StringReplace(edtTpRspIni.Text,'.','',[rfReplaceAll]);
  tprIni := StringReplace(tprIni,',','.',[rfReplaceAll]);

  tprFim := StringReplace(edtTpRspFin.Text,'.','',[rfReplaceAll]);
  tprFim := StringReplace(tprFim,',','.',[rfReplaceAll]);

  //--------------------------------- Filtro técnico -----------------------------------------
  if (cmbTecnico.text <> '') then
  begin
    qAtendimento_Sint.parambyname('PR_TECNICO').value := cmbtecnico.LookupKeyValue;
    filtro := filtro +' - Técnico: ' + cmbTecnico.text;
  end
  else
    qAtendimento_Sint.parambyname('PR_TECNICO').value := 0;

  //--------------------------------- Filtro Região -------------------------------------------
  if (cmbRegiao.text <> '') then
  begin
    qAtendimento_Sint.parambyname('PR_REGIAO').value := cmbRegiao.LookupKeyValue;
    filtro := filtro + ' - Região: ' + cmbRegiao.text;
  end
  else
    qAtendimento_Sint.parambyname('PR_REGIAO').value := 0;

  //--------------------------------- Filtro Cliente -------------------------------------------
  if (cmbCliente.text <> '') then
  begin
    qAtendimento_Sint.parambyname('PR_CLIENTE').value := cmbCliente.LookupKeyValue;
    filtro := filtro + ' - Cliente: '+cmbCliente.text;
  end
  else
    qAtendimento_Sint.parambyname('PR_CLIENTE').value := 0;

  //--------------------------------- Filtro Equipamento -------------------------------------------
  if (cmbEquipamento.text <> '') then
  begin
    qAtendimento_Sint.parambyname('PR_EQUIPAMENTO').value :=cmbEquipamento.LookupKeyValue;
    filtro := filtro +' - Equipamento: '+cmbEquipamento.text;
  end
  else qAtendimento_Sint.parambyname('PR_EQUIPAMENTO').value := '';

  //--------------------------------- Filtro cidade -------------------------------------------
  if (cmbCidade.text <> '') then
  begin
    qAtendimento_Sint.parambyname('PR_CIDADE').value :=cmbCidade.LookupKeyValue;
    filtro := filtro +' - Cidade: '+cmbCidade.text;
  end
  else
    qAtendimento_Sint.parambyname('PR_CIDADE').value := 0;


  //------------------------------------ Filtro Marca -----------------------------------------
  if (cmbMarca.text <> '') then
  begin
    qAtendimento_Sint.parambyname('PR_MARCA').value := cmbMarca.LookupKeyValue;
    filtro := filtro + ' - Marca: ' + cmbMarca.text;
  end
  else
      qAtendimento_Sint.parambyname('PR_MARCA').value := 0;

  //------------------------------------ Motivo do Chamado-------------------------------------
  if (cmbMotivo.text <> '') then
  begin
    qAtendimento_Sint.parambyname('PR_MTV_CHAMADO').value := cmbMotivo.LookupKeyValue;
    filtro := filtro + ' - Mtv. Chamado: ' +cmbMotivo.text;
  end
  else
    qAtendimento_Sint.parambyname('PR_MTV_CHAMADO').value := 0;

  //------------------------------------ Tipo do Contrato-------------------------------------
  if (cmbTPContrato.text <> '') then
  begin
    qAtendimento_Sint.parambyname('PR_TPCONTRATO').value := cmbTPContrato.LookupKeyValue;
    filtro := filtro + ' - Tp. Contrato: ' + cmbTPContrato.text;
  end
  else
    qAtendimento_Sint.parambyname('PR_TPCONTRATO').value := 0;

  //------------------------------------ Contrato Individual-------------------------------------
  if (cmbContrato.text <> '') then
  begin
    qAtendimento_Sint.parambyname('PR_CONTRATO').value := cmbContrato.LookupKeyValue;
    filtro := filtro + ' - Contrato: ' + cmbContrato.text;
  end
  else
    qAtendimento_Sint.parambyname('PR_CONTRATO').value := 0;


  //------------------------------------ Status-------------------------------------
  if (cmbStatus.text <> '') then
  begin
    qAtendimento_Sint.parambyname('PR_STATUS').value := cmbStatus.LookupKeyValue;
    filtro := filtro + ' - Status: ' + cmbContrato.text;
  end
  else
    qAtendimento_Sint.parambyname('PR_STATUS').value := 0;

  //------------------------------------ Filtro Modelo -----------------------------------------
  if (cmbModelo.text <> '') then
  begin
    qAtendimento_Sint.parambyname('PR_MODELO').value := cmbModelo.LookupKeyValue;
    filtro := filtro + ' - Modelo: ' + cmbModelo.text;
  end
  else
    qAtendimento_Sint.parambyname('PR_MODELO').value := 0;


  //------------------------------------ Filtro Servico Executado -----------------------------------------
  if (cmbServExecutado.text <> '') then
  begin
    qAtendimento_Sint.parambyname('PR_TPA_CODIGO').value := cmbServExecutado.LookupKeyValue;
    filtro := filtro + ' - Serviço Executado: ' + cmbServExecutado.text;
  end
  else
    qAtendimento_Sint.parambyname('PR_TPA_CODIGO').value := 0;


  //----------------------------- Filtro da Data Inicial --------------------------------------
  if (DataInicial.date <= 0) then
  begin
    application.messagebox('Defina a data inicial','Aviso',mb_ok + mb_iconinformation);
    DataInicial.setfocus;
    exit;
  end;

  if (DataFinal.date <= 0) then
  begin
    application.messagebox('Defina a data final','Aviso',mb_ok + mb_iconinformation);
    DataFinal.setfocus;
    exit;
  end;

  //-------------------------------------filtros dos edits----------------------------------------------------//
  //-------------------------Total----------------------------------
  sfiltro := CompletaWhere(sFiltro,' (coalesce(pcd.OFC_TOTAL,0) between '+vlrIni+' and '+vlrFim+')');
  filtro := filtro + ' - Vlr. Total R$: '+edtVlrInicial.Text+' à '+edtVlrFinal.text;

  //-------------------------KM Percorrido----------------------------------
  sfiltro := CompletaWhere(sFiltro,' (coalesce(pcd.OFC_KM_RODADO,0) between '+kmIni+' and '+kmFim+')');
  filtro := filtro + ' - KM. Percorrido: '+edtKmIni.Text+' à '+edtKmFim.text;

  //-------------------------Horas trabalhadas ou tempo utilizado no atendimento----------------------------------
  sfiltro := CompletaWhere(sFiltro,' (coalesce(pcd.OFC_HORAS_TRABALHADAS,0) between '+tpaIni+' and '+tpaFim+')');
  filtro := filtro + ' - Tmp. Atendimento: '+edtTpAtdIni.Text+' à '+edtTpAtdFin.text;

  //-------------------------Tempo resposta----------------------------------
  sfiltro := CompletaWhere(sFiltro,' (coalesce(pcd.CP_TEMPO_RESPOSTA,0) between '+tprIni+' and '+tprFim+')');
  filtro := filtro + ' - Tmp. Resposta: '+edtTpRspIni.Text+' à '+edtTpRspFin.text;

  //-------------Filtro de Data --------------------
  if rdSolicitacao.checked then
    tpdata := 'S';

  if rdProgramacao.checked then
    tpdata := 'P';

  if rdFechamento.checked then
    tpdata := 'F';

  if (rdTecnico.checked) then
  begin
    sOrder := ' order by mec_nome, ofc_data_fechamento, km_inicial, ofc_codigo ';
    SubTecnico.Visible := true;
  end
  else if (rdRegiao.checked) then
  begin
    sOrder := ' order by reg_descricao, mec_nome, ofc_data_fechamento, km_inicial, ofc_codigo ';
    SubRegiao.Visible := true;
  end
  else if (rdMarca.checked) then
  begin
    sOrder := ' order by mrc_nome, mec_nome, ofc_data_fechamento, km_inicial, ofc_codigo ';
    SubMarca.Visible := true;
  end
  else if (rdModelo.checked) then
  begin
    sOrder := ' order by mdl_nome, mec_nome, ofc_data_fechamento, km_inicial, ofc_codigo ';
    SubModelo.Visible := true;
  end
  else if (rdEquipamento.checked) then
  begin
    sOrder := ' order by   PRD_NOME, mec_nome, ofc_data_fechamento, km_inicial, ofc_codigo ';
    SubEquipamento.Visible := true;
  end
  else if (rdCliente.checked) then
  begin
    sOrder := ' order by  CLI_NOME_RAZAO, mec_nome, ofc_data_fechamento, km_inicial, ofc_codigo ';
    SubCliente.Visible := true;
  end
  else if (rdMotivoChamado.checked) then
  begin
    sOrder := ' order by  MTC_NOME, mec_nome, ofc_data_fechamento, km_inicial, ofc_codigo ';
    SubMotivoChamado.Visible := true;
  end;

  //-------------Tipos de Atendimento-------------------//
  if (rdNormal.checked) then
  begin
     sfiltro := CompletaWhere(sFiltro,' tp_atendimento = '+QuoTedStr('Normal'));
     filtro := filtro + ' - Tp. Atendimento: Normal';
  end
  else if (rdOriginador.checked) then
  begin
    sfiltro := CompletaWhere(sFiltro,' tp_atendimento = '+QuoTedStr('Originador'));
    filtro := filtro + ' - Tp. Atendimento: Originador';
  end
  else if (rdRechamado.checked) then
  begin
    sfiltro := CompletaWhere(sFiltro,' tp_atendimento = '+QuoTedStr('Rechamado'));
    filtro := filtro + ' - Tp. Atendimento: Rechamado';
  end;


  //-------------Técnico Atendente-------------------//
  if (rdTecTit.checked) then
  begin
     sfiltro := CompletaWhere(sFiltro,' TECNICO_ATDD = '+QuoTedStr('T'));
     filtro := filtro + ' - Téc. Atendente: Titular';
  end
  else if (rdTecSub.checked) then
  begin
    sfiltro := CompletaWhere(sFiltro,' TECNICO_ATDD = '+QuoTedStr('S'));
    filtro := filtro + ' - Téc. Atendente: Substituto';
  end
  else
    filtro := filtro + ' - Téc. Atendente: Ambos';


  //-------------Técnico Espcifico (vinculado no produto)-------------------//
  if (ckConv.checked) then
  begin
     sfiltro := CompletaWhere(sFiltro,' coalesce(tecnico_especifico,0) = 0 ');
     filtro := filtro + ' - Atendimento / Técnico: Convencional';
  end
  else if (ckEsp.checked) then
  begin
    sfiltro := CompletaWhere(sFiltro,' coalesce(tecnico_especifico,0) > 0 ');
    filtro := filtro + ' - Atendimento / Técnico: Especifíco';
  end
  else
    filtro := filtro + ' - Atendimento / Técnico: Ambos';




  //-------------------------------------------------------------------------------------------

  qAtendimento_Sint.Close;
  qAtendimento_Sint.SQL.Text := sqlOriginal+sFiltro+sOrder;
  qAtendimento_Sint.ParamByName('CNPJ').Value      := DMApp.Cnpj;
  qAtendimento_Sint.ParamByName('DATA_INI').AsDate := DataInicial.date;
  qAtendimento_Sint.ParamByName('DATA_FIM').AsDate := DataFinal.date;
  qAtendimento_Sint.ParamByName('TP_DATA').value := tpdata;
  qAtendimento_Sint.Open;


  
  //isso precisa ser encapsulado ao relatorio
  lblEmpresa.caption := dmApp.nome;
  lblFiltro.caption := Filtro;
  rptAtendimento.Print;
end;

procedure TFRel_Rechamados.FormCreate(Sender: TObject);
begin
//  IniciaComponentes ( Self as TForm );

  with DmServicos do
  begin
    SelPessoasFJ.close;
    SelPessoasFJ.Open;;
    SelPessoasFJ.fetchAll;

    SelMecanico.close;
    SelMecanico.open;
    SelMecanico.FetchAll;

    SelCidade.close;
    SelCidade.open;
    SelCidade.FetchAll;

    SelEquipCliente.close;
    SelEquipCliente.Open;
    SelEquipCliente.FetchAll;

    SelModelosProduto.Close;
    SelModelosProduto.Open;
    SelModelosProduto.FetchAll;

    SelStatus.Close;
    SelStatus.Open;
    SelStatus.FetchAll;

    SelMotivo.Close;
    SelMotivo.Open;
    SelMotivo.FetchAll;

    SelContrato.Close;
    SelContrato.Open;

    TipoAtendimento.Close;
    TipoAtendimento.Open;
  end;

  with dmCadastros2 do
  begin
    SelContratos.Close;
    SelContratos.Open;
    SelContratos.Fetchall;
  end;

  with DMRelatorios do
  begin
    SelRegiao.close;
    SelRegiao.open;
    SelRegiao.FetchAll;
  end;

  with DMCadastros do
  begin
    Marcas.close;
    Marcas.open;
    Marcas.FetchAll;
  end;
  sqlOriginal := qAtendimento_Sint.sql.text;
end;

procedure TFRel_Rechamados.RzBitBtn2Click(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFRel_Rechamados.cmbClienteExit(Sender: TObject);
begin
  TiraCorFundo ( Sender );
  with dmServicos do
  begin
    SelEquipCliente.Close;
    SelEquipCliente.parambyname('cod_cliente').value := SelPessoasFJPESSOA_FJ.Value;
    SelEquipCliente.Open;
    SelEquipCliente.FetchAll;
    cmbEquipamento.Enabled := (SelEquipCliente.RecordCount > 0);
  end;
end;

procedure TFRel_Rechamados.cmbClienteEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TFRel_Rechamados.cmbEquipamentoExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TFRel_Rechamados.cmbClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

function TFRel_Rechamados.CompletaWhere(sFiltro, texto: string): string;
begin
  if sFiltro = '' then
     texto := ' where ' + texto
  else
     texto := sFiltro + ' and ' + texto;
  Result := texto;
end;

procedure TFRel_Rechamados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FRel_Rechamados := Nil;
end;

procedure TFRel_Rechamados.ppHeaderBand6BeforePrint(Sender: TObject);
begin
  TppHeaderBand(Sender).visible := true;
end;



procedure TFRel_Rechamados.qAtendimento_SintCalcFields(DataSet: TDataSet);
var
  DATA_INI  , DATA_FIM,
  HORA_INI  , HORA_FIM,
  INTER_INI , INTER_FIM,
  TRAB_INI  , TRAB_FIM : STRING;
begin
  //-->> Pega o tempo de resposta para cada contrato com seu respectivo produto


    DATA_INI := DateToStr(qAtendimento_SintOFC_DT_ENTRADA.asDateTime); //
    DATA_FIM := DateToStr(qAtendimento_SintDT_INICIAL.asDateTime);

    if StrtoDate(DATA_INI) > StrtoDate(DATA_FIM) then //
    begin
      qAtendimento_SintTEMPO_DECORRIDO_RESP.Value := 0;
      //dtListCP_TEMPO_RESPOSTA.value := 10;
      exit;
    end;


    HORA_INI := TimeToStr(qAtendimento_SintOFC_HR_ENTRADA.value);
    HORA_FIM := TimeToStr(qAtendimento_SintHR_INICIAL.value);
    INTER_INI:= '11:00:00';
    INTER_FIM:= '13:00:00';
    TRAB_INI := '08:00:00';
    TRAB_FIM := '18:00:00';
    qAtendimento_SintTEMPO_DECORRIDO_RESP.Value    := HORAS_CORRIDA(DATA_INI  , DATA_FIM,
                                                            HORA_INI  , HORA_FIM,
                                                            INTER_INI , INTER_FIM,
                                                            TRAB_INI  , TRAB_FIM);
end;

end.
