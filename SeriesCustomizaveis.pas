 unit SeriesCustomizaveis;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    ExtCtrls,  dxBarDBNav, dxBar, StdCtrls, Buttons,
  ppEndUsr, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, Db,
  ActnList, ppCtrls, ppVar, ppPrnabl, ppBands, ppCache, ppParameter,
  ppStrtch, ppRichTx, dxCntner, dxExEdtr, dxEdLib, dxDBELib, ppModule,
  raCodMod, ppMemo, ppSubRpt, dxSkinsCore, dxSkinsdxBarPainter,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxClasses, IBCustomDataSet, IBQuery;

type
  TFrmSeriesCustomizaveis = class(TForm)
    RzPanel2: TPanel;
    b2: TBevel;
    LblTitulo: TLabel;
    RzPanel1: TPanel;
    BarManager: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    btnLocalizar: TdxBarButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    BtnListagem: TdxBarButton;
    BtnFechar: TdxBarButton;
    GroupBox6: TGroupBox;
    BitBtn5: TBitBtn;
    ppLayoutCartaSCPC: TppDBPipeline;
    rptCartaSCPC: TppReport;
    Designer_CartaSCPC: TppDesigner;
    dsConsulta_Cobranca_Pessoa: TDataSource;
    Actions: TActionList;
    ActFechar: TAction;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppLabel1: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppDBText7: TppDBText;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppLabel11: TppLabel;
    ppDBText11: TppDBText;
    ppLabel12: TppLabel;
    ppDBText12: TppDBText;
    ppLabel13: TppLabel;
    ppDBText13: TppDBText;
    ppLabel14: TppLabel;
    ppDBText14: TppDBText;
    ppLabel15: TppLabel;
    ppDBText15: TppDBText;
    ppLabel16: TppLabel;
    ppDBText16: TppDBText;
    ppLabel17: TppLabel;
    ppDBText17: TppDBText;
    ppLabel18: TppLabel;
    ppDBText18: TppDBText;
    ppLabel19: TppLabel;
    ppDBText19: TppDBText;
    ppLabel20: TppLabel;
    ppDBText20: TppDBText;
    ppLabel21: TppLabel;
    ppDBText21: TppDBText;
    ppLabel22: TppLabel;
    ppDBText22: TppDBText;
    ppLabel23: TppLabel;
    ppDBText23: TppDBText;
    ppLabel24: TppLabel;
    ppDBText24: TppDBText;
    ppLabel25: TppLabel;
    ppDBText25: TppDBText;
    ppLabel26: TppLabel;
    ppDBText26: TppDBText;
    ppLabel27: TppLabel;
    ppDBText27: TppDBText;
    ppLabel28: TppLabel;
    ppDBText28: TppDBText;
    ppLabel29: TppLabel;
    ppDBText29: TppDBText;
    ppLabel30: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppConsulta_Cobranca_Pessoa: TppDBPipeline;
    ActConfigurarCartaSCPC: TAction;
    GroupBox1: TGroupBox;
    ppLayoutDevolucao: TppDBPipeline;
    Designer_Devolucao: TppDesigner;
    rptSerieDevolucao: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppLine8: TppLine;
    ppDetailBand6: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppSystemVariable9: TppSystemVariable;
    ppLabel100: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppParameterList5: TppParameterList;
    ActConfigurarDevolucaoCarga: TAction;
    ppSerieDevolucao: TppDBPipeline;
    BitBtn1: TBitBtn;
    ActConvenio: TAction;
    BitBtn2: TBitBtn;
    rtpConvenio: TppReport;
    ppTitleBand2: TppTitleBand;
    ppSystemVariable3: TppSystemVariable;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppDetailBand2: TppDetailBand;
    ppParameterList2: TppParameterList;
    ppConvenio: TppDBPipeline;
    ppLayoutConvenio: TppDBPipeline;
    Designer_Convenio: TppDesigner;
    ppLine7: TppLine;
    ppLabel42: TppLabel;
    ppLabel41: TppLabel;
    ppDBText40: TppDBText;
    BitBtn3: TBitBtn;
    ActRecibo: TAction;
    Designer_Recibo: TppDesigner;
    ppLayoutRecibo: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLine12: TppLine;
    ppDetailBand4: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable7: TppSystemVariable;
    ppLabel53: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppParameterList3: TppParameterList;
    rptRecibo: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppParameterList4: TppParameterList;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppDBText37: TppDBText;
    ppDBText36: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppSystemVariable6: TppSystemVariable;
    ppShape9: TppShape;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine6: TppLine;
    ppDBText44: TppDBText;
    ppRecibo: TppDBPipeline;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppLabel40: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel51: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppSystemVariable11: TppSystemVariable;
    ppDBText43: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppOS: TppDBPipeline;
    rptOS: TppReport;
    ppTitleBand6: TppTitleBand;
    ppShape6: TppShape;
    ppShape2: TppShape;
    ppShape5: TppShape;
    ppShape1: TppShape;
    ppShape20: TppShape;
    ppLabel52: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    lblEmpresa: TppDBText;
    lblEndereco: TppDBText;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppShape3: TppShape;
    ppLabel61: TppLabel;
    ppShape4: TppShape;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppShape10: TppShape;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppShape7: TppShape;
    ppLabel68: TppLabel;
    ppShape14: TppShape;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppShape16: TppShape;
    ppLabel73: TppLabel;
    ppLine11: TppLine;
    ppShape8: TppShape;
    ppLabel74: TppLabel;
    ppShape13: TppShape;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppDBText70: TppDBText;
    ppLabel77: TppLabel;
    ppDBText71: TppDBText;
    ppLabel78: TppLabel;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppDBText74: TppDBText;
    ppLabel81: TppLabel;
    ppDBText75: TppDBText;
    ppLabel82: TppLabel;
    ppShape15: TppShape;
    ppDBMemo3: TppDBMemo;
    ppShape17: TppShape;
    ppDBMemo4: TppDBMemo;
    ppLabel83: TppLabel;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLabel87: TppLabel;
    ppSystemVariable12: TppSystemVariable;
    ppDBText78: TppDBText;
    ppShape23: TppShape;
    ppLabel88: TppLabel;
    ppDBMemo5: TppDBMemo;
    ppDetailBand30: TppDetailBand;
    ppShape11: TppShape;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppDBText81: TppDBText;
    ppLine22: TppLine;
    ppFooterBand5: TppFooterBand;
    ppShape12: TppShape;
    ppSummaryBand2: TppSummaryBand;
    ppShape18: TppShape;
    ppShape24: TppShape;
    ppShape22: TppShape;
    ppLabel90: TppLabel;
    ppShape19: TppShape;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppShape21: TppShape;
    ppLine23: TppLine;
    ppRichText1: TppRichText;
    ppShape25: TppShape;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppDBText82: TppDBText;
    ppLabel106: TppLabel;
    ppDBText83: TppDBText;
    ppLabel107: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel113: TppLabel;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    ppLine24: TppLine;
    ppLabel119: TppLabel;
    ppLine25: TppLine;
    ppLabel120: TppLabel;
    ppLine26: TppLine;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLine27: TppLine;
    raCodeModule4: TraCodeModule;
    ppParameterList1: TppParameterList;
    Designer_OS: TppDesigner;
    GroupBox2: TGroupBox;
    BitBtn4: TBitBtn;
    ppLayoutOS: TppDBPipeline;
    ActConfigurarOS: TAction;
    GroupBox3: TGroupBox;
    BitBtn6: TBitBtn;
    ActConfigurarReceita: TAction;
    Designer_Receita: TppDesigner;
    ppLayoutReceita: TppDBPipeline;
    ppReceita: TppDBPipeline;
    rptReceita: TppReport;
    ppParameterList6: TppParameterList;
    dsQryReceita: TDataSource;
    ppDetailBand3: TppDetailBand;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppDBText92: TppDBText;
    ppLabel127: TppLabel;
    ppDBText93: TppDBText;
    ppLabel128: TppLabel;
    ppDBText94: TppDBText;
    ppLabel129: TppLabel;
    ppDBText95: TppDBText;
    ppLabel130: TppLabel;
    ppDBText96: TppDBText;
    ppLabel131: TppLabel;
    ppDBText97: TppDBText;
    ppLabel132: TppLabel;
    ppDBText98: TppDBText;
    ppLabel133: TppLabel;
    ppDBText99: TppDBText;
    ppLabel134: TppLabel;
    ppDBText100: TppDBText;
    ppLabel135: TppLabel;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    GroupBox4: TGroupBox;
    BitBtn7: TBitBtn;
    Designer_Acerto: TppDesigner;
    ppLayoutAcerto: TppDBPipeline;
    ppAcerto: TppDBPipeline;
    rptAcerto: TppReport;
    ppParameterList7: TppParameterList;
    dsQryAcerto: TDataSource;
    ActConfiguraAcerto: TAction;
    dsACTTituloGerado: TDataSource;
    dsACTCheques: TDataSource;
    dsACTMovimento: TDataSource;
    ppTituloGerado: TppDBPipeline;
    ppTitleBand3: TppTitleBand;
    ppDBText112: TppDBText;
    ppLine29: TppLine;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLine31: TppLine;
    ppDBText118: TppDBText;
    ppLabel138: TppLabel;
    ppDBText119: TppDBText;
    ppSystemVariable13: TppSystemVariable;
    ppLabel139: TppLabel;
    ppDBText120: TppDBText;
    ppLabel140: TppLabel;
    ppDBText121: TppDBText;
    ppDBText122: TppDBText;
    ppDBText123: TppDBText;
    ppLabel141: TppLabel;
    ppDBText124: TppDBText;
    ppLine32: TppLine;
    ppHeaderBand4: TppHeaderBand;
    ppLabel142: TppLabel;
    ppLine28: TppLine;
    ppLabel143: TppLabel;
    ppLabel144: TppLabel;
    ppLabel145: TppLabel;
    ppLabel146: TppLabel;
    ppLabel147: TppLabel;
    ppLabel148: TppLabel;
    ppLabel149: TppLabel;
    ppLabel150: TppLabel;
    ppLabel151: TppLabel;
    ppLabel152: TppLabel;
    ppLabel153: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppDBText114: TppDBText;
    ppDBText115: TppDBText;
    ppDBText116: TppDBText;
    ppDBText117: TppDBText;
    ppDBText125: TppDBText;
    ppDBText126: TppDBText;
    ppDBText127: TppDBText;
    ppDBText128: TppDBText;
    ppDBText129: TppDBText;
    ppDBText130: TppDBText;
    ppDBText131: TppDBText;
    ppFooterBand6: TppFooterBand;
    ppLabel156: TppLabel;
    ppLabel157: TppLabel;
    ppSystemVariable14: TppSystemVariable;
    ppDBText132: TppDBText;
    ppDBText133: TppDBText;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLabel158: TppLabel;
    ppSummaryBand3: TppSummaryBand;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppLabel155: TppLabel;
    ppLine34: TppLine;
    ppDBCalc14: TppDBCalc;
    SubTTGerado: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    ppLine37: TppLine;
    ppDetailBand8: TppDetailBand;
    ppDBText134: TppDBText;
    ppDBText135: TppDBText;
    ppDBText136: TppDBText;
    ppDBText137: TppDBText;
    ppDBText138: TppDBText;
    ppDBText139: TppDBText;
    ppDBText140: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLine38: TppLine;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText113: TppDBText;
    ppLine30: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine33: TppLine;
    ppLabel154: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppCheques: TppDBPipeline;
    ppCartoes: TppDBPipeline;
    dsACTCartoes: TDataSource;
    SubCheques: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppLabel168: TppLabel;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppLabel172: TppLabel;
    ppLabel173: TppLabel;
    ppLabel175: TppLabel;
    ppLine39: TppLine;
    ppDetailBand9: TppDetailBand;
    ppDBText141: TppDBText;
    ppDBText143: TppDBText;
    ppDBText144: TppDBText;
    ppDBText146: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppLine40: TppLine;
    ppDBCalc17: TppDBCalc;
    SubCartoes: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand7: TppTitleBand;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppLabel184: TppLabel;
    ppLine41: TppLine;
    ppDetailBand10: TppDetailBand;
    ppDBText148: TppDBText;
    ppDBText149: TppDBText;
    ppDBText150: TppDBText;
    ppDBText151: TppDBText;
    ppDBText152: TppDBText;
    ppDBText153: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    ppLine42: TppLine;
    ppDBCalc19: TppDBCalc;
    ppLabel171: TppLabel;
    ppDBText142: TppDBText;
    ppDBText145: TppDBText;
    ppLabel174: TppLabel;
    ppLabel176: TppLabel;
    ppDBText147: TppDBText;
    ppMovimento: TppDBPipeline;
    SubMovimentos: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand8: TppTitleBand;
    ppLabel185: TppLabel;
    ppLabel186: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLabel189: TppLabel;
    ppLabel190: TppLabel;
    ppLabel191: TppLabel;
    ppLabel192: TppLabel;
    ppLine43: TppLine;
    ppLabel193: TppLabel;
    ppDetailBand11: TppDetailBand;
    ppDBText154: TppDBText;
    ppDBText155: TppDBText;
    ppDBText156: TppDBText;
    ppDBText157: TppDBText;
    ppDBText158: TppDBText;
    ppDBText159: TppDBText;
    ppDBText160: TppDBText;
    ppSummaryBand7: TppSummaryBand;
    ppLine44: TppLine;
    ppDBCalc18: TppDBCalc;
    ppLabel194: TppLabel;
    ppDBText161: TppDBText;
    QryOS: TIBQuery;
    QryOSPSA_NOME_RAZAO: TIBStringField;
    QryOSPSA_FANTASIA: TIBStringField;
    QryOSPSA_ENDERECO: TIBStringField;
    QryOSPSA_BAIRRO: TIBStringField;
    QryOSPSA_CEP: TIBStringField;
    QryOSPSA_FONE: TIBStringField;
    QryOSPSA_CONTATO: TIBStringField;
    QryOSPSA_CIDADE: TIBStringField;
    QryOSPSA_REGIAO: TIBStringField;
    QryOSOS_NOME_TECNICO: TIBStringField;
    QryOSOS_EQUIPAMENTO: TIBStringField;
    QryOSOS_EQ_MODELO: TIBStringField;
    QryOSOS_EQ_MARCA: TIBStringField;
    QryOSOS_EQ_SERIE: TIBStringField;
    QryOSOS_SOLICITANTE: TIBStringField;
    QryOSOS_DEFEITO_RECLAMADO: TIBStringField;
    QryOSOS_OBS_FECHAMENTO: TBlobField;
    QryOSOS_INFORMACOES: TBlobField;
    QryOSOS_DT_PROGRAMACAO: TDateField;
    QryOSOS_HR_PROGRAMACAO: TTimeField;
    QryOSOS_TECNICO: TIBStringField;
    QryOSOS_MOTIVO_CHAMADO: TIBStringField;
    QryOSOS_TIPO_ATENDIMENTO: TIBStringField;
    QryOSOS_CT_TOTAL: TIntegerField;
    QryOSOS_CT_COR: TIntegerField;
    QryOSOS_CT_PRETO: TIntegerField;
    QryOSOS_DT_CILINDRO: TDateField;
    QryOSOS_CT_CILINDRO: TIntegerField;
    QryOSOS_CT_REVELADOR: TIntegerField;
    QryOSOS_DT_REVELADOR: TDateField;
    QryOSPRD_QTDE: TFloatField;
    QryOSPRD_CODIGO: TIBStringField;
    QryOSPRD_NOME: TIBStringField;
    QryOSOS_DT_INICIO: TDateField;
    QryOSOS_TIPO_CONTRATO: TIBStringField;
    QryOSOS_HR_INICIALIZACAO: TTimeField;
    QryOSOS_DT_FINALIZACAO: TDateField;
    QryOSOS_HR_FINALIZACAO: TTimeField;
    QryOSCAB_NOME_EMPRESA: TIBStringField;
    QryOSCAB_END_EMPRESA: TIBStringField;
    QryOSCAB_FONE_EMPRESA: TIBStringField;
    QryOSOS_CODIGO: TIntegerField;
    QryOSOS_PESSOA_OBS: TBlobField;
    QryOSOS_EQUIPAMENTO_OBS: TBlobField;
    QryOSPRD_UNITARIO: TFloatField;
    QryOSPRD_TOTAL: TFloatField;
    QryOSVEI_PLACA: TIBStringField;
    QryOSVEI_COR: TIBStringField;
    QryOSVEI_MODELO: TIBStringField;
    QryOSVEI_ANO: TIntegerField;
    QryOSVEI_CHASSI: TIBStringField;
    QryOSVEI_MARCA: TIBStringField;
    QryOSPSA_CPF: TIBStringField;
    QryOSPSA_RG_IE: TIBStringField;
    QryOSPSA_CODIGO: TIntegerField;
    QryOSOS_KM: TIntegerField;
    dsOS: TDataSource;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText162: TppDBText;
    ppDBText163: TppDBText;
    procedure Configurar_CartaSCPC;
    procedure Configurar_OS;
    procedure Configurar_Devolucao_Carga;    
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActConfigurarCartaSCPCExecute(Sender: TObject);
    procedure ActConfigurarDevolucaoCargaExecute(Sender: TObject);
    procedure ActConvenioExecute(Sender: TObject);
    procedure ActReciboExecute(Sender: TObject);
    procedure ActConfigurarOSExecute(Sender: TObject);
    procedure ActConfigurarReceitaExecute(Sender: TObject);
    procedure ActConfiguraAcertoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSeriesCustomizaveis: TFrmSeriesCustomizaveis;
  Commitar : boolean;

