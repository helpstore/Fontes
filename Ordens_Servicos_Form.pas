unit Ordens_Servicos_Form;

interface

uses
  
Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,  ExtCtrls, ActnList,
dxBarDBNav, dxBar, dxCntner, dxEditor,  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr,
dxExEdtr,  Buttons,     dxTL, dxDBCtrl, dxDBGrid,  dxDBTLCl, dxGrClms,  Grids,
DBGrids, IBQuery, RDprint, Mask,   ppDB, ppDBPipe, ppBands, ppClass, ppVar, ppCtrls, ppPrnabl,
ppCache, ppComm, ppRelatv, ppProd, ppReport, ppStrtch, ppMemo,  ppParameter, ppModule, raCodMod,
ppRichTx,   DBCtrls, ppSubRpt,  Variants, cxControls, cxNavigator, cxDBNavigator,
IdComponent,  IdTCPConnection, IdTCPClient, IdBaseComponent,   IdIOHandler, IdIOHandlerSocket,
IdSSLOpenSSL, cxStyles,  cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit,
cxImageComboBox, ImgList, cxGridLevel, cxGridCustomTableView,  cxGridTableView, cxClasses,
cxGridCustomView, cxGrid, cxDBData,  cxGridDBTableView, cxGridChartView, cxGridDBChartView,
DateUtils,  cxPropertiesStore, cxButtonEdit, Menus, cxContainer,
IdMessageClient, IdSMTP, IdMessage, cxDBLookupComboBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxLabel,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxButtons,
  cxPC, OleCtrls, SHDocVw, cxDBEdit,MSHTML,Activex, dxLayoutcxEditAdapters,
  dxLayoutControl, dxLayoutLookAndFeels, cxCalc, cxGridBandedTableView,
  cxGridDBBandedTableView, cxMemo, cxSpinEdit, cxTimeEdit, cxCalendar, Wininet;

