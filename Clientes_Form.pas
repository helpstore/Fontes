 unit Clientes_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ActnList, dxBarDBNav, dxBar, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  IBCustomDataSet,
  dxDBEdtr, dxCntner, ExtCtrls, Buttons, StdCtrls,  
   Grids, DBGrids, RDprint, DBCtrls, IBQuery, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxContainer, cxTextEdit, cxMemo, cxDBEdit,
  cxGroupBox, cxNavigator, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxDBExtLookupComboBox, cxCalendar,
  cxLabel, ImgList, cxDBNavigator, cxRadioGroup, cxImage, cxImageComboBox,
  cxCheckBox, cxButtonEdit, cxCalc, cxSpinEdit, Menus,
  cxLookAndFeelPainters, cxButtons, cxDBLabel, 
  cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxPC,
  OleCtrls, SHDocVw, MSHTML, Wininet, cxPropertiesStore,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxGridBandedTableView,
  cxGridDBBandedTableView;

type
  TFrmClientes = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel1: TPanel;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    btnLocalizar: TdxBarButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    BtnFechar: TdxBarButton;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    ActFechar: TAction;
    actLookup: TAction;
    ActNP: TAction;
    ActPP: TAction;
    dsPessoasFJ: TDataSource;
    DataSource: TDataSource;
    DsFormaPgto: TDataSource;
    DsVendedores: TDataSource;
    DsClassificacoes: TDataSource;
    DsAtividade: TDataSource;
    dsClientes: TDataSource;
    PCPES: TcxPageControl;
    dxTabSheet4: TcxTabSheet;
    Shape3: TShape;
    TAB3: TcxTabSheet;
    Bevel2: TBevel;
    Shape5: TShape;
    CmbPessoa: TdxDBLookupEdit;
    dsLogradouros: TDataSource;
    dsBairros: TDataSource;
    DsSelPessoa: TDataSource;
    dsCidades: TDataSource;
    DsPessoas: TDataSource;
    ActFiltrar: TAction;
    ActVeiculos: TAction;
    btnFiltrarOS: TdxBarButton;
    DadosCliente: TAction;
    OpMenus: TdxBarButton;
    ActContas: TAction;
    ActPrecos: TAction;
    print: TRDprint;
    ActCadastro: TAction;
    ActProcuracao: TAction;
    ActAtivar: TAction;
    ActDesativar: TAction;
    LocalizarPessoa_Propriedade: TAction;
    ActFiltrarRapido: TAction;
    dsRegiao: TDataSource;
    btnEditar: TdxBarButton;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dsTipo_Contato: TDataSource;
    dsLocalizarContatos: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    dsContatos: TDataSource;
    dsUF: TDataSource;
    dsEndereco: TDataSource;
    dsTipoEndereco: TDataSource;
    ImageList1: TImageList;
    cxGroupBox2: TcxGroupBox;
    BtnAtividadePes: TcxButton;
    EdNomeFantasia: TcxDBMaskEdit;
    EdInicial: TcxDBMaskEdit;
    EDCODIGO: TcxDBMaskEdit;
    Label1: TcxLabel;
    Label46: TcxLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    dsImagens: TDataSource;
    cxStyle7: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    dxTabSheet5: TcxTabSheet;
    cxGroupCadContatos: TcxGroupBox;
    btnCliente2: TcxButton;
    spbTipoContato: TcxButton;
    cxDBMemoContato: TcxDBMemo;
    cxLookContatoRelacionamento: TcxDBLookupComboBox;
    cxLookTipoContato: TcxDBLookupComboBox;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxLabel10: TcxLabel;
    cxDBMaskEdit3: TcxDBMaskEdit;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1CONTATO_NOME: TcxGridDBColumn;
    cxGridDBTableView1TIPOCONTATO: TcxGridDBColumn;
    cxGridDBTableView1OBSERVACAO: TcxGridDBColumn;
    cxGridDBTableView1CELULAR: TcxGridDBColumn;
    cxGridDBTableView1RESIDENCIAL: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxNavigator1: TcxNavigator;
    cxLabel81: TcxLabel;
    cxLabel82: TcxLabel;
    cxDBLabel1: TcxDBLabel;
    Panel2: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    cxGroupBox3: TcxGroupBox;
    btnCidade: TcxButton;
    btnBairro: TcxButton;
    btnLogradouro: TcxButton;
    btnTipoEndereco: TcxButton;
    btnRegiao: TcxButton;
    cmbLogradouro: TcxDBLookupComboBox;
    cmbBairro: TcxDBLookupComboBox;
    cmbCidade: TcxDBLookupComboBox;
    cxDBMaskEdit1: TcxDBMaskEdit;
    EdComplemento: TcxDBTextEdit;
    dxDBMaskEdit1: TcxDBMaskEdit;
    cxGroupBox4: TcxGroupBox;
    cxLabel2: TcxLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxLabel1: TcxLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    EdUF: TcxDBLookupComboBox;
    cmbTipoEndereco: TcxDBLookupComboBox;
    Label51: TcxLabel;
    cmbRegiao: TcxDBLookupComboBox;
    cxLabel58: TcxLabel;
    cxLabel63: TcxLabel;
    cxLabel68: TcxLabel;
    cxLabel69: TcxLabel;
    cxLabel70: TcxLabel;
    cxLabel71: TcxLabel;
    cxLabel72: TcxLabel;
    cxLabel73: TcxLabel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1LOGRADOUROSNOME: TcxGridDBColumn;
    cxGrid2DBTableView1COMPLEMENTO: TcxGridDBColumn;
    cxGrid2DBTableView1NUMERO_END: TcxGridDBColumn;
    cxGrid2DBTableView1BAIRRONOME: TcxGridDBColumn;
    cxGrid2DBTableView1CIDADENOME: TcxGridDBColumn;
    cxGrid2DBTableView1REGIOESNOME: TcxGridDBColumn;
    cxGrid2DBTableView1CEP: TcxGridDBColumn;
    cxGrid2DBTableView1ESTADONOME: TcxGridDBColumn;
    cxGrid2DBTableView1NOMETPENDERECO: TcxGridDBColumn;
    cxGrid2DBTableView1UF_SIGLA: TcxGridDBColumn;
    cxGrid2DBTableView1DATA_INICIAL: TcxGridDBColumn;
    cxGrid2DBTableView1DATA_FINAL: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    cxNavigator2: TcxNavigator;
    cxDBCheckBox10: TcxDBCheckBox;
    SpeedButton4: TcxButton;
    dxDBEdit17: TdxDBEdit;
    Label74: TcxLabel;
    Label73: TcxLabel;
    edtCEP: TdxDBMaskEdit;
    edtUF: TdxDBEdit;
    cmbCidade1: TdxDBLookupEdit;
    Label68: TcxLabel;
    Label72: TcxLabel;
    edtComplemento: TdxDBEdit;
    cmbBairro1: TdxDBLookupEdit;
    btnLogradouro1: TcxButton;
    Label67: TcxLabel;
    SpeedButton1: TcxButton;
    btnCidade1: TcxButton;
    cxDBMaskEdit4: TcxDBMaskEdit;
    dxDBPickEdit2: TdxDBPickEdit;
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
    Button1: TcxButton;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    BtnPropriedade: TcxButton;
    cxButton4: TcxButton;
    Panel3: TPanel;
    cxDBDateEdit9: TcxDBDateEdit;
    cxLabel75: TcxLabel;
    EDCPFCGC: TcxDBMaskEdit;
    cxLabel76: TcxLabel;
    EdRGIE: TcxDBTextEdit;
    cxLabel77: TcxLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxLabel80: TcxLabel;
    edtEmissor: TcxDBTextEdit;
    cxLabel79: TcxLabel;
    cxDBMemo1: TcxDBMemo;
    cxLabel78: TcxLabel;
    cxDBMaskEdit7: TcxDBMaskEdit;
    cxDBMaskEdit6: TcxDBMaskEdit;
    cxDBMaskEdit5: TcxDBMaskEdit;
    Label3: TcxLabel;
    Label2: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    cmbLogradouro1: TdxDBLookupEdit;
    CmbAtividadePes: TdxDBLookupEdit;
    cbRegiao1: TdxDBLookupEdit;
    tbsMapa: TcxTabSheet;
    Panel4: TPanel;
    btnLimpar: TcxButton;
    WebBrowser1: TWebBrowser;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    TimerMaps: TTimer;
    btnLocEndereco: TcxButton;
    ActLimpaCoordenada: TAction;
    ActMarcarCoordenada: TAction;
    pnlConexao: TPanel;
    cmbCategorias: TcxDBLookupComboBox;
    cxLabel5: TcxLabel;
    btnCategoria: TcxButton;
    SelCategorias: TIBQuery;
    SelCategoriasCNPJ: TIBStringField;
    SelCategoriasCODIGO: TIntegerField;
    SelCategoriasNOME: TIBStringField;
    dsCategoria: TDataSource;
    tbsOsEquipamentos: TcxTabSheet;
    LVEquipamento: TcxGridLevel;
    GridEquipamento: TcxGrid;
    dsEquipamento: TDataSource;
    GridContratos: TcxGrid;
    LVContratos: TcxGridLevel;
    Panel5: TPanel;
    Panel6: TPanel;
    dsLinkContrato: TDataSource;
    Contrato: TIBQuery;
    ContratoCODIGO: TIntegerField;
    ContratoNUM_CONTRATO: TIBStringField;
    ContratoDT_INICIO: TDateTimeField;
    ContratoDT_FIM: TDateTimeField;
    ContratoATIVO: TIBStringField;
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
    ContratoCOD_CONTRATO: TIntegerField;
    ContratoTIPO_CONTRATO: TIBStringField;
    ContratoDATA: TDateField;
    ContratoCNPJ: TIBStringField;
    stgFrmCadCliente4: TcxPropertiesStore;
    menugrid: TcxGridPopupMenu;
    TVEquipamentos: TcxGridDBBandedTableView;
    TVContratos: TcxGridDBBandedTableView;
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
    TVContratosCODIGO: TcxGridDBBandedColumn;
    TVContratosNUM_CONTRATO: TcxGridDBBandedColumn;
    TVContratosDT_INICIO: TcxGridDBBandedColumn;
    TVContratosDT_FIM: TcxGridDBBandedColumn;
    TVContratosATIVO: TcxGridDBBandedColumn;
    TVContratosCOD_CONTRATO: TcxGridDBBandedColumn;
    TVContratosTIPO_CONTRATO: TcxGridDBBandedColumn;
    TVContratosDATA: TcxGridDBBandedColumn;
    TVContratosCNPJ: TcxGridDBBandedColumn;
    cxDBCheckBox1: TcxDBCheckBox;
    //EdUF: TcxDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure actLookupExecute(Sender: TObject);
    procedure cmbClassifEnter(Sender: TObject);
    procedure BtnFormaClick(Sender: TObject);
    procedure EdTipoEnter(Sender: TObject);
    procedure BtnclassificacaoClick(Sender: TObject);
    procedure BtnAtividadeClick(Sender: TObject);
    procedure BtnAtividadePesClick(Sender: TObject);
    procedure btnLogradouroClick(Sender: TObject);
    procedure btnBairroClick(Sender: TObject);
    procedure btnCidadeClick(Sender: TObject);
    procedure PCPESChange(Sender: TObject);
    procedure ActFiltrarExecute(Sender: TObject);
    procedure ActVeiculosExecute(Sender: TObject);
    procedure pcEnter(Sender: TObject);
    procedure DsPessoasStateChange(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure CmbTipoPessoaEnter(Sender: TObject);
    procedure PCPESEnter(Sender: TObject);
    procedure DadosClienteExecute(Sender: TObject);
    procedure EdInicialEnter(Sender: TObject);
    procedure EdInicialExit(Sender: TObject);
    procedure CmbTipoPessoaExit(Sender: TObject);
    procedure EdTipoExit(Sender: TObject);
    procedure cmbClassifExit(Sender: TObject);
    procedure dsPessoasFJUpdateData(Sender: TObject);
    procedure dsPessoasFJStateChange(Sender: TObject);
    procedure ActContasExecute(Sender: TObject);
    procedure EdRGIEEnter(Sender: TObject);
    procedure edUFProChange(Sender: TObject);
    procedure BtnEnderecoTrabClick(Sender: TObject);
    procedure BtnCidadePaiClick(Sender: TObject);
    procedure BtnEnderecoPaiClick(Sender: TObject);
    procedure CmPessoaConvenioEnter(Sender: TObject);
    procedure CmPessoaConvenioExit(Sender: TObject);
    procedure ActPropriedadesExecute(Sender: TObject);
    procedure dxDBEdit21DblClick(Sender: TObject);
    procedure ActPrecosExecute(Sender: TObject);
    procedure ActCadastroExecute(Sender: TObject);
    procedure ActProcuracaoExecute(Sender: TObject);
    procedure ActAtivarExecute(Sender: TObject);
    procedure ActDesativarExecute(Sender: TObject);
    procedure LocalizarPessoa_PropriedadeExecute(Sender: TObject);
    procedure ActFiltrarRapidoExecute(Sender: TObject);
    procedure btnRegiaoClick(Sender: TObject);
    procedure spbTipoContatoClick(Sender: TObject);
    procedure btnCliente2Click(Sender: TObject);
    procedure cxLookContatoRelacionamentoEnEdInicialEnterter(Sender: TObject);
    procedure cxLookTipoContatoEnter(Sender: TObject);
    procedure cxDBMemoContatoEnter(Sender: TObject);
    procedure cxLookContatoRelacionamentoExit(Sender: TObject);
    procedure cxLookTipoContatoExit(Sender: TObject);
    procedure cxDBMemoContatoExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure btnTipoEnderecoClick(Sender: TObject);
    procedure dxTabSheet5Enter(Sender: TObject);
    procedure PCCLIENTEEnter(Sender: TObject);
    procedure btnLogradouro1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnCidade1Click(Sender: TObject);
    procedure WebBrowser1CommandStateChange(Sender: TObject;
      Command: Integer; Enable: WordBool);
    procedure TimerMapsTimer(Sender: TObject);
    procedure dxBarDBNavFirst1Click(Sender: TObject);
    procedure dxBarDBNavPrev1Click(Sender: TObject);
    procedure dxBarDBNavNext1Click(Sender: TObject);
    procedure dxBarDBNavLast1Click(Sender: TObject);
    procedure btnLocEnderecoClick(Sender: TObject);
    procedure ActLimpaCoordenadaExecute(Sender: TObject);
    procedure ActMarcarCoordenadaExecute(Sender: TObject);
    procedure SelCategoriasBeforeOpen(DataSet: TDataSet);
    procedure btnCategoriaClick(Sender: TObject);
    procedure GridContratosMouseEnter(Sender: TObject);
    procedure GridEquipamentoMouseEnter(Sender: TObject);
  private
    { Private declarations }
    conectado : boolean;
    HTMLWindow2: IHTMLWindow2;
    procedure abreDataSets;
    procedure SetLblPessoa;
    procedure VerificaLocalizacao;

  public
    { Public declarations }
  end;

var
  FrmClientes: TFrmClientes;
  PcAtiva    : Integer ;
implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     PessoasFJ_Form,
     FormasPagto_Form,
     Vendedores_Form,
     Classificacoes_Form,
     Atividades_Form,
     Localizar_Cliente,
     Logradouros_Form,
     Bairros_Form,
     Cidades_Form,
     VeiculosPessoas_Form,
     ContasPessoas_Form,
     Dados_Desconto_Form,
     Propriedades_Form,
     PrecosEspeciaisPessoas_Form, Entra_Dados_Autorizado_Form,
  Localizar_Propriedade_Ie, Filtra_Clientes_Form, Financeiro_Dm,
  Regioes_Form, Cadastros_Dm2, Servicos_DM, Contatos_Form, Caixa_Dm,
  SelOrdens_Form, TipoEndereco_Form, Activex, ClientesCategoria_Form;

const
 HTMLStr: AnsiString =
'<html> '+
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
'    map.set("streetViewControl", false);'+
'    google.maps.event.addListener(map, "rightclick", '+
'         function(event) '+
'                        {'+
'                         ClearMarkers();'+
'                         document.getElementById("LatValue").value = event.latLng.lat(); '+
'                         document.getElementById("LngValue").value = event.latLng.lng(); '+
'                         PutMarker(document.getElementById("LatValue").value, document.getElementById("LngValue").value,"") '+
'                        } '+
'   ); '+
''+
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


{$R *.DFM}

procedure TFrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If MessageDlg('Deseja Sair da Tela de Cadastros?', mtConfirmation, [mbOK, mbCancel], 0) = MROK
     THEN BEGIN
          //
          FrmMain.Codigo_Int := DsPessoas.DataSet.FieldByName('CODIGO').asInteger;
          //
          If Datasource.DataSet.Tag = 0
          Then
             Datasource.Dataset.Close
          else
              Datasource.Dataset.tag := Datasource.Dataset.tag - 1;

          If dsAtividade.DataSet.Tag = 0
          Then
             dsAtividade.DataSet.Close
          else
              dsAtividade.Dataset.tag := dsAtividade.Dataset.tag - 1;

          If dsRegiao.DataSet.Tag = 0 Then
            dsRegiao.DataSet.Close
          else
            dsRegiao.Dataset.tag := dsRegiao.Dataset.tag - 1;

          If dsLogradouros.DataSet.Tag = 0
          Then
             dsLogradouros.DataSet.Close
          else
              dsLogradouros.Dataset.tag := dsLogradouros.Dataset.tag - 1;

          If dsBairros.DataSet.Tag = 0
          Then
             dsBairros.DataSet.Close
          else
              dsBairros.Dataset.tag := dsBairros.Dataset.tag - 1;


          If DsVendedores.DataSet.Tag = 0
          Then
             DsVendedores.DataSet.Close
          else
              DsVendedores.Dataset.tag := DsVendedores.Dataset.tag - 1;

          If DsFormaPgto.DataSet.Tag = 0
          Then
             DsFormaPgto.DataSet.Close
          else
              DsFormaPgto.Dataset.tag := DsFormaPgto.Dataset.tag - 1;

          If DsClassificacoes.DataSet.Tag = 0
          Then
             DsClassificacoes.DataSet.Close
          else
              DsClassificacoes.Dataset.tag := DsClassificacoes.Dataset.tag - 1;

          If DsAtividade.DataSet.Tag = 0
          Then
             DsAtividade.DataSet.Close
          else
              DsAtividade.Dataset.tag := DsAtividade.Dataset.tag - 1;

          If DsRegiao.DataSet.Tag = 0
          Then
             DsRegiao.DataSet.Close
          else
            DsRegiao.Dataset.tag := DsRegiao.Dataset.tag - 1;

          //
          If DMCadastros.Estados.Tag = 0
          Then
             DMCadastros.Estados.Close
          else
              DMCadastros.Estados.tag := DMCadastros.Estados.tag - 1;

          If dsLocalizarContatos.DataSet.tag = 0 Then
              dsLocalizarContatos.DataSet.Close
          else
              dsLocalizarContatos.DataSet.tag := dsLocalizarContatos.DataSet.tag - 1;

          If dsTipo_Contato.DataSet.tag = 0 Then
              dsTipo_Contato.DataSet.Close
          else
              dsTipo_Contato.DataSet.tag := dsTipo_Contato.DataSet.tag - 1;

          Action := caFree;
          FrmClientes := Nil;
     END
     ELSE BEGIN
          Action := caNone;
     END;
  //
end;

procedure TFrmClientes.ActIncluirExecute(Sender: TObject);
begin
     If DsPessoas.State in dsEditModes
     Then
         Exit;

     Try
        PCPES.ActivePageIndex := 0;

        If EdCodigo.Enabled
        then
            EdCodigo.SetFocus
        else
            EdInicial.SetFocus;

        DsPessoas.DataSet.Append;
     Except
           On E:Exception Do
           Begin
             ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
             Exit;
           End

     End;
end;

procedure TFrmClientes.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Cliente ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES
  Then begin
       //Excluindo Cliente
       If DataSource.Dataset.RecordCount > 0
       then
           DataSource.Dataset.Delete;
       //Excluindo Pessoa Fisica
       If DsPessoas.Dataset.RecordCount > 0
       then
           DsPessoas.Dataset.Delete;
  end;
end;

procedure TFrmClientes.ActPostExecute(Sender: TObject);
begin
     If DataSource.State in [ dsinsert, dsedit ]
     then begin
          //
          If Trim(cmbVendedor.Text) <> '' Then
              DataSource.DataSet.FieldByName('CNPJ_VEND').asString := dsVendedores.DataSet.FieldByName('CNPJ').asString;
          //
          If Trim(cmbForma.Text) <> ''
          Then
              DataSource.DataSet.FieldByName('CNPJ_FPAGTO').asString := dsFormaPgto.DataSet.FieldByName('CNPJ').asString;

          If Trim(CmbClassificacao.Text) <> ''
          Then
              DataSource.DataSet.FieldByName('CNPJ_CLASSIF').asString := dsFormaPgto.DataSet.FieldByName('CNPJ').asString;
          //
          Try
             DATASOURCE.DataSet.Post;
             DMApp.Transaction.CommitRetaining;
          Except
                 On E:Exception Do
           Begin
             ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
             Exit;
           End

          End;
     end
     else begin
          If DsPessoas.State in [ dsinsert, dsedit ]
          then begin
               Try
                  DsPessoas.DataSet.Post;

                  DMApp.Transaction.CommitRetaining;
               Except
                     On E:Exception Do
                     Begin
                       ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
                       Exit;
                     End

               End;
          end;
     end;
     cxGroupCadContatos.Enabled  := False;
end;

procedure TFrmClientes.ActCancelExecute(Sender: TObject);
begin
  If DsPessoas.DataSet.State in dsEditModes
  Then BEGIN
       If MessageDlg('Deseja Realmente Cancelar as Informações?', MtInformation, [MbOk, MbCancel],0 ) = MrOk
       then
           DsPessoas.DataSet.Cancel
  END
  Else begin
       If DataSource.DataSet.State in dsEditModes
       Then BEGIN
            If MessageDlg('Deseja Realmente Cancelar as Informações?', MtInformation, [MbOk, MbCancel],0 ) = MrOk
            then
                DataSource.DataSet.Cancel
       end
       else begin
            BtnFechar.OnClick(BtnFechar);
       end;
  end;
  cxGroupCadContatos.Enabled  := False;
end;

procedure TFrmClientes.FormShow(Sender: TObject);
begin
  
  IniciaComponentes(Self as TForm);
  if not(DsPessoas.DataSet.Active) then
    DsPessoas.DataSet.Open; 

  If Not(dsPessoasFJ.DataSet.Active) Then
    dsPessoasFJ.DataSet.Open
  else
    dsPessoasFJ.DataSet.tag := dsPessoasFJ.DataSet.tag + 1;

  If Not(dsLocalizarContatos.DataSet.Active) Then
    dsLocalizarContatos.DataSet.Open
  else
    dsLocalizarContatos.DataSet.tag := dsLocalizarContatos.DataSet.tag + 1;

  If Not(dsTipo_Contato.DataSet.Active) Then
    dsTipo_Contato.DataSet.Open
  else
    dsTipo_Contato.DataSet.tag := dsTipo_Contato.DataSet.tag + 1;

  If Not(dsEndereco.DataSet.Active) Then
    dsEndereco.DataSet.Open
  else
    dsEndereco.DataSet.tag := dsEndereco.DataSet.tag + 1;

  If Not(dsTipoEndereco.DataSet.Active) Then
    dsTipoEndereco.DataSet.Open
  else
    dsTipoEndereco.DataSet.tag := dsTipoEndereco.DataSet.tag + 1;

  If Not(dsUF.DataSet.Active) Then
    dsUF.DataSet.Open
  else
    dsUF.DataSet.tag := dsUF.DataSet.tag + 1;

  tbsOsEquipamentos.TabVisible :=  (dmApp.EXIBE_SRV = 'S');
  {if DsPessoas.DataSet.FieldByName('PEssoa').AsString = 'J' then
      cxdbradioPessoa.ItemIndex := 0
  else if DsPessoas.DataSet.FieldByName('PEssoa').AsString = 'F' then
      cxdbradioPessoa.ItemIndex := 1
  else
      cxdbradioPessoa.ItemIndex := 2; }


  abreDataSets;
  dmCadastros.SetMaskCNPJ_CPF;
  PCPES.ACTIVEPAGEINDEX :=  0;

  dsEndereco.DataSet.Close;
  dsEndereco.DataSet.Open;

  Contrato.Close;
  Contrato.Open;

  ContratosItens.Close;
  ContratosItens.Open;
end;

procedure TFrmClientes.FormCreate(Sender: TObject);
var
   aStream     : TMemoryStream;
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

 tbsMapa.TabVisible := (dmApp.Perfil_ComputadorEXIBE_MAPA.Value = 'S');

 if tbsMapa.TabVisible then
   conectado := InternetCheckConnection('http://www.google.com/',  1,  0)
 else
 begin
   conectado := false;
   exit;
 end;

 if ((conectado)) then
 begin
    WebBrowser1.Navigate('about:blank');
    if Assigned(WebBrowser1.Document) then
    begin
      aStream := TMemoryStream.Create;
      try
         aStream.WriteBuffer(Pointer(HTMLStr)^, Length(HTMLStr));
         //aStream.Write(HTMLStr[1], Length(HTMLStr));
         aStream.Seek(0, soFromBeginning);
         (WebBrowser1.Document as IPersistStreamInit).Load(TStreamAdapter.Create(aStream));
      finally
         aStream.Free;
      end;
      HTMLWindow2 := (WebBrowser1.Document as IHTMLDocument2).parentWindow;
    end;
 end;
end;

procedure TFrmClientes.ActLocalizarExecute(Sender: TObject);
Var
   Codigo: Integer;
begin
     try
        If Frm_Localizar_Cliente = Nil  then
          Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente);

        Frm_Localizar_Cliente.DSource.DataSet := DmCadastros.SelPessoasFj ;

        If Not(DmCadastros.SelPessoasFj.Active)
        Then
            DmCadastros.SelPessoasFj.Open
        else
            DmCadastros.SelPessoasFj.Tag := DmCadastros.SelPessoasFj.Tag + 1;

        if ( Frm_Localizar_Cliente.showmodal = mrOk )
        Then Begin
             Codigo := (Frm_Localizar_Cliente.CampTrecho) ;
        end
        ELSE
            Codigo := 0;

        If Frm_Localizar_Cliente.Tag = 0
        then begin
             Frm_Localizar_Cliente.free   ;
             Frm_Localizar_Cliente := Nil ;
        end
        else begin
             Frm_Localizar_Cliente.Tag := Frm_Localizar_Cliente.Tag - 1 ;
        end;

        DmCadastros.SelPessoasFj.Close ;

        IF CODIGO > 0
        THEN BEGIN
             IF NOT DsPessoas.DataSet.Locate ('CODIGO',Codigo,[])
             THEN BEGIN
                  MessageDlg('Cliente Não Cadastrado!', mtError, [mbOK], 0);
             END;
        END;

     Except
     end;