implementation

uses SerieCustomizaveis_DM, Application_DM, Main, Usuarios_DM, Series_Form, Funcoes,
  OrdemCarga_DM, Pdv_DM, Relatorios_DM2, Ordens_Servicos_Form,
  SelReceiturario_Form;

{$R *.DFM}

procedure TFrmSeriesCustomizaveis.Configurar_CartaSCPC;
begin
  DmSerie_Customizaveis.edtLayoutCartaSCPC.close;
  DmSerie_Customizaveis.edtLayoutCartaSCPC.parambyname('cnpj').value := dmApp.cnpj;
  DmSerie_Customizaveis.edtLayoutCartaSCPC.Open;

  rptCartaSCPC.Template.DatabaseSettings.Name := DmSerie_Customizaveis.edtLayoutCartaSCPCCNPJ.asstring;;
  rptCartaSCPC.Template.LoadFromDatabase;
  Designer_CartaSCPC.Show;
  DmSerie_Customizaveis.edtLayoutCartaSCPC.edit;
end;

procedure TFrmSeriesCustomizaveis.Configurar_OS;
begin
  DmSerie_Customizaveis.edtLayoutOS.close;
  DmSerie_Customizaveis.edtLayoutOS.parambyname('cnpj').value := dmApp.cnpj;
  DmSerie_Customizaveis.edtLayoutOS.Open;

  rptOS.Template.DatabaseSettings.Name := DmSerie_Customizaveis.edtLayoutOSCNPJ.asstring;
  rptOS.Template.LoadFromDatabase;
  Designer_OS.Show;
  DmSerie_Customizaveis.edtLayoutOS.edit;
