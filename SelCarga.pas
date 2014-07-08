  unit SelCarga;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBGrid, dxDBTLCl, dxGrClms, dxDBCtrl, dxExEdtr, dxEdLib, dxCntner,
  dxEditor, StdCtrls,   dxTLClms, dxTL,  
  ExtCtrls,   dxBar, ActnList, Db, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppVar, ppPrnabl, ppBands,
  ppCache, ppStrtch, ppMemo, FileCtrl, cxPropertiesStore, Variants,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Menus, dxSkinsdxBarPainter,
  ppParameter, cxClasses, cxButtons, cxPC, cxLabel, cxGroupBox;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmSelCarga = class(TForm)
    Panel6: TPanel;
    LblTitulo: TLabel;
    b2: TBevel;
    Image1: TImage;
    Panel1: TPanel;
    pc: TcxPageControl;
    tabVenda: TcxTabSheet;
    Panel10: TPanel;
    Panel11: TPanel;
    Actions: TActionList;
    ActFechar: TAction;
    ActBaixarCarregamento: TAction;
    ActCancelarCarregamento: TAction;
    BarMgr: TdxBarManager;
    BtnFechar: TdxBarButton;
    DataSource: TDataSource;
    tabFormarCarga: TcxTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    gridFormacao: TdxDBGrid;
    gridCargaFinalizada: TdxDBGrid;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel13: TPanel;
    gridFormacaoItens: TdxDBGrid;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    dsCargaFinalizada: TDataSource;
    dsItemFormacao: TDataSource;
    dsFormacao: TDataSource;
    RzBitBtn3: TcxButton;
    RzBitBtn5: TcxButton;
    RzBitBtn6: TcxButton;
    ActNovoFormacao: TAction;
    ActCancelarFormacao: TAction;
    ActAdicionarCarga: TAction;
    ActRetirarCarga: TAction;
    ActSalvarFormacao: TAction;
    ActDadosEntrega: TAction;
    ActAjusteCarga: TAction;
    ActListagemProduto: TAction;
    ppListagemProdutos: TppDBPipeline;
    rptListagemProdutos: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
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
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine5: TppLine;
    ActImprimirRota: TAction;
    ppRota: TppDBPipeline;
    rptRota: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppDBText7: TppDBText;
    ppLabel9: TppLabel;
    ppDBText8: TppDBText;
    ppLabel10: TppLabel;
    ppDBText10: TppDBText;
    ppLabel12: TppLabel;
    ppDBText11: TppDBText;
    ppLabel13: TppLabel;
    ppDBText12: TppDBText;
    ppLabel14: TppLabel;
    ppDBText13: TppDBText;
    ppLabel15: TppLabel;
    ppDBText14: TppDBText;
    ppLabel16: TppLabel;
    ppDBText15: TppDBText;
    ppLabel17: TppLabel;
    ppDBText16: TppDBText;
    ppLabel18: TppLabel;
    ppDBText17: TppDBText;
    ppLabel19: TppLabel;
    ppDBText18: TppDBText;
    ppLabel21: TppLabel;
    ppDBText19: TppDBText;
    ppLabel22: TppLabel;
    ppDBText20: TppDBText;
    ppLabel23: TppLabel;
    ppDBText22: TppDBText;
    ppLabel25: TppLabel;
    ppLine7: TppLine;
    ppLine9: TppLine;
    RzGroupBox2: TcxGroupBox;
    RzPanel1: TPanel;
    RzPanel2: TPanel;
    RzPanel3: TPanel;
    RzBitBtn9: TcxButton;
    ActConcluirFormacao: TAction;
    RzBitBtn7: TcxButton;
    RzBitBtn8: TcxButton;
    ActImpRequisicao: TAction;
    ppSystemVariable7: TppSystemVariable;
    ppDBText131: TppDBText;
    ppDBText132: TppDBText;
    ppDBText133: TppDBText;
    ppDBText134: TppDBText;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppDBText135: TppDBText;
    ppDBText136: TppDBText;
    ppDBText137: TppDBText;
    ppLabel66: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppLabel67: TppLabel;
    ppDBText138: TppDBText;
    ppDBText139: TppDBText;
    ppLabel68: TppLabel;
    ppDBText140: TppDBText;
    ppLabel69: TppLabel;
    ppDBText142: TppDBText;
    ppDBText143: TppDBText;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLine8: TppLine;
    ppLine6: TppLine;
    ppLabel80: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel87: TppLabel;
    ppDBText145: TppDBText;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppDBText146: TppDBText;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLine12: TppLine;
    ppLine10: TppLine;
    ppLabel8: TppLabel;
    ppLabel11: TppLabel;
    ppLabel20: TppLabel;
    ppLabel24: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppLabel33: TppLabel;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppLabel34: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel35: TppLabel;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppLabel36: TppLabel;
    ppDBText34: TppDBText;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLine11: TppLine;
    ppLine1: TppLine;
    ppLine4: TppLine;
    ppDBMemo1: TppDBMemo;
    RzBitBtn23: TcxButton;
    RzBitBtn24: TcxButton;
    RzBitBtn22: TcxButton;
    ActConfCampos: TAction;
    ActExportarExcel: TAction;
    SaveDialog: TSaveDialog;
    ActExportarHtml: TAction;
    stgFormacaoCarga: TcxPropertiesStore;
    RzBitBtn16: TcxButton;
    RzBitBtn15: TcxButton;
    Panel14: TPanel;
    pnlCampos: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    Panel15: TPanel;
    Panel12: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    lblnome: TLabel;
    Label15: TLabel;
    Label12: TLabel;
    edDtFutura: TdxDateEdit;
    edNDocto: TdxEdit;
    cmbStatusCarregamento: TdxPickEdit;
    CmbCliente: TdxButtonEdit;
    GroupLeg: TcxGroupBox;
    RzPanel4: TPanel;
    RzPanel5: TPanel;
    RzPanel6: TPanel;
    ActCarregar: TAction;
    ActCancelarCarga: TAction;
    ActConfirmarEntrega: TAction;
    ActDadosCarga: TAction;
    ActDevolucao: TAction;
    GRID_ITEM: TdxDBGrid;
    TabOrdemCarga: TcxTabSheet;
    Panel16: TPanel;
    GRID: TdxDBGrid;
    DataSourceItens: TDataSource;
    GRID_ITEMCODIGO: TdxDBGridMaskColumn;
    GRID_ITEMPRODUTO: TdxDBGridMaskColumn;
    GRID_ITEMSEQUENCIA: TdxDBGridMaskColumn;
    GRID_ITEMQUANTIDADE: TdxDBGridMaskColumn;
    GRID_ITEMPRC_UNITARIO: TdxDBGridMaskColumn;
    GRID_ITEMDESCONTO: TdxDBGridMaskColumn;
    GRID_ITEMPORC_DESC: TdxDBGridMaskColumn;
    GRID_ITEMUNIDADE: TdxDBGridMaskColumn;
    GRID_ITEMPRC_UNIT_ORIGINAL: TdxDBGridMaskColumn;
    GRID_ITEMNOME_PRODUTO: TdxDBGridMaskColumn;
    GRID_ITEMGRADE: TdxDBGridMaskColumn;
    GRID_ITEMNUMERO: TdxDBGridMaskColumn;
    GRID_ITEMGRADE1: TdxDBGridMaskColumn;
    GRID_ITEMNOME_COR: TdxDBGridMaskColumn;
    GRID_ITEMNOME_MATERIAL: TdxDBGridMaskColumn;
    GRID_ITEMNOME_PERFIL: TdxDBGridMaskColumn;
    Panel17: TPanel;
    RzBitBtn11: TcxButton;
    RzBitBtn12: TcxButton;
    RzBitBtn13: TcxButton;
    RzBitBtn27: TcxButton;
    RzBitBtn28: TcxButton;
    dsOC: TDataSource;
    dsOCItens: TDataSource;
    Panel19: TPanel;
    RzGroupBox1: TcxGroupBox;
    RzPanel7: TPanel;
    RzPanel8: TPanel;
    RzPanel10: TPanel;
    RzPanel9: TPanel;
    RzPanel11: TPanel;
    gridOC: TdxDBGrid;
    gridOCItens: TdxDBGrid;
    Panel21: TPanel;
    Label1: TLabel;
    lblnome2: TLabel;
    CmbCliente2: TdxButtonEdit;
    Panel22: TPanel;
    GRID_ITEMCARREGADO: TdxDBGridColumn;
    GRID_ITEMENTREGUE: TdxDBGridColumn;
    GRID_ITEMDEVOLVIDO: TdxDBGridColumn;
    Panel18: TPanel;
    gridFormacaoCNPJ: TdxDBGridMaskColumn;
    gridFormacaoCODIGO: TdxDBGridMaskColumn;
    gridFormacaoNOME_MOTORISTA: TdxDBGridMaskColumn;
    gridFormacaoSTATUS: TdxDBGridMaskColumn;
    gridFormacaoUSUARIO: TdxDBGridMaskColumn;
    gridFormacaoLOGRADOURO: TdxDBGridMaskColumn;
    gridFormacaoCIDADE: TdxDBGridMaskColumn;
    gridFormacaoBAIRRO: TdxDBGridMaskColumn;
    gridFormacaoNUMERO: TdxDBGridMaskColumn;
    gridFormacaoFONE: TdxDBGridMaskColumn;
    gridFormacaoCNPJ_CPF: TdxDBGridMaskColumn;
    gridFormacaoIE_RG: TdxDBGridMaskColumn;
    gridCargaFinalizadaCNPJ: TdxDBGridMaskColumn;
    gridCargaFinalizadaCODIGO_VND: TdxDBGridMaskColumn;
    gridCargaFinalizadaCODIGO: TdxDBGridMaskColumn;
    gridCargaFinalizadaDATA: TdxDBGridDateColumn;
    gridCargaFinalizadaSTATUS: TdxDBGridMaskColumn;
    gridCargaFinalizadaPESO_BRUTO: TdxDBGridMaskColumn;
    gridCargaFinalizadaPESO_LIQUIDO: TdxDBGridMaskColumn;
    gridCargaFinalizadaUSUARIO: TdxDBGridMaskColumn;
    gridCargaFinalizadaDT_ENTREGA: TdxDBGridDateColumn;
    gridCargaFinalizadaHR_ENTREGA: TdxDBGridTimeColumn;
    gridCargaFinalizadaNOME_RECEBEDOR: TdxDBGridMaskColumn;
    gridCargaFinalizadaLOGRADOURO: TdxDBGridMaskColumn;
    gridCargaFinalizadaNUMERO: TdxDBGridMaskColumn;
    gridCargaFinalizadaBAIRRO: TdxDBGridMaskColumn;
    gridCargaFinalizadaCOMPLEMENTO: TdxDBGridMaskColumn;
    gridCargaFinalizadaCEP: TdxDBGridMaskColumn;
    gridCargaFinalizadaCIDADE: TdxDBGridMaskColumn;
    gridCargaFinalizadaUF: TdxDBGridMaskColumn;
    gridCargaFinalizadaOBSERVACAO: TdxDBGridBlobColumn;
    gridCargaFinalizadaPSA_NOME_RAZAO: TdxDBGridMaskColumn;
    gridCargaFinalizadaPSA_FANTASIA: TdxDBGridMaskColumn;
    gridCargaFinalizadaVD_PESSOA_FJ: TdxDBGridMaskColumn;
    gridCargaFinalizadaVD_CODIGO: TdxDBGridMaskColumn;
    gridCargaFinalizadaVD_DATA: TdxDBGridDateColumn;
    gridCargaFinalizadaVD_DATA_CAIXA: TdxDBGridDateColumn;
    gridCargaFinalizadaVD_OBSERVACAO: TdxDBGridMaskColumn;
    gridCargaFinalizadaVD_VOLUME: TdxDBGridMaskColumn;
    gridCargaFinalizadaVD_PESO: TdxDBGridMaskColumn;
    gridCargaFinalizadaVD_NOME_CONSUMIDOR: TdxDBGridMaskColumn;
    gridCargaFinalizadaPSA_CELULAR: TdxDBGridMaskColumn;
    gridCargaFinalizadaPSA_FAX: TdxDBGridMaskColumn;
    gridCargaFinalizadaPSA_FONE: TdxDBGridMaskColumn;
    gridCargaFinalizadaPSA_CPF_CGC: TdxDBGridMaskColumn;
    gridCargaFinalizadaPSA_RG_IE: TdxDBGridMaskColumn;
    gridOCItensCARREGADO: TdxDBGridMaskColumn;
    gridOCItensCNPJ: TdxDBGridMaskColumn;
    gridOCItensCODIGO: TdxDBGridMaskColumn;
    gridOCItensENTREGUE: TdxDBGridMaskColumn;
    gridOCItensGRADE: TdxDBGridMaskColumn;
    gridOCItensNOME_PRODUTO: TdxDBGridMaskColumn;
    gridOCItensNUMERO: TdxDBGridMaskColumn;
    gridOCItensPRODUTO: TdxDBGridMaskColumn;
    gridOCItensQUANTIDADE: TdxDBGridMaskColumn;
    gridOCItensSEQUENCIA: TdxDBGridMaskColumn;
    gridOCItensUNIDADE: TdxDBGridMaskColumn;
    gridOCItensDEVOLVIDO: TdxDBGridMaskColumn;
    gridOCCNPJ: TdxDBGridMaskColumn;
    gridOCCODIGO_VND: TdxDBGridMaskColumn;
    gridOCCODIGO: TdxDBGridMaskColumn;
    gridOCDATA: TdxDBGridDateColumn;
    gridOCSTATUS: TdxDBGridMaskColumn;
    gridOCPESO_BRUTO: TdxDBGridMaskColumn;
    gridOCPESO_LIQUIDO: TdxDBGridMaskColumn;
    gridOCUSUARIO: TdxDBGridMaskColumn;
    gridOCDT_ENTREGA: TdxDBGridDateColumn;
    gridOCHR_ENTREGA: TdxDBGridTimeColumn;
    gridOCNOME_RECEBEDOR: TdxDBGridMaskColumn;
    gridOCLOGRADOURO: TdxDBGridMaskColumn;
    gridOCNUMERO: TdxDBGridMaskColumn;
    gridOCBAIRRO: TdxDBGridMaskColumn;
    gridOCCOMPLEMENTO: TdxDBGridMaskColumn;
    gridOCCEP: TdxDBGridMaskColumn;
    gridOCCIDADE: TdxDBGridMaskColumn;
    gridOCUF: TdxDBGridMaskColumn;
    gridOCOBSERVACAO: TdxDBGridBlobColumn;
    gridOCPSA_NOME_RAZAO: TdxDBGridMaskColumn;
    gridOCPSA_FANTASIA: TdxDBGridMaskColumn;
    gridOCVD_PESSOA_FJ: TdxDBGridMaskColumn;
    gridOCVD_CODIGO: TdxDBGridMaskColumn;
    gridOCVD_DATA: TdxDBGridDateColumn;
    gridOCVD_DATA_CAIXA: TdxDBGridDateColumn;
    gridOCVD_OBSERVACAO: TdxDBGridMaskColumn;
    gridOCVD_VOLUME: TdxDBGridMaskColumn;
    gridOCVD_PESO: TdxDBGridMaskColumn;
    gridOCVD_NOME_CONSUMIDOR: TdxDBGridMaskColumn;
    gridOCPSA_CELULAR: TdxDBGridMaskColumn;
    gridOCPSA_FAX: TdxDBGridMaskColumn;
    gridOCPSA_FONE: TdxDBGridMaskColumn;
    gridOCPSA_CPF_CGC: TdxDBGridMaskColumn;
    gridOCPSA_RG_IE: TdxDBGridMaskColumn;
    GRIDSELECIONADA: TdxDBGridMaskColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDTOTAL: TdxDBGridMaskColumn;
    GRIDFECHADA: TdxDBGridMaskColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDVENDEDOR: TdxDBGridMaskColumn;
    GRIDNOMEVENDEDOR: TdxDBGridMaskColumn;
    GRIDUSUARIO: TdxDBGridMaskColumn;
    GRIDDATA_CAIXA: TdxDBGridDateColumn;
    GRIDCONTA_CAIXA: TdxDBGridMaskColumn;
    GRIDNUM_NF: TdxDBGridMaskColumn;
    GRIDNUM_CUPOM: TdxDBGridMaskColumn;
    GRIDNATUREZA: TdxDBGridMaskColumn;
    GRIDNOMENATUREZA: TdxDBGridMaskColumn;
    GRIDTIPO_VENDA: TdxDBGridMaskColumn;
    GRIDNOME_CONSUMIDOR: TdxDBGridMaskColumn;
    GRIDVLR_TOTAL: TdxDBGridMaskColumn;
    GRIDDESC_ACRES: TdxDBGridMaskColumn;
    GRIDOBSERVACAO: TdxDBGridMaskColumn;
    GRIDORCAMENTO: TdxDBGridMaskColumn;
    GRIDLOCAL: TdxDBGridMaskColumn;
    GRIDCANCELADA: TdxDBGridMaskColumn;
    GRIDCARGA: TdxDBGridMaskColumn;
    GRIDSERIE: TdxDBGridMaskColumn;
    GRIDSTATUS_CARREGAMENTO: TdxDBGridMaskColumn;
    GRIDORDEM_CARGA: TdxDBGridMaskColumn;
    GRIDENTREGA_FUTURA: TdxDBGridMaskColumn;
    gridFormacaoItensCNPJ: TdxDBGridMaskColumn;
    gridFormacaoItensCODIGO: TdxDBGridMaskColumn;
    gridFormacaoItensCRG_CARGA: TdxDBGridMaskColumn;
    gridOCItensLOTE: TdxDBGridColumn;
    gridOCItensCODIGO_LOTE: TdxDBGridColumn;
    gridOCItensMATERIAL: TdxDBGridColumn;
    gridOCItensPERFIL: TdxDBGridColumn;
    gridOCItensCOR: TdxDBGridColumn;
    GRID_ITEMCODIGO_LOTE: TdxDBGridColumn;
    GRID_ITEMLOTE: TdxDBGridColumn;
    procedure ActFecharExecute(Sender: TObject);
    procedure ActBaixarCarregamentoExecute(Sender: TObject);
    procedure Panel12Enter(Sender: TObject);
    procedure FiltrarCarga;
    procedure HabilitaAction;
    procedure HabilitaActionOrdemCarga;
    procedure CmbClienteButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure CmbClienteEnter(Sender: TObject);
    procedure CmbClienteExit(Sender: TObject);
    procedure edDtFuturaExit(Sender: TObject);
    procedure CmbClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActNovoFormacaoExecute(Sender: TObject);
    procedure ActCancelarFormacaoExecute(Sender: TObject);
    procedure ActAdicionarCargaExecute(Sender: TObject);
    procedure ActRetirarCargaExecute(Sender: TObject);
    procedure dsFormacaoDataChange(Sender: TObject; Field: TField);
    procedure ActSalvarFormacaoExecute(Sender: TObject);
    procedure ActDadosEntregaExecute(Sender: TObject);
    procedure ActAjusteCargaExecute(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);    
    procedure GRIDCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: String; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure ActListagemProdutoExecute(Sender: TObject);
    procedure gridFormacaoCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: String; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    PROCEDURE HabilitaActionFormacao;
    procedure pcChange(Sender: TObject);
    procedure ActImprimirRotaExecute(Sender: TObject);
    procedure ActConcluirFormacaoExecute(Sender: TObject);
    procedure ActImpRequisicaoExecute(Sender: TObject);
    procedure gridCargaFinalizadaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Synchronize;
    procedure ActConfCamposExecute(Sender: TObject);
    procedure ActExportarExcelExecute(Sender: TObject);
    procedure ActExportarHtmlExecute(Sender: TObject);
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TLCustomizeStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure ActCarregarExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tabFormarCargaShow(Sender: TObject);
    procedure ActDevolucaoExecute(Sender: TObject);
    procedure ActCancelarCargaExecute(Sender: TObject);
    procedure ActConfirmarEntregaExecute(Sender: TObject);
    procedure TabOrdemCargaExit(Sender: TObject);
    procedure CmbCliente2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure CmbCliente2Exit(Sender: TObject);
    procedure Panel21Enter(Sender: TObject);
    procedure dsOCDataChange(Sender: TObject; Field: TField);
    procedure tabVendaExit(Sender: TObject);
    procedure tabFormarCargaExit(Sender: TObject);
    procedure gridOCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabOrdemCargaEnter(Sender: TObject);
    procedure tabVendaEnter(Sender: TObject);
    procedure gridOCEnter(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure RzBitBtn4Click(Sender: TObject);
    procedure RzBitBtn10Click(Sender: TObject);
  private
    DragNode: TdxTreeListNode;
    Procedure FiltrarEntregaFutura;      
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelCarga: TFrmSelCarga;

implementation

uses Main, Vendas_DM2, OrdemCarga_DM, Vendas_Dm, Localizar_Cliente,
  Usuarios_DM, Application_DM, Funcoes;
{$R *.DFM}

procedure TFrmSelCarga.ActFecharExecute(Sender: TObject);
begin
    If pc.ActivePageIndex <> 0 Then
        pc.ActivePageIndex := 0
    Else
    Begin
        If FrmSelCarga.FormStyle = fsMDIChild Then
          FrmMain.opFechar.OnClick(FrmMain.opFechar)
    Else
        Close;
    End;
end;

procedure TFrmSelCarga.ActBaixarCarregamentoExecute(Sender: TObject);
begin
    DmOrdemCarga.Proc_Confirma_Carga(GRIDCODIGO.Field.Value);
end;

procedure TFrmSelCarga.Panel12Enter(Sender: TObject);
begin
  DataSource.DataSet.Close;
  DataSourceItens.DataSet.Close;
end;

procedure TFrmSelCarga.FiltrarCarga;
Var
   sFiltro : string;
Begin
  sFiltro := '';

    DmOrdemCarga.OrdemCarga.Close;
    DmOrdemCarga.OrdemCarga.SelectSQL.text :=' select cgr.*, psa.nome_razao psa_nome_razao, '+
            ' psa.FANTASIA psa_FANTASIA, vd.pessoa_fj vd_pessoa_fj, vd.codigo vd_codigo, '+
            ' vd.data vd_data,vd.data_caixa vd_data_caixa,VD.observacao VD_observacao,VD.volume VD_volume, '+
            ' VD.peso VD_peso,vd.nome_consumidor vd_nome_consumidor,psa.celular psa_celular,psa.fax psa_fax, '+
            ' psa.fone psa_fone,psa.cpf_cgc psa_cpf_cgc,PSA.rg_ie PSA_rg_ie from CRG_ORDEM_CARGA cgr '+
            ' inner join fat_vendas        vd    on (vd.codigo     = cgr.codigo_vnd and vd.cnpj = cgr.cnpj) '+
            ' inner join glo_pessoas_fj    psa   on (psa.codigo    = vd.pessoa_fj  and psa.cnpj = vd.cnpj  ) ';


    //-------- Cliente ---------//
    If trim(CmbCliente2.Text) <> '' Then
    Begin
      if sFiltro <> '' then
        sFiltro := sFiltro + ' and ';
      sfiltro := sfiltro + ' vd.pessoa_fj ='+DMVendas.SelPessoasFJCodigo.asstring;
    end;

    //-------- Filtro de Data ---------//
{    If edDtFutura.date > 0 Then
    begin
      if sFiltro <> '' then
        sFiltro := sFiltro + ' and ';
      sfiltro := sfiltro +  ' DATA ='''+formatdatetime('mm/dd/yyyy',edDtFutura.Date)+'''';
    end ;

    //-------- Numero do Documento ---------//
    If Trim(edNDocto.Text) <> '' Then
    begin
       if sFiltro <> '' then
        sFiltro := sFiltro + ' and ';
      sfiltro := sfiltro +  ' CODIGO ='+trim(edNDocto.Text);
    end;

    if cmbStatus.text = 'Cancelado' then
    begin
      if sFiltro <> '' then
        sFiltro := sFiltro + ' and ';
      sfiltro := sfiltro +  ' STATUS = -1';
    end
    else
    if cmbStatus.text = 'Aberto' then
    begin
      if sFiltro <> '' then
        sFiltro := sFiltro + ' and ';
      sfiltro := sfiltro +  ' STATUS = 0';
    end
    else
    if cmbStatus.text = 'a Carregar' then
    begin
      if sFiltro <> '' then
        sFiltro := sFiltro + ' and ';
      sfiltro := sfiltro +  ' STATUS = 1';
    end
    else
    if cmbStatus.text = 'a Entregar' then
    begin
      if sFiltro <> '' then
        sFiltro := sFiltro + ' and ';
      sfiltro := sfiltro +  ' STATUS = 2';
    end
    else
    if cmbStatus.text = 'Parcialmente Carregado' then
    begin
      if sFiltro <> '' then
        sFiltro := sFiltro + ' and ';
      sfiltro := sfiltro +  ' STATUS = 3';
    end
    else
    if cmbStatus.text = 'Carregado' then
    begin
      if sFiltro <> '' then
        sFiltro := sFiltro + ' and ';
      sfiltro := sfiltro +  ' STATUS = 5';
    end
    else
    begin
      cmbStatus.text := 'Todos';
    end;
                 }
    //-------- Adiciona Filtro ---------//
    if sFiltro <> '' then
      DmOrdemCarga.OrdemCarga.selectsql.Add (' where '+sfiltro);
    DmOrdemCarga.OrdemCarga.selectsql.Add ( ' order by cgr.CODIGO ' );

    DmOrdemCarga.OrdemCarga.open;

    //-------- Habilita Action ---------//
    HabilitaActionOrdemCarga;
    gridOC.SETFOCUS;
end;

procedure TFrmSelCarga.HabilitaAction;
begin
{* ---------- [ Legenda - CARGA] ---------
   -1 - Cancelado

   1 - a Carregar
   2 - a Entregar
   3 - Parcialmente Carregado
   4 - Parcialmente Entregue
   5 - Carregado
   6 - Entregue
   --------------------------------------- *}
    ActAjusteCarga.Enabled   := DmOrdemCarga.OrdemCargaSTATUS.value in [3,4];
end;

procedure TFrmSelCarga.CmbClienteButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
     //-- Chama Listagem de Cliente
     if Frm_Localizar_Cliente = nil then
       Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;
     Frm_Localizar_Cliente.DSource.dataset := DmVendas.SelPessoasFJ ;

     if (Frm_Localizar_Cliente.showmodal = mrOk ) Then
     Begin
       CmbCliente.Text := IntToStr(Frm_Localizar_Cliente.CampTrecho);
       lblnome.Caption := DMVendas.SelPessoasFJNOME_RAZAO.value;
     end
end;

procedure TFrmSelCarga.CmbClienteEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmSelCarga.CmbClienteExit(Sender: TObject);
begin
    //Troca Cor de Fundo
    TiraCorFundo ( Sender );
    //-- Chama Listagem de Cliente
    If Trim(CmbCliente.Text) <> '' then
    begin
       If DmVendas.SelPessoasFJ.locate ( 'CODIGO', CmbCliente.Text, [] )then
       begin
            CmbCliente.Text  := DMVendas.SelPessoasFJCodigo.Text      ;
            lblnome.Caption  := DMVendas.SelPessoasFJNOME_RAZAO.value ;
       end
       else begin
            CmbCliente.Text  := '' ;
            lblnome.Caption  := '' ;
       end;
    end
    else begin
       CmbCliente.Text  := ''  ;
       lblnome.Caption  := ''  ;
    end;

end;

procedure TFrmSelCarga.edDtFuturaExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmSelCarga.CmbClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //--> Evento para pular de Campo
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
  Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
       If Self.ActiveControl = pc Then
          Perform(WM_NEXTDLGCTL, 0, 0);
  End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmSelCarga.FormActivate(Sender: TObject);
begin
    FrmSelCarga.WindowState := wsMaximized;
end;

procedure TFrmSelCarga.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  Diretorio : string;
begin
     If MessageDlg('Deseja Sair da Tela de Ordem de Carga ?', mtConfirmation, [mbOK, mbCancel], 0) = MROK THEN
     BEGIN
          //
          If DataSource.DataSet.Tag = 0 Then
            DataSource.DataSet.Close;

          Frm_Localizar_Cliente.Free ;
          Frm_Localizar_Cliente := Nil ;
          //
          Action := caFree;
          FrmSelCarga := Nil;
     END
     ELSE BEGIN
          Action := CaNone ;
     END;
     Diretorio := 'C:\Sistemas\HelpStore\FILTROS';
     if not DirectoryExists(Diretorio) then
     begin
       ForceDirectories(Diretorio);
       MessageDlg('Foi criado uma pasta de Filtros: '+Diretorio, mtInformation, [mbOK], 0);
     end;
     SavedbGridFilterToFile('C:\Sistemas\HelpStore\filtros\FiltroGrdVendaFutura.txt',Grid.Filter);
     close;
end;

procedure TFrmSelCarga.FormCreate(Sender: TObject);
begin
  //-- Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  Synchronize;
  if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGrdVendaFutura.txt') then
    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGrdVendaFutura.txt',GRID.Filter);
end;

procedure TFrmSelCarga.FormShow(Sender: TObject);
begin
  Pc.ActivePageIndex := 0;
  CmbCliente.setfocus;
end;

procedure TFrmSelCarga.ActNovoFormacaoExecute(Sender: TObject);
begin
  dsFormacao.dataset.insert;
end;

procedure TFrmSelCarga.ActCancelarFormacaoExecute(Sender: TObject);
begin
  dsFormacao.dataset.cancel;
end;

procedure TFrmSelCarga.ActAdicionarCargaExecute(Sender: TObject);
begin
  if DMORDEMCARGA.OrdemCargaFormacaoCODIGO.value > 0 then
  begin
    //-- Adiciona Carga
    DmOrdemCarga.FormacaoItens.insert;
    DmOrdemCarga.FormacaoItenscnpj.value      := dmapp.cnpj;
    DmOrdemCarga.FormacaoItensCODIGO.value    := DmOrdemCarga.FormacaoCODIGO.value;
    DmOrdemCarga.FormacaoItensCRG_CARGA.value := DmOrdemCarga.OrdemCargaFormacaoCODIGO.value;
    DmOrdemCarga.FormacaoItens.post;
    //-- Atualiza Cargas
    DmOrdemCarga.OpenOrdemCargaFinalizado;
  end
  else begin
    MessageDlg('Nenhuma ordem de carga foi selecionada! ', mtInformation, [mbOK], 0);
  end;
end;

procedure TFrmSelCarga.ActRetirarCargaExecute(Sender: TObject);
begin
  //-- Retira Carga
  DmOrdemCarga.FormacaoItens.delete;
  //-- Atualiza Cargas
  DmOrdemCarga.OpenOrdemCargaFinalizado;
end;

procedure TFrmSelCarga.dsFormacaoDataChange(Sender: TObject;
  Field: TField);
begin
  //-- Atualiza Itens da Formação de Carga e Atualiza Actions
  DmOrdemCarga.OpenFormacaoItens(DmOrdemCarga.FormacaoCODIGO.VALUE);
  HabilitaActionFormacao;
end;

procedure TFrmSelCarga.ActSalvarFormacaoExecute(Sender: TObject);
begin
  dsFormacao.dataset.post;
end;

procedure TFrmSelCarga.ActDadosEntregaExecute(Sender: TObject);
begin
  //-- Preenchimento dos Dados do local de Entrega, como: Endereço, bairro,etc;
  DmOrdemCarga.FichaCarga(DmOrdemCarga.OrdemCargaCODIGO.VALUE);
  gridOC.SETFOCUS;
end;

procedure TFrmSelCarga.ActAjusteCargaExecute(Sender: TObject);
begin
  //-- Ajusta o "Carrregamento Parcial" para "Finalizado"
  DmOrdemCarga.AjustaOrdemCarga;
end;

procedure TFrmSelCarga.GRIDCustomDraw(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
  const AText: String; AFont: TFont; var AColor: TColor; ASelected,
  AFocused: Boolean; var ADone: Boolean);
var
  Value: variant;
begin
{* ---------- [ Legenda - VENDA] -----[ Cor ]-----------
     -1 - Cancelado                     = VERMELHO
      0 - Aberto                        = BRANCO
      3 - Parcialmente Carregado        = LARANJA
      4 - Parcialmente Entregue         = LARANJA
      5 - Carregado                     = VERMELHO
      6 - Entregue                      = VERMELHO
   -----------------------------------------------------  *}
  if ANode.HasChildren then
    Exit;

  if not ASelected then
  begin
    //Verifica qual aba está aberta
    if pc.activepage = tabVenda then
        Value           := ANode.Values[GRIDSTATUS_CARREGAMENTO.index];
    if pc.activepage = TabOrdemCarga then
        Value           := ANode.Values[gridOCSTATUS.index];


    if (not VarIsNull(Value)) then
    begin
        if (strtoint(Value) in [0] ) then
          AColor := clwhite
        else
        if (strtoint(Value) in [1,2] ) then
          AColor := clwhite//$00E9B678
        else
        if (strtoint(Value) in [3,4] ) then
          AColor := $003C9DFF
        else
        if (strtoint(Value) in [5,6] ) then
          AColor := $00A6FFA6
        else
        if (strtoint(Value) in [7] ) then
          AColor := $002BFFFF
        else
        begin
            if (strtoint(Value) in [8] ) then
              AColor := $007171FF;
        end;
    end else
        AColor := clwhite;
  end;
end;

procedure TFrmSelCarga.ActListagemProdutoExecute(Sender: TObject);
begin
  //-- Listagem de todos os produtos da Formação de Carga
  DmOrdemCarga.qProdutosFormacaoOpen(DmOrdemCarga.FormacaoCODIGO.VALUE);
  rptListagemProdutos.print;
end;

procedure TFrmSelCarga.gridFormacaoCustomDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxDBTreeListColumn; const AText: String; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
var
  Value: variant;
begin
{* ---------- [ Legenda - FORMACAO CARGA] -----[ Cor ]-----------
      1 - FORMANDO CARGA                = branco
      2 - ENTREGA PENDENTE              = LARANJA  $003C9DFF
      3 - FINALIZADO                    = VERDE
   -------------------------------------------------------------- *}
  if ANode.HasChildren then
    Exit;

  if not ASelected then
  begin
    Value           := ANode.Values[gridFormacaoSTATUS.index];

    if (not VarIsNull(Value)) then
    begin
        if (strtoint(Value) in [1] ) then
          AColor := clWhite
        else
        if (strtoint(Value) in [2] ) then
          AColor := $003C9DFF
        else
        if (strtoint(Value) in [3] ) then
          AColor := $00A6FFA6
        else
          AColor := $003C9DFF
    end else
        AColor := $003C9DFF;
  end;
end;

procedure TFrmSelCarga.HabilitaActionFormacao;
begin
  //-- Desabilita Action Aba "Formação"
  ActNovoFormacao.Enabled     := false;
  ActSalvarFormacao.Enabled   := false;
  ActCancelarFormacao.Enabled := false;
  ActListagemProduto.Enabled  := false;
  ActConcluirFormacao.Enabled := false;
  if pc.activepage = tabFormarCarga then
  begin
      ActNovoFormacao.Enabled     := DmOrdemCarga.Formacao.state in [dsbrowse];
      ActSalvarFormacao.Enabled   := DmOrdemCarga.Formacao.state in [dsedit,dsinsert];
      ActCancelarFormacao.Enabled := DmOrdemCarga.Formacao.state in [dsedit,dsinsert];
      ActListagemProduto.Enabled  := DmOrdemCarga.Formacao.state in [dsbrowse];
      //-- Adiciona Carga somente se Status = "Formando"
      ActAdicionarCarga.Enabled   := (DmOrdemCarga.Formacao.state in [dsbrowse])AND
                                     (DmOrdemCarga.FormacaoSTATUS.VALUE = 1);
      //-- Retira Carga somente se Status = "Formando"
      ActRetirarCarga.Enabled     := (DmOrdemCarga.Formacao.state in [dsbrowse])AND
                                     (DmOrdemCarga.FormacaoSTATUS.VALUE = 1);
      //-- Troca de Status = "Formando" -> "Entrega Pendente" -> "Finalizado"
      ActConcluirFormacao.Enabled := (DmOrdemCarga.Formacao.state in [dsbrowse]);
  end;
end;

procedure TFrmSelCarga.pcChange(Sender: TObject);
begin
  //-- Caso Mudar de Aba Seta o Focus na Grid e Atualiza Actions
  if pc.activepage = tabFormarCarga then
  begin
      HabilitaActionFormacao;
      gridFormacao.setfocus;
  end;
  if pc.activepage = tabVenda then
  begin
      GRID.setfocus;
  end;
  if pc.activepage = TabOrdemCarga then
  begin
      CmbCliente2.setfocus;
  end;
end;

procedure TFrmSelCarga.ActImprimirRotaExecute(Sender: TObject);
begin
  //-- Listagem de Carga a Serem Entregue. Dados do local de entrega e ordenado por "Data e Hora"
  DmOrdemCarga.qRotaOpen(DmOrdemCarga.FormacaoCODIGO.VALUE);
  rptRota.PRINT;
end;

procedure TFrmSelCarga.ActConcluirFormacaoExecute(Sender: TObject);
VAR
  nextStatus : string;
begin
{ -----------[ STATUS ]------------------
  1 - FORMANDO CARGA
  2 - ENTREGA PENDENTE
  3 - FINALIZADO
  --------------------------------------- }
  nextStatus := DmOrdemCarga.FormacaoSTATUS.asstring;
  if DmOrdemCarga.FormacaoSTATUS.VALUE = 1 then
    nextStatus := '2'
  else
  if DmOrdemCarga.FormacaoSTATUS.VALUE = 2 then
    nextStatus := '3'
  else
  begin
     if application.messagebox('Deseja Realmente Voltar para o Status "FORMANDO CARGA" ?','Aviso', mb_iconquestion + MB_YESNO ) = id_yes then
     begin
        if DmOrdemCarga.SenhaGerencial = true then
          nextStatus := '1'
        else
          abort;
     end else
        abort;
  end;

  //-- Atualiza Status = "Formação"
  ExecSql('UPDATE CRG_FORMAR_CARGA SET  STATUS = '+nextStatus+', USUARIO = '+INTTOSTR(dmapp.USR_CONECTADO) +'  WHERE CODIGO = '+ DmOrdemCarga.FormacaoCODIGO.AsString +
  ' and CNPJ ='''+dmapp.Cnpj+'''',DmOrdemCarga.Formacao.transaction);

  //-- Listagem de todos os produtos da Formação de Carga
  if(nextStatus = '3')and( application.messagebox('Deseja Imprimir "Listagem de Produtos" ?','Aviso', mb_iconquestion + MB_YESNO ) = id_yes )then
    ActListagemProdutoExecute(sender);

  //-- Listagem de Carga a Serem Entregue. Dados do local de entrega e ordenado por "Data e Hora"
  if(nextStatus = '3')and( application.messagebox('Deseja Imprimir "Rota" ?','Aviso', mb_iconquestion + MB_YESNO ) = id_yes) then
    ActImprimirRotaExecute(sender);

  DmOrdemCarga.OpenFormacao;
  HabilitaActionFormacao;
end;

procedure TFrmSelCarga.ActImpRequisicaoExecute(Sender: TObject);
begin
  //-- Reimpressão de Requisição "Aba-> Ordem de Carga"
  if DmOrdemCarga.OrdemCargaCODIGO.VALUE > 0 then
  begin
    if DmOrdemCarga.OrdemCargaSTATUS.VALUE IN [1,2,3,4,5,6] then
      DmOrdemCarga.ImprimirRequisicao(DmOrdemCarga.OrdemCargaCODIGO.VALUE);
    if DmOrdemCarga.OrdemCargaSTATUS.VALUE IN [7] then
      DmOrdemCarga.ImprimirDevolucao(DmOrdemCarga.OrdemCargaCODIGO.VALUE);
  end;
end;

procedure TFrmSelCarga.gridCargaFinalizadaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //-- Reimpressão de Requisição "Aba-> Formação de Carga"
  IF KEY = 13 THEN
      DmOrdemCarga.ImprimirRequisicao(DmOrdemCarga.OrdemCargaFormacaoCODIGO.VALUE);
end;

procedure TFrmSelCarga.Synchronize;
var
  I: Integer;
  Node: TdxTreeListNode;
begin
  TLCustomize.ClearNodes;
  for I := 0 to Grid.ColumnCount - 1 do
  begin
    Node := TLCustomize.Add;
    Node.Values[TLCustomizeColumn.Index] := GRID.Columns[I].Caption;
    if GRID.Columns[I].Visible then
      Node.Values[TLCustomizeIsVisible.Index] := TLCustomizeIsVisible.ValueChecked;
    Node.Data := GRID.Columns[I];
  end;
end;

procedure TFrmSelCarga.ActConfCamposExecute(Sender: TObject);
begin
  if pc.ActivePage = tabVenda then
    pnlCampos.visible := (not pnlCampos.visible);
end;

procedure TFrmSelCarga.ActExportarExcelExecute(Sender: TObject);
begin
  if pc.ActivePage = tabVenda then
    Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'ListagemOrdemCarga.xls', GRID.SaveToXLS);
end;

procedure TFrmSelCarga.Save(ADefaultExt, AFilter, AFileName: String;
  AMethod: TSaveMethod);
begin
  with SaveDialog do
  begin
    DefaultExt := ADefaultExt;
    Filter := AFilter;
    FileName := AFileName;
    if Execute then
      AMethod(FileName, true);
  end;
end;

procedure TFrmSelCarga.ActExportarHtmlExecute(Sender: TObject);
begin
  if pc.ActivePage = tabVenda then
    Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'ListagemOrdemCarga.htm', GRID.SaveToHTML);
end;

procedure TFrmSelCarga.TLCustomizeDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  column : TdxTreeListColumn;
begin
  DragNode.MoveTo(TLCustomize.FocusedNode, natlInsert);
  column := TdxTreeListColumn(DragNode.Data);
  if (TLCustomize.FocusedNode <> nil) then
    column.Index := TLCustomize.FocusedNode.AbsoluteIndex
  else column.Index := 0;
end;

procedure TFrmSelCarga.TLCustomizeDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = Sender;
end;

procedure TFrmSelCarga.TLCustomizeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrmSelCarga.TLCustomizeIsVisibleToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmSelCarga.ActCarregarExecute(Sender: TObject);
begin
    DmVendaS2.Proc_Requisicao_Venda(GRIDCODIGO.Field.Value);
end;

procedure TFrmSelCarga.FiltrarEntregaFutura;
Var
   Cont: Integer;
   sFiltro : string;
Begin
  sFiltro := '';

    DmVendas2.SelFaturaVendasFutura.Close;
    DmVendas2.SelFaturaVendasFutura.SelectSQL.text :=' SELECT * FROM VER_VENDAS ( :CNPJ, :TP ) ' ;

    //-------- Cliente ---------//
    If trim(CmbCliente.Text) <> '' Then
    Begin
      if sFiltro <> '' then
        sFiltro := sFiltro + ' and ';
      sfiltro := sfiltro + ' PESSOA_FJ ='+DMVendas.SelPessoasFJCodigo.asstring;
    end;

    //-------- Filtro de Data ---------//
    If edDtFutura.date > 0 Then
    begin
      if sFiltro <> '' then
        sFiltro := sFiltro + ' and ';
      sfiltro := sfiltro +  ' DATA ='''+formatdatetime('mm/dd/yyyy',edDtFutura.Date)+'''';
    end ;

    if sFiltro <> '' then
      sFiltro := sFiltro + ' and ';
    sFiltro := sFiltro + ' ENTREGA_FUTURA = ''S''';

    //-------- Numero do Documento ---------//
    If Trim(edNDocto.Text) <> '' Then
    begin
       if sFiltro <> '' then
        sFiltro := sFiltro + ' and ';
      sfiltro := sfiltro +  ' CODIGO ='+trim(edNDocto.Text);
    end;

{* ---------- [ Legenda - VENDA] ---------             ---------- [ Legenda - CARGA] ---------
                                                            -1 - Cancelado
      0 - Aberto
                                                             1 - a Carregar
                                                             2 - a Entregar
      3 - Parcialmente Carregado                             3 - Parcialmente Carregado
      4 - Parcialmente Entregue                              4 - Parcialmente Entregue
      5 - Carregado                                          5 - Carregado
      6 - Entregue                                           6 - Entregue
                                                             7 - Devolvido
   ---------------------------------------             ---------------------------------------  *}

    if cmbStatusCarregamento.text = 'Aberto' then
      sfiltro := sfiltro +  ' and STATUS_CARREGAMENTO = 0'
    else
    if cmbStatusCarregamento.text = 'Parcialmente Carregado' then
      sfiltro := sfiltro +  ' and STATUS_CARREGAMENTO = 3'
    else
    if cmbStatusCarregamento.text = 'Carregado' then
      sfiltro := sfiltro +  ' and STATUS_CARREGAMENTO = 5'
    else
    begin
      cmbStatusCarregamento.text := 'Todos';
    end;

    //-------- Adiciona Filtro ---------//
    if sFiltro <> '' then
      DmVendas2.SelFaturaVendasFutura.selectsql.Add (' where '+sfiltro);

    DmVendas2.SelFaturaVendasFutura.selectsql.Add ( ' order by NOME ' );
    DmVendas2.SelFaturaVendasFutura.open;

    //-------- Habilita Action ---------//
    HabilitaAction;

end;

procedure TFrmSelCarga.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  DmVendas2.OpenVendaFuturaItens(DmVendas2.SelFaturaVendasFuturaCODIGO.VALUE);
end;

procedure TFrmSelCarga.GRIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = 13 then
    DmVendaS2.Proc_Consulta_Venda(DmVendas2.SelFaturaVendasFuturaCODIGO.VALUE);
end;

procedure TFrmSelCarga.tabFormarCargaShow(Sender: TObject);
begin
  //-- Abertura de Datasets do segunda Aba
  DmOrdemCarga.OpenOrdemCargaFinalizado;
  DmOrdemCarga.OpenFormacao;
  gridFormacao.setfocus;
end;

procedure TFrmSelCarga.ActDevolucaoExecute(Sender: TObject);
begin
    DmVendaS2.Proc_Devolucao_Venda(GRIDCODIGO.Field.Value);
end;

procedure TFrmSelCarga.ActCancelarCargaExecute(Sender: TObject);
begin
    if( DmOrdemCarga.OrdemCargaSTATUS.value in [1,2,3,4,5,6]) and
    (application.messagebox('Deseja Realmente Cancelar uma Carga Entregue ?','Aviso', mb_iconquestion + MB_YESNO ) = id_yes )then
    begin
      //ORDEM_CARGA = "Cancelado"
      ExecSql('update CRG_ORDEM_CARGA set status = 8, usuario = '+ inttostr(dmapp.USR_CONECTADO) +' where CODIGO = '+ DmOrdemCarga.OrdemCargaCODIGO.ASSTRING +
      ' and CNPJ ='''+dmapp.Cnpj+'''',DmOrdemCarga.OrdemCarga.transaction);

      DmOrdemCarga.RetiraItensCancelado(DmOrdemCarga.OrdemCargaCODIGO.value);
      DmOrdemCarga.AtualizaStatusPedido(DmOrdemCarga.OrdemCargaCODIGO_VND.AsString,DmOrdemCarga.OrdemCarga.transaction);
    end;
end;

procedure TFrmSelCarga.ActConfirmarEntregaExecute(Sender: TObject);
begin
    DmOrdemCarga.Proc_Confirma_Carga(DmOrdemCarga.OrdemCargaCODIGO.VALUE);
    DmOrdemCarga.OpenOrdemCargaItem(DmOrdemCarga.OrdemCargaCODIGO.VALUE);
    gridOC.setfocus;
end;

procedure TFrmSelCarga.TabOrdemCargaExit(Sender: TObject);
begin
  dsOC.dataset.close;
  dsOCItens.dataset.close;
end;

procedure TFrmSelCarga.CmbCliente2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
     //-- Chama Listagem de Cliente
     if Frm_Localizar_Cliente = nil then
       Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;
     Frm_Localizar_Cliente.DSource.dataset := DmVendas.SelPessoasFJ ;

     if (Frm_Localizar_Cliente.showmodal = mrOk ) Then
     Begin
       CmbCliente2.Text := IntToStr(Frm_Localizar_Cliente.CampTrecho);
       lblnome2.Caption := DMVendas.SelPessoasFJNOME_RAZAO.value;
     end
end;

procedure TFrmSelCarga.CmbCliente2Exit(Sender: TObject);
begin
    //Troca Cor de Fundo
    TiraCorFundo ( Sender );
    //-- Chama Listagem de Cliente
    If Trim(CmbCliente2.Text) <> '' then
    begin
       If DmVendas.SelPessoasFJ.locate ( 'CODIGO', CmbCliente2.Text, [] )then
       begin
            CmbCliente2.Text  := DMVendas.SelPessoasFJCodigo.Text      ;
            lblnome2.Caption  := DMVendas.SelPessoasFJNOME_RAZAO.value ;
       end
       else begin
            CmbCliente2.Text  := '' ;
            lblnome2.Caption  := '' ;
       end;
    end
    else begin
       CmbCliente2.Text  := ''  ;
       lblnome2.Caption  := ''  ;
    end;
end;

procedure TFrmSelCarga.Panel21Enter(Sender: TObject);
begin
  dsOC.DataSet.Close;
  dsOCItens.DataSet.Close;  
end;

procedure TFrmSelCarga.HabilitaActionOrdemCarga;
begin
    ActCancelarCarga.Enabled    := DmOrdemCarga.OrdemCargaSTATUS.value in [1,2,3,4,5,6];
    ActConfirmarEntrega.Enabled := DmOrdemCarga.OrdemCargaSTATUS.value in [1];
    ActAjusteCarga.Enabled      := DmOrdemCarga.OrdemCargaSTATUS.value in [3];
end;

procedure TFrmSelCarga.dsOCDataChange(Sender: TObject; Field: TField);
begin
  if dmOrdemCarga.OrdemCargaCODIGO.VALUE > 0 then
  begin
        //LISTA TODAS ITENS DA ORDEM DE CARGA
        DmOrdemCarga.OpenOrdemCargaItem(DmOrdemCarga.OrdemCargaCODIGO.VALUE);
        //
        HabilitaActionOrdemCarga;
  end;
end;

procedure TFrmSelCarga.tabVendaExit(Sender: TObject);
begin
    DataSource.Dataset.Close;
    DataSourceItens.Dataset.Close;
end;

procedure TFrmSelCarga.tabFormarCargaExit(Sender: TObject);
begin
    dsFormacao.DataSet.close;
    dsItemFormacao.DataSet.close;
end;

procedure TFrmSelCarga.gridOCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = 13 then
    ActImpRequisicaoExecute(Sender);
end;

procedure TFrmSelCarga.TabOrdemCargaEnter(Sender: TObject);
begin
CmbCliente2.setfocus;
end;

procedure TFrmSelCarga.tabVendaEnter(Sender: TObject);
begin
CmbCliente.setfocus;
end;

procedure TFrmSelCarga.gridOCEnter(Sender: TObject);
begin
  FiltrarCarga;
  pc.activepage := TabOrdemCarga;
  gridOC.setfocus;
end;

procedure TFrmSelCarga.GRIDEnter(Sender: TObject);
begin
  FiltrarEntregaFutura;
  pc.activepage := tabVenda;
  GRID.setfocus;
end;

procedure TFrmSelCarga.RzBitBtn4Click(Sender: TObject);
begin
      ExecSql('delete from crg_ordem_carga_itens where CODIGO = '+ DmOrdemCarga.OrdemCargaCODIGO.ASSTRING +
      ' and CNPJ ='''+dmapp.Cnpj+'''',DmOrdemCarga.OrdemCarga.transaction);

      ExecSql('delete from crg_ordem_carga where CODIGO = '+ DmOrdemCarga.OrdemCargaCODIGO.ASSTRING +
      ' and CNPJ ='''+dmapp.Cnpj+'''',DmOrdemCarga.OrdemCarga.transaction);

end;

procedure TFrmSelCarga.RzBitBtn10Click(Sender: TObject);
begin
      ExecSql('UPDATE FAT_VENDAS_ITENS SET CARREGADO=0, ENTREGUE=0,DEVOLVIDO=0 WHERE CODIGO = '+ DmVendas2.SelFaturaVendasFuturaCODIGO.AsString +
      ' and CNPJ ='''+dmapp.Cnpj+'''',DmVendas2.SelFaturaVendasFutura.transaction);

      ExecSql('UPDATE FAT_VENDAS SET STATUS_CARREGAMENTO=0 WHERE CODIGO = '+ DmVendas2.SelFaturaVendasFuturaCODIGO.AsString +
      ' and CNPJ ='''+dmapp.Cnpj+'''',DmVendas2.SelFaturaVendasFutura.transaction);      
end;

end.