end;

procedure TFrmClientes.EdCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
       If Self.ActiveControl = PCPES Then
          Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmClientes.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmClientes.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       BtnPropriedade.Enabled := False ;
       ActContas.Enabled      := False ;
       ActPrecos.Enabled      := False ;
       ActVeiculos.Enabled    := False ;
       ActPrecos.Enabled      := False ;
       ActContas.Enabled      := False ;
       ActIncluir.Enabled     := False;
       ActAlterar.Enabled     := False;
       ActExcluir.Enabled     := False;
       ActLocalizar.Enabled   := False;
       BtnSalvar.Enabled      := True;
       BtnCancelar.Enabled    := True;
       ActFechar.Enabled      := False;
       ActCadastro.Enabled    := False;
     End
  Else
     Begin
       BtnPropriedade.Enabled := true ;
       ActContas.Enabled      := true ;
       ActPrecos.Enabled      := true ;
       BtnPropriedade.Enabled := true ;
       ActVeiculos.Enabled    := true ;
       ActContas.Enabled      := true ;
       ActPrecos.Enabled      := True ;
       ActIncluir.Enabled     := ActIncluir.Tag = 1;
       ActAlterar.Enabled     := ActAlterar.Tag = 1;
       ActExcluir.Enabled     := ActExcluir.Tag = 1;
       ActLocalizar.Enabled   := True;
       BtnSalvar.Enabled      := False;
       BtnCancelar.Enabled    := False;
       ActFechar.Enabled      := True;
       ActCadastro.Enabled    := True;
     End;