end;

procedure TFrmSeriesCustomizaveis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  Action := caFree;
  FrmSeriesCustomizaveis := Nil;
  //
  If FrmMain.MDIChildCount = 1 Then
     FrmMain.PnlClient.Visible := True;
end;

procedure TFrmSeriesCustomizaveis.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmSeriesCustomizaveis.ActFecharExecute(Sender: TObject);
begin
  If FrmSeriesCustomizaveis.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmSeriesCustomizaveis.ActConfigurarCartaSCPCExecute(
  Sender: TObject);
begin
  Configurar_CartaSCPC;
end;

procedure TFrmSeriesCustomizaveis.ActConfigurarDevolucaoCargaExecute(
  Sender: TObject);
begin
  Configurar_Devolucao_Carga;
end;

procedure TFrmSeriesCustomizaveis.Configurar_Devolucao_Carga;
begin
  DmOrdemCarga.edtLayoutDevolucao.close;
  DmOrdemCarga.edtLayoutDevolucao.parambyname('cnpj').value := dmApp.cnpj;
  DmOrdemCarga.edtLayoutDevolucao.Open;

  rptSerieDevolucao.Template.DatabaseSettings.Name := DmOrdemCarga.edtLayoutDevolucaoCNPJ.asstring;;
  rptSerieDevolucao.Template.LoadFromDatabase;
  Designer_Devolucao.Show;
  DmOrdemCarga.edtLayoutDevolucao.edit;
