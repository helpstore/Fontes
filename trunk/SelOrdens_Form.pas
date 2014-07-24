 unit SelOrdens_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dxTL, dxDBCtrl, 
  dxDBTLCl, dxGrClms,  IBquery,   rdprint, dxPSCore,
  dxPSContainerLnk, dxPgsDlg, cxPropertiesStore, dxTLClms, 
      Grids, DBGrids, FileCtrl, Variants,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxRichEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, cxMRUEdit, cxDropDownEdit, dxSkinsCore, dxSkinsdxBarPainter,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinscxPCPainter, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomPopupMenu, cxGridPopupMenu, 
  cxContainer, Menus, cxButtons, cxLabel, cxPC, cxSplitter,
  cxGroupBox, cxRadioGroup, OleCtrls, SHDocVw,  cxFilterControl, cxDBFilterControl,cxGridExportLink,
  cxTextEdit;

type


  TFrmSelOrdens = class(TForm)
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    BtnFechar: TdxBarButton;
    ActFechar: TAction;
    DataSource: TDataSource;
    btnAlterar: TdxBarButton;
    dsClientes: TDataSource;
    opIncluir: TdxBarButton;
    kdofoco: TAction;
    ActExcluir: TAction;
    BntExcluir: TdxBarButton;
    ActPaginaDn: TAction;
    ActPagUp: TAction;
    ActImprimir: TAction;
    ActAtualizar: TAction;
    DsMotor: TDataSource;
    ActRelatorio: TAction;
    stgGrdOS: TcxPropertiesStore;
    ActConfCampos: TAction;
    ActExportarExcel: TAction;
    ActExportarHtml: TAction;
    Timer: TTimer;
    ActResumoGrafico: TAction;
    pgcOServico: TcxPageControl;
    tabManutencao: TcxTabSheet;
    tabPreventiva: TcxTabSheet;
    pnlClient: TPanel;
    Bevel1: TBevel;
    Panel9: TPanel;
    Panel6: TPanel;
    Label6: TcxLabel;
    Label8: TcxLabel;
    edDataBase: TdxDateEdit;
    EdTipoContrato: TdxPickEdit;
    dsPreventivaOS: TDataSource;
    Label1: TcxLabel;
    cmbTecnico: TdxLookupEdit;
    Label12: TcxLabel;
    Label20: TcxLabel;
    cmbCidade: TdxLookupEdit;
    cmbCliente: TdxLookupEdit;
    Label9: TcxLabel;
    dsMecanico: TDataSource;
    dsCidade: TDataSource;
    edAs1: TcxLabel;
    DsIntervalos: TDataSource;
    tabMovimentos: TcxTabSheet;
    Panel11: TPanel;
    dsMovimentos: TDataSource;
    dxBarButton1: TdxBarButton;
    btnExportExcel: TdxBarButton;
    Panel1: TPanel;
    Label7: TcxLabel;
    Label10: TcxLabel;
    Label11: TcxLabel;
    Label13: TcxLabel;
    edDtInicialMvto: TdxDateEdit;
    edDtFinalMvto: TdxDateEdit;
    lkpClienteMovto: TdxLookupEdit;
    dsClientes3: TDataSource;
    ActAlterarMovimento: TAction;
    GridMovimentosLevel1: TcxGridLevel;
    GridMovimentos: TcxGrid;
    GridMovimentosDBBandedTableView1: TcxGridDBBandedTableView;
    GridMovimentosDBBandedTableView1COD_GRAVIDADE: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1TITULO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1CNPJ: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1CODIGO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1DT_FIM: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1DT_INICIO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1HR_INICIO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1HR_FIM: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1SEQUENCIA: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1OBSERVACAO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1QTDE_HORA: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1KM_RODADO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1KM_INICIAL: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1KM_FINAL: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1TEMPO_VIAJEM: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1USUARIO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1COD_TIPO_MOVTO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1NOME_USUARIO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1NOME_TECNICO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1COD_TECNICO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1NOME_TECNICO_OS: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1COD_TECNICO_OS: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1CUSTO_HORA: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1CUSTO_ATIVIDADE: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1TIPO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1DT_LANCTO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1DT_VENCTO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1DT_CONCLUSAO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1COD_CONTATO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1COD_VEICULO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1COD_STATUS: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1ST_COR: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1STATUS_MOVTO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1COD_TIPO_MOVTO1: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1TIPO_MOVTO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1COD_STATUS_OS: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1ST_COR_OS: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1STATUS_OS: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1COD_CONTATO_MOVTO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1CONTATO_MOVTO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1COD_CONTATO_OS: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1CONTATO_OS: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1COD_CLIENTES: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1CLIENTE_OS: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1DEF_CODIGO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1DEF_NOME: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1MTC_CODIGO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1MTC_NOME: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1TPA_CODIGO: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1TPA_NOME: TcxGridDBBandedColumn;
    GridMovimentosDBBandedTableView1ASSUNTO: TcxGridDBBandedColumn;
    GridPopupMenu: TcxGridPopupMenu;
    Panel4: TPanel;
    btnTimer: TcxButton;
    RzBitBtn1: TcxButton;
    cxSplitter1: TcxSplitter;
    RdStatusMovto: TcxRadioGroup;
    Panel5: TPanel;
    pc: TcxPageControl;
    Panel3: TPanel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label2: TcxLabel;
    Label5: TcxLabel;
    edDtInicial: TdxDateEdit;
    edDtFinal: TdxDateEdit;
    RdStatus: TcxRadioGroup;
    lkpCliente: TdxLookupEdit;
    Panel8: TPanel;
    Image2: TImage;
    Bevel2: TBevel;
    lblTitulo: TcxLabel;
    cxTabSheet1: TcxTabSheet;
    Grid: TcxGrid;
    GridDBBandedTableView1: TcxGridDBBandedTableView;
    GridTV: TcxGridDBBandedTableView;
    GridLV: TcxGridLevel;
    GridTVOFC_CODIGO: TcxGridDBBandedColumn;
    GridTVOFC_DATA: TcxGridDBBandedColumn;
    GridTVOFC_DT_ATRIBUICAO: TcxGridDBBandedColumn;
    GridTVOFC_DATA_FECHAMENTO: TcxGridDBBandedColumn;
    GridTVOFC_TOTAL: TcxGridDBBandedColumn;
    GridTVOFC_SOLICITANTE: TcxGridDBBandedColumn;
    GridTVOFC_VENDA: TcxGridDBBandedColumn;
    GridTVOFC_KM_RODADO: TcxGridDBBandedColumn;
    GridTVOFC_HORAS_TRABALHADAS: TcxGridDBBandedColumn;
    GridTVMEC_CODIGO: TcxGridDBBandedColumn;
    GridTVMEC_NOME: TcxGridDBBandedColumn;
    GridTVDEF_CODIGO: TcxGridDBBandedColumn;
    GridTVDEF_NOME: TcxGridDBBandedColumn;
    GridTVMTC_CODIGO: TcxGridDBBandedColumn;
    GridTVMTC_NOME: TcxGridDBBandedColumn;
    GridTVTPA_CODIGO: TcxGridDBBandedColumn;
    GridTVTPA_NOME: TcxGridDBBandedColumn;
    GridTVST_COR: TcxGridDBBandedColumn;
    GridTVST_NOME: TcxGridDBBandedColumn;
    GridTVCLI_CODIGO: TcxGridDBBandedColumn;
    GridTVCLI_NOME_RAZAO: TcxGridDBBandedColumn;
    GridTVREG_CODIGO: TcxGridDBBandedColumn;
    GridTVPRD_CODIGO: TcxGridDBBandedColumn;
    GridTVPRD_NOME: TcxGridDBBandedColumn;
    GridTVPRD_SERIE: TcxGridDBBandedColumn;
    GridTVMDL_CODIGO: TcxGridDBBandedColumn;
    GridTVST_CODIGO: TcxGridDBBandedColumn;
    GridTVCP_TEMPO_RESPOSTA: TcxGridDBBandedColumn;
    GridTVOFC_DT_ENTRADA: TcxGridDBBandedColumn;
    GridTVOFC_HR_ATRIBUICAO: TcxGridDBBandedColumn;
    GridTVOFC_HR_ENTRADA: TcxGridDBBandedColumn;
    GridTVCP_COD_CONTRATO: TcxGridDBBandedColumn;
    GridTVTPC_NOME: TcxGridDBBandedColumn;
    GridTVOFC_HR_FECHAMENTO: TcxGridDBBandedColumn;
    GridTVCIDADE: TcxGridDBBandedColumn;
    GridTVTEMPO_GASTO: TcxGridDBBandedColumn;
    GridTVTEMPO_RESPOSTA: TcxGridDBBandedColumn;
    GridTVREG_DESCRICAO: TcxGridDBBandedColumn;
    GridTVMDL_NOME: TcxGridDBBandedColumn;
    GridTVID_CONTRATO: TcxGridDBBandedColumn;
    GridTVPRIORIDADE: TcxGridDBBandedColumn;
    GridTVCUSTO_OS: TcxGridDBBandedColumn;
    GridTVINFORMACOES: TcxGridDBBandedColumn;
    GridTVOBS_FECHAMENTO: TcxGridDBBandedColumn;
    GridTVCONTROLE: TcxGridDBBandedColumn;
    GridTVVEICULO: TcxGridDBBandedColumn;
    GridTVPLACA: TcxGridDBBandedColumn;
    GridTVPROTOCOLO: TcxGridDBBandedColumn;
    GridPreventiva: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    GridPreventivaTV: TcxGridDBBandedTableView;
    GridPreventivaTVCONTRATO_ATIVO: TcxGridDBBandedColumn;
    GridPreventivaTVCONTRATO_CLIENTE: TcxGridDBBandedColumn;
    GridPreventivaTVCONTRATO_CODIGO: TcxGridDBBandedColumn;
    GridPreventivaTVCONTRATO_DIAS_RECHAMADO: TcxGridDBBandedColumn;
    GridPreventivaTVCONTRATO_DT_FIM: TcxGridDBBandedColumn;
    GridPreventivaTVCONTRATO_DT_INICIO: TcxGridDBBandedColumn;
    GridPreventivaTVNUMERO_CONTRATO: TcxGridDBBandedColumn;
    GridPreventivaTVTEMPO_RESPOSTA: TcxGridDBBandedColumn;
    GridPreventivaTVATIVIDADE_CLIENTE: TcxGridDBBandedColumn;
    GridPreventivaTVBAIRRO_CLIENTE: TcxGridDBBandedColumn;
    GridPreventivaTVCIDADE_CLIENTE: TcxGridDBBandedColumn;
    GridPreventivaTVCODIGO_CLIENTE: TcxGridDBBandedColumn;
    GridPreventivaTVCPF_CNPJ: TcxGridDBBandedColumn;
    GridPreventivaTVNOME_FANTASIA: TcxGridDBBandedColumn;
    GridPreventivaTVRAZAO_SOCIAL: TcxGridDBBandedColumn;
    GridPreventivaTVREGIAO_CLIENTE: TcxGridDBBandedColumn;
    GridPreventivaTVRG_INSC_ESTADUAL: TcxGridDBBandedColumn;
    GridPreventivaTVUF: TcxGridDBBandedColumn;
    GridPreventivaTVPRODUTO_ATIVO: TcxGridDBBandedColumn;
    GridPreventivaTVCODIGO_PRODUTO: TcxGridDBBandedColumn;
    GridPreventivaTVCODIGO_PRODUTO_SEC: TcxGridDBBandedColumn;
    GridPreventivaTVCODIGO_MARCA: TcxGridDBBandedColumn;
    GridPreventivaTVNOME_PRODUTO: TcxGridDBBandedColumn;
    GridPreventivaTVMARCA_PRODUTO: TcxGridDBBandedColumn;
    GridPreventivaTVMODELO_PRODUTO: TcxGridDBBandedColumn;
    GridPreventivaTVTIPO_CONTRATO: TcxGridDBBandedColumn;
    GridPreventivaTVNOME_CONTRATO: TcxGridDBBandedColumn;
    GridPreventivaTVMEDIA_COPIA: TcxGridDBBandedColumn;
    GridPreventivaTVCONTRATO_COPIAS_PREVENTIVA: TcxGridDBBandedColumn;
    GridPreventivaTVQTDE_COPIA_ATUAL: TcxGridDBBandedColumn;
    GridPreventivaTVQTDE_COPIA_PREVISTA: TcxGridDBBandedColumn;
    GridPreventivaTVDT_FECHAMENTO_ULTIMO: TcxGridDBBandedColumn;
    GridPreventivaTVCONTADOR_ULTIMO: TcxGridDBBandedColumn;
    GridPreventivaTVPONTO_VISITA_PREVENTIVA: TcxGridDBBandedColumn;
    GridPreventivaTVDIAS_EM_ATRASO: TcxGridDBBandedColumn;
    GridPreventivaTVNOME_CIDADE: TcxGridDBBandedColumn;
    GridPreventivaTVNOME_REGIAO: TcxGridDBBandedColumn;
    GridPreventivaTVNOME_TIPO_CONTRATO: TcxGridDBBandedColumn;
    GridTVMAP_LAT: TcxGridDBBandedColumn;
    GridTVMAP_LONG: TcxGridDBBandedColumn;
    dxBarButton2: TdxBarButton;
    ActExibirMapa: TAction;
    edtSerie: TcxTextEdit;
    cxLabel1: TcxLabel;
    GridTVDT_CILINDRO: TcxGridDBBandedColumn;
    GridTVCT_CILINDRO: TcxGridDBBandedColumn;
    GridTVULT_DT_CILINDRO: TcxGridDBBandedColumn;
    GridTVULT_CT_CILINDRO: TcxGridDBBandedColumn;
    GridTVCT_CILINDRO_SALDO_DIAS: TcxGridDBBandedColumn;
    GridTVCT_CILINDRO_SALDO_CONTADOR: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure EdDataNotaKeyPress(Sender: TObject; var Key: Char);
    procedure ActAlterarExecute(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActPaginaDnExecute(Sender: TObject);
    procedure ActPagUpExecute(Sender: TObject);
    procedure CmbClienteEnter(Sender: TObject);
    procedure edDtInicialEnter(Sender: TObject);
    procedure ActExportarExcelExecute(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure btnTimerClick(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure ActResumoGraficoExecute(Sender: TObject);
    procedure CmbClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDataBaseEnter(Sender: TObject);
    procedure edDataBaseExit(Sender: TObject);
    procedure edDataBaseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel6Enter(Sender: TObject);
    procedure EdTipoContratoEnter(Sender: TObject);
    procedure EdTipoContratoExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Panel3Exit(Sender: TObject);
    procedure GridMovimentosCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure pgcOServicoChange(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    Procedure Filtrar(inicial:boolean=false);
    Procedure FiltrarPreventiva;
    procedure GridMovimentosDBBandedTableView1KeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure GridTVOFC_CODIGOCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure GridTVST_NOMECustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure GridTVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridPreventivaTVCONTRATO_ATIVOCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure Panel6Exit(Sender: TObject);
    procedure GridMouseEnter(Sender: TObject);
    procedure GridPreventivaMouseEnter(Sender: TObject);
    procedure GridMovimentosMouseEnter(Sender: TObject);
    procedure ActExibirMapaExecute(Sender: TObject);
  private
    procedure GerarListaCoordenadas;
    { Private declarations }
  public
    { Public declarations }
    Importa: Boolean ;
    function GetTempDir: string;
    function RetornaHtmlMaps(Titulo,SubTitulo,Texto,Latitude,Longitude,Indice: string):string;

    procedure FiltrarMovtos;
  end;

var
  FrmSelOrdens: TFrmSelOrdens;
  FinalArq, FinalCli: Boolean ;
  sqlOriginalMovto, sqlOriginal : string;
implementation

uses
     Servicos_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Application_DM,
     LocalizarProd_DM,
     Splash_Form,
     Localizar_Cliente,
     Ordens_Servicos_Form, Tipo_Impressora_Form,
  EntraNumeroOrcamento_Form, EntraNumeroOrcamento_Ordem_Form,
  Localizar_Produto_Cadastro_Auto, Vendas_Dm, DateUtils,
  Ordens_Servicos_Horas_Form, Ordens_ServicosItens_Form, Empresas_Form, 
  Empresas_DM, Vendas_Form, Vendas_DM2, Mapa_Form;

  {$R *.DFM}

function TFrmSelOrdens.GetTempDir: String;
   var TempDir: Array[0..255] of Char;
begin
  GetTempPath(255, @TempDir);
  Result := StrPas(TempDir);

end;

Procedure TFrmSelOrdens.Filtrar(inicial:boolean=false);
var
  filtro : string;
Begin
  if (inicial) then
    edDtInicial.Date := dmApp.OFC_DATA_BASE_MAN_OS;
    

  if ((edDtInicial.Date < dmApp.OFC_DATA_BASE_MAN_OS) and ((dmApp.OFC_DATA_BASE_MAN_OS) > 0)) then
  begin
    Application.MessageBox(Pchar('Data Inicial Inválida. Data inferior ao parametrizado como Data Base para Listagem de OS: '+DateToStr(dmApp.OFC_DATA_BASE_MAN_OS)),'Aviso',mb_ok+mb_ok+mb_iconinformation);
    edDtInicial.Date := dmApp.OFC_DATA_BASE_MAN_OS;
    edDtInicial.SetFocus;
    exit;
  end;

  filtro := '';
  With DMServicos do
  begin
    SelOrdens_Servicos.Close;
    if edDtInicial.date > 0 then
      filtro := ' and ofc.data >= '''+FormatDateTime('mm/dd/yyyy',edDtInicial.date)+'''';

    if edDtFinal.date > 0 then
      filtro := filtro + ' and ofc.data <= '''+FormatDateTime('mm/dd/yyyy',edDtFinal.Date)+'''';

   case RdStatus.ItemIndex of
     0 : filtro := filtro +' and coalesce(st.fechado,''N'') = ''N''';
     1 : filtro := filtro +' and coalesce(st.fechado,''N'') <> ''N''';
   end;

   if (lkpCliente.Text <> '') then
     filtro := filtro + ' and ofc.pessoa_fj = '+IntToStr(lkpCliente.LookupKeyValue);

   if trim(edtSerie.Text) <> '' then
     filtro := filtro + ' and prd.serie = '+QuoTedStr(EdtSerie.text);

   SelOrdens_Servicos.sql.text := sqloriginal + filtro;

   //Data base de filtro de OS, cliente pode parametrizar uma data minima para o filtro a fim melhorar o desempenho do sistema
   if (dmApp.OFC_DATA_BASE_MAN_OS > 0) then
     SelOrdens_Servicos.parambyname('OFC_DATA_BASE_MAN_OS').AsDate := dmApp.OFC_DATA_BASE_MAN_OS
   else
     SelOrdens_Servicos.parambyname('OFC_DATA_BASE_MAN_OS').AsDate := StrToDate('01/01/2001');

   SelOrdens_Servicos.Open;
  end;
  GridTV.ViewData.Expand(True);

end;

procedure TFrmSelOrdens.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Diretorio :string;
  DirUser : String;
  AFilterControl: TcxFilterControl;
begin
     If MessageDlg('Sair da Seleção de Ordens?', mtConfirmation, [mbOK, mbCancel], 0) = MrOk
     then begin
          //
          {DirUser := GetEnvironmentVariable('USERPROFILE');
          stgGrdOS20.StoreTo((DirUser+'\'+stgGrdOS20.Name));  }

          If DataSource.DataSet.Tag = 0 Then
             DataSource.DataSet.Close;

          If dsClientes.DataSet.Tag = 0 Then
          dsClientes.DataSet.Close;

          If DsMotor.DataSet.Tag = 0 Then
          DsMotor.DataSet.Close;

          //

          Frm_Localizar_Cliente.Free ;
          Frm_Localizar_Cliente := Nil ;

          FrmLocProdutoCadastro_Auto.Free    ;
          FrmLocProdutoCadastro_Auto := Nil  ;

          dmApp.ZeraCaixaUsuario(owner);
          FrmMain.PnlClient.Visible := True;
          dmApp.ManFilterGrid(GridTV,'C:\Sistemas\HelpStore\filtros\FiltroGrdOS.flt');
          dmApp.ManFilterGrid(GridPreventivaTV,'C:\Sistemas\HelpStore\filtros\FiltroGrdVisitaPreventiva.flt');
          DmServicos.SelOrdens_Servicos.sql.text := sqlOriginal;
          DmServicos.SelOrdens_ServicosMovto.sql.text := sqlOriginalMovto;

     end
     else
       Action := CaNone ;



end;

procedure TFrmSelOrdens.FormShow(Sender: TObject);
begin
     RdStatus.ItemIndex := 0;
     RdStatusMovto.ItemIndex := 0;
     Importa := False ;
     IniciaComponentes ( Self as TForm );


     IF (DmApp.OFC_COR_FUNDO) <> ''
     THEN BEGIN
          FrmSelOrdens.Color := StrToInt(DmApp.OFC_COR_FUNDO);
          Panel4.Color := StrToInt(DmApp.OFC_COR_FUNDO);
          pnlClient.Color := StrToInt(DmApp.OFC_COR_FUNDO);
     END;

     If Not(dsClientes.DataSet.Active) Then
       dsClientes.DataSet.Open;

     If Not(dsClientes3.DataSet.Active) Then
       dsClientes3.DataSet.Open;

     If Not(DsMotor.DataSet.Active) Then
       DsMotor.DataSet.Open;

     ( dsClientes.DataSet as TIbQuery ).FetchAll ;

     FinalArq := False ;
     FinalCli := False ;

     //Cria o Formulario de Localizar Cliente
     Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;

     If FrmLocProdutoCadastro_Auto = Nil  then
        FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Application) ;




     pgcOServico.ActivePage := tabManutencao;

    GridTV.ViewData.Expand(True);
     btnTimer.Colors.Default := $00B3FFB3;
     btnTimer.caption := 'Timer [Habilitado]';
     Timer.Enabled := true;
     edDtInicial.setfocus;


     filtrar(true);
     FiltrarMovtos;

end;

procedure TFrmSelOrdens.FormCreate(Sender: TObject);
var
   mes, ano : integer;
   DirUser, Diretorio : String;
   AFilterControl: TcxFilterControl;
begin
  if (dmApp.EXIBE_OFC_VISUALIZACAO = '0') then
    GridTVCONTROLE.Caption :=  'Controle'
  else
    GridTVCONTROLE.Caption :=  'Prisma';

  if (dmApp.EXIBE_OFC_MOVIMENTOS_OS = 'N') then
    tabMovimentos.TabVisible := false
  else
    tabMovimentos.TabVisible := true;

  if (dmApp.EXIBE_OFC_PREVENTIVA = 'N' ) then
    tabPreventiva.TabVisible := false
  else
    tabPreventiva.TabVisible := true;


  {DirUser := GetEnvironmentVariable('USERPROFILE');
  stgGrdOS20.StorageName :=  (DirUser+'\'+stgGrdOS20.Name);
  stgGrdOS20.RestoreFrom;}

  If DMUsuarios.Direito = 'SUPERVISOR' Then
    DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  else If DMUsuarios.Objeto = Self.Name Then
    AtivaActions(Actions, DMUsuarios.Direito);

  sqlOriginal := DmServicos.SelOrdens_Servicos.sql.text;
  sqlOriginalMovto := DmServicos.SelOrdens_ServicosMovto.sql.text;

  mes := MonthOfTheYear(dmapp.data_servidor);
  ano :=  Year(dmapp.data_servidor);

  //edDtInicial.Date := EncodeDate(Ano,Mes,1);
  edDtInicialMvto.Date := EncodeDate(Ano,Mes,1);


  dmApp.ManFilterGrid(GridTV,'C:\Sistemas\HelpStore\filtros\FiltroGrdOS.flt',false);
  dmApp.ManFilterGrid(GridPreventivaTV,'C:\Sistemas\HelpStore\filtros\FiltroGrdVisitaPreventiva.flt',false);


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
  end;
end;

procedure TFrmSelOrdens.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
       If Self.ActiveControl = pc Then
          Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmSelOrdens.pnlClientResize(Sender: TObject);
begin
//  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmSelOrdens.DataSourceStateChange(Sender: TObject);
begin
  //
  If Navigator.DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActFechar.Enabled    := False;
     End
  Else
     Begin
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmSelOrdens.ActFecharExecute(Sender: TObject);
begin
    Close;
end;

procedure TFrmSelOrdens.EdDataNotaKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = '-' Then
     Begin
       (Sender as TdxDBDateEdit).Date := (Sender as TdxDBDateEdit).Date -1;
       (Sender as TdxDBDateEdit).SelectAll;
       Key := #0;
     End;
  If Key = '+' Then
     Begin
       (Sender as TdxDBDateEdit).Date := (Sender as TdxDBDateEdit).Date +1;
       (Sender as TdxDBDateEdit).SelectAll;
       Key := #0;
     End;
end;

procedure TFrmSelOrdens.ActAlterarExecute(Sender: TObject);
begin
  try
    If (Not DataSource.DataSet.Active) Or  (DataSource.DataSet.RecordCount = 0) Then
    begin
      ShowMessage('Selecione uma ordem para alterá-la');
      Exit;
    end;

    DMServicos.NDocto := DataSource.DataSet.FieldByName('OFC_CODIGO').asInteger;
    FrmOrdens_Servicos := TFrmOrdens_Servicos.Create(Self);
    DMServicos.Ordem.Open;
    FrmOrdens_Servicos.Showmodal ;
  finally
    FrmOrdens_Servicos.Destroy;
    Filtrar;
  end
end;

procedure TFrmSelOrdens.Panel2Enter(Sender: TObject);
begin
  DataSource.DataSet.Close;
end;

procedure TFrmSelOrdens.ActExcluirExecute(Sender: TObject);
begin
  IF MessageDlg ('Excluir Esta Ordem?',MtInformation,[MbOk, MbCancel],1) = MrOk THEN
  BEGIN
     DmApp.Exclui_Ordem ( DmApp.Cnpj, DataSource.DataSet.fieldbyname('OFC_Codigo').Value );
     DataSource.DataSet.Close ;
     DataSource.DataSet.Open  ;
  END;
end;

procedure TFrmSelOrdens.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = 13
     then
         ActAlterar.Execute ;
end;

procedure TFrmSelOrdens.ActPaginaDnExecute(Sender: TObject);
begin
     If PC.ActivePageIndex = 0 THEN
         PC.ActivePageIndex := 1
     ELSE
         PC.ActivePageIndex := 0;
end;

procedure TFrmSelOrdens.ActPagUpExecute(Sender: TObject);
begin
     If PC.ActivePageIndex = 0 THEN
         PC.ActivePageIndex := 1
     ELSE
         PC.ActivePageIndex := 0;
end;

procedure TFrmSelOrdens.CmbClienteEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmSelOrdens.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmSelOrdens.ActExportarExcelExecute(Sender: TObject);
begin
  if pgcOServico.ActivePage = tabManutencao then
    dmApp.Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Lista de Ordens de Serviço.xls', Grid)
  else if pgcOServico.ActivePage = tabPreventiva then
    dmApp.Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Lista de Visitas Preventivas.xls', GridPreventiva)
  else if pgcOServico.ActivePage = tabMovimentos then
    dmApp.Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Lista de Movimentos de OS.xls', GridMovimentos);
end;

procedure TFrmSelOrdens.TimerTimer(Sender: TObject);
begin
  ActAtualizar.execute;
end;

procedure TFrmSelOrdens.ActIncluirExecute(Sender: TObject);
Var
 SOMA_CHEQUES: Real ;
 Sender2 : TField;
begin
  FrmOrdens_Servicos := TFrmOrdens_Servicos.Create(Self);
  DMServicos.Ordem.Open ;
  DMServicos.Ordem.Append ;
  FrmOrdens_Servicos.Showmodal ;
   ActAtualizar.execute;
  grid.setfocus ;
end;

procedure TFrmSelOrdens.btnTimerClick(Sender: TObject);
begin
  Timer.Enabled := not Timer.Enabled;
  if not Timer.Enabled then
  begin
    btnTimer.Colors.Default := $0088C4FF;
    btnTimer.caption := 'Timer [Desabilitado]';
  end
  else
  begin
    btnTimer.Colors.Default := $00B3FFB3;
    btnTimer.caption := 'Timer [Habilitado]';
  end;
end;

procedure TFrmSelOrdens.ActAtualizarExecute(Sender: TObject);
begin
  DmServicos.SelOrdens_Servicos.Close;
  DmServicos.SelOrdens_Servicos.Open;
  GridTV.ViewData.Expand(True);
  dmApp.Data_Servidor := dmApp.Dataservidor;
end;

procedure TFrmSelOrdens.ActResumoGraficoExecute(Sender: TObject);
begin
  DmServicos.ResumoGraficoOS.Close;
  DmServicos.ResumoGraficoOS.ParamByName('cnpj').Value := DMApp.Cnpj;
  DmServicos.ResumoGraficoOS.Open;
end;

procedure TFrmSelOrdens.FiltrarPreventiva;
Var
   Cont: Integer ;
Begin
  //
  If dsPreventivaOS.DataSet.Active Then
     dsPreventivaOS.DataSet.Close;

  With DMServicos do
  begin

       PreventivaOS.ParamByName ( 'CNPJ' ).AsString := DmApp.Cnpj ;

       //Parametro Produto Ativo
       if EdTipoContrato.Text = 'Ativos' THEN
         PreventivaOS.ParamByName ( 'ATIVO' ).AsString := 'S'
       else
         PreventivaOS.ParamByName ( 'ATIVO' ).AsString := 'N';

       //Cliente
       if (cmbCliente.text = '') then
         PreventivaOS.ParamByName('COD_CLIENTE').value := 0
       else
         PreventivaOS.ParamByName('COD_CLIENTE').value := cmbCliente.LookupKeyValue;

       //Técnico
       if (cmbTecnico.text = '') then
         PreventivaOS.ParamByName('COD_TECNICO').value := 0
       else
         PreventivaOS.ParamByName('COD_TECNICO').value := cmbTecnico.LookupKeyValue;

       //Cidade
       if (cmbCidade.text = '') then
         PreventivaOS.ParamByName('COD_CIDADE').value := 0
       else
         PreventivaOS.ParamByName('COD_CIDADE').value := cmbCidade.LookupKeyValue;

       //Parametro Data Base
       If edDataBase.date <= 0 Then
       begin
         PreventivaOS.ParamByName ( 'DATA_BASE' ).AsDate := StrToDate('01/01/2050');
         edDataBase.Date := StrToDate('01/01/2050');
       end
       else
         PreventivaOS.ParamByName ( 'DATA_BASE' ).AsDate := edDataBase.date;
  end;
  dsPreventivaOS.DataSet.Open;
  
end;

procedure TFrmSelOrdens.CmbClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key=VK_RETURN) OR (Key=VK_DOWN) Then
    Begin
      Perform(WM_NEXTDLGCTL, 0, 0);
      If Self.ActiveControl = pc Then
        Perform(WM_NEXTDLGCTL, 0, 0);
    end;

    if (key=VK_UP) then
      Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmSelOrdens.edDataBaseEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmSelOrdens.edDataBaseExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmSelOrdens.edDataBaseKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
       If Self.ActiveControl = pc Then
          Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmSelOrdens.Panel6Enter(Sender: TObject);
begin
  dsPreventivaOS.DataSet.Close;
end;

procedure TFrmSelOrdens.EdTipoContratoEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmSelOrdens.EdTipoContratoExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmSelOrdens.FormActivate(Sender: TObject);
begin
//FrmSelOrdens.WindowState := wsMaximized;
end;

procedure TFrmSelOrdens.Panel3Exit(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmSelOrdens.GridMovimentosCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;   
begin
  {if ANode.HasChildren then
    Exit;

  if not ASelected and (AColumn = GridMovimentosSTATUS_MOVTO) then
  begin
    Value := ANode.Values[AColumn.Index];
    if ((not VarIsNull(Value)) and (Value <> '')) then
      AColor := ANode.Values[GridMovimentosST_COR.index];
  end
  else if not ASelected and (AColumn = GridMovimentosSTATUS_OS) then
  begin
    Value := ANode.Values[AColumn.Index];
    if ((not VarIsNull(Value)) and (Value <> '')) then
      AColor := ANode.Values[GridMovimentosST_COR_OS.index];
  end; }
end;

procedure TFrmSelOrdens.pgcOServicoChange(Sender: TObject);
begin
  if (pgcOServico.ActivePage <> tabManutencao) then
  begin
    btnAlterar.Visible := ivNever;
    opIncluir.Visible := ivNever;
    BntExcluir.Visible := ivNever;
  end
  else
  begin
    btnAlterar.Visible := ivAlways;
    opIncluir.Visible := ivAlways;
    BntExcluir.Visible := ivAlways;
  end
end;

procedure TFrmSelOrdens.FiltrarMovtos;
var
  filtro : string;
Begin
  filtro := '';
  With DMServicos do
  begin
    SelOrdens_ServicosMovto.Close;
    if edDtInicialMvto.date > 0 then
      filtro := ' and s.dt_lancto >= '''+FormatDateTime('mm/dd/yyyy',edDtInicialMvto.date)+'''';

    if edDtFinalMvto.date > 0 then
      filtro := filtro + ' and s.dt_lancto <= '''+FormatDateTime('mm/dd/yyyy',edDtFinalMvto.Date)+'''';

   case RdStatusMovto.ItemIndex of
     0 : filtro := filtro +' and coalesce(st.fechado,''N'') = ''N''';
     1 : filtro := filtro +' and coalesce(st.fechado,''N'') <> ''N''';
   end;

   if (lkpClienteMovto.Text <> '') then
     filtro := filtro + ' and os.pessoa_fj = '+IntToStr(lkpClienteMovto.LookupKeyValue);

   SelOrdens_ServicosMovto.sql.text := sqloriginalMovto + filtro;
   SelOrdens_ServicosMovto.Open;
  end;
  
end;

procedure TFrmSelOrdens.Panel1Exit(Sender: TObject);
begin
 FiltrarMovtos;
end;

procedure TFrmSelOrdens.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (Not DataSource.DataSet.Active) Or  (DataSource.DataSet.RecordCount = 0) Then
  begin
    ShowMessage('Você deve selecionar uma Ordem para alterá-la');
   // grid.SetFocus;
    Exit;
  end;

  DMServicos.NDocto   := DataSource.DataSet.FieldByName('OFC_CODIGO').asInteger;
  FrmOrdens_Servicos := TFrmOrdens_Servicos.Create(Self);
  DMServicos.Ordem.Open;

  FrmOrdens_Servicos_Horas := TFrmOrdens_Servicos_Horas.Create(Self);
  FrmOrdens_Servicos_Horas.ActAlterar.Execute;
  FrmOrdens_Servicos_Horas.ShowModal;

  FrmOrdens_Servicos.Close;


  ActAtualizar.execute;
end;

procedure TFrmSelOrdens.GridMovimentosDBBandedTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   If Key <> 13 then
    Exit;

  If (Not dsMovimentos.DataSet.Active) Or  (dsMovimentos.DataSet.RecordCount = 0) Then
  begin
    ShowMessage('Você deve selecionar uma Ordem para alterá-la');
   // grid.SetFocus;
    Exit;
  end;
  DmServicos.Ordem.Close;
  DMServicos.NDocto   := dsMovimentos.DataSet.FieldByName('Codigo').AsInteger;
  DMServicos.Ordem.Open;

  DmServicos.OS_INTERVALO.Close;
  DmServicos.OS_INTERVALO.ParamByName('Cnpj').Value := dsMovimentos.DataSet.FieldByName('CNpj').AsString;
  DmServicos.OS_INTERVALO.ParamByName('Codigo').Value := dsMovimentos.DataSet.FieldByName('CODIGO').AsString;
  DmServicos.OS_INTERVALO.ParamByName('SEQUENCIA').Value := dsMovimentos.DataSet.FieldByName('Sequencia').AsString;
  DmServicos.OS_INTERVALO.Open;


  If Navigator.DataSource.State in dsEditModes Then
    Exit;
  Try
     if (pgcOServico.ActivePageIndex = 1) then
     begin
       FrmOrdens_Servicos_Horas := TFrmOrdens_Servicos_Horas.Create(Self);
       FrmOrdens_Servicos_Horas.ShowModal;
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

  ActAtualizar.execute;
end;

procedure TFrmSelOrdens.GridTVOFC_CODIGOCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ValueGasto, ValueResposta : Variant;
begin
    if (dmApp.EXIBE_OFC_CONTROLA_TEMPO_RESPOSTA = 'N') then                    
    exit;

  
   ACanvas.Canvas.Font.Color := clBlack;
   if GridTV.ViewData.Records[AviewInfo.GridRecord.Index].Selected then
   begin
     ACanvas.Canvas.Brush.Color := clYellow;
     exit;
   end;

  ACanvas.Canvas.Brush.Style := bsSolid;
  ValueGasto := GridTV.ViewData.Records[AViewInfo.GridRecord.Index].Values[GridTVTEMPO_GASTO.Index];
  ValueResposta := GridTV.ViewData.Records[AViewInfo.GridRecord.Index].Values[GridTVCP_TEMPO_RESPOSTA.Index];
  if (not VarIsNull(ValueGasto) and not VarIsNull(ValueResposta)) then
  begin
    if(( ValueGasto + 3) >= ValueResposta)then
      ACanvas.Canvas.Brush.Color := $008484FF;
  end

end;

procedure TFrmSelOrdens.GridTVST_NOMECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  ACanvas.Canvas.Brush.Style := bsSolid;
 if not VarIsNull(GridTV.ViewData.Records[AViewInfo.GridRecord.Index].Values[GridTVST_COR.Index]) then
     ACanvas.Canvas.Brush.Color := VarAsType(GridTV.ViewData.Records[AViewInfo.GridRecord.Index].Values[GridTVST_COR.Index], varInteger)
end;

procedure TFrmSelOrdens.GridTVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = 13 then
    ActAlterar.Execute ;
end;

procedure TFrmSelOrdens.GridPreventivaTVCONTRATO_ATIVOCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ValuePreventiva : Variant;
begin
  ACanvas.Canvas.Brush.Style := bsSolid;
  ValuePreventiva := GridPreventivaTV.ViewData.Records[AViewInfo.GridRecord.Index].Values[GridPreventivaTVDIAS_EM_ATRASO.Index];
  if (not VarIsNull(ValuePreventiva))then
  begin
    if( ValuePreventiva > 0 )then
       ACanvas.Canvas.Brush.Color := $008484FF;
  end;
end;

procedure TFrmSelOrdens.Panel6Exit(Sender: TObject);
begin
   FiltrarPreventiva;
end;

procedure TFrmSelOrdens.GridMouseEnter(Sender: TObject);
begin
Grid.PopupMenu := nil;
  GridPopupMenu.Grid := Grid;
end;

procedure TFrmSelOrdens.GridPreventivaMouseEnter(Sender: TObject);
begin
  GridPreventiva.PopupMenu := nil;
  GridPopupMenu.Grid := GridPreventiva;
end;

procedure TFrmSelOrdens.GridMovimentosMouseEnter(Sender: TObject);
begin
  GridMovimentos.PopupMenu := nil;
  GridPopupMenu.Grid := GridMovimentos;
end;

procedure TFrmSelOrdens.GerarListaCoordenadas;
var
  I, RecIdx, OS, Cod_cliente, TotalItens,  ColIdx: Integer;
  Arquivo,aux, Latitude, Status, Titulo, SubTitulo, Texto, Longitude, Tecnico, Serie, Equipamento, Cod_Equipamento, Data, Cliente : string;
  TxtHtml, HtmlMapa : String;
  OutputVal: Variant;
  Memo1 : TStringList;
  f: TextFile;
begin
   Memo1 := TStringList.Create;

  TxtHtml := '';
  Latitude := '';
  Longitude := '';

  GridTV.Controller.SelectAll;
  TotalItens := 0;
  for I := 0 to GridTV.Controller.SelectedRecordCount - 1 do
  begin
    //Latitude e Longitude
    RecIdx := GridTV.Controller.SelectedRecords[I].RecordIndex;
    ColIdx := GridTV.DataController.GetItemByFieldName('MAP_LAT').Index;
    OutputVal := GridTV.DataController.Values[RecIdx, ColIdx];

    if not VarIsNull(OutputVal) then
    begin
      VarCast(OutputVal, OutputVal, varString);
      Latitude :=  OutputVal;

      RecIdx := GridTV.Controller.SelectedRecords[I].RecordIndex;
      ColIdx := GridTV.DataController.GetItemByFieldName('MAP_LONG').Index;
      OutputVal := GridTV.DataController.Values[RecIdx, ColIdx];
      if not VarIsNull(OutputVal) then
      begin
        VarCast(OutputVal, OutputVal, varString);
        Longitude := OutputVal;

        if (trim(Latitude)<>'') then
        begin
              TotalItens := TotalItens + 1;
              //Código da OS
              ColIdx := GridTV.DataController.GetItemByFieldName('OFC_CODIGO').Index;
              OutputVal := GridTV.DataController.Values[RecIdx, ColIdx];

              if not VarIsNull(OutputVal) then
              begin
                VarCast(OutputVal, OutputVal, varInteger);
                OS := OutputVal;
              end;

              //Série do Equipamento
              ColIdx := GridTV.DataController.GetItemByFieldName('PRD_SERIE').Index;
              OutputVal := GridTV.DataController.Values[RecIdx, ColIdx];

              if not VarIsNull(OutputVal) then
              begin
                VarCast(OutputVal, OutputVal, varString);
                Serie := OutputVal;
              end;

              //Codigo  do Equipamento
              ColIdx := GridTV.DataController.GetItemByFieldName('PRD_CODIGO').Index;
              OutputVal := GridTV.DataController.Values[RecIdx, ColIdx];

              if not VarIsNull(OutputVal) then
              begin
                VarCast(OutputVal, OutputVal, varString);
                Cod_Equipamento := OutputVal;
              end;


              //Nome Equipamento
              ColIdx := GridTV.DataController.GetItemByFieldName('PRD_NOME').Index;
              OutputVal := GridTV.DataController.Values[RecIdx, ColIdx];

              if not VarIsNull(OutputVal) then
              begin
                VarCast(OutputVal, OutputVal, varString);
                Equipamento := OutputVal;
              end;


              //Cod Cliente
              ColIdx := GridTV.DataController.GetItemByFieldName('CLI_CODIGO').Index;
              OutputVal := GridTV.DataController.Values[RecIdx, ColIdx];

              if not VarIsNull(OutputVal) then
              begin
                VarCast(OutputVal, OutputVal, varInteger);
                Cod_cliente := OutputVal;
              end;

              //Nome Cliente
              ColIdx := GridTV.DataController.GetItemByFieldName('CLI_NOME_RAZAO').Index;
              OutputVal := GridTV.DataController.Values[RecIdx, ColIdx];

              if not VarIsNull(OutputVal) then
              begin
                VarCast(OutputVal, OutputVal, varString);
                Cliente := OutputVal;
              end;

               //Dada de Entrada
              ColIdx := GridTV.DataController.GetItemByFieldName('OFC_DT_ENTRADA').Index;
              OutputVal := GridTV.DataController.Values[RecIdx, ColIdx];

              if not VarIsNull(OutputVal) then
              begin
                VarCast(OutputVal, OutputVal, varString);
                Data := OutputVal;
              end;

               //Tecnico
              ColIdx := GridTV.DataController.GetItemByFieldName('MEC_NOME').Index;
              OutputVal := GridTV.DataController.Values[RecIdx, ColIdx];

              if not VarIsNull(OutputVal) then
              begin
                VarCast(OutputVal, OutputVal, varString);
                Tecnico := OutputVal;
              end;

               //Status
              ColIdx := GridTV.DataController.GetItemByFieldName('ST_NOME').Index;
              OutputVal := GridTV.DataController.Values[RecIdx, ColIdx];

              if not VarIsNull(OutputVal) then
              begin
                VarCast(OutputVal, OutputVal, varString);
                Status := OutputVal;
              end;

              Titulo := 'OS '+IntToStr(os)+' ('+IntToStr(cod_cliente)+'-'+Cliente+')';
              SubTitulo := 'Equipamento: '+Cod_Equipamento+'-'+Equipamento+' (Serie: '+Serie+')';
              Texto := ' Status: '+Status+'  -   Tecnico: '+Tecnico+'  -  Dt. Abertura:'+Data;

              TxtHtml := TxtHtml +','+RetornaHtmlMaps(Maps_RetiraCaracEspecial(Titulo),Maps_RetiraCaracEspecial(SubTitulo),Maps_RetiraCaracEspecial(Texto),Latitude,Longitude,inttostr(i+1));
        end;
      end;
    end;

  end;
  if (TotalItens = 0) then
  begin
     Application.MessageBox('Impossível carregar o mapa. Não existem registros com latitude e longitude definidos','Aviso',mb_ok+mb_iconinformation);
     exit;
  end;

  Arquivo := 'C:\Sistemas\HelpStore\Script\data.json';
  AssignFile( f,Arquivo );
  //Criando o txt
  if FileExists( Arquivo) then
   DeleteFile( Arquivo);

  Rewrite(F, Arquivo);
  Append(f);

  //--------------------------------Registro de Cabeçalho--------------------------------//

  aux := 'var data = {  "photos": [ '+copy(TxtHtml,2,length(TxtHtml))+' ]}';

  writeln(f,aux);

  CloseFile(f);

  HtmlMapa := dmApp.MAP_HTML_VIEW;
  Memo1.Text := StringReplace(HtmlMapa,'<TOTAL_ITEM>',IntToStr(TotalItens),[rfReplaceAll]);
  Memo1.SaveToFile('C:\Sistemas\HelpStore\Script\Mapa.html');

end;

function TFrmSelOrdens.RetornaHtmlMaps(Titulo,SubTitulo, Texto, Latitude,
  Longitude, indice: string): string;
var
  html1,html2 : string;
begin
   html1 := ' { "photo_title":'+QuotedStr(Titulo)+','+
            '   "owner_name":'+QuotedStr(SubTitulo)+','+
            '   "owner_url":'+QuotedStr(Texto)+','+
            '   "longitude":'+Longitude+','+
            '   "latitude":'+ Latitude+'}';

  { html1 := 'var contentString_'+Indice+' = ''<div id="content">''+'+#13#10+
                                '''<div id="siteNotice">''+'+#13#10+
                                '''</div>''+'+#13#10+
                                '''<h1 id="firstHeading" class="firstHeading">'+Titulo+'</h1>''+'+#13#10+
                                '''<div id="bodyContent">''+'+#13#10+
                                '''<p><b>'+SubTitulo+'</b>'+Texto+'</p>''+'+#13#10+
                                '''</div>''+'+#13#10+
                                '''</div>'';'+#13#10;


 // html2 := ' var infowindow_'+Indice+' = new google.maps.InfoWindow({content: contentString_'+Indice+'}//);'+#13#10+
  //    		' var latLng = new google.maps.LatLng('+Latitude+','+Longitude+')'+#13#10+
  //        ' var marker_'+Indice+' = new google.maps.Marker({position: latLng,draggable: false,icon: markerImage,clickable: true,title:'+QuotedStr(Titulo)+'});'+#13#10+
  //        ' google.maps.event.addListener(marker_'+Indice+', ''click'', function() { infowindow_'+Indice+'.open(map,marker_'+Indice+');});'+#13#10+
  //      	'	markers.push(marker_'+Indice+'); '+#13#10;

  result := html1 ;
end;

procedure TFrmSelOrdens.ActExibirMapaExecute(Sender: TObject);
begin
  GerarListaCoordenadas;
  frmMapa := TfrmMapa.Create(Self);
  frmMapa.ShowModal;
  frmMapa.Free;
  frmMapa := nil;
end;

end.