end;

procedure TFrmClientes.ActFecharExecute(Sender: TObject);
begin
  If FrmClientes.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmClientes.actLookupExecute(Sender: TObject);
begin
  If FrmClientes.ActiveControl = CmbForma Then
     BtnForma.OnClick(BtnForma);
  If FrmClientes.ActiveControl = Cmbclassificacao Then
     Btnclassificacao.OnClick(Btnclassificacao);
  If FrmClientes.ActiveControl = CmbAtividade Then
     BtnAtividade.OnClick(BtnAtividade);
  If FrmClientes.ActiveControl = cmbAtividadePes Then
     btnAtividadePes.OnClick(btnAtividadePes);
  If FrmClientes.ActiveControl = cmbLogradouro Then
     btnLogradouro.OnClick(btnLogradouro);
  If FrmClientes.ActiveControl = cmbLogradouro1 Then
     btnLogradouro1.OnClick(btnLogradouro1);
  If FrmClientes.ActiveControl = cmbBairro Then
     btnBairro.OnClick(btnBairro);
  If FrmClientes.ActiveControl = cmbCidade Then
     btnCidade.OnClick(btnCidade);
  If FrmClientes.ActiveControl = cmbCidade1 Then
     btnCidade1.OnClick(btnCidade1);
  If FrmClientes.ActiveControl = cmbLogradouroTrab Then
     BtnEnderecoTrab.OnClick(BtnEnderecoTrab);
  If FrmClientes.ActiveControl = cmbLogradouroPai Then
     BtnEnderecoPai.OnClick(BtnEnderecoPai);

  If FrmClientes.ActiveControl = cmbCidadePai Then
     BtnCidadePai.OnClick(BtnCidadePai);

  If FrmClientes.ActiveControl = cmbRegiao Then
     btnRegiao.OnClick(BtnCidadePai);
end;