type
  TFrmOrdens_Servicos = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    Bevel1: TBevel;
    ActOrcamento: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    DataSource: TDataSource;
    actLookup: TAction;
    ActNextPage: TAction;
    ActPreviousPage: TAction;
    btnAlterar: TdxBarButton;
    dsMotivo: TDataSource;
    DsItens: TDataSource;
    ActLocalizarCliente: TAction;
    ActLocalizarVendedores: TAction;
    PC: TcxPageControl;
    DsPlano: TDataSource;
    dsTA: TDataSource;
    ActEnviarCaixa: TAction;
    dsStatus: TDataSource;
    dsClientes: TDataSource;
    dsEquipamentos: TDataSource;
    TAB2: TcxTabSheet;
    dsTecnico: TDataSource;
    DsMovtos: TDataSource;
    DsDefeito: TDataSource;
    OpImprimirOsBranco: TdxBarButton;
    Panel2: TPanel;
    LblTitulo: TcxLabel;
    ActGeraVenda: TAction;
    GroupBox3: TGroupBox;
    Label10: TcxLabel;
    Data_Fechamento: TdxDBDateEdit;
    btnHistorico: TdxBarButton;
    ActHistorico: TAction;
    rptHistEquip: TppReport;
    ppTitleBand1: TppTitleBand;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLine3: TppLine;
    ppLine2: TppLine;
    ppLabel14: TppLabel;
    ppDBText3: TppDBText;
    ppLabel13: TppLabel;
    ppDBText13: TppDBText;
    ppDBText12: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel11: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppHistEquip: TppDBPipeline;
    DsHistEquip: TDataSource;
    ppDBText4: TppDBText;
    ppLabel4: TppLabel;
    ppLabel9: TppLabel;
    ppDBText10: TppDBText;
    ppLabel10: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppDBMemo2: TppDBMemo;
    ActOS: TAction;
    ppLabel12: TppLabel;
    ppDBText7: TppDBText;
    Gp2: TGroupBox;
    Cilindro_Data_Troca: TdxDBDateEdit;
    Label22: TcxLabel;
    Label24: TcxLabel;
    Label23: TcxLabel;
    Revelador_Data_Troca: TdxDBDateEdit;
    Label31: TcxLabel;
    Gp1: TGroupBox;
    Ct_Total: TdxDBEdit;
    Label39: TcxLabel;
    Preto: TdxDBEdit;
    Label41: TcxLabel;
    Cor: TdxDBEdit;
    Impressao: TdxDBEdit;
    Label40: TcxLabel;
    Label42: TcxLabel;
    ppDBText47: TppDBText;
    ppLabel80: TppLabel;
    ppDBText48: TppDBText;
    ppLabel81: TppLabel;
    DsIntervalos: TDataSource;
    TabMov: TcxTabSheet;
    GroupBox7: TGroupBox;
    GRID: TdxDBGrid;
    GRIDCNPJ: TdxDBGridMaskColumn;
    GRIDSEQUENCIA: TdxDBGridMaskColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDDT_FIM: TdxDBGridDateColumn;
    GRIDDT_INICIO: TdxDBGridDateColumn;
    GRIDHR_INICIO: TdxDBGridTimeColumn;
    GRIDHR_FIM: TdxDBGridTimeColumn;
    GRIDQTDE_HORA: TdxDBGridColumn;
    GRIDKM_RODADO: TdxDBGridColumn;
    Horario_Fechamento: TdxDBTimeEdit;
    Label3: TcxLabel;
    gpAvulso: TGroupBox;
    Label21: TcxLabel;
    Label20: TcxLabel;
    Debitos: TdxDBEdit;
    Creditos: TdxDBEdit;
    DBGrid1: TDBGrid;
    BtnMovimentos: TcxButton;
    btnGerarVenda: TdxBarButton;
    GRIDKM_INICIAL: TdxDBGridMaskColumn;
    GRIDKM_FINAL: TdxDBGridMaskColumn;
    SubProdutos: TppSubReport;
    ppChildReport1: TppChildReport;
    dsHistItens: TDataSource;
    ppHistEquipItens: TppDBPipeline;
    ppTitleBand2: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppLabel18: TppLabel;
    ppDBText17: TppDBText;
    GRIDTEMPO_VIAJEM: TdxDBGridMaskColumn;
    btnEmail: TdxBarButton;
    imgImportance: TImageList;
    GridEmail: TcxGrid;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    GRIDNOME_USUARIO: TdxDBGridMaskColumn;
    dsIntervaloEmail: TDataSource;
    GridEmailLevel1: TcxGridLevel;
    GridEmailDBTableView2: TcxGridDBTableView;
    GridEmailDBTableView2CNPJ: TcxGridDBColumn;
    GridEmailDBTableView2CODIGO: TcxGridDBColumn;
    GridEmailDBTableView2ASSUNTO: TcxGridDBColumn;
    GridEmailDBTableView2DE: TcxGridDBColumn;
    GridEmailDBTableView2ENVIADO: TcxGridDBColumn;
    GridEmailDBTableView2SEQUENCIA: TcxGridDBColumn;
    GridEmailDBTableView2COD_INTERVALO: TcxGridDBColumn;
    GridEmailDBTableView2DATA: TcxGridDBColumn;
    GridEmailDBTableView2PARA: TcxGridDBColumn;
    stgFrmOrdens_Servicos: TcxPropertiesStore;
    GRIDNOME_TECNICO: TdxDBGridMaskColumn;
    GRIDCUSTO_HORA: TdxDBGridCurrencyColumn;
    GRIDCUSTO_ATIVIDADE: TdxDBGridCurrencyColumn;
    GRIDOBSERVACAO: TdxDBGridMemoColumn;
    GridAnexo: TcxGrid;
    cxGridLevel1: TcxGridLevel;
    dsAnexo: TDataSource;
    GridAnexoDBTableView1: TcxGridDBTableView;
    GridAnexoDBTableView1CNPJ: TcxGridDBColumn;
    GridAnexoDBTableView1CODIGO: TcxGridDBColumn;
    GridAnexoDBTableView1FILENAME: TcxGridDBColumn;
    GridAnexoDBTableView1ANEXO: TcxGridDBColumn;
    GridAnexoDBTableView1SEQUENCIA: TcxGridDBColumn;
    SaveDialog: TSaveDialog;
    OpenDialog: TOpenDialog;
    PopAnexo: TPopupMenu;
    CarregarArquivo1: TMenuItem;
    SalvarAnexo1: TMenuItem;
    ActCarregarAnexo: TAction;
    ActSalvarAnexo: TAction;
    ActExcluirAnexo: TAction;
    ExcluirAnexo1: TMenuItem;
    GridAnexoDBTableView1TAMANHO: TcxGridDBColumn;
    dsContato: TDataSource;
    edObservacoes: TdxDBMemo;
    IdMessage: TIdMessage;
    IdSMTP: TIdSMTP;
    SSLSocket: TIdSSLIOHandlerSocket;
    dsVeiculos: TDataSource;
    ActLocVeiculo: TAction;
    ppLabel19: TppLabel;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText20: TppDBText;
    ppLabel22: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    DsConfiguracoes: TDataSource;
    dsGravidade: TDataSource;
    tbsMapa: TcxTabSheet;
    Panel4: TPanel;
    btnLimpar: TcxButton;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    btnLocEndereco: TcxButton;
    WebBrowser1: TWebBrowser;
    TimerMaps: TTimer;
    ActMarcarCoordenada: TAction;
    ActLimpaCoordenada: TAction;
    edtLogradouro: TcxTextEdit;
    cxLabel2: TcxLabel;
    edtNumero: TcxTextEdit;
    cxLabel5: TcxLabel;
    edtCidade: TcxTextEdit;
    cxLabel6: TcxLabel;
    edtUF: TcxTextEdit;
    cxLabel7: TcxLabel;
    Tab1: TcxTabSheet;
    lcControlGroup_Root: TdxLayoutGroup;
    lcControl: TdxLayoutControl;
    edCODIGO2: TcxDBTextEdit;
    lcCodigo: TdxLayoutItem;
    EdCliente2: TcxDBLookupComboBox;
    lcCliente: TdxLayoutItem;
    lcControlGroup1: TdxLayoutGroup;
    btnCliente3: TcxButton;
    lcBtnCliente: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    edStatus: TcxDBLookupComboBox;
    lcStatus: TdxLayoutItem;
    btnStatus2: TcxButton;
    lcBtnStatus: TdxLayoutItem;
    cmbEquipamento: TcxDBLookupComboBox;
    lcEquipamento: TdxLayoutItem;
    cmbVeiculo: TcxDBLookupComboBox;
    lcVeiculo: TdxLayoutItem;
    cmbTecnico: TcxDBLookupComboBox;
    lcTecnico: TdxLayoutItem;
    cmbDefeitoReclamado: TcxDBLookupComboBox;
    lcDefeito: TdxLayoutItem;
    cmbServicoExecutado: TcxDBLookupComboBox;
    lcServicoExecutado: TdxLayoutItem;
    lcControlGroup2: TdxLayoutGroup;
    lcControlGroup3: TdxLayoutGroup;
    edSolicitante: TcxDBTextEdit;
    lcSolicitante: TdxLayoutItem;
    lcControlGroup4: TdxLayoutGroup;
    cmbGravidade: TcxDBLookupComboBox;
    lcGravidade: TdxLayoutItem;
    cmbContato: TcxDBLookupComboBox;
    lcContato: TdxLayoutItem;
    cmbProblemaIdentificado: TcxDBLookupComboBox;
    lcProblemaIdentificado: TdxLayoutItem;
    lcControlGroup5: TdxLayoutGroup;
    edDataSolicitacao: TcxDBDateEdit;
    lcDataSolicitacao: TdxLayoutItem;
    edDataAtribuicao: TcxDBDateEdit;
    lcDataAtribuicao: TdxLayoutItem;
    edtHoraSolicitacao: TcxDBTimeEdit;
    lcHoraSolicitacao: TdxLayoutItem;
    edtHoraAtribuicao: TcxDBTimeEdit;
    lcHorarioProgramacao: TdxLayoutItem;
    edPrioridade: TcxDBTextEdit;
    lcPrioridade: TdxLayoutItem;
    edControle: TcxDBTextEdit;
    lcControle: TdxLayoutItem;
    edKM: TcxDBTextEdit;
    lcKM: TdxLayoutItem;
    edProtocolo: TcxDBTextEdit;
    lcProtocolo: TdxLayoutItem;
    edDescricao: TcxDBMemo;
    lcDescricao: TdxLayoutItem;
    lcControlGroup7: TdxLayoutGroup;
    edAssunto: TcxDBTextEdit;
    lcAssunto: TdxLayoutItem;
    btnTecnico2: TcxButton;
    lcBtnTecnicoConsultor: TdxLayoutItem;
    BTNDEFEITO2: TcxButton;
    lcBtnDefeitoReclamado: TdxLayoutItem;
    btnTA2: TcxButton;
    lcBtnServicoExecutado: TdxLayoutItem;
    btnMotivo2: TcxButton;
    lcBtnProblemaIdentificado: TdxLayoutItem;
    btnGravidade2: TcxButton;
    lcBtnGravidade: TdxLayoutItem;
    btnContato2: TcxButton;
    lcBtnContato: TdxLayoutItem;
    cxDBMemo1: TcxDBMemo;
    lcControlItem1: TdxLayoutItem;
    lcControlGroup6: TdxLayoutGroup;
    LVItens: TcxGridLevel;
    GridItens: TcxGrid;
    lcControlItem2: TdxLayoutItem;
    lcControlGroup8: TdxLayoutGroup;
    TVItens: TcxGridDBBandedTableView;
    TVItensCNPJ: TcxGridDBBandedColumn;
    TVItensCODIGO: TcxGridDBBandedColumn;
    TVItensNOME: TcxGridDBBandedColumn;
    TVItensQUANTIDADE: TcxGridDBBandedColumn;
    TVItensSERVICO: TcxGridDBBandedColumn;
    TVItensUNITARIO: TcxGridDBBandedColumn;
    TVItensSELECIONADO: TcxGridDBBandedColumn;
    TVItensCOD_PRODUTO: TcxGridDBBandedColumn;
    TVItensNOME_PRODUTO: TcxGridDBBandedColumn;
    TVItensTIPO_SERVICO: TcxGridDBBandedColumn;
    TVItensTotal: TcxGridDBBandedColumn;
    TVItensNOMETEC: TcxGridDBBandedColumn;
    TVItensCODIGO_TECNICO: TcxGridDBBandedColumn;
    edLiquido: TcxDBCalcEdit;
    lcLiquido: TdxLayoutItem;
    edDesctoAcrescimo: TcxDBCalcEdit;
    lcDesctoAcrescimo: TdxLayoutItem;
    edTotal: TcxDBCalcEdit;
    lcTotal: TdxLayoutItem;
    lcControlGroup10: TdxLayoutGroup;
    lcControlItem3: TdxLayoutItem;
    btnEquipamento2: TcxButton;
    lcBtnEquipamento: TdxLayoutItem;
    edtSerie: TcxDBTextEdit;
    lcSerie: TdxLayoutItem;
    pnlConexao: TPanel;
    QryEquipamento: TIBQuery;
    QryEquipamentoCOD_ITEM: TIntegerField;
    QryEquipamentoCODIGO_NOME: TIBStringField;
    QryEquipamentoCODIGO: TIBStringField;
    QryEquipamentoNOME: TIBStringField;
    QryEquipamentoSERIE: TIBStringField;
    QryEquipamentoDT_FIM: TDateTimeField;
    QryEquipamentoCODIGO_CONTRATO: TIntegerField;
    QryEquipamentoATIVO2: TIBStringField;
    QryEquipamentoATIVO: TIBStringField;
    QryEquipamentoINFORMACOES_ITENS: TMemoField;
    QryEquipamentoMODELO: TIBStringField;
    ppAppRepresentante: TppDBPipeline;
    ppAppRepresentanteppField1: TppField;
    ppAppRepresentanteppField2: TppField;
    ppAppRepresentanteppField3: TppField;
    ppAppRepresentanteppField4: TppField;
    ppAppRepresentanteppField5: TppField;
    ppAppRepresentanteppField6: TppField;
    ppAppRepresentanteppField7: TppField;
    ppAppRepresentanteppField8: TppField;
    ppAppRepresentanteppField9: TppField;
    ppAppRepresentanteppField10: TppField;
    ppAppRepresentanteppField11: TppField;
    ppAppRepresentanteppField12: TppField;
    dsApp: TDataSource;
    SelDefeitos: TIBQuery;
    SelDefeitosCNPJ: TIBStringField;
    SelDefeitosCODIGO: TIntegerField;
    SelDefeitosNOME: TIBStringField;
    SelDefeitosATIVO: TIBStringField;
    SelMotivo: TIBQuery;
    SelMotivoCNPJ: TIBStringField;
    SelMotivoCODIGO: TIntegerField;
    SelMotivoNOME: TIBStringField;
    SelMotivoATIVO: TIBStringField;
    Ordem: TIBDataSet;
    OrdemCNPJ: TIBStringField;
    OrdemCODIGO: TIntegerField;
    OrdemCHASSI: TIBStringField;
    OrdemCLIENTE: TIBStringField;
    OrdemDATA: TDateTimeField;
    OrdemDESC_ACRESC: TFloatField;
    OrdemENTRADA: TDateTimeField;
    OrdemDT_ATRIBUICAO: TDateTimeField;
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
    OrdemMOTOR: TIntegerField;
    OrdemNOME_MOTOR: TIBStringField;
    OrdemENVIADA_CAIXA: TIBStringField;
    OrdemPLACA: TIBStringField;
    OrdemDATA_FECHAMENTO: TDateTimeField;
    OrdemOBS_FECHAMENTO: TBlobField;
    OrdemFORMA_PAGTO: TIntegerField;
    OrdemNOME_FORMA: TIBStringField;
    OrdemTIPO_DOCTO: TIBStringField;
    OrdemLOCAL_COBRANCA: TIntegerField;
    OrdemTOTAL_PARCELAR: TFloatField;
    OrdemDiferenca: TFloatField;
    OrdemVLR_PARC_LC: TFloatField;
    OrdemAVISTA: TFloatField;
    OrdemVLR_ENTRADA: TFloatField;
    OrdemCREDITOS: TFloatField;
    OrdemDEBITOS: TFloatField;
    OrdemNF: TIntegerField;
    OrdemA_VISTA: TStringField;
    OrdemMED_VIRABREQUIM: TIBStringField;
    OrdemMED_BIELA: TIBStringField;
    OrdemMED_CILINDRO: TIBStringField;
    OrdemMED_CARCACA: TIBStringField;
    OrdemORCAMENTO: TIntegerField;
    OrdemNUMERO_VENDA: TIntegerField;
    OrdemDEFEITO_RECLAMADO: TIntegerField;
    OrdemCONDICAO_FINAL_EQUIPAMENTO: TIBStringField;
    OrdemHORA_CHEGADA: TTimeField;
    OrdemHORA_SAIDA: TTimeField;
    OrdemCONTADOR_TOTAL: TFloatField;
    OrdemCONTADOR_CILINDRO: TFloatField;
    OrdemCONTADOR_REVELADOR: TFloatField;
    OrdemNOME_DEFEITO: TIBStringField;
    OrdemPROPRIEDADE: TIntegerField;
    OrdemNOME_PROPRIEDADE: TIBStringField;
    OrdemTIPO_ATENDIMENTO: TIBStringField;
    OrdemCAUSA_CHAMADO: TIBStringField;
    OrdemCONTADOR_COR: TFloatField;
    OrdemCONTADOR_PRETO: TFloatField;
    OrdemCONTADOR_IMPRESSAO: TFloatField;
    OrdemVENDA: TIntegerField;
    OrdemALIQUOTA_ISS: TFloatField;
    OrdemPRODUTO: TIBStringField;
    OrdemID_MOTIVO_CHAMADO: TIntegerField;
    OrdemID_TIPO_ATENDIMENTO: TIntegerField;
    OrdemCOD_STATUS: TIntegerField;
    OrdemHR_INICIALIZACAO: TTimeField;
    OrdemDT_FINALIZACAO: TDateTimeField;
    OrdemHR_FINALIZACAO: TTimeField;
    OrdemDT_INICIALIZACAO: TDateTimeField;
    OrdemHR_ENTRADA: TTimeField;
    OrdemHR_ATRIBUICAO: TTimeField;
    OrdemCT_REVELADOR: TIntegerField;
    OrdemDT_REVELADOR: TDateTimeField;
    OrdemDT_CILINDRO: TDateTimeField;
    OrdemCT_CILINDRO: TIntegerField;
    OrdemKM_INICIAL: TFloatField;
    OrdemKM_FINAL: TFloatField;
    OrdemHR_FECHAMENTO: TTimeField;
    OrdemTEMPO_RESPOSTA: TFloatField;
    OrdemOS_RECHAMADO: TIntegerField;
    OrdemKM_RODADO: TFloatField;
    OrdemHORAS_TRABALHADAS: TFloatField;
    OrdemTIPO_TECNICO: TIBStringField;
    OrdemPREVENTIVO: TIBStringField;
    OrdemID_CONTRATO: TIntegerField;
    OrdemCOD_CONTATO: TIntegerField;
    OrdemPRIORIDADE: TIntegerField;
    OrdemCUSTO_OS: TFloatField;
    OrdemCONTROLE: TIntegerField;
    OrdemASSUNTO: TIBStringField;
    OrdemVEICULO: TIntegerField;
    OrdemKM: TIntegerField;
    OrdemCOD_GRAVIDADE: TIntegerField;
    OrdemPROTOCOLO: TIBStringField;
    OrdemGCNPJ: TIBStringField;
    OrdemGCODIGO: TIntegerField;
    OrdemTITULO: TIBStringField;
    OrdemST_FECHADO: TIBStringField;
    OrdemMAP_LAT: TIBStringField;
    OrdemMAP_LONG: TIBStringField;
    OrdemTAG: TIBStringField;
    OrdemSERIE: TIBStringField;
    OrdemItens: TIBDataSet;
    OrdemItensCNPJ: TIBStringField;
    OrdemItensCODIGO: TIntegerField;
    OrdemItensNOME: TIBStringField;
    OrdemItensQUANTIDADE: TFloatField;
    OrdemItensSERVICO: TIntegerField;
    OrdemItensUNITARIO: TFloatField;
    OrdemItensSELECIONADO: TIBStringField;
    OrdemItensCOD_PRODUTO: TIBStringField;
    OrdemItensNOME_PRODUTO: TIBStringField;
    OrdemItensTIPO_SERVICO: TIBStringField;
    OrdemItensTotal: TFloatField;
    OrdemItensNOMETEC: TIBStringField;
    OrdemItensCODIGO_TECNICO: TIntegerField;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdCODIGOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure CmbTipoPessoaEnter(Sender: TObject);
    procedure actLookupExecute(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure BtnPessoaClick(Sender: TObject);
    procedure BtnVendedorClick(Sender: TObject);
    procedure EdPessoaExit(Sender: TObject);
    procedure EdPessoaEnter(Sender: TObject);
    procedure cmbvendedorExit(Sender: TObject);
    procedure EdVendedorEnter(Sender: TObject);
    procedure CmbFormaPgtoExit(Sender: TObject);
    procedure Revelador_ContadorExit(Sender: TObject);
    procedure EdMargemEnter(Sender: TObject);
    procedure EdMargemExit(Sender: TObject);
    procedure ActNextPageExecute(Sender: TObject);
    procedure ActPreviousPageExecute(Sender: TObject);
    procedure TAB2Enter(Sender: TObject);
    procedure EDENTRADAExit(Sender: TObject);
    procedure CODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure BtnMotorClick(Sender: TObject);
    procedure BtnMovimentosClick(Sender: TObject);
    procedure ActEnviarCaixaExecute(Sender: TObject);
    procedure EDDOCUMENTOExit(Sender: TObject);
    procedure BTNDEFEITOClick(Sender: TObject);
    procedure btnCliente2Click(Sender: TObject);
    procedure btnStatusClick(Sender: TObject);
    procedure EdClienteExit(Sender: TObject);
    procedure btnEquipamentoClick(Sender: TObject);
    procedure btnTecnicoClick(Sender: TObject);
    procedure btnTAClick(Sender: TObject);
    procedure btnMotivoClick(Sender: TObject);
    procedure Panel6Exit(Sender: TObject);
    procedure ActGeraVendaExecute(Sender: TObject);
    function Preenchimento_datas : boolean;
    procedure ActHistoricoExecute(Sender: TObject);
    procedure ActOSExecute(Sender: TObject);
    procedure GRIDCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure cxNavigator1ButtonsButtonClick(Sender: TObject;
      AButtonIndex: Integer; var ADone: Boolean);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnEmailClick(Sender: TObject);
    procedure ActSalvarAnexoExecute(Sender: TObject);
    procedure ActCarregarAnexoExecute(Sender: TObject);
    procedure ActExcluirAnexoExecute(Sender: TObject);
    procedure btnContatoClick(Sender: TObject);
    procedure ActLocVeiculoExecute(Sender: TObject);
    procedure ppDBText20Print(Sender: TObject);
    procedure ppDBText11Print(Sender: TObject);
    procedure ppLabel1Print(Sender: TObject);
    procedure TAB2Exit(Sender: TObject);
    procedure TVItensEditKeyDown(
      Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
      AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
    procedure cxDBLookupComboBox1PropertiesInitPopup(Sender: TObject);
    procedure WebBrowser1CommandStateChange(Sender: TObject;
      Command: Integer; Enable: WordBool);
    procedure btnLocEnderecoClick(Sender: TObject);
    procedure PCChange(Sender: TObject);
    procedure ActMarcarCoordenadaExecute(Sender: TObject);
    procedure TimerMapsTimer(Sender: TObject);
    procedure ActLimpaCoordenadaExecute(Sender: TObject);
    procedure TVItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lcControlDblClick(Sender: TObject);
    procedure btnTA2Click(Sender: TObject);
    procedure SelDefeitosBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    conectado : boolean;
    SqlOriginalHist : string;
    HTMLWindow2: IHTMLWindow2;
    Procedure Calcular_Itens;
    procedure VerificaLocalizacao;
  public
    LocForma, LocCli, LocMec, LocVia, LocNat, LocMot, LocDef, LocProp :Boolean ;
    procedure EnviaEmailTecnico(Origem,NOrigem,Destino,NDestino,Assunto,Mensagem : string);
    procedure EnviaEmailAb_Fec(cliente,NCliente,Contato,NContato,Assunto,Mensagem,TIPO : string);
    procedure SetMapEdits;
  end;

var
  FrmOrdens_Servicos: TFrmOrdens_Servicos;
  Sair: Boolean ;
  HTMLStr: AnsiString;
implementation

uses
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Cadastros_DM,
     Cadastros_DM2,
     Vendedores_Form,
     Clientes_Form,
     FormasPagto_Form,
     Localizar_Cliente,
     Localizar_Vendedor,
     Tipo_Impressora_Form,
     Localizar_Forma,
     Servicos_DM,
     Localizar_Natureza,
     Mecanicos_Form,
     Localizar_Mecanico,
     Localizar_Viajante,
     Viajantes_Form,
     Motores_Form,
     Ordens_ServicosItens_Form,
     Localizar_Motor,
     Ordens_Servicos_Movtos_Form,

     EntraNumeroOrcamento_Ordem_Form,
     Defeitos_Form,
     Localizar_Propriedade, Vendas_Dm, StatusServico_Form, Produtos_Form,
  TipoAtendimento_Form, MotivoChamado_Form, Relatorios_DM2,
  SerieCustomizaveis_DM, SeriesCustomizaveis , Ordens_Servicos_Horas_Form,
  Ordens_Servicos_Email_Form, Localizar_Veiculos, Empresas_DM, Vendas_DM2,
  Gravidade_form;




  {$R *.DFM}

function IsGridFocused: Boolean;
var
  AContainer: TcxCustomEdit;
begin
  Result := Screen.ActiveControl is TcxGridSite;
  if not Result then
  begin
    AContainer := nil;
    if Screen.ActiveControl is TcxCustomEdit then
    begin
      AContainer := TcxCustomEdit(Screen.ActiveControl);
      Result := True;
    end
    else
      if (Screen.ActiveControl.Parent <> nil) and
        (Screen.ActiveControl.Parent is TcxCustomEdit) then
      begin
        AContainer := TcxCustomEdit(Screen.ActiveControl.Parent);
        Result := True;
      end;
    Result := Result and (AContainer.Parent is TcxGridSite);
  end;
end;

procedure TFrmOrdens_Servicos.Calcular_Itens;
Var bReg: Pointer;
    tProdutos: Extended;
begin
  //
  If dsItens.DataSet.RecordCount > 0 Then
     bReg := dsItens.DataSet.GetBookmark;
  //
  dsItens.DataSet.DisableControls;
  //
  tProdutos := 0;

  //
  dsItens.DataSet.First;
  //
  While Not dsItens.DataSet.Eof Do
  Begin
        tProdutos  := tProdutos  + dsItens.DataSet.FieldByName('TOTAL'   ).asFloat;
        //
        dsItens.DataSet.Next;
  End;

  //Valores dos Itens
  DataSource.DataSet.Edit ;

  DataSource.DataSet.FieldByName('TOTAL' ).asFloat   := tProdutos;

  DataSource.DataSet.Post ;

  //
  If dsItens.DataSet.RecordCount > 0 Then
     Begin
       dsItens.DataSet.GotoBookmark(bReg);
       dsItens.DataSet.FreeBookmark(bReg);
     End;
  //
  dsItens.DataSet.EnableControls;
end;

procedure TFrmOrdens_Servicos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If MessageDlg('Sair da Tela de Ordens?', mtConfirmation, [mbOk, mbCancel], 0)= MrOk  then
  begin
    dsItens.Dataset.Close;
    DsMovtos.Dataset.Close;
    DsIntervalos.Dataset.Close;
    DataSource.DataSet.Close;
    DsPlano.DataSet.Close;
    dmRelatorios2.qryRelHistoricoEquip2.Close;
    dmRelatorios2.qryRelHistoricoEquip2.sql.text := SqlOriginalHist;
  end
  else
    Action := CaNone ;
end;

procedure TFrmOrdens_Servicos.ActIncluirExecute(Sender: TObject);
begin
  try
     //
     If Navigator.DataSource.State in dsEditModes Then
        Exit;

     //Horas trabalhadas
     if (pc.ActivePageIndex = 1) then
     begin
       FrmOrdens_Servicos_Horas := TFrmOrdens_Servicos_Horas.Create(Self);
       DmServicos.OS_INTERVALO.Append;
       FrmOrdens_Servicos_Horas.ShowModal;
     end
     else if IsGridFocused then
     Begin
          //
          DmServicos.SelServicos_Itens.DataSource := Nil ;

          FrmOrdensServicosItens := TFrmOrdensServicosItens.Create(Self);
          FrmOrdensServicosItens.ShowModal;
          FrmOrdensServicosItens.Free     ;
          FrmOrdensServicosItens := Nil   ;
          //
          DmServicos.SelServicos_Itens.Close ;
          DmServicos.SelServicos_Itens.DataSource := DmServicos.DsOrdem ;
          DmServicos.SelServicos_Itens.Open  ;

          Calcular_Itens;
     End
     else
     begin
       Navigator.DataSource.DataSet.Append;
       EdCliente2.setfocus;
     end;


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
end;

procedure TFrmOrdens_Servicos.ActExcluirExecute(Sender: TObject);
begin
    if (pc.ActivePageIndex = 1) then
    begin
       if Application.MessageBox('Tem certeza que deseja excluir este movimento?','Aviso',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDno then
          exit;

       DmServicos.OS_INTERVALO.delete;
    end
    else If TVItens.Focused  Then
    begin
      if Application.MessageBox('Tem certeza que deseja excluir este item?','Aviso',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDno then
        exit;

      with dmServicos do
      begin
        Apaga_Item_Ordem (SelServicos_ItensCODIGO.value,SelServicos_ItensCOD_PRODUTO.value,SelServicos_ItensServico.asInteger);
        SelServicos_Itens.close;
        SelServicos_Itens.Open;
        Calcular_Itens;

        DMApp.Transaction.CommitRetaining;
      end;
    end;
end;

procedure TFrmOrdens_Servicos.ActPostExecute(Sender: TObject);
var
  HoraInicializacao, HoraFinalizacao, HoraSolicitacao, HoraProgramacao : TTime;
  MsgData, MsgHora : string;

  //CALCULAR HORAS TRABALHADAS PARA SER ARMAZENADA
  DATA_INI  , DATA_FIM,
  HORA_INI  , HORA_FIM,
  INTER_INI , INTER_FIM,
  TRAB_INI  , TRAB_FIM : STRING;
  ultimocodigo : integer;
  cttotal : integer;
  TotalHrs : real;
  existe : variant;
  sql : string;
begin
  if DmServicos.Ordem.state in [dsedit,dsinsert] then
  begin
    //Posicionando no equipamento definido na OS
    if DmServicos.OrdemPRODUTO.AsString <> '' then
      DmServicos.SelEquipCliente.Locate('CODIGO',DmServicos.OrdemPRODUTO.AsString, []) ;

    qryEquipamento.Close;
    qryEquipamento.ParamByName('cnpj').value := dmApp.cnpj;
    qryEquipamento.ParamByName('produto').value := DmServicos.OrdemPRODUTO.AsString;
    qryEquipamento.ParamByName('cod_cliente').value := DmServicos.OrdemPESSOA_FJ.Value;
    qryEquipamento.Open;

    {if (DmServicos.OrdemASSUNTO.asString = '') then
    begin
      Application.MessageBox('Defina o assunto e faça uma descrição da OS!','Aviso',mb_iconerror + mb_ok);
      EdAssunto.SetFocus;
      exit;
    end;}

    if (qryEquipamentoAtivo.value = 'Inativo') then
    begin
      Application.MessageBox('Impossível salvar alterações. Equipamento está inativo no contrato','Aviso',mb_iconerror + mb_ok);
      cmbEquipamento.SetFocus;
      exit;
    end;

    //Calculando as horas trabalhadas atrvés dos movimentos gerados
    with dmServicos do
    begin
      OS_INTERVALO.DisableControls;
      OS_INTERVALO.First;
      TotalHrs := 0;
      while not OS_INTERVALO.eof do
      begin
        TotalHrs := OS_INTERVALOQTDE_HORA.asFloat + TotalHrs;
        OS_INTERVALO.Next;
      end;

      OrdemHORAS_TRABALHADAS.value := TotalHrs;
      OS_INTERVALO.EnableControls;
    end;

    if (trim(edtHoraSolicitacao.text) <> '') then
       HoraSolicitacao := StrToTime(StringReplace(edtHoraSolicitacao.text,' ','0',[rfReplaceAll]));

    if (trim(edtHoraAtribuicao.text) <> '') then
      HoraProgramacao := StrToTime(StringReplace(edtHoraAtribuicao.text,' ','0',[rfReplaceAll]));


    with dmServicos do
    begin

       //OS Sistemaq, validando se contrato precisa ser renegociado
      if ((qryEquipamentoDT_FIM.value < dmapp.DataServidor) and (qryEquipamentoDT_FIM.value > 0)) then
      begin
        Application.MessageBox('Impossível salvar. Contrato necessita de renegociação.','Aviso',MB_ICONERROR + mb_ok);
        exit;
      end;

      //-->> Verifica Preenchimento de datas
      if not Preenchimento_datas then
        exit;

      //-->> Validando Hora/Data [SOLICITAÇÃO e PROGRAMAÇÃO]
      {MsgData := 'Dt. de Solicitação não pode ser superior a Dt. de Programação';
      MsgHora := 'Hr. de Solicitação não pode ser superior a Hr. de Programação';
      if dmServicos.ValidaDataHora(Dt_Solicitacao.text, Dt_Programacao.text, HoraSolicitacao, HoraProgramacao, MsgData, MsgHora) then
      begin
          Pc.activePageIndex := 0;
          Dt_Programacao.setfocus;
          exit;
      end;}

      //-->> Validando Hora/Data [FECHAMENTO e SOLICITAÇÃO]
     { MsgData := 'Dt. de Solicitação não pode ser menor que a Dt. de Fechamento da OS';
      MsgHora := 'Hr. de Solicitação não pode ser menor que a Hr. de Fechamento da OS';
      if ValidaDataHora(Dt_Solicitacao.text, Dt_Fechamento.text, HoraSolicitacao, HoraSolicitacao, MsgData, MsgHora) then
      begin
          Pc.activePageIndex := 1;
          Dt_Fechamento.setfocus;
          exit;
      end; }

     //=====================================================================================================
     //-------------------------------------- ARMAZENAR TEMPO DE RESPOSTA ----------------------------------
     //=====================================================================================================

     if (NOT DmServicos.OrdemDATA_FECHAMENTO.IsNull)AND(NOT DmServicos.OrdemHR_FECHAMENTO.IsNull) then
     begin
            DATA_INI := DateToStr(DmServicos.OrdemENTRADA.asDateTime);
            DATA_FIM := DateToStr(DmServicos.OrdemDATA_FECHAMENTO.asDateTime);

            if StrtoDate(DATA_INI) > StrtoDate(DATA_FIM) then //
            BEGIN
              DmServicos.OrdemTEMPO_RESPOSTA.VALUE := 0;
              MessageDlg('Data de Entrada está maior que Data do Fechamento. ', mtInformation, [mbOK], 0);
              exit;
            end;

            HORA_INI := TimeToStr(DmServicos.OrdemHR_ENTRADA.value);
            HORA_FIM := TimeToStr(DmServicos.OrdemHR_FECHAMENTO.value);
            INTER_INI:= '11:00:00';
            INTER_FIM:= '13:00:00';
            TRAB_INI := '08:00:00';
            TRAB_FIM := '18:00:00';
            DmServicos.OrdemTEMPO_RESPOSTA.VALUE    := DmServicos.HORAS_CORRIDA(DATA_INI  , DATA_FIM,
                                                                                HORA_INI  , HORA_FIM,
                                                                                INTER_INI , INTER_FIM,
                                                                                TRAB_INI  , TRAB_FIM);
      end;

      //----------------------------------------------------------------------------------------------
      with dmApp do
      begin
        //-----------------Encontrando o ultimo codigo de os, para validação do contador total---------------------------------//
        if (DmServicos.OrdemDATA_FECHAMENTO.value > 0) then
        begin
          Geral.close;
          Geral.sql.text := ' select max(o.codigo) codigo from ofc_ordem_servico o '+
                          ' where o.data_fechamento is not null and o.produto = :produto and o.contador_total > 0 '+
                          ' and o.PESSOA_FJ = :pessoa and o.cnpj = :cnpj and o.codigo < :codigo';
          Geral.parambyname('cnpj').value := dmapp.cnpj;
          Geral.parambyname('pessoa').value := DmServicos.OrdemPESSOA_FJ.value;
          Geral.parambyname('produto').value := DmServicos.OrdemPRODUTO.value;
          Geral.parambyname('codigo').value := DmServicos.OrdemCODIGO.value;
          Geral.Open;

          ultimocodigo := Geral.fieldbyname('codigo').asInteger;

          Geral.close;
          Geral.sql.text := ' select coalesce(o.contador_total,0) contador_total from ofc_ordem_servico o '+
                            ' where o.cnpj = :cnpj and o.codigo = :codigo ';
          Geral.parambyname('cnpj').value := dmapp.cnpj;
          Geral.parambyname('codigo').value := ultimocodigo;
          Geral.Open;

          cttotal := Geral.fieldbyname('contador_total').asInteger;
          if (cttotal > dmservicos.OrdemCONTADOR_TOTAL.value) then
          begin
            if application.messagebox(Pchar('O valor do CONTADOR TOTAL ('+dmservicos.OrdemCONTADOR_TOTAL.asString+') é inferior ao valor do CONTADOR TOTAL('+IntToStr(cttotal)+') da OS Nº - '+IntToStr(ultimocodigo)+#13+' Deseja realmente salvar a OS com este valor?'),'Aviso', mb_yesno + mb_iconquestion) = id_no then
               exit;
          end;
        end;
      end;

      Ordem.post;

      //Lançando a atividade de abertura dos trabalhos
      OS_INTERVALO.FetchAll;
      if (OS_INTERVALO.RecordCount = 0) then
      begin
         if application.messagebox('Deseja registrar a ativididade de criação da OS?','Aviso', mb_yesno + mb_iconquestion) = id_yes then
         begin
           OS_INTERVALO.Append;
           OS_INTERVALOCNPJ.value := dmApp.cnpj;
           OS_INTERVALOTIPO.value := 'A';
           OS_INTERVALODT_INICIO.value := DateOF(OrdemDATA.value);
           OS_INTERVALOHR_INICIO.value := Timeof(OrdemDATA.value);
           OS_INTERVALODT_FIM.value := DateOF(OrdemDATA.value);
           OS_INTERVALOHR_FIM.value := TimeOf(dmApp.Data_Servidor);
           OS_INTERVALOOBSERVACAO.Value :=  OrdemINFORMACOES.Value;
           OS_INTERVALO.Post;
         end;
      end
      else
      begin
        if (DmServicos.OrdemDATA_FECHAMENTO.value > 0) then
        begin
          sql := 'select count(*) from ofc_ordem_servico_intervalo o where o.cnpj =  '+QuotedStr(dmApp.cnpj)+' and o.codigo = '+ordemcodigo.asstring+' and o.tipo = ''F''';
          existe := RetornaValor(sql,dmapp.Transaction);

          if (existe <= 0) then
          begin
            if application.messagebox('Deseja registrar a ativididade de fechamento da OS?','Aviso', mb_yesno + mb_iconquestion) = id_yes then
            begin
              OS_INTERVALO.Append;
              OS_INTERVALOCNPJ.value := dmApp.cnpj;
              OS_INTERVALOTIPO.value := 'F';
              OS_INTERVALODT_INICIO.value := DateOF(OrdemDATA_FECHAMENTO.value);
              OS_INTERVALOHR_INICIO.value := Timeof(OrdemHR_FECHAMENTO.Value)-0.003;
              OS_INTERVALODT_FIM.value := DateOF(OrdemDATA_FECHAMENTO.value);
              OS_INTERVALOHR_FIM.value := Timeof(OrdemHR_FECHAMENTO.Value);
              OS_INTERVALOOBSERVACAO.Value :=  OrdemOBS_FECHAMENTO.Value;
              OS_INTERVALO.Post;
            end;
          end;

          if ((dmApp.OFC_GERA_FAT_AUTOMATICO = 'S') and (dmServicos.OrdemVENDA.asInteger <= 0)) then
            ActGeraVenda.Execute;
        end;
      end;

      Ordem.transaction.commitRetaining;
      Application.MessageBox(Pchar('O.S. salva com sucesso !'),'Aviso',MB_ICONINFORMATION + mb_ok);

    end;
  end;

end;



procedure TFrmOrdens_Servicos.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes
  Then Begin
       DataSource.DataSet.Cancel;
  End
  Else Begin
       BtnFechar.OnClick(BtnFechar);
  End;
end;

procedure TFrmOrdens_Servicos.FormShow(Sender: TObject);
var
  I, x: Integer;
  auxtxt,auxtxt2 :string;
begin

  auxtxt := DmApp.Config_Ordem_Servico;
  i := 1;

  for I := 0 to ComponentCount - 1 do
  begin

   x  := 1;
     if auxtxt <> '' then
      while (auxtxt[x] <> '') do
      begin
        while auxtxt[x] <> ',' do
        begin
            auxtxt2 := auxtxt2 + auxtxt[x];
            x := x + 1;
        end;
        x := x + 1;

        if auxtxt2 <> '' then
          if Components[i].Name = auxtxt2 then
          begin

            If ( Components[i] is TdxDBEdit )then
                    ( Components[i] as TdxDBEdit ).Enabled := False;

            If ( Components[i] is TdxLookupEdit )then
                    ( Components[i] as TdxLookupEdit ).Enabled := False;

            If ( Components[i] is TdxDBLookupEdit )then
                    ( Components[i] as TdxDBLookupEdit ).Enabled := False;

          end;

        auxtxt2 := '';

      end;
  end;


  TAB1.show;

  with dmCadastros2 do
  begin
    SelClientes.Close;
    SelClientes.Open;
    SelClientes.fetchAll;

    SelClientes2.Close;
    SelClientes2.Open;
    SelClientes2.fetchAll;
  end;

  with dmServicos do
  begin
    SelStatus.Close;
    SelStatus.Open;
    SelStatus.fetchAll;

    SelVeiculo.Close;
    SelVeiculo.Open;
    SelVeiculo.fetchAll;

    SelTecnico.Close;
    SelTecnico.Open;
    SelTecnico.fetchAll;



    SelTA.Close;
    SelTA.Open;
    SelTA.FetchAll;

    SelEquipCliente.Close;
    SelEquipCliente.parambyname('cod_cliente').value := OrdemPESSOA_FJ.value;
    SelEquipCliente.Open;
    SelEquipCliente.FetchAll;

  end;


  If Not(DsPlano.DataSet.Active) Then
    DsPlano.DataSet.Open;


  SelDefeitos.close;
  SelDefeitos.Open;

  SelMotivo.Close;
  SelMotivo.Open;

  If Not(DataSource.DataSet.Active) Then
    DataSource.DataSet.Open;

  If Not(dsItens.DataSet.Active) Then
    dsItens.DataSet.Open;



  with DmServicos do
  begin
    OS_INTERVALO.EnableControls;
    OS_INTERVALO.Close;
    OS_INTERVALO.ParamByName('codigo').value := DmServicos.SelOrdens_ServicosOFC_CODIGO.Value;
    OS_INTERVALO.ParamByName('cnpj').value := dmApp.CNPJ;
    OS_INTERVALO.Open;

    OS_INTERVALO_ANEXO.Close;
    OS_INTERVALO_ANEXO.ParamByName('cnpj').value := dmApp.CNPJ;
    OS_INTERVALO_ANEXO.ParamByName('codigo').value := OS_INTERVALOCODIGO.Value;
    OS_INTERVALO_ANEXO.ParamByName('sequencia').value := OS_INTERVALOSEQUENCIA.Value;
    OS_INTERVALO_ANEXO.Open;

    OS_INTERVALO_EMAIL.Close;
    OS_INTERVALO_EMAIL.ParamByName('cnpj').value := dmApp.CNPJ;
    OS_INTERVALO_EMAIL.ParamByName('codigo').value := OS_INTERVALOCODIGO.Value;
    OS_INTERVALO_EMAIL.ParamByName('sequencia').value := OS_INTERVALOSEQUENCIA.Value;
    OS_INTERVALO_EMAIL.Open;
  end;



  if (dmApp.EXIBE_OFC_COPIAS = 'N') then
  begin
    gp1.Visible := false;
    gp2.Visible := false;
  end
  else
  begin
    gp1.Visible := true;
    gp2.Visible := true;
  end;

  if (dmApp.EXIBE_OFC_MOVTO_AVULSO = 'N') then
    gpAvulso.Visible := false
  else
    gpAvulso.Visible := true;


  

  {if (dmApp.EXIBE_OFC_VISUALIZACAO = '0') then
  begin
    Equipamento.Visible := true;
    Equipamento.TabOrder := 3;
    Veiculos.Visible := false;
    KM.Visible := false;
    lblKM.Visible := false;
    lblProduto.caption := 'Equipamento';
    lblControle.caption := 'Controle';
    ActLocVeiculo.Enabled := false;
  end
  else
  begin
    KM.Visible := true;
    lblKM.Visible := true;
    Veiculos.Visible := true;
    Veiculos.TabOrder := 3;
    Equipamento.Visible := false;
    lblProduto.caption := 'Veículo';
    lblControle.caption := 'Prisma';
    ActLocVeiculo.Enabled := true;
  end;}

  {if (dmapp.OFC_EXIBE_DADOS_COMPLEMENTARES = 'N') then
  begin
    solicitante.enabled := false;
    solicitante.enabled := false;
    Servico_Executado.enabled := false;
    Problema_Identificado.enabled := false;
    Horario.enabled := false;
    Dt_Programacao.enabled := false;
    Horario_Atribuicao.enabled := false;
    PROTOCOLO.enabled := false;
    Contato.enabled := false;
    PRIORIDADE.enabled := false;
  end
  else
  begin
    solicitante.enabled := true;
    solicitante.enabled := true;
    Servico_Executado.enabled := true;
    Problema_Identificado.enabled := true;
    Horario.enabled := true;
    Dt_Programacao.enabled := true;
    Horario_Atribuicao.enabled := true;
    PROTOCOLO.enabled := true;
    Contato.enabled := true;
    PRIORIDADE.enabled := true;
  end;}

  {if (dmApp.Contato_por_Cliente = 'S') then
  begin
    Contato.Width  := EdCliente.Width;
    Contato.Left  := EdCliente.Left;
    Contato.Top  := EdCliente.Width;
    Contato.Left  := EdCliente.Left;
    Contato.TabOrder := 3;
  end
  else
  begin
    EdCliente.Width := Contato.Width;
    EdCliente.Left := Contato.Left;
    EdCliente.TabOrder := 3;
  end;  }
  //Datasource.AutoEdit := ActAlterar.Enabled;

  Application.CreateForm(TDMEmpresas, DMEmpresas);
end;

procedure TFrmOrdens_Servicos.FormCreate(Sender: TObject);
var
  html1, html2, html3 : AnsiString;
  aStream     : TMemoryStream;

begin
  conectado := InternetCheckConnection('http://www.google.com/',  1,  0);
    If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmOrdens_Servicos', True)) Then Exit;

    If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
    Else
     AtivaActions(Actions, DMUsuarios.Direito);

 tbsMapa.TabVisible := true;//(dmApp.Perfil_ComputadorEXIBE_MAPA.Value = 'S');
 if ((conectado)) then
 begin
     html1 := '<html> '+
          '<head> '+
          '<meta name="viewport" content="initial-scale=1.0, user-scalable=yes" /> '+
          '<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&language=en"></script> '+
          //'<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script> '+
          '<script type="text/javascript"> '+
          ''+
          ''+
          '  var geocoder; '+
          '  var map;  '+
          '  var markersArray = [];'+
          ''+
          ''+
          ' function updateMarkerStatus(str) {'+
          '   document.getElementById(''markerStatus'').innerHTML = str;'+
          ' }'+
          ''+
          ''+
          ' function updateMarkerPosition(latLng) {          '+
          '  document.getElementById(''info'').innerHTML = [ '+
          '    latLng.lat(), '+
          '    latLng.lng() ' +
          '  ].join('', ''); '+
          ' } '+
          ''+
          ''+
          ' function updateMarkerAddress(str) {'+
          '  document.getElementById(''address'').innerHTML = str;'+
          ' }'+
          ''+
          ''+
          '  function initialize() { '+
          '    geocoder = new google.maps.Geocoder();'+
          '    latlng = new google.maps.LatLng(-22.221853,-54.806446); '+
          '    var myOptions = { '+
          '      zoom: 13, '+
          '      center: latlng, '+
          '      mapTypeId: google.maps.MapTypeId.HYBRID '+
          '    }; '+
          '    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions); '+
          ''+
          ''+
          '    map.set("streetViewControl", false);';

     if (ActMarcarCoordenada.enabled) then
       html2:=  '    google.maps.event.addListener(map, "rightclick", '+
          '         function(event) '+
          '                        {'+
          '                         ClearMarkers();'+
          '                         document.getElementById("LatValue").value = event.latLng.lat(); '+
          '                         document.getElementById("LngValue").value = event.latLng.lng(); '+
          '                         PutMarker(document.getElementById("LatValue").value, document.getElementById("LngValue").value,"") '+
          '                        } '+
          '   ); '
     else
       html2 := '';

     html3 := ''+
          '  } '+
          ''+
          ''+
          '  function GotoLatLng(Lat, Lang) { '+
          '   latlng = new google.maps.LatLng(Lat,Lang);'+
          '   PutMarker(Lat,Lang,""); '+
          '   map.setCenter(latlng);'+
          '  }'+
          ''+
          ''+
          '  function codeAddress(address) { '+
          '                         ClearMarkers();'+
          '    if (geocoder) {'+
          '      geocoder.geocode( { address: address}, function(results, status) { '+
          '        if (status == google.maps.GeocoderStatus.OK) {'+
          '          map.setCenter(results[0].geometry.location);'+
          '          document.getElementById("LatValue").value = results[0].geometry.location.lat(); '+
          '          document.getElementById("LngValue").value = results[0].geometry.location.lng(); '+
          '          PutMarker(results[0].geometry.location.lat(), results[0].geometry.location.lng(), results[0].geometry.location.lat()+","+results[0].geometry.location.lng());'+
          '        } else {'+
          '          alert("Geocode was not successful for the following reason: " + status);'+
          '        }'+
          '      });'+
          '    }'+
          '  }'+
          ''+
          ''+
          'function ClearMarkers() {  '+
          '  if (markersArray) {        '+
          '    for (i in markersArray) {  '+
          '      markersArray[i].setMap(null); '+
          '    } '+
          '  } '+
          '}  '+
          ''+
          '  function PutMarker(Lat, Lang, Msg) { '+
          '   latlng = new google.maps.LatLng(Lat,Lang);'+
          '   marker = new google.maps.Marker({'+
          '      position: latlng, '+
          '      map: map,'+
          '      title: Msg+" ("+Lat+","+Lang+")"'+
          '  });'+
          '  markersArray.push(marker); '+
          '  index= (markersArray.length % 10);'+
          '  if (index==0) { index=10 } '+

          { esse aqui ta comentado por mim , pra pegar o icone default do gmaps
          '  icon = "http://www.google.com/mapfiles/kml/paddle/"+index+"-lv.png"; '+
          '  marker.setIcon(icon); '+ }


          '  }'+
          ''+
          ''+
          ''+'</script> '+
          '</head> '+
          ''+
          '<body onload="initialize()"> '+
          '  <div id="map_canvas" style="width:100%; height:100%"></div> '+
          '  <div id="latlong"> '+
          '  <input type="hidden" id="LatValue" >'+
          '  <input type="hidden" id="LngValue" >'+
          '  </div>  '+
          ''+
          '</body> '+
          '</html> ';


       {  with dmApp.IdSMTP do
         begin
              AuthenticationType := atLogin;
              Host := dmapp.smtp;
              IOHandler := dmApp.SSLSocket;
              Password := dmapp.senha;
              Port := 465;
              Username := dmapp.login; //não esqueça o @gmail.com!!
         end;
         dmApp.SSLSocket.SSLOptions.Method := sslvSSLv2;
         dmApp.SSLSocket.SSLOptions.Mode := sslmClient; }

      SqlOriginalHist := dmRelatorios2.qryRelHistoricoEquip2.sql.text;
      HTMLStr := html1 + html2 + html3;

    //  aStream := TMemoryStream.Create;
    //  aStream.SetSize(0);
    //  aStream.Free;
     WebBrowser1.Navigate('about:blank');
      if Assigned(WebBrowser1.Document) then
      begin
        aStream := TMemoryStream.Create;
       // try
           aStream.WriteBuffer(Pointer(HTMLStr)^, Length(HTMLStr));
           //aStream.Write(HTMLStr[1], Length(HTMLStr));
           aStream.Seek(0, soFromBeginning);
           (WebBrowser1.Document as IPersistStreamInit).Load(TStreamAdapter.Create(aStream));
       // finally
           aStream.SetSize(0);
           aStream.Free;
       // end;
        HTMLWindow2 := (WebBrowser1.Document as IHTMLDocument2).parentWindow;
      end;
  end;
end;

procedure TFrmOrdens_Servicos.EdCODIGOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
  begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmOrdens_Servicos.DataSourceStateChange(Sender: TObject);
begin
     dxBarBDBNavFirst.Enabled := true ;
     dxBarBDBNavPrev.Enabled  := true ;
     dxBarBDBNavNext.Enabled  := true ;
     dxBarBDBNavLast.Enabled  := true ;
  //
  If Navigator.DataSource.State in dsEditModes Then
  Begin
    ActIncluir.Enabled   := False;
    ActAlterar.Enabled   := False;
    ActExcluir.Enabled   := False;

    BtnMovimentos.Enabled:= False;
    BtnSalvar.Enabled    := True;
    BtnCancelar.Enabled  := True;
  End
  Else
  Begin
    ActIncluir.Enabled   := ActIncluir.Tag = 1;
    ActAlterar.Enabled   := ActAlterar.Tag = 1;
    ActExcluir.Enabled   := ActExcluir.Tag = 1;

    BtnSalvar.Enabled    := False;
    BtnCancelar.Enabled  := False;
    ActFechar.Enabled    := True;
    BtnMovimentos.Enabled:= True;
  End;


end;

procedure TFrmOrdens_Servicos.ActFecharExecute(Sender: TObject);
begin
     Close;
end;

procedure TFrmOrdens_Servicos.CmbTipoPessoaEnter(Sender: TObject);
begin
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmOrdens_Servicos.actLookupExecute(Sender: TObject);
begin
  If (EdCliente2.Focused) Then
     BtnCliente3.OnClick(BtnCliente3);

  If (edStatus.Focused)Then
     btnStatus2.OnClick(btnStatus2);

  If (cmbEquipamento.Focused)Then
     btnEquipamento2.OnClick(btnEquipamento2);

  If (cmbTecnico.Focused)Then
     btnTecnico2.OnClick(btnTecnico2);

  If (cmbDefeitoReclamado.Focused)Then
     BtnDefeito2.OnClick(BtnDefeito2);

  If (cmbServicoExecutado.Focused)Then
     btnTA2.OnClick(btnTA2);

  If (cmbProblemaIdentificado.Focused)Then
     btnMotivo2.OnClick(btnMotivo2);

   If (cmbContato.Focused)Then
     btnContato2.OnClick(btnContato2);   
end;

procedure TFrmOrdens_Servicos.btnFiltrarClick(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TFrmOrdens_Servicos.ActAlterarExecute(Sender: TObject);
begin
  If Navigator.DataSource.State in dsEditModes Then
    Exit;
  Try
     if (pc.ActivePageIndex = 1) then
     begin
       FrmOrdens_Servicos_Horas := TFrmOrdens_Servicos_Horas.Create(Self);
       FrmOrdens_Servicos_Horas.ShowModal;
     end
     else If FrmOrdens_Servicos.ActiveControl <> GridItens  Then
     Begin
       DataSource.DataSet.Edit;

       if Pc.activePageIndex = 0 then
        EdCliente2.SetFocus;
     end
     else
     begin
       If (DataSource.dataset.FieldByName('PESSOA_FJ').AsInteger > 0) then
       begin
         FrmOrdensServicosItens := TFrmOrdensServicosItens.Create(Self);
         FrmOrdensServicosItens.ShowModal;

         FrmOrdensServicosItens.Free     ;
         FrmOrdensServicosItens := Nil   ;


         DmServicos.SelServicos_Itens.Close ;
         DmServicos.SelServicos_Itens.DataSource := DmServicos.DsOrdem ;
         DmServicos.SelServicos_Itens.Open  ;

         Calcular_Itens;
       end;
     end;
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
end;

procedure TFrmOrdens_Servicos.BtnPessoaClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmClientes', False);


  FrmClientes := TFrmClientes.Create(Application);

  FrmClientes.Showmodal ;
  //
  Datasource.DataSet.FieldByName('PESSOA_FJ').asInteger := FrmMain.Codigo_Int;

  If DMCadastros <> Nil
  then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  EdCliente2.SetFocus;
end;

procedure TFrmOrdens_Servicos.BtnVendedorClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;


  FrmMecanicos := TFrmMecanicos.Create(Application);

  FrmMecanicos.Showmodal ;

  Datasource.DataSet.FieldByName('MECANICO').asInteger := FrmMain.Codigo_Int;
  cmbTecnico.SetFocus;
end;

procedure TFrmOrdens_Servicos.EdPessoaExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

    { IF (( EdPessoa.Text = '0' ) or ( EdPessoa.Text = '' ))  AND ( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          ActLocalizarCliente.Execute ;
     end;}
end;

procedure TFrmOrdens_Servicos.EdPessoaEnter(Sender: TObject);
begin
  CorFundo ( Sender );
end;

procedure TFrmOrdens_Servicos.cmbvendedorExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmOrdens_Servicos.EdVendedorEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmOrdens_Servicos.CmbFormaPgtoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmOrdens_Servicos.Revelador_ContadorExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmOrdens_Servicos.EdMargemEnter(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     CorFundo ( Sender );
end;

procedure TFrmOrdens_Servicos.EdMargemExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmOrdens_Servicos.ActNextPageExecute(Sender: TObject);
begin
  pc.ActivePageIndex := 1;
end;

procedure TFrmOrdens_Servicos.ActPreviousPageExecute(Sender: TObject);
begin
     pc.ActivePageIndex := 0;
end;

procedure TFrmOrdens_Servicos.TAB2Enter(Sender: TObject);
begin
    Navigator.DataSource := DataSource;
    if (DataSource.DataSet.State in [dsbrowse]) then
      DataSource.DataSet.Edit;
    WITH DMSERVICOS DO
    BEGIN
         Valida_Cliente.Close ;
         Valida_Cliente.ParamByName('CNPJ').AsString    := DmApp.Cnpj   ;
         Valida_Cliente.ParamByName('CODIGO').AsInteger := ORDEMPESSOA_FJ.Value ;
         Valida_Cliente.Open ;

    END;
end;

procedure TFrmOrdens_Servicos.EDENTRADAExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

     FrmOrdens_Servicos.Calcular_Itens ;
end;

procedure TFrmOrdens_Servicos.CODIGOKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  begin
    if DataSource.state in [ dsinsert, dsedit ] then
      DataSource.DataSet.Post;
  end;
end;

procedure TFrmOrdens_Servicos.BtnMotorClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMotores', False);

  //
  FrmMotores := TFrmMotores.Create(Application);

  FrmMotores.Showmodal ;

  Datasource.DataSet.FieldByName('MOTOR').asInteger := FrmMain.Codigo_Int;

end;

procedure TFrmOrdens_Servicos.BtnMovimentosClick(Sender: TObject);
VAR
   CREDITO, DEBITO: REAL ;
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmOrdens_Servicos_Movtos', True)) Then
     Exit;

  { * * * * * }
  If FrmOrdens_Servicos_Movtos = Nil
  Then Begin

       FrmOrdens_Servicos_Movtos := TFrmOrdens_Servicos_Movtos.Create(Self);

       FrmOrdens_Servicos_Movtos.SHOWMODAL ;       FrmOrdens_Servicos_Movtos.FREE      ;
       FrmOrdens_Servicos_Movtos := Nil    ;

       //SOMANDO OS VALORES E ARMAZENANDO

       WITH DMSERVICOS DO
       BEGIN
            CREDITO := 0;
            DEBITO  := 0;

            OS_MOVIMENTOS.DisableControls ;

            OS_MOVIMENTOS.FIRST ;

            WHILE NOT OS_MOVIMENTOS.EOF DO
            BEGIN
                 IF OS_MOVIMENTOSTIPO.VALUE = 'C'
                 THEN BEGIN
                      CREDITO := CREDITO + OS_MOVIMENTOSVALOR.VALUE ;
                 END
                 ELSE BEGIN
                      DEBITO  := DEBITO + OS_MOVIMENTOSVALOR.VALUE ;
                 END;

                 OS_MOVIMENTOS.NEXT ;
            END;

            OS_MOVIMENTOS.EnableControls  ;

            Calcular_Itens;
            
            ORDEM.Edit ;

            ORDEMCREDITOS.VALUE := CREDITO ;
            ORDEMDEBITOS.VALUE  := DEBITO  ;

            ORDEMTOTAL.VALUE    := ORDEMTOTAL.VALUE + ( CREDITO - DEBITO );

            ORDEM.POST ;
       END;
  End;
end;

procedure TFrmOrdens_Servicos.ActEnviarCaixaExecute(Sender: TObject);
Var
   Prod, Codigo: String ;
   Numero, Nf: Integer;
begin
     //-->> Caso esteja em modo de edição/inserção 'salva'
     If Datasource.DataSet.State in [ dsedit, dsinsert ] Then
         Datasource.DataSet.Post;

     //-->> Verifica quantidade de itens na Ordem de Serviço
     IF (( arredonda( DmServicos.OrdemTotal.Value,2 ) <= 0 ) AND ( DMAPP.PDV_VALOR_ZERADO <> 'S' )) THEN
     BEGIN
          MessageDlg('Não Existem Produtos para Faturamento, Verifique!',MtError,[MbOk],0);
          Pc.ActivePageIndex := 0;
          Exit;
     END;

     With DmServicos do
     begin
          Valida_Forma.Close ;
          Valida_Forma.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
          Valida_Forma.ParamByName ('CODIGO').AsInteger := OrdemFORMA_PAGTO.Value ;
          Valida_Forma.Prepare ;
          Valida_Forma.Open ;
     end;

     IF ( arredonda(DmServicos.OrdemDiferenca.Value,2) <> 0 ) and ( DmServicos.OrdemA_VISTA.Value <> 'S' )THEN
     BEGIN
          MessageDlg('O Parcelamento Não Confere, Verifique!',MtError,[MbOk],0);
          Pc.ActivePageIndex := 1;
          Exit;
     END;
     DmServicos.Valida_Forma.Close ;

     MESSAGEDLG('Venda Nº ' + inttostr(DmaPP.Envia_Ordem_Caixa ( DmApp.Cnpj, DmServicos.OrdemCodigo.Value)),mtinformation, [mbok],0);

     Sair := True ;
     close ;
end;

procedure TFrmOrdens_Servicos.EDDOCUMENTOExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmOrdens_Servicos.BTNDEFEITOClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmDefeitos', False);

  FrmDefeitos := TFrmDefeitos.Create(Application);
  FrmDefeitos.Showmodal ;

  SelDefeitos.Close;
  SelDefeitos.Open;

  Datasource.DataSet.FieldByName('DEFEITO_RECLAMADO').asInteger := FrmMain.Codigo_Int;
  cmbDefeitoReclamado.SetFocus;
end;

procedure TFrmOrdens_Servicos.btnCliente2Click(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmClientes', False);

  FrmClientes := TFrmClientes.Create(Self);
  FrmClientes.ShowModal;

  with dmCadastros2 do
  begin
    SelClientes.Close;
    SelClientes.Open;
    SelClientes.fetchAll;
  end;

  DmServicos.SelVeiculo.Close;
  DmServicos.SelVeiculo.Open;
  DmServicos.SelVeiculo.fetchall;

  Datasource.DataSet.FieldByName('PESSOA_FJ').asInteger := FrmMain.Codigo_Int ;
  FrmClientes.Free;
  FrmClientes := Nil;
  EdCliente2.SetFocus;
end;

procedure TFrmOrdens_Servicos.btnStatusClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  if not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmStatusServico', True)) then
    Exit;

  frmStatusServico := TfrmStatusServico.Create(Self);
  frmStatusServico.Showmodal;

  with dmServicos do
  begin
    SelStatus.Close;
    SelStatus.Open;
    SelStatus.fetchAll;
  end;
  
  Datasource.DataSet.FieldByName('COD_STATUS').asInteger := FrmMain.Codigo_Int;
  frmStatusServico.Free;
  frmStatusServico := Nil;

  edStatus.SetFocus;
end;

procedure TFrmOrdens_Servicos.EdClienteExit(Sender: TObject);
var
 ativo : string;
begin
  TiraCorFundo ( Sender );
  dmCadastros2.SelClientes.Locate('CODIGO', DmServicos.OrdemPESSOA_FJ.AsInteger,[]);
  DMCadastros.Contato.Close;
  DMCadastros.Contato.ParamByName('ID_CLIENTE').value   := dmCadastros2.SelClientesCODIGO.AsInteger;
  DMCadastros.Contato.ParamByName('CNPJ').asString := DMApp.Cnpj;
  DMCadastros.Contato.Open;


  with dmServicos do
  begin
    if (DmServicos.OrdemST_FECHADO.AsString = '') then
      ativo := 'S'
    else
      ativo := 'T';

    SelEquipCliente.Close;
    SelEquipCliente.parambyname('cod_cliente').value := OrdemPESSOA_FJ.value;
    SelEquipCliente.parambyname('ativo').value := ativo;
    SelEquipCliente.Open;
    SelEquipCliente.FetchAll;


    if (dmServicos.Ordem.State in [dsinsert, dsedit]) then
    begin
      if ((dmApp.EXIBE_OFC_VISUALIZACAO = '0') and (dmCadastros2.SelClientesTECNICO.value > 0)) then
      begin
        with dmServicos do
        begin
           RetCodTecnico.Close;
           RetCodTecnico.parambyname('cnpj').value := dmApp.cnpj;
           RetCodTecnico.parambyname('codigo').value := OrdemPRODUTO.value;
           RetCodTecnico.Open;

           //se tem tecnico especifico
          if ((RetCodTecnicoCOD_TECNICO.AsInteger > 0) and (OrdemMECANICO.value <> RetCodTecnicoCOD_TECNICO.AsInteger)) then
          begin
            if application.messagebox('Equipamento possuí técnico específico vinculado. Deseja alterar técnico atual?','Aviso', mb_yesno + mb_iconquestion) = id_yes then
              OrdemMECANICO.value := RetCodTecnicoCOD_TECNICO.AsInteger;
          end
          else if (RetCodTecnicoCOD_TECNICO.AsInteger = 0) then
             OrdemMECANICO.value :=  dmCadastros2.SelClientesTECNICO.value ;
        end;

        if(DMEmpresas.EmpresasOFC_EXIBE_NOTIFICACAO.AsString = 'S') then
        begin
          if (cmbContato.text = '' ) then
            OrdemCOD_CONTATO.value := OrdemPESSOA_FJ.Value;
        end;
      end;

    end;

   { if OrdemMECANICO.text = '' then
      OrdemMECANICO.value := dmCadastros2.SelClientesTECNICO.value; }

    if (SelEquipCliente.RecordCount > 0) then
      cmbEquipamento.Enabled := true
    else
      cmbEquipamento.Enabled := false;
  end;

  //DmVendas2 := TDmVendas2.Create(self);
  {DmVendas2.NDocto := dmCadastros2.SelClientesCODIGO.AsInteger;
  DmVendas2.Vendas.Open;
  DmVendas2.Vendas.Edit;

  //DmVendas2.ValPendenciaFinExecute(Sender);

  if not DmVendas2.LiberaOS then}
    Exit;
end;

procedure TFrmOrdens_Servicos.btnEquipamentoClick(Sender: TObject);
begin
 If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmProdutos', False);

  FrmProdutos := TFrmProdutos.Create(Self);

  FrmProdutos.ShowModal;
  Datasource.DataSet.FieldByName('PRODUTO').value := FrmMain.Codigo_str ;
  FrmProdutos.Free;
  FrmProdutos := Nil;
  cmbEquipamento.SetFocus;
end;

procedure TFrmOrdens_Servicos.btnTecnicoClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMecanicos', False);

  FrmMecanicos := TFrmMecanicos.Create(Application);
  FrmMecanicos.Showmodal ;
  with DmServicos do
  begin
    SelTecnico.Close;
    SelTecnico.Open;
    SelTecnico.fetchAll;
  end;
  Datasource.DataSet.FieldByName('MECANICO').asInteger := FrmMain.Codigo_Int;
  cmbTecnico.SetFocus;
end;

procedure TFrmOrdens_Servicos.btnTAClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmGravidade', False);

  FrmGravidade := TFrmGravidade.Create(Application);
  FrmGravidade.Showmodal ;

  with DmServicos do
  begin
    OFC_GRAVIDADE.Close;
    OFC_GRAVIDADE.Open;
    OFC_GRAVIDADE.FetchAll;
  end;

  Datasource.DataSet.FieldByName('COD_GRAVIDADE').asInteger := FrmMain.Codigo_Int;
  cmbServicoExecutado.SetFocus;

end;

procedure TFrmOrdens_Servicos.btnMotivoClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'frmMotivoChamado', False);

  frmMotivoChamado := TfrmMotivoChamado.Create(Application);
  frmMotivoChamado.Showmodal ;

  SelMotivo.Close;
  SelMotivo.Open;

  Datasource.DataSet.FieldByName('ID_TIPO_ATENDIMENTO').asInteger := FrmMain.Codigo_Int;
  cmbProblemaIdentificado.SetFocus;
end;

procedure TFrmOrdens_Servicos.Panel6Exit(Sender: TObject);
begin
//  If DmServicos.Ordem.state in [dsinsert,dsEdit] then
//      DmServicos.Ordem.Post ;
end;

procedure TFrmOrdens_Servicos.ActGeraVendaExecute(Sender: TObject);
var
   Prod, Codigo: String ;
   Numero, Nf: Integer;
begin
     //validando a geração de venda
     if (dmServicos.OrdemVENDA.asInteger > 0) then
     begin
       Application.MessageBox(Pchar('Impossível gerar venda.'+#13+'OS já possui venda vinculada'),'Aviso',mb_iconerror + mb_ok);
       exit;
     end;

     //-->> Caso esteja em modo de edição/inserção 'salva'
     if Datasource.DataSet.State in [ dsedit, dsinsert ] then
         Datasource.DataSet.Post;

     //-->> Verifica quantidade de itens na Ordem de Serviço
     if (( arredonda( DmServicos.OrdemTotal.Value,2 ) <= 0 ) AND ( DMAPP.PDV_VALOR_ZERADO <> 'S' )) then
     begin
       Application.MessageBox('Não existem produtos para faturamento','Aviso',mb_iconerror + mb_ok);
       Pc.ActivePageIndex := 0;
       Exit;
     end;

     //-->> Confere Parcelamento
     With DmServicos do
     begin
          Valida_Forma.Close ;
          Valida_Forma.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
          Valida_Forma.ParamByName ('CODIGO').AsInteger := OrdemFORMA_PAGTO.Value ;
          Valida_Forma.Prepare ;
          Valida_Forma.Open ;
          if ( arredonda(DmServicos.OrdemDiferenca.Value,2) <> 0 ) and ( DmServicos.OrdemA_VISTA.Value <> 'S' )then
          begin
            MessageDlg('O Parcelamento Não Confere, Verifique!',MtError,[MbOk],0);
            Pc.ActivePageIndex := 1;
            Exit;
          end;
          DmServicos.Valida_Forma.Close ;
     end;


     Numero := DmaPP.Gerar_Venda_OS( DmApp.Cnpj, DmServicos.OrdemCodigo.Value, DmServicos.OrdemPESSOA_FJ.Value );
     Application.MessageBox(Pchar('Venda Nº ' + inttostr(Numero)),'Aviso',mb_iconinformation + mb_ok);


     Sair := True ;
     close ;
end;



function TFrmOrdens_Servicos.Preenchimento_datas : boolean;
var
  hora_atual : ttime;
  solicitacao, ini, fim, programacao,fechamento : string;
begin
    Result      := True;

{    solicitacao := Dt_Solicitacao.text;
    ini         := edDtInicializacao.text;
    fim         := edtDtFinalizacao.text;
    programacao := Dt_Programacao.text;
    fechamento  := Dt_Fechamento.text;


    if( solicitacao = '  /  /    ' ) then
    begin
       Application.MessageBox('É necessário fazer o preenchimento da Dt. de Solicitação.','Aviso',mb_ok+mb_iconerror);
       Result := False;
       exit;
    end;
    if((programacao = '  /  /    ') and (ini <> '  /  /    '))then
    begin
      if(StrtoDate(ini)>0) then
      begin
         Application.MessageBox('É necessário fazer o preenchimento da Dt. de Programação.','Aviso',mb_ok+mb_iconerror);
         Result := False;
         exit;
      end;
    end;
    if((programacao = '  /  /    ') and (fim <> '  /  /    '))then
    begin
      if(StrtoDate(fim)>0) then
      begin
         Application.MessageBox('É necessário fazer o preenchimento da Dt. de Programação.','Aviso',mb_ok+mb_iconerror);
         Result := False;
         exit;
      end;
    end;
    if((solicitacao = '  /  /    ') and (fechamento <> '  /  /    '))then
    begin
      if(StrtoDate(fechamento)>0) then
      begin
         Application.MessageBox('É necessário fazer o preenchimento da Dt. de Programação.','Aviso',mb_ok+mb_iconerror);
         Result := False;
         exit;
      end;
    end;

    if(fim <> '  /  /    ') then
    begin
       if((ini = '  /  /    ')and(StrtoDate(fim)>0)) then
       begin
         Application.MessageBox('É necessário fazer o preenchimento da Dt. de Inicialização.','Aviso',mb_ok+mb_iconerror);
         Result := False;
         exit;
       end;
    end;

    if(fechamento <> '  /  /    ')then
    begin
      if((ini <> '  /  /    ')and(fim = '  /  /    ')) then
      begin
        Application.MessageBox('É necessário fazer o preenchimento da Dt. de Finalização.','Aviso',mb_ok+mb_iconerror);
        Result := False;
        exit;
      end;

      if((ini = '  /  /    ')and(fim <> '  /  /    ')) then
      begin
        Application.MessageBox('É necessário fazer o preenchimento da Dt. de Inicialização.','Aviso',mb_ok+mb_iconerror);
        Result := False;
        exit;
      end;
    end;

    if(fim <> '  /  /    ') then
    begin
        if( edtDtFinalizacao.Date >DMApp.DataServidor )then
        begin
           Application.MessageBox(pchar('Data de finalização não pode ser posterior à '+DatetoStr(DMApp.DataServidor)),'Aviso',mb_ok+mb_iconerror);
           Result := False;
           exit;
        end;
    end;
    }
end;

procedure TFrmOrdens_Servicos.ActHistoricoExecute(Sender: TObject);
var
  swhere : string;
  sorder : string;
begin
  with dmRelatorios2 do
  begin
   sorder := ' order by (os.data) descending ';

   if (dmapp.EXIBE_OFC_VISUALIZACAO = '0') then
     swhere := ' and (os.produto = '+QuotedStr(DmServicos.OrdemPRODUTO.AsString)+') and os.codigo <> :codigo '
   else
     swhere := ' and (os.veiculo = '+(DmServicos.OrdemVEICULO.AsString)+') and os.codigo <> :codigo ';

    qryRelHistoricoEquip2.Close;
    qryRelHistoricoEquip2.sql.text := SqlOriginalHist + swhere + sorder;
    qryRelHistoricoEquip2.parambyname('cnpj').Value := DMApp.Cnpj;
    qryRelHistoricoEquip2.parambyname('PESSOA_FJ').Value   := DmServicos.OrdemPESSOA_FJ.AsInteger;
    qryRelHistoricoEquip2.parambyname('codigo').Value := DmServicos.OrdemCODIGO.AsInteger;
    qryRelHistoricoEquip2.Open;
  end;

  rptHistEquip.Print;
end;

procedure TFrmOrdens_Servicos.ActOSExecute(Sender: TObject);
begin
   
   DmSerie_Customizaveis.edtLayoutOS.close;
   DmSerie_Customizaveis.edtLayoutOS.parambyname('cnpj').value := dmApp.cnpj;
   DmSerie_Customizaveis.edtLayoutOS.Open;

   If FrmSeriesCustomizaveis = Nil Then
     FrmSeriesCustomizaveis     := TFrmSeriesCustomizaveis.Create(Self);

   with FrmSeriesCustomizaveis do
   begin
     QryOS.Close;
     QryOS.Parambyname('cnpj').value := dmApp.cnpj;
     QryOS.Parambyname('codigo').value := DmServicos.OrdemCodigo.value;
     QryOS.Parambyname('PESSOA_FJ').value := DmServicos.OrdemPessoa_fj.value;
     QryOS.Open;

     rptOS.Template.DatabaseSettings.Name := DmSerie_Customizaveis.edtLayoutOSCNPJ.asstring;;
     rptOS.Template.LoadFromDatabase;
     rptOS.print;
   end;
   FrmSeriesCustomizaveis := Nil;
   exit;
end;

procedure TFrmOrdens_Servicos.GRIDCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
  if ANode.HasChildren then
    Exit;
  //** Pinta celula Qtde_Hora, caso estiver sem preechimento
  if not ASelected and (AColumn = GRIDQTDE_HORA) then
    AColor := clBtnFace;
  //** Pinta celula Dt_fim, caso estiver sem preechimento
  if not ASelected and (AColumn = GRIDDT_FIM) then
  begin
    Value := ANode.Values[GRIDDT_FIM.index];
    if VarIsNull(Value) then
      AColor := $009297FA;
  end;
  //** Pinta celula Hr_fim, caso estiver sem preechimento
  if not ASelected and (AColumn = GRIDHR_FIM) then
  begin
    Value := ANode.Values[GRIDHR_FIM.index];
    if VarIsNull(Value) or (VartoStr(Value) = '00:00:00') then
      AColor := $009297FA;
  end;
end;

procedure TFrmOrdens_Servicos.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button = nbdelete then
    If MessageBox(Handle,'Tem certeza que deseja Excluir este Movimento ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
       DsIntervalos.dataset.Delete;
end;

procedure TFrmOrdens_Servicos.cxNavigator1ButtonsButtonClick(
  Sender: TObject; AButtonIndex: Integer; var ADone: Boolean);
begin
  if (AButtonIndex = 1) then
    showmessage('inseriu maluco');
end;

procedure TFrmOrdens_Servicos.GRIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) Then
  begin
     ActAlterar.Execute;
     DmServicos.OS_INTERVALO.Close;
     DmServicos.OS_INTERVALO.Open;
  end;

end;

function EnviaEmail(P:Pointer):LongInt;
var
 xAnexo : Integer;
begin
    dmApp.IdMessage.Clear;
    with dmApp.IdMessage do
    begin
      From.Address := dmapp.EMAIL_PADRAO; //opcional
      From.Name := dmapp.NOME_USUARIO; //opcional
      Body.Clear;
      Body.Add(DmServicos.OS_INTERVALOOBSERVACAO.asString);

      if (DmServicos.SelTecnicoEMAIL.AsString = '') then
      begin
        Application.Messagebox('Defina um email para o técnico responsável ','Aviso',mb_ok + mb_iconerror);
        exit;
      end;
      Recipients.Add;
      Recipients.Items[0].Address := DmServicos.SelTecnicoEMAIL.AsString;
      Recipients.Items[0].Name := DmServicos.SelTecnicoNOME.AsString; //opcional

      if (dmCadastros2.SelClientesEMAIL.AsString = '') then
      begin
        Application.Messagebox('Defina um email para o cliente ','Aviso',mb_ok + mb_iconerror);
        exit;
      end;

      Recipients.Add;
      Recipients.Items[1].Address := dmCadastros2.SelClientesEMAIL.AsString;
      Recipients.Items[1].Name := dmCadastros2.SelClientesNOME_RAZAO.AsString; //opcional


      {if (dmCadastros2.SelClientes2EMAIL.AsString = '') then
      begin
        Application.Messagebox('Defina um email para o contato ','Aviso',mb_ok + mb_iconerror);
        exit;
      end;}
      
      if (dmCadastros2.SelClientes2EMAIL.AsString <> '') then
      begin
        Recipients.Add;
        Recipients.Items[2].Address := dmCadastros2.SelClientes2EMAIL.AsString;
        Recipients.Items[2].Name := dmCadastros2.SelClientes2NOME_RAZAO.AsString; //opcional
      end;


      if (dmapp.EMAIL_CONTROLE <> '') then
      begin
        Recipients.Add;
        Recipients.Items[3].Address := dmapp.EMAIL_CONTROLE;
        Recipients.Items[3].Name := 'Supervisao'; //opcional
      end;

      Subject := 'Caso '+Completaesq(dmServicos.OrdemCODIGO.asString,'0',9)+': '+dmServicos.OrdemASSUNTO.asString;
      //Priority := mpHigh;
      ReceiptRecipient.Text := From.Text;

      with dmServicos do
      begin
        OS_INTERVALO_EMAIL_INSERT.open;
        OS_INTERVALO_EMAIL_INSERT.Append;
        OS_INTERVALO_EMAIL_INSERTASSUNTO.value := FrmOrdens_Servicos.edSolicitante.Text;
        OS_INTERVALO_EMAIL_INSERTDE.value := dmapp.EMAIL_PADRAO;
        OS_INTERVALO_EMAIL_INSERTPARA.value := dmCadastros2.SelClientesEMAIL.AsString+';'+DmServicos.SelTecnicoEMAIL.AsString+';'+dmapp.EMAIL_CONTROLE;
        OS_INTERVALO_EMAIL_INSERTDATA.Value := DmApp.Data_Servidor;
        OS_INTERVALO_EMAIL_INSERTSEQUENCIA.value := OS_INTERVALOSEQUENCIA.VALUE;
        OS_INTERVALO_EMAIL_INSERTCOD_INTERVALO.value := OS_INTERVALOCODIGO.VALUE;
      end;

    end;

    try
      dmApp.IdSMTP.Connect();
      dmApp.IdSMTP.Send(dmApp.IdMessage);
      dmApp.IdSMTP.Disconnect;
      dmServicos.OS_INTERVALO_EMAIL_INSERTENVIADO.value := '1';
    except
       On E:Exception Do
       begin
         Application.Messagebox(Pchar('Falha ao enviar a mensagem: '+ E.Message),'Aviso',mb_ok + mb_iconerror);
         dmServicos.OS_INTERVALO_EMAIL_INSERTENVIADO.value := '0';
         dmServicos.OS_INTERVALO_EMAIL_INSERT.POST;
         if (FrmOrdens_Servicos <> nil) then
           FrmOrdens_Servicos.btnEmail.Caption := 'Enviar Email';

         dmServicos.OS_INTERVALO_EMAIL.Close;
         dmServicos.OS_INTERVALO_EMAIL.Open;
         exit;
       end
    end;

     Application.Messagebox('Mensagem enviada com sucesso','Aviso',mb_ok + mb_iconinformation);
     dmServicos.OS_INTERVALO_EMAIL_INSERT.POST;  //
     if (FrmOrdens_Servicos <> nil) then
       FrmOrdens_Servicos.btnEmail.Caption := 'Enviar Email';

     dmServicos.OS_INTERVALO_EMAIL.Close;
     dmServicos.OS_INTERVALO_EMAIL.Open;
end;

function EnviaEmailGenerico(P:Pointer):LongInt;
begin
    try
      dmApp.Desconecta;
      dmApp.Conecta;
      {if not (dmApp.IdSMTP.Connected) then
        dmApp.IdSMTP.Connect(); }

      dmApp.IdSMTP.Send(dmApp.IdMessage);

      {if (dmApp.IdSMTP.Connected) then
        dmApp.IdSMTP.Disconnect;}

      dmServicos.OS_INTERVALO_EMAIL_INSERTENVIADO.value := '1';
    except
       On E:Exception Do
       begin
         Application.Messagebox(Pchar('Falha ao enviar a mensagem: '+ E.Message),'Aviso',mb_ok + mb_iconerror);
         dmServicos.OS_INTERVALO_EMAIL_INSERTENVIADO.value := '0';
         dmServicos.OS_INTERVALO_EMAIL_INSERT.POST;


         dmServicos.OS_INTERVALO_EMAIL.Close;
         dmServicos.OS_INTERVALO_EMAIL.Open;
         exit;
       end
    end;

     Application.Messagebox('Mensagem enviada com sucesso','Aviso',mb_ok + mb_iconinformation);
     dmServicos.OS_INTERVALO_EMAIL_INSERT.POST;  //

     dmServicos.OS_INTERVALO_EMAIL.Close;
     dmServicos.OS_INTERVALO_EMAIL.Open;
end;

procedure TFrmOrdens_Servicos.btnEmailClick(Sender: TObject);
begin
  FrmOrdens_Servicos_Email := TFrmOrdens_Servicos_Email.Create(Self);
  FrmOrdens_Servicos_Email.showmodal;
end;

procedure TFrmOrdens_Servicos.EnviaEmailTecnico(Origem,NOrigem,Destino,NDestino,Assunto,Mensagem : string);
var
 xAnexo : Integer;
 hThreadID :THandle;
 ThreadID :DWord;
begin
  dmApp.IdMessage.Clear;
  with dmApp.IdMessage do
  begin
    Body.Add(Mensagem);
    From.Address := Origem; //opcional
    From.Name := NOrigem; //opcional

    if (Destino = '') then
    begin
      Application.Messagebox('Defina um email para o destinatário ','Aviso',mb_ok + mb_iconerror);
      exit;
    end;

    Recipients.Add;
    Recipients.Items[0].Address := Destino;
    Recipients.Items[0].Name := NDestino; //opcional

    if (dmapp.EMAIL_CONTROLE <> '') then
    begin
      Recipients.Add;
      Recipients.Items[1].Address := dmapp.EMAIL_CONTROLE;
      Recipients.Items[1].Name := 'Supervisao'; //opcional
    end;

    Subject := 'Caso '+Completaesq(dmServicos.OrdemCODIGO.asString,'0',9)+': '+dmServicos.OrdemASSUNTO.asString;;
    //Priority := mpHigh;
    ReceiptRecipient.Text := From.Text;

    TIdAttachment.create(idmessage.MessageParts, TFileName('c:\texte.txt'));
    with dmServicos do
    begin
      OS_INTERVALO.Append;
      OS_INTERVALOCNPJ.value := dmApp.cnpj;
      OS_INTERVALODT_INICIO.value := dmApp.DataServidor;
      OS_INTERVALOHR_INICIO.value := TimeOF(dmApp.DataServidor);
      OS_INTERVALODT_FIM.value := dmApp.DataServidor;
      OS_INTERVALOHR_FIM.value := TimeOF(dmApp.DataServidor);
      OS_INTERVALOOBSERVACAO.Value :=  ' Caso Transferido de '+NOrigem+' para '+NDestino;
      OS_INTERVALO.Post;

      OS_INTERVALO_EMAIL_INSERT.open;
      OS_INTERVALO_EMAIL_INSERT.Append;
      OS_INTERVALO_EMAIL_INSERTASSUNTO.value := ' Caso Transferido de '+NOrigem+' para '+NDestino; ;
      OS_INTERVALO_EMAIL_INSERTDE.value := dmapp.EMAIL_PADRAO;
      OS_INTERVALO_EMAIL_INSERTPARA.value := Destino+';'+dmapp.EMAIL_CONTROLE;
      OS_INTERVALO_EMAIL_INSERTDATA.Value := DmApp.Data_Servidor;
      OS_INTERVALO_EMAIL_INSERTSEQUENCIA.value := OS_INTERVALOSEQUENCIA.VALUE;
      OS_INTERVALO_EMAIL_INSERTCOD_INTERVALO.value := OS_INTERVALOCODIGO.VALUE;
    end;

  end;
  hThreadID := CreateThread(nil, 0, @EnviaEmailGenerico, nil, 0, ThreadID);

  {try
    if not (dmApp.IdSMTP.Connected) then
      dmApp.IdSMTP.Connect();

    dmApp.IdSMTP.Send(dmApp.IdMessage);

    if (dmApp.IdSMTP.Connected) then
      dmApp.IdSMTP.Disconnect;

    dmServicos.OS_INTERVALO_EMAILENVIADO.value := '1';
  except
     On E:Exception Do
     begin
       Application.Messagebox(Pchar('Falha ao enviar a mensagem: '+ E.Message),'Aviso',mb_ok + mb_iconerror);
       dmServicos.OS_INTERVALO_EMAILENVIADO.value := '0';
       dmServicos.OS_INTERVALO_EMAIL.POST;
       exit;
     end
   end;
   Application.Messagebox('Mensagem enviada com sucesso','Aviso',mb_ok + mb_iconinformation);
   dmServicos.OS_INTERVALO_EMAIL.POST;}
end;

procedure TFrmOrdens_Servicos.EnviaEmailAb_Fec(cliente,NCliente,Contato,NContato,Assunto,Mensagem,TIPO : string);
var
 xAnexo,i : Integer;
 hThreadID :THandle;
 ThreadID :DWord;
begin
  dmApp.IdMessage.Clear;
  with dmApp.IdMessage do
  begin
    Body.Add(Mensagem);
    From.Address := DMApp.EMAIL_PADRAO; //opcional
    From.Name := dmApp.NOME_USUARIO; //opcional

    if (Cliente = '') then
    begin
      Application.Messagebox('Defina um email para o cliente ','Aviso',mb_ok + mb_iconerror);
      exit;
    end;
    i := 0;
    Recipients.Add;
    Recipients.Items[i].Address := cliente;
    Recipients.Items[i].Name := NCliente;

    {if (Contato = '') then
    begin
      Application.Messagebox('Defina um email para o contato ','Aviso',mb_ok + mb_iconerror);
      exit;
    end;}

    if (Contato <> '') then
    begin
      i := i + 1;
      Recipients.Add;
      Recipients.Items[i].Address := contato;
      Recipients.Items[i].Name := NContato;
    end;

    if (dmapp.EMAIL_CONTROLE <> '') then
    begin
      i := i + 1;
      Recipients.Add;
      Recipients.Items[i].Address := dmapp.EMAIL_CONTROLE;
      Recipients.Items[i].Name := 'Supervisao'; //opcional
    end;

    Subject := 'Caso '+Completaesq(dmServicos.OrdemCODIGO.asString,'0',9)+': '+dmServicos.OrdemASSUNTO.asString;;
    //Priority := mpHigh;
    ReceiptRecipient.Text := From.Text;

    with dmServicos do
    begin
      OS_INTERVALO_EMAIL_INSERT.open;
      OS_INTERVALO_EMAIL_INSERT.Append;
      OS_INTERVALO_EMAIL_INSERTASSUNTO.value := Assunto;
      OS_INTERVALO_EMAIL_INSERTDE.value := dmapp.EMAIL_PADRAO;
      OS_INTERVALO_EMAIL_INSERTPARA.value := Cliente+';'+Contato+';'+dmapp.EMAIL_CONTROLE;
      OS_INTERVALO_EMAIL_INSERTDATA.Value := DmApp.Data_Servidor;
      OS_INTERVALO_EMAIL_INSERTSEQUENCIA.value := OS_INTERVALOSEQUENCIA.VALUE;
      OS_INTERVALO_EMAIL_INSERTCOD_INTERVALO.value := OS_INTERVALOCODIGO.VALUE;
      OS_INTERVALO_EMAIL_INSERTTIPO.value := OS_INTERVALOTIPO.value;
    end;

  end;
  hThreadID := CreateThread(nil, 0, @EnviaEmailGenerico, nil, 0, ThreadID);
  {try
    if not (dmApp.IdSMTP.Connected) then
      dmApp.IdSMTP.Connect();

    dmApp.IdSMTP.Send(dmApp.IdMessage);

    if (dmApp.IdSMTP.Connected) then
      dmApp.IdSMTP.Disconnect;

    dmServicos.OS_INTERVALO_EMAILENVIADO.value := '1';
  except
     On E:Exception Do
     begin
       Application.Messagebox(Pchar('Falha ao enviar a mensagem: '+ E.Message),'Aviso',mb_ok + mb_iconerror);
       dmServicos.OS_INTERVALO_EMAILENVIADO.value := '0';
       dmServicos.OS_INTERVALO_EMAIL.POST;
       exit;
     end
   end;
   Application.Messagebox('Mensagem enviada com sucesso','Aviso',mb_ok + mb_iconinformation);
   dmServicos.OS_INTERVALO_EMAIL.POST;}
end;

procedure TFrmOrdens_Servicos.ActSalvarAnexoExecute(Sender: TObject);
var
  Caminho : string;
begin
  with dmServicos do
  begin
   if (OS_INTERVALO_ANEXOFILENAME.AsString = '') then
   begin
     Application.Messagebox('Impossível salvar. Selecione um anexo válido','Aviso',mb_ok + mb_iconerror);
     exit;
   end;

   SaveDialog.FileName := OS_INTERVALO_ANEXOFILENAME.Value;
   SaveDialog.DefaultExt := ExtractFileExt(OS_INTERVALO_ANEXOFILENAME.Value);
   if (SaveDialog.Execute) then
   begin
     Caminho :=  ExtractFileDir(SaveDialog.FileName);
     OS_INTERVALO_ANEXOANEXO.SaveToFile(Caminho+'\'+OS_INTERVALO_ANEXOFILENAME.Value);
   end;
  end
end;

procedure TFrmOrdens_Servicos.ActCarregarAnexoExecute(Sender: TObject);
var
 caminho : string;
  f: file of Byte;
  size: REAL;
begin
  with DmServicos do
  begin
    if (OpenDialog.Execute) then
    begin
      AssignFile(f, OpenDialog.FileName);
      Reset(f);
      size := FileSize('f');
      CloseFile(f);

      size := (size/1024);

      Caminho :=  ExtractFileName(OpenDialog.FileName);
      OS_INTERVALO_ANEXO.Append;
      OS_INTERVALO_ANEXOCODIGO.value := OS_INTERVALOCODIGO.Value;
      OS_INTERVALO_ANEXOSEQUENCIA.value := OS_INTERVALOSEQUENCIA.Value;
      OS_INTERVALO_ANEXOANEXO.LoadFromFile(OpenDialog.FileName);
      OS_INTERVALO_ANEXOFILENAME.value := caminho;
      OS_INTERVALO_ANEXOTAMANHO.value := Size;
      OS_INTERVALO_ANEXO.Post;
    end;
  end;


end;

procedure TFrmOrdens_Servicos.ActExcluirAnexoExecute(Sender: TObject);
begin
  with DmServicos do
  begin
    if (OS_INTERVALO_ANEXOFILENAME.AsString <> '') then
    begin
      if Application.Messagebox('Deseja realmente excluir o anexo?','Aviso',mb_yesno + mb_iconquestion) = id_no then
      exit;
    end
    else
    begin
     Application.Messagebox('Impossível excluir. Selecione um anexo válido','Aviso',mb_ok + mb_iconerror);
     exit;
    end;

    OS_INTERVALO_ANEXO.Delete;
  end;
end;

procedure TFrmOrdens_Servicos.btnContatoClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmClientes', False);

  FrmClientes := TFrmClientes.Create(Self);
  FrmClientes.ShowModal;

  with dmCadastros2 do
  begin
    SelClientes2.Close;
    SelClientes2.Open;
    SelClientes2.fetchAll;
  end;

  Datasource.DataSet.FieldByName('COD_CONTATO').asInteger := FrmMain.Codigo_Int ;
  FrmClientes.Free;
  FrmClientes := Nil;
  cmbContato.SetFocus;
end;
                                                


procedure TFrmOrdens_Servicos.ActLocVeiculoExecute(Sender: TObject);
begin
   DmVendas.SelVeiculos.Close;
   DmVendas.SelVeiculos.ParamByName('PESSOA_FJ').value := 0;
   DmVendas.SelVeiculos.ParamByName('cnpj').value := dmApp.cnpj;
   DmVendas.SelVeiculos.Open;

   Application.CreateForm(TFrm_Localizar_Veiculos, Frm_Localizar_Veiculos);

   Frm_Localizar_Veiculos.DSource.dataset := DmVendas.SelVeiculos ;

   if (Frm_Localizar_Veiculos.showmodal = mrOk ) then
   begin
     if not (DataSource.DataSet.State in [dsEdit, dsInsert]) then
       DataSource.DataSet.edit;

     DmServicos.OrdemPESSOA_FJ.Value := Frm_Localizar_Veiculos.CampCliente;
     DmServicos.OrdemVEICULO.Value := Frm_Localizar_Veiculos.CampVeiculo;
   end;

   Frm_Localizar_Veiculos.free   ;
   Frm_Localizar_Veiculos := Nil ;
end;

procedure TFrmOrdens_Servicos.ppDBText20Print(Sender: TObject);
begin
  if (dmapp.EXIBE_OFC_VISUALIZACAO = '0') then
    TppDBText(Sender).Visible := false
  else
    TppDBText(Sender).Visible := true;
end;

procedure TFrmOrdens_Servicos.ppDBText11Print(Sender: TObject);
begin
  if (dmapp.EXIBE_OFC_VISUALIZACAO = '1') then
    TppDBText(Sender).Visible := false
  else
    TppDBText(Sender).Visible := true;
end;

procedure TFrmOrdens_Servicos.ppLabel1Print(Sender: TObject);
begin
  if (dmapp.EXIBE_OFC_VISUALIZACAO = '1') then
    TppLabel(Sender).Text := 'Histórico do Veiculo'
  else
    TppLabel(Sender).Text := 'Histórico do Equipamento';

end;

procedure TFrmOrdens_Servicos.TAB2Exit(Sender: TObject);
begin
   if DataSource.DataSet.RecordCount = 0 then
      DataSource.DataSet.Cancel
   else if ((DataSource.DataSet.State in [dsInsert,dsEdit])) then
      DataSource.DataSet.Post;

end;

procedure TFrmOrdens_Servicos.TVItensEditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
    if Key = 13 then
        If DmServicos.Ordem.state in [ dsinsert, dsedit ] then
        begin
             DmServicos.Ordem.Post ;
             //
             FrmOrdensServicosItens := TFrmOrdensServicosItens.Create(Self);

             FrmOrdensServicosItens.ShowModal;

             FrmOrdensServicosItens.Free     ;
             FrmOrdensServicosItens := Nil   ;

             //
             DmServicos.SelServicos_Itens.Close ;
             DmServicos.SelServicos_Itens.DataSource := DmServicos.DsOrdem ;
             DmServicos.SelServicos_Itens.Open  ;

             Calcular_Itens;
        end;
end;

procedure TFrmOrdens_Servicos.cxDBLookupComboBox1PropertiesInitPopup(
  Sender: TObject);
begin
       dsGravidade.DATASET.cLOSE;
       dsGravidade.DATASET.Open;
end;

procedure TFrmOrdens_Servicos.VerificaLocalizacao;
var
   address    : string;
begin
  if not conectado  then
  begin
    pnlConexao.Visible := true;
    exit;
  end
  else
    pnlConexao.Visible := false;


//aqui prayboy
  SetMapEdits;
  if (PC.ActivePage <> tbsMapa) then
    exit;

  //se nao tiver coordenada entao procura pelo endereço
  if (DmServicos.OrdemMAP_LAT.asString = '') then
  begin
   address := edtLogradouro.Text + ' , '+edtNumero.Text+' , CIDADE '+edtCidade.Text+' - '+edtUF.Text;
   address := StringReplace(StringReplace(Trim(address), #13, ' ', [rfReplaceAll]), #10, ' ', [rfReplaceAll]);

   if Length(trim(address)) > 4 then
     HTMLWindow2.execScript(Format('codeAddress(%s)',[QuotedStr(address)]), 'JavaScript');
  end
  else
    HTMLWindow2.execScript(Format('GotoLatLng(%s,%s)',[DmServicos.OrdemMAP_LAT.AsString,DmServicos.OrdemMAP_LONG.AsString]), 'JavaScript');

   TimerMaps.Enabled := false;

end;

procedure TFrmOrdens_Servicos.WebBrowser1CommandStateChange(
  Sender: TObject; Command: Integer; Enable: WordBool);
var
  ADocument : IHTMLDocument2;
  ABody     : IHTMLElement2;
  Lat : string;
  Lng : string;

      function GetIdValue(const Id : string):string;
      var
        Tag      : IHTMLElement;
        TagsList : IHTMLElementCollection;
        Index    : Integer;
      begin
        Result:='';
        TagsList := ABody.getElementsByTagName('input');
        for Index := 0 to TagsList.length-1 do
        begin
          Tag:=TagsList.item(Index, EmptyParam) As IHTMLElement;
          if CompareText(Tag.id,Id)=0 then
            Result := Tag.getAttribute('value', 0);
        end;
      end;
begin
  if TOleEnum(Command) <> CSC_UPDATECOMMANDS then
    Exit;

  ADocument := WebBrowser1.Document as IHTMLDocument2;
  if not Assigned(ADocument) then
    Exit;

  if not Supports(ADocument.body, IHTMLElement2, ABody) then
    exit;

  if not(ActMarcarCoordenada.Enabled) then
   exit;

  Lat :=GetIdValue('LatValue');
  Lng :=GetIdValue('LngValue');


  if  (Lat<>'') and (Lng<>''){ and ((Lat<>DmServicos.OrdemMAP_LAT.AsString) or (Lng<>DmServicos.OrdemMAP_LONG.AsString))} then
  begin
    DmServicos.Ordem.Edit;
    DmServicos.OrdemMAP_LAT.Value := Lat;
    DmServicos.OrdemMAP_LONG.Value := Lng;
    DmServicos.Ordem.Post;
  end;
end;

procedure TFrmOrdens_Servicos.SetMapEdits;
begin
  with DmServicos do
  begin
    SelEndereco.Close;
    SelEndereco.parambyname('cnpj').value := dmapp.cnpj;
    SelEndereco.parambyname('codigo').value := DmServicos.OrdemPESSOA_FJ.Value;
    SelEndereco.Open;

    edtLogradouro.Text := SelEnderecoLOGRADOURO.AsString;
    edtNumero.Text := SelEnderecoNUMERO.AsString;
    edtCidade.Text := SelEnderecoCIDADE.AsString;
    edtUF.Text := SelEnderecoUF.AsString;
  end;
end;

procedure TFrmOrdens_Servicos.btnLocEnderecoClick(Sender: TObject);
var
   address    : string;
begin
   if not(conectado) then
     exit;
   address := edtLogradouro.Text + ' , '+edtNumero.Text+' , CIDADE '+edtCidade.Text+' - '+edtUF.Text;
   address := StringReplace(StringReplace(Trim(address), #13, ' ', [rfReplaceAll]), #10, ' ', [rfReplaceAll]);

   if Length(trim(address)) > 4 then
       HTMLWindow2.execScript(Format('codeAddress(%s)',[QuotedStr(address)]), 'JavaScript');
end;

procedure TFrmOrdens_Servicos.PCChange(Sender: TObject);
begin
 IF PC.ActivePageIndex = 3 then
    TimerMaps.Enabled := true;
end;

procedure TFrmOrdens_Servicos.ActMarcarCoordenadaExecute(Sender: TObject);
begin
//
end;

procedure TFrmOrdens_Servicos.TimerMapsTimer(Sender: TObject);
begin
 VerificaLocalizacao;
end;

procedure TFrmOrdens_Servicos.ActLimpaCoordenadaExecute(Sender: TObject);
begin
  if not(conectado) then
     exit;
     
  if (ActAlterar.enabled) then
  begin
    DmServicos.Ordem.Edit;
    DmServicos.OrdemMAP_LAT.Clear;
    DmServicos.OrdemMAP_LONG.Clear;
    HTMLWindow2.execScript('ClearMarkers()', 'JavaScript');
  end;
end;

procedure TFrmOrdens_Servicos.TVItensKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = 13 then
  begin
    ActAlterar.Execute;
    If DmServicos.Ordem.state in [ dsinsert, dsedit ] then
    begin
         DmServicos.Ordem.Post ;
         //
         FrmOrdensServicosItens := TFrmOrdensServicosItens.Create(Self);

         FrmOrdensServicosItens.ShowModal;

         FrmOrdensServicosItens.Free     ;
         FrmOrdensServicosItens := Nil   ;

         //
         DmServicos.SelServicos_Itens.Close ;
         DmServicos.SelServicos_Itens.DataSource := DmServicos.DsOrdem ;
         DmServicos.SelServicos_Itens.Open  ;

         Calcular_Itens;
    end;
  end;
end;

procedure TFrmOrdens_Servicos.lcControlDblClick(Sender: TObject);
begin
  lcControl.Customization := true;
end;

procedure TFrmOrdens_Servicos.btnTA2Click(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'frmTipoAtendimento', False);

  frmTipoAtendimento := TfrmTipoAtendimento.Create(Application);
  frmTipoAtendimento.Showmodal ;

  with DmServicos do
  begin
    SelTA.Close;
    SelTA.Open;
    SelTA.FetchAll;
  end;

  Datasource.DataSet.FieldByName('ID_TIPO_ATENDIMENTO').asInteger := FrmMain.Codigo_Int;
  cmbServicoExecutado.SetFocus;
end;

procedure TFrmOrdens_Servicos.SelDefeitosBeforeOpen(DataSet: TDataSet);
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

end.





