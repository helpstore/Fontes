 unit FecharCaixa_Form;

interface

uses              
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet,   Grids,
  DBGrids,  RDprint, dxBarExtItems, dxExEdtr,   TeEngine,
  Series, TeeProcs, Chart, DBChart, ppBands, ppReport, ppStrtch, ppSubRpt,
  ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,
  ppDB, ppDBPipe, ppRegion, ppModule, raCodMod, ppParameter, ppRichTx,
  daDataModule, dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinscxPCPainter, Menus,
  cxButtons, cxPC, cxLabel, cxTextEdit, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxCalc, cxCheckBox;

type
  TFrmFecharCaixas = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    Actions: TActionList;
    Bevel1: TBevel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Bevel2: TBevel;
    Label7: TcxLabel;
    Bevel3: TBevel;
    pc: TcxPageControl;
    TABPAGAS: TcxTabSheet;
    Shape1: TShape;
    DBGrid1: TDBGrid;
    DsPagas: TDataSource;
    TABRECEBIDAS: TcxTabSheet;
    DBGrid2: TDBGrid;
    DsRecebidas: TDataSource;
    ActImprimirTab: TAction;
    Print: TRDprint;
    Anda: TdxBarProgressItem;
    TabVendas: TcxTabSheet;
    DBGrid3: TDBGrid;
    DsVendas: TDataSource;
    Label9: TcxLabel;
    Label10: TcxLabel;
    Label11: TcxLabel;
    Label12: TcxLabel;
    Label14: TcxLabel;
    Label15: TcxLabel;
    TABSAIDAS: TcxTabSheet;
    Label13: TcxLabel;
    Bevel5: TBevel;
    Label20: TcxLabel;
    ActFecharCaixa: TAction;
    DBGrid4: TDBGrid;
    DsMovimento: TDataSource;
    ActCancelar: TAction;
    TABAGRUPADAS: TcxTabSheet;
    DBGrid5: TDBGrid;
    DsAgrupadas: TDataSource;
    Label22: TcxLabel;
    Label23: TcxLabel;
    Label26: TcxLabel;
    Label27: TcxLabel;
    Label28: TcxLabel;
    Label30: TcxLabel;
    Label31: TcxLabel;
    Label32: TcxLabel;
    tbsImpressoes: TcxTabSheet;
    Label8: TcxLabel;
    BtnFecharCaixa: TcxButton;
    Label21: TcxLabel;
    Bevel6: TBevel;
    Label33: TcxLabel;
    Label34: TcxLabel;
    Label35: TcxLabel;
    Label36: TcxLabel;
    Label37: TcxLabel;
    Label38: TcxLabel;
    Label39: TcxLabel;
    Label40: TcxLabel;
    Label41: TcxLabel;
    Label42: TcxLabel;
    Label44: TcxLabel;
    Label45: TcxLabel;
    Label16: TcxLabel;
    BtnImprimeVendas: TcxButton;
    Label17: TcxLabel;
    Label18: TcxLabel;
    Label24: TcxLabel;
    Label25: TcxLabel;
    Label19: TcxLabel;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    ActSalvar: TAction;
    Label46: TcxLabel;
    Label47: TcxLabel;
    Label48: TcxLabel;
    Label49: TcxLabel;
    Label50: TcxLabel;
    dxTabSheet2: TcxTabSheet;
    GRIDTROCAS: TDBGrid;
    DsTrocas: TDataSource;
    ActResumo: TAction;
    RzBitBtn1: TcxButton;
    ActComissoes: TAction;
    rptF5: TppReport;
    dsVendasADM: TDataSource;
    ppVendasADM: TppDBPipeline;
    TrocasAdm: TppDBPipeline;
    dsTrocasADM: TDataSource;
    PagasAdm: TppDBPipeline;
    dsPagasADM: TDataSource;
    Ent_SaidAdm: TppDBPipeline;
    dsEnt_SaidADM: TDataSource;
    Ent_EstAdm: TppDBPipeline;
    dsEnt_EstADM: TDataSource;
    dsRecebidasADM: TDataSource;
    RecebidasADM: TppDBPipeline;
    ppParameterList1: TppParameterList;
    CanceladasADM: TppDBPipeline;
    dsCanceladasADM: TDataSource;
    dsF11: TDataSource;
    dbF11: TppDBPipeline;
    rptF11: TppReport;
    ppParameterList2: TppParameterList;
    ppVendasADMAG: TppDBPipeline;
    dsVdAgrup: TDataSource;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    dxDBEdit1: TcxDBTextEdit;
    EdInicial: TcxDBTextEdit;
    dxDBEdit2: TcxDBTextEdit;
    dxDBEdit3: TcxDBTextEdit;
    dxDBEdit4: TcxDBTextEdit;
    dxDBEdit8: TcxDBTextEdit;
    dxDBEdit11: TcxDBTextEdit;
    EDPRODUTOS: TcxDBTextEdit;
    EDRECEBIMENTOS: TcxDBTextEdit;
    dxDBEdit7: TcxDBTextEdit;
    dxDBEdit9: TcxDBTextEdit;
    dxDBEdit10: TcxDBTextEdit;
    dxDBEdit12: TcxDBTextEdit;
    dxDBEdit14: TcxDBTextEdit;
    dxDBEdit15: TcxDBTextEdit;
    dxDBEdit16: TcxDBTextEdit;
    dxDBEdit17: TcxDBTextEdit;
    dxDBEdit13: TcxDBTextEdit;
    dxDBEdit18: TcxDBTextEdit;
    edresultado: TcxTextEdit;
    EdDinheiro: TcxTextEdit;
    EdCheque: TcxTextEdit;
    edcartao: TcxTextEdit;
    edticket: TcxTextEdit;
    EdTroco: TcxTextEdit;
    EdVista: TcxTextEdit;
    edtotal: TcxTextEdit;
    EdValor: TcxDBCalcEdit;
    dxDBCalcEdit11: TcxDBCalcEdit;
    dxDBCalcEdit4: TcxDBCalcEdit;
    dxDBCalcEdit9: TcxDBCalcEdit;
    dxDBCalcEdit13: TcxDBCalcEdit;
    dxDBCalcEdit5: TcxDBCalcEdit;
    dxDBEdit5: TcxDBTextEdit;
    EdSaldoVista: TcxDBTextEdit;
    EdSaldoPrazo: TcxDBTextEdit;
    EdSaidas: TcxDBTextEdit;
    EdEntradas: TcxDBTextEdit;
    EdDiferenca: TcxDBTextEdit;
    CkImpRecAgrup: TcxCheckBox;
    ckdesdobramento: TcxCheckBox;
    CKPRAZO: TcxCheckBox;
    ckResumoGrafico: TcxCheckBox;
    ckVdAgrupadaVend: TcxCheckBox;
    dxDBEdit6: TcxDBTextEdit;
    dxDBEdit19: TcxDBTextEdit;
    dxDBEdit20: TcxDBTextEdit;
    dxDBEdit21: TcxDBTextEdit;
    ppTitleBand1: TppTitleBand;
    ppShape3: TppShape;
    lblTituloRel: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    lblCaixa: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    subEntEstoque: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppLabel9: TppLabel;
    ppLabel18: TppLabel;
    ppLabel21: TppLabel;
    ppLabel39: TppLabel;
    ppLine5: TppLine;
    ppDetailBand3: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine6: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLabel16: TppLabel;
    SubVdGeral: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppLabel20: TppLabel;
    DetalheVenda: TppDetailBand;
    ppRegion1: TppRegion;
    ppDBText19: TppDBText;
    ppDBText18: TppDBText;
    ppDBText17: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText13: TppDBText;
    ppDBText62: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppLine16: TppLine;
    RegionVenda: TppRegion;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppLabel92: TppLabel;
    ppDBCalc31: TppDBCalc;
    ppLabel96: TppLabel;
    ppDBCalc29: TppDBCalc;
    ppLabel139: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel25: TppLabel;
    ppLine11: TppLine;
    lblTipoVenda: TppDBText;
    ppLabel22: TppLabel;
    ppLine7: TppLine;
    ppLabel23: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel24: TppLabel;
    ppLabel111: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc3: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine8: TppLine;
    ppDBCalc28: TppDBCalc;
    raCodeModule2: TraCodeModule;
    SubTrocas: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine9: TppLine;
    ppLabel34: TppLabel;
    ppLabel43: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText25: TppDBText;
    ppDBText33: TppDBText;
    ppDBText27: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText14: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    RegionTroca: TppRegion;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppLine12: TppLine;
    ppDBCalc12: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppLabel41: TppLabel;
    SubPagas: TppSubReport;
    ppChildReport5: TppChildReport;
    ppTitleBand6: TppTitleBand;
    ppLabel42: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel53: TppLabel;
    ppLine10: TppLine;
    ppDetailBand6: TppDetailBand;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText38: TppDBText;
    ppDBText26: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText39: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppLine13: TppLine;
    ppDBCalc4: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppLabel52: TppLabel;
    SubRecebidas: TppSubReport;
    ppChildReport6: TppChildReport;
    ppTitleBand7: TppTitleBand;
    ppLabel51: TppLabel;
    ppLabel54: TppLabel;
    ppLine14: TppLine;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    ppLine15: TppLine;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppLabel62: TppLabel;
    RegiRecebido: TppRegion;
    ppLabel165: TppLabel;
    ppDBCalc55: TppDBCalc;
    ppLabel161: TppLabel;
    ppDBCalc54: TppDBCalc;
    ppRegion: TppRegion;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    lblSaldos: TppLabel;
    ppLabel6: TppLabel;
    lblDinheiro: TppLabel;
    lblChequeVista: TppLabel;
    lblTicket: TppLabel;
    lblSldAbert: TppLabel;
    lblTtlAbertura: TppLabel;
    ppLabel5: TppLabel;
    lblSldAnt: TppLabel;
    lblMoeda: TppLabel;
    ppLabel162: TppLabel;
    lblChequePrazo: TppLabel;
    ppLabel164: TppLabel;
    SubEntSaida: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLine3: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText10: TppDBText;
    lblTipoEntrada: TppDBText;
    ppDBText9: TppDBText;
    ppDBText8: TppDBText;
    ppDBText7: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel15: TppLabel;
    ppLine4: TppLine;
    ppDBCalc1: TppDBCalc;
    raCodeModule1: TraCodeModule;
    SubRecebidasAg: TppSubReport;
    ppChildReport7: TppChildReport;
    ppTitleBand8: TppTitleBand;
    ppLabel7: TppLabel;
    ppLabel19: TppLabel;
    ppLine1: TppLine;
    ppLabel59: TppLabel;
    ppLabel64: TppLabel;
    ppLabel66: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppDetailBand8: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText40: TppDBText;
    ppSummaryBand8: TppSummaryBand;
    ppLine2: TppLine;
    ppDBCalc18: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppLabel71: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLine17: TppLine;
    ppLabel70: TppLabel;
    ppDBText4: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppLine18: TppLine;
    SubVdCancel: TppSubReport;
    ppChildReport8: TppChildReport;
    ppTitleBand9: TppTitleBand;
    ppLabel26: TppLabel;
    ppLabel72: TppLabel;
    ppLine19: TppLine;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel79: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppRegion2: TppRegion;
    ppDBText11: TppDBText;
    ppDBText24: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppSummaryBand9: TppSummaryBand;
    SubVdAg: TppSubReport;
    ppChildReport9: TppChildReport;
    ppTitleBand11: TppTitleBand;
    ppLabel140: TppLabel;
    ppLine27: TppLine;
    ppLabel153: TppLabel;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel157: TppLabel;
    ppDetailBand10: TppDetailBand;
    ppRegion3: TppRegion;
    ppDBText94: TppDBText;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppSummaryBand10: TppSummaryBand;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppLine25: TppLine;
    ppRegion4: TppRegion;
    ppLabel141: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    ppLabel144: TppLabel;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppLabel145: TppLabel;
    ppDBCalc44: TppDBCalc;
    ppLabel146: TppLabel;
    ppDBCalc45: TppDBCalc;
    ppLabel147: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLabel148: TppLabel;
    ppLine26: TppLine;
    ppDBText98: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBCalc50: TppDBCalc;
    ppDBCalc51: TppDBCalc;
    ppDBCalc52: TppDBCalc;
    ppLine31: TppLine;
    ppDBCalc53: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLine29: TppLine;
    ppLabel158: TppLabel;
    ppDBText90: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBCalc46: TppDBCalc;
    ppDBCalc47: TppDBCalc;
    ppDBCalc48: TppDBCalc;
    ppLine28: TppLine;
    ppDBCalc49: TppDBCalc;
    raCodeModule5: TraCodeModule;
    ppFooterBand3: TppFooterBand;
    ppShape14: TppShape;
    ppSystemVariable3: TppSystemVariable;
    ppDBText104: TppDBText;
    ppSummaryBand7: TppSummaryBand;
    ppShape2: TppShape;
    ppLabel17: TppLabel;
    lblSldInicial: TppLabel;
    ppLabel63: TppLabel;
    lblEntradas: TppLabel;
    ppLabel65: TppLabel;
    lblSaidas: TppLabel;
    ppLabel67: TppLabel;
    lblSaldo: TppLabel;
    raCodeModule3: TraCodeModule;
    ppTitleBand10: TppTitleBand;
    ppShape4: TppShape;
    lblEmpresaF11: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    lblCaixaF11: TppLabel;
    ppDetailBand9: TppDetailBand;
    ppShape21: TppShape;
    ppShape7: TppShape;
    ppShape5: TppShape;
    ppShape8: TppShape;
    ppShape20: TppShape;
    ppShape10: TppShape;
    ppShape6: TppShape;
    ppLabel1: TppLabel;
    ppLine20: TppLine;
    ppLabel78: TppLabel;
    ppLabel101: TppLabel;
    ppLine24: TppLine;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel124: TppLabel;
    ppShape9: TppShape;
    ppLabel95: TppLabel;
    ppLabel100: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppShape11: TppShape;
    ppShape13: TppShape;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppLabel125: TppLabel;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppLabel126: TppLabel;
    ppLabel127: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    ppShape19: TppShape;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLine23: TppLine;
    ppDBText61: TppDBText;
    ppDBText68: TppDBText;
    ppDBText73: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
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
    ppLabel77: TppLabel;
    ppLine21: TppLine;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLine22: TppLine;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel97: TppLabel;
    ppShape37: TppShape;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel113: TppLabel;
    ppLabel115: TppLabel;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppLabel112: TppLabel;
    ppLabel185: TppLabel;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppLine30: TppLine;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText63: TppDBText;
    ppDBText65: TppDBText;
    ppLabel186: TppLabel;
    ppLabel114: TppLabel;
    ppDBText64: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText75: TppDBText;
    ppDBText125: TppDBText;
    ppDBText126: TppDBText;
    ppDBText127: TppDBText;
    ppDBText128: TppDBText;
    ppDBText129: TppDBText;
    ppLabel187: TppLabel;
    ppDBText130: TppDBText;
    ppDBText131: TppDBText;
    ppLabel188: TppLabel;
    ppDBText132: TppDBText;
    ppLabel189: TppLabel;
    ppLabel130: TppLabel;
    lblSaldoAnterior: TppLabel;
    lblTotalCaixa: TppLabel;
    ppDBText74: TppDBText;
    ppLabel149: TppLabel;
    ppDBText91: TppDBText;
    ppLabel150: TppLabel;
    ppLabel152: TppLabel;
    ppLabel159: TppLabel;
    ppLabel160: TppLabel;
    ppLabel163: TppLabel;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppLabel151: TppLabel;
    ppDBText102: TppDBText;
    ppLabel156: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppShape12: TppShape;
    ppSystemVariable4: TppSystemVariable;
    ppDBText103: TppDBText;
    raCodeModule4: TraCodeModule;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActFecharCaixaExecute(Sender: TObject);
    procedure ActListagemExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure BtnImprimeVendasClick(Sender: TObject);
    procedure BtnImprimeRecebidasClick(Sender: TObject);
    procedure BtnImprimePagasClick(Sender: TObject);
    procedure BtnImprimeEntSaiClick(Sender: TObject);
    procedure EdValorEnter(Sender: TObject);
    procedure EdValorExit(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure pcChange(Sender: TObject);
    procedure ActResumoExecute(Sender: TObject);
    procedure ActComissoesExecute(Sender: TObject);
    procedure ppDBCalc3Print(Sender: TObject);
    procedure ppDBText10Print(Sender: TObject);
    procedure ppDBCalc50Print(Sender: TObject);
    procedure lblSaldoPrint(Sender: TObject);
  private
    { Private declarations }
    procedure ListagemCaixas;
    procedure PreparaListagemCaixas;
    procedure ImprimeReceber       (Opcao: String);
    procedure ImprimePagar         (Opcao: String);
    procedure ImprimeVendas        (Opcao: String);
    procedure ImprimeTrocas        (Opcao: String);
    procedure ImprimeSaidas        (Opcao: String);
    procedure ImprimeEnt_Est       (Opcao: String);
    procedure ImprimeVendasAbertas (Opcao: String);
    procedure ImprimeVendasCanceladas (Opcao: String);

    procedure Rodape(Sender: TObject; Pagina: Integer);

    procedure Cabecalho(Sender: TObject; Pagina: Integer);
    procedure CabecalhoTrocas(Sender: TObject; Pagina: Integer);
    procedure CabecalhoVendas(Sender: TObject; Pagina: Integer);
    procedure CabecalhoSaidas(Sender: TObject; Pagina: Integer);
    procedure CabecalhoCaixas(Sender: TObject; Pagina: Integer);

    procedure ImprimeCaixas  ;
    procedure inclinha       ;

  public
    { Public declarations }
    Retorno: Integer;
    OpCaoCaixa: String;
    CaixaFechado: String;
  end;

var
  FrmFecharCaixas: TFrmFecharCaixas;
  Linha, Pagina: Integer;
  SaldoCaixa, SaldoSaidas, SaldoEntradas, SaldoRecebidas, SaldoPagas, SaldoVendas, SaldoAVista, Saldo_Trocas, Saldo_EntEst : Real ;

implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Caixa_Dm,
     GraficoAcompanhamento_Vendas_Form,
     MensagemClassificacao_Form;

{$R *.DFM}

procedure TFrmFecharCaixas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If CaixaFechado = 'S'
     THEN BEGIN
          dmApp.ZeraCaixaUsuario(owner);

          DMCaixa.Caixas.Close                ;
          DMCaixa.Recebidas.Close             ;
          DMCaixa.Pagas.Close                 ;
          DMCaixa.Vendas.Close                ;
          DMCaixa.Vendas_Abertas.Close        ;
          DMCaixa.Vendas_Canceladas.Close     ;
          DMCaixa.Saidas.Close                ;


          DMCaixa.Vendas_Agrupadas.Close      ;
          DMCaixa.Lista_Produtos_Caixa.Close  ;
          DMCaixa.ACOMPANHAMENTO_VENDAS.Close ;
          DMCaixa.Trocas.Close                ;
          DMCaixa.Cheques.Close               ;
          DMCaixa.ChequesReceber.Close        ;
          DMCaixa.Ver_Faturas_Caixa.Close     ;
          DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXA.Close ;

          DMCaixa.Free;
          DMCaixa := Nil;
          //
          Action := caFree;
          FrmFecharCaixas := Nil;

          FrmMain.PnlClient.Visible := True;
     END
     ELSE BEGIN
          If MessageDlg('Deseja Sair da Tela de Fechamento do Caixa?', mtConfirmation, [mbOK, mbCancel], 0) = MROK
          THEN BEGIN
               dmApp.ZeraCaixaUsuario(owner);
               
               Datasource.Dataset.Close;

               DMCaixa.Caixas.Close                ;
               DMCaixa.Recebidas.Close             ;
               DMCaixa.Pagas.Close                 ;
               DMCaixa.Vendas.Close                ;
               DMCaixa.Vendas.Close                ;
               DMCaixa.Vendas_Abertas.Close        ;
               DMCaixa.Vendas_Canceladas.Close     ;
               DMCaixa.Saidas.Close                ;


               DMCaixa.Vendas_Agrupadas.Close      ;
               DMCaixa.Lista_Produtos_Caixa.Close  ;
               DMCaixa.ACOMPANHAMENTO_VENDAS.Close ;
               DMCaixa.Trocas.Close                ;
               DMCaixa.Cheques.Close               ;
               DMCaixa.ChequesReceber.Close        ;
               DMCaixa.Ver_Faturas_Caixa.Close     ;
               DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXA.Close ;

               DMCaixa.Free;
               DMCaixa := Nil;
               //
               Action := caFree;
               FrmFecharCaixas := Nil;

               FrmMain.PnlClient.Visible := True;
          END
          else begin
               Action := Canone ;
          end;
     END;
end;

procedure TFrmFecharCaixas.FormShow(Sender: TObject);
Var
   TrocoInicial, SaldoAnterior: Real ;
begin
  IniciaComponentes ( Self as TForm );
  tbsImpressoes.show;
  //
  Try
     With DmCaixa do
     Begin
          If DmaPP.Cx_Transp_Sld = 'S'
          THEN BEGIN
               //SALDO ANTERIOR DO CAIXA
               SaldoAnterior := Proc_Saldo_Caixa ( DmApp.UsuarioCaixa, DmApp.ContaCaixa, DmApp.DataCaixa, DmApp.TurnoCaixa );

               TrocoInicial  := Proc_Troco_Caixa ( DmApp.UsuarioCaixa, DmApp.ContaCaixa, DmApp.DataCaixa, DmApp.TurnoCaixa );
          END;

          Caixas.Close ;

          Caixas.Params.ByName ('CNPJ'  ).AsString  := DmaPP.cNPJ         ;

          If OpCaoCaixa = 'Fechado'
          then begin
               Caixas.Params.ByName ('ESTADO').AsString  := 'S'           ;
          end
          else begin
               Caixas.Params.ByName ('ESTADO').AsString  := 'N'           ;
          end;

          Caixas.Params.ByName ('DATA'  ).AsDate    := DmApp.DataCaixa    ;
          Caixas.Params.ByName ('USR'   ).AsInteger := DmApp.UsuarioCaixa ;
          Caixas.Params.ByName ('TURNO' ).AsInteger := DmApp.TurnoCaixa   ;

          Caixas.Prepare ;
          //---maquiando o dysplay do edit text pra retirar do valor final o vlr. de Bonificação
          Caixas.open;
          Caixas.FetchAll ;

          IF OpcaoCaixa = 'Aberto'
          THEN BEGIN
               //ARMAZENA O NOVO VALOR DO SALDO ANTERIOR
               Caixas.Edit ;

               CaixasCNPJ.Value    := DmaPP.Cnpj         ;
               CaixasTurno.Value   := DmaPP.TurnoCaixa   ;
               CaixasConta.Value   := DmApp.ContaCaixa   ;
               CaixasData.Value    := DmApp.DataCaixa    ;
               CaixasUsuario.Value := DmApp.UsuarioCaixa ;

               CaixasVendas_Vista.value := 0         ;
               CaixasVendas_Prazo.Value := 0         ;

               If DmaPP.Cx_Transp_Sld = 'S'
               THEN BEGIN
                    CaixasSALDO_ANTERIOR.Value := SaldoAnterior ;
                    CaixasTROCO_INICIAl.Value  := TrocoInicial  ;
               END
               ELSE BEGIN
                    CaixasSALDO_ANTERIOR.Value := 0 ;
                    CaixasTROCO_INICIAl.Value  := 0 ;
               END;

               Caixas.Post ;

          end
          else begin
               ActFecharCaixa.Enabled := false ;
          end;

          //SE CONSIDERA CONTAS A PAGAR NO CAIXA
          If DmApp.Pagar_Caixa = 'S'
          THEN BEGIN
               Pagas_Caixa ( DmApp.UsuarioCaixa, DmApp.DataCaixa, DmApp.TurnoCaixa, DmApp.ContaCaixa );
          END;

          //SE CONSIDERA CONTAS A RECEBER NO CAIXA
          If DmApp.Receber_Caixa = 'S'
          THEN BEGIN
               Recebidas_Caixa ( DmApp.UsuarioCaixa, DmApp.DataCaixa, DmApp.TurnoCaixa, DmApp.ContaCaixa );
          END;

          //Vendas no Caixa
          Vendas_Caixa         ( DmApp.UsuarioCaixa, DmApp.DataCaixa, DmApp.TurnoCaixa );

          //Trocas no Caixa
          Trocas_Caixa       ( DmApp.UsuarioCaixa, DmApp.DataCaixa, DmApp.TurnoCaixa );

          //Saidas do Caixa
          Saidas_Caixa ( DmApp.UsuarioCaixa, DmApp.DataCaixa, DmApp.ContaCaixa, DmApp.TurnoCaixa );



          //Produtos Vendidos no Caixa
          Inicia_Produtos ( DmApp.UsuarioCaixa, DmApp.DataCaixa, DmApp.ContaCaixa, DmApp.TurnoCaixa );



          //Valores do Caixa
          Proc_Valores_Caixa ( DmApp.UsuarioCaixa, DmApp.DataCaixa, DmApp.TurnoCaixa );

          //Entradas de Produtos
          Entradas_Notas ( DmApp.UsuarioCaixa, DmApp.DataCaixa, DmApp.ContaCaixa, DmApp.TurnoCaixa );

          //Soma de Vendas Por Dia
          Ver_Acompanhamento_Vendas ( DmApp.DataCaixa ) ;

          //Contas Bancárias
          Inicia_Contas( DmApp.DataCaixa );

          //Saldo do Contas a Receber
          DmCaixa.Soma_Receber ;

          //Saldo do Contas a Pagar
          DmCaixa.Soma_Pagar ;

          //Valores do Caixa
          //qryVendasADMCx'

          EdDinheiro.Text := FormatFloat('###,###,##0.00', ARREDONDA(DmCaixa.Dinheiro,2) );
          EdCheque.Text   := FormatFloat('###,###,##0.00', ARREDONDA(DmCaixa.Cheque,2)   );
          EdCartao.Text   := FormatFloat('###,###,##0.00', ARREDONDA(DmCaixa.Cartao,2)   );
          EdTicket.Text   := FormatFloat('###,###,##0.00', ARREDONDA(DmCaixa.Ticket,2)   );
          EdTroco.Text    := FormatFloat('###,###,##0.00', ARREDONDA(DmCaixa.Troco,2));
          EdVista.Text    := FormatFloat('###,###,##0.00', ARREDONDA(DmCaixa.SOMA_Vendas_Vista,2));

          EdTotal.Text    := FormatFloat('###,###,##0.00', ARREDONDA(DmCaixa.Dinheiro + DmCaixa.Prazo + DmCaixa.Cheque + DmCaixa.Cartao + DmCaixa.Ticket - DmCaixa.Troco,2));

          //RESULTADOS ACUMULADOS
          //SALDO VENDAS PRAZO
          Saldo_Prazo := DmaPP.Saldo_Vendas_Prazo( DmApp.DataCaixa ) ;

          //VENDAS A VISTA
          Saldo_Vista := DmaPP.Saldo_Vendas_Vista( DmApp.DataCaixa ) ;

          If OpCaoCaixa <> 'Fechado'
          then begin
               //ARMAZENA O NOVO VALOR DO SALDO ANTERIOR
               Caixas.Edit ;
               CaixasVendas_Vista.value    := ARREDONDA(SOMA_Vendas_Vista  ,2) ;
               CaixasVendas_Prazo.Value    := ARREDONDA(SOMA_Vendas_Prazo  ,2) ;

               CaixasSALDO_Vista.value     := ARREDONDA(Saldo_Vista        ,2) ;
               CaixasSALDO_Prazo.Value     := ARREDONDA(Saldo_Prazo        ,2) ;


               CaixasRECEBIMENTOS.Value    := ARREDONDA(Soma_Recebidas     ,2) ;
               CaixasPAGAMENTOS.Value      := ARREDONDA(Soma_Pagas         ,2) ;
               CaixasNOTAS.Value           := ARREDONDA(Soma_Vendas_Prazo  ,2) ;
               CaixasPRODUTOS.Value        := ARREDONDA(Soma_Produtos      ,2) ;
               CaixasOUTRAS_ENTRADAS.Value := ARREDONDA(Soma_Out_Entradas + SOMA_ENTRADA_EST ,2) ;
               CaixasOUTRAS_SAIDAS.Value   := ARREDONDA(Soma_Out_Saidas    ,2) ;
               CaixasTROCO_INICIAL.Value   := ARREDONDA(TrocoInicial       ,2) ;
               CaixasSALDO_ANTERIOR.Value  := ARREDONDA(SaldoAnterior      ,2) ;


               CaixasDESCONTOS.Value       := ARREDONDA(-1 * Soma_Descontos,2) ;
               CaixasACRESCIMOS.Value      := ARREDONDA(Soma_Acrescimos    ,2) ;
               CaixasJUROS.Value           := ARREDONDA(Soma_Juros         ,2) ;
               CaixasTROCO_VENDAS.Value    := ARREDONDA(Soma_Troco         ,2) ;
               CaixasCARTAO.Value          := 0                                ;
               CaixasSALDO_CHEQUE.Value    := ARREDONDA(DmApp.Cheques_Aberto,2);
               CaixasSALDO_CONTAS_BANCARIAS.Value := ARREDONDA(Soma_Contas  ,2);
               CaixasSALDO_RECEBER.Value   := ARREDONDA(SALDO_RECEBER      , 2);
               CaixasSALDO_PAGAR.Value     := ARREDONDA(SALDO_PAGAR        , 2);

               CaixasSALDO_CHEQUE_CONC_DATA.Value := ARREDONDA(DmApp.Cheques_Conciliados_Data(CaixasData.Value) ,2);

               Caixas.Post ;
          end;
     End;

     (Datasource.DataSet as TIBDataset).FetchAll;
  Except
    On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         Exit;
       End
    Else
       Begin
         ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
         Exit;
       End;
  End;
  //
end;

procedure TFrmFecharCaixas.IncLinha ;
begin
     Linha := Linha + 1 ;

     If (Linha >= 63)
     Then begin
          Print.Novapagina;
          Linha := 8;
     end;
end;

procedure TFrmFecharCaixas.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  CaixaFechado := 'N' ;
end;

procedure TFrmFecharCaixas.dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFecharCaixas.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmFecharCaixas.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       ActListagem.Enabled  := False;
       ActFechar.Enabled    := False;
       ActSalvar.Enabled    := true ;
       ActCancelar.Enabled  := true ;
     End
  Else
     Begin
       ActListagem.Enabled  := ActListagem.Tag = 1;
       ActFechar.Enabled    := True;
       ActSalvar.Enabled    := False;
       ActCancelar.Enabled  := False;
     End;
end;

procedure TFrmFecharCaixas.ActFecharExecute(Sender: TObject);
begin
     Close;
end;

procedure TFrmFecharCaixas.Rodape(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFrmFecharCaixas.Cabecalho(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, 'Caixa ' + DateToStr(DmApp.DataCaixa) + '/' + DmApp.NomeCaixa + ' - ' + Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05,01,'Codigo Data       Cliente                                            Documento                      Total       Desc/Jur     Vlr Liquido', [Comp17]);
  Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
  linha  := 08;

end;

procedure TFrmFecharCaixas.CabecalhoTrocas(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, 'Caixa ' + DateToStr(DmApp.DataCaixa) + '/' + DmApp.NomeCaixa + ' - ' + Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05,01,'Codigo Data       Cliente                                            Documento                      Total       Desc/Jur     Vlr Liquido', [Comp17]);
  Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
  linha  := 08;

end;

procedure TFrmFecharCaixas.CabecalhoSaidas(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, 'Caixa ' + DateToStr(DmApp.DataCaixa) + '/' + DmApp.NomeCaixa + ' - ' + Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05,01,'Documento         Historico                                                                                                        Valor', [Comp17]);
  Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
  linha  := 08;

end;

procedure TFrmFecharCaixas.ImprimeReceber (Opcao: String);
Var
   Total: Real;
   TotalCli, TotalDesc, TotalJur, TotalBaixaCli: Real;
   UltCod, Fat: Integer;
   AUx, OutroAux, Aux1, Nome: String;
begin
  If Opcao = 'S'
  Then Begin
       Print.OnBeforeNewPage := Rodape    ;
       Print.OnNewPage       := Cabecalho ;
  end
  else begin
       Print.OnBeforeNewPage := Nil ;
       Print.OnNewPage       := Nil ;
  end;

  DmCaixa.Recebidas.DisableControls ;

  If Opcao = 'S'
  Then Begin
       Print.TitulodoRelatorio := 'Contas Recebidas' ;

       print.Abrir;
  END
  ELSE BEGIN
       IncLinha ;

       Print.ImpF(Linha, 01, 'Contas Recebidas', [Comp17, Negrito]);

       IncLinha ;
  END;

  //
  Total := 0;

  Anda.Max      := DmCaixa.Recebidas.RecordCount;

  Anda.Position := 0;

  Anda.Visible  := ivAlways ;

  //Isso fará com que se imprima agrupado por cliente
  If CkImpRecAgrup.Checked
  then begin
       //
       DmCaixa.Recebidas.First;

       UltCod        := DmCaixa.RecebidasPESSOA_FJ.Value;
       Nome          := DmCaixa.RecebidasNOME.Text      ;
       Fat           := DmCaixa.RecebidasFATURA.VALUE   ;
       TotalCli      := 0;
       TotalDesc     := 0;
       TotalJur      := 0;
       TotalBaixaCli := 0;

       While Not DmCaixa.Recebidas.Eof Do
       Begin
            //impriminto totalizador do grupo
            If (( UltCod <> DmCaixa.RecebidasPESSOA_FJ.Value ) or ( DmCaixa.Recebidas.Eof ))
            and (( DmCaixa.RecebidasFatura.IsNull ) or ( DmCaixa.RecebidasFatura.Value <= 0  ))
            then begin
                 //
                 Print.ImpF(Linha,01,Format('%6s %-8s %-52s %-15s %20s %14s %15s',
                       [InttoStr(UltCod),
                       '',
                       Nome,
                       '',
                       FormatFloat('###,###,##0.00', Arredonda( TotalCli,2)),
                       FormatFloat('###,###,##0.00', Arredonda( TotalJur - TotalDesc ,2)),
                       FormatFloat('###,###,##0.00', Arredonda( TotalBaixaCli,2))]),[Comp17]);

                 TotalCli      := 0;
                 TotalDesc     := 0;
                 TotalJur      := 0;
                 TotalBaixaCli := 0;
                 Fat           := 0;

                 UltCod        := DmCaixa.RecebidasPESSOA_FJ.Value;
                 Nome          := DmCaixa.RecebidasNOME.Text ;

                 //
                 IncLinha;
            end
            else
                FAT := DMCAIXA.RECEBIDASFATURA.VALUE ;
            //setando totais blabla...
            IF (( DmCaixa.RecebidasFatura.IsNull ) or ( DmCaixa.RecebidasFatura.Value <= 0  ))
            THEN BEGIN
                 Total := Total + Arredonda(DmCaixa.RecebidasVLR_BAIXA.Value,2);

                 TotalCli      := TotalCli      + Arredonda(DmCaixa.RecebidasVLR_BAIXA.Value,2) ;
                 TotalDesc     := TotalDesc     + Arredonda(DmCaixa.RecebidasDESCONTOS.Value,2) ;
                 TotalBaixaCli := TotalBaixaCli + Arredonda(DmCaixa.RecebidasVLR_BAIXA.Value,2) ;
                 TotalJur      := TotalJur      + Arredonda(DmCaixa.RecebidasJUROS.Value,2)     ;
            END;

            //
            Anda.Position := Anda.Position + 1;

            DmCaixa.Recebidas.Next;
       End;//fim while

       //se não foi requisitado a impressão do total, imprimindo os dados
       // do cliente
       IF ( FAT = 0 )
       THEN BEGIN
            Print.ImpF(Linha,01,Format('%6s %-8s %-52s %-15s %20s %14s %15s',
             [DmCaixa.RecebidasPESSOA_FJ.Text,
             '',
             DmCaixa.RecebidasNOME.Text,
             '',
             FormatFloat('###,###,##0.00', Arredonda(TotalCli,2)),
             FormatFloat('###,###,##0.00', Arredonda(TotalDesc - TotalJur,2) ),
             FormatFloat('###,###,##0.00', Arredonda(TotalBaixaCli,2))]
             ),[Comp17]);

             IncLinha;
       END;

       //FATURAS
       DmCaixa.Ver_Faturas_Caixa.First;

       UltCod        := DmCaixa.Ver_Faturas_CaixaPESSOA_FJ.Value;
       Nome          := DmCaixa.Ver_Faturas_CaixaNOME.Text ;

       TotalCli      := 0;
       TotalDesc     := 0;
       TotalJur      := 0;
       TotalBaixaCli := 0;
       Fat           := 0;

       While Not DmCaixa.Ver_Faturas_Caixa.Eof Do
       Begin
            //imprimindo total do cliente denovo..?
            If (( UltCod <> DmCaixa.Ver_Faturas_CaixaPESSOA_FJ.Value ) or ( DmCaixa.Ver_Faturas_Caixa.Eof ))
            then begin
                 //
                 Print.ImpF(Linha,01,Format('%6s %-8s %-52s %-15s %20s %14s %15s',
                       [InttoStr(UltCod),
                       '',
                       Nome,
                       '',
                       FormatFloat('###,###,##0.00', Arredonda( TotalCli,2)),
                       FormatFloat('###,###,##0.00', Arredonda( TotalJur - TotalDesc ,2)),
                       FormatFloat('###,###,##0.00', Arredonda( TotalBaixaCli,2))]),[Comp17]);

                 TotalCli      := 0;
                 TotalDesc     := 0;
                 TotalJur      := 0;
                 TotalBaixaCli := 0;

                 UltCod        := DmCaixa.Ver_Faturas_CaixaPESSOA_FJ.Value;
                 Nome          := DmCaixa.Ver_Faturas_CaixaNOME.Text ;

                 //
                 IncLinha;
            end;

            Total := Total + Arredonda(DmCaixa.Ver_Faturas_CaixaVALOR.Value,2);

            TotalCli      := TotalCli      + Arredonda(DmCaixa.Ver_Faturas_CaixaVALOR.Value,2)     ;
            TotalDesc     := TotalDesc     + Arredonda(DmCaixa.Ver_Faturas_CaixaDESCONTO.Value,2) ;
            TotalBaixaCli := TotalBaixaCli + Arredonda(DmCaixa.Ver_Faturas_CaixaVALOR.Value - DmCaixa.Ver_Faturas_CaixaDESCONTO.Value + DmCaixa.Ver_Faturas_CaixaJUROS.Value ,2) ;
            TotalJur      := TotalJur      + Arredonda(DmCaixa.Ver_Faturas_CaixaJUROS.Value,2)     ;

            //
            Anda.Position := Anda.Position + 1;

            DmCaixa.Ver_Faturas_Caixa.Next;
       End;

       //
       Print.ImpF(Linha,01,Format('%6s %-8s %-52s %-15s %20s %14s %15s',
           [DmCaixa.Ver_Faturas_CaixaPESSOA_FJ.Text,
             '',
             DmCaixa.Ver_Faturas_CaixaNOME.Text,
             '',
             FormatFloat('###,###,##0.00', Arredonda(TotalCli,2)),
             FormatFloat('###,###,##0.00', Arredonda(TotalDesc - TotalJur,2) ),
             FormatFloat('###,###,##0.00', Arredonda(TotalBaixaCli,2))]
             ),[Comp17]);

       IncLinha;


       //FATURAS PARCIAIS
       DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXA.First;

       UltCod        := DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXAPESSOA_FJ.Value;
       Nome          := DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXANOME.Text ;

       TotalCli      := 0;
       TotalDesc     := 0;
       TotalJur      := 0;
       TotalBaixaCli := 0;
       Fat           := 0;

       While Not DmCaixa.Ver_Faturas_Caixa.Eof Do
       Begin
            If (( UltCod <> DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXAPESSOA_FJ.Value ) or ( DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXA.Eof ))
            then begin
                 //
                 Print.ImpF(Linha,01,Format('%6s %-8s %-52s %-15s %20s %14s %15s',
                       [InttoStr(UltCod),
                       '',
                       Nome,
                       '',
                       FormatFloat('###,###,##0.00', Arredonda( TotalCli,2)),
                       FormatFloat('###,###,##0.00', Arredonda( TotalJur - TotalDesc ,2)),
                       FormatFloat('###,###,##0.00', Arredonda( TotalBaixaCli,2))]),[Comp17]);

                 TotalCli      := 0;
                 TotalDesc     := 0;
                 TotalJur      := 0;
                 TotalBaixaCli := 0;

                 UltCod        := DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXAPESSOA_FJ.Value;
                 Nome          := DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXANOME.Text ;

                 //
                 IncLinha;
            end;

            Total := Total + Arredonda(DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXAVALOR.Value,2);

            TotalCli      := TotalCli      + Arredonda(DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXAVALOR.Value,2)     ;
            TotalDesc     := TotalDesc     + Arredonda(DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXADESCONTOS.Value,2) ;
            TotalBaixaCli := TotalBaixaCli + Arredonda(DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXAVALOR.Value - DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXADESCONTOS.Value + DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXAJUROS.Value ,2) ;
            TotalJur      := TotalJur      + Arredonda(DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXAJUROS.Value,2)     ;

            //
            Anda.Position := Anda.Position + 1;

            DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXA.Next;
       End;

       //
       Print.ImpF(Linha,01,Format('%6s %-8s %-52s %-15s %20s %14s %15s',
           [DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXAPESSOA_FJ.Text,
             '',
             DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXANOME.Text,
             '',
             FormatFloat('###,###,##0.00', Arredonda(TotalCli,2)),
             FormatFloat('###,###,##0.00', Arredonda(TotalDesc - TotalJur,2) ),
             FormatFloat('###,###,##0.00', Arredonda(TotalBaixaCli,2))]
             ),[Comp17]);

       IncLinha;

  end // senão irá imprimir agrupado
  else begin
       //
       DmCaixa.Recebidas.First;

       While Not DmCaixa.Recebidas.Eof Do
       Begin
            IF (( DmCaixa.RecebidasFatura.IsNull ) or ( DmCaixa.RecebidasFatura.Value <= 0  ))
            THEN BEGIN
                 TotalJur  := Arredonda(DmCaixa.RecebidasJUROS.VALUE,2) ;
                 TotalDesc := Arredonda(-1 * DmCaixa.RecebidasDESCONTOS.VALUE,2)  ;

                 Aux := FormatFloat('###,###,##0.00', TotalJur + TotalDesc ) ;

                 //
                 Print.ImpF(Linha,01,Format('%6s %-8s %-50s',
                  [DmCaixa.RecebidasCODIGO.Text,
                   DmCaixa.RecebidasDT_VENCTO.Text,
                   DmCaixa.RecebidasNOME.Text,
                   DmCaixa.RecebidasDOCTO.Text]),[Comp17]);


                 OutroAux := formatfloat('###,###,##0.00',DmCaixa.RecebidasVALOR.asfloat);
                 while length(OutroAux) < 12
                 do begin
                    OutroAux := ' ' + OutroAux ;
                 end;
                 Print.Impf(Linha,55,OutroAux,[Comp17]);

                 OutroAux := Aux;
                 while length(OutroAux) < 12
                 do begin
                    OutroAux := ' ' + OutroAux ;
                 end;
                 Print.Impf(Linha,63,OutroAux,[Comp17]);

                 OutroAux := formatfloat('###,###,##0.00',dmCaixa.RecebidasVLR_BAIXA.asfloat);
                 while length(OutroAux) < 12
                 do begin
                    OutroAux := ' ' + OutroAux ;
                 end;
                 Print.Impf(Linha,74,OutroAux,[Comp17]);

                 Total := Total + Arredonda(DmCaixa.RecebidasVLR_BAIXA.Value,2);
                 //
                 Anda.Position := Anda.Position + 1;
            end
            else
                FAT := DMCAIXA.RECEBIDASFATURA.VALUE ;

            DmCaixa.Recebidas.Next;
            //
            IncLinha;

       End;

       DmCaixa.Ver_Faturas_Caixa.First;

       While Not DmCaixa.Ver_Faturas_Caixa.Eof Do
       Begin
            TotalJur  := Arredonda(DmCaixa.Ver_Faturas_CaixaJUROS.VALUE,2) ;
            TotalDesc := Arredonda(-1 * DmCaixa.Ver_Faturas_CaixaDESCONTO.VALUE,2)  ;

            Aux := FormatFloat('###,###,##0.00', TotalJur + TotalDesc ) ;

            Aux1 := FormatFloat('###,###,##0.00', DmCaixa.Ver_Faturas_CaixaVALOR.Value + DmCaixa.Ver_Faturas_CaixaJUROS.Value - DmCaixa.Ver_Faturas_CaixaDESCONTO.Value ) ;
            //
            Print.ImpF(Linha,01,Format('%6s %-8s %-50s %-15s %20s %14s %15s',
                  [DmCaixa.Ver_Faturas_CaixaCODIGO.Text,
                   DmCaixa.Ver_Faturas_CaixaVENCIMENTO.Text,
                   DmCaixa.Ver_Faturas_CaixaNOME.Text,
                   DmCaixa.Ver_Faturas_CaixaCODIGO.Text,
                   DmCaixa.Ver_Faturas_CaixaVALOR.Text,
                   Aux,
                   Aux1]),[Comp17]);

            Total := Total + Arredonda(DmCaixa.Ver_Faturas_CaixaVALOR.Value + DmCaixa.Ver_Faturas_CaixaJUROS.Value - DmCaixa.Ver_Faturas_CaixaDESCONTO.Value,2);

            //
            Anda.Position := Anda.Position + 1;

            DmCaixa.Ver_Faturas_Caixa.Next;

            //
            IncLinha;
       End;

       //FATURAS PARCIAIS
       DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXA.First;

       While Not DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXA.Eof Do
       Begin
            TotalJur  := Arredonda(DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXAJUROS.VALUE,2) ;
            TotalDesc := Arredonda(-1 * DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXADESCONTOS.VALUE,2)  ;

            Aux := FormatFloat('###,###,##0.00', TotalJur + TotalDesc ) ;

            Aux1 := FormatFloat('###,###,##0.00', DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXAVALOR.Value + DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXAJUROS.Value - DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXADESCONTOS.Value ) ;
            //
            Print.ImpF(Linha,01,Format('%6s %-8s %-50s %-15s %20s %14s %15s',
                  [DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXAFATURA.Text,
                   '',
                   DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXANOME.Text,
                   DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXAFATURA.Text,
                   DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXAVALOR.Text,
                   Aux,
                   Aux1]),[Comp17]);

            Total := Total + Arredonda(DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXAVALOR.Value + DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXAJUROS.Value - DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXADESCONTOS.Value,2);

            //
            Anda.Position := Anda.Position + 1;

            DmCaixa.VER_FIN_FATURAS_PARCIAL_CAIXA.Next;

            //
            IncLinha;
       End;
  end;

  //
  Print.ImpF(Linha, 01, Format('%102s Total Recebidas : %15s', ['', FormatFloat('#,##0.00', TOTAL)]), [Comp17]);

  IncLinha;


  //SALDO DAS ENTRADAS
  SaldoRecebidas := Total ;

  //
  Anda.Visible:= ivNever;

  If Opcao = 'S'
  Then Begin
       print.Fechar;
  END;

  DmCaixa.Recebidas.EnableControls ;
end;

procedure TFrmFecharCaixas.ImprimeTrocas (Opcao: String);
Var
  Total, Entradas, TotalDia, TtlVista, TtlPrazo, Saidas : Real;
begin
  If Opcao = 'S'
  Then Begin
       Print.OnBeforeNewPage := Rodape    ;
       Print.OnNewPage       := CabecalhoTrocas ;
  end
  else begin
       IncLinha ;

       Print.ImpF(Linha, 01, 'Trocas', [Comp17, Negrito]);
       Print.ImpF(Linha, 46, 'Entradas', [Comp17]);
       Print.ImpF(Linha, 55, 'Saidas', [Comp17]);
       Print.ImpF(Linha, 63, 'Liquido', [Comp17]);
       Print.ImpF(Linha, 71, 'Vista', [Comp17]);
       Print.ImpF(Linha, 77, 'Prazo', [Comp17]);

       IncLinha ;

       Print.OnBeforeNewPage := Nil ;
       Print.OnNewPage       := Nil ;
  end;

  //
  TtlPrazo := 0;
  TtlVista := 0;
  TotalDia := 0;
  Total    := 0;
  Entradas := 0;
  Saidas   := 0;

  Anda.Max := DmCaixa.Trocas.RecordCount;

  Anda.Position := 0;

  Anda.Visible  := ivAlways ;

  //
  DmCaixa.Trocas.First;

  While Not DmCaixa.Trocas.Eof Do
  Begin
       if ARREDONDA(DmCaixa.trocasAVISTA.VALUE,2) <> 0
       then begin
            //
            Print.ImpF(Linha,06,DmCaixa.TrocasCODIGO.TEXT,[Comp17]);
            Print.ImpF(Linha,08,copy(DmCaixa.TrocasNOME_VENDEDOR.Text,1,29),[Comp17]);
            Print.ImpF(Linha,20,DmCaixa.TrocasNOME_RAZAO.Text,[Comp17]);
            print.impd(linha,49,formatfloat('###,##0.00',DmCaixa.TrocasVLR_TOTAL.asfloat),[Comp17]);
            print.impd(linha,58,formatfloat('###,##0.00',DmCaixa.TrocasVLR_TOTAL_2.asfloat),[Comp17]);
            print.impd(linha,67,formatfloat('###,##0.00',(DmCaixa.TrocasVLR_TOTAL_2.asfloat - DmCaixa.TrocasVLR_TOTAL.asfloat)),[Comp17]);
            print.impd(linha,74,formatfloat('###,##0.00',ARREDONDA(DmCaixa.trocasAVISTA.VALUE,2)),[Comp17]);
            print.impd(linha,80,formatfloat('###,##0.00',(DmCaixa.TrocasVLR_TOTAL_2.asfloat - DmCaixa.TrocasVLR_TOTAL.asfloat) - ARREDONDA(DmCaixa.trocasAVISTA.VALUE,2)),[Comp17]);


            SaldoEntradas := SaldoEntradas + DmCaixa.trocasAVISTA.VALUE;
            Total    := Total    + (DmCaixa.TrocasVLR_TOTAL_2.VALUE - DmCaixa.TrocasVLR_TOTAL.VALUE);
            Entradas := Entradas + DmCaixa.TrocasVLR_TOTAL.VALUE;
            Saidas   := Saidas   + DmCaixa.TrocasVLR_TOTAL_2.VALUE;
            TtlVista := TtlVista + DmCaixa.trocasAVISTA.VALUE;
            TtlPrazo := TtlPrazo + ((DmCaixa.TrocasVLR_TOTAL_2.asfloat - DmCaixa.TrocasVLR_TOTAL.asfloat) - DmCaixa.trocasAVISTA.VALUE);
            TotalDia := TotalDia + DmCaixa.trocasAVISTA.VALUE;
       end;
       //
       Anda.Position := Anda.Position + 1;

       DmCaixa.Trocas.Next;
            //
       IncLinha;
            //
  End;

  //
  Print.ImpF(Linha, 20,'Total Trocas :', [Comp17]);
  print.impd(linha,49,formatfloat('###,##0.00',ENTRADAS),[Comp17]);
  print.impd(linha,58,formatfloat('###,##0.00',SAIDAS),[Comp17]);
  print.impd(linha,67,formatfloat('###,##0.00',TOTAL),[Comp17]);
  print.impd(linha,74,formatfloat('###,##0.00',TtlVista),[Comp17,SUBLINHADO]);
  print.impd(linha,80,formatfloat('###,##0.00',TtlPrazo),[Comp17]);
  //
  IncLinha;

  DmCaixa.Trocas.EnableControls ;

  Saldo_Trocas := TotalDia ;

  //
  Anda.Visible:= ivNever;
end;

procedure TFrmFecharCaixas.ImprimePagar   (Opcao: String);
Var
   Total: Real;
begin
  If Opcao = 'S'
  Then Begin
       Print.OnBeforeNewPage := Rodape    ;
       Print.OnNewPage       := Cabecalho ;
  end
  else begin
       Print.OnBeforeNewPage := Nil ;
       Print.OnNewPage       := Nil ;
  end;

  DmCaixa.Pagas.DisableControls ;

  If Opcao = 'S'
  Then Begin
       Print.TitulodoRelatorio := 'Contas Pagas' ;

       print.Abrir;
  END
  ELSE BEGIN
       IncLinha ;

       Print.ImpF(Linha, 01, 'Contas Pagas', [Comp17, Negrito]);
       Print.ImpF(Linha, 40, 'Documento', [Comp17, Negrito]);
       Print.ImpD(Linha, 55, 'Vlr. Liquido', [Comp17, Negrito]);
       Print.ImpD(Linha, 63, 'Vlr. Juros', [Comp17, Negrito]);
       Print.ImpD(Linha, 72, 'Vlr. Desconto', [Comp17, Negrito]);
       Print.ImpD(Linha, 80, 'Vlr. Bruto', [Comp17, Negrito]);


       IncLinha ;
  END;

  //
  Total := 0;

  Anda.Max      := DmCaixa.Pagas.RecordCount;

  Anda.Position := 0;

  Anda.Visible  := ivAlways ;

  //
  DmCaixa.Pagas.First;

  While Not DmCaixa.Pagas.Eof Do
  Begin
       //
       Print.Impf(Linha,01,DmCaixa.PagasCODIGO.Text,[Comp17, Negrito]);
       Print.Impf(Linha,05,DmCaixa.PagasDT_VENCTO.Text,[Comp17, Negrito]);
       Print.Impf(Linha,12,DmCaixa.PagasNOME.Text,[Comp17, Negrito]);
       Print.Impf(Linha,40,DmCaixa.PagasDOCTO.Text,[Comp17, Negrito]);
       Print.Impd(Linha,55,DmCaixa.PagasVALOR.Text,[Comp17, Negrito]);
       Print.Impd(Linha,63,DmCaixa.PagasJUROS.Text,[Comp17, Negrito]);
       Print.Impd(Linha,72,DmCaixa.PagasDESCONTOS.Text,[Comp17, Negrito]);
       Print.Impd(Linha,80,DmCaixa.PagasVLR_BAIXA.Text,[Comp17, Negrito]);

       Total := Total + DmCaixa.PagasVLR_BAIXA.Value;
          //
       Anda.Position := Anda.Position + 1;
       DmCaixa.Pagas.Next;
       //
       IncLinha;
       //
  End;
  //
  Print.ImpF(Linha, 01, Format('%106s Total Pagas : %15s', ['', FormatFloat('#,##0.00', TOTAL)]), [Comp17]);

  //
  IncLinha;

  //SALDO DAS PAGAS
  SaldoPagas := Total ;

  //
  Anda.Visible:= ivNever;

  DmCaixa.Pagas.EnableControls ;

  If Opcao = 'S'
  Then Begin
       print.Fechar;
  END;

end;

procedure TFrmFecharCaixas.ImprimeEnt_Est (Opcao: String);
Var
   Total: Real;
begin
  If Opcao = 'S'
  Then Begin
       Print.OnBeforeNewPage := Rodape    ;
       Print.OnNewPage       := CabecalhoSaidas ;
  end
  else begin
       Print.OnBeforeNewPage := Nil ;
       Print.OnNewPage       := Nil ;
  end;

  DmCaixa.ENTRADAS.DisableControls ;

  If Opcao = 'S'
  Then Begin
       Print.TitulodoRelatorio := 'Entradas no Estoque' ;

       print.Abrir;
  END
  ELSE BEGIN

       IncLinha;

       IncLinha;

       Print.ImpF(Linha, 01, 'Entradas no Estoque', [Comp17, Negrito]);

       IncLinha ;
  END;

  //
  Total := 0;

  Anda.Max      := DmCaixa.ENTRADAS.RecordCount;

  Anda.Position := 0;

  Anda.Visible  := ivAlways ;

  //
  DmCaixa.ENTRADAS.First;

  total := 0;

  Print.ImpF(Linha, 01, 'ENTRADAS', [Comp17, Negrito]);

  IncLinha ;

  While Not DmCaixa.ENTRADAS.Eof Do
  Begin
       //
       Print.ImpF(Linha,01,Format('%-35s %-20s %-60s %2s %15s',
       [
       COPY(DmCaixa.ENTRADASDOCUMENTO.Text,1,20),
       DmCaixa.ENTRADASPESSOA_FJ.TEXT,
       DmCaixa.ENTRADASNOME.VALUE,
       '',
       DmCaixa.ENTRADASVALOR.Text]),[Comp17]);

       TOTAL := TOTAL + DmCaixa.ENTRADASValor.Value;

       //
       Anda.Position := Anda.Position + 1;

       DmCaixa.ENTRADAS.Next;
       //
       IncLinha;
  End;

  //
  Print.ImpF(Linha, 01, Format('%104s Total Entradas: %15s', ['', FormatFloat('#,##0.00', total)]), [Comp17]);

  //SALDO DAS ENTRADAS
  Saldo_EntEst := TOTAL ;

  IncLinha;

  Anda.Visible:= ivNever;

  If Opcao = 'S'
  Then Begin
       print.Fechar;
  END;

  DmCaixa.ENTRADAS.EnableControls ;
end;

procedure TFrmFecharCaixas.ImprimeSaidas (Opcao: String);
Var
   Total, credito, debito: Real;
begin
  If Opcao = 'S'
  Then Begin
       Print.OnBeforeNewPage := Rodape    ;
       Print.OnNewPage       := CabecalhoSaidas ;
  end
  else begin
       Print.OnBeforeNewPage := Nil ;
       Print.OnNewPage       := Nil ;
  end;

  SALDOENTRADAS := 0;

  DmCaixa.Saidas.DisableControls ;

  If Opcao = 'S'
  Then Begin
       Print.TitulodoRelatorio := 'Entradas e Saídas do Caixa' ;

       print.Abrir;
  END
  ELSE BEGIN

       IncLinha;

       IncLinha;

       Print.ImpF(Linha, 01, 'Entradas e Saidas Do Caixa', [Comp17, Negrito]);

       IncLinha ;
  END;

  //
  Total := 0;

  Anda.Max      := DmCaixa.Saidas.RecordCount;

  Anda.Position := 0;

  Anda.Visible  := ivAlways ;

  //
  DmCaixa.Saidas.First;


       credito := 0;
       debito  := 0;

       Print.ImpF(Linha, 01, 'ENTRADAS', [Comp17, Negrito]);

       IncLinha ;

       While Not DmCaixa.Saidas.Eof Do
       Begin
            IF DmCaixa.SaidasTIPO.VALUE = 'C'
            THEN BEGIN
                 //
                 Print.ImpF(Linha,01,Format('%-35s %-20s %-60s %2s %15s',
                  [
                   COPY(DmCaixa.SaidasNOME.Text,1,35),
                   COPY(DmCaixa.SaidasDOCUMENTO.Text,1,20),
                   DmCaixa.SaidasHISTORICO.Text,
                   DmCaixa.SaidasTIPO.Text,
                   DmCaixa.SaidasVALOR.Text]),[Comp17]);

                 CREDITO := CREDITO + DmCaixa.SaidasValor.Value;

                 SaldoEntradas := SaldoEntradas + DmCaixa.SaidasValor.Value;
            END;


            //
            Anda.Position := Anda.Position + 1;

            DmCaixa.Saidas.Next;
            //
            IncLinha;
       End;

       //
       Print.ImpF(Linha, 01, Format('%104s Total Entradas: %15s', ['', FormatFloat('#,##0.00', CREDITO)]), [Comp17]);

       IncLinha;

       IncLinha;

       DmCaixa.Saidas.First;

       Print.ImpF(Linha, 01, 'SAIDAS', [Comp17, Negrito]);

       IncLinha ;

       While Not DmCaixa.Saidas.Eof Do
       Begin
            IF DmCaixa.SaidasTIPO.VALUE = 'D'
            THEN BEGIN
                 //
                 Print.ImpF(Linha,01,Format('%-35s %-20s %-60s %2s %15s',
                  [
                   COPY(DmCaixa.SaidasNOME.Text,1,35),
                   COPY(DmCaixa.SaidasDOCUMENTO.Text,1,20),
                   DmCaixa.SaidasHISTORICO.Text,
                   DmCaixa.SaidasTIPO.Text,
                   DmCaixa.SaidasVALOR.Text]),[Comp17]);

                 DEBITO := DEBITO + DmCaixa.SaidasValor.Value;

                 //SALDO DAS SAIDAS
                 SaldoSaidas := SaldoSaidas + DmCaixa.SaidasValor.Value ;
            END;

            //
            Anda.Position := Anda.Position + 1;

            DmCaixa.Saidas.Next;
            //
            IncLinha;
       End;

       TOTAL := CREDITO - DEBITO ;

       Print.ImpF(Linha, 01, Format('%105s Total Sai/Ent: %15s', ['', FormatFloat('#,##0.00', TOTAL)]), [Comp17]);

  IncLinha;

  Anda.Visible:= ivNever;

  If Opcao = 'S'
  Then Begin
       print.Fechar;
  END;

  DmCaixa.Saidas.EnableControls ;
end;

procedure TFrmFecharCaixas.CabecalhoVendas(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, 'Caixa ' + DateToStr(DmApp.DataCaixa) + '/' + DmApp.NomeCaixa + ' - ' + Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);

  If DmaPP.CX_Imp_Vnd_Agrup = 'S'
  THEN BEGIN
       Print.ImpF(05,01,'Vendedor                                                                                            Vista       Prazo        Vlr Liquido', [Comp17]);
       Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
       linha  := 08;
  END
  ELSE BEGIN
       //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
       Print.ImpF(05,01,'Fatura Cliente                                           Vendedor       Nf  Cf  Natureza            Total       Desconto     Vlr Liquido', [Comp17]);
       Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
       linha  := 08;
  END;

end;

procedure TFrmFecharCaixas.CabecalhoCaixas(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, 'Caixa ' + DateToStr(DmApp.DataCaixa) + '/' + DmApp.NomeCaixa + ' - ' + Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05,01, Replicate('-', 136), [Comp17]);
  linha  := 07;
end;

procedure TFrmFecharCaixas.ImprimeVendas (Opcao: String);
Var
   VndVista, VndPrazo: Real;
   Total, Vista, Prazo: Real;
   Dinheiro, Cheque, Cartao, Ticket, Troco, Prazos: Real;
   Nome, DinheiroTxt, ChequeTxt, CartaoTxt, TicketTxt, PrazoTxt, TrocoTxt: String;
begin
  If Opcao = 'S'
  Then Begin
       Print.OnBeforeNewPage := Rodape    ;
       Print.OnNewPage       := CabecalhoVendas ;
  end
  else begin
       Print.OnBeforeNewPage := Nil ;
       Print.OnNewPage       := Nil ;
  end;

  Dinheiro := 0;
  Cheque   := 0;
  Cartao   := 0;
  Ticket   := 0;
  Troco    := 0;
  Prazos   := 0;

  DmCaixa.Vendas.DisableControls ;

  If Opcao = 'S'
  Then Begin
       Print.TitulodoRelatorio := 'Vendas Faturadas' ;
       print.Abrir;
  END
  ELSE BEGIN
       IncLinha ;

       If DmaPP.Cx_Imp_Vnd_Agrup = 'S'
       THEN BEGIN
            Print.ImpF(Linha, 01,'Vendedor                                                                                           Vista           Prazo     Vlr Liquido', [Comp17]);
       end
       else begin
            Print.ImpF(Linha, 01,'Vendedor                                                                                           Total          Descto     Vlr Liquido', [Comp17]);
       end;

       IncLinha ;

       Print.ImpF(Linha, 01, 'Vendas Faturadas', [Comp17, Negrito]);

       IncLinha ;
  END;

  If DmaPP.Cx_Imp_Vnd_Agrup = 'S'
  THEN BEGIN
       //
       Total := 0;
       Vista := 0;
       Prazo := 0;

       Anda.Max      := DmCaixa.Vendas_Agrupadas.RecordCount;

       Anda.Position := 0;

       Anda.Visible  := ivAlways ;

       //
       DmCaixa.Vendas_Agrupadas.First;

       While Not DmCaixa.Vendas_Agrupadas.Eof Do
       Begin
            //
            Nome := DmCaixa.Vendas_AgrupadasNOME.Text ;

            Print.ImpF(Linha,01,Format('%6s %-81s %15s %15s %15s',
                  [DmCaixa.Vendas_AgrupadasVENDEDOR.Text,
                   NOME,
                   DmCaixa.Vendas_AgrupadasAVISTA.Text,
                   DmCaixa.Vendas_AgrupadasAPRAZO.Text,
                   DmCaixa.Vendas_AgrupadasLIQUIDO.Text]),[Comp17]);

            Total := Total + Arredonda(DmCaixa.Vendas_AgrupadasLIQUIDO.Value,2);
            Vista := Vista + Arredonda(DmCaixa.Vendas_AgrupadasAVISTA.Value,2);
            Prazo := Prazo + Arredonda(DmCaixa.Vendas_AgrupadasAPRAZO.Value,2);
            //
            Anda.Position := Anda.Position + 1;

            DmCaixa.Vendas_Agrupadas.Next;
            //
            IncLinha;
            //
       End;

       //
       Print.ImpF(Linha, 01, Format('%73s Total Vendas : %15s %15s %15s', ['',FormatFloat('#,##0.00', VISTA),FormatFloat('#,##0.00', PRAZO),  FormatFloat('#,##0.00', TOTAL)]), [Comp17]);

       SaldoAVista  := Vista ;

       //
       IncLinha;

       DmCaixa.Vendas_Agrupadas.EnableControls ;

       //
       Anda.Visible:= ivNever;
  END
  ELSE BEGIN
       //SEPARA VENDAS A VISTA DAS VENDAS A PRAZO

        Total := 0;
        Vista := 0;
        Prazo := 0;

        Anda.Max      := DmCaixa.Vendas.RecordCount;

        Anda.Position := 0;

        Anda.Visible  := ivAlways ;

        //
        DmCaixa.Vendas.First;

        Print.ImpF(Linha, 01,'Vendas a Vista', [Comp17, NEGRITO]);
        //
        IncLinha;

        While Not DmCaixa.Vendas.Eof Do
        Begin
             //SOMENTE VENDAS A VISTA
             IF (( ARREDONDA(DmCaixa.VendasAVISTA.Value,2) > 0 ) AND ( DmCaixa.VendasTIPO_VENDA.Value <> 'FFT' ))
             OR ( (ARREDONDA(DmCaixa.VendasAVISTA.Value,2) = 0 ) AND (ARREDONDA(DmCaixa.VendasAPRAZO.Value,2) = 0 ))
             THEN BEGIN
               If DmCaixa.VendasTIPO_VENDA.Value <> 'Con'
               then begin
                  //VERIFICA SE MOVIMENTA CAIXA
                  IF DmCaixa.VendasMOV_CAIXA.VALUE <> 'S'
                  THEN BEGIN
                       //
                       IF (( DmCaixa.VendasPESSOA_FJ.VALUE = 1 ) AND ( TRIM(DmCaixa.VendasNOME_CONSUMIDOR.VALUE) <> '' ))
                       THEN BEGIN
                          NOME := DmCaixa.VendasNOME_CONSUMIDOR.VALUE
                       END
                       ELSE BEGIN
                          NOME := DmCaixa.VendasNOME.Text ;
                       END;

                       Print.ImpF(Linha,01,Format('%6s %-50s %-8s %5s %5s %5s %20s %14s %15s',
                       [DmCaixa.VendasCODIGO.Text,
                       copy(NOME + '-' + DmCaixa.VendasPESSOA_FJ.Text,1,48) ,
                       DmCaixa.VendasVENDEDOR.Text,
                       DmCaixa.VendasNUM_NF.Text,
                       DmCaixa.VendasNUM_CUPOM.Text,
                       DmCaixa.VendasNATUREZA.Text,
                       '0,00',
                       '0,00',
                       '0,00']),[Comp17]);

                       //NAO MOVIMENTA CAIXA

                       //
                       Anda.Position := Anda.Position + 1;

                       //
                       DmCaixa.Vendas.Next;

                       IncLinha;
                  END
                  ELSE BEGIN
                       //
                       IF (( DmCaixa.VendasPESSOA_FJ.VALUE = 1 ) AND ( TRIM(DmCaixa.VendasNOME_CONSUMIDOR.VALUE) <> '' ))
                       THEN BEGIN
                          NOME := DmCaixa.VendasNOME_CONSUMIDOR.VALUE
                       END
                       ELSE BEGIN
                          NOME := DmCaixa.VendasNOME.Text ;
                       END;

                       Print.ImpF(Linha,01,Format('%6s %-50s %-8s %5s %5s %5s %20s %14s %15s',
                       [DmCaixa.VendasCODIGO.Text,
                       copy(NOME + '-' + DmCaixa.VendasPESSOA_FJ.Text,1,48) ,
                       DmCaixa.VendasVENDEDOR.Text,
                       DmCaixa.VendasNUM_NF.Text,
                       DmCaixa.VendasNUM_CUPOM.Text,
                       DmCaixa.VendasNATUREZA.Text,
                       DmCaixa.VendasTOTAL.Text,
                       DmCaixa.VendasDESC_ACRES.Text,
                       DmCaixa.VendasLIQUIDO.Text]),[Comp17]);

                       IF ckdesdobramento.Checked
                       then begin
                            IncLinha;

                            Print.ImpF(Linha,01,Format('%19s %14s %4S %14s %4S %14s %4S %14s %4S %14s %4s %14s',
                            ['DIN',
                            DmCaixa.VendasDINHEIRO.Text,
                            'CHQ',
                            DmCaixa.VendasCHEQUE.Text,
                            'CRT',
                            DmCaixa.VendasCARTAO.Text,
                            'TKT',
                            DmCaixa.VendasTICKET.Text,
                            'TROCO',
                            DmCaixa.VendasTROCO.Text,
                            'PRAZO',
                            DmCaixa.VendasAPRAZO.Text
                            ]),[Comp17]);

                            IncLinha;

                            Print.ImpF(Linha,01, Replicate('-', 136), [Comp17]);
                       end;

                       IF DmCaixa.VendasTIPO_VENDA.VALUE = 'FFT'
                       THEN BEGIN
                            Prazos   := Prazos   + DmCaixa.VendasDINHEIRO.value ;
                            Cheque   := Cheque   + DmCaixa.VendasCHEQUE.value   ;
                            Cartao   := Cartao   + DmCaixa.VendasCARTAO.value   ;
                            Ticket   := Ticket   + DmCaixa.VendasTICKET.value   ;
                            Troco    := Troco    + DmCaixa.VendasTROCO.value    ;
                            Prazos   := Prazos   + DmCaixa.VendasAPRAZO.value    ;

                            Total := Total + Arredonda(DmCaixa.VendasLIQUIDO.Value,2);
                            Prazo := Prazo + Arredonda(DmCaixa.VendasAVISTA.Value ,2);
                            Prazo := Prazo + Arredonda(DmCaixa.VendasAPRAZO.Value ,2);
                       END
                       ELSE BEGIN
                            Dinheiro := Dinheiro + DmCaixa.VendasDINHEIRO.value ;
                            Cheque   := Cheque   + DmCaixa.VendasCHEQUE.value   ;
                            Cartao   := Cartao   + DmCaixa.VendasCARTAO.value   ;
                            Ticket   := Ticket   + DmCaixa.VendasTICKET.value   ;
                            Troco    := Troco    + DmCaixa.VendasTROCO.value    ;
                            Prazos   := Prazos   + DmCaixa.VendasAPRAZO.value    ;

                            Total := Total + Arredonda(DmCaixa.VendasLIQUIDO.Value,2);
                            Vista := Vista + Arredonda(DmCaixa.VendasAVISTA.Value ,2);
                            Prazo := Prazo + Arredonda(DmCaixa.VendasAPRAZO.Value ,2);
                       END;

                       //
                       Anda.Position := Anda.Position + 1;

                       //
                       DmCaixa.Vendas.Next;

                       IncLinha;
                  END;
               end
               else
                   DmCaixa.Vendas.Next;
             END
             ELSE
                 DmCaixa.Vendas.Next;
        End;

        IF NOT CKPRAZO.Checked
        THEN BEGIN
             DmCaixa.Vendas.First ;

             Print.ImpF(Linha, 01,'Vendas a Prazo', [Comp17, NEGRITO]);
             //
             IncLinha;

             While Not DmCaixa.Vendas.Eof Do
             Begin
                  //SOMENTE VENDAS A VISTA
                  IF (( ARREDONDA(DmCaixa.VendasAVISTA.Value,2) <= 0 ) AND ( ARREDONDA(DmCaixa.VendasAPRAZO.Value,2) > 0 ))
                  OR ( DmCaixa.VendasTIPO_VENDA.Value = 'FFT' )
                  THEN BEGIN
                       If DmCaixa.VendasTIPO_VENDA.Value <> 'Con'
                       then begin
                            //VERIFICA SE MOVIMENTA CAIXA
                            IF DmCaixa.VendasMOV_CAIXA.VALUE <> 'S'
                            THEN BEGIN
                                 //
                                 IF (( DmCaixa.VendasPESSOA_FJ.VALUE = 1 ) AND ( TRIM(DmCaixa.VendasNOME_CONSUMIDOR.VALUE) <> '' ))
                                 THEN BEGIN
                                      NOME := DmCaixa.VendasNOME_CONSUMIDOR.VALUE
                                 END
                                 ELSE BEGIN
                                      NOME := DmCaixa.VendasNOME.Text ;
                                 END;

                                 Print.ImpF(Linha,01,Format('%6s %-50s %-8s %5s %5s %5s %20s %14s %15s',
                                 [DmCaixa.VendasCODIGO.Text,
                                 copy(NOME + '-' + DmCaixa.VendasPESSOA_FJ.Text,1,48) ,
                                 DmCaixa.VendasVENDEDOR.Text,
                                 DmCaixa.VendasNUM_NF.Text,
                                 DmCaixa.VendasNUM_CUPOM.Text,
                                 DmCaixa.VendasNATUREZA.Text,
                                 '0,00',
                                 '0,00',
                                 '0,00']),[Comp17]);

                                 //NAO MOVIMENTA CAIXA

                                 //
                                 Anda.Position := Anda.Position + 1;
                                 //
                                 DmCaixa.Vendas.Next;

                                 IncLinha;
                            END
                            ELSE BEGIN
                                 //
                                 IF (( DmCaixa.VendasPESSOA_FJ.VALUE = 1 ) AND ( TRIM(DmCaixa.VendasNOME_CONSUMIDOR.VALUE) <> '' ))
                                 THEN BEGIN
                                      NOME := DmCaixa.VendasNOME_CONSUMIDOR.VALUE
                                 END
                                 ELSE BEGIN
                                      NOME := DmCaixa.VendasNOME.Text ;
                                 END;

                                 Print.ImpF(Linha,01,Format('%6s %-50s %-8s %5s %5s %5s %20s %14s %15s',
                                 [DmCaixa.VendasCODIGO.Text,
                                 copy(NOME + '-' + DmCaixa.VendasPESSOA_FJ.Text,1,48) ,
                                 DmCaixa.VendasVENDEDOR.Text,
                                 DmCaixa.VendasNUM_NF.Text,
                                 DmCaixa.VendasNUM_CUPOM.Text,
                                 DmCaixa.VendasNATUREZA.Text,
                                 DmCaixa.VendasTOTAL.Text,
                                 DmCaixa.VendasDESC_ACRES.Text,
                                 DmCaixa.VendasLIQUIDO.Text]),[Comp17]);

                                 IF ckdesdobramento.Checked
                                 then begin
                                      IncLinha;

                                      Print.ImpF(Linha,01,Format('%19s %14s %4S %14s %4S %14s %4S %14s %4S %14s %4s %14s',
                                      ['DIN',
                                      DmCaixa.VendasDINHEIRO.Text,
                                      'CHQ',
                                      DmCaixa.VendasCHEQUE.Text,
                                      'CRT',
                                      DmCaixa.VendasCARTAO.Text,
                                      'TKT',
                                      DmCaixa.VendasTICKET.Text,
                                      'TROCO',
                                      DmCaixa.VendasTROCO.Text,
                                      'PRAZO',
                                      DmCaixa.VendasAPRAZO.Text
                                      ]),[Comp17]);

                                      IncLinha;

                                      Print.ImpF(Linha,01, Replicate('-', 136), [Comp17]);
                                 end;

                                 IF DmCaixa.VendasTIPO_VENDA.VALUE = 'FFT'
                                 THEN BEGIN
                                      Prazos   := Prazos   + DmCaixa.VendasDINHEIRO.value ;
                                      Cheque   := Cheque   + DmCaixa.VendasCHEQUE.value   ;
                                      Cartao   := Cartao   + DmCaixa.VendasCARTAO.value   ;
                                      Ticket   := Ticket   + DmCaixa.VendasTICKET.value   ;
                                      Troco    := Troco    + DmCaixa.VendasTROCO.value    ;
                                      Prazos   := Prazos   + DmCaixa.VendasAPRAZO.value    ;

                                      Total := Total + Arredonda(DmCaixa.VendasLIQUIDO.Value,2);
                                      Prazo := Prazo + Arredonda(DmCaixa.VendasAVISTA.Value ,2);
                                      Prazo := Prazo + Arredonda(DmCaixa.VendasAPRAZO.Value ,2);
                                 END
                                 ELSE BEGIN
                                      Dinheiro := Dinheiro + DmCaixa.VendasDINHEIRO.value ;
                                      Cheque   := Cheque   + DmCaixa.VendasCHEQUE.value   ;
                                      Cartao   := Cartao   + DmCaixa.VendasCARTAO.value   ;
                                      Ticket   := Ticket   + DmCaixa.VendasTICKET.value   ;
                                      Troco    := Troco    + DmCaixa.VendasTROCO.value    ;
                                      Prazos   := Prazos   + DmCaixa.VendasAPRAZO.value    ;

                                      Total := Total + Arredonda(DmCaixa.VendasLIQUIDO.Value,2);
                                      Vista := Vista + Arredonda(DmCaixa.VendasAVISTA.Value ,2);
                                      Prazo := Prazo + Arredonda(DmCaixa.VendasAPRAZO.Value ,2);
                                 END;

                                 //
                                 Anda.Position := Anda.Position + 1;
                                 //
                                 DmCaixa.Vendas.Next;

                                 IncLinha;
                            END;
                       end
                       else
                           DmCaixa.Vendas.Next;
                  END
                  ELSE
                      DmCaixa.Vendas.Next;
             End;
        END
        ELSE BEGIN
             DmCaixa.Vendas.First ;

             While Not DmCaixa.Vendas.Eof Do
             Begin
                  //SOMENTE VENDAS A VISTA
                  IF (( ARREDONDA(DmCaixa.VendasAVISTA.Value,2) <= 0 ) AND ( ARREDONDA(DmCaixa.VendasAPRAZO.Value,2) > 0 ))
                  OR ( DmCaixa.VendasTIPO_VENDA.Value = 'FFT' )
                  THEN BEGIN
                       If DmCaixa.VendasTIPO_VENDA.Value <> 'Con'
                       then begin
                            IF (( DmCaixa.VendasTIPO_VENDA.VALUE = 'FFT' ) AND ( DmCaixa.VendasMOV_CAIXA.VALUE = 'S' ))
                            THEN BEGIN
                                 Prazos   := Prazos   + DmCaixa.VendasDINHEIRO.value ;
                                 Cheque   := Cheque   + DmCaixa.VendasCHEQUE.value   ;
                                 Cartao   := Cartao   + DmCaixa.VendasCARTAO.value   ;
                                 Ticket   := Ticket   + DmCaixa.VendasTICKET.value   ;
                                 Troco    := Troco    + DmCaixa.VendasTROCO.value    ;
                                 Prazos   := Prazos   + DmCaixa.VendasAPRAZO.value    ;

                                 Total := Total + Arredonda(DmCaixa.VendasLIQUIDO.Value,2);
                                 Prazo := Prazo + Arredonda(DmCaixa.VendasAVISTA.Value ,2);
                                 Prazo := Prazo + Arredonda(DmCaixa.VendasAPRAZO.Value ,2);
                            END
                            ELSE BEGIN
                                 Dinheiro := Dinheiro + DmCaixa.VendasDINHEIRO.value ;
                                 Cheque   := Cheque   + DmCaixa.VendasCHEQUE.value   ;
                                 Cartao   := Cartao   + DmCaixa.VendasCARTAO.value   ;
                                 Ticket   := Ticket   + DmCaixa.VendasTICKET.value   ;
                                 Troco    := Troco    + DmCaixa.VendasTROCO.value    ;
                                 Prazos   := Prazos   + DmCaixa.VendasAPRAZO.value    ;

                                 Total := Total + Arredonda(DmCaixa.VendasLIQUIDO.Value,2);
                                 Vista := Vista + Arredonda(DmCaixa.VendasAVISTA.Value ,2);
                                 Prazo := Prazo + Arredonda(DmCaixa.VendasAPRAZO.Value ,2);
                            END;

                            DmCaixa.Vendas.Next;
                       end
                       else
                           DmCaixa.Vendas.Next;
                  END
                  ELSE
                      DmCaixa.Vendas.Next;
             End;
        END;


       //
       IncLinha;

       Print.ImpF(Linha, 01,'Condicional', [Comp17, NEGRITO]);
       //
       IncLinha;

       //
       DmCaixa.Vendas.First;

       While Not DmCaixa.Vendas.Eof Do
       Begin
            If DmCaixa.VendasTIPO_VENDA.Value = 'Con'
            then begin
                 //VERIFICA SE MOVIMENTA CAIXA
                 IF DmCaixa.VendasMOV_CAIXA.VALUE <> 'S'
                 THEN BEGIN
                      //
                      IF (( DmCaixa.VendasPESSOA_FJ.VALUE = 1 ) AND ( TRIM(DmCaixa.VendasNOME_CONSUMIDOR.VALUE) <> '' ))
                      THEN BEGIN
                           NOME := DmCaixa.VendasNOME_CONSUMIDOR.VALUE
                      END
                      ELSE BEGIN
                           NOME := DmCaixa.VendasNOME.Text ;
                      END;

                      Print.ImpF(Linha,01,Format('%6s %-50s %-8s %5s %5s %5s %20s %14s %15s',
                      [DmCaixa.VendasCODIGO.Text,
                      copy(NOME + '-' + DmCaixa.VendasPESSOA_FJ.Text,1,48) ,
                      DmCaixa.VendasVENDEDOR.Text,
                      DmCaixa.VendasNUM_NF.Text,
                      DmCaixa.VendasNUM_CUPOM.Text,
                      DmCaixa.VendasNATUREZA.Text,
                      '0,00',
                      '0,00',
                      '0,00']),[Comp17]); //NAO MOVIMENTA CAIXA

                      //
                      Anda.Position := Anda.Position + 1;

                      //
                      IncLinha;

                      DmCaixa.Vendas.Next;
                 END
                 ELSE BEGIN
                      //
                      Print.ImpF(Linha,01,Format('%6s %-50s %-8s %5s %5s %5s %20s %14s %15s',
                      [DmCaixa.VendasCODIGO.Text,
                      copy(DmCaixa.VendasNOME.Text + '-' + DmCaixa.VendasPESSOA_FJ.Text,1,48) ,
                      DmCaixa.VendasVENDEDOR.Text,
                      DmCaixa.VendasNUM_NF.Text,
                      DmCaixa.VendasNUM_CUPOM.Text,
                      DmCaixa.VendasNATUREZA.Text,
                      DmCaixa.VendasTOTAL.Text,
                      DmCaixa.VendasDESC_ACRES.Text,
                      DmCaixa.VendasLIQUIDO.Text]),[Comp17]);

                      Total := Total + Arredonda(DmCaixa.VendasLIQUIDO.Value,2);
                      Vista := Vista + Arredonda(DmCaixa.VendasAVISTA.Value,2);
                      Prazo := Prazo + Arredonda(DmCaixa.VendasAPRAZO.Value,2);
                      //
                      Anda.Position := Anda.Position + 1;

                      //
                      IncLinha;

                      DmCaixa.Vendas.Next;
                 END;
            end
            else
                DmCaixa.Vendas.Next;
       End;

       IncLinha;

       Print.ImpF(Linha, 01,'                                                                                                    Vista          Prazo     Vlr Liquido', [Comp17]);

       IncLinha;

       Print.ImpF(Linha, 01, Format('%72s Total Vendas : %16s %15s %15s', ['',FormatFloat('#,##0.00', VISTA),FormatFloat('#,##0.00', PRAZO),  FormatFloat('#,##0.00', TOTAL)]), [Comp17]);

       IncLinha;

       DinheiroTxt := Formatfloat ('###,###,##0.00', Dinheiro );
       ChequeTxt   := Formatfloat ('###,###,##0.00', Cheque   );
       CartaoTxt   := Formatfloat ('###,###,##0.00', Cartao   );
       TicketTxt   := Formatfloat ('###,###,##0.00', Ticket   );
       TrocoTxt    := Formatfloat ('###,###,##0.00', Troco    );
       PrazoTxt    := Formatfloat ('###,###,##0.00', Prazos   );

       Print.ImpF(Linha,01,Format('%19s %14s %4S %14s %4S %14s %4S %14s %4S %14s %4S %14s',
       [
       'DIN',
       DinheiroTxt,
       'CHQ',
       ChequeTxt,
       'CRT',
       CartaoTxt,
       'TKT',
       TicketTxt,
       'TROCO',
       TrocoTxt,
       'PRAZO',
       PrazoTxt
       ]),[Comp17]);

       SALDOAVISTA := VISTA ;
       //
       IncLinha;

       DmCaixa.Vendas.EnableControls ;

       //
       Anda.Visible:= ivNever;
  END;

  SaldoVendas := VISTA ;

  If Opcao = 'S'
  Then Begin
       print.Fechar;
  END;
end;

procedure TFrmFecharCaixas.ImprimeVendasAbertas (Opcao: String);
VAR
   total, Dias: Real;
   Str: String;
begin
  DmCaixa.Vendas_Abertas.DisableControls ;

  IncLinha ;
  IncLinha ;

  Print.ImpF(Linha, 01,'Data'         , [Comp17]);
  Print.ImpF(Linha, 08,'Os'           , [Comp17]);
  Print.ImpF(Linha, 13,'Vend'         , [Comp17]);

  Print.ImpF(Linha, 16,'L'            , [Comp17]);
  Print.ImpF(Linha, 18,'Nome'         , [Comp17]);
  Print.ImpF(Linha, 30,'Obs'          , [Comp17]);
  Print.ImpF(Linha, 60,'Codigo'       , [Comp17]);
  Print.ImpF(Linha, 65,'Atraso'       , [Comp17]);
  Print.ImpF(Linha, 73,'  Vlr Liquido', [Comp17]);

  IncLinha ;

  Print.ImpF(Linha, 01, 'Vendas Abertas', [Comp17, Negrito]);

  IncLinha ;

  Anda.Max      := DmCaixa.Vendas_Abertas.RecordCount;

  Anda.Position := 0;

  Anda.Visible  := ivAlways ;

  total  := 0;

  //
  DmCaixa.Vendas_Abertas.First;

  While Not DmCaixa.Vendas_Abertas.Eof Do
  Begin
       DIAS := DMAPP.Data_Servidor -  DmCaixa.Vendas_AbertasDATA.VALUE;

       //
       Print.ImpF(Linha,01, DmCaixa.Vendas_AbertasDATA.Text,[Comp17]);
       Print.ImpF(Linha,08, DmCaixa.Vendas_AbertasORCAMENTO.Text,[Comp17]);
       Print.ImpF(Linha,13, DmCaixa.Vendas_AbertasVENDEDOR.Text,[Comp17]);

       IF DmCaixa.Vendas_AbertasENVIADA_CX.value = 'S'
       THEN BEGIN
            Print.ImpF(Linha,16, 'C', [Comp17]);
       END
       ELSE BEGIN
            Print.ImpF(Linha,16, 'B', [Comp17]);
       END;

       Print.ImpF(Linha,18, copy(DmCaixa.Vendas_AbertasNOME.Text,1,19),[Comp17]);
       Print.ImpF(Linha,30, COPY(DmCaixa.Vendas_AbertasOBSERVACAO.Text,1,60),  [Comp17]);
       Print.ImpF(Linha,66, DmCaixa.Vendas_AbertasCODIGO.Text,  [Comp17]);
       Print.ImpF(Linha,70, FLOATTOSTR(DIAS),  [Comp17]);

       Str := formatfloat('##0.00',DmCaixa.Vendas_AbertasLIQUIDO.VALUE);

       while length(str) < 12
       do begin
          Str := ' ' + Str ;
       end;

       Print.ImpF(Linha,73, Str, [Comp17]);

       Total := Total + Arredonda(DmCaixa.Vendas_AbertasLIQUIDO.Value,2);

       //
       Anda.Position := Anda.Position + 1;

       DmCaixa.Vendas_Abertas.Next;
       //
       IncLinha;
       //
  End;

  //
  Print.ImpF(Linha, 01, Format('%104s Total Vendas : %15s', ['',FormatFloat('#,##0.00', TOTAL)]), [Comp17]);

  //
  IncLinha;

  DmCaixa.Vendas_Abertas.EnableControls ;

  //
  Anda.Visible:= ivNever;
end;

procedure TFrmFecharCaixas.ImprimeVendasCanceladas (Opcao: String);
VAR
   total, Dias: Real;
   Str: String;
begin
  DmCaixa.Vendas_Canceladas.DisableControls ;

  IncLinha ;
  IncLinha ;

  Print.ImpF(Linha, 01,'Data'         , [Comp17]);
  Print.ImpF(Linha, 08,'Os'           , [Comp17]);
  Print.ImpF(Linha, 13,'Vend'         , [Comp17]);

  Print.ImpF(Linha, 16,'L'            , [Comp17]);
  Print.ImpF(Linha, 18,'Nome'         , [Comp17]);
  Print.ImpF(Linha, 30,'Obs'          , [Comp17]);
  Print.ImpF(Linha, 60,'Codigo'       , [Comp17]);
  Print.ImpF(Linha, 73,'  Vlr Liquido', [Comp17]);

  IncLinha ;

  Print.ImpF(Linha, 01, 'Vendas CAnceladas', [Comp17, Negrito]);

  IncLinha ;

  Anda.Max      := DmCaixa.Vendas_Canceladas.RecordCount;

  Anda.Position := 0;

  Anda.Visible  := ivAlways ;

  total  := 0;

  //
  DmCaixa.Vendas_Canceladas.First;

  While Not DmCaixa.Vendas_Canceladas.Eof Do
  Begin
       //
       Print.ImpF(Linha,01, DmCaixa.Vendas_CanceladasDATA_CANCELAMENTO.Text,[Comp17]);
       Print.ImpF(Linha,08, DmCaixa.Vendas_CanceladasORCAMENTO.Text,[Comp17]);
       Print.ImpF(Linha,13, DmCaixa.Vendas_CanceladasVENDEDOR.Text,[Comp17]);

       Print.ImpF(Linha,18, copy(DmCaixa.Vendas_CanceladasNOME.Text,1,19),[Comp17]);
       Print.ImpF(Linha,30, COPY(DmCaixa.Vendas_CanceladasOBSERVACAO.Text,1,60),  [Comp17]);
       Print.ImpF(Linha,66, DmCaixa.Vendas_CanceladasCODIGO.Text,  [Comp17]);

       Str := formatfloat('##0.00',DmCaixa.Vendas_CanceladasLIQUIDO.VALUE);

       while length(str) < 12
       do begin
          Str := ' ' + Str ;
       end;

       Print.ImpF(Linha,73, Str, [Comp17]);

       Total := Total + Arredonda(DmCaixa.Vendas_CanceladasLIQUIDO.Value,2);

       //
       Anda.Position := Anda.Position + 1;

       DmCaixa.Vendas_Canceladas.Next;
       //
       IncLinha;
       //
  End;

  //
  Print.ImpF(Linha, 01, Format('%100s Total Canceladas : %15s', ['',FormatFloat('#,##0.00', TOTAL)]), [Comp17]);

  //
  IncLinha;

  DmCaixa.Vendas_Canceladas.EnableControls ;

  //
  Anda.Visible:= ivNever;
end;

procedure TFrmFecharCaixas.ActFecharCaixaExecute(Sender: TObject);
Var
   Planilha, ContraPartida: Integer;
   DataCaixa: TDateTime;
begin
     If messageDlg ( 'Fechar o Caixa?', mtConfirmation, [MbOk, MbCancel], 0 ) = MrOk
     then begin
          CaixaFechado := 'S' ;
          PreparaListagemCaixas;
          DmCaixa.Fechar_Caixa ( DmApp.UsuarioCaixa, DmApp.ContaCaixa, DmApp.DataCaixa, SaldoCaixa, DmCaixa.CaixasPLANILHA.Value, DmCaixa.CaixasVendas_Vista.Value, DmCaixa.CaixasVendas_Prazo.Value, DmCaixa.CaixasTURNO.Value );
          Close ;
     end;
end;

procedure TFrmFecharCaixas.ActListagemExecute(Sender: TObject);
begin
     IF DmApp.PEDE_SEN_GER_CX = 'S'
     THEN BEGIN
          Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);

          FrmMensagemClassificacao.MEMO.Lines.Add ('DIGITE A SENHA GERENCIAL');

          FrmMensagemClassificacao.EdSenha.Visible := true ;
          FrmMensagemClassificacao.Label6.Visible  := true ;
          //Se o Nível ou a Classificacao exigir senha e não foi digitada
          if FrmMensagemClassificacao.Showmodal = MrCancel
          then Begin
               MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
               EXIT ;
          end;

          FrmMensagemClassificacao.Free ;
          FrmMensagemClassificacao := Nil;
     END;
     //listagem reportbuilder
     ListagemCaixas;
end;

procedure TFrmFecharCaixas.ImprimeCaixas ;
Var
   Str: String;
   SaldoAnterior, Total: Real;
   SaldoInicial: Real;
begin
       Print.OnBeforeNewPage := Rodape    ;

       Print.OnNewPage       := CabecalhoCaixas ;

       Print.TitulodoRelatorio := 'Caixa' ;

       DmCaixa.Caixas.DisableControls ;

       print.Abrir;

       //
       Total := 0;

       //DINHEIRO
       Print.ImpF (Linha ,01, 'Dinheiro:' ,[Comp17]);
       Print.ImpVal(Linha,10, '###,###,##0.00', Arredonda(DmCaixa.CaixasDINHEIRO.Value,2) ,[Comp17]);
       if not DmCaixa.CaixasDINHEIRO.IsNull then
         Total := Total + Arredonda(DmCaixa.CaixasDINHEIRO.Value,2);

       //CHEQUE
       Print.ImpF (Linha ,23, 'Cheque:' ,[Comp17]);
       Print.ImpVal(Linha,33, '###,###,##0.00', Arredonda(DmCaixa.CaixasCHEQUE.Value,2) ,[Comp17]);
       if not DmCaixa.CaixasCHEQUE.IsNull then
         Total := Total + Arredonda(DmCaixa.CaixasCHEQUE.Value,2);

       //TICKET
       Print.ImpF (Linha ,43, 'Ticket  :' ,[Comp17]);
       Print.ImpVal(Linha,53, '###,###,##0.00', Arredonda(DmCaixa.CaixasTICKET.Value,2) ,[Comp17]);
       if not DmCaixa.CaixasTICKET.IsNull then
         Total := Total + Arredonda(DmCaixa.CaixasTICKET.Value,2);

       IF DmApp.Cx_Comp_Sld_Ant = 'S'
       THEN BEGIN
            SaldoAnterior := DmApp.Saldo_Anterior_Caixa( DMAPP.UsuarioCaixa, DMAPP.ContaCaixa, DMAPP.TurnoCaixa, DMAPP.DataCaixa );

            //SALDO ANTERIOR
            Print.ImpF (Linha ,63, 'Sld Ant :' ,[Comp17]);
            Print.ImpVal(Linha,72, '###,###,##0.00', Arredonda(SaldoAnterior,2) ,[Comp17]);
            Total := Total + Arredonda(SaldoAnterior,2);
       END
       ELSE BEGIN
            //SALDO ANTERIOR
            Print.ImpF (Linha ,63, 'Sld Final :' ,[Comp17]);
            Print.ImpVal(Linha,72, '###,###,##0.00', 0 ,[Comp17]);
            Total := Total + 0;
       END;

       //
       Print.ImpF(Linha+1, 01, Format('%103s Total Abertura : %15s', ['', FormatFloat('#,##0.00', TOTAL)]), [Comp17]);

       SaldoInicial := Arredonda(TOTAL,2) ;

       //SALDO DO CAIXA RECEBE OS VALORES DE ABERTURA
       SaldoCaixa := Arredonda(Total,2) ;

       IncLinha;

       //IMPRIME AS SAIDAS DO CAIXA
       SaldoSaidas := 0;
       ImprimeSaidas ( 'N' );
       SaldoCaixa  := Arredonda(SaldoCaixa,2) - Arredonda(SaldoSaidas,2) + Arredonda(SaldoEntradas,2);

       //IMPRIME ENTRADAS NO ESTOQUE
       Saldo_EntEst := 0;
       ImprimeEnt_Est ( 'N' );
       SaldoCaixa  := Arredonda(SaldoCaixa,2) - Arredonda(Saldo_EntEst,2) ;

       //VENDAS NO CAIXA
       SaldoVendas := 0;
       ImprimeVendas ( 'N' );
       SaldoCaixa  := Arredonda(SaldoCaixa,2) + Arredonda(SaldoVendas,2) ;

       //TROCAS NO CAIXA
       Saldo_Trocas := 0;
       ImprimeTrocas ( 'N' );
       SaldoCaixa  := Arredonda(SaldoCaixa,2) + Arredonda(Saldo_Trocas,2) ;

       //SE CONSIDERA CONTAS A PAGAR NO CAIXA
       If DmApp.Pagar_Caixa = 'S'
       THEN BEGIN
            SaldoPagas := 0;
            ImprimePagar ( 'N' );
            SaldoCaixa  := Arredonda(SaldoCaixa,2) - Arredonda(SaldoPagas,2) ;
       END;

       //SE CONSIDERA CONTAS A RECEBER NO CAIXA
       If DmApp.Receber_Caixa = 'S'
       THEN BEGIN
            SaldoRecebidas := 0;
            ImprimeReceber ( 'N' );
            SaldoCaixa  := Arredonda(SaldoCaixa,2) + Arredonda(SaldoRecebidas,2) ;
       END;

       IncLinha;
       //aqui
       //Imprime Saldo Inicial
       Print.ImpF(Linha, 01, 'SALDO INICIAL = ' + FORMATFLOAT('###,###,##0.00', Arredonda(SALDOINICIAL,2)) ,[Comp17]);

       //Imprime Entradas No Caixa
       Print.ImpF(Linha, 25, 'ENTRADAS = ' + FORMATFLOAT('###,###,##0.00', Arredonda((SALDOAVISTA + SaldoRecebidas + SALDOENTRADAS ),2)),[Comp17]);

       //Imprime RETIRADAS NO CAIXA
       IF SALDOSAIDAS < 0
       THEN
           SALDOSAIDAS := SALDOSAIDAS * -1 ;

       Print.ImpF(Linha, 55, 'SAIDAS = ' + FORMATFLOAT('###,###,##0.00', Arredonda(SALDOSAIDAS + SaldoPagas + Saldo_EntEst,2)),[Comp17]);

       Print.ImpF(Linha, 70, 'SALDO  = ', [Comp17]);
       Print.ImpF(Linha, 76, FormatFloat('#,##0.00', Arredonda(SaldoCaixa,2)), [Comp17]);

       IncLinha;
       IncLinha;

       If DmApp.IMPRIMIR_POSICOES = 'S'
       THEN BEGIN
            Print.ImpF(Linha, 01, 'CONTAS BANCARIAS' , [Comp12, NEGRITO]);

            IncLinha;

            //CONTAS BANCARIAS
            DmCaixa.SALDO_CONTAS_CAIXA.FIRST ;

            WHILE NOT DmCaixa.SALDO_CONTAS_CAIXA.EOF DO
            BEGIN
                 STR :=  FORMATFLOAT ('###,###,##0.000', DmCaixa.SALDO_CONTAS_CAIXASOMAC.VALUE - DmCaixa.SALDO_CONTAS_CAIXASOMAD.VALUE );

                 WHILE LENGTH(STR) < 12 DO
                 BEGIN
                      STR := ' ' + STR ;
                 END;

                 Print.ImpF(Linha, 01, DmCaixa.SALDO_CONTAS_CAIXANOME.VALUE , [Comp17]);

                 Print.ImpF(Linha, 30, STR , [Comp17]);

                 DmCaixa.SALDO_CONTAS_CAIXA.NEXT ;

                 IncLinha;
            END;

            IncLinha;
            IncLinha;

            //SOMA DO CONTAS A RECEBER
            Print.ImpF(Linha, 01, 'SALDO RECEBER', [Comp12, NEGRITO]);

            STR :=  FORMATFLOAT ('###,###,##0.000', DmCaixa.Saldo_Receber );

            WHILE LENGTH(STR) < 12 DO
            BEGIN
                 STR := ' ' + STR ;
            END;

            Print.ImpF(Linha, 30, Str, [Comp17]);

            IncLinha;

            //   SOMA DO CONTAS A PAGAR
            Print.ImpF(Linha, 01, 'SALDO PAGAR', [Comp12, NEGRITO]);

            STR :=  FORMATFLOAT ('###,###,##0.000', DmCaixa.Saldo_Pagar );

            WHILE LENGTH(STR) < 12 DO
            BEGIN
                 STR := ' ' + STR ;
            END;

            Print.ImpF(Linha, 30, Str, [Comp17]);
       END;

       {IF ( CKABERTAS.Checked )
       THEN BEGIN
            ImprimeVendasAbertas ( 'N' );
       END;}

       ImprimeVendasCanceladas ( 'N' );

       print.Fechar;
end;

procedure TFrmFecharCaixas.ActCancelarExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     Close ;
end;

procedure TFrmFecharCaixas.BtnImprimeVendasClick(Sender: TObject);
begin
     ImprimeVendas ( 'S' );
end;

procedure TFrmFecharCaixas.BtnImprimeRecebidasClick(Sender: TObject);
begin
     ImprimeReceber ( 'S' );
end;

procedure TFrmFecharCaixas.BtnImprimePagasClick(Sender: TObject);
begin
     ImprimePagar ( 'S' );
end;

procedure TFrmFecharCaixas.BtnImprimeEntSaiClick(Sender: TObject);
begin
     ImprimeSaidas ( 'S' );
end;

procedure TFrmFecharCaixas.EdValorEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmFecharCaixas.EdValorExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmFecharCaixas.ActSalvarExecute(Sender: TObject);
begin
  Try
    DataSource.DataSet.Post;
    DMApp.Transaction.CommitRetaining;
  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
end;

procedure TFrmFecharCaixas.pcChange(Sender: TObject);
begin
     IF PC.ActivePageIndex = 6
     THEN BEGIN
          FrmAcompanhamentoVendas := TFrmAcompanhamentoVendas.Create(Self);
          //
          FrmAcompanhamentoVendas.Showmodal ;
          FrmAcompanhamentoVendas.Free      ;
          FrmAcompanhamentoVendas := Nil    ;

          PC.ActivePageIndex := 5 ;
     END;
end;

procedure TFrmFecharCaixas.ActResumoExecute(Sender: TObject);
Var
   RCheque, RChequeVista, RChequePrazo, RCartao, RTicket, REntrada, RReceber,
   RTroco, RPrazos, RVista, RPrazo, RDinheiro, RChqVistaReceber, RChqPrazoReceber: Real;
   Linha: Integer;
   STR: String;
   Entradas, Resumo: Real;
   SaldoAnterior : Real;
begin
  if ckResumoGrafico.Checked then
  begin
    with DmCaixa do
    begin
      qryResumoCaixa.close;
      qryResumoCaixa.parambyname('CNPJ').value := dmApp.cnpj;
      qryResumoCaixa.parambyname('DATA').value := dmApp.DataCaixa;
      qryResumoCaixa.parambyname('USUARIO').value := dmApp.UsuarioCaixa;
      qryResumoCaixa.parambyname('TURNO').value := dmApp.TurnoCaixa;
      qryResumoCaixa.parambyname('CONTA').value := DmApp.ContaCaixa;
      qryResumoCaixa.open;
      lblEmpresaF11.caption := 'Resumo de Caixa - '+dmApp.nome;
      lblCaixaF11.caption := 'Caixa do Dia: '+formatdatetime('dd/mm/yyyy',dmApp.DataCaixa);

      IF (dmApp.Cx_Comp_Sld_Ant = 'S') then
        lblSaldoAnterior.text := formatfloat('###,##0.00',Arredonda(qryResumoCaixaSALDO_ANTERIOR.value,2))
      else
        lblSaldoAnterior.text := formatfloat('###,##0.00',0);

      lblTotalCaixa.text := formatfloat('###,##0.00',qryResumoCaixaTOTAL_CAIXA.asFloat);
    end;

    rptF11.print;
    exit;
  end;

  RChequeVista     := 0;
  RChequePrazo     := 0;
  RCartao          := 0;
  RTicket          := 0;
  RTroco           := 0;
  RVista           := 0;
  RPrazo           := 0;
  REntrada         := 0;
  RDinheiro        := 0;
  RReceber         := 0;
  Entradas         := 0;
  Resumo           := 0;
  RChqVistaReceber := 0;
  RChqPrazoReceber := 0;

  with DmCaixa do
  begin
       //CHEQUES
       Cheques.Close ;

       Cheques.ParamByName ( 'CNPJ'    ).ASSTRING  := DMAPP.Cnpj         ;
       Cheques.ParamByName ( 'DATA'    ).ASDATE    := DMAPP.DataCaixa    ;
       Cheques.ParamByName ( 'USUARIO' ).ASINTEGER := DMAPP.UsuarioCaixa ;
       Cheques.ParamByName ( 'TURNO'   ).ASINTEGER := DMAPP.TurnoCaixa   ;

       Cheques.Open  ;

       Cheques.First ;

       while not Cheques.eof do
       begin
            IF ChequesPRE_DATE.value = ChequesDATA_CAIXA.VALUE
            THEN BEGIN
                 RChequeVista := RChequeVista + ChequesVALOR.VALUE ;
            END
            ELSE BEGIN
                 RChequePrazo := RChequePrazo + ChequesVALOR.VALUE ;
            END;

            Cheques.Next ;
       end;

       //CHEQUES DO RECEBER
       ChequesReceber.Close ;

       ChequesReceber.ParamByName ( 'CNPJ'    ).ASSTRING  := DMAPP.Cnpj         ;
       ChequesReceber.ParamByName ( 'DATA'    ).ASDATE    := DMAPP.DataCaixa    ;
       ChequesReceber.ParamByName ( 'USUARIO' ).ASINTEGER := DMAPP.UsuarioCaixa ;

       ChequesReceber.Open  ;

       ChequesReceber.First ;

       while not ChequesReceber.eof do
       begin
            IF ChequesReceberPRE_DATE.value = ChequesReceberDATA_CAIXA.VALUE
            THEN BEGIN
                 RChqVistaReceber := RChqVistaReceber + ChequesReceberVALOR.VALUE ;
            END
            ELSE BEGIN
                 RChqPrazoReceber := RChqPrazoReceber + ChequesReceberVALOR.VALUE ;
            END;

            ChequesReceber.Next ;
       end;

       //VENDAS
       Vendas.first ;

       While Not Vendas.Eof Do
       Begin                                                            //o vlr. de troco sempre é negativo
            RDinheiro := RDinheiro + Arredonda(DmCaixa.VendasDINHEIRO.value ,2);// + DmCaixa.VendasTROCO.value;
            RCheque   := RCheque   + Arredonda(DmCaixa.VendasCHEQUE.value   ,2);
            RCartao   := RCartao   + Arredonda(DmCaixa.VendasCARTAO.value   ,2);
            RTicket   := RTicket   + Arredonda(DmCaixa.VendasTICKET.value   ,2);
            RTroco    := RTroco    + Arredonda(DmCaixa.VendasTROCO.value    ,2);

            RVista    := RVista    + Arredonda(DmCaixa.VendasAVISTA.Value   ,2);
            RPrazo    := dmCaixa.Prazo;
            //isso esta incluindo bonificacoes p/nao mexer no banco resolvi de outra forma (dispet- Fabiano)
            //RPrazo    := RPrazo    + Arredonda(DmCaixa.VendasAPRAZO.Value   ,2);
            REntrada  := REntrada  + Arredonda(DmCaixa.VendasENTRADA.Value  ,2);

            Vendas.Next;
       End;

       //TROCAS
       Trocas.First ;

       While Not Trocas.Eof Do
       Begin
            RDinheiro := RDinheiro + Arredonda(DmCaixa.TrocasDINHEIRO.value ,2);
            RCheque   := RCheque   + Arredonda(DmCaixa.TrocasCHEQUE.value   ,2);
            RCartao   := RCartao   + Arredonda(DmCaixa.TrocasCARTAO.value   ,2);
            RTicket   := RTicket   + Arredonda(DmCaixa.TrocasTICKET.value   ,2);
            //RTroco    := RTroco    + Arredonda(DmCaixa.TrocasTROCO.value    ,2);

            RVista    := RVista    + Arredonda(DmCaixa.TrocasAVISTA.Value   ,2);
            RPrazo    := RPrazo    + Arredonda(DmCaixa.TrocasAPRAZO.Value   ,2);
            REntrada  := REntrada  + Arredonda(DmCaixa.TrocasENTRADA.Value  ,2);

            Trocas.Next;
       End;

       //SE CONSIDERA CONTAS A RECEBER NO CAIXA
       If DmApp.Receber_Caixa = 'N'
       THEN BEGIN
            Recebidas_Caixa ( DmApp.UsuarioCaixa, DmApp.DataCaixa, DmApp.TurnoCaixa, DmApp.ContaCaixa );
       END;

       Recebidas.First;

       While Not Recebidas.Eof Do
       Begin
            RRECEBER := RRECEBER + Arredonda(RecebidasVLR_BAIXA.Value,2);

            Recebidas.Next;
       End;

       //SE CONSIDERA CONTAS A RECEBER NO CAIXA
       If DmApp.Receber_Caixa = 'N'
       THEN BEGIN
            Recebidas.Close ;
       END;
  END;

  Print.Abrir ;

  Print.ImpF(01, 01, DMAPP.NOME , [COMP17, NEGRITO]);

  Print.ImpF(02, 01, 'CAIXA DO DIA ' + DATETOSTR(DMAPP.DATACAIXA) +  '  ' + TIMETOSTR(TIME), [COMP17, NEGRITO]);

  Print.ImpF(03, 01, Replicate('-', 136), [Comp17]);

  //SALDO ANTERIOR
  Print.ImpF(04, 01, 'SALDO ANTERIOR...................................R$', [Comp17,NEGRITO]);

  STR :=  FORMATFLOAT ('###,###,##0.00', 0 );

  WHILE LENGTH(STR) < 12 DO
  BEGIN
       STR := ' ' + STR ;
  END;

  Print.ImpF(04, 73, Str, [Comp17]);

  //SALDO ANTERIOR
  Print.ImpF(06, 01, 'ENTRADAS', [Comp12,NEGRITO]);

  //VENDAS COM DINHEIRO
  Print.ImpF(07, 01, 'VENDAS COM DINHEIRO..............................R$', [Comp17,NEGRITO]);

  ENTRADAS := ENTRADAS + (RDINHEIRO - RENTRADA);

  STR :=  FORMATFLOAT ('###,###,##0.00', RDINHEIRO - RENTRADA );

  WHILE LENGTH(STR) < 12 DO
  BEGIN
       STR := ' ' + STR ;
  END;

  Print.ImpF(07, 73, Str, [Comp17]);

  //VENDAS COM CHEQUE A VISTA
  Print.ImpF(08, 01, 'VENDAS COM CHEQUE A VISTA........................R$', [Comp17,NEGRITO]);

  STR :=  FORMATFLOAT ('###,###,##0.00', RCHEQUEVISTA );

  ENTRADAS := ENTRADAS + ( RCHEQUEVISTA );

  WHILE LENGTH(STR) < 12 DO
  BEGIN
       STR := ' ' + STR ;
  END;

  Print.ImpF(08, 73, Str, [Comp17]);

  //ENTRADAS
  Print.ImpF(9, 01, 'ENTRADAS NO CREDIARIO............................R$', [Comp17,NEGRITO]);

  STR :=  FORMATFLOAT ('###,###,##0.00', RENTRADA );

  ENTRADAS := ENTRADAS + RENTRADA;

  WHILE LENGTH(STR) < 12 DO
  BEGIN
       STR := ' ' + STR ;
  END;

  Print.ImpF(9, 73, Str, [Comp17]);

  //RECEBIMENTOS
  Print.ImpF(10, 01, 'RECEBIMENTOS DE CLIENTES.........................R$', [Comp17,NEGRITO]);

  STR :=  FORMATFLOAT ('###,###,##0.00', RRECEBER - (RChqPrazoReceber + RChqVistaReceber));

  ENTRADAS := ENTRADAS + (RRECEBER - (RChqPrazoReceber)) ;

  WHILE LENGTH(STR) < 12 DO
  BEGIN
       STR := ' ' + STR ;
  END;

  Print.ImpF(10, 73, Str, [Comp17]);

  //RECEBIMENTOS COM CHEQUE A VISTA
  Print.ImpF(11, 01, 'RECEBIMENTOS COM CHEQUES A VISTA.................R$', [Comp17,NEGRITO]);

  STR :=  FORMATFLOAT ('###,###,##0.00', RChqVistaReceber);

  WHILE LENGTH(STR) < 12 DO
  BEGIN
       STR := ' ' + STR ;
  END;

  Print.ImpF(11, 73, Str, [Comp17]);

  //TROCOS DE VENDAS
  Print.ImpF(12, 01, 'TROCO DE VENDAS..................................R$', [Comp17,NEGRITO]);

  ENTRADAS := ENTRADAS + (RTroco) ;

  STR :=  FORMATFLOAT ('###,###,##0.00', RTroco);

  WHILE LENGTH(STR) < 12 DO
  BEGIN
       STR := ' ' + STR ;
  END;

  Print.ImpF(12, 73, Str, [Comp17]);

  //SUB TOTAL
  Print.ImpF(13, 01, 'SUB TOTAL........................................R$', [Comp17,NEGRITO]);

  STR :=  FORMATFLOAT ('###,###,##0.00', ENTRADAS );

  WHILE LENGTH(STR) < 12 DO
  BEGIN
       STR := ' ' + STR ;
  END;

  Print.ImpF(13, 73, Str, [Comp17]);

  Print.ImpF(14, 01, Replicate('-', 136), [Comp17]);

  //SALDO FINAL
  Print.ImpF(15, 01, 'S A L D O  F I N A L.............................R$', [Comp17,NEGRITO]);

  STR :=  FORMATFLOAT ('###,###,##0.00', ENTRADAS );

  WHILE LENGTH(STR) < 12 DO
  BEGIN
       STR := ' ' + STR ;
  END;

  Print.ImpF(15, 73, Str, [Comp17]);

  //RESUMO DO PERIODO
  Print.ImpF(17, 01, 'R E S U M O   D O   P E R I O D O', [Comp12,NEGRITO]);

  Print.ImpF(19, 01, 'VENDAS CHEQUES PRE DATADOS.......................R$', [Comp17,NEGRITO]);

  STR :=  FORMATFLOAT ('###,###,##0.00', RChequePrazo );

  RESUMO := RESUMO + RChequePrazo ;

  WHILE LENGTH(STR) < 12 DO
  BEGIN
       STR := ' ' + STR ;
  END;

  Print.ImpF(19, 73, Str, [Comp17]);

  Print.ImpF(20, 01, 'NOTAS PROMISSORIAS...............................R$', [Comp17,NEGRITO]);

  STR :=  FORMATFLOAT ('###,###,##0.00', RPRAZO );

  RESUMO := RESUMO + RPRAZO ;

  WHILE LENGTH(STR) < 12 DO
  BEGIN
       STR := ' ' + STR ;
  END;

  Print.ImpF(20, 73, Str, [Comp17]);

  Print.ImpF(21, 01, 'CARTAO...........................................R$', [Comp17,NEGRITO]);

  STR :=  FORMATFLOAT ('###,###,##0.00', RCARTAO );

  RESUMO := RESUMO + RCARTAO ;

  WHILE LENGTH(STR) < 12 DO
  BEGIN
       STR := ' ' + STR ;
  END;

  Print.ImpF(21, 73, Str, [Comp17]);

  Print.ImpF(22, 01, 'VENDAS A VISTA...................................R$', [Comp17,NEGRITO]);

  STR :=  FORMATFLOAT ('###,###,##0.00', ( RDINHEIRO - RENTRADA ) + RCHEQUEVISTA );

  RESUMO := RESUMO + ((RDINHEIRO - RENTRADA ) + RCHEQUEVISTA) ;

  WHILE LENGTH(STR) < 12 DO
  BEGIN
       STR := ' ' + STR ;
  END;

  Print.ImpF(22, 73, Str, [Comp17]);

  //ENTRADAS
  Print.ImpF(23, 01, 'ENTRADAS NO CREDIARIO............................R$', [Comp17,NEGRITO]);

  STR :=  FORMATFLOAT ('###,###,##0.00', RENTRADA );

  RESUMO := RESUMO + RENTRADA;

  WHILE LENGTH(STR) < 12 DO
  BEGIN
       STR := ' ' + STR ;
  END;

  Print.ImpF(23, 73, Str, [Comp17]);

  Print.ImpF(25, 01, 'T O T A L........................................R$', [Comp17,NEGRITO]);

  STR :=  FORMATFLOAT ('###,###,##0.00', RESUMO );

  WHILE LENGTH(STR) < 12 DO
  BEGIN
       STR := ' ' + STR ;
  END;

  Print.ImpF(25, 73, Str, [Comp17]);

  //TROCOS DE VENDAS
  Print.ImpF(26, 01, 'TROCO DE VENDAS..................................R$', [Comp17,NEGRITO]);

  STR :=  FORMATFLOAT ('###,###,##0.00', RTroco);

  WHILE LENGTH(STR) < 12 DO
  BEGIN
       STR := ' ' + STR ;
  END;

  Print.ImpF(26, 73, Str, [Comp17]);


  Print.ImpF(27, 01, 'T O T A L  L I Q U I D O.........................R$', [Comp17,NEGRITO]);

  STR :=  FORMATFLOAT ('###,###,##0.00', RESUMO + RTroco );

  WHILE LENGTH(STR) < 12 DO
  BEGIN
       STR := ' ' + STR ;
  END;

  Print.ImpF(27, 73, Str, [Comp17]);


  Print.ImpF(29, 01, 'RECEBIMENTO NOTAS PROMISSORIAS C CHEQUE PRE......R$', [Comp17,NEGRITO]);

  STR :=  FORMATFLOAT ('###,###,##0.00', RChqPrazoReceber );

  WHILE LENGTH(STR) < 12 DO
  BEGIN
       STR := ' ' + STR ;
  END;

  Print.ImpF(29, 73, Str, [Comp17]);

  Print.Fechar;
end;

procedure TFrmFecharCaixas.ActComissoesExecute(Sender: TObject);
Var
   Total, Vista, Prazo: Real;
begin
     Print.Abrir ;

     Print.ImpF(01, 01, DMAPP.NOME , [COMP17, NEGRITO]);

     Print.ImpF(02, 01, 'CAIXA DO DIA ' + DATETOSTR(DMAPP.DATACAIXA) +  '  ' + TIMETOSTR(TIME), [COMP17, NEGRITO]);

     Print.ImpF(03, 01, Replicate('-', 136), [Comp17]);

     LINHA := 4 ;

     WITH DMCAIXA DO
     BEGIN
          Total := 0;
          Vista := 0;
          Prazo := 0;

          Vendas_Agrupadas.DisableControls ;

          Vendas_Agrupadas.First;

          While Not Vendas_Agrupadas.Eof Do
          Begin
               //
               Print.ImpF(Linha,01,Format('%6s %-81s %15s %15s %15s',
                  [Vendas_AgrupadasVENDEDOR.Text,
                   Vendas_AgrupadasNOME.Text,
                   Vendas_AgrupadasAVISTA.Text,
                   Vendas_AgrupadasAPRAZO.Text,
                   Vendas_AgrupadasLIQUIDO.Text]),[Comp17]);

                   Total := Total + Arredonda(Vendas_AgrupadasLIQUIDO.Value,2);
                   Vista := Vista + Arredonda(Vendas_AgrupadasAVISTA.Value,2);
                   Prazo := Prazo + Arredonda(Vendas_AgrupadasAPRAZO.Value,2);

                   Vendas_Agrupadas.Next;
                   //
               IncLinha;
          End;

          Print.ImpF(Linha, 01, Format('%73s Total Vendas : %15s %15s %15s', ['',FormatFloat('#,##0.00', VISTA),FormatFloat('#,##0.00', PRAZO),  FormatFloat('#,##0.00', TOTAL)]), [Comp17]);

          Vendas_Agrupadas.EnableControls ;
     END ;

     Print.Fechar ;
end;

procedure TFrmFecharCaixas.ListagemCaixas;
begin
  //Esse procedimento além de setar labels, ele faz calculos para saldo
  //por isso separei o código dele para pder ser usado em outros procedimentos
  PreparaListagemCaixas;
  lblCaixa.text := 'Caixa ' + DateToStr(DmApp.DataCaixa) + '/' + DmApp.NomeCaixa;
  lblTituloRel.text := 'Listagem de Caixa - '+DMApp.Nome;
  rptF5.print;
end;

procedure TFrmFecharCaixas.ppDBCalc3Print(Sender: TObject);
begin
  if Trim(lblTipoVenda.text) = 'Vista' then
    ppDBCalc3.Font.Color := clGreen
  else
    ppDBCalc3.Font.Color := clBlack;
end;

procedure TFrmFecharCaixas.ppDBText10Print(Sender: TObject);
begin
  if lblTipoEntrada.text = 'C' then
    ppDBText10.Font.Color := clGreen
  else
    ppDBText10.Font.Color := clRed;
end;

procedure TFrmFecharCaixas.ppDBCalc50Print(Sender: TObject);
begin
  if Trim(ppDBText98.text) = 'Vista' then
    ppDBCalc50.Font.Color := clGreen
  else
    ppDBCalc50.Font.Color := clBlack;
end;

procedure TFrmFecharCaixas.PreparaListagemCaixas;
var
 TotalEntradas, TotalSaidas, Total, SaldoRecebidas, SaldoAnterior, SaldoInicial, SaldoAbertura : Real;
 OrderVendas : String;
begin
  Total := 0;
  with dmCaixa do
  begin
    //----------------------------------------------------Entradas e Saidas---------------------------------------------------------//
    TotalEntradas := 0;
    TotalSaidas := 0;
    qryEnt_SaiADMCx.close;
    qryEnt_SaiADMCx.parambyname('CNPJ').value := dmApp.cnpj;
    qryEnt_SaiADMCx.parambyname('DATA').value := dmApp.DataCaixa;
    qryEnt_SaiADMCx.parambyname('USUARIO').value := dmApp.UsuarioCaixa;
    qryEnt_SaiADMCx.parambyname('CONTA').value := DmApp.ContaCaixa;
    qryEnt_SaiADMCx.parambyname('TURNO').value := dmApp.TurnoCaixa;
    qryEnt_SaiADMCx.open;
    //calculando totais de entradas e saidas do caixa
    qryEnt_SaiADMCx.first;
    while not qryEnt_SaiADMCx.eof do
    begin
      if qryEnt_SaiADMCxTIPO.Value = 'C' then
        TotalEntradas := TotalEntradas + qryEnt_SaiADMCxVALOR.asFloat
      else
        TotalSaidas := TotalSaidas + (qryEnt_SaiADMCxVALOR.asFloat * -1);

      qryEnt_SaiADMCx.next;
    end;

    //----------------------------------------------------Entradas no Estoque---------------------------------------------------------//
    qryEnt_EstADMCx.close;
    qryEnt_EstADMCx.parambyname('CNPJ').value := dmApp.cnpj;
    qryEnt_EstADMCx.parambyname('DATA').value := dmApp.DataCaixa;
    qryEnt_EstADMCx.open;
    //calculando totais de entradas e saidas do caixa
    qryEnt_EstADMCx.first;
    while not qryEnt_EstADMCx.eof do
    begin
        TotalSaidas := TotalSaidas + (qryEnt_EstADMCxVALOR.asFloat);

      qryEnt_EstADMCx.next;
    end;

    //----------------------------------------------------Recebidas---------------------------------------------------------//
    qryRecebidasADMCx.close;
    //ordenando por nome para se poder agrupar ou por codigo
    if CkImpRecAgrup.Checked then
    begin
      qryRecebidasADMCx.sql.text := ' select bx.codigo, bx.dt_vencto, bx.nome, bx.docto, bx.valor, bx.juros, bx.vlr_baixa '+
                                    ' (select sum(ch.valor) from fin_cheques ch where ch.cod_acertoconta = bx.cod_acertoconta and ch.cnpj = bx.cnpj and ch.pre_date = ch.data_caixa ) cheque_vista, '+
                                    ' (select sum(ch.valor) from fin_cheques ch where ch.cod_acertoconta = bx.cod_acertoconta and ch.cnpj = bx.cnpj and ch.pre_date <> ch.data_caixa) cheque_prazo, '+
                                    ' (select sum(crt.valor) from fin_movimento_cartao crt where crt.cod_acertoconta = bx.cod_acertoconta and crt.cnpj = bx.cnpj ) cartao '+
                                    ' from fin_baixas_receber bx   where '+
                                    ' bx.dt_baixa =:data and bx.turno = :turno '+
                                    ' and bx.usuario = :usuario and bx.cnpj = :cnpj '+
                                    ' and (coalesce(bx.act_tipo_baixa,''1'') <> ''3'')'+
                                    ' and (coalesce(bx.act_tipo_baixa,''1'') <> ''4'')'+
                                    ' and bx.conta = :conta order by bx.nome';
      SubRecebidasAg.visible := true;
      SubRecebidas.visible := false;
    end
    else
    begin
      qryRecebidasADMCx.sql.text := ' select bx.codigo, bx.dt_vencto, bx.nome, bx.docto, bx.valor, bx.juros, bx.vlr_baixa, '+
                                    ' (select sum(ch.valor) from fin_cheques ch where ch.cod_acertoconta = bx.cod_acertoconta and ch.cnpj = bx.cnpj and ch.pre_date = ch.data_caixa ) cheque_vista, '+
                                    ' (select sum(ch.valor) from fin_cheques ch where ch.cod_acertoconta = bx.cod_acertoconta and ch.cnpj = bx.cnpj and ch.pre_date <> ch.data_caixa) cheque_prazo, '+
                                    ' (select sum(crt.valor) from fin_movimento_cartao crt where crt.cod_acertoconta = bx.cod_acertoconta and crt.cnpj = bx.cnpj ) cartao '+
                                    ' from fin_baixas_receber bx where '+
                                    ' bx.dt_baixa =:data and bx.turno = :turno '+
                                    ' and bx.usuario = :usuario and bx.cnpj = :cnpj '+
                                    ' and bx.conta = :conta '+
                                    ' and (coalesce(bx.act_tipo_baixa,''1'') <> ''3'')'+
                                    ' and (coalesce(bx.act_tipo_baixa,''1'') <> ''4'')'+
                                    ' order by bx.codigo';
      SubRecebidasAg.visible := false;
      SubRecebidas.visible := true;
    end;
    qryRecebidasADMCx.parambyname('CNPJ').value := dmApp.cnpj;
    qryRecebidasADMCx.parambyname('DATA').value := dmApp.DataCaixa;
    qryRecebidasADMCx.parambyname('USUARIO').value := dmApp.UsuarioCaixa;
    qryRecebidasADMCx.parambyname('TURNO').value := dmApp.TurnoCaixa;
    qryRecebidasADMCx.parambyname('CONTA').value := dmApp.ContaCaixa;
    qryRecebidasADMCx.open;

    //calculando entradas
    qryRecebidasADMCx.first;
    while not qryRecebidasADMCx.eof do
    begin
      TotalEntradas := TotalEntradas + qryRecebidasADMCxVLR_BAIXA.asFloat;
      qryRecebidasADMCx.next;
    end;

    //----------------------------------------------------Vendas---------------------------------------------------------//

    if (ckVdAgrupadaVend.checked) then
    begin
      if CKPRAZO.Checked then
        qryVendasADMCxAG.SQL.text := ' select sum(p.cartao) cartao, sum(p.cheque) cheque, '+
                                     ' sum(p.dinheiro) dinheiro, sum(p.ticket) ticket, '+
                                     ' sum(p.entrada) entrada, sum(p.desc_acres) desc_acres, '+
                                     ' sum(p.total) total, sum(p.total_bruto) total_bruto, '+
                                     ' sum(p.liquido) liquido, sum(p.vale_troco) vale_troco, '+
                                     ' sum(p.troco) troco, p.tipo , p.nome_vendedor '+
                                     ' from ADM_CX_VER_FAT_VENDAS_CAIXA(:CNPJ , :DATA, :USUARIO, :TURNO) p where p.tipo <> ''Prazo'' '+
                                     ' group by p.tipo, p.nome_vendedor '+
                                     ' order by tipo, p.nome_vendedor ';

      qryVendasADMCxAG.Close;
      qryVendasADMCxAG.parambyname('CNPJ').value := dmApp.cnpj;
      qryVendasADMCxAG.parambyname('DATA').value := dmApp.DataCaixa;
      qryVendasADMCxAG.parambyname('USUARIO').value := dmApp.UsuarioCaixa;
      qryVendasADMCxAG.parambyname('TURNO').value := dmApp.TurnoCaixa;
      qryVendasADMCxAG.open;

      //calculando entradas
      qryVendasADMCxAG.first;
      while not qryVendasADMCxAG.eof do
      begin
        if Trim(qryVendasADMCxAGTIPO.Value) = 'Vista' then   //esse bruto na verdade mostra o liquido hehe.
          TotalEntradas := TotalEntradas + qryVendasADMCxAGTOTAL_Bruto.asFloat
        else
          TotalEntradas := TotalEntradas + qryVendasADMCxAGEntrada.asFloat;

        qryVendasADMCxAG.next;
      end;
      SubVdAg.Visible := true;
      SubVdGeral.visible := false;
    end
    else //impressão normal
    begin
      if CKPRAZO.Checked then
        qryVendasADMCx.SQL.text := 'select * from ADM_CX_VER_FAT_VENDAS_CAIXA ( :CNPJ , :DATA, :USUARIO, :TURNO ) where tipo <> ''Prazo''  order by tipo, Codigo ';

      qryVendasADMCx.Close;
      qryVendasADMCx.parambyname('CNPJ').value := dmApp.cnpj;
      qryVendasADMCx.parambyname('DATA').value := dmApp.DataCaixa;
      qryVendasADMCx.parambyname('USUARIO').value := dmApp.UsuarioCaixa;
      qryVendasADMCx.parambyname('TURNO').value := dmApp.TurnoCaixa;
      qryVendasADMCx.open;

      //calculando entradas
      qryVendasADMCx.first;
      while not qryVendasADMCx.eof do
      begin
        if Trim(qryVendasADMCxTIPO.Value) = 'Vista' then   //esse bruto na verdade mostra o liquido hehe.
          TotalEntradas := TotalEntradas + qryVendasADMCxTOTAL_Bruto.asFloat
        else
          TotalEntradas := TotalEntradas + qryVendasADMCxEntrada.asFloat;

        qryVendasADMCx.next;
      end;
      //escolhendo os Subreports
      SubVdAg.Visible := false;
      SubVdGeral.visible := true;
    end;




    //desdramento de valores
    if ckdesdobramento.Checked then
    begin
      RegionVenda.visible := true;
      RegionTroca.visible := true;
    end
    else
    begin
      RegionVenda.visible := false;
      RegionTroca.visible := false;
    end;



    //----------------------------------------------------Vendas Canceladas---------------------------------------------------------//
    qryVndCancADMCx.close;
    qryVndCancADMCx.parambyname('CNPJ').value := dmApp.cnpj;
    qryVndCancADMCx.parambyname('DATA').value := dmApp.DataCaixa;
    qryVndCancADMCx.parambyname('USUARIO').value := dmApp.UsuarioCaixa;
    qryVndCancADMCx.parambyname('TURNO').value := dmApp.TurnoCaixa;
    qryVndCancADMCx.open;


    //----------------------------------------------------Trocas---------------------------------------------------------//
    qryTrocasADMCx.close;
    qryTrocasADMCx.parambyname('CNPJ').value := dmApp.cnpj;
    qryTrocasADMCx.parambyname('DATA').value := dmApp.DataCaixa;
    qryTrocasADMCx.parambyname('USUARIO').value := dmApp.UsuarioCaixa;
    qryTrocasADMCx.parambyname('TURNO').value := dmApp.TurnoCaixa;
    qryTrocasADMCx.open;

    //calculando entradas
    qryTrocasADMCx.first;
    while not qryTrocasADMCx.eof do
    begin
      TotalEntradas := TotalEntradas + qryTrocasADMCxVISTA.asFloat;
      qryTrocasADMCx.next;
    end;


    //Pagas
    qryPagasADMCx.close;
    qryPagasADMCx.parambyname('CNPJ').value := dmApp.cnpj;
    qryPagasADMCx.parambyname('DATA').value := dmApp.DataCaixa;
    qryPagasADMCx.parambyname('USUARIO').value := dmApp.UsuarioCaixa;
    qryPagasADMCx.parambyname('TURNO').value := dmApp.TurnoCaixa;
    qryPagasADMCx.parambyname('CONTA').value := DmApp.ContaCaixa;
    qryPagasADMCx.open;

    //Pagas computa no valor total de saídas
    qryPagasADMCx.first;
    while not qryPagasADMCx.eof do
    begin
      TotalSaidas := TotalSaidas + dmcaixa.qryPagasADMCxVLR_BAIXA.asfloat;
      qryPagasADMCx.next;
    end;

    //----------------------------------------------setando labels-----------------------------------//
    lblDinheiro.text := formatfloat('###,##0.00',Arredonda(DmCaixa.CaixasDINHEIRO.Value,2));
    SaldoAbertura := SaldoAbertura + Arredonda(DmCaixa.CaixasDINHEIRO.asfloat,2);

    lblChequeVista.text := formatfloat('###,##0.00',Arredonda(DmCaixa.CaixasCHEQUE.Value,2));
    SaldoAbertura := SaldoAbertura + Arredonda(DmCaixa.CaixasCHEQUE.asfloat,2);

    lblChequePrazo.text := formatfloat('###,##0.00',Arredonda(DmCaixa.CaixasCHEQUE_PRAZO.Value,2));
    SaldoAbertura := SaldoAbertura + Arredonda(DmCaixa.CaixasCHEQUE_PRAZO.asfloat,2);

    lblmoeda.text := formatfloat('###,##0.00',Arredonda(DmCaixa.CaixasMOEDAS.Value,2));
    SaldoAbertura := SaldoAbertura + Arredonda(DmCaixa.CaixasMOEDAS.asfloat,2);

    lblTicket.text := formatfloat('###,##0.00',Arredonda(DmCaixa.CaixasTICKET.Value,2));
    SaldoAbertura := SaldoAbertura + Arredonda(DmCaixa.CaixasTICKET.Value,2);
    {Se computa saldo anterior}
    IF DmApp.Cx_Comp_Sld_Ant = 'S' then
    begin
      SaldoAnterior := DmApp.Saldo_Anterior_Caixa(DMAPP.UsuarioCaixa, DMAPP.ContaCaixa, DMAPP.TurnoCaixa, DMAPP.DataCaixa );
      lblSldAnt.text := formatfloat('###,##0.00',Arredonda(SaldoAnterior,2));
    end
    else
      lblSldAnt.text := formatfloat('###,##0.00',0);

    Total := SaldoAbertura + SaldoAnterior;

    //------entradas-----//
    lblEntradas.text := formatfloat('###,##0.00',Arredonda(TotalEntradas,2));
    SaldoInicial := Arredonda(TOTAL,2) ;
    lblSldAbert.text := formatfloat('###,##0.00', Arredonda(SaldoAbertura,2));
    lblSldInicial.text := formatfloat('###,##0.00',Arredonda(SALDOINICIAL,2));

    lblSaidas.text := formatfloat('###,##0.00',Arredonda(TotalSaidas,2));
    //Saldo Caixa é uma váriável global que guarda o saldo do caixa
    SaldoCaixa := Arredonda(TotalEntradas - TotalSaidas + SALDOINICIAL,2);
    lblSaldo.text := formatfloat('##0.00',SaldoCaixa);
    lblTtlAbertura.text := formatfloat('###,##0.00',Arredonda(TOTAL,2));
  end;//fim with
end;

procedure TFrmFecharCaixas.lblSaldoPrint(Sender: TObject);
var
  teste : string;
begin
  {if strtofloat(lblSaldo.text) < 0 then
     lblSaldo.Font.Color := clRed;}
  lblSaldo.text := formatfloat('###,##0.00',strtofloat(stringreplace(lblSaldo.text,'.','',[rfReplaceAll])));
end;

end.