procedure TFrmClientes.cmbClassifEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TFrmClientes.BtnFormaClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFormasPagto', False);
  { * * * * * }
  //
  DsFormaPgto.DataSet.Tag := DsFormaPgto.DataSet.Tag + 1 ;
  //
{  If DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}
  //
  FrmFormasPagto := TFrmFormasPagto.Create(Application);

  FrmFormasPagto.Showmodal ;

  Datasource.DataSet.FieldByName('COD_FPAGTO').asInteger := FrmMain.Codigo_Int;

  DsFormaPgto.DataSet.Tag := DsFormaPgto.DataSet.Tag - 1 ;

  DMCadastros.Tag := DMCadastros.Tag - 1;

  CmbForma.SetFocus;
end;

procedure TFrmClientes.EdTipoEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);

  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmClientes.BtnclassificacaoClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;

  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DsClassificacoes.DataSet.Tag := DsClassificacoes.DataSet.Tag + 1;

  FrmClassificacoes := TFrmClassificacoes.Create(Self);

  FrmClassificacoes.ShowModal;

  Datasource.DataSet.FieldByName('COD_CLASSIF').asInteger := FrmMain.Codigo_Int;

  DsClassificacoes.DataSet.Tag := DsClassificacoes.DataSet.Tag - 1;

  DMCadastros.Tag := DMCadastros.Tag - 1;

  cmbClassificacao.SetFocus;
end;