end;

procedure TFrmSeriesCustomizaveis.ActConvenioExecute(Sender: TObject);
begin
  DmSerie_Customizaveis.edtLayoutConvenio.close;
  DmSerie_Customizaveis.edtLayoutConvenio.parambyname('cnpj').value := dmApp.cnpj;
  DmSerie_Customizaveis.edtLayoutConvenio.Open;


  rtpConvenio.Template.DatabaseSettings.Name := DmSerie_Customizaveis.edtLayoutConvenioCNPJ.asstring;;
  rtpConvenio.Template.LoadFromDatabase;
  Designer_Convenio.Show;
  DmSerie_Customizaveis.edtLayoutConvenio.edit;
end;

procedure TFrmSeriesCustomizaveis.ActReciboExecute(Sender: TObject);
begin
  DmSerie_Customizaveis.EdtRecibo.close;
  DmSerie_Customizaveis.EdtRecibo.parambyname('cnpj').value := dmApp.cnpj;
  DmSerie_Customizaveis.EdtRecibo.Open;

  rptRecibo.Template.DatabaseSettings.Name := DmSerie_Customizaveis.EdtReciboCNPJ.asstring;
  rptRecibo.Template.LoadFromDatabase;
  Designer_Recibo.Show;
  DmSerie_Customizaveis.EdtRecibo.edit;