procedure TFrmClientes.BtnAtividadeClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
{  If DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  DsAtividade.DataSet.Tag := DsAtividade.DataSet.Tag + 1;


  //
  FrmAtividades := TFrmAtividades.Create(Self);

  FrmAtividades.ShowModal;
  //
  Datasource.DataSet.FieldByName('ATIVIDADE').asInteger := FrmMain.Codigo_Int;

  DsAtividade.DataSet.Tag := DsAtividade.DataSet.Tag - 1;

  DMCadastros.Tag := DMCadastros.Tag - 1;

  cmbAtividade.SetFocus;
end;

procedure TFrmClientes.BtnAtividadePesClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If DsPessoas.DataSet.State = dsBrowse Then
     DsPessoas.DataSet.Edit;
  //


  DsAtividade.DataSet.Tag := DsAtividade.DataSet.Tag + 1;

  //
  FrmAtividades := TFrmAtividades.Create(Self);

  FrmAtividades.ShowModal;
  //
  DsPessoas.DataSet.FieldByName('ATIVIDADE').asInteger := FrmMain.Codigo_Int;

  DsAtividade.DataSet.Tag := DsAtividade.DataSet.Tag - 1;

  DMCadastros.Tag := DMCadastros.Tag - 1;

  CmbAtividadePes.SetFocus;
end;

procedure TFrmClientes.btnLogradouroClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  If dsEndereco.DataSet.State = dsBrowse Then
     dsEndereco.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmLogradouros', False);

  dsLogradouros.DataSet.Tag := dsLogradouros.DataSet.Tag + 1;


  FrmLogradouros := TFrmLogradouros.Create(Self);
  FrmLogradouros.ShowModal;

  dsEndereco.DataSet.FieldByName('ID_LOGRADOURO').asInteger := FrmMain.Codigo_Int;

  DMCadastros.Tag := DMCadastros.Tag - 1;

  dsLogradouros.DataSet.Tag := dsLogradouros.DataSet.Tag - 1;

  FrmLogradouros.Free;
  FrmLogradouros := Nil;
  cmbLogradouro.SetFocus;
end;

procedure TFrmClientes.btnBairroClick(Sender: TObject);
begin
  If dsEndereco.DataSet.State = dsBrowse Then
     dsEndereco.DataSet.Edit;


  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmBairros', False);

  FrmBairros := TFrmBairros.Create(Self);

  FrmBairros.ShowModal;
  dsEndereco.DataSet.FieldByName('ID_BAIRRO').asInteger := FrmMain.Codigo_Int;

  FrmBairros.Free;
  FrmBairros := Nil;
  cmbBairro.SetFocus;

end;

procedure TFrmClientes.btnCidadeClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  If dsEndereco.DataSet.State = dsBrowse Then
     dsEndereco.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCidades', False);

  FrmCidades := TFrmCidades.Create(Self);
  FrmCidades.ShowModal;

  dsEndereco.DataSet.FieldByName('ID_CIDADE').asInteger := FrmMain.Codigo_Int;

  FrmCidades.Free;
  FrmCidades := Nil;
  DMCadastros.Cidades.Close;
  DMCadastros.Cidades.Open;
  cmbCidade.SetFocus;
end;

procedure TFrmClientes.PCPESChange(Sender: TObject);
begin
     IF (PCPES.ActivePageIndex = 4)and (conectado) then
        TimerMaps.Enabled := true;

     IF PCPES.ActivePageIndex = 1
     THEN
         DsSelPessoa.DataSet.Close
     ELSE
         DsSelPessoa.DataSet.Open ;

     //
     If (DsPessoas.DataSet.State in dsEditModes)
     THEN
         DsPessoas.DataSet.Post ;

    if (PCPES.ActivePage.TabIndex = 2) then
    begin
       DMCadastros.Contato.Close;
       DMCadastros.Contato.Open;
    end;

    if(PCPES.ActivePageIndex  = 3) then
    begin
      if dsContatos.DataSet.State in [dsinsert ]then
      begin
          cxGroupCadContatos.Enabled  := False;
          cxGrid1.Enabled := False;
      end
      else
      begin
          cxGroupCadContatos.Enabled  := True;
          cxGrid1.Enabled := True;
      end;
    end;
   
end;

procedure TFrmClientes.ActFiltrarExecute(Sender: TObject);
begin
  //     
end;

procedure TFrmClientes.ActVeiculosExecute(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmVeiculosFrota', True)) Then
     Exit;
  { * * * * * }
  If FrmVeiculosFrota = Nil Then
     Begin

       FrmVeiculosFrota := TFrmVeiculosFrota.Create(Self);
       //
       FrmVeiculosFrota.Showmodal ;
       FrmVeiculosFrota.Free      ;
       FrmVeiculosFrota := Nil    ;
     End;
end;

procedure TFrmClientes.pcEnter(Sender: TObject);
begin
     PcAtiva := 2;

     If DsPessoas.State in [ dsinsert, dsedit ]
     then
         DsPessoas.DataSet.Post ;

end;

procedure TFrmClientes.DsPessoasStateChange(Sender: TObject);
begin
{     If DsPessoas.State in dsEditModes Then
     Begin
          ActIncluir.Enabled   := False;
          ActAlterar.Enabled   := False;
          ActExcluir.Enabled   := False;
          ActLocalizar.Enabled := False;
          ActFiltrar.Enabled   := False;
          BtnSalvar.Enabled    := True;
          BtnCancelar.Enabled  := True;
          ActFechar.Enabled    := False;
          ActVeiculos.Enabled  := False;
     End
     Else Begin
          ActVeiculos.Enabled  := True ;
          ActIncluir.Enabled   := ActIncluir.Tag = 1;
          ActAlterar.Enabled   := ActAlterar.Tag = 1;
          ActExcluir.Enabled   := ActExcluir.Tag = 1;
          ActLocalizar.Enabled := True;
          ActFiltrar.Enabled   := True;
          BtnSalvar.Enabled    := False;
          BtnCancelar.Enabled  := False;
          ActFechar.Enabled    := True;
     End;

     if DsPessoas.DataSet.State in [dsinsert] then
        cxGroupCadContatos.Enabled := false;   }
end;

procedure TFrmClientes.ActAlterarExecute(Sender: TObject);
begin
     If DataSource.State in dsEditModes Then
        Exit;

     If DsPessoas.State in dsEditModes Then
        Exit;

     Try
        DsPessoas.DataSet.Edit;
     Except
           On E:Exception Do
                     Begin
                       ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
                       Exit;
                     End
     End;
end;

procedure TFrmClientes.CmbTipoPessoaEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmClientes.PCPESEnter(Sender: TObject);
begin
     PcAtiva := 1 ;
end;

procedure TFrmClientes.DadosClienteExecute(Sender: TObject);
begin
     PCPES.ActivePageIndex := 1;
     
    // dxDBEdit1.SetFocus ;
end;

procedure TFrmClientes.EdInicialEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFrmClientes.EdInicialExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO(SENDER);
end;

procedure TFrmClientes.CmbTipoPessoaExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO(SENDER);
end;

procedure TFrmClientes.EdTipoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO(SENDER);
end;

procedure TFrmClientes.cmbClassifExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO(SENDER);
end;

procedure TFrmClientes.dsPessoasFJUpdateData(Sender: TObject);
begin
     If dsPessoasFJ.DataSet.FieldByName('NOME_RAZAO').IsNull
     then begin
          PcPES.ActivePageIndex := 0;
          EdInicial.SetFocus ;
          Abort ;
     end;
end;

procedure TFrmClientes.dsPessoasFJStateChange(Sender: TObject);
begin
  If dsPessoasFJ.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActLocalizar.Enabled := False;
       BtnSalvar.Enabled    := True;
       BtnCancelar.Enabled  := True;
       ActFechar.Enabled    := False;
     End
  Else
     Begin
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActExcluir.Enabled   := ActExcluir.Tag = 1;
       ActLocalizar.Enabled := True;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
     End; 
end;

procedure TFrmClientes.ActContasExecute(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmContasPessoas', True)) Then
     Exit;
  { * * * * * }
  If FrmContasPessoas = Nil Then
     Begin

       FrmContasPessoas := TFrmContasPessoas.Create(Self);
       //
       FrmContasPessoas.Showmodal ;
       FrmContasPessoas.Free      ;
       FrmContasPessoas := Nil    ;
     End;
end;

procedure TFrmClientes.EdRGIEEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);

     IF ((DMCadastros.Pessoas_FJUf.IsNull) AND ( DMCadastros.Pessoas_FJ.STATE IN [ DSINSERT, DSEDIT ] ))
     THEN BEGIN
          MessageDlg('Digite o Estado!', mtError, [mbOK], 0);
          EdUF.SetFocus ;
     END
     ELSE BEGIN
          IF DMCadastros.Pessoas_FJPESSOA.Value = 'J'
          THEN BEGIN
               EdRGIE.SetFocus ;
          END
          ELSE BEGIN
               EdRGIE.Properties.EditFormat := '';
          END;
     END;
end;

procedure TFrmClientes.edUFProChange(Sender: TObject);
begin
     If length(DMCadastros.PropriedadesUf.Value) = 2
     then begin
//          EdIePropriedade.EditMask := DmApp.MascaraIe (DMCadastros.PropriedadesUf.Value);
     end;
end;

procedure TFrmClientes.BtnEnderecoTrabClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If DataSource.DataSet.State = dsBrowse Then
     DataSource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmLogradouros', False);

  { * * * * * }
{  if DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}
  //
  dsLogradouros.DataSet.Tag := dsLogradouros.DataSet.Tag + 1;

  //
  FrmLogradouros := TFrmLogradouros.Create(Self);
  FrmLogradouros.ShowModal;
  //
  DataSource.DataSet.FieldByName('ENDERECO_TRABALHO').asInteger := FrmMain.Codigo_Int;

  DMCadastros.Tag := DMCadastros.Tag - 1;
  //
  dsLogradouros.DataSet.Tag := dsLogradouros.DataSet.Tag - 1;

  FrmLogradouros.Free;
  FrmLogradouros := Nil;
  //
  cmbLogradouroTrab.SetFocus;
end;

procedure TFrmClientes.BtnCidadePaiClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If DataSource.DataSet.State = dsBrowse Then
     DataSource.DataSet.Edit;
  { * * * * * }
{  if DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  //

  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCidades', False);
  { * * * * * }
  //
  FrmCidades := TFrmCidades.Create(Self);
  FrmCidades.ShowModal;
  //
  DataSource.DataSet.FieldByName('CIDADE_PAIS').asInteger := FrmMain.Codigo_Int;

  //
  DMCadastros.Tag := DMCadastros.Tag - 1;

  FrmCidades.Free;
  FrmCidades := Nil;
  //
  //
  cmbCidadePai.SetFocus;
end;

procedure TFrmClientes.BtnEnderecoPaiClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If DataSource.DataSet.State = dsBrowse Then
     DataSource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmLogradouros', False);

  { * * * * * }
{  if DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}
  //
  dsLogradouros.DataSet.Tag := dsLogradouros.DataSet.Tag + 1;

  //
  FrmLogradouros := TFrmLogradouros.Create(Self);
  FrmLogradouros.ShowModal;
  //
  DataSource.DataSet.FieldByName('ENDERECO_PAIS').asInteger := FrmMain.Codigo_Int;

  DMCadastros.Tag := DMCadastros.Tag - 1;
  //
  dsLogradouros.DataSet.Tag := dsLogradouros.DataSet.Tag - 1;

  FrmLogradouros.Free;
  FrmLogradouros := Nil;
  //
  cmbLogradouroPai.SetFocus;
end;

Procedure TFrmClientes.CmPessoaConvenioEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFrmClientes.CmPessoaConvenioExit(Sender: TObject);
begin
     TIRACORFUNDO(SENDER);
end;

procedure TFrmClientes.ActPropriedadesExecute(Sender: TObject);
begin
     //Propriedades
     { * * * * * }
     If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPropriedades', True)) Then
        Exit;
     { * * * * * }
     If FrmPropriedades = Nil Then
     Begin

       FrmPropriedades := TFrmPropriedades.Create(Self);
       //
       FrmPropriedades.Showmodal ;
       FrmPropriedades.Free      ;
       FrmPropriedades := Nil    ;
     End;
end;

procedure TFrmClientes.dxDBEdit21DblClick(Sender: TObject);
var Mail : String;
begin
     Mail := cxDBTextEdit12.Text;

//     IF TRIM(MAIL) <> ''
//     THEN
//         ShellExecute(GetDesktopWindow,'open',pchar(Mail),nil,nil,sw_ShowNormal);
end;

procedure TFrmClientes.ActPrecosExecute(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPrecosEspeciais', True))
  Then
      Exit;

  { * * * * * }
  If FrmPrecosEspeciais = Nil
  Then Begin

       FrmPrecosEspeciais := TFrmPrecosEspeciais.Create(Self);
       //
       FrmPrecosEspeciais.Showmodal ;
       FrmPrecosEspeciais.Free      ;
       FrmPrecosEspeciais := Nil    ;
  End;
end;

procedure TFrmClientes.ActCadastroExecute(Sender: TObject);
begin
     IF TRIM(UPPERCASE(DMAPP.Perfil_ComputadorTIPO_FOLHA_CADASTROS.Value)) = 'A4'
     THEN BEGIN
          Print.Impressora := Hp ;
     END
     ELSE BEGIN
          Print.Impressora := Epson ;
     END;

     Print.TamanhoQteLinhas := 33;

     Print.Abrir  ;

     // Cabecalho
     print.ImpF(01, 01,DsPessoas.DATASET.FIELDBYNAME('NOME_RAZAO').TEXT, [Negrito]);
     print.ImpF(01, 62, DatetimeToStr(now()), [Normal]);
     print.ImpF(02, 01, 'FICHA DE CADASTRO NUMERO = ' + DsPessoas.DATASET.FIELDBYNAME('CODIGO').TEXT , [Normal,NEGRITO]);
     print.ImpF(03, 01, Replicate('-', 80), [Normal]);

     print.ImpF(04, 01, 'NOME......: ' +DsPessoas.DATASET.FIELDBYNAME('NOME_RAZAO').TEXT, [COMP17]);

     IF TRIM( DsPessoas.DATASET.FIELDBYNAME('CPF_CGC').TEXT ) = ''
     THEN BEGIN
          print.ImpF(04, 50, 'CPF.......: ' , [COMP17]);
     END
     ELSE BEGIN
          IF LENGTH(TRIM( DsPessoas.DATASET.FIELDBYNAME('CPF_CGC').TEXT )) <= 11
          THEN BEGIN
               print.ImpF(04, 50, 'CPF.......: ' + MASCARACPF(DsPessoas.DATASET.FIELDBYNAME('CPF_CGC').TEXT) , [COMP17]);
          END
          ELSE BEGIN
               print.ImpF(04, 50, 'CNPJ......: ' + MASCARACNPJ(DsPessoas.DATASET.FIELDBYNAME('CPF_CGC').TEXT) , [COMP17]);
          END;
     END;

     IF TRIM( DsPessoas.DATASET.FIELDBYNAME('CPF_CGC').TEXT ) = ''
     THEN BEGIN
          print.ImpF(04, 70, 'RG..: ' , [COMP17]);
     END
     ELSE BEGIN
          IF LENGTH(TRIM( DsPessoas.DATASET.FIELDBYNAME('CPF_CGC').TEXT )) <= 11
          THEN BEGIN
               print.ImpF(04, 70, 'RG..: ' + DsPessoas.DATASET.FIELDBYNAME('RG_IE').TEXT , [COMP17]);
          END
          ELSE BEGIN
               print.ImpF(04, 70, 'I.E.: ' + (DsPessoas.DATASET.FIELDBYNAME('RG_IE').TEXT) , [COMP17]);
          END;
     END;

     print.ImpF(05, 01, 'ENDERECO..: ' + cmbLogradouro1.TEXT + ', N ' + DsPessoas.DATASET.FIELDBYNAME('NUMERO').TEXT , [COMP17]);
     print.ImpF(05, 50, 'COMPL.....: ' + DsPessoas.DATASET.FIELDBYNAME('COMPLEMENTO').TEXT , [COMP17]);

     print.ImpF(06, 01, 'BAIRRO....: ' + cmbBairro1.TEXT , [COMP17]);
     print.ImpF(06, 50, 'CIDADE....: ' + cmbCidade1.TEXT , [COMP17]);
     print.ImpF(06, 70, 'CEP..: '      + MASCARACEP(DsPessoas.DATASET.FIELDBYNAME('CEP').TEXT ), [COMP17]);

     print.ImpF(07, 01, 'FONE......: ' + DsPessoas.DATASET.FIELDBYNAME('FONE').TEXT , [COMP17]);
     print.ImpF(07, 20, 'FAX.......: ' + DsPessoas.DATASET.FIELDBYNAME('FAX').TEXT , [COMP17]);
     print.ImpF(07, 40, 'CELULAR...: ' + DsPessoas.DATASET.FIELDBYNAME('CELULAR').TEXT , [COMP17]);
     print.ImpF(07, 60, 'TIPO PESSOA..: ' + dxDBPickEdit2.Text , [COMP17]);
     //print.ImpF(07, 60, 'TIPO PESSOA..: ' + cxdbradioPessoa.DataBinding.StoredValue , [COMP17]);

     print.ImpF(08, 01, 'NASCIMENTO: ' + DsPessoas.DATASET.FIELDBYNAME('DT_NASCIMENTO').TEXT , [COMP17]);
     print.ImpF(08, 20, 'E-MAIL....: ' + DsPessoas.DATASET.FIELDBYNAME('EMAIL').TEXT , [COMP17]);
     print.ImpF(08, 40, 'ATIVIDADE.: ' + CmbAtividadePES.TEXT , [COMP17]);

     print.ImpF(09, 01, Replicate('-', 80), [Normal]);
     print.ImpF(10, 01, 'TRABALHO' , [COMP12, NEGRITO]);

     print.ImpF(11, 01, 'LOCAL.....: ' + DATASOURCE.DATASET.FIELDBYNAME('LOCAL_TRABALHO').TEXT , [COMP17]);
     print.ImpF(11, 20, 'FONE......: ' + DATASOURCE.DATASET.FIELDBYNAME('FONE_TRABALHO').TEXT , [COMP17]);
     print.ImpF(11, 40, 'TEMPO.....: ' + DATASOURCE.DATASET.FIELDBYNAME('TMP_SERVICO').TEXT , [COMP17]);

     print.ImpF(12, 01, 'ENDERECO..: ' + cmbLogradouroTrabalho1.TEXT + ', N ' + DATASOURCE.DATASET.FIELDBYNAME('NUMERO_TRABALHO').TEXT , [COMP17]);
     print.ImpF(12, 40, 'ATIVIDADE.: ' + CmbAtividade.TEXT , [COMP17]);
     print.ImpF(12, 70, 'RENDA.....: ' + DATASOURCE.DATASET.FIELDBYNAME('RENDA_MENSAL').TEXT , [COMP17]);

     print.ImpF(13, 01, Replicate('-', 80), [Normal]);

     print.ImpF(14, 01, ' EU, ' + COPY(DsPessoas.DATASET.FIELDBYNAME('NOME_RAZAO').TEXT,1,50) , [COMP17]);
     print.ImpF(14, 35, '||' , [COMP17]);
     print.ImpF(14, 36, '     EM TEMPO,  DECLARO  TAMBEM QUE  OS  SENHORES(AS)  AQUI  MENCIONADOS(AS)' , [COMP17]);

     print.ImpF(15, 01, 'ACIMA     QUALIFICADO(A)    DECLARO    SER    VERDADEIRAS', [COMP17]);
     print.ImpF(15, 35, '||' , [COMP17]);
     print.ImpF(15, 36, 'ESTAO  AUTORIZADOS  A  COMPRAR  NESTA  EMPRESA  UTILIZANDO  A  FORMA  DE' , [COMP17]);

     print.ImpF(16, 01, 'AS   INFORMACOES    AQUI    MENCIONADAS,    ASSUMINDO   A', [COMP17]);
     print.ImpF(16, 35, '||' , [COMP17]);
     print.ImpF(16, 36, 'CREDIARIO,  SENDO  MINHA  UNICA  E  TOTAL  A  RESPONSABILIDADE   DE   HONRAR' , [COMP17]);

     print.ImpF(17, 01, 'RESPONSABILIDADE  E  O  DEVER  DE   INFORMAR    A    ESTA', [COMP17]);
     print.ImpF(17, 35, '||' , [COMP17]);
     print.ImpF(17, 36, 'COM  A  QUITACAO  DOS  DEBITOS  QUE  HOUVER,  ESTANDO  AINDA   SUBMETIDO  AO' , [COMP17]);

     print.ImpF(18, 01, 'EMPRESA   NA   QUAL   ME    SUBMETO    AO    CREDITO,', [COMP17]);
     print.ImpF(18, 35, '||' , [COMP17]);
     print.ImpF(18, 36, 'SCPC SE NECESSARIO.' , [COMP17]);

     print.ImpF(19, 01, 'TODA   E   QUALQUER   MUDANCA   DE   ENDERECO   QUE   EU ', [COMP17]);
     print.ImpF(19, 35, '||' , [COMP17]);

     print.ImpF(20, 01, 'VENHA  TER.   ESTANDO   AINDA   DISPONIVEL  A   ATUALIZA-', [COMP17]);
     print.ImpF(20, 35, '||' , [COMP17]);

     print.ImpF(21, 01, 'CAO DE CADASTRO SEMPRE QUE SE FIZER NECESSARIO. ', [COMP17]);
     print.ImpF(21, 35, '||' , [COMP17]);
     print.ImpF(21, 36, '_______________________________________________' , [COMP17]);

     print.ImpF(22, 35, '||' , [COMP17]);
     print.ImpF(22, 36, '                 AUTORIZO' , [COMP17]);

     print.ImpF(23, 10, 'ASSINATURA', [COMP17, NEGRITO]);
     print.ImpF(23, 35, '||' , [COMP17]);

     print.ImpF(24, 35, '||' , [COMP17]);
     print.ImpF(24, 36, '_______________________________________________' , [COMP17]);

     print.ImpF(25, 35, '||' , [COMP17]);
     print.ImpF(25, 36, '                 AUTORIZO', [COMP17]);

     print.ImpF(26, 01, '______________________________', [COMP17, NEGRITO]);
     print.ImpF(26, 35, '||' , [COMP17]);

     print.ImpF(27, 36, '_______________________________________________' , [COMP17]);
     print.ImpF(28, 36, '                 AUTORIZO' , [COMP17]);

     IF TRIM( DsPessoas.DATASET.FIELDBYNAME('CPF_CGC').TEXT ) = ''
     THEN BEGIN
          print.ImpF(27, 01, 'CPF: ' , [COMP17]);
          print.ImpF(27, 35, '||' , [COMP17]);
     END
     ELSE BEGIN
          IF LENGTH(TRIM( DsPessoas.DATASET.FIELDBYNAME('CPF_CGC').TEXT )) <= 11
          THEN BEGIN
               print.ImpF(27, 01, 'CPF: ' + MASCARACPF(DsPessoas.DATASET.FIELDBYNAME('CPF_CGC').TEXT) , [COMP17]);
               print.ImpF(27, 35, '||' , [COMP17]);
          END
          ELSE BEGIN
               print.ImpF(27, 01, 'CNPJ: ' + MASCARACNPJ(DsPessoas.DATASET.FIELDBYNAME('CPF_CGC').TEXT) , [COMP17]);
               print.ImpF(27, 35, '||' , [COMP17]);
          END;
     END;
     print.ImpF(28, 35, '||' , [COMP17]);

     Print.Fechar ;

     Print.TamanhoQteLinhas := 66;

end;

procedure TFrmClientes.ActProcuracaoExecute(Sender: TObject);
Var
   Texto, Aux: String ;
   Linha, Cont, I : Integer;
begin
     IF TRIM(UPPERCASE(DMAPP.Perfil_ComputadorTIPO_FOLHA_CADASTROS.Value)) = 'A4'
     THEN BEGIN
          Print.Impressora := Hp ;
     END
     ELSE BEGIN
          Print.Impressora := Epson ;
     END;

     Print.Abrir  ;

     Texto := 'Outorgante: ' + DsPessoas.DATASET.FIELDBYNAME('NOME_RAZAO').TEXT + ', Brasileiro(a) C(a) ' ;
     Texto := Texto + 'portador do RG n ' + DsPessoas.DATASET.FIELDBYNAME('RG_IE').TEXT + ' ' + DsPessoas.DATASET.FIELDBYNAME('EMISSOR').TEXT ;

     Texto := Texto + ', CPF n ' +  DsPessoas.DATASET.FIELDBYNAME('CPF_CGC').TEXT + ', Residente e Domiciliado na Cidade de ' + cmbCidade.text + '-'  ;
     Texto := Texto + DsPessoas.DATASET.FIELDBYNAME('UF').TEXT + ', ' + cmbLogradouro.text + ', No ' + DsPessoas.DATASET.FIELDBYNAME('NUMERO').TEXT + '.'  ;

     // Cabecalho
     print.ImpF(04, 30, 'PROCURACAO', [EXPANDIDO, Negrito]);

     Linha := 7 ;

     Aux := Copy ( Texto, 1, 120 );

     I := 121;

     while trim(aux) <> '' do
     begin
          print.ImpF(Linha, 05, Aux, [Comp17]);

          Aux := Copy ( Texto, I, 120 );

          I := I + 120 ;

          Linha := Linha + 1;
     end ;

     FrmEntraDadosAutorizado := TFrmEntraDadosAutorizado.Create(Self);
     //
     IF FrmEntraDadosAutorizado.Showmodal = MrOk
     then Begin
          Texto := 'Outorgado: ' + FrmEntraDadosAutorizado.EdNome.Text + ', Brasileiro(a), ' + FrmEntraDadosAutorizado.CmbEstado.text + ', ' ;
          Texto := texto + ' portador do RG No ' + FrmEntraDadosAutorizado.EdRg.text + ', CPF No ' + FrmEntraDadosAutorizado.EdCpf.text ;
          Texto := texto + ', residente e domiciliado na Cidade de ' + FrmEntraDadosAutorizado.edcidade.text + '.' ;
     end;

     Linha := Linha + 1;

     Aux := Copy ( Texto, 1, 120 );

     I := 121;

     while trim(aux) <> '' do
     begin
          print.ImpF(Linha, 05, Aux, [Comp17]);

          Aux := Copy ( Texto, I, 120 );

          I := I + 120 ;

          Linha := Linha + 1;
     end ;

     FrmEntraDadosAutorizado.Free      ;
     FrmEntraDadosAutorizado := Nil    ;

     Texto := 'Poderes: Fica constituido como seu procurador perante a ' + DMAPP.NOME + ', para representar o Outorgante ' ;

     Texto := Texto + 'nas compras de produtos oferecidos no estabelecimento comercial, podendo atuar na escolha de produtos ' ;

     Texto := Texto + 'a serem adquiridos, negociar preco e condicoes de pagamento, prestar declaracoes firmar recibos, fazer ' ;

     Texto := Texto + 'acordo, firmar compromisso, assinar Notas Promissorias, dar aceite em Duplicatas Mercantis, receber ' ;

     Texto := Texto + 'correspondencias e notificacoes relativas aos pagamentos, bem como quaisquer atos relativos as compras ' ;

     Texto := Texto + 'e os respectivos pagamentos. A presente procuracao e por prazo indeterminado, cessando seus efeitos ' ;

     Texto := Texto + 'apenas mediante revogacao expressa e inequivoca do Outorgante.' ;

     Linha := Linha + 1;

     Aux := Copy ( Texto, 1, 120 );

     I := 121;

     while trim(aux) <> '' do
     begin
          print.ImpF(Linha, 05, Aux, [Comp17]);

          Aux := Copy ( Texto, I, 120 );

          I := I + 120 ;

          Linha := Linha + 1;
     end ;

     Linha := Linha + 1;
     Linha := Linha + 1;
     Linha := Linha + 1;

     Print.impf(Linha, 35, DMAPP.CIDADE + ' (' + DMAPP.UF + '), ' + CDOW(DMAPP.DataServidor, exdDMA ), [comp17]);

     Linha := Linha + 1;
     Linha := Linha + 1;
     Linha := Linha + 1;

     Print.impf(Linha, 35, '------------------------------------', [comp17]);

     Linha := Linha + 1;

     Print.impf(Linha, 35, 'OUTORGANTE', [comp17]);

     Print.Fechar ;
end;

procedure TFrmClientes.ActAtivarExecute(Sender: TObject);
begin
     If DataSource.State in dsEditModes Then
        Exit;

     If DataSource.State in dsEditModes Then
        Exit;


     Try
        DataSource.DataSet.Edit ;
        DataSource.DataSet.FieldByName ('BLOQUEADO').AsString := 'N' ;
        DataSource.DataSet.Post ;
     Except
           On E:Exception Do
                     Begin
                       ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
                       Exit;
                     End
     End;
end;

procedure TFrmClientes.ActDesativarExecute(Sender: TObject);
begin
     If DataSource.State in dsEditModes Then
        Exit;

     If DataSource.State in dsEditModes Then
        Exit;

     Try
        DataSource.DataSet.Edit ;
        DataSource.DataSet.FieldByName ('BLOQUEADO').AsString := 'S' ;
        DataSource.DataSet.Post ;
     Except
           On E:Exception Do
                     Begin
                       ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
                       Exit;
                     End
     End;
end;

procedure TFrmClientes.LocalizarPessoa_PropriedadeExecute(Sender: TObject);
Var
   Codigo: Integer;
   IE: String;
begin
     try
        If Frm_Localizar_Propriedade_Ie = Nil
        then
            Application.CreateForm(TFrm_Localizar_Propriedade_Ie, Frm_Localizar_Propriedade_Ie)
        Else
            Frm_Localizar_Propriedade_Ie.Tag := Frm_Localizar_Propriedade_Ie.Tag + 1 ;

        Frm_Localizar_Propriedade_Ie.SelPropriedades.Close ;

        IE := '';

        WHILE TRIM(IE) = ''
        DO BEGIN
           //DIGITANDO O NUMERO DE SERIE/IE DA PROPRIEDADE
           IE := INPUTBOX ('Ie/Série','Ie/Série','');
        END;

        Frm_Localizar_Propriedade_Ie.SelPropriedades.ParamByName ('IE_SERIE').AsString := IE ;

        if (dmApp.EXIBE_SRV = 'S') then
           Frm_Localizar_Propriedade_Ie.SelPropriedades.ParamByName ('OS').AsString := 'S'
        else
           Frm_Localizar_Propriedade_Ie.SelPropriedades.ParamByName ('OS').AsString := 'N';

        Frm_Localizar_Propriedade_Ie.SelPropriedades.ParamByName ('CNPJ').AsString := DMAPP.CNPJ;

        Frm_Localizar_Propriedade_Ie.SelPropriedades.Open ;

        if ( Frm_Localizar_Propriedade_Ie.showmodal = mrOk )
        Then Begin
             Codigo := (Frm_Localizar_Propriedade_Ie.CampTrecho) ;
        end
        ELSE
            Codigo := 0;

        If Frm_Localizar_Propriedade_Ie.Tag = 0
        then begin
             Frm_Localizar_Propriedade_Ie.free   ;
             Frm_Localizar_Propriedade_Ie := Nil ;
        end
        else begin
             Frm_Localizar_Propriedade_Ie.Tag := Frm_Localizar_Propriedade_Ie.Tag - 1 ;
        end;


        IF CODIGO > 0
        THEN BEGIN
             IF NOT dsPessoasFJ.DataSet.Locate ('CODIGO',Codigo,[])
             THEN BEGIN
                  MessageDlg('Cliente Não Cadastrado!', mtError, [mbOK], 0);
             END;
        END;

     Except
     end;
end;

procedure TFrmClientes.ActFiltrarRapidoExecute(Sender: TObject);
var
  filtro : string;
begin
  Application.CreateForm(TFrmFiltraClientes, FrmFiltraClientes);
  FrmFiltraClientes.dsAtividades.DataSet := DMCadastros.Atividades;
//  FrmFiltraClientes.dsRegiao.DataSet := DMCadastros.Regiao;
  FrmFiltraClientes.dsCidades.DataSet := DMCadastros.Cidades;
  filtro := '';
  with FrmFiltraClientes do
  begin
    IF ShowModal = MROK THEN
    BEGIN
      if (edtCodigo.value <> 0) then
         filtro := filtro + ' and codigo = '+edtcodigo.text;

      if (edtNome.Text <> '') then
         filtro := filtro +' and NOME_RAZAO Like ''%''||'+edtNome.Text+'||''%''';

      if (cmbCidade.Text <> '') then
         filtro := filtro +' and cidade = '+IntToStr(cmbCidade.lookupkeyvalue);

      if (cmbAtividade.Text <> '') then
         filtro := filtro +' and atividade = '+IntToStr(cmbAtividade.lookupkeyvalue);



      With DmCadastros do
      begin
        Pessoas_FJ.Close;
        Pessoas_FJ.SelectSql.text := ' select * from glo_pessoas_fj where cnpj = :cnpj '
                                      +filtro+' order by nome_razao';
        Pessoas_FJ.Open;
        abreDataSets;
      end;

      FrmFiltraClientes.free ;
      FrmFiltraClientes := Nil;
    end;
  end;
end;

procedure TFrmClientes.abreDataSets;
begin
  Try
    If Not(Datasource.DataSet.Active)
    Then
       DataSource.DataSet.Open
    else
        DataSource.DataSet.tag := DataSource.DataSet.tag + 1;


    DsRegiao.DataSet.Close;
    DsRegiao.DataSet.Open;

    SelCategorias.Close;
    SelCategorias.Open;

    If Not(DsVendedores.DataSet.Active)
    Then
       DsVendedores.DataSet.Open
    else
        DsVendedores.DataSet.tag := DsVendedores.DataSet.tag + 1;

    If Not(DsFormaPgto.DataSet.Active)
    Then
       DsFormaPgto.DataSet.Open
    else
        DsFormaPgto.DataSet.tag := DsFormaPgto.DataSet.tag + 1;

    If Not(DsClassificacoes.DataSet.Active)
    Then
       DsClassificacoes.DataSet.Open
    else
        DsClassificacoes.DataSet.tag := DsClassificacoes.DataSet.tag + 1;

    If Not(DsAtividade.DataSet.Active)
    Then
       DsAtividade.DataSet.Open
    else
        DsAtividade.DataSet.tag := DsAtividade.DataSet.tag + 1;

    If Not(DsRegiao.DataSet.Active)
    Then
       DsRegiao.DataSet.Open
    else
       DsRegiao.DataSet.tag := DsRegiao.DataSet.tag + 1;

    If Not(dsLogradouros.DataSet.Active)
    Then
       dsLogradouros.DataSet.Open
    else
        dsLogradouros.DataSet.tag := dsLogradouros.DataSet.tag + 1;

    dsBairros.DataSet.Open;

   dsCidades.DataSet.Open;

    If DmApp.CARREGAR_ARQ = 'S'
    THEN
        (Datasource.DataSet as TIBDataset).FetchAll;
  Except
    On E:Exception Do
     Begin
       ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
       Exit;
     End
  End;
  //
  Datasource.AutoEdit := ActAlterar.Enabled;
  //EdInicial.SetFocus;
end;

procedure TFrmClientes.btnRegiaoClick(Sender: TObject);
begin
  if dsEndereco.DataSet.State in [dsbrowse] then
      if dsEndereco.DataSet.RecordCount > 0 then
         dsEndereco.DataSet.Edit
      else
          dsEndereco.DataSet.Insert;
  If ActAlterar.Tag = 0 Then
     Exit;

  dsRegiao.DataSet.Tag := dsRegiao.DataSet.Tag + 1;

  //
  FrmRegioes := TFrmRegioes.Create(Self);

  FrmRegioes.ShowModal;
  //
  dsEndereco.DataSet.FieldByName('ID_REGIOES').asInteger := FrmMain.Codigo_Int;

  dsRegiao.DataSet.Tag := dsRegiao.DataSet.Tag - 1;

  DMCadastros.Tag := DMCadastros.Tag - 1;

  CmbRegiao.SetFocus;
end;

procedure TFrmClientes.SetLblPessoa;
begin
 { If DsPessoas.DataSet.FieldByName('PESSOA').asString = 'J' Then
  begin //'99.999.999\/9999\-99;0; ';
   // EDCPFCGC.EditMask :=  '##.###.###\/####\-##';
    Label38.Caption := 'C.N.P.J';
    Label39.Caption := 'I.E.';
  end
  else Begin
   // EDCPFCGC.EditMask :=  '###.###.###\-##';
    Label38.Caption := 'C.P.F.';
    Label39.Caption := 'R.G.';
  end;}
end;

procedure TFrmClientes.spbTipoContatoClick(Sender: TObject);
begin


  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmContatos', False);

  FrmContatos := TFrmContatos.Create(Self);

  FrmContatos.ShowModal;
  If Not(dsTipo_Contato.DataSet.Active) Then
    dsTipo_Contato.DataSet.Open
  else
    dsTipo_Contato.DataSet.tag := dsTipo_Contato.DataSet.tag + 1;
  IF FrmMain.Codigo_Int > 0
  THEN BEGIN
       IF NOT dsTipo_Contato.DataSet.Locate ('CODIGO',FrmMain.Codigo_Int,[])
       THEN BEGIN
            MessageDlg('Cliente Não Cadastrado!', mtError, [mbOK], 0);
       END;
  END;

  FrmContatos.Free;
  FrmContatos := Nil;
  cxLookTipoContato.SetFocus;

end;

procedure TFrmClientes.btnCliente2Click(Sender: TObject);
Var
   Codigo: Integer;
begin
        If Frm_Localizar_Cliente = Nil  then
          Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente);

        Frm_Localizar_Cliente.DSource.DataSet := DMCadastros.Localizar_Pessoa;
        If Not(DMCadastros.Localizar_Pessoa.Active)
        Then
            DMCadastros.Localizar_Pessoa.Open
        else
            DMCadastros.Localizar_Pessoa.Tag := DMCadastros.Localizar_Pessoa.Tag + 1;

        if ( Frm_Localizar_Cliente.showmodal = mrOk )
        Then Begin
             Codigo := (Frm_Localizar_Cliente.CampTrecho) ;
        end
        ELSE
            Codigo := 0;

        If Frm_Localizar_Cliente.Tag = 0
        then begin
             Frm_Localizar_Cliente.free   ;
             Frm_Localizar_Cliente := Nil ;
        end
        else begin
             Frm_Localizar_Cliente.Tag := Frm_Localizar_Cliente.Tag - 1 ;
        end;

        DMCadastros.Localizar_Pessoa.Open;
        IF CODIGO > 0
        THEN BEGIN
             IF NOT dsLocalizarContatos.DataSet.Locate ('CODIGO',Codigo,[])
             THEN BEGIN
                  MessageDlg('Cliente Não Cadastrado!', mtError, [mbOK], 0);
             END;
        END;

end;

procedure TFrmClientes.cxLookContatoRelacionamentoEnEdInicialEnterter(Sender: TObject);
begin
      CORFUNDO(SENDER);
end;

procedure TFrmClientes.cxLookTipoContatoEnter(Sender: TObject);
begin
      CORFUNDO(SENDER);
end;

procedure TFrmClientes.cxDBMemoContatoEnter(Sender: TObject);
begin
      CORFUNDO(SENDER);
end;

procedure TFrmClientes.cxLookContatoRelacionamentoExit(Sender: TObject);
begin
    TIRACORFUNDO(SENDER);
end;

procedure TFrmClientes.cxLookTipoContatoExit(Sender: TObject);
begin
    TIRACORFUNDO(SENDER);
end;

procedure TFrmClientes.cxDBMemoContatoExit(Sender: TObject);
begin
      TIRACORFUNDO(SENDER);
end;

procedure TFrmClientes.Button1Click(Sender: TObject);
begin
      if FrmSelOrdens = nil then
          FrmSelOrdens  := TFrmSelOrdens.Create(self);

      FrmSelOrdens.lkpCliente.Text :=  DMCadastros.Pessoas_FJFANTASIA.AsString;
      FrmSelOrdens.lkpCliente.LookupKeyValue  := DMCadastros.Pessoas_FJCODIGO.AsInteger;
      FrmSelOrdens.Filtrar;
      FrmSelOrdens.ShowModal;
end;

procedure TFrmClientes.cxButton2Click(Sender: TObject);
begin
    if dsEndereco.DataSet.State in [dsinsert, dsedit] then
        dsEndereco.DataSet.Post;
end;

procedure TFrmClientes.btnTipoEnderecoClick(Sender: TObject);
begin
  if dsEndereco.DataSet.State in [dsbrowse] then
      if dsEndereco.DataSet.RecordCount > 0 then
         dsEndereco.DataSet.Edit
      else
          dsEndereco.DataSet.Insert;

  If ActAlterar.Tag = 0 Then
     Exit;

  If dsTipoEndereco.DataSet.State = dsBrowse Then
     dsTipoEndereco.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmTipoEndereco', False);

  if FrmTipoEndereco = nil then
    FrmTipoEndereco := TFrmTipoEndereco.Create(Self);

  FrmTipoEndereco.ShowModal;
  dsEndereco.DataSet.FieldByName('ID_TIPO_ENDERECO').asInteger := FrmMain.Codigo_Int;

  FrmTipoEndereco.Free;
  FrmTipoEndereco := Nil;

  cmbTipoEndereco.SetFocus;
end;

procedure TFrmClientes.dxTabSheet5Enter(Sender: TObject);
begin
  If Not(dsContatos.DataSet.Active) Then
    dsContatos.DataSet.Open
  else
    dsContatos.DataSet.tag := dsContatos.DataSet.tag + 1;
end;

procedure TFrmClientes.PCCLIENTEEnter(Sender: TObject);
begin
  ActPost.Execute;
end;

procedure TFrmClientes.btnLogradouro1Click(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  If dsPessoasFJ.DataSet.State = dsBrowse Then
     dsPessoasFJ.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmLogradouros', False);

  dsLogradouros.DataSet.Tag := dsLogradouros.DataSet.Tag + 1;


  FrmLogradouros := TFrmLogradouros.Create(Self);
  FrmLogradouros.ShowModal;

  dsPessoasFJ.DataSet.FieldByName('ENDERECO').asInteger := FrmMain.Codigo_Int;

  DMCadastros.Tag := DMCadastros.Tag - 1;

  dsLogradouros.DataSet.Tag := dsLogradouros.DataSet.Tag - 1;

  FrmLogradouros.Free;
  FrmLogradouros := Nil;
  cmbLogradouro1.SetFocus;
end;

procedure TFrmClientes.SpeedButton4Click(Sender: TObject);
begin
   If ActAlterar.Tag = 0 Then
     Exit;

  If dsPessoasFJ.DataSet.State = dsBrowse Then
     dsPessoasFJ.DataSet.Edit;

  FrmRegioes := TFrmRegioes.Create(Self);
  FrmRegioes.ShowModal;
  DsPessoas.DataSet.FieldByName('REGIAO').asInteger := FrmMain.Codigo_Int;
  cbRegiao1.SetFocus;


end;

procedure TFrmClientes.SpeedButton1Click(Sender: TObject);
begin
  If dsPessoasFJ.DataSet.State = dsBrowse Then
     dsPessoasFJ.DataSet.Edit;


  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmBairros', False);
  FrmBairros := TFrmBairros.Create(Self);

  FrmBairros.ShowModal;
  dsPessoasFJ.DataSet.FieldByName('BAIRRO').asInteger := FrmMain.Codigo_Int;

  FrmBairros.Free;
  FrmBairros := Nil;
  cmbBairro1.SetFocus;
end;

procedure TFrmClientes.btnCidade1Click(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  If dsPessoasFJ.DataSet.State = dsBrowse Then
     dsPessoasFJ.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCidades', False);

  FrmCidades := TFrmCidades.Create(Self);
  FrmCidades.ShowModal;

  dsPessoasFJ.DataSet.FieldByName('CIDADE').asInteger := FrmMain.Codigo_Int;
  FrmCidades.Free;
  FrmCidades := Nil;
  DMCadastros.Cidades.Close;
  DMCadastros.Cidades.Open;
  cmbCidade1.SetFocus;
end;

procedure TFrmClientes.WebBrowser1CommandStateChange(Sender: TObject;
  Command: Integer; Enable: WordBool);
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
  if not (conectado) then
    exit;

  if TOleEnum(Command) <> CSC_UPDATECOMMANDS then
    Exit;

  ADocument := WebBrowser1.Document as IHTMLDocument2;
  if not Assigned(ADocument) then
    Exit;

  if not Supports(ADocument.body, IHTMLElement2, ABody) then
    exit;

  Lat :=GetIdValue('LatValue');
  Lng :=GetIdValue('LngValue');

  if not(ActMarcarCoordenada.Enabled) then
   exit;
   
  if  (Lat<>'') and (Lng<>''){ and ((Lat<>dmCadastros.Pessoas_FJMAP_LAT.AsString) or (Lng<>dmCadastros.Pessoas_FJMAP_LONG.AsString))} then
  begin
    dmCadastros.Pessoas_Fj.Edit;
    dmCadastros.Pessoas_FJMAP_LAT.Value := Lat;
    dmCadastros.Pessoas_FJMAP_LONG.Value := Lng;
  end;

end;


procedure TFrmClientes.VerificaLocalizacao;
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

  if (PCPES.ActivePage <> tbsMapa) then
    exit;

  //se nao tiver coordenada entao procura pelo endereço
  if (dmCadastros.Pessoas_FJMAP_LAT.asString = '') then
  begin
   address := cmbLogradouro1.Text + ' , '+DMCadastros.Pessoas_FJNUMERO.AsString+' , CIDADE '+cmbCidade1.Text+' - '+edtUF.Text;
   address := StringReplace(StringReplace(Trim(address), #13, ' ', [rfReplaceAll]), #10, ' ', [rfReplaceAll]);

   if Length(trim(address)) > 4 then
     HTMLWindow2.execScript(Format('codeAddress(%s)',[QuotedStr(address)]), 'JavaScript');
  end
  else
    HTMLWindow2.execScript(Format('GotoLatLng(%s,%s)',[dmCadastros.Pessoas_FJMAP_LAT.AsString,dmCadastros.Pessoas_FJMAP_LONG.AsString]), 'JavaScript');

   TimerMaps.Enabled := false;
end;

procedure TFrmClientes.TimerMapsTimer(Sender: TObject);
begin
  VerificaLocalizacao;
end;

procedure TFrmClientes.dxBarDBNavFirst1Click(Sender: TObject);
begin
  dxBarDBNavFirst1.BarDBNavigator.DataSource.DataSet.First;
  TimerMaps.Enabled := true;
end;

procedure TFrmClientes.dxBarDBNavPrev1Click(Sender: TObject);
begin
  dxBarDBNavFirst1.BarDBNavigator.DataSource.DataSet.Prior;
  TimerMaps.Enabled := true;
end;

procedure TFrmClientes.dxBarDBNavNext1Click(Sender: TObject);
begin
  dxBarDBNavFirst1.BarDBNavigator.DataSource.DataSet.Next;
  TimerMaps.Enabled := true;
end;

procedure TFrmClientes.dxBarDBNavLast1Click(Sender: TObject);
begin
  dxBarDBNavFirst1.BarDBNavigator.DataSource.DataSet.Last;
  TimerMaps.Enabled := true;
end;

procedure TFrmClientes.btnLocEnderecoClick(Sender: TObject);
var
   address    : string;
begin
   if not(conectado) then
     exit;
     
   address := cmbLogradouro1.Text + ' , '+DMCadastros.Pessoas_FJNUMERO.AsString+' , CIDADE '+cmbCidade1.Text+' - '+edtUF.Text;
   address := StringReplace(StringReplace(Trim(address), #13, ' ', [rfReplaceAll]), #10, ' ', [rfReplaceAll]);

   if Length(trim(address)) > 4 then
       HTMLWindow2.execScript(Format('codeAddress(%s)',[QuotedStr(address)]), 'JavaScript');
end;

procedure TFrmClientes.ActLimpaCoordenadaExecute(Sender: TObject);
begin
  if not(conectado) then
     exit;
     
  if (ActAlterar.enabled) then
  begin
    dmCadastros.Pessoas_Fj.Edit;
    dmCadastros.Pessoas_FJMAP_LAT.Clear;
    dmCadastros.Pessoas_FJMAP_LONG.Clear;
    HTMLWindow2.execScript('ClearMarkers()', 'JavaScript');
  end;
end;

procedure TFrmClientes.ActMarcarCoordenadaExecute(Sender: TObject);
begin
  //
end;

procedure TFrmClientes.SelCategoriasBeforeOpen(DataSet: TDataSet);
begin
  if (DataSet is TIBDataSet) then
    (DataSet as TIBDataSet).ParamByName('CNPJ').asString := DMApp.Cnpj
  else if (DataSet is TIBQuery) then
    (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj
end;

procedure TFrmClientes.btnCategoriaClick(Sender: TObject);
begin
   If ActAlterar.Tag = 0 Then
     Exit;

  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  FrmClientesCategoria := TFrmClientesCategoria.Create(Self);
  FrmClientesCategoria.ShowModal;

  SelCategorias.Close;
  SelCategorias.Open;

  Datasource.DataSet.FieldByName('CATEGORIA').asInteger := FrmMain.Codigo_Int;
  cmbCategorias.SetFocus;
end;

procedure TFrmClientes.GridContratosMouseEnter(Sender: TObject);
begin
  menugrid.grid := GridContratos;
end;

procedure TFrmClientes.GridEquipamentoMouseEnter(Sender: TObject);
begin
  menugrid.grid := GridEquipamento;
end;

end.