end;

procedure TFrmSeriesCustomizaveis.ActConfigurarOSExecute(Sender: TObject);
begin
  Configurar_OS;
end;

procedure TFrmSeriesCustomizaveis.ActConfigurarReceitaExecute(
  Sender: TObject);
begin
  DmSerie_Customizaveis.edtLayoutReceita.close;
  DmSerie_Customizaveis.edtLayoutReceita.parambyname('cnpj').value := dmApp.cnpj;
  DmSerie_Customizaveis.edtLayoutReceita.Open;

  rptReceita.Template.DatabaseSettings.Name := DmSerie_Customizaveis.edtLayoutReceitaCNPJ.asstring;
  rptReceita.Template.LoadFromDatabase;
  Designer_Receita.Show;
  DmSerie_Customizaveis.edtLayoutReceita.Edit;
end;

procedure TFrmSeriesCustomizaveis.ActConfiguraAcertoExecute(
  Sender: TObject);
begin
  DmSerie_Customizaveis.edtLayoutActRecibo.close;
  DmSerie_Customizaveis.edtLayoutActRecibo.parambyname('cnpj').value := dmApp.cnpj;
  DmSerie_Customizaveis.edtLayoutActRecibo.Open;

  rptAcerto.Template.DatabaseSettings.Name := DmSerie_Customizaveis.edtLayoutActReciboCNPJ.asstring;
  rptAcerto.Template.LoadFromDatabase;
  Designer_Acerto.Show;
  DmSerie_Customizaveis.edtLayoutActRecibo.Edit;
end;

end.
