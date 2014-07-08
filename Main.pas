unit Main;


interface

uses
  Windows, dateutils, dxExEdtr, IdIOHandler, IdIOHandlerSocket,Messages, IdSSLOpenSSL,
  IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP,
  IdBaseComponent, IdMessage, cxPropertiesStore, neoUpdate, ExtCtrls,
  Menus, DB, Classes, ActnList, dxBarExtItems, dxBar,  Graphics,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,   StdCtrls,   Forms, SysUtils, Dialogs,
  dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxClasses, cxIntlBase, cxintl, Controls,
  cxLookAndFeels, dxSkinsForm, cxGraphics, cxControls,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel,
  dxSkinsdxNavBar2Painter, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, dxSkinsdxStatusBarPainter, cxSchedulerStorage,
  cxSchedulerCustomControls, cxSchedulerDateNavigator,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxDateNavigator, dxNavBarBase,
  dxNavBarCollns, dxNavBar, cxPC, dxStatusBar, IBCustomDataSet, IBQuery,
  cxScheduler, cxSchedulerCustomResourceView, cxSchedulerDayView,
  cxSchedulerHolidays, cxSchedulerTimeGridView, cxSchedulerUtils,
  cxSchedulerWeekView, cxSchedulerYearView, cxSchedulerGanttView,
  dxSkinscxScheduler3Painter, ImgList, cxIntlScheduler, ComCtrls, ToolWin,
  TeeEdit, TeEngine, Series, TeeProcs, Chart, DBChart, TeePieTool,
  TeeSelectorTool, TeeTools, TeeComma, cxGridBandedTableView,
  cxGridDBBandedTableView, dxDBEdtr, dxDBELib, dxEditor, dxEdLib, DBCtrls,
  cxGridChartView, cxGridDBChartView, TeeDonut, TeePyramid, TeeSubChart,
  dxLayoutControl, dxLayoutControlAdapters, TeeNumericGauge,
  TeeLinearGauge, TeeCircularGauge, dxLayoutLookAndFeels, cxDropDownEdit,
  cxCalendar, cxDBEdit, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxmdaset, cxButtons, cxBarEditItem, dxSkinsStrs;

type
  TFrmMain = class(TForm)
    pnlstatus: TdxStatusbar;
    BarManager: TdxBarManager;
    mnCadastros: TdxBarSubItem;
    mnRelatorios: TdxBarSubItem;
    opFechar: TdxBarButton;
    LblHint: TcxLabel;
    Shape167: TShape;
    Panel3: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Shape81: TShape;
    LblUsuario: TcxLabel;
    Shape82: TShape;
    opAtividades: TdxBarButton;
    mnEstoque: TdxBarSubItem;
    opMarcas: TdxBarButton;
    opGrupos: TdxBarButton;
    opUnidadesMed: TdxBarButton;
    opReducoes: TdxBarButton;
    mnFerramentas: TdxBarSubItem;
    opAuxilio: TdxBarButton;
    opNaturezaOper: TdxBarButton;
    opProduto: TdxBarButton;
    opEntradaProdutos: TdxBarButton;
    Entradas: TdxBarButton;
    Panel1: TPanel;
    pnlLeft: TPanel;
    Panel4: TPanel;
    Panel12: TPanel;
    opAplicacoes: TdxBarButton;
    opEmpresas: TdxBarButton;
    opUsuarios: TdxBarButton;
    opPerfis: TdxBarButton;
    Receber: TdxBarSubItem;
    ManutencaoRec: TdxBarButton;
    Estoque: TdxBarSubItem;
    Processos: TdxBarSubItem;
    EstornaRec: TdxBarButton;
    mnFinanceiro: TdxBarSubItem;
    opFormasPagto: TdxBarButton;
    ProvisaoFinanceira: TdxBarButton;
    RelReceber: TdxBarSubItem;
    ReceberBaixasAlfa: TdxBarButton;
    Pagar: TdxBarSubItem;
    Manutencao: TdxBarButton;
    EstornaPgr: TdxBarButton;
    RelPagar: TdxBarSubItem;
    BxpPgrAlafabetico: TdxBarButton;
    SubContabilidade: TdxBarSubItem;
    CadPlano: TdxBarButton;
    MovimentoContabil: TdxBarButton;
    MovimentoBancario: TdxBarButton;
    TiposDctos: TdxBarButton;
    RelContabildiade: TdxBarSubItem;
    Razao: TdxBarButton;
    Balancete: TdxBarButton;
    opVendedores: TdxBarButton;
    Pendencias: TdxBarButton;
    OpVendas: TdxBarLargeButton;
    OpTerceiros: TdxBarButton;
    Caixa: TdxBarSubItem;
    FaturaVendas: TdxBarButton;
    BtnCaixa: TdxBarLargeButton;
    CadastroCaixa: TdxBarButton;
    mnRelEstoque: TdxBarSubItem;
    mnRelEstProdutos: TdxBarSubItem;
    relListaPrecos: TdxBarButton;
    relFichaFinanceiraFisica: TdxBarButton;
    mnEntradas: TdxBarSubItem;
    mnSaidas: TdxBarSubItem;
    relPosicaoEstoque: TdxBarButton;
    relListaSimplificada: TdxBarButton;
    relListaPrecosAZ: TdxBarButton;
    opCotas: TdxBarButton;
    btnCadCargas: TdxBarSubItem;
    opMotoristas: TdxBarButton;
    opVeiculos: TdxBarButton;
    opRotas: TdxBarButton;
    opCargas: TdxBarButton;
    SerieNf: TdxBarButton;
    relClientesAlf: TdxBarButton;
    RelClientesRes: TdxBarButton;
    RelFornecedoresAlf: TdxBarButton;
    RelFornecedoresRes: TdxBarButton;
    relEntradas: TdxBarButton;
    relListaPrecosUM: TdxBarButton;
    Fechamento: TdxBarButton;
    ActMain: TActionList;
    ActConsultaProduto: TAction;
    ActVenda: TAction;
    ActOrcamento: TAction;
    ActCaixa: TAction;
    ConsultaProduto: TdxBarLargeButton;
    dxBarSubItem1: TdxBarSubItem;
    PagarItem: TdxBarSubItem;
    ReceberItem: TdxBarSubItem;
    Mn2Financeiro: TdxBarLargeButton;
    Mn2Faturamento: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    Mn2Rh: TdxBarLargeButton;
    Mn2Pessoas: TdxBarLargeButton;
    mn2sair: TdxBarLargeButton;
    VoltarFinanceiro: TdxBarButton;
    MnFatCadastro: TdxBarSubItem;
    MnFatCarga: TdxBarSubItem;
    MnFatEstoque: TdxBarSubItem;
    MnFatContabilidade: TdxBarSubItem;
    MnFatRelatorios: TdxBarSubItem;
    MnComCadastro: TdxBarSubItem;
    MnComRelatorios: TdxBarSubItem;
    MnComGraficos: TdxBarSubItem;
    MnRhCadastro: TdxBarSubItem;
    MnRhRelatorios: TdxBarSubItem;
    MnPesCadastro: TdxBarSubItem;
    MnPesRelatorios: TdxBarSubItem;
    MontaCarga: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarSubItem2: TdxBarSubItem;
    Mn2RelContabilidade: TdxBarSubItem;
    Mn2ItemFaturamento: TdxBarSubItem;
    Mn2Acessibilidades: TdxBarSubItem;
    Mn2BtnAcessibilidades: TdxBarLargeButton;
    BtnAcessibilidades: TdxBarButton;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarSubItem4: TdxBarSubItem;
    dxBarSubItem5: TdxBarSubItem;
    OpFornecedores: TdxBarButton;
    OpPessoas: TdxBarButton;
    OpClassificacao: TdxBarButton;
    relProdutosFornecedor: TdxBarButton;
    OpConfEtiquetas: TdxBarButton;
    OpEtqProduto: TdxBarButton;
    OpConfBoleto: TdxBarButton;
    opRelVendasVend: TdxBarButton;
    ImgUsuario: TImage;
    dsMensagens: TDataSource;
    dsMensagensRes: TDataSource;
    opMensagem: TdxBarButton;
    RelVendasCliente: TdxBarButton;
    VendasPeriodo: TdxBarButton;
    OpRelGraficoVendas: TdxBarButton;
    OpVendasVendedor: TdxBarButton;
    mnConsultas: TdxBarSubItem;
    OpRelVendasProdutoCliente: TdxBarButton;
    OpGraficoGrupoProdutos: TdxBarButton;
    CentroCusto: TdxBarButton;
    opminimomaximo: TdxBarButton;
    OpVariacoes: TdxBarButton;
    OpVendasNatureza: TdxBarButton;
    Agrupadores: TdxBarButton;
    ActPessoas: TAction;
    Produtos_Aplicacoes: TdxBarButton;
    OpBxPgrCentro: TdxBarButton;
    OpTiposVeiculos: TdxBarButton;
    OpMacaVeiculos: TdxBarButton;
    Duplicatas: TdxBarButton;
    ConsultaConvenio: TdxBarButton;
    OpCotacoes: TdxBarButton;
    OpDuplicatasRec: TdxBarButton;
    ActExcluirMensagem: TAction;
    Backup: TdxBarButton;
    dxBarLargeButton3: TdxBarLargeButton;
    ActClientes: TAction;
    RelEstMarcas: TdxBarButton;
    OpAuxiiares: TdxBarSubItem;
    OpCidades: TdxBarButton;
    OpBairros: TdxBarButton;
    OpLogradouros: TdxBarButton;
    OpCalculadora: TdxBarButton;
    Pop: TPopupMenu;
    Calculadora1: TMenuItem;
    Pendncias1: TMenuItem;
    Cliene1: TMenuItem;
    Fornecedor1: TMenuItem;
    Produtos1: TMenuItem;
    N1: TMenuItem;
    OpCaixa_Frentista: TdxBarButton;
    OpBombas: TdxBarButton;
    Administradoras: TdxBarButton;
    OpChequePre: TdxBarSubItem;
    OpCadCheque: TdxBarButton;
    OpFinanceiro: TdxBarSubItem;
    OpRelCheques: TdxBarButton;
    OpMoedas: TdxBarButton;
    OpEstados: TdxBarButton;
    OpConfPromissoria: TdxBarButton;
    OpVendasFiscais: TdxBarButton;
    ActPendencias: TAction;
    OpRelFaturas_Futuras: TdxBarButton;
    OpPosicaoEstoqueContagem: TdxBarButton;
    OpVendasMaioresClientes: TdxBarButton;
    OpChequeCtb: TdxBarButton;
    OpMotivoDev: TdxBarButton;
    OpManutencaoCheques: TdxBarButton;
    OpComissoesVendedores: TdxBarButton;
    OpTransportadoras: TdxBarButton;
    BtnTrocas: TdxBarLargeButton;
    ActTrocas: TAction;
    OpCaixasFechados: TdxBarButton;
    OpCotasRel: TdxBarButton;
    SubServico: TdxBarSubItem;
    OpMecanicos: TdxBarButton;
    OpOrdens: TdxBarButton;
    OpPosEstSub: TdxBarButton;
    OpProdutosAliquota: TdxBarButton;
    OpAgrrupadores: TdxBarButton;
    OpRelPessoasConvenio: TdxBarButton;
    OpExporta: TdxBarButton;
    OpVendasAnalitico: TdxBarButton;
    OpVendasCanceladas: TdxBarButton;
    OpRelVendasCanceladas: TdxBarButton;
    OpMovimentosCaixa: TdxBarButton;
    OptExtornaCaixa: TdxBarButton;
    OpAcompanhamento: TdxBarButton;
    OpAnaliseVendas: TdxBarButton;
    OpRazaoReceitas: TdxBarButton;
    OpRazaoDespesas: TdxBarButton;
    OpClienteCheque: TdxBarButton;
    OpMalaDireta: TdxBarButton;
    OpRelTrocas: TdxBarButton;
    OpLancPagas: TdxBarButton;
    OpVendasMarca: TdxBarButton;
    OpConfiguraPerfil: TdxBarButton;
    AnaliseInadimplencia: TdxBarButton;
    subCobranca: TdxBarSubItem;
    OpMotivos: TdxBarButton;
    OpManutencaoCobranca: TdxBarButton;
    OpListagemCobranca: TdxBarButton;
    AberturaCaixa: TdxBarButton;
    OraganizaMenu: TdxBarButton;
    OpCor: TdxBarButton;
    OpMaterial: TdxBarButton;
    Relogio: TTimer;
    OpConfRel: TdxBarButton;
    OpCobrador: TdxBarButton;
    OpConfiguracaoCtb: TdxBarButton;
    OpTanques: TdxBarButton;
    OpPerfilGrade: TdxBarButton;
    OpPromocao: TdxBarButton;
    OpHistorico: TdxBarButton;
    OpChequesDevolvidos: TdxBarButton;
    OpBaixasOrdem: TdxBarButton;
    OpFichaFinanceira: TdxBarButton;
    OpTransferirCadastros: TdxBarButton;
    OpCartao: TdxBarButton;
    OpCartoesReembolso: TdxBarButton;
    OpBaixasFaturasFat: TdxBarButton;
    OPMenuCartao: TdxBarSubItem;
    OpMovtoCartao: TdxBarButton;
    OpExportaMgv5: TdxBarButton;
    OpFuncionarios: TdxBarButton;
    OpRelVendasSubGrupo: TdxBarButton;
    OpAgendamentosCobrancas: TdxBarButton;
    OpChequesAcertados: TdxBarButton;
    OpListaIndeada: TdxBarButton;
    OpManutencao_Cartao: TdxBarButton;
    OpPosicaoEstoqueNegativo: TdxBarButton;
    OpGarantiasPessoas: TdxBarButton;
    OpResumoCaixa: TdxBarButton;
    OpRepresentante: TdxBarButton;
    OpMensalidades: TdxBarButton;
    OpEtiquetasGrade: TdxBarButton;
    OpExpImpOrc: TdxBarButton;
    OpResumoComissoes: TdxBarButton;
    OpPosicaoEstoqueVenda: TdxBarButton;
    OpExportaFilizola: TdxBarButton;
    OpPagasporData: TdxBarButton;
    OpBaixasCobrador: TdxBarButton;
    OpBaixasRecVendedor: TdxBarButton;
    RelServicosPeriodo: TdxBarButton;
    OpVendasAnaliseCliente: TdxBarButton;
    OpCtbFluxoCaixa: TdxBarButton;
    OpComissoesVendedorRecebidas: TdxBarButton;
    CtbFluxoCaixa: TdxBarButton;
    OpAbastecimentos: TdxBarButton;
    OpLogs: TdxBarButton;
    OpVendasGrupoSelecao: TdxBarButton;
    OpLocalCobranca: TdxBarButton;
    OpListaPrecServico: TdxBarButton;
    OpPosicaoGrade: TdxBarButton;
    OpTipos_Contratos: TdxBarButton;
    btnRecibo: TdxBarButton;
    itmContagemGrade: TdxBarButton;
    opRelEstVendasServicos: TdxBarButton;
    OpDivergenciaGrades: TdxBarButton;
    OPSaldoContas: TdxBarButton;
    OpClientesInativos: TdxBarButton;
    OpVendasCidades: TdxBarButton;
    OpDefeitos: TdxBarButton;
    OpDemonstrativoFinMensal: TdxBarButton;
    OPBAIXASRECEBERCONVENIO: TdxBarButton;
    OpTerminalConsulta: TdxBarButton;
    OpPosicaoEstoque: TdxBarButton;
    OpMenuEntrada: TdxBarLargeButton;
    ActEntradas: TAction;
    neoUpdate: TneoUpdate;
    lblVersao: TcxLabel;
    Shape1: TShape;
    Rel_Devolucoes: TdxBarButton;
    Rel_VD_Produtos: TdxBarButton;
    OpRelEntradasProdutos: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    SubRestaurante: TdxBarSubItem;
    btMesas: TdxBarButton;
    dxBarButton10: TdxBarButton;
    sbTesouraria: TdxBarSubItem;
    subBancos: TdxBarSubItem;
    mnCadastroBanco: TdxBarButton;
    mnCadCliente: TdxBarButton;
    sbPessoas: TdxBarSubItem;
    dxBarSubItem7: TdxBarSubItem;
    dxBarSubItem8: TdxBarSubItem;
    btnSobre: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    btnSptOnline: TdxBarButton;
    btnSptHelpDesk: TdxBarButton;
    dxBarButton11: TdxBarButton;
    btnRelease: TdxBarButton;
    btnDemonstrativo: TdxBarButton;
    dxBarSubItemExport: TdxBarSubItem;
    btnSetarRelease: TdxBarButton;
    ActSetRelease: TAction;
    btnComissoes: TdxBarButton;
    btnRegiao: TdxBarButton;
    btnEstoqueComp: TdxBarButton;
    btnRelPagar: TdxBarButton;
    SubBoleto: TdxBarSubItem;
    btnManutencao: TdxBarButton;
    BtnSubComissoes: TdxBarSubItem;
    btnPerfil: TdxBarButton;
    btnPerfilPagto: TdxBarButton;
    SubbtnPerfis: TdxBarSubItem;
    SubComRel: TdxBarSubItem;
    dxBarSubItem6: TdxBarSubItem;
    SubServicoCadastro: TdxBarSubItem;
    SubServicoProcesso: TdxBarSubItem;
    SubServicoRelatorio: TdxBarSubItem;
    SubCtbCadastros: TdxBarSubItem;
    SubCtbProcessos: TdxBarSubItem;
    dxBarSubItem10: TdxBarSubItem;
    dxBarSubItem11: TdxBarSubItem;
    dxBarSubItem12: TdxBarSubItem;
    btnRelComissao: TdxBarButton;
    btnCMAGR: TdxBarButton;
    btnSugCompra: TdxBarButton;
    btnPaises: TdxBarButton;
    btnPosicaoEstoque2: TdxBarButton;
    mnFiscal: TdxBarSubItem;
    btnProdutosClientes: TdxBarButton;
    btnContratos: TdxBarButton;
    btnServico: TdxBarButton;
    mnTipoAtendimento: TdxBarButton;
    mnMotivoChamado: TdxBarButton;
    btnCompatibilidade: TdxBarSubItem;
    btnMainServico: TdxBarLargeButton;
    ActServico: TAction;
    btnSecao: TdxBarButton;
    ListaAtendimento: TdxBarButton;
    btnRelEquipamento: TdxBarButton;
    btnMainCarga: TdxBarLargeButton;
    ActCarga: TAction;
    mnConfigSerie: TdxBarButton;
    mnManutencaoKardex: TdxBarButton;
    btnPendencia: TdxBarButton;
    PopMSG: TPopupMenu;
    MenuItem2: TMenuItem;
    MarcarmensagemcomoLida1: TMenuItem;
    Timer1: TTimer;
    btnCarga: TdxBarSubItem;
    dxBarSubItem13: TdxBarSubItem;
    dxBarSubItem14: TdxBarSubItem;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    stgMain: TcxPropertiesStore;
    CaixaF81: TMenuItem;
    FaturamentoF111: TMenuItem;
    ContasReceber1: TMenuItem;
    ContasPagar1: TMenuItem;
    NFEntrada1: TMenuItem;
    btnAlteraPreco: TdxBarButton;
    btnContrato: TdxBarButton;
    btnLeitura: TdxBarButton;
    SubReceituario: TdxBarSubItem;
    btnCategorias: TdxBarButton;
    dxBarSubItem16: TdxBarSubItem;
    btnAgrClasseToxicologica: TdxBarButton;
    btnAgrClassAmbiental: TdxBarButton;
    btnAgrClassQuimica: TdxBarButton;
    btnAgrFabricantes: TdxBarButton;
    btnAgrMatEmbalagem: TdxBarButton;
    btnAgrOrientacoes: TdxBarButton;
    btnArgRegistrante: TdxBarButton;
    btnDefensivos: TdxBarButton;
    btnRelContratos: TdxBarButton;
    btnNFe: TdxBarSubItem;
    dxBarSubItem15: TdxBarSubItem;
    dxBarSubItem17: TdxBarSubItem;
    btnNFeManutencao: TdxBarButton;
    btnUndConversao: TdxBarButton;
    btnCadPragas: TdxBarButton;
    btnCadCultura: TdxBarButton;
    btnUndMedDosagem: TdxBarButton;
    dxBarSubItem18: TdxBarSubItem;
    btnReceiturario: TdxBarButton;
    btnRelTituloPendente: TdxBarButton;
    btnTeste: TdxBarButton;
    btnReceituario: TdxBarLargeButton;
    btnCotacoes: TdxBarButton;
    btnMainAcerto: TdxBarSubItem;
    btnAcerto: TdxBarButton;
    btnEstorno: TdxBarButton;
    bntVDT: TdxBarButton;
    btnComissoesTerceiro: TdxBarButton;
    btnExportaIagro: TdxBarButton;
    btnEventoContabil: TdxBarButton;
    btnSincronizar: TdxBarButton;
    btnTabelaPrecos: TdxBarButton;
    SubTabelaPreco: TdxBarSubItem;
    btnCadastros: TdxBarSubItem;
    btntblProcesso: TdxBarSubItem;
    btnRelatorios: TdxBarSubItem;
    btnTabelaVendedor: TdxBarButton;
    btnRomaneios: TdxBarButton;
    btnSubMensalidade: TdxBarSubItem;
    btnMenCadastro: TdxBarSubItem;
    btnMenProcesso: TdxBarSubItem;
    btnMenRelatorio: TdxBarSubItem;
    btnMenManutencao: TdxBarButton;
    btnConsultaRomaneio: TdxBarButton;
    btnNfeMain: TdxBarLargeButton;
    btnResumoServico: TdxBarButton;
    IdMessage: TIdMessage;
    IdSMTP: TIdSMTP;
    SSLSocket: TIdSSLIOHandlerSocket;
    btnSubSintegra: TdxBarSubItem;
    btnProsoft: TdxBarButton;
    btnCadastroReducao: TdxBarButton;
    dxBarSubItem19: TdxBarSubItem;
    btnExportaBemaCash: TdxBarButton;
    AutoImportaBemaCash: TdxBarButton;
    btnBI: TdxBarSubItem;
    btnEstoque: TdxBarSubItem;
    btnFinanceiro: TdxBarSubItem;
    btnFaturamento: TdxBarSubItem;
    dxBarSubItem20: TdxBarSubItem;
    btnPosicaoSaldoEstoque: TdxBarButton;
    dxBarSubItem21: TdxBarSubItem;
    btnExactusMov: TdxBarButton;
    mnImportacoes: TdxBarSubItem;
    TimeAutoBemaCash: TTimer;
    btnFolhaPagto: TdxBarButton;
    btnGeraSintegra: TdxBarButton;
    btnGrupoEmpresarial: TdxBarButton;
    cxIntl1: TcxIntl;
    dxSkinController: TdxSkinController;
    NavBar: TdxNavBar;
    brCadastros: TdxNavBarGroup;
    brPosicoes: TdxNavBarGroup;
    brCotacoes: TdxNavBarGroup;
    cxGridPopupMenu: TcxGridPopupMenu;
    pnlClient: TPanel;
    pnlDesktop: TPanel;
    PgcMain: TcxPageControl;
    tbsGeral: TcxTabSheet;
    tbsMensagem: TcxTabSheet;
    GridMensagem: TcxGrid;
    tvMensagem: TcxGridDBTableView;
    tvMensagemCODIGO: TcxGridDBColumn;
    tvMensagemANO: TcxGridDBColumn;
    tvMensagemREMETENTE: TcxGridDBColumn;
    tvMensagemDESTINATARIO: TcxGridDBColumn;
    tvMensagemASSUNTO: TcxGridDBColumn;
    tvMensagemMENSAGEM: TcxGridDBColumn;
    tvMensagemDT_ENVIO: TcxGridDBColumn;
    tvMensagemDT_RESPOSTA: TcxGridDBColumn;
    tvMensagemDT_AVISO: TcxGridDBColumn;
    tvMensagemDT_LEITURA: TcxGridDBColumn;
    tvMensagemDT_RESP: TcxGridDBColumn;
    tvMensagemDT_VALIDADE: TcxGridDBColumn;
    lvMensagem: TcxGridLevel;
    tbsMsgRservada: TcxTabSheet;
    GridMsgReservadas: TcxGrid;
    GridMsgReservadasDBTableView1: TcxGridDBTableView;
    GridMsgReservadasDBTableView1CODIGO: TcxGridDBColumn;
    GridMsgReservadasDBTableView1ANO: TcxGridDBColumn;
    GridMsgReservadasDBTableView1REMETENTE: TcxGridDBColumn;
    GridMsgReservadasDBTableView1DESTINATARIO: TcxGridDBColumn;
    GridMsgReservadasDBTableView1ASSUNTO: TcxGridDBColumn;
    GridMsgReservadasDBTableView1MENSAGEM: TcxGridDBColumn;
    GridMsgReservadasDBTableView1DT_ENVIO: TcxGridDBColumn;
    GridMsgReservadasDBTableView1DT_RESPOSTA: TcxGridDBColumn;
    GridMsgReservadasDBTableView1DT_AVISO: TcxGridDBColumn;
    GridMsgReservadasDBTableView1DT_LEITURA: TcxGridDBColumn;
    GridMsgReservadasDBTableView1DT_RESP: TcxGridDBColumn;
    GridMsgReservadasDBTableView1DT_VALIDADE: TcxGridDBColumn;
    GridMsgReservadasLevel1: TcxGridLevel;
    Panel6: TPanel;
    LblComputador: TcxLabel;
    Panel7: TPanel;
    Image1: TImage;
    LblEmpresa: TcxLabel;
    Panel2: TPanel;
    btnLocalizacao: TdxBarButton;
    LBLBASE: TcxLabel;
    qryRelatorio2: TIBQuery;
    qryRelatorio2PRODUTO: TIBStringField;
    btnSetaGeoLocalizacao: TdxBarButton;
    btnContasCorrentes: TdxBarButton;
    cxTabSheet1: TcxTabSheet;
    cxIntlScheduler1: TcxIntlScheduler;
    AgendaStorage2: TcxSchedulerStorage;
    imgMain: TcxImageList;
    imgLargeMain: TcxImageList;
    ToolBar1: TToolBar;
    btnDia: TToolButton;
    btnSemanaUtil: TToolButton;
    Semana: TToolButton;
    ToolButton4: TToolButton;
    btnMes: TToolButton;
    btnAno: TToolButton;
    ToolButton8: TToolButton;
    pgcGraficos: TcxPageControl;
    tbsFinanceiro: TcxTabSheet;
    tbsFaturametos: TcxTabSheet;
    QryPagarCCusto: TIBQuery;
    QryPagarCCustoSALDO: TFloatField;
    QryPagarCCustoNOME: TIBStringField;
    cxTabSheet4: TcxTabSheet;
    pcGraficoGrupoFinanceiro: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    tbsFluxoFinanceiro: TcxTabSheet;
    pgcContasPagar: TcxPageControl;
    tbsCentroCusto: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    pgcFaturamentos: TcxPageControl;
    tbsMetasVenda: TcxTabSheet;
    tbsVendasVendedor: TcxTabSheet;
    tbsVendasGrupo: TcxTabSheet;
    QryEmpresas: TIBQuery;
    QryEmpresasNOME: TIBStringField;
    QryEmpresasCNPJ: TIBStringField;
    dsEmpresas: TDataSource;
    dsFluxoCaixa: TDataSource;
    Panel15: TPanel;
    Label9: TcxLabel;
    Label4: TcxLabel;
    Label2: TcxLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Panel13: TPanel;
    Bevel1: TBevel;
    Panel16: TPanel;
    Panel18: TPanel;
    ckReceberEfetivo: TCheckBox;
    ckReceberPrevisto: TCheckBox;
    ckPagarEfetivo: TCheckBox;
    ckPagarPrevisto: TCheckBox;
    ckSaldoEfetivo: TCheckBox;
    ckSaldoPrevisto: TCheckBox;
    pcFluxoCaixa: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Shape2: TShape;
    Panel14: TPanel;
    GraficoBarras: TDBChart;
    Series1: TBarSeries;
    Series2: TBarSeries;
    Series3: TBarSeries;
    Series4: TBarSeries;
    Series5: TBarSeries;
    Series6: TBarSeries;
    dxTabSheet2: TcxTabSheet;
    tbsRegistros: TcxTabSheet;
    Grid: TcxGrid;
    GridTV: TcxGridDBBandedTableView;
    GridTVDATA: TcxGridDBBandedColumn;
    GridTVTT_RECEBER_PREVISO: TcxGridDBBandedColumn;
    GridTVTT_RECEBER_EFETIVO: TcxGridDBBandedColumn;
    GridTVTT_PAGAR_PREVISTO: TcxGridDBBandedColumn;
    GridTVTT_PAGAR_EFETIVO: TcxGridDBBandedColumn;
    GridTVTT_SALDO_PREVISTO: TcxGridDBBandedColumn;
    GridTVTT_SALDO_EFETIVO: TcxGridDBBandedColumn;
    GridTVE_CNPJ: TcxGridDBBandedColumn;
    GridTVSALDO_CAIXAS: TcxGridDBBandedColumn;
    GridTVSALDO_CONTAS: TcxGridDBBandedColumn;
    GridTVSALDO_INICIAL: TcxGridDBBandedColumn;
    GridDBChartView1: TcxGridDBChartView;
    GridDBChartView1Series1: TcxGridDBChartSeries;
    GridDBChartView1Series2: TcxGridDBChartSeries;
    GridDBChartView1Series3: TcxGridDBChartSeries;
    GridDBChartView1Series4: TcxGridDBChartSeries;
    GridDBChartView1Series5: TcxGridDBChartSeries;
    GridDBChartView1Series6: TcxGridDBChartSeries;
    GridLV: TcxGridLevel;
    GridLevel1: TcxGridLevel;
    Panel17: TPanel;
    DBText2: TDBText;
    DBText1: TDBText;
    DBText3: TDBText;
    Label1: TcxLabel;
    Label3: TcxLabel;
    Label5: TcxLabel;
    ChartEditor: TChartEditor;
    ChartPreviewer: TChartPreviewer;
    TeeCommander: TTeeCommander;
    GraficoLinhas: TDBChart;
    BarSeries1: TLineSeries;
    BarSeries2: TLineSeries;
    BarSeries3: TLineSeries;
    BarSeries4: TLineSeries;
    BarSeries5: TLineSeries;
    BarSeries6: TLineSeries;
    GrafCentroCusto: TDBChart;
    Series7: TDonutSeries;
    QryPagarCredores: TIBQuery;
    QryPagarCredoresSALDO: TFloatField;
    QryPagarCredoresNOME_RAZAO: TIBStringField;
    GrafPagarCredores: TDBChart;
    DonutSeries1: TPieSeries;
    pgcContasReceber: TcxPageControl;
    cxTabSheet5: TcxTabSheet;
    GrafReceberMesesVenctos: TDBChart;
    tbsMaioresDevedores: TcxTabSheet;
    GrafReceberDevedores: TDBChart;
    QryReceberDevedores: TIBQuery;
    QryReceberDevedoresSALDO: TFloatField;
    QryReceberDevedoresNOME_RAZAO: TIBStringField;
    QryReceberMesVencto: TIBQuery;
    QryReceberMesVenctoSALDO: TFloatField;
    QryReceberMesVenctoMES_ANO: TIBStringField;
    DonutSeries2: TPyramidSeries;
    PieSeries1: TDonutSeries;
    pgcMetasVenda: TcxPageControl;
    tbsMetasGrafico: TcxTabSheet;
    tbsMetasRegistro: TcxTabSheet;
    GridMetaVendedor: TcxGrid;
    tvMetaVendedor: TcxGridDBBandedTableView;
    lvMetaVendedor: TcxGridLevel;
    lcMetaVendaGroup_Root: TdxLayoutGroup;
    lcMetaVenda: TdxLayoutControl;
    GChart3: TChart;
    lcMetaVendaItem3: TdxLayoutItem;
    GChart1: TChart;
    lcMetaVendaItem1: TdxLayoutItem;
    Series8: TCircularGauge;
    Series10: TCircularGauge;
    GChart2: TChart;
    lcMetaVendaItem2: TdxLayoutItem;
    Series9: TCircularGauge;
    GChart4: TChart;
    lcMetaVendaItem4: TdxLayoutItem;
    Series11: TCircularGauge;
    GChart10: TChart;
    lcMetaVendaItem6: TdxLayoutItem;
    Series13: TCircularGauge;
    lcMetaVendaSpaceItem1: TdxLayoutEmptySpaceItem;
    lcMetaVendaGroup1: TdxLayoutGroup;
    lcMetaVendaGroup2: TdxLayoutGroup;
    lcMetaVendaSpaceItem2: TdxLayoutEmptySpaceItem;
    lcMetaVendaGroup3: TdxLayoutGroup;
    lcMetaVendaSpaceItem3: TdxLayoutEmptySpaceItem;
    lcMetaVendaSpaceItem4: TdxLayoutEmptySpaceItem;
    lcMetaVendaGroup4: TdxLayoutGroup;
    lcMetaVendaGroup5: TdxLayoutGroup;
    qryMetaVendedor: TIBQuery;
    qryMetaVendedorVENDEDOR: TIntegerField;
    qryMetaVendedorNOME: TIBStringField;
    qryMetaVendedorTOTAL: TIBBCDField;
    qryMetaVendedorINDICE: TIBBCDField;
    qryMetaVendedorMETA_GERAL: TIBBCDField;
    dsMetaVendedor: TDataSource;
    tvMetaVendedorMETA: TcxGridDBBandedColumn;
    tvMetaVendedorVENDEDOR: TcxGridDBBandedColumn;
    tvMetaVendedorNOME: TcxGridDBBandedColumn;
    tvMetaVendedorTOTAL: TcxGridDBBandedColumn;
    tvMetaVendedorINDICE: TcxGridDBBandedColumn;
    tvMetaVendedorMETA_GERAL: TcxGridDBBandedColumn;
    qryMetaVendedorSEQUENCIA: TIntegerField;
    qryMetaVendedorMETA: TIBBCDField;
    qryMetaVendedorINDICE_GERAL: TIBBCDField;
    qryMetaVendedorTOTAL_GERAL: TIBBCDField;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    mtbFiltro: TdxMemData;
    mtbFiltroCNPJ: TStringField;
    mtbFiltroDATA1: TDateField;
    mtbFiltroDATA2: TDateField;
    cbEmpresa: TcxDBLookupComboBox;
    dsFiltro: TDataSource;
    edtData1: TcxDBDateEdit;
    edtData2: TcxDBDateEdit;
    ContratoCidadeSintetico: TdxBarButton;
    btnCadCategorias: TdxBarButton;
    NavBarSmallImages: TImageList;
    btnCaminho: TcxButton;
    SubContratos: TdxBarSubItem;
    btnContratoCadastros: TdxBarSubItem;
    btnContratosProcesso: TdxBarSubItem;
    btnContratoCad: TdxBarButton;
    btnContratoRelatorios: TdxBarSubItem;
    btnRelResumoContrato: TdxBarButton;
    BarManagerBar7: TdxBar;
    beSkinCombo: TcxBarEditItem;
    cxLookAndFeelController: TcxLookAndFeelController;
    Scheduler: TcxScheduler;
    nvProdutos: TdxNavBarItem;
    nvClientes: TdxNavBarItem;
    nvCarga: TdxNavBarItem;
    nvServico: TdxNavBarItem;
    nvCaixa: TdxNavBarItem;
    nvTroca: TdxNavBarItem;
    nvFaturamento: TdxNavBarItem;
    nvEntrada: TdxNavBarItem;
    ImgLargMainPainel16: TcxImageList;
    ImgLargMainRed32: TcxImageList;
    nvFornecedor: TdxNavBarItem;
    nvPendencia: TdxNavBarItem;
    nvCadProdutos: TdxNavBarItem;
    nvCalculadora: TdxNavBarItem;
    nvPagar: TdxNavBarItem;
    nvReceber: TdxNavBarItem;
    procedure opFecharClick(Sender: TObject);
    procedure PessoasFJClick(Sender: TObject);
    procedure LblUsuarioMouseEnter(Sender: TObject);
    procedure LblUsuarioMouseLeave(Sender: TObject);
    procedure LblUsuarioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure opFuncionariosClick(Sender: TObject);
    procedure opAtividadesClick(Sender: TObject);
    procedure opMarcasClick(Sender: TObject);
    procedure opGruposClick(Sender: TObject);
    procedure opUnidadesMedClick(Sender: TObject);
    procedure opReducoesClick(Sender: TObject);
    procedure opNaturezaOperClick(Sender: TObject);
    procedure opProdutoClick(Sender: TObject);
    procedure opAplicacoesClick(Sender: TObject);
    procedure opEmpresasClick(Sender: TObject);
    procedure ManutencaoRecClick(Sender: TObject);
    procedure opFornecedoresClick(Sender: TObject);
    procedure EstornaRecClick(Sender: TObject);
    procedure opFormasPagtoClick(Sender: TObject);
    procedure opEntradaProdutosClick(Sender: TObject);
    procedure ReceberBaixasAlfaClick(Sender: TObject);
    procedure ManutencaoClick(Sender: TObject);
    procedure EstornaPgrClick(Sender: TObject);
    procedure BxPgrSelecaoClick(Sender: TObject);
    procedure BxpPgrAlafabeticoClick(Sender: TObject);
    procedure CadPlanoClick(Sender: TObject);
    procedure MovimentoContabilClick(Sender: TObject);
    procedure MovimentoBancarioClick(Sender: TObject);
    procedure TiposDctosClick(Sender: TObject);
    procedure RazaoClick(Sender: TObject);
    procedure VendedoresClick(Sender: TObject);
    procedure opSaidaProdutosClick(Sender: TObject);
    procedure opVendedoresClick(Sender: TObject);
    procedure PendenciasClick(Sender: TObject);
    procedure OpTerceirosClick(Sender: TObject);
    procedure opPerfisClick(Sender: TObject);
    procedure FaturaVendasClick(Sender: TObject);
    procedure opUsuariosClick(Sender: TObject);
    procedure PdvClick(Sender: TObject);
    procedure LblEmpresaClick(Sender: TObject);
    procedure CadastroCaixaClick(Sender: TObject);
    procedure relListaPrecosClick(Sender: TObject);
    procedure relListaPrecosAZClick(Sender: TObject);
    procedure relListaSimplificadaClick(Sender: TObject);
    procedure relFichaFinanceiraFisicaClick(Sender: TObject);
    procedure opCotasClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure opMotoristasClick(Sender: TObject);
    procedure opVeiculosClick(Sender: TObject);
    procedure opRotasClick(Sender: TObject);
    procedure opCargasClick(Sender: TObject);
    procedure SerieNfClick(Sender: TObject);
    procedure relClientesAlfClick(Sender: TObject);
    procedure RelFornecedoresAlfClick(Sender: TObject);
    procedure RelClientesResClick(Sender: TObject);
    procedure RelFornecedoresResClick(Sender: TObject);
    procedure relEntradasClick(Sender: TObject);
    procedure FechamentoClick(Sender: TObject);
    procedure Menu1;
    procedure Menu2;
    procedure Mn2FinanceiroClick(Sender: TObject);
    procedure VoltarFinanceiroClick(Sender: TObject);
    procedure mn2sairClick(Sender: TObject);
    procedure Mn2FaturamentoClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure Mn2RhClick(Sender: TObject);
    procedure Mn2PessoasClick(Sender: TObject);
    procedure MontaCargaClick(Sender: TObject);
    procedure dxBarLargeButton2Click(Sender: TObject);
    procedure Mn2BtnAcessibilidadesClick(Sender: TObject);
    procedure OpClassificacaoClick(Sender: TObject);
    procedure relProdutosFornecedorClick(Sender: TObject);

    Procedure ConsultaProd;
    Procedure ConsultaProdAuto;
    procedure ActConsultaProdutoExecute(Sender: TObject);
    procedure OpConfEtiquetasClick(Sender: TObject);
    procedure OpConfBoletoClick(Sender: TObject);
    procedure opRelVendasVendClick(Sender: TObject);
    procedure pnlMensagensResMaximize(Sender: TObject);
    procedure VendasPeriodoClick(Sender: TObject);
    procedure OpRelGraficoVendasClick(Sender: TObject);
    procedure opMensagemClick(Sender: TObject);
    procedure OpGraficoGrupoProdutosClick(Sender: TObject);
    procedure OpVendasVendedorClick(Sender: TObject);
    procedure CentroCustoClick(Sender: TObject);
    procedure opminimomaximoClick(Sender: TObject);
    procedure OpVendasNaturezaClick(Sender: TObject);
    procedure SaidasCaixaClick(Sender: TObject);
    procedure ActPessoasExecute(Sender: TObject);
    procedure Produtos_AplicacoesClick(Sender: TObject);
    procedure OpBxPgrCentroClick(Sender: TObject);
    procedure OpTiposVeiculosClick(Sender: TObject);
    procedure OpMacaVeiculosClick(Sender: TObject);
    procedure DuplicatasClick(Sender: TObject);
    procedure ConsultaConvenioClick(Sender: TObject);
    procedure OpCotacoesClick(Sender: TObject);
    procedure OpDuplicatasRecClick(Sender: TObject);
    procedure ActExcluirMensagemExecute(Sender: TObject);
    procedure BackupClick(Sender: TObject);
    procedure OpBairrosClick(Sender: TObject);
    procedure OpCidadesClick(Sender: TObject);
    procedure OpLogradourosClick(Sender: TObject);
    procedure OpCalculadoraClick(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure OpCaixa_FrentistaClick(Sender: TObject);
    procedure AdministradorasClick(Sender: TObject);
    procedure OpCadChequeClick(Sender: TObject);
    procedure OpRelChequesClick(Sender: TObject);
    procedure opKardexClick(Sender: TObject);
    procedure OpMoedasClick(Sender: TObject);
    procedure OpEstadosClick(Sender: TObject);
    procedure OpConfPromissoriaClick(Sender: TObject);
    procedure OpVendasFiscaisClick(Sender: TObject);
    procedure OpPosicaoEstoqueContagemClick(Sender: TObject);
    procedure OpVendasMaioresClientesClick(Sender: TObject);
    procedure OpChequeCtbClick(Sender: TObject);
    procedure OpMotivoDevClick(Sender: TObject);
    procedure OpManutencaoChequesClick(Sender: TObject);
    procedure OpComissoesVendedoresClick(Sender: TObject);
    procedure OpTransportadorasClick(Sender: TObject);
    procedure ActTrocasExecute(Sender: TObject);
    procedure OpCaixasFechadosClick(Sender: TObject);
    procedure OpCotasRelClick(Sender: TObject);
    procedure OpServicosClick(Sender: TObject);
    procedure OpMotoresClick(Sender: TObject);
    procedure OpMecanicosClick(Sender: TObject);
    procedure OpPosEstSubClick(Sender: TObject);
    procedure OpTabelaExternaClick(Sender: TObject);
    procedure OpProdutosAliquotaClick(Sender: TObject);
    procedure OpRelPessoasConvenioClick(Sender: TObject);
    procedure OpExportaClick(Sender: TObject);
    procedure OpRelVendasGrupProdClick(Sender: TObject);
    procedure OpVendasAnaliticoClick(Sender: TObject);
    procedure OpVendasCanceladasClick(Sender: TObject);
    procedure OpRelVendasCanceladasClick(Sender: TObject);
    procedure OpConsultaVendaIndicadosClick(Sender: TObject);
    procedure OptExtornaCaixaClick(Sender: TObject);
    procedure OpConsultaFatBaixadasClick(Sender: TObject);
    procedure OpAcompanhamentoClick(Sender: TObject);
    procedure OpClienteChequeClick(Sender: TObject);
    procedure OpMalaDiretaClick(Sender: TObject);
    procedure gridMensagensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure OpRelTrocasClick(Sender: TObject);
    procedure TrayIconDblClick(Sender: TObject);
    procedure AppEventsActivate(Sender: TObject);
    procedure AppEventsMinimize(Sender: TObject);
    procedure AppEventsRestore(Sender: TObject);
    procedure AppEventsHint(Sender: TObject);
    procedure OpVendasMarcaClick(Sender: TObject);
    procedure OpConfiguraPerfilClick(Sender: TObject);
    procedure OpMotivosClick(Sender: TObject);
    procedure OpManutencaoCobrancaClick(Sender: TObject);
    procedure OpListagemCobrancaClick(Sender: TObject);
    procedure AberturaCaixaClick(Sender: TObject);
    procedure OpCorClick(Sender: TObject);
    procedure OpMaterialClick(Sender: TObject);
    procedure RelogioTimer(Sender: TObject);
    procedure OpConfRelClick(Sender: TObject);
    procedure OpCobradorClick(Sender: TObject);
    procedure OpConfiguracaoCtbClick(Sender: TObject);
    procedure OpPerfilGradeClick(Sender: TObject);
    procedure OpPromocaoClick(Sender: TObject);
    procedure OpHistoricoClick(Sender: TObject);
    procedure OpChequesDevolvidosClick(Sender: TObject);
    procedure OpTransferirCadastrosClick(Sender: TObject);
    procedure OpCartaoClick(Sender: TObject);
    procedure OpCartoesReembolsoClick(Sender: TObject);
    procedure OpBaixasFaturasFatClick(Sender: TObject);
    procedure OpMovtoCartaoClick(Sender: TObject);
    procedure OpExportaMgv5Click(Sender: TObject);
    procedure OpAgendamentosCobrancasClick(Sender: TObject);
    procedure OpChequesAcertadosClick(Sender: TObject);
    procedure OpListaIndeadaClick(Sender: TObject);
    procedure OpManutencao_CartaoClick(Sender: TObject);
    procedure OpGarantiasClick(Sender: TObject);
    procedure OpEtiquetasGradeClick(Sender: TObject);
    procedure OpResumoComissoesClick(Sender: TObject);
    procedure OpPosicaoEstoqueVendaClick(Sender: TObject);
    procedure OpExportaFilizolaClick(Sender: TObject);
    procedure OpPagasporDataClick(Sender: TObject);
    procedure OpBaixasCobradorClick(Sender: TObject);
    procedure RelServicosPeriodoClick(Sender: TObject);
    procedure OpVendasAnaliseClienteClick(Sender: TObject);
    procedure OpCtbFluxoCaixaClick(Sender: TObject);
    procedure OpComissoesVendedorRecebidasClick(Sender: TObject);
    procedure CtbFluxoCaixaClick(Sender: TObject);
    procedure OpLogsClick(Sender: TObject);
    procedure OpVendasGrupoSelecaoClick(Sender: TObject);
    procedure OpLocalCobrancaClick(Sender: TObject);
    procedure OpListaPrecServicoClick(Sender: TObject);
    procedure OpPosicaoGradeClick(Sender: TObject);
    procedure OpTipos_ContratosClick(Sender: TObject);
    procedure btnReciboClick(Sender: TObject);
    procedure itmContagemGradeClick(Sender: TObject);
    procedure opRelEstVendasServicosClick(Sender: TObject);
    procedure OpDivergenciaGradesClick(Sender: TObject);
    procedure OpClientesInativosClick(Sender: TObject);
    procedure OpVendasCidadesClick(Sender: TObject);
    procedure OpDefeitosClick(Sender: TObject);
    procedure OPBAIXASRECEBERCONVENIOClick(Sender: TObject);
    procedure OpTerminalConsultaClick(Sender: TObject);
    procedure Rel_Saidas_PeriodoClick(Sender: TObject);
    procedure Rel_DevolucoesClick(Sender: TObject);
    procedure Rel_VD_ProdutosClick(Sender: TObject);
    procedure OpRelEntradasProdutosClick(Sender: TObject);
    procedure relKardexClick(Sender: TObject);
    procedure dxBarButton7Click(Sender: TObject);
    procedure dxBarButton8Click(Sender: TObject);
    procedure dxBarButton9Click(Sender: TObject);
    procedure btMesasClick(Sender: TObject);
    procedure dxBarButton10Click(Sender: TObject);
    procedure mnCadastroBancoClick(Sender: TObject);
    procedure ActClientesExecute(Sender: TObject);
    procedure btnReleaseClick(Sender: TObject);
    procedure btnDemonstrativoClick(Sender: TObject);
    procedure ActSetReleaseExecute(Sender: TObject);
    procedure btnComissoesClick(Sender: TObject);
    procedure btnRegiaoClick(Sender: TObject);
    procedure btnEstoqueCompClick(Sender: TObject);
    procedure btnRelPagarClick(Sender: TObject);
    procedure btnManutencaoClick(Sender: TObject);
    procedure btnPerfilClick(Sender: TObject);
    procedure btnPerfilPagtoClick(Sender: TObject);
    procedure btnRelComissaoClick(Sender: TObject);
    procedure btnCMAGRClick(Sender: TObject);
    procedure btnSugCompraClick(Sender: TObject);
    procedure btnPaisesClick(Sender: TObject);
    procedure btnPosicaoEstoque2Click(Sender: TObject);
    procedure btnContratosClick(Sender: TObject);
    procedure btnServicoClick(Sender: TObject);
    procedure mnTipoAtendimentoClick(Sender: TObject);
    procedure mnMotivoChamadoClick(Sender: TObject);
    procedure ActServicoExecute(Sender: TObject);
    procedure btnSecaoClick(Sender: TObject);
    procedure ListaAtendimentoClick(Sender: TObject);
    procedure btnRelEquipamentoClick(Sender: TObject);
    procedure ActCargaExecute(Sender: TObject);
    procedure mnConfigSerieClick(Sender: TObject);
    procedure mnManutencaoKardexClick(Sender: TObject);
    procedure btnPendenciaClick(Sender: TObject);
    procedure MarcarmensagemcomoLida1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure dxBarButton13Click(Sender: TObject);
    procedure dxBarButton14Click(Sender: TObject);
    procedure ProvisaoFinanceiraClick(Sender: TObject);
    procedure btnAlteraPrecoClick(Sender: TObject);
    procedure btnContratoClick(Sender: TObject);
    procedure btnLeituraClick(Sender: TObject);
    procedure btnCategoriasClick(Sender: TObject);
    procedure btnAgrClasseToxicologicaClick(Sender: TObject);
    procedure btnAgrClassAmbientalClick(Sender: TObject);
    procedure btnAgrClassQuimicaClick(Sender: TObject);
    procedure btnAgrFabricantesClick(Sender: TObject);
    procedure btnAgrMatEmbalagemClick(Sender: TObject);
    procedure btnAgrOrientacoesClick(Sender: TObject);
    procedure btnArgRegistranteClick(Sender: TObject);
    procedure btnDefensivosClick(Sender: TObject);
    procedure btnRelContratosClick(Sender: TObject);
    procedure btnUndConversaoClick(Sender: TObject);
    procedure btnCadPragasClick(Sender: TObject);
    procedure btnCadCulturaClick(Sender: TObject);
    procedure btnUndMedDosagemClick(Sender: TObject);
    procedure btnReceiturarioClick(Sender: TObject);
    procedure btnRelTituloPendenteClick(Sender: TObject);
    procedure btnTesteClick(Sender: TObject);
    procedure btnCotacoesClick(Sender: TObject);
    procedure btnAcertoClick(Sender: TObject);
    procedure bntVDTClick(Sender: TObject);
    procedure btnComissoesTerceiroClick(Sender: TObject);
    procedure btnExportaIagroClick(Sender: TObject);
    procedure btnEventoContabilClick(Sender: TObject);
    procedure btnSincronizarClick(Sender: TObject);
    procedure btnTabelaPrecosClick(Sender: TObject);
    procedure btnTabelaVendedorClick(Sender: TObject);
    procedure btnRomaneiosClick(Sender: TObject);
    procedure btnEstornoClick(Sender: TObject);
    procedure btnMenManutencaoClick(Sender: TObject);
    procedure btnConsultaRomaneioClick(Sender: TObject);
    procedure btnResumoServicoClick(Sender: TObject);
    procedure btnPosicaoSaldoEstoqueClick(Sender: TObject);
    procedure btnFolhaPagtoClick(Sender: TObject);
    procedure btnGrupoEmpresarialClick(Sender: TObject);
    procedure GridMensagemEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLocalizacaoClick(Sender: TObject);
    procedure btnSetaGeoLocalizacaoClick(Sender: TObject);
    procedure btnContasCorrentesClick(Sender: TObject);
    procedure AgendaStorageRemindersOpenEvent(
      Sender: TcxSchedulerReminders; AEvent: TcxSchedulerControlEvent);
    procedure btnDiaClick(Sender: TObject);
    procedure pgcGraficosChange(Sender: TObject);
    procedure PgcMainMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tbsFluxoFinanceiroShow(Sender: TObject);
    procedure tbsGeralShow(Sender: TObject);
    procedure ckReceberEfetivoClick(Sender: TObject);
    procedure GridTVCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure pcFluxoCaixaChange(Sender: TObject);
    procedure cbEmpresaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PgcMainPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure PgcMainMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ContratoCidadeSinteticoClick(Sender: TObject);
    procedure btnCadCategoriasClick(Sender: TObject);
    procedure OpRepresentanteClick(Sender: TObject);
    procedure btnCaminhoClick(Sender: TObject);
    procedure btnContratoCadClick(Sender: TObject);
    procedure btnRelResumoContratoClick(Sender: TObject);
    procedure beSkinComboPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    //Agente: IAgentCtlCharacter;
    FResNames: TStringList;
    FSkinNames: TStringList;
    procedure InitializeSkinList;

    procedure GrafEfetuaConsulta(Force:Boolean=false);
    procedure ConfigGrafFluxoCaixa;
    procedure ConfigControleGrafico(Grafico: TDBChart);
    procedure CaixaLoja;
    procedure CaixaFrentista;
    procedure Vendas;
    procedure FiltrarFluxoDeCaixa;
    procedure FiltrarConsulta(Dataset:TIBQuery;Data1,Data2:TDate;CNPJ:String;Force:Boolean=false);
    procedure AtivaGrafico;


  protected
    procedure SynchronizeLookAndFeel;
    property ResNames: TStringList read FResNames;
    property SkinNames: TStringList read FSkinNames;
    procedure SelectSkinName(const ASkinName: string);
    procedure WndProc(var Message: TMessage); override;
  public
    { Public declarations }
    NomeAgente : string;
    Codigo_Int: Integer;
    Codigo_Str: String;

    procedure ImprimePosicao;
    procedure LimpaPosicao;
    procedure Conecta();
    procedure Desconecta();
  end;

var
  FrmMain: TFrmMain;
  WM_SETUPLOOKANDFEEL: Cardinal = WM_USER + 101;

implementation

uses
    Cadastros_DM,
    Listagens_DM,
    PessoasFJ_Form,
    Splash_Form,
    Application_DM,
    Funcoes,
    OpUsuario_Form,
    Clientes_Form,
    Funcionarios_Form,
    Atividades_Form,
    Marcas_Form,
    Grupos_Form,
    Unidades_Form,
    Reducoes_Form,
    NaturezaOper_Form,
    Produtos_Form,
    Tipo_Documento_Form,
    Centro_Custo_Form,
    Aplicacoes_Form,
    Empresas_Form,
    Empresas_DM,
    Receber_Form,
    Financeiro_Dm,
    ConsultaReceber_Form,
    Fornecedores_Form,
    Extorna_Receber_Form,
    FormasPagto_Form,
    Entradas_DM,
    Filtra_Receber_Previsao_Form,
    Filtra_Receber_Form,
    Entra_Periodo_Form,
    Pagar_Form,

    Extorna_Pagar_Form,
    Baixa_Pagar_Multiplos_Form,
   

    Plano_DM,
    Plano_Form,
    Movimento_Contabil_Form,
    Bancos_Form,
    Movimento_Form,
    Vendedores_Form,
    SelEntradas_Form,
    SelVendas_Form,
    Vendas_Dm,
    Estoque_Dm,
    Pendencias_Form,
    Terceiros_Form,
    Perfis_Form,
    Seguranca_DM,
    SelFaturaVendas_Form,
    Usuarios_Form,
    SelVendasPdv_Form,
    Caixas_Form,
    Caixa_Dm,
    Kardex_FRel,
    Relatorios_DM,
    ListaPrecos_FRel,
    ListaPrecosAZ_FRel,
    ListaSimp_FRel,
    FisicaFin_FRel,
    Pdv_Frm,
    Pdv_DM,
    CotasSB_Form,
    Motoristas_Form,
    Veiculos_Form,
    Rotas_Form,
    Cargas_Form,
    Seleciona_Caixas_Form,
    Series_Form,
    ClientesAlf_FRel,
    FornecedoresAlf_FRel,
    ClientesRes_FRel,
    FornecedoresRes_FRel,
    Entradas_FRel,
    FecharCaixa_Form,
    LocalizarProd_DM,
    MontaCargas_Form,
    Classificacoes_Form,
    ProdutosFor_FRel,
    ListaPrecosUnid_FRel,
    ConfEtiquetas_Form,
    ConfiguraBoleto_Form,
    VendasVendedor_FRel,
    Mensagem_DM,
    VendasCliente_FRel,
    VendasPeriodo_FRel,
    GraficoVendas_Form,
    Mensagem_Form,
    VendasPorProduto_FRel,
    GraficoVendasGrupoProdutos_Form,
    ConsultaVendasVendedor_Form,
    Localizar_Cliente,
    Localizar_Fornecedor,
    VariacoesPreco_FRel,
    VendasNatureza_FRel,
    CaixaSaidas_Form,
    Produtos_Aplicaoes_Form,
    Tipo_Veiculos_Form,
    Marca_Veiculos_Form,
    ConfiguraDuplicata_Form,
    ConsultaConveniados_Form,
    SelCotacoes_Form,
    
    ConfiguradorBackup_Frm,
    SelAlteraVendas_Form,
    Bairros_Form,
    Cidades_Form,
    Logradouros_Form,
    Administradoras_Form,
    Cheque_Manual_Form,
    Rel_Pagas_Centro_Form,
    Cheques_FRel,
    Moedas_Form,
    Estados_Form,
    ConfiguraNotaPromissoria_Form,
    Baixa_Receber_Convenio_Form,
    Fatura_Futura_FRel,
    PosicaoEstoqueContagem_FRel,
    VendasMaioresCliente_FRel,
    Cheque_Ctb_Form,
    Motivos_Devolucao_Form,
    SelFin_Cheques_Form,
    Usuarios_DM,
    ComissoesVendedor_FRel,
    Transportadoras_Form,
    SelTrocas_Form,
    CotasVendedor_FRel,
    Servicos_Form,
    Servicos_DM,
    Motores_Form,
    Mecanicos_Form,
    SelOrdens_Form,
    PosicaoEstoqueContagemSub_FRel,
    Cria_Tab_Ext_Prod_Form,
    ProdutosAliquota_FRel,
    Agrupador_Form,
    ClientesConv_FRel,
    Migrar_Dados_Form,
    VendasGrupo_FRel,
    VendasAnalitico_FRel,
    SelVendasCanceladas_Form,
    VendasCanceladas_FRel,
    MovimentoCaixa_FRel,
    BxReceberAlf_FRel,
    ConsultaVendasIndicados_Form,
    Extorna_Caixa_Form,
    ConsultaFatura_Pagas_Form,
    VendasAcompanhamento_FRel,
    VendasAnalise_FRel,
    ClientesCheque_FRel,
    Baixa_Receber_Multiplos_Parc_Form,
    Consulta_Pessoas_Form,
    PagasAlf_FRel,
    MensagemDisPlay_Form,
    TrocasCliente_FRel,
    Lancar_Pagas_Form,
    VendasMarca_FRel,
    ConfiguraPerfil_Form,
    AnaliseInadimplencia_FRel,
    MotivosCobranca_Form,
    ConsultaCobrancas_Form,
    ListagemCobrancas_Form,
    AberturaCaixas_Form,
    Cor_Form,
    Material_Form,
    VendasPdv_Form,
    Ctb_Conf_Rel_Form,
    Cobrador_Form,
    Ctb_Configuracoes_Form,
    Perfil_Grades_Form,
    Promocoes_Form,
    Historico_Form,
    Historico_DM,
   
    ChequesDevolvidos_FRel,
    BxReceberOrd_FRel,
    Ficha_Cliente_FRel,
    Transfere_Cadastros_Form,
    Cartao_FRel,
    Cartao_Reemb_FRel,
    BxReceberAlfFat_FRel,
    Cartao_Manual_Form,
    Migrar_Dados_Toledo_Form,
    VendasSubgrupo_FRel,
    Ver_Agendamentos_Cobranca_Periodo_Form,
    ChequesAcertados_FRel,
    ListaPrecosIndexada_FRel,
    Cartao_Manutencao_Form,
    SelGarantias_Form,
    GarantiasCliente_FRel, 
    Mensalidades_Form, EtiquetaProduto_Grade_Form,
  Filtra_Resumo_Comissoes_Form, PosicaoEstoque_Venda_FRel, Migrar_Dados_Filizola_Form,
  ConsultaPagasData_Form,  BxReceberCobrador_FRel,
  BxReceberVendedorAlf_FRel, OrdensPeriodo_FRel,
  VendasAnalise_Cliente_FRel, 
  ComissoesVendedor_Rec_FRel, Filtra_Fluxo_Caixa_Form,
  Log_Transacoes_Form, VendasgrupoSel_FRel, Local_Cobranca_Form,
  Localizar_Precos_Servicos, PosicaoEstoqueGrade_FRel, Propriedades_Form,
  Tipo_Contrato_Form,  PosicaoEstoqueGrade_Marca_FRel, RecibosPagar, ContagemGrade_Form,
  Rel_Vendas_Servicos_FRel, Saldo_Contas_FRel,
  ClientesInativos_FRel,
  VendasCidade_FRel, Defeitos_Form,
  VendasAnalise_Mes_FRel, ConsultaConveniados_Baixas_Form,
  Pdv_Terminal_Consulta,
  Saidas_FRel,
  CaixaFrentista_DM, Devolucoes_FRel, VendasProdutos_FRel,
  EntradasProdutos_FRel, Cotacoes_FRel, ImprimeBoleto,
  VendasClientesConsumidor_FRel, AuxContagem_FRel, Mesas_Form,
  Propriedades_FRel, ListagemMod_Form, Demonstrativo_Form,
  Filtra_RelTerceiros_Form, Receber_FRel2, Regioes_Form,
  EstoqueComprometido_FRel, Pagar_FRel2, ManutencaoBoletos_Form,
  Perfil_Com_Form, Perfil_Pagto_Form, Comissoes_FRel,
  ManutencaoComissoes_Form, Sugestao_FRel, Localizar_Produto_Cadastro_Auto,  Paises_Form,
  StatusServico_Form,
  TipoAtendimento_Form, MotivoChamado_Form, Secoes_Produto_Form,
  Rel_Rechamados, Equipamentos_FRel2, SelCarga, SeriesCustomizaveis,
  SelKardex, EstoquePendencias, Rel_CargaVenda, AlteraPreco_Form,
  Contratos_Form, Leituras_Form, SelLeituras_Form, CategoriasDef_Form,
  ClassesToxicologicasDef_Form, ClassAmbientalDef_Form,
  ClassQuimicaDef_Form, FabricanteDef_Form, MatEmbalagemDef_Form,
  OrientacoesDef_Form, Registrante_Form, Defensivo_Form, Contratos_FRel2,
  Unidades_Conversao_Form, PragasDef_Form,
  CulturasDef_Form, UndMedVazao_Form, SelReceiturario_Form, Acerto_FRel,
  FiltraMulti_Form, DigitaCotacoes_Form, Act_Contas_Form,
  SelComissoes_Form, ComissoesTerceiros_FRel, Exporta_Iagro_Form,
  EventoContabil_Form, SincronizaCadastros_Form, TabelaPreco_Form,
  VendedorTabela_Form, Romaneios_Form, Estorna_Acerto_Form,
  FluxoCaixa_Form, SelMensalidades_Form, ConsultaRomaneioEntrega_Form,
  Rel_ResumoAtendimento, 

   BIEstoqueGrade_Form,
  Folha_Form,   ContratosGrupo_Form,
  Localizacao_Est_Form,
  PosicaoEstoqueGrafico_FRel, EstoqueMaxMin_FRel2,
  Gera_Geolocalizacao_Form, Financeiro_Dm2, Flx_ReceberPrevista,
  ClienteCidades_FRel, ClientesCategoria_Form, Representante_Form,
  ContratosConstru_Form, Rel_ContratoObra, untCadLogradouro, untCadBairros,
  untCadCidades, untCadEstados, untCadMoedas, untCadPaises,
  untCadAtividades, untCadPessoas, untCadRegioes, untCadVendedor2;

{$R *.DFM}

procedure TFrmMain.ImprimePosicao;
Var
   L, L1, L2, L3, L4, L5, L6: String;
   Cheques, Faturas, Receber, Pagar, SomaTotal: String;
   TotPagar, TotReceber, TotCheques, TotFatura: Real;
Begin
    { TotPagar   := DmaPP.PAGAR_ABERTO   ;
     TotReceber := DmaPP.RECEBER_ABERTO ;
     TotCheques := DmaPP.CHEQUE_ABERTO  ;


     L := FormatFloat('###,###,##0.00', TotCheques );
     WHILE Length(L) < 10 DO
     BEGIN
          L := '_' + L ;
     END;
     Cheques   := 'Cheques____' + L ;

     L := FormatFloat('###,###,##0.00', TotFatura );
     WHILE Length(L) < 10 DO
     BEGIN
          L := '_' + L ;
     END;

     Receber   := 'Receber____' + L ;
     L := FormatFloat('###,###,##0.00', TotPagar );
     WHILE Length(L) < 10 DO
     BEGIN
          L := '_' + L ;
     END;
     Pagar     := 'Pagar____' + L ;

     L := FormatFloat('###,###,##0.00', TotReceber - TotPagar + TotCheques + TotFatura );
     WHILE Length(L) < 10 DO
     BEGIN
          L := '_' + L ;
     END;
     SomaTotal := 'Total____' + L ;

     //Pula Uma Linha
     L6 :='<BR>';

     //PREENCHE O CABECALHO
     L1 := '<B><FONT color="#000000"  size="10" face="Times New Roman"><P align="right">' +  Cheques  +  '</P></FONT></B>' ;

     L2 := '<B><FONT color="#000000"  size="10" face="Times New Roman"><P align="right">' +  Receber  +  '</P></FONT></B>' ;

     L3 := '<B><FONT color="#000000"  size="10" face="Times New Roman"><P align="right">' +  Pagar  + '</P></FONT></B>' ;

     L4 := '<B><FONT color="#000000"  size="10" face="Times New Roman"><P align="right">' +  Faturas  + '</P></FONT></B>' ;

     L5 := '<B><FONT color="#000000"  size="10" face="Times New Roman"><P align="right">' +  SomaTotal  + '</P></FONT></B>' ;

     Posicao.text := L6 + L6 + L1 + L2 + L3 + L4 + L6 + L5 ;

     Posicao.Update;}
end;

procedure TFrmMain.LimpaPosicao;
Var
   L, L1, L2, L3, L4, L5, L6: String;
Begin
     //Pula Uma Linha
     L6 := '<BR>';

     //PREENCHE O CABECALHO
     L1 := '<BR>';

     L2 := '<BR>' ;

     L3 := '<BR>' ;

     L4 := '<BR>' ;

     L5 := '<BR>' ;

    { Posicao.text := L6 + L6 + L1 + L2 + L3 + L4 + L6 + L5 ;

     Posicao.Update;}
end;

procedure TFrmMain.Menu1;
begin
     BarManager.Bars[0].Visible := true  ;
     BarManager.Bars[1].Visible := true  ;
     BarManager.Bars[2].Visible := false ;
     BarManager.Bars[3].Visible := false ;
     BarManager.Bars[4].Visible := false ;
     BarManager.Bars[5].Visible := False ;
     BarManager.Bars[6].Visible := false ;
     BarManager.Bars[7].Visible := false ;
     BarManager.Bars[8].Visible := false ;
     BarManager.Bars[9].Visible := false ;
end;

procedure TFrmMain.Menu2;
begin
     BarManager.Bars[0].Visible := false ;
     BarManager.Bars[1].Visible := false ;
     BarManager.Bars[2].Visible := false ;
     BarManager.Bars[3].Visible := true  ;
     BarManager.Bars[4].Visible := False ;
     BarManager.Bars[5].Visible := False ;
     BarManager.Bars[6].Visible := false ;
     BarManager.Bars[7].Visible := false ;
     BarManager.Bars[8].Visible := false ;
     BarManager.Bars[9].Visible := false ;
end;

procedure TFrmMain.opFecharClick(Sender: TObject);
begin
  If FrmMain.MDIChildCount > 0 Then
     FrmMain.ActiveMDIChild.Close
  Else
     Close;
end;

procedure TFrmMain.PessoasFJClick(Sender: TObject);
begin
  if Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCadPessoas', True)) Then
     Exit;

  if DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  if FrmCadPessoas = Nil Then
  begin
     Application.ProcessMessages;
     FrmCadPessoas := TFrmCadPessoas.Create(Self);
     FrmCadPessoas.ShowMODAL ;
     FrmCadPessoas.Free      ;
     FrmCadPessoas := Nil    ;
  end;
  exit;

  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPessoasFJ', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmPessoasFJ = Nil Then
  Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);

       Application.ProcessMessages;
       FrmPessoasFJ := TFrmPessoasFJ.Create(Self);
       FrmPessoasFJ.ShowModal;
       FrmPessoasFJ.Free;
       FrmPessoasFJ := Nil;
  end;
end;

procedure TFrmMain.LblUsuarioMouseEnter(Sender: TObject);
begin
  (Sender as TcxLabel).Style.Font.Color  := clYellow;
  (Sender as TcxLabel).Style.Font.Style  := [fsBold, fsUnderline];
end;

procedure TFrmMain.LblUsuarioMouseLeave(Sender: TObject);
begin
  (Sender as TcxLabel).Style.Font.Color  := clWhite;
  (Sender as TcxLabel).Style.Font.Style  := [fsBold];
end;

procedure TFrmMain.LblUsuarioClick(Sender: TObject);
begin
  // Chamando formulario de opcoes do usuario
  If FrmMain.MDIChildCount = 0 Then
     Begin
       FrmOpUsuario := TFrmOpUsuario.Create(Self);
       FrmOpUsuario.ShowModal;
     End;
end;

procedure TFrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  DirUser : string;
begin
  If MessageBox(Handle,'Tem certeza que deseja sair do sistema ?',
                       ' Atenção !',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1)=IDYES Then
     Begin
       //
       DMMensagem.Mensagens.Close;
       DMMensagem.MensagensRes.Close;
       DMMensagem.Free;
       DMMensagem := Nil;
       //
       DMApp.Database.Close;
       DMApp.Free;
       //

       Action := caFree;
       Application.Terminate ;
     End
  Else
     Action := caNone;



  DirUser := GetEnvironmentVariable('USERPROFILE');
  AgendaStorage2.SaveToFile(DirUser+'\Agenda.dat');

  FreeAndNil(FSkinNames);
  FreeAndNil(FResNames);
end;

procedure TFrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  If Abs(GetKeyState(VK_Shift)) in [127, 128] Then
     Begin
       //
       DMMensagem.Mensagens.Close;
       DMMensagem.MensagensRes.Close;
       DMMensagem.Free;
       DMMensagem := Nil;
       //
       DMApp.Database.Close;
       DMApp.Free;
       //
       Halt;
     End;
end;

procedure TFrmMain.opFuncionariosClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFuncionarios', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmFuncionarios = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
//       DMCadastros     := TDMCadastros.Create(Self);
       FrmFuncionarios := TFrmFuncionarios.Create(Self);
       //
       FrmFuncionarios.FormStyle   := fsMDIChild;
       FrmFuncionarios.WindowState := wsMaximized;
       FrmFuncionarios.BorderStyle := bsNone;
       PnlClient.Visible           := False;
       //
       FrmFuncionarios.Show;
     End;
end;

procedure TFrmMain.opAtividadesClick(Sender: TObject);
begin
  if Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmCadAtividades', True)) Then
     Exit;

  if DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  if frmCadAtividades = Nil Then
  begin
     frmCadAtividades := TfrmCadAtividades.Create(Self);
     frmCadAtividades.ShowMODAL ;
     frmCadAtividades.Free      ;
     frmCadAtividades := Nil    ;
  end;
end;

procedure TFrmMain.opMarcasClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMarcas', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmMarcas = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
//       DMCadastros := TDMCadastros.Create(Self);

       FrmMarcas   := TFrmMarcas.Create(Self);
       //
       FrmMarcas.FormStyle   := fsMDIChild;
       FrmMarcas.WindowState := wsMaximized;
       FrmMarcas.BorderStyle := bsNone;
       PnlClient.Visible     := False;
     End;
end;

procedure TFrmMain.opGruposClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmGrupos', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmGrupos = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
//       DMCadastros := TDMCadastros.Create(Self);
       FrmGrupos   := TFrmGrupos.Create(Self);
       //
       FrmGrupos.Showmodal ;
       FrmGrupos.Free      ;
       FrmGrupos := Nil    ;
     End;
end;

procedure TFrmMain.opUnidadesMedClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmUnidades', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmUnidades = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
//       DMCadastros := TDMCadastros.Create(Self);
       FrmUnidades := TFrmUnidades.Create(Self);
       //
       FrmUnidades.FormStyle   := fsMDIChild;
       FrmUnidades.WindowState := wsMaximized;
       FrmUnidades.BorderStyle := bsNone;
       PnlClient.Visible       := False;
     End;
end;

procedure TFrmMain.opReducoesClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmReducoes', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmReducoes = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
//       DMCadastros := TDMCadastros.Create(Self);
       FrmReducoes := TFrmReducoes.Create(Self);
       //
       FrmReducoes.FormStyle   := fsMDIChild;
       FrmReducoes.WindowState := wsMaximized;
       FrmReducoes.BorderStyle := bsNone;
       PnlClient.Visible       := False;
     End;
end;

procedure TFrmMain.opNaturezaOperClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmNaturezaOper', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmNaturezaOper = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
//       DMCadastros     := TDMCadastros.Create(Self);
       FrmNaturezaOper := TFrmNaturezaOper.Create(Self);
       //
       FrmNaturezaOper.FormStyle   := fsMDIChild;
       FrmNaturezaOper.WindowState := wsMaximized;
       FrmNaturezaOper.BorderStyle := bsNone;
       PnlClient.Visible           := False;
     End;
end;

procedure TFrmMain.opProdutoClick(Sender: TObject);
begin
  if not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmProdutos', True)) then
     Exit;
     
  if DMApp.SelecionarEmpresa = 'N' then
    Exit;

  if FrmProdutos = nil  then
  begin
    if FrmMain.MDIChildCount > 0 then
       opFechar.OnClick(opFechar);
    Application.ProcessMessages;

    FrmProdutos := TFrmProdutos.Create(Self);
    FrmProdutos.Showmodal;
    FrmProdutos.Free;
    FrmProdutos := Nil;
  end;
end;

procedure TFrmMain.opAplicacoesClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmAplicacoes', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmAplicacoes = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       FrmAplicacoes := TFrmAplicacoes.Create(Self);
       FrmAplicacoes.FormStyle   := fsMDIChild;
       FrmAplicacoes.WindowState := wsMaximized;
       FrmAplicacoes.BorderStyle := bsNone;
       PnlClient.Visible         := False;
     End;
end;

procedure TFrmMain.opEmpresasClick(Sender: TObject);
begin
   { * * * * * }
  if  DMApp.SelecionarEmpresa = 'N' then
     Exit;

  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmEmpresas', True)) Then
     Exit;

  { * * * * * }
  If FrmEmpresas = Nil Then
  begin
       //
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);
       //
    Application.ProcessMessages;
       //
    DMEmpresas  := TDMEmpresas.Create(Self);
    FrmEmpresas := TFrmEmpresas.Create(Self);
       //
    FrmEmpresas.Showmodal;
  end;
end;

procedure TFrmMain.ManutencaoRecClick(Sender: TObject);
begin
  { aqui mano }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmReceber', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
    If FrmReceber = Nil Then
    Begin
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);

       Application.ProcessMessages;

       //Cria o Formulario de Localizar Cliente
       Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;
       FrmReceber   := TFrmReceber.Create(Self);
       If ( FrmReceber.ActBaixaSelecao.Tag > 0 )  or ( FrmReceber.ActBaixar.Tag > 0 ) or ( FrmReceber.ActBaixarParcial.Tag > 0) then
       begin
            If DMApp.VerificarCaixa = 'N'  Then
            begin
                 Frm_Localizar_Cliente.Free ;
                 Frm_Localizar_Cliente := Nil ;
                 FrmReceber.Free      ;
                 FrmReceber := Nil    ;
            end
            else
            begin
                 FrmReceber.Showmodal ;
                 FrmReceber.Free      ;
                 FrmReceber := Nil    ;
            end;
       end
       else begin
            //
            FrmReceber.Showmodal ;
            FrmReceber.Free      ;
            FrmReceber := Nil    ;
       end;
    end;
end;

procedure TFrmMain.opFornecedoresClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFornecedores', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmFornecedores = Nil Then
  Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;

       If DMPLANO = Nil  then
         DMPLANO := TDMPLANO.Create(Self);

       FrmFornecedores := TFrmFornecedores.Create(Self);
       //
       FrmFornecedores.Showmodal ;
       FrmFornecedores.Free       ;
       FrmFornecedores := Nil     ;

  End;
end;

procedure TFrmMain.EstornaRecClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmExtornaReceber', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmExtornaReceber = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
       opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    FrmExtornaReceber   := TFrmExtornaReceber.Create(Self);
    FrmExtornaReceber.Showmodal;
    FrmExtornaReceber.Free;
    FrmExtornaReceber := Nil;
  end;
end;

procedure TFrmMain.opFormasPagtoClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFormasPagto', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmFormasPagto = Nil Then
  Begin
                 
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);

       Application.ProcessMessages;


       FrmFormasPagto := TFrmFormasPagto.Create(Self);
       FrmFormasPagto.FormStyle   := fsMDIChild;
       FrmFormasPagto.WindowState := wsMaximized;
       FrmFormasPagto.BorderStyle := bsNone;
       PnlClient.Visible          := False;
  End;
end;

procedure TFrmMain.opEntradaProdutosClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmSelEntradas', True)) Then Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
    Exit;

  If DMApp.VerificarCaixa = 'N' Then
    Exit;

  { * * * * * }
  If FrmSelEntradas = Nil Then
  Begin
    //
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);
       //
    Application.ProcessMessages;
       //
    DMEntradas     := TDMEntradas.Create(Self);
    FrmSelEntradas := TFrmSelEntradas.Create(Self);
    FrmSelEntradas.Showmodal ;
  end;
end;

procedure TFrmMain.ReceberBaixasAlfaClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelRecebidasAlfabetico', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }

  If FRelRecebidasAlfabetico = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       FRelRecebidasAlfabetico := TFRelRecebidasAlfabetico.Create(Self);
       FRelRecebidasAlfabetico.showmodal;

       FRelRecebidasAlfabetico.Free;
       FRelRecebidasAlfabetico := Nil;

     End;
end;

procedure TFrmMain.ManutencaoClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPagar', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
    Exit;

  { * * * * * }
  If FrmPagar = Nil Then
  Begin
       //
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;

    //Cria o Formulario de Localizar Cliente
    Application.CreateForm(TFrm_Localizar_Fornecedor, Frm_Localizar_Fornecedor) ;


    FrmPagar   := TFrmPagar.Create(Self);

    If ((FrmPagar.ActBaixaParcial.Tag > 0) or (FrmPagar.ActBaixar.Tag > 0 )) and (dmapp.Pagar_Caixa = 'S') then
    begin
      If DMApp.VerificarCaixa = 'N' Then
      begin
        Frm_Localizar_Fornecedor.Free      ;
        Frm_Localizar_Fornecedor := Nil    ;

        FrmPagar.Free      ;
        FrmPagar := Nil    ;
      end
      else
      begin
        FrmPagar.Showmodal ;
        FrmPagar.Free      ;
        FrmPagar := Nil    ;
      end;
    end
    else
    begin
      FrmPagar.Showmodal ;
      FrmPagar.Free      ;
      FrmPagar := Nil    ;
    end;
  End;
end;

procedure TFrmMain.EstornaPgrClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmExtornaPagar', True)) Then
     Exit;

  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  If FrmExtornaPagar = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
       opFechar.OnClick(opFechar);

    Application.ProcessMessages;

    FrmExtornaPagar   := TFrmExtornaPagar.Create(Self);
    FrmExtornaPagar.Showmodal ;
    FrmExtornaPagar.Free      ;
    FrmExtornaPagar := Nil    ;
  end;
end;

procedure TFrmMain.BxPgrSelecaoClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmBaixaPagarSelecao', True)) Then
     Exit;

  {* * * * *}
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmBaixaPagarSelecao = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //

       FrmBaixaPagarSelecao := TFrmBaixaPagarSelecao.Create(Self);

       IF ( FrmBaixaPagarSelecao.ActBaixar.Tag = 1 ) AND
          ( DMAPP.Pagar_Caixa = 'S' )
       THEN BEGIN
            If DMApp.VerificarCaixa = 'N' Then
                 Exit ;
       END;

       DmaPP.CaixaAtivo := False ;

       //
       FrmBaixaPagarSelecao.Showmodal ;
       FrmBaixaPagarSelecao.Free      ;
       FrmBaixaPagarSelecao := Nil    ;
     End;
end;

procedure TFrmMain.BxpPgrAlafabeticoClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelPagasAlfabetico', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;
  { * * * * * }

  If FRelPagasAlfabetico = Nil Then
  begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //


       FRelPagasAlfabetico := TFRelPagasAlfabetico.Create(Self);

       FRelPagasAlfabetico.Showmodal ;

       FRelPagasAlfabetico.Free      ;
       FRelPagasAlfabetico := Nil    ;


     End;
end;

procedure TFrmMain.CadPlanoClick(Sender: TObject);
begin
  { * * * * * }
  IF Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPlano', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmPlano = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       DMPlano       := TDMPlano.Create(Self);
       FrmPlano := TFrmPlano.Create(Self);


       FrmPlano.Showmodal ;
       FrmPlano.Free      ;
       FrmPlano := Nil    ;
     End;
end;

procedure TFrmMain.MovimentoContabilClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMov_Contabil', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmMov_Contabil = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
//       DMCadastros   := TDMCadastros.Create(Self);
       DMPlano       := TDMPlano.Create(Self);

       FrmMov_Contabil := TFrmMov_Contabil.Create(Self);
       //
       FrmMov_Contabil.Showmodal ;
       FrmMov_Contabil.Free      ;
       FrmMov_Contabil := Nil    ;
     End;
end;

procedure TFrmMain.MovimentoBancarioClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMovimento', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  if FrmMovimento = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    DMPlano       := TDMPlano.Create(Self);
    FrmMovimento  := TFrmMovimento.Create(Self);
    FrmMovimento.Showmodal;
    FrmMovimento.Free;
    FrmMovimento := Nil;
  end;
end;

procedure TFrmMain.TiposDctosClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmTipoDoctos', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmTipoDoctos = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);

       Application.ProcessMessages;
       FrmTipoDoctos  := TFrmTipoDoctos.Create(Self);

       FrmTipoDoctos.FormStyle   := fsMDIChild;
       FrmTipoDoctos.WindowState := wsMaximized;
       FrmTipoDoctos.BorderStyle := bsNone;
       PnlClient.Visible          := False;
     End;
end;

procedure TFrmMain.RazaoClick(Sender: TObject);
begin
  { * * * * * }
end;

procedure TFrmMain.VendedoresClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmVendedores', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmVendedores = Nil Then
  Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       FrmVendedores  := TFrmVendedores.Create(Self);
       FrmVendedores.FormStyle   := fsMDIChild;
       FrmVendedores.WindowState := wsMaximized;
       FrmVendedores.BorderStyle := bsNone;
       PnlClient.Visible         := False;
  end;
end;

procedure TFrmMain.opSaidaProdutosClick(Sender: TObject);
begin
  If FrmMain.MDIChildCount <= 0  then
  begin
    if  DMApp.SelecionarEmpresa = 'N' then
      Exit;

    if DmApp.LOCAL_FATURA <> 'C' then
    if DMApp.VerificarCaixa = 'N' then
      Exit ;

    if ((DMApp.TIPO_EMPRESA = 'Padaria') or (DMApp.TIPO_EMPRESA = 'SuperMercado')or (DMApp.TIPO_EMPRESA = 'Restaurante')) And (Uppercase(DmApp.TIPOVENDA) = 'PDV')then
    begin
      if not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPdv', True)) then
        Exit;

      if FrmPdv = Nil then
      begin
        if FrmMain.MDIChildCount > 0 then
            opFechar.OnClick(opFechar);
        Application.ProcessMessages;
        DMPdv  := TDMPdv.Create(Self);
        FrmPdv := TFrmPdv.Create(Self);
        FrmPdv.Showmodal ;

        FrmPdv.Free ;
        FrmPdv := Nil;
      end;
    end
    else
    begin
      if Uppercase(DmApp.TIPOVENDA) = 'VENDA' then
      begin
        if not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmSelVendas', True)) then
          Exit;

        if FrmSelVendas = Nil then
        begin
          if FrmMain.MDIChildCount > 0 then
            opFechar.OnClick(opFechar);
          Application.ProcessMessages;
          FrmSelVendas := TFrmSelVendas.Create(Self);
          FrmSelVendas.Showmodal;
        end;
      end
      else
      begin
        if not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmSelVendasPdv', True)) then
          Exit;

        if FrmSelVendasPdv = Nil then
        begin
          if FrmMain.MDIChildCount > 0 then
            opFechar.OnClick(opFechar);
          Application.ProcessMessages;
          FrmSelVendasPdv := TFrmSelVendasPdv.Create(Self);
          FrmSelVendasPdv.Showmodal ;
        end;
      end;
    end;
  end;
end;

procedure TFrmMain.opVendedoresClick(Sender: TObject);
begin
   if Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCadVendedor2', True)) Then
     Exit;

  if DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  if FrmCadVendedor2 <> Nil Then
  begin
     FrmCadVendedor2.Free      ;
     FrmCadVendedor2 := Nil    ;
  end;

  if FrmCadVendedor2 = Nil Then
  begin
     FrmCadVendedor2 := TFrmCadVendedor2.Create(Self);
     FrmCadVendedor2.ShowMODAL ;
     FrmCadVendedor2.Free      ;
     FrmCadVendedor2 := Nil    ;
  end;
end;

procedure TFrmMain.PendenciasClick(Sender: TObject);
begin
  { * * * * * }
    If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPendencias', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
    Exit;

  If DMApp.VerificarCaixa = 'N' Then
    Exit ;

  { * * * * * }
  If FrmPendencias = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //

       FrmPendencias:= TFrmPendencias.Create(Self);
       //
       FrmPendencias.Showmodal ;
       FrmPendencias.Free      ;
       FrmPendencias := Nil    ;

     End;
end;

procedure TFrmMain.OpTerceirosClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmTerceiros', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmTerceiros = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
//       DMCadastros   := TDMCadastros.Create(Self);
       FrmTerceiros  := TFrmTerceiros.Create(Self);
       //
       FrmTerceiros.FormStyle   := fsMDIChild;
       FrmTerceiros.WindowState := wsMaximized;
       FrmTerceiros.BorderStyle := bsNone;
       PnlClient.Visible          := False;
     End;
end;

procedure TFrmMain.opPerfisClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPerfis', True)) Then
     Exit;

  { * * * * * }
  If FrmPerfis = Nil
  Then Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       DMSeguranca := TDMSeguranca.Create(Self);
       FrmPerfis   := TFrmPerfis.Create(Self);
       //
       FrmPerfis.Showmodal ;
       FrmPerfis.Free      ;
       FrmPerfis := Nil    ;
  End;
end;

Procedure TFrmMain.CaixaLoja;
Begin
  
end;

Procedure TFrmMain.CaixaFrentista ;
Begin
     If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCaixaFrentista', True)) Then
     Exit;

     If DMApp.SelecionarEmpresa = 'N' Then
       Exit;

     If DMApp.VerificarCaixa = 'N' Then
       Exit;
end;

procedure TFrmMain.FaturaVendasClick(Sender: TObject);
begin
  if Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmSelFaturaVendas', True)) then
    Exit;

  if DMApp.SelecionarEmpresa = 'N' then
    Exit;

  if DMApp.VerificarCaixa = 'N' then
    Exit;

  if FrmSelFaturaVendas = Nil then
  begin
    if FrmMain.MDIChildCount > 0 then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;

    FrmSelFaturaVendas := TFrmSelFaturaVendas.Create(Self);
    FrmSelFaturaVendas.Showmodal ;

    FrmSelFaturaVendas.Free ;
    FrmSelFaturaVendas := Nil;
  end;
end;

procedure TFrmMain.opUsuariosClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmUsuarios', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
    Exit;

  { * * * * * }
  If FrmUsuarios = Nil Then
  begin
    if FrmMain.MDIChildCount > 0 then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;

    DMSeguranca := TDMSeguranca.Create(Self);

    DMPlano     := TDMPlano.Create(Self);
    FrmUsuarios := TFrmUsuarios.Create(Self);

    FrmUsuarios.FormStyle   := fsMDIChild;
    FrmUsuarios.WindowState := wsMaximized;
    FrmUsuarios.BorderStyle := bsNone;
    PnlClient.Visible       := False;
  end;
end;

procedure TFrmMain.PdvClick(Sender: TObject);
begin
  if Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmSelVendasPdv', True)) then
    exit;

  if DMApp.SelecionarEmpresa = 'N' then
     exit;

  IF DmApp.LOCAL_FATURA <> 'C'
  THEN BEGIN
       If DMApp.VerificarCaixa = 'N' Then Exit ;
  END;

  { * * * * * }
  If FrmSelVendasPdv = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
//       DMVendas     := TDMVendas.Create(Self);

       FrmSelVendasPdv := TFrmSelVendasPdv.Create(Self);
       //
       FrmSelVendasPdv.Showmodal ;
       FrmSelVendasPdv.Free      ;
       FrmSelVendasPdv := Nil    ;
     End;
end;

procedure TFrmMain.Vendas ;
begin

end;

procedure TFrmMain.LblEmpresaClick(Sender: TObject);
begin
  //
  DMApp.Cnpj         := '';

  LimpaPosicao ;

  Image1.Visible     := False;
  LblEmpresa.Visible := False;

end;

procedure TFrmMain.CadastroCaixaClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCaixas', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmCaixas = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       DMSeguranca := TDMSeguranca.Create(Self);
       DMPlano     := TDMPlano.Create(Self);
       DMCaixa     := TDMCaixa.Create(Self);

       FrmCaixas := TFrmCaixas.Create(Self);
       //
       FrmCaixas.Showmodal ;
       FrmCaixas.Free      ;
       FrmCaixas := Nil    ;
     End;
end;

procedure TFrmMain.relListaPrecosClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelListaPrecos', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelListaPrecos = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelListaPrecos := TFRelListaPrecos.Create(Self);
       FRelListaPrecos.ShowModal;
     End;
end;

procedure TFrmMain.relListaPrecosAZClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelListaPrecosAZ', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelListaPrecosAZ = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelListaPrecosAZ := TFRelListaPrecosAZ.Create(Self);
       FRelListaPrecosAZ.ShowModal;
       FRelListaPrecosAZ.Free;
       FRelListaPrecosAZ := nil;
     End;
end;

procedure TFrmMain.relListaSimplificadaClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;

  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelListaSimp', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FRelListaSimp = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelListaSimp := TFRelListaSimp.Create(Self);
       FRelListaSimp.ShowModal;
     End;
end;

procedure TFrmMain.relFichaFinanceiraFisicaClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelFisicaFin', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelFisicaFin = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelFisicaFin := TFRelFisicaFin.Create(Self);
       FRelFisicaFin.ShowModal;
     End;
end;

procedure TFrmMain.opCotasClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCotasSB', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmCotasSB = Nil
  Then Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
//       DMCadastros := TDMCadastros.Create(Self);
       FrmCotasSB  := TFrmCotasSB.Create(Self);
       //
       FrmCotasSB.Showmodal ;
       FrmCotasSB.Free      ;
       FrmCotasSB := Nil    ;
     End;
end;

procedure TFrmMain.FormShow(Sender: TObject);
var
  VersaoDB, Versao : integer;
  sAux : string;
  TipoEmpresa, Exibe_mod : Variant;
begin
  versao := DMApp.RetornaVersao;
  if (versao = 0) then
    lblVersao.caption := 'Sem Vrs.'
  else
    lblVersao.caption := 'Vrs.: 1.1.'+InttoStr(versao);

  VersaoDB := dmApp.GetDBVersao;
  {if (versao <> VersaoDB) then
  begin
    sAux := 'As versões de base:'+IntToStr(VersaoDB)+' e de excutável:'+InttoStr(Versao)+' são incompatíveis.'+#13+'O programa será fechado. Contate o suporte '+dmApp.QryParceiroPARC_NOME_FANTASIA.asString;
    application.messagebox(Pchar(sAux),'Aviso',MB_ICONERROR + mb_ok);
    application.terminate;
  end;}

  frmsplash.hide;
  frmmain.update;
  neoUpdate.Execute;

  // MONTA O MENU DE ACORDO COM AS OPCOES DO CLIENTE
{  If DmApp.Menu = '1' Then
     Menu1
  Else
     Menu2;}

  If Screen.Width = 640
  then begin
       opAuxilio.Down    := false ;
      // pnlDicas.Visible  := False;
  end
  else begin
       opAuxilio.Down    := true ;
      // pnlDicas.Visible  := true ;
  end;
  //
 // IniciaComponentes ( Self as TForm );
  //
  If (DmApp.UsrPdv = 'S') or (DmApp.UsrBlc = 'S') Then
    opSaidaProdutosClick(Sender);

 dmapp.SetForm;

 lblHint.Style.Font.Color  := clWhite;
 lblHint.Style.Font.Style  := [fsBold];

 lblVersao.Style.Font.Color  := clWhite;
 lblVersao.Style.Font.Style  := [fsBold];

 lblUsuario.Style.Font.Color  := clWhite;
 lblUsuario.Style.Font.Style  := [fsBold];

 lblBase.Style.Font.Color  := clWhite;
 lblBase.Style.Font.Style  := [fsBold];

 
 QryEmpresas.Close;
 QryEmpresas.Open;

 mtbFiltro.Close;
 mtbFiltro.Open;
 mtbFiltro.Edit;
 mtbFiltroCNPJ.value := QryEmpresasCNPJ.value;
 mtbFiltroDATA1.value := Date;
 mtbFiltroDATA2.value := Date - 30;

  GrafEfetuaConsulta(true);
End;

procedure TFrmMain.opMotoristasClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMotoristas', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmMotoristas = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then   
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;

    FrmMotoristas := TFrmMotoristas.Create(Self);
    //
    FrmMotoristas.FormStyle   := fsMDIChild;
    FrmMotoristas.WindowState := wsMaximized;
    FrmMotoristas.BorderStyle := bsNone;
    PnlClient.Visible         := False;
  end;
end;

procedure TFrmMain.opVeiculosClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmVeiculos', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmVeiculos = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
//       DMCadastros := TDMCadastros.Create(Self);
       FrmVeiculos := TFrmVeiculos.Create(Self);
       //
       FrmVeiculos.FormStyle   := fsMDIChild;
       FrmVeiculos.WindowState := wsMaximized;
       FrmVeiculos.BorderStyle := bsNone;
       PnlClient.Visible       := False;
     End;
end;

procedure TFrmMain.opRotasClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmRotas', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmRotas = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
//       DMCadastros := TDMCadastros.Create(Self);
       FrmRotas    := TFrmRotas.Create(Self);
       //
       FrmRotas.FormStyle   := fsMDIChild;
       FrmRotas.WindowState := wsMaximized;
       FrmRotas.BorderStyle := bsNone;
       PnlClient.Visible    := False;
     End;
end;

procedure TFrmMain.opCargasClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCargas', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmCargas = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
//       DMCadastros := TDMCadastros.Create(Self);
       FrmCargas   := TFrmCargas.Create(Self);
       //
       FrmCargas.FormStyle   := fsMDIChild;
       FrmCargas.WindowState := wsMaximized;
       FrmCargas.BorderStyle := bsNone;
       PnlClient.Visible     := False;
     End;
end;

procedure TFrmMain.SerieNfClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmSeries', True)) Then
     Exit;
     
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmSeries = Nil Then
  Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FrmSeries     := TFrmSeries.Create(Self);
       //
       FrmSeries.FormStyle   := fsMDIChild;
       FrmSeries.WindowState := wsMaximized;
       FrmSeries.BorderStyle := bsNone;
       PnlClient.Visible        := False;
       //
       FrmSeries.Show;
     End;
end;

procedure TFrmMain.relClientesAlfClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelClientesAlf', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelClientesAlf = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelClientesAlf := TFRelClientesAlf.Create(Self);
       FRelClientesAlf.ShowModal;
     End;
end;

procedure TFrmMain.RelFornecedoresAlfClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelFornecedoresAlf', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelFornecedoresAlf = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelFornecedoresAlf := TFRelFornecedoresAlf.Create(Self);
       FRelFornecedoresAlf.ShowModal;
     End;
end;

procedure TFrmMain.RelClientesResClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelClientesRes', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelClientesRes = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelClientesRes := TFRelClientesRes.Create(Self);
       FRelClientesRes.ShowModal;
     End;
end;

procedure TFrmMain.RelFornecedoresResClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelFornecedoresRes', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelFornecedoresRes = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelFornecedoresRes := TFRelFornecedoresRes.Create(Self);
       FRelFornecedoresRes.ShowModal;
     End;
end;

procedure TFrmMain.relEntradasClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelEntradas', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelEntradas = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelEntradas := TFRelEntradas.Create(Self);
       FRelEntradas.ShowModal;
     End;
end;

procedure TFrmMain.FechamentoClick(Sender: TObject);
begin
    If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFecharCaixas', True)) Then
     Exit;

    if DMApp.SelecionarEmpresa = 'N' Then
      Exit;

    If DMApp.VerificarCaixa = 'N' Then
      Exit ;

    if FrmFecharCaixas = nil Then
    begin
       If FrmMain.MDIChildCount > 0 Then
         opFechar.OnClick(opFechar);

       Application.ProcessMessages;

       DMCaixa          := TDMCaixa.Create(Self);

       FrmFecharCaixas  := TFrmFecharCaixas.Create(Self);
       FrmFecharCaixas.OpcaoCaixa := 'Aberto' ;
       FrmFecharCaixas.Showmodal ;
       FrmFecharCaixas := Nil    ;
    end;
end;

procedure TFrmMain.Mn2FinanceiroClick(Sender: TObject);
begin
     BarManager.Bars[0].Visible := false ;
     BarManager.Bars[1].Visible := false ;
     BarManager.Bars[2].Visible := true  ;
//     BarManager.Bars[3].Visible := false ;
     BarManager.Bars[4].Visible := false ;
     BarManager.Bars[5].Visible := False ;
     BarManager.Bars[6].Visible := false ;
     BarManager.Bars[7].Visible := false ;
     BarManager.Bars[8].Visible := false ;
     BarManager.Bars[9].Visible := false ;
end;

procedure TFrmMain.VoltarFinanceiroClick(Sender: TObject);
begin
     If FrmMain.MDIChildCount = 0
     then begin
          //MONTA O MENU DE ACORDO COM AS OPCOES DO CLIENTE
          IF DmApp.Menu = '1'
          THEN BEGIN
               Menu1;
          END
          ELSE BEGIN
               Menu2;
          END;
     end;
end;

procedure TFrmMain.mn2sairClick(Sender: TObject);
begin
     Close ;
end;

procedure TFrmMain.Mn2FaturamentoClick(Sender: TObject);
begin
     BarManager.Bars[0].Visible := false ;
     BarManager.Bars[1].Visible := false ;
     BarManager.Bars[2].Visible := false ;
//     BarManager.Bars[3].Visible := false ;
     BarManager.Bars[4].Visible := true  ;
     BarManager.Bars[5].Visible := false ;
     BarManager.Bars[6].Visible := false ;
     BarManager.Bars[7].Visible := false ;
     BarManager.Bars[8].Visible := false ;
     BarManager.Bars[9].Visible := false ;
end;

procedure TFrmMain.dxBarLargeButton1Click(Sender: TObject);
begin
//     dxBarLargeButton1.Enabled  := False ;
     BarManager.Bars[0].Visible := false ;
     BarManager.Bars[1].Visible := false ;
     BarManager.Bars[2].Visible := false ;
//     BarManager.Bars[3].Visible := false ;
     BarManager.Bars[4].Visible := false ;
     BarManager.Bars[5].Visible := true  ;
     BarManager.Bars[6].Visible := false ;
     BarManager.Bars[7].Visible := false ;
     BarManager.Bars[8].Visible := false ;
     BarManager.Bars[9].Visible := false ;
end;

procedure TFrmMain.Mn2RhClick(Sender: TObject);
begin
     BarManager.Bars[0].Visible := false ;
     BarManager.Bars[1].Visible := false ;
     BarManager.Bars[2].Visible := false ;
//     BarManager.Bars[3].Visible := false ;
     BarManager.Bars[4].Visible := false ;
     BarManager.Bars[5].Visible := false ;
     BarManager.Bars[6].Visible := true  ;
     BarManager.Bars[7].Visible := false ;
     BarManager.Bars[8].Visible := false ;
     BarManager.Bars[9].Visible := false ;
end;

procedure TFrmMain.Mn2PessoasClick(Sender: TObject);
begin
     BarManager.Bars[0].Visible := false ;
     BarManager.Bars[1].Visible := false ;
     BarManager.Bars[2].Visible := false ;
//     BarManager.Bars[3].Visible := false ;
     BarManager.Bars[4].Visible := false ;
     BarManager.Bars[5].Visible := false ;
     BarManager.Bars[6].Visible := false ;
     BarManager.Bars[7].Visible := true  ;
     BarManager.Bars[8].Visible := false ;
     BarManager.Bars[9].Visible := false ;
end;

procedure TFrmMain.MontaCargaClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMontaCargas', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmMontaCargas = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //

       FrmMontaCargas   := TFrmMontaCargas.Create(Self);
       //
       FrmMontaCargas.Showmodal ;
     End;
end;

procedure TFrmMain.dxBarLargeButton2Click(Sender: TObject);
begin
     BarManager.Bars[0].Visible := false ;
     BarManager.Bars[1].Visible := false ;
     BarManager.Bars[2].Visible := false ;
//     BarManager.Bars[3].Visible := false ;
     BarManager.Bars[4].Visible := false ;
     BarManager.Bars[5].Visible := false ;
     BarManager.Bars[6].Visible := false ;
     BarManager.Bars[7].Visible := false ;
     BarManager.Bars[8].Visible := true  ;
     BarManager.Bars[9].Visible := false ;
end;

procedure TFrmMain.Mn2BtnAcessibilidadesClick(Sender: TObject);
begin
     BarManager.Bars[0].Visible := false ;
     BarManager.Bars[1].Visible := false ;
     BarManager.Bars[2].Visible := false ;
//     BarManager.Bars[3].Visible := false ;
     BarManager.Bars[4].Visible := false ;
     BarManager.Bars[5].Visible := false ;
     BarManager.Bars[6].Visible := false ;
     BarManager.Bars[7].Visible := false ;
     BarManager.Bars[8].Visible := false ;
     BarManager.Bars[9].Visible := true  ;
end;

procedure TFrmMain.OpClassificacaoClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmClassificacoes', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmClassificacoes = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
//       DMCadastros  := TDMCadastros.Create(Self);

       FrmClassificacoes   := TFrmClassificacoes.Create(Self);
       //
       FrmClassificacoes.FormStyle   := fsMDIChild;
       FrmClassificacoes.WindowState := wsMaximized;
       FrmClassificacoes.BorderStyle := bsNone;
       PnlClient.Visible       := False;
     End;
end;

procedure TFrmMain.relProdutosFornecedorClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelProdutosFor', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelProdutosFor = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelProdutosFor := TFRelProdutosFor.Create(Self);
       FRelProdutosFor.ShowModal;
     End;
end;

procedure TFrmMain.ConsultaProd ;
begin
     { * * * * * }
     If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmConsultaProduto', True)) Then
        Exit;

     { * * * * * }
     If DMApp.SelecionarEmpresa = 'N' Then
        Exit;

     { * * * * * }
     If DMLocalizarProd = Nil
     Then Begin
          //
          Application.ProcessMessages;

          DMLocalizarProd  := TDMLocalizarProd.Create(Self);
          //
          If FrmLocProdutoCadastro_Auto = nil
          then begin
               If DMLocalizarProd.Produtos.Tag = 0
               then begin
                    //ORDENACAO
                    If DMLocalizarProd.Produtos.Active Then
                       DMLocalizarProd.Produtos.Close;

                    DMLocalizarProd.Produtos.ParamByName ('CNPJ').AsString := DmaPP.Cnpj ;

                    DMLocalizarProd.Produtos.Open ;

                    /////ALFABETICA
                    DMLocalizarProd.ProdutosA.ParamByName ('CNPJ').AsString := DmaPP.Cnpj ;

                    DMLocalizarProd.ProdutosA.Open ;

               end ;
               //
               FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Self);
               FrmLocProdutoCadastro_Auto.Showmodal ;
          end
          else
              FrmLocProdutoCadastro_Auto.Showmodal ;
     End
     Else begin

          DMLocalizarProd.Tag := DMLocalizarProd.Tag + 1;

          DMLocalizarProd.Produtos.Tag := DMLocalizarProd.Produtos.Tag + 1;

          If FrmLocProdutoCadastro_Auto = nil
          then begin
               If DMLocalizarProd.Produtos.Tag = 0
               then begin
                    //ORDENACAO
                    If DMLocalizarProd.Produtos.Active Then
                       DMLocalizarProd.Produtos.Close;

                    DMLocalizarProd.Produtos.ParamByName ('CNPJ').AsString := DmaPP.Cnpj ;

                    DMLocalizarProd.Produtos.Open ;

                    /////ALFABETICA
                    DMLocalizarProd.ProdutosA.ParamByName ('CNPJ').AsString := DmaPP.Cnpj ;

                    DMLocalizarProd.ProdutosA.Open ;
               end ;
               //
               FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Self);
               FrmLocProdutoCadastro_Auto.Showmodal ;
          end
          else
              FrmLocProdutoCadastro_Auto.Showmodal ;
     end
end;

procedure TFrmMain.ConsultaProdAuto ;
begin
     { * * * * * }
     If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmLocProdutoCadastro_Auto', True)) Then
        Exit;
     { * * * * * }
     If DMApp.SelecionarEmpresa = 'N' Then
        Exit;
     { * * * * * }
     If DMLocalizarProd = Nil
     Then Begin
          //
          Application.ProcessMessages;

          DMLocalizarProd  := TDMLocalizarProd.Create(Self);
          //
          If FrmLocProdutoCadastro_Auto = nil
          then begin
               If DMLocalizarProd.Produtos.Tag = 0
               then begin
                    //ORDENACAO
                   { If DMLocalizarProd.Produtos.Active Then
                       DMLocalizarProd.Produtos.Close;

                    DMLocalizarProd.Produtos.ParamByName ('CNPJ').AsString := DmaPP.Cnpj ;

                    DMLocalizarProd.Produtos.Open ;

                    /////ALFABETICA
                    DMLocalizarProd.ProdutosA.ParamByName ('CNPJ').AsString := DmaPP.Cnpj ;

                    DMLocalizarProd.ProdutosA.Open ;  }
               end ;
               //
               FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Self);
               FrmLocProdutoCadastro_Auto.Showmodal ;
          end
          else
              FrmLocProdutoCadastro_Auto.Showmodal ;
     End
     Else begin

          DMLocalizarProd.Tag := DMLocalizarProd.Tag + 1;

          DMLocalizarProd.Produtos.Tag := DMLocalizarProd.Produtos.Tag + 1;

          If FrmLocProdutoCadastro_Auto = nil
          then begin
               If DMLocalizarProd.Produtos.Tag = 0
               then begin
                    //ORDENACAO
                 {   If DMLocalizarProd.Produtos.Active Then
                       DMLocalizarProd.Produtos.Close;

                    DMLocalizarProd.Produtos.ParamByName ('CNPJ').AsString := DmaPP.Cnpj ;

                    DMLocalizarProd.Produtos.Open ;

                    /////ALFABETICA
                    DMLocalizarProd.ProdutosA.ParamByName ('CNPJ').AsString := DmaPP.Cnpj ;

                    DMLocalizarProd.ProdutosA.Open ;  }

               end ;
               //
               FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Self);
               FrmLocProdutoCadastro_Auto.Showmodal ;
          end
          else
              FrmLocProdutoCadastro_Auto.Showmodal ;
     end
end;

procedure TFrmMain.ActConsultaProdutoExecute(Sender: TObject);
begin
     If ( FrmMain.MDIChildCount <= 0 ) or ( FrmSelVendas <> Nil ) or ( FrmSelVendasPdv <> Nil )
     then begin
        If DMApp.SelecionarEmpresa = 'N' Then
            Exit;

        If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmLocProdutoCadastro_Auto', True)) Then
             Exit;

        ConsultaProdAuto ;
     end;
end;

procedure TFrmMain.OpConfEtiquetasClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmConfEtiquetas', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmConfEtiquetas = Nil Then
  Begin
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FrmConfEtiquetas := TFrmConfEtiquetas.Create(Self);
       //
       FrmConfEtiquetas.FormStyle   := fsMDIChild;
       FrmConfEtiquetas.WindowState := wsMaximized;
       FrmConfEtiquetas.BorderStyle := bsNone;
       PnlClient.Visible         := False;
  End;
end;

procedure TFrmMain.OpConfBoletoClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmConfigurarBoletos', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmConfigurarBoletos = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
//       DMCadastros           := TDMCadastros.Create(Self);
       FrmConfigurarBoletos  := TFrmConfigurarBoletos.Create(Self);
       //
       FrmConfigurarBoletos.FormStyle   := fsMDIChild;
       FrmConfigurarBoletos.WindowState := wsMaximized;
       FrmConfigurarBoletos.BorderStyle := bsNone;
       PnlClient.Visible        := False;
       //
       FrmConfigurarBoletos.Show;
     End;
end;

procedure TFrmMain.opRelVendasVendClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelVendasVendedor', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  if FRelVendasVendedor = Nil then
  begin
    //
    If FrmMain.MDIChildCount > 0 Then
       opFechar.OnClick(opFechar);
    //
    Application.ProcessMessages;
    //
    FRelVendasVendedor := TFRelVendasVendedor.Create(Self);
    FRelVendasVendedor.ShowModal
  end;
end;

procedure TFrmMain.pnlMensagensResMaximize(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMain', False)) Then
     Abort;
  //
  dsMensagens.DataSet.Close;
  dsMensagensRes.DataSet.Open;
end;

procedure TFrmMain.VendasPeriodoClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelVendasPeriodo', True)) Then
     Exit;

  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  if FRelVendasPeriodo = nil then
  begin
    if FrmMain.MDIChildCount > 0 then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;

    FRelVendasPeriodo := TFRelVendasPeriodo.Create(Self);
    FRelVendasPeriodo.ShowModal;
  end;
end;

procedure TFrmMain.OpRelGraficoVendasClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmGraficoVendas', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
   Exit;

  { * * * * * }
  If FrmGraficoVendas = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);
       //
    Application.ProcessMessages;
       //
    FrmGraficoVendas := TFrmGraficoVendas.Create(Self);
    FrmGraficoVendas.SHOWMODAL ;
  end;
end;

procedure TFrmMain.opMensagemClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMensagem', True)) Then
     Exit;
  If DMApp.SelecionarEmpresa = 'N' Then
  Exit;

  { * * * * * }
  If FrmMensagem = Nil Then
  begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FrmMensagem := TFrmMensagem.Create(Self);
       FrmMensagem.ShowModal;
  end;
end;

procedure TFrmMain.OpGraficoGrupoProdutosClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmGraficoVendasPorGrupo', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmGraficoVendasPorGrupo = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FrmGraficoVendasPorGrupo := TFrmGraficoVendasPorGrupo.Create(Self);

       FrmGraficoVendasPorGrupo.Showmodal ;

       FrmGraficoVendasPorGrupo.Free ;
       FrmGraficoVendasPorGrupo := Nil ;
     End;

end;

procedure TFrmMain.OpVendasVendedorClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmConsultaVendasVend', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmConsultaVendasVend = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FrmConsultaVendasVend := TFrmConsultaVendasVend.Create(Self);
       FrmConsultaVendasVend.FormStyle   := fsMDIChild;
       FrmConsultaVendasVend.WindowState := wsMaximized;
       FrmConsultaVendasVend.BorderStyle := bsNone;
       PnlClient.Visible          := False;
     End;

end;

procedure TFrmMain.CentroCustoClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCCusto', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmCCusto = Nil Then
  Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);

       Application.ProcessMessages;

       FrmCCusto    := TFrmCCusto.Create(Self);
       FrmCCusto.FormStyle   := fsMDIChild;
       FrmCCusto.WindowState := wsMaximized;
       FrmCCusto.BorderStyle := bsNone;
       PnlClient.Visible       := False;
   End;
end;

procedure TFrmMain.opminimomaximoClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelEstoqueMaxMin2', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelEstoqueMaxMin2 = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelEstoqueMaxMin2 := TFRelEstoqueMaxMin2.Create(Self);
       FRelEstoqueMaxMin2.ShowModal;

       FRelEstoqueMaxMin2.Free      ;
       FRelEstoqueMaxMin2 := Nil    ;
     End;
end;

procedure TFrmMain.OpVendasNaturezaClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelVendasNatureza', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelVendasNatureza = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelVendasNatureza := TFRelVendasNatureza.Create(Self);
       FRelVendasNatureza.ShowModal;
     End;
end;

procedure TFrmMain.SaidasCaixaClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCaixaSaidas', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  If DMApp.VerificarCaixa = 'N' Then Exit ;

  { * * * * * }
  If FrmCaixaSaidas = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       DMCaixa     := TDMCaixa.Create(Self);

       FrmCaixaSaidas := TFrmCaixaSaidas.Create(Self);
       //
       FrmCaixaSaidas.Showmodal ;
       FrmCaixaSaidas.Free      ;
       FrmCaixaSaidas := Nil    ;
     End;
end;

procedure TFrmMain.ActPessoasExecute(Sender: TObject);
begin
     If ( FrmMain.MDIChildCount <= 0 )
     then begin
          OpPessoas.OnClick ( OpPessoas );
     end;
end;

procedure TFrmMain.Produtos_AplicacoesClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmProdutos_Aplicacoes', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmProdutos_Aplicacoes = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);

       Application.ProcessMessages;
       FrmProdutos_Aplicacoes := TFrmProdutos_Aplicacoes.Create(Self);
       FrmProdutos_Aplicacoes.FormStyle   := fsMDIChild;
       FrmProdutos_Aplicacoes.WindowState := wsMaximized;
       FrmProdutos_Aplicacoes.BorderStyle := bsNone;
       PnlClient.Visible         := False;
     End;
end;

procedure TFrmMain.OpBxPgrCentroClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFiltraContasPagasCentro', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }

  If FrmFiltraContasPagasCentro = Nil
  Then Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //


       FrmFiltraContasPagasCentro := TFrmFiltraContasPagasCentro.Create(Self);

       FrmFiltraContasPagasCentro.Showmodal  ;
       FrmFiltraContasPagasCentro.Free   ;
       FrmFiltraContasPagasCentro := Nil ;



     End;
end;

procedure TFrmMain.OpTiposVeiculosClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmTipo_Veiculos', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmTipo_Veiculos = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
//       DMCadastros  := TDMCadastros.Create(Self);

       FrmTipo_Veiculos := TFrmTipo_Veiculos.Create(Self);
       //
       FrmTipo_Veiculos.FormStyle   := fsMDIChild;
       FrmTipo_Veiculos.WindowState := wsMaximized;
       FrmTipo_Veiculos.BorderStyle := bsNone;
       PnlClient.Visible       := False;
     End;
end;

procedure TFrmMain.OpMacaVeiculosClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMarcas_Veiculos', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmMarcas_Veiculos = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
//       DMCadastros  := TDMCadastros.Create(Self);

       FrmMarcas_Veiculos := TFrmMarcas_Veiculos.Create(Self);
       //
       FrmMarcas_Veiculos.FormStyle   := fsMDIChild;
       FrmMarcas_Veiculos.WindowState := wsMaximized;
       FrmMarcas_Veiculos.BorderStyle := bsNone;
       PnlClient.Visible       := False;
     End;
end;

procedure TFrmMain.DuplicatasClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmConfigurarDuplicatas', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmConfigurarDuplicatas = Nil Then
  Begin

    If FrmMain.MDIChildCount > 0 Then
       opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    FrmConfigurarDuplicatas  := TFrmConfigurarDuplicatas.Create(Self);

    FrmConfigurarDuplicatas.FormStyle   := fsMDIChild;
    FrmConfigurarDuplicatas.WindowState := wsMaximized;
    FrmConfigurarDuplicatas.BorderStyle := bsNone;
    PnlClient.Visible := False;
    FrmConfigurarDuplicatas.Show;
  end;
end;

procedure TFrmMain.ConsultaConvenioClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmConsultaConvenio', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmConsultaConvenio = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;


       FrmConsultaConvenio := TFrmConsultaConvenio.Create(Self);
       //
       FrmConsultaConvenio.Showmodal ;
       FrmConsultaConvenio.Free      ;
       FrmConsultaConvenio := Nil    ;
     End;
end;

procedure TFrmMain.OpCotacoesClick(Sender: TObject);
begin
     { * * * * * }
     If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmSelCotacoes', True)) Then
     Exit;

     { * * * * * }
     If  DMApp.SelecionarEmpresa = 'N' Then
     Exit;

     { * * * * * }
     If FrmSelCotacoes = Nil Then
     Begin
       If FrmMain.MDIChildCount > 0 Then
         opFechar.OnClick(opFechar);

       Application.ProcessMessages;

       FrmSelCotacoes := TFrmSelCotacoes.Create(Self);
       FrmSelCotacoes.SHowmodal;
       FrmSelCotacoes.Free;
       FrmSelCotacoes := Nil;
     end;
end;

procedure TFrmMain.OpDuplicatasRecClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;

  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'fRelReceber2', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  If DMApp.VerificarCaixa = 'N' Then Exit ;

  { * * * * * }
  If fRelReceber2 = Nil Then
  Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       fRelReceber2 := TfRelReceber2.Create(Self);
       fRelReceber2.ShowModal;
  End;
end;

procedure TFrmMain.ActExcluirMensagemExecute(Sender: TObject);
begin
     {if FrmMain.ActiveControl = gridMensagens
     then begin
          If messageDlg('Deseja Excluir Esta Mensagem?', MtConfirmation, [MbOk, MbCancel], 0 ) = MrOk
          then
              DmApp.Excluir_Mensagem ( dsMensagens.DataSet.FieldByName('CODIGO').AsInteger, dsMensagens.DataSet.FieldByName('ANO').AsInteger );

          gridMensagens.SetFocus ;
     end;

     if FrmMain.ActiveControl = gridMensagemRes
     then begin
          If messageDlg('Deseja Excluir Esta Mensagem?', MtConfirmation, [MbOk, MbCancel], 0) = MrOk
          then
              DmApp.Excluir_Mensagem ( dsMensagensRes.DataSet.FieldByName('CODIGO').AsInteger, dsMensagensRes.DataSet.FieldByName('ANO').AsInteger );

          gridMensagemRes.SetFocus ;
     end; }
end;

procedure TFrmMain.BackupClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmConfiguradorBck', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmConfiguradorBck = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FrmConfiguradorBck    := TFrmConfiguradorBck.Create(Self);
       FrmConfiguradorBck.ShowModal;
       FrmConfiguradorBck.Free ;
       FrmConfiguradorBck := Nil ;
     End;
end;

procedure TFrmMain.OpBairrosClick(Sender: TObject);
begin
  if Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCadBairros', True)) Then
     Exit;

  if DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  if FrmCadBairros = Nil Then
  begin
     FrmCadBairros := TFrmCadBairros.Create(Self);
     FrmCadBairros.ShowMODAL ;
     FrmCadBairros.Free      ;
     FrmCadBairros := Nil    ;
  end;
end;

procedure TFrmMain.OpCidadesClick(Sender: TObject);
begin
  if Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCadCidades', True)) Then
     Exit;

  if DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  if FrmCadCidades = Nil Then
  begin
     FrmCadCidades := TFrmCadCidades.Create(Self);
     FrmCadCidades.ShowMODAL ;
     FrmCadCidades.Free      ;
     FrmCadCidades := Nil    ;
  end;
end;

procedure TFrmMain.OpLogradourosClick(Sender: TObject);
begin
  if Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCadLogradouro', True)) Then
     Exit;

  if DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  if FrmCadLogradouro = Nil Then
  begin
     Application.ProcessMessages;
     FrmCadLogradouro := TFrmCadLogradouro.Create(Self);
     FrmCadLogradouro.ShowMODAL ;
     FrmCadLogradouro.Free      ;
     FrmCadLogradouro := Nil    ;
  end;

  
end;

procedure TFrmMain.OpCalculadoraClick(Sender: TObject);
begin
     calculadora ;
end;

procedure TFrmMain.Calculadora1Click(Sender: TObject);
begin
     calculadora ;
end;

procedure TFrmMain.OpCaixa_FrentistaClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCaixaFrentista', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  If DMApp.VerificarCaixa = 'N' Then Exit ;

  { * * * * * }
  {If FrmCaixaFrentista = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
//       DMCadastros  := TDMCadastros.Create(Self);

       DMCaixaFrentista := TDMCaixaFrentista.Create(Self);

       //Cria o Formulario de Localizar Cliente
       Application.CreateForm(TFrmCaixaFrentista, FrmCaixaFrentista) ;

       FrmCaixaFrentista := TFrmCaixaFrentista.Create(Self);
       FrmCaixaFrentista.Showmodal ;
       //
     End;}
end;

procedure TFrmMain.AdministradorasClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'Frmdministradoras', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmAdministradoras = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //

       FrmAdministradoras   := TFrmAdministradoras.Create(Self);
       //
       FrmAdministradoras.FormStyle   := fsMDIChild;
       FrmAdministradoras.WindowState := wsMaximized;
       FrmAdministradoras.BorderStyle := bsNone;
       PnlClient.Visible       := False;
     End;
end;

procedure TFrmMain.OpCadChequeClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCheque_Pre', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
  If DMApp.VerificarCaixa = 'N' Then Exit ;

  { * * * * * }
  If FrmCheque_Pre = Nil Then
  Begin
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);

       Application.ProcessMessages;
       //Cria o Formulario de Localizar Cliente
       Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;

       FrmCheque_Pre := TFrmCheque_Pre.Create(Self);
       FrmCheque_Pre.Showmodal ;
       FrmCheque_Pre.Free      ;
       FrmCheque_Pre := Nil    ;
  End;
end;

procedure TFrmMain.OpRelChequesClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelCheque', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelCheque = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelCheque   := TFRelCheque.Create(Self);
       FRelCheque.ShowModal;
     End;
end;

procedure TFrmMain.opKardexClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelKardex', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelKardex = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelKardex   := TFRelKardex.Create(Self);
       FRelKardex.ShowModal;
     End;
end;

procedure TFrmMain.OpMoedasClick(Sender: TObject);
begin
  if Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCadMoedas', True)) Then
     Exit;

  if DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  if FrmCadMoedas = Nil Then
  begin
     FrmCadMoedas := TFrmCadMoedas.Create(Self);
     FrmCadMoedas.ShowMODAL ;
     FrmCadMoedas.Free      ;
     FrmCadMoedas := Nil    ;
  end;
end;

procedure TFrmMain.OpEstadosClick(Sender: TObject);
begin
  if Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCadEstados', True)) Then
     Exit;

  if DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  if FrmCadEstados = Nil Then
  begin
     FrmCadEstados := TFrmCadEstados.Create(Self);
     FrmCadEstados.ShowMODAL ;
     FrmCadEstados.Free      ;
     FrmCadEstados := Nil    ;
  end;
end;

procedure TFrmMain.OpConfPromissoriaClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmConfigurarNotaPromissoria', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmConfigurarNotaPromissoria = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FrmConfigurarNotaPromissoria  := TFrmConfigurarNotaPromissoria.Create(Self);
       //
       FrmConfigurarNotaPromissoria.FormStyle   := fsMDIChild;
       FrmConfigurarNotaPromissoria.WindowState := wsMaximized;
       FrmConfigurarNotaPromissoria.BorderStyle := bsNone;
       PnlClient.Visible        := False;
       //
       FrmConfigurarNotaPromissoria.Show;
     End;
end;

procedure TFrmMain.OpVendasFiscaisClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelSaidas', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FRelSaidas = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    FRelSaidas := TFRelSaidas.Create(Self);
    FRelSaidas.ShowModal;
  end;
end;

procedure TFrmMain.OpPosicaoEstoqueContagemClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelPosicaoEstoqueContagem', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelPosicaoEstoqueContagem = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelPosicaoEstoqueContagem := TFRelPosicaoEstoqueContagem.Create(Self);
       FRelPosicaoEstoqueContagem.ShowModal;
     End;
end;

procedure TFrmMain.OpVendasMaioresClientesClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelVendasMaioresCliente', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
  If FRelVendasMaioresCliente = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelVendasMaioresCliente := TFRelVendasMaioresCliente.Create(Self);
       FRelVendasMaioresCliente.ShowModal;
     End;
end;

procedure TFrmMain.OpChequeCtbClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCheques_Ctb', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmCheques_Ctb = Nil
  Then Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);        

       Application.ProcessMessages;
       //Cria o Formulario de Localizar Cliente
       Application.CreateForm(TFrm_Localizar_Fornecedor, Frm_Localizar_Fornecedor) ;
       DMPlano := TDMPlano.Create(Self);
       FrmCheques_Ctb := TFrmCheques_Ctb.Create(Self);
       FrmCheques_Ctb.Showmodal ;
       FrmCheques_Ctb.Free;
       FrmCheques_Ctb := Nil;
     End;
end;

procedure TFrmMain.OpMotivoDevClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMotivos_Devolucao', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmMotivos_Devolucao = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;

       FrmMotivos_Devolucao   := TFrmMotivos_Devolucao.Create(Self);
       //
       FrmMotivos_Devolucao.FormStyle   := fsMDIChild;
       FrmMotivos_Devolucao.WindowState := wsMaximized;
       FrmMotivos_Devolucao.BorderStyle := bsNone;
       PnlClient.Visible       := False;
     End;
end;

procedure TFrmMain.OpManutencaoChequesClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmSelFinCheques', True)) Then Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
  If DMApp.VerificarCaixa = 'N' Then Exit ;

  { * * * * * }
  If FrmSelFinCheques = Nil Then
  begin
    //
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);
       //
    Application.ProcessMessages;
    //
    FrmSelFinCheques := TFrmSelFinCheques.Create(Self);
    FrmSelFinCheques.Showmodal ;
    FrmSelFinCheques.Free   ;
    FrmSelFinCheques := Nil ;
  end;
end;

procedure TFrmMain.OpComissoesVendedoresClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelComissoesVendedor', True)) Then
     Exit;       

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
  If FRelComissoesVendedor = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelComissoesVendedor := TFRelComissoesVendedor.Create(Self);
       FRelComissoesVendedor.ShowModal;
     End;
end;

procedure TFrmMain.OpTransportadorasClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmTransportadoras', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmTransportadoras = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
//       DMCadastros := TDMCadastros.Create(Self);
       FrmTransportadoras   := TFrmTransportadoras.Create(Self);
       //
       FrmTransportadoras.FormStyle   := fsMDIChild;
       FrmTransportadoras.WindowState := wsMaximized;
       FrmTransportadoras.BorderStyle := bsNone;
       PnlClient.Visible     := False;
     End;
end;

procedure TFrmMain.ActTrocasExecute(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmSelTrocas', True)) Then Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  IF DmApp.LOCAL_FATURA_TROCA <> 'C' THEN
  BEGIN
       If DMApp.VerificarCaixa = 'N' Then Exit ;
  END;

  { * * * * * }
  If FrmSelTrocas = Nil
  Then Begin
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       Application.ProcessMessages;

       FrmSelTrocas := TFrmSelTrocas.Create(Self);
       FrmSelTrocas.Showmodal ;
       FrmSelTrocas.Free   ;
       FrmSelTrocas := Nil ;
  End;
end;

procedure TFrmMain.OpCaixasFechadosClick(Sender: TObject);
begin
     If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFecharCaixas', True)) Then
     Exit;

     If DMApp.SelecionarEmpresa = 'N' Then Exit;



     If DMApp.VerificarCaixaFechado = 'N' Then Exit ;

     If FrmFecharCaixas = Nil Then
     Begin
         If FrmMain.MDIChildCount > 0 Then
         opFechar.OnClick(opFechar);

         Application.ProcessMessages;

         DMCaixa          := TDMCaixa.Create(Self);

         FrmFecharCaixas  := TFrmFecharCaixas.Create(Self);

         FrmFecharCaixas.OpcaoCaixa := 'Fechado' ;

         FrmFecharCaixas.Showmodal ;
         FrmFecharCaixas := Nil    ;
     End;
end;

procedure TFrmMain.OpCotasRelClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelCotasVendedor', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;
  
  { * * * * * }
  If FRelCotasVendedor = Nil
  Then Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelCotasVendedor := TFRelCotasVendedor.Create(Self);
       FRelCotasVendedor.ShowModal
  End;
end;

procedure TFrmMain.OpServicosClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmServicos', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
  If FrmServicos = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;

       FrmServicos.FormStyle   := fsMDIChild;
       FrmServicos.WindowState := wsMaximized;
       FrmServicos.BorderStyle := bsNone;
       PnlClient.Visible        := False;
       //
       FrmServicos.Show;
     End;
end;

procedure TFrmMain.OpMotoresClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;

  if dmapp.TIPO_EMPRESA = 'Pecas'
  then begin
       { * * * * * }
       If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMotores', True))
       Then
           Exit;
  end
  else begin
       { * * * * * }
       If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMotores', True)) Then
           Exit;
  end;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
  If FrmMotores = Nil Then
  begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FrmMotores   := TFrmMotores.Create(Self);
       //
       FrmMotores.FormStyle   := fsMDIChild;
       FrmMotores.WindowState := wsMaximized;
       FrmMotores.BorderStyle := bsNone;
       PnlClient.Visible        := False;
       //
       FrmMotores.Show;
  end;
end;

procedure TFrmMain.OpMecanicosClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMecanicos', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  if FrmMecanicos = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;


    FrmMecanicos := TFrmMecanicos.Create(Self);

    FrmMecanicos.FormStyle   := fsMDIChild;
    FrmMecanicos.WindowState := wsMaximized;
    FrmMecanicos.BorderStyle := bsNone;
    PnlClient.Visible           := False;
  end;
end;

procedure TFrmMain.OpPosEstSubClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelPosicaoEstoqueContagemSub', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelPosicaoEstoqueContagemSub = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelPosicaoEstoqueContagemSub := TFRelPosicaoEstoqueContagemSub.Create(Self);
       FRelPosicaoEstoqueContagemSub.ShowModal;
     End;
end;

procedure TFrmMain.OpTabelaExternaClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmTabelaExterna', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmTabelaExterna = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //

       FrmTabelaExterna := TFrmTabelaExterna.Create(Self);
       FrmTabelaExterna.ShowModal;
     End;
end;

procedure TFrmMain.OpProdutosAliquotaClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelProdutosAliq', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelProdutosAliq = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelProdutosAliq := TFRelProdutosAliq.Create(Self);
       FRelProdutosAliq.ShowModal;
     End;
end;

procedure TFrmMain.OpRelPessoasConvenioClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelClientesConv', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelClientesConv = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelClientesConv := TFRelClientesConv.Create(Self);
       FRelClientesConv.ShowModal;
     End;
end;

procedure TFrmMain.OpExportaClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMigraDados', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmMigraDados = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FrmMigraDados := TFrmMigraDados.Create(Self);
       FrmMigraDados.showmodal;

       FrmMigraDados.FREE   ;
       FrmMigraDados := Nil ;
     End;
end;

procedure TFrmMain.OpRelVendasGrupProdClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelVendasGrupos', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FRelVendasGrupos = Nil
  Then Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelVendasGrupos := TFRelVendasGrupos.Create(Self);
       FRelVendasGrupos.ShowModal
     End;
end;

procedure TFrmMain.OpVendasAnaliticoClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelVendasAnalitico', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelVendasAnalitico = Nil
  Then Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelVendasAnalitico := TFRelVendasAnalitico.Create(Self);
       FRelVendasAnalitico.ShowModal;
     End;
end;

procedure TFrmMain.OpVendasCanceladasClick(Sender: TObject);
begin
     If FrmMain.MDIChildCount <= 0
     then begin
          { * * * * * }
          If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmSelVendasCanceladas', True)) Then
          Exit;

          { * * * * * }
          If DMApp.SelecionarEmpresa = 'N' Then Exit;

          { * * * * * }
          If FrmSelVendasCanceladas = Nil Then
          Begin
               //
               If FrmMain.MDIChildCount > 0 Then
               opFechar.OnClick(opFechar);
               //
               Application.ProcessMessages;
               FrmSelVendasCanceladas := TFrmSelVendasCanceladas.Create(Self);

               FrmSelVendasCanceladas.Showmodal ;

               FrmSelVendasCanceladas.Free   ;
               FrmSelVendasCanceladas := Nil ;
          End;
     end;
end;

procedure TFrmMain.OpRelVendasCanceladasClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelVendasCanceladas', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelVendasCanceladas = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelVendasCanceladas := TFRelVendasCanceladas.Create(Self);
       FRelVendasCanceladas.ShowModal;
     End;
end;

procedure TFrmMain.OpConsultaVendaIndicadosClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmConsultaVendasIndicados', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmConsultaVendasIndicados = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //

       FrmConsultaVendasIndicados := TFrmConsultaVendasIndicados.Create(Self);
       FrmConsultaVendasIndicados.Showmodal ;
       FrmConsultaVendasIndicados.Free      ;

     End;
end;

procedure TFrmMain.OptExtornaCaixaClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmExtornaCaixa', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  If DMApp.VerificarCaixaFechado = 'N' Then Exit ;

  { * * * * * }
  If FrmExtornaCaixa = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FrmExtornaCaixa := TFrmExtornaCaixa.Create(Self);
       FrmExtornaCaixa.Showmodal ;
       FrmExtornaCaixa.Free      ;   
     End;
end;

procedure TFrmMain.OpConsultaFatBaixadasClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmConsultaFaturasPagas', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmConsultaFaturasPagas = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;


       FrmConsultaFaturasPagas := TFrmConsultaFaturasPagas.Create(Self);
       //
       FrmConsultaFaturasPagas.Showmodal ;
       FrmConsultaFaturasPagas.Free      ;
       FrmConsultaFaturasPagas := Nil    ;
     End;
end;

procedure TFrmMain.OpAcompanhamentoClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelVendasAcompanhamento', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelVendasAcompanhamento = Nil
  Then Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelVendasAcompanhamento := TFRelVendasAcompanhamento.Create(Self);
       FRelVendasAcompanhamento.ShowModal;
       FRelVendasAcompanhamento.Free     ;
       FRelVendasAcompanhamento := Nil   ; 
     End;
end;

procedure TFrmMain.OpClienteChequeClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelClienteCheque', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelClienteCheque = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelClienteCheque := TFRelClienteCheque.Create(Self);
       FRelClienteCheque.ShowModal;
     End;
end;

procedure TFrmMain.OpMalaDiretaClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMalaDireta', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
  If FrmMalaDireta = Nil Then
     Begin
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //

       FrmMalaDireta := TFrmMalaDireta.Create(Self);

       FrmMalaDireta.Showmodal;

       FrmMalaDireta.Free;
       FrmMalaDireta := Nil;
     End;
end;

procedure TFrmMain.gridMensagensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
    Remetente, Destinatario, Assunto, Mensagem, Reservado: String;
    Dt_Envio: TDateTime;
begin
     If key = 13
     then begin
          Repeat
                Mensagem := Inputbox (Assunto, 'Resp', '' );

                If Trim( Mensagem ) = ''
                then
                    Showmessage('Digite uma Resposta Válida!');

          until trim( mensagem ) <> '' ;

          Remetente    := DMMensagem.MensagensDESTINATARIO.value ;
          Destinatario := DMMensagem.MensagensREMETENTE.value    ;
          Assunto      := DMMensagem.MensagensASSUNTO.Value      ;
          Reservado    := 'S'                                    ;
          Dt_Envio     := DmApp.Data_Servidor                    ;

          If TRIM( Mensagem ) <> ''
          then
              DmaPP.Responder_Mensagem ( Remetente, Destinatario, Reservado, Assunto, Mensagem,Dt_Envio);
     end;
end;

procedure TFrmMain.OpRelTrocasClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelTrocasCliente', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
  If FRelTrocasCliente = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelTrocasCliente := TFRelTrocasCliente.Create(Self);
       FRelTrocasCliente.ShowModal;
     End;
end;

procedure TFrmMain.TrayIconDblClick(Sender: TObject);
begin
  Application.Restore;
  Application.BringToFront;
end;

procedure TFrmMain.AppEventsActivate(Sender: TObject);
begin
{$IFNDEF WIN32}
  if Screen.ActiveForm <> nil then Screen.ActiveForm.BringToFront;
{$ENDIF}
end;

procedure TFrmMain.AppEventsMinimize(Sender: TObject);
begin
{$IFDEF WIN32}
  if NewStyleControls then ShowWindow(Application.Handle, SW_HIDE);
{$ENDIF}
end;

procedure TFrmMain.AppEventsRestore(Sender: TObject);
begin
{$IFDEF WIN32}
  if NewStyleControls then ShowWindow(Application.Handle, SW_SHOW);
{$ENDIF}
end;

procedure TFrmMain.AppEventsHint(Sender: TObject);
begin
  LblHint.Caption := Application.Hint;
end;

procedure TFrmMain.OpVendasMarcaClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelVendasMarcas', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
  If FRelVendasMarcas = Nil
  Then Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelVendasMarcas := TFRelVendasMarcas.Create(Self);
       FRelVendasMarcas.ShowModal
     End;
end;

procedure TFrmMain.OpConfiguraPerfilClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmConfigurarPerfil', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmConfigurarPerfil = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FrmConfigurarPerfil := TFrmConfigurarPerfil.Create(Self);
       //
       FrmConfigurarPerfil.Showmodal ;
       FrmConfigurarPerfil.Free      ;
       FrmConfigurarPerfil := Nil    ;
     End;
end;

procedure TFrmMain.OpMotivosClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMotivosCobranca', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
  If FrmMotivosCobranca = Nil Then
  begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;

       //Cria o Formulario de Localizar Cliente
       Application.CreateForm(TFrmMotivosCobranca, FrmMotivosCobranca) ;
       FrmMotivosCobranca  := TFrmMotivosCobranca.Create(Self);

       FrmMotivosCobranca.Showmodal ;
       FrmMotivosCobranca.Free      ;
       FrmMotivosCobranca := Nil    ;
  end;
end;

procedure TFrmMain.OpManutencaoCobrancaClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmManutencaoCobranca', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmManutencaoCobranca = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;

       FrmManutencaoCobranca := TFrmManutencaoCobranca.Create(Self);
       FrmManutencaoCobranca.Showmodal ;
       FrmManutencaoCobranca.Free   ;
       FrmManutencaoCobranca := Nil ;
     End;
end;

procedure TFrmMain.OpListagemCobrancaClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmListagemCobranca', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmListagemCobranca = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FrmListagemCobranca := TFrmListagemCobranca.Create(Self);
       FrmListagemCobranca.Showmodal ;
       FrmListagemCobranca.Free   ;
       FrmListagemCobranca := Nil ;
     End;
end;

procedure TFrmMain.AberturaCaixaClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmAberturaCaixas', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmAberturaCaixas = Nil Then
  Begin
       //
     If FrmMain.MDIChildCount > 0 Then
        opFechar.OnClick(opFechar);
     //
     Application.ProcessMessages;
     //
     DMSeguranca := TDMSeguranca.Create(Self);
     DMPlano     := TDMPlano.Create(Self);
     DMCaixa     := TDMCaixa.Create(Self);

     FrmAberturaCaixas := TFrmAberturaCaixas.Create(Self);
     //
     FrmAberturaCaixas.Showmodal ;
     FrmAberturaCaixas.Free      ;
     FrmAberturaCaixas := Nil    ;
  end;
end;

procedure TFrmMain.OpCorClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCores', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmCores = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
//       DMCadastros := TDMCadastros.Create(Self);
       FrmCores    := TFrmCores.Create(Self);
       //
       FrmCores.Showmodal ;
       FrmCores.Free      ;
       FrmCores := Nil    ;
     End;
end;

procedure TFrmMain.OpMaterialClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMateriais', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmMateriais = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       FrmMateriais    := TFrmMateriais.Create(Self);

       FrmMateriais.Showmodal ;
       FrmMateriais.Free      ;
       FrmMateriais := Nil ;
     End;
end;

procedure TFrmMain.RelogioTimer(Sender: TObject);
begin
     If FrmVendasPdv <> Nil Then
     Begin
        FrmVendasPdv.LblHora.Caption := TimeToStr( Time );
     end;

     FrmMain.Caption := 'HelpStore     ' +  datetimetostr ( now );
end;

procedure TFrmMain.OpConfRelClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCtbConfRel', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmCtbConfRel = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       DMPlano := TDMPlano.Create(Self);

       FrmCtbConfRel := TFrmCtbConfRel.Create(Self);
       //
       FrmCtbConfRel.FormStyle   := fsMDIChild;
       FrmCtbConfRel.WindowState := wsMaximized;
       FrmCtbConfRel.BorderStyle := bsNone;
       PnlClient.Visible        := False;
       //
       FrmCtbConfRel.Show;
     End;
end;

procedure TFrmMain.OpCobradorClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCobrador', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
  If FrmCobrador = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       //Cria o Formulario de Localizar Cliente
       Application.CreateForm(TFrmCobrador, FrmCobrador) ;


       FrmCobrador := TFrmCobrador.Create(Self);
       //
       FrmCobrador.Showmodal ;
       FrmCobrador.Free      ;
       FrmCobrador := Nil    ;
     End;
end;

procedure TFrmMain.OpConfiguracaoCtbClick(Sender: TObject);
begin
  { * * * * * }
  IF Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCfgCtb', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmCfgCtb = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       DMPlano       := TDMPlano.Create(Self);

       FrmCfgCtb     := TFrmCfgCtb.Create(Self);

       //
       FrmCfgCtb.Showmodal ;
       FrmCfgCtb.Free      ;
       FrmCfgCtb := Nil    ;
       //
     End;
end;

procedure TFrmMain.OpPerfilGradeClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPerfil_Grades', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmPerfil_Grades = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
//       DMCadastros       := TDMCadastros.Create(Self);
       FrmPerfil_Grades  := TFrmPerfil_Grades.Create(Self);
       //
       FrmPerfil_Grades.Showmodal ;
       FrmPerfil_Grades.Free      ;
       FrmPerfil_Grades := Nil    ;
     End;
end;

procedure TFrmMain.OpPromocaoClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPromocao', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmPromocao = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //


       FrmPromocao := TFrmPromocao.Create(Self);

       //
       FrmPromocao.ShowModal ;
       FrmPromocao.Free      ;
       FrmPromocao := Nil    ;
       //
     End;
end;

procedure TFrmMain.OpHistoricoClick(Sender: TObject);
begin
  { * * * * * }
    If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmHistorico', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmHistorico = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       DMHISTORICO   := TDMHISTORICO.Create(Self);

       FrmHistorico  := TFrmHistorico.Create(Self);
       //
       FrmHistorico.Showmodal ;
       FrmHistorico.Free      ;
       FrmHistorico := Nil    ;
     End;
end;

procedure TFrmMain.OpChequesDevolvidosClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelChequeDevolvido', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelChequeDevolvido = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelChequeDevolvido := TFRelChequeDevolvido.Create(Self);
       FRelChequeDevolvido.ShowModal;
     End;
end;

procedure TFrmMain.OpTransferirCadastrosClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmTransfereCadastros', True)) Then
    Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
    Exit;

  { * * * * * }
  If FrmTransfereCadastros = Nil Then
  Begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;


    FrmTransfereCadastros := TFrmTransfereCadastros.Create(Self);

    FrmTransfereCadastros.SHOWMODAL ;
    FrmTransfereCadastros.FREE      ;
    FrmTransfereCadastros := Nil    ;
  end;
end;

procedure TFrmMain.OpCartaoClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelCartao', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
  If FRelCartao = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelCartao   := TFRelCartao.Create(Self);
       FRelCartao.ShowModal;
     End;
end;

procedure TFrmMain.OpCartoesReembolsoClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelCartaoReemb', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
  If FRelCartaoReemb = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelCartaoReemb   := TFRelCartaoReemb.Create(Self);
       FRelCartaoReemb.ShowModal;
     End;
end;

procedure TFrmMain.OpBaixasFaturasFatClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelRecebidasAlfabeticoFat', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }

  If FRelRecebidasAlfabeticoFat = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelRecebidasAlfabeticoFat := TFRelRecebidasAlfabeticoFat.Create(Self);

       FRelRecebidasAlfabeticoFat.Showmodal ;

       FRelRecebidasAlfabeticoFat.Free      ;
       FRelRecebidasAlfabeticoFat := Nil    ;


     End;
end;

procedure TFrmMain.OpMovtoCartaoClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMovto_Cartao', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  If DMApp.VerificarCaixa = 'N' Then Exit ;

  { * * * * * }
  If FrmMovto_Cartao = Nil Then
  Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //

       //Cria o Formulario de Localizar Cliente
       Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;

       //Cria o Formulario de Localizar Cliente
       Application.CreateForm(TFrmMovto_Cartao, FrmMovto_Cartao) ;

       //
       FrmMovto_Cartao.Showmodal ;

       FrmMovto_Cartao.Free      ;
       FrmMovto_Cartao := Nil    ;
     End;
end;

procedure TFrmMain.OpExportaMgv5Click(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then Exit;
  
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMigraDadosToledo', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmMigraDadosToledo = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FrmMigraDadosToledo := TFrmMigraDadosToledo.Create(Self);
       FrmMigraDadosToledo.showmodal ;

       FrmMigraDadosToledo.FREE ;
       FrmMigraDadosToledo := NIL ;
     End;
end;

procedure TFrmMain.OpAgendamentosCobrancasClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmVerAgend_Cobr_Periodo', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmVerAgend_Cobr_Periodo = Nil Then
     Begin

         If FrmMain.MDIChildCount > 0 Then
            opFechar.OnClick(opFechar);

         Application.ProcessMessages;

         FrmVerAgend_Cobr_Periodo := TFrmVerAgend_Cobr_Periodo.Create(Self);

         FrmVerAgend_Cobr_Periodo.Showmodal ;

         FrmVerAgend_Cobr_Periodo.Free   ;
         FrmVerAgend_Cobr_Periodo := Nil ;
     End;
end;

procedure TFrmMain.OpChequesAcertadosClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelChequesAcertados', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelChequesAcertados = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelChequesAcertados := TFRelChequesAcertados.Create(Self);
       FRelChequesAcertados.ShowModal;
     End;
end;

procedure TFrmMain.OpListaIndeadaClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelListaPrecosIndexada', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelListaPrecosIndexada = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelListaPrecosIndexada := TFRelListaPrecosIndexada.Create(Self);
       FRelListaPrecosIndexada.ShowModal;
     End;
end;

procedure TFrmMain.OpManutencao_CartaoClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMamutencao_Cartao', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  If DMApp.VerificarCaixa = 'N' Then Exit ;

  { * * * * * }
  If FrmMamutencao_Cartao = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       //Cria o Formulario de Localizar Cliente
       Application.CreateForm(TFrmMamutencao_Cartao, FrmMamutencao_Cartao) ;

       //
       FrmMamutencao_Cartao.Showmodal ;

       FrmMamutencao_Cartao.Free      ;
       FrmMamutencao_Cartao := Nil    ;
     End;
end;

procedure TFrmMain.OpGarantiasClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmSelgarantias', True)) Then Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  IF DmApp.LOCAL_FATURA <> 'C'
  THEN BEGIN
       If DMApp.VerificarCaixa = 'N' Then Exit ;
  END;

  { * * * * * }
  If FrmSelgarantias = Nil
  Then Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //

       FrmSelgarantias   := TFrmSelgarantias.Create(Self);
       FrmSelgarantias.Showmodal ;
       FrmSelgarantias.Free   ;
       FrmSelgarantias := Nil ;
  End;
end;

procedure TFrmMain.OpEtiquetasGradeClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmEtqProdutoGrade', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
  If FrmEtqProdutoGrade = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);  
       //
       Application.ProcessMessages;
       //
       FrmEtqProdutoGrade := TFrmEtqProdutoGrade.Create(Self);
       //
       FrmEtqProdutoGrade.Showmodal ;
       FrmEtqProdutoGrade.Free;
       FrmEtqProdutoGrade := NiL;
     End;
end;

procedure TFrmMain.OpResumoComissoesClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFiltraResumoComissoes', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;
  { * * * * * }


  If FrmFiltraResumoComissoes = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       DMCaixa := TDMCaixa.Create(Self);

       FrmFiltraResumoComissoes := TFrmFiltraResumoComissoes.Create(Self);

       FrmFiltraResumoComissoes.SHOWMODAL ;

       FrmFiltraResumoComissoes.free   ;

       FrmFiltraResumoComissoes := Nil ;

       DMCaixa.Free   ;
       DMCaixa := Nil ;
     End;
end;

procedure TFrmMain.OpPosicaoEstoqueVendaClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelPosicaoEstoqueVenda', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FRelPosicaoEstoqueVenda = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelPosicaoEstoqueVenda := TFRelPosicaoEstoqueVenda.Create(Self);
       FRelPosicaoEstoqueVenda.ShowModal;
     End;
end;

procedure TFrmMain.OpExportaFilizolaClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then Exit;

  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMigraDadosFilizola', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmMigraDadosFilizola = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FrmMigraDadosFilizola := TFrmMigraDadosFilizola.Create(Self);
       FrmMigraDadosFilizola.showmodal ;

       FrmMigraDadosFilizola.FREE ;
       FrmMigraDadosFilizola := NIL ;
     End;
end;

procedure TFrmMain.OpPagasporDataClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFiltrarPagasData', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmFiltrarPagasData = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FrmFiltrarPagasData := TFrmFiltrarPagasData.Create(Self);
       FrmFiltrarPagasData.Showmodal ;
       FrmFiltrarPagasData.Free ;
       FrmFiltrarPagasData := Nil    ;
     End;
end;

procedure TFrmMain.OpBaixasCobradorClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelRecebidasCobrador', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FRelRecebidasCobrador = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //

       FRelRecebidasCobrador := TFRelRecebidasCobrador.Create(Self);

       FRelRecebidasCobrador.Showmodal ;

       FRelRecebidasCobrador.Free      ;
       FRelRecebidasCobrador := Nil    ;


     End;
end;

procedure TFrmMain.RelServicosPeriodoClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelOrdensPeriodo', True)) Then
     Exit;

  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  if FRelHistoricoEquipamento = Nil then
  begin
    if FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    FRelHistoricoEquipamento := TFRelHistoricoEquipamento.Create(Self);
    FRelHistoricoEquipamento.ShowModal;
  end;
end;

procedure TFrmMain.OpVendasAnaliseClienteClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelVendasAnaliseCliente', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
  If FRelVendasAnaliseCliente = Nil Then
  begin
    //
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

      Application.ProcessMessages;
      FRelVendasAnaliseCliente := TFRelVendasAnaliseCliente.Create(Self);
      FRelVendasAnaliseCliente.ShowModal;

      FRelVendasAnaliseCliente.Free     ;
      FRelVendasAnaliseCliente := Nil   ;
  end;
end;

procedure TFrmMain.OpCtbFluxoCaixaClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFluxoCaixa', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmFluxoCaixa = Nil
  Then Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);

       //
       Application.ProcessMessages;


       FrmFluxoCaixa := TFrmFluxoCaixa.Create(Self);
       //
       FrmFluxoCaixa.Showmodal ;

       FrmFluxoCaixa.Free      ;
       FrmFluxoCaixa := Nil    ;
     End;
end;

procedure TFrmMain.OpComissoesVendedorRecebidasClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelComiVendRecebimento', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
  If FRelComiVendRecebimento = Nil Then
  Begin
       //
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);
       //
    Application.ProcessMessages;
       //
    FRelComiVendRecebimento := TFRelComiVendRecebimento.Create(Self);
    FRelComiVendRecebimento.ShowModal                   
  End;
end;

procedure TFrmMain.CtbFluxoCaixaClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmFluxoCaixa', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If frmFluxoCaixa = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //

       frmFluxoCaixa := TfrmFluxoCaixa.Create(Self);
       //
       frmFluxoCaixa.ShowModal;
       frmFluxoCaixa.Free;
       frmFluxoCaixa := Nil;
     end;
end;

procedure TFrmMain.OpLogsClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmLog', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
  If FrmLog = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       DMLISTAGENS := TDMLISTAGENS.Create(Self);
       FrmLog := TFrmLog.Create(Self);
       FrmLog.ShowModal
     End;
end;

procedure TFrmMain.OpVendasGrupoSelecaoClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelVendasGruposSel', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FRelVendasGruposSel = Nil
  Then Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelVendasGruposSel := TFRelVendasGruposSel.Create(Self);
       FRelVendasGruposSel.ShowModal
     End;
end;

procedure TFrmMain.OpLocalCobrancaClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmLocais_Cobranca', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmLocais_Cobranca = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FrmLocais_Cobranca  := TFrmLocais_Cobranca.Create(Self);
       //
       FrmLocais_Cobranca.FormStyle   := fsMDIChild;
       FrmLocais_Cobranca.WindowState := wsMaximized;
       FrmLocais_Cobranca.BorderStyle := bsNone;
       PnlClient.Visible              := False;
     End;
end;

procedure TFrmMain.OpListaPrecServicoClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;

  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'Frm_Lista_Precos_Servicos', True))
  Then
      Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
  If Frm_Lista_Precos_Servicos = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       Frm_Lista_Precos_Servicos    := TFrm_Lista_Precos_Servicos.Create(Self);
       //
       Frm_Lista_Precos_Servicos.Showmodal ;

       Frm_Lista_Precos_Servicos.Free   ;
       Frm_Lista_Precos_Servicos := Nil ;

     End;
end;

procedure TFrmMain.OpPosicaoGradeClick(Sender: TObject);
begin
  if FrmMain.MDIChildCount > 1 then
     Exit;
  if not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelPosicaoEstoqueGrade', True)) then
     Exit;
  if DMApp.SelecionarEmpresa = 'N' then
     Exit;
  if FRelPosicaoEstoqueGrade = nil then
  begin
    if FrmMain.MDIChildCount > 0 then
       opFechar.OnClick(opFechar);
    Application.ProcessMessages;
    FRelPosicaoEstoqueGrade := TFRelPosicaoEstoqueGrade.Create(Self);
    FRelPosicaoEstoqueGrade.ShowModal;
  end;
end;

procedure TFrmMain.OpTipos_ContratosClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmTipos_Contratos', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmTipos_Contratos = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
//       DMCadastros     := TDMCadastros.Create(Self);
       FrmTipos_Contratos := TFrmTipos_Contratos.Create(Self);
       FrmTipos_Contratos.ShowMODAL ;
       FrmTipos_Contratos.Free      ;
       FrmTipos_Contratos := Nil    ;
    End;
end;

procedure TFrmMain.btnReciboClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmRecibosPagar', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If frmRecibosPagar = Nil Then
  Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       frmRecibosPagar := TfrmRecibosPagar.Create(Self);
       frmRecibosPagar.Showmodal ;
       frmRecibosPagar.Free      ;
       frmRecibosPagar := Nil    ;
  End;
end;

procedure TFrmMain.itmContagemGradeClick(Sender: TObject);
begin
  if not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmContagemGrade', True)) then
    Exit;

  if DMApp.SelecionarEmpresa = 'N' then
    Exit;

  if FrmContagemGrade = Nil then
  begin
    if FrmMain.MDIChildCount > 0 then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    FrmContagemGrade := TFrmContagemGrade.Create(Self);
    FrmContagemGrade.Showmodal;
    FrmContagemGrade.Free;
    FrmContagemGrade := Nil;
  end;
end;

procedure TFrmMain.opRelEstVendasServicosClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelVendasServicos', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FRelVendasServicos = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelVendasServicos := TFRelVendasServicos.Create(Self);
       FRelVendasServicos.ShowModal;
     End;
end;

procedure TFrmMain.OpDivergenciaGradesClick(Sender: TObject);
begin
  //
  DMListagens := TDMListagens.Create(Self);
  DMListagens.Divergencia_Grades;
  DMListagens.Free;
  DMListagens := Nil;
end;

procedure TFrmMain.OpClientesInativosClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelClientesInativos', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FRelClientesInativos = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       DMListagens    := TDMListagens.Create(Self);
       FRelClientesInativos := TFRelClientesInativos.Create(Self);
       FRelClientesInativos.ShowModal;
     End;
end;

procedure TFrmMain.OpVendasCidadesClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelVendasCidade', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelVendasCidade = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FRelVendasCidade := TFRelVendasCidade.Create(Self);
       FRelVendasCidade.ShowModal;
     End;
end;

procedure TFrmMain.OpDefeitosClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmDefeitos', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
  If FrmDefeitos = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FrmDefeitos   := TFrmDefeitos.Create(Self);
       //
       FrmDefeitos.Showmodal;
       FrmDefeitos.FREE      ;
       FrmDefeitos := Nil    ;

     End;
end;

procedure TFrmMain.OPBAIXASRECEBERCONVENIOClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFiltrarRecConvenioBaixa', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmFiltrarRecConvenioBaixa = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //                                              //aqui
       Application.ProcessMessages;


       FrmFiltrarRecConvenioBaixa := TFrmFiltrarRecConvenioBaixa.Create(Self);
       //
       FrmFiltrarRecConvenioBaixa.Showmodal ;
       FrmFiltrarRecConvenioBaixa.Free      ;
       FrmFiltrarRecConvenioBaixa := Nil    ;
     End;

end;

procedure TFrmMain.OpTerminalConsultaClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'Frm_Pdv_Terminal_Consulta', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If Frm_Pdv_Terminal_Consulta = Nil Then
  Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       DMPdv  := TDMPdv.Create(Self);
       Frm_Pdv_Terminal_Consulta := TFrm_Pdv_Terminal_Consulta.Create(Self);

       Frm_Pdv_Terminal_Consulta.Showmodal ;

       Frm_Pdv_Terminal_Consulta.Free ;
       Frm_Pdv_Terminal_Consulta := Nil;

       DmPdv.Free ;
       DmPdv := Nil ;
  End;

end;

procedure TFrmMain.Rel_Saidas_PeriodoClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelSaidas', True)) Then
    Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
    Exit;

  { * * * * * }
  If FRelSaidas = Nil Then
  Begin
   If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

   Application.ProcessMessages;

   FRelSaidas := TFRelSaidas.Create(Self);
   FRelSaidas.ShowModal;
  End;
end;

procedure TFrmMain.Rel_DevolucoesClick(Sender: TObject);
begin
    //devoluções
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelDevolucoes', True)) Then
  Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
    Exit;

  { * * * * * }
  If FRelDevolucoes = Nil Then
  Begin
   If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

   Application.ProcessMessages;

   FRelDevolucoes := TFRelDevolucoes.Create(Self);
   FRelDevolucoes.ShowModal;
  End;
end;

procedure TFrmMain.Rel_VD_ProdutosClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelVendasProdutos', True)) Then
  Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
    Exit;

  { * * * * * }
  If FRelVendasProdutos = Nil Then
  Begin
   If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

   Application.ProcessMessages;

   FRelVendasProdutos := TFRelVendasProdutos.Create(Self);
   FRelVendasProdutos.ShowModal;
  End;
end;

procedure TFrmMain.OpRelEntradasProdutosClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelEntradasProdutos', True)) Then
  Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
    Exit;

  { * * * * * }
  If FRelEntradasProdutos = Nil Then
  Begin
   If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

   Application.ProcessMessages;

   FRelEntradasProdutos := TFRelEntradasProdutos.Create(Self);
   FRelEntradasProdutos.ShowModal;
  End;

end;

procedure TFrmMain.relKardexClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelKardex', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  if FRelKardex = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    //                                                
    Application.ProcessMessages;
    //
    FRelKardex := TFRelKardex.Create(Self);
    FRelKardex.ShowModal;
  end;
end;

procedure TFrmMain.dxBarButton7Click(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelCotacoesPerio', True)) Then
  Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
    Exit;

  { * * * * * }
  If FRelCotacoesPeriodo = Nil Then
  Begin
   If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

   Application.ProcessMessages;

   FRelCotacoesPeriodo := TFRelCotacoesPeriodo.Create(Self);
   FRelCotacoesPeriodo.ShowModal;
  End;

end;

procedure TFrmMain.dxBarButton8Click(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelVendasClientesConsumidor', True)) Then
    Exit;
    { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
    Exit;
    { * * * * * }
  If FRelVendasClientesConsumidor = Nil Then
  Begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;

    FRelVendasClientesConsumidor := TFRelVendasClientesConsumidor.Create(Self);
    FRelVendasClientesConsumidor.ShowModal;
  End;
end;

procedure TFrmMain.dxBarButton9Click(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelAuxContagemEstoque', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelAuxContagemEstoque = Nil Then
  Begin
    //
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);
    //
    Application.ProcessMessages;
    //
    FRelAuxContagemEstoque := TFRelAuxContagemEstoque.Create(Self);
    FRelAuxContagemEstoque.ShowModal;
  End;
end;

procedure TFrmMain.btMesasClick(Sender: TObject);
begin
  { * * * * * }
  if Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMesas', True)) Then
     Exit;

  { * * * * * }
  if DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  if FrmMesas = nil Then
  begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       FrmMesas := TFrmMesas.Create(Self);
       FrmMesas.FormStyle   := fsMDIChild;
       FrmMesas.WindowState := wsMaximized;
       FrmMesas.BorderStyle := bsNone;
       PnlClient.Visible := False;
  end;
end;


procedure TFrmMain.dxBarButton10Click(Sender: TObject);
begin
 //Verificando a permissão de login, passando o nome do form
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelPropriedades', True)) Then
     Exit;

  //Verificando se o usuário selecionoou uma empresa
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  //se o relatório não existir então ele pode ser criado
  If FRelPropriedades = Nil
  Then Begin
      //Acho q outras janelas filhas, são fechadas... não sei
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);

       Application.ProcessMessages;

       FRelPropriedades := TFRelPropriedades.Create(Self);

       FRelPropriedades.SHOWMODAL ;
       FRelPropriedades.FREE      ;
       FRelPropriedades := Nil    ;

  End;

end;

procedure TFrmMain.mnCadastroBancoClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmBancos', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmBancos = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       Application.ProcessMessages;


       FrmBancos   := TFrmBancos.Create(Self);
       //
       FrmBancos.FormStyle   := fsMDIChild;
       FrmBancos.WindowState := wsMaximized;
       FrmBancos.BorderStyle := bsNone;
       PnlClient.Visible       := False;
     End;
end;            

procedure TFrmMain.ActClientesExecute(Sender: TObject);
begin
     if FrmMain.MDIChildCount <= 0 then
     begin
       { * * * * * }
       if not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmClientes', True)) then
          Exit;

       { * * * * * }
       if DMApp.SelecionarEmpresa = 'N' Then
         Exit;

       { * * * * * }
       if FrmClientes = Nil Then
       begin
         If FrmMain.MDIChildCount > 0 Then
           opFechar.OnClick(opFechar);

         Application.ProcessMessages;

         FrmClientes  := TFrmClientes.Create(Self);
         FrmClientes.Showmodal ;
         FrmClientes.Free ;
        FrmClientes := Nil ;
       end;
     end;
end;

procedure TFrmMain.btnReleaseClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmListagemMod', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If frmListagemMod = Nil Then
  Begin
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);

       Application.ProcessMessages;


       frmListagemMod := TfrmListagemMod.Create(Self);
       frmListagemMod.FormStyle   := fsMDIChild;
       frmListagemMod.WindowState := wsMaximized;
       frmListagemMod.BorderStyle := bsNone;
       PnlClient.Visible          := False;
  End;
end;

procedure TFrmMain.btnDemonstrativoClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmDemonstrativo', True)) Then
     Exit;
    { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
    { * * * * * }
  If frmDemonstrativo = Nil Then
  begin
       //
    if FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);
       //
    Application.ProcessMessages;
       //
    frmDemonstrativo := TfrmDemonstrativo.Create(Self);
    frmDemonstrativo.showmodal;
  end;
end;

procedure TFrmMain.ActSetReleaseExecute(Sender: TObject);
var
  S : string;
begin
{ if InputQuery('Setar Código da Release', 'Entre com código', S) then
  begin
    if (trim(S) <> '') then
    begin
      try
        ExecSql('update sis_empresas set key_release ='+QuotedStr(S),dmapp.TransactionProc);
        Application.MessageBox('Código da release foi atualizado','Aviso',mb_ok+mb_iconinformation);
      except
        Application.MessageBox('Erro ao tentar atualizar o código da release','Aviso',mb_ok+mb_iconerror);
      end;
    end
    else
      Application.MessageBox('Defina um código para atualização','Aviso',mb_ok+mb_iconerror);
  end;}
end;

procedure TFrmMain.btnComissoesClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmRelTerceiros', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
  If frmRelTerceiros = Nil Then
  Begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;

    frmRelTerceiros := TfrmRelTerceiros.Create(Self);
    frmRelTerceiros.ShowModal
  End;
end;

procedure TFrmMain.btnRegiaoClick(Sender: TObject);
begin
  if Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmCadRegiao', True)) Then
     Exit;

  if DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  if frmCadRegiao = Nil Then
  begin
     Application.ProcessMessages;
     frmCadRegiao := TfrmCadRegiao.Create(Self);
     frmCadRegiao.ShowMODAL ;
     frmCadRegiao.Free      ;
     frmCadRegiao := Nil    ;
  end;
end;

procedure TFrmMain.btnEstoqueCompClick(Sender: TObject);
begin
  If FrmMain.MDIChildCount > 1 Then
     Exit;

  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelEstoqueComprometido', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FRelEstoqueComprometido  = Nil Then
  Begin
    If FrmMain.MDIChildCount > 0 Then
    opFechar.OnClick(opFechar);
    //
    Application.ProcessMessages;
       //
    FRelEstoqueComprometido := TFRelEstoqueComprometido.Create(Self);
    FRelEstoqueComprometido.ShowModal;
  End;
end;

procedure TFrmMain.btnRelPagarClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;

  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'fRelPagar2', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If fRelPagar2 = Nil Then
  Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       fRelPagar2 := TfRelPagar2.Create(Self);
       fRelPagar2.ShowModal;
  End;
end;

procedure TFrmMain.btnManutencaoClick(Sender: TObject);
begin
  //chamando o login caso o usário ainda não tenha realizado
  If not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmManutencaoBoleto', True)) then
     Exit;

  //forçando a selação da  empresa caso ainda nao tenha sido feito o login
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  //formulário ainda não criado
  if frmManutencaoBoleto = Nil Then
  begin
    //não sei o uqe é isso.. parece que fecha as filhas caso existam
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;

    //criando form
    frmManutencaoBoleto  := TfrmManutencaoBoleto.Create(Self);
  end;

  frmManutencaoBoleto.Showmodal;
  frmManutencaoBoleto.Free;
  frmManutencaoBoleto:= Nil;
end;

procedure TFrmMain.btnPerfilClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPerfilComissao', True)) Then
     Exit;

  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmPerfilComissao = Nil Then
  begin
    //
    if FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);
       //
    Application.ProcessMessages;
       //
    DMSeguranca := TDMSeguranca.Create(Self);
    FrmPerfilComissao   := TFrmPerfilComissao.Create(Self);
    //
    FrmPerfilComissao.Showmodal ;
    FrmPerfilComissao.Free      ;
    FrmPerfilComissao := Nil    ;
  end;
end;

procedure TFrmMain.btnPerfilPagtoClick(Sender: TObject);
begin
 { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPerfilPagto', True)) Then
     Exit;

  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmPerfilPagto = Nil
  Then Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       DMSeguranca := TDMSeguranca.Create(Self);
       FrmPerfilPagto   := TFrmPerfilPagto.Create(Self);
       //
       FrmPerfilPagto.Showmodal ;
       FrmPerfilPagto.Free      ;
       FrmPerfilPagto := Nil    ;
  End;
end;

procedure TFrmMain.btnRelComissaoClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelComissoesPendendes', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
  if FRelComissoesPendendes = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;

    FRelComissoesPendendes := TFRelComissoesPendendes.Create(Self);
    FRelComissoesPendendes.ShowModal
  end;
end;

procedure TFrmMain.btnCMAGRClick(Sender: TObject);
begin
  { * * * * * }
  if Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmManutencaoComissao', True)) then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  if FrmManutencaoComissao = Nil then
  begin
    if DMApp.VerificarCaixa = 'N' then
      exit;

    If FrmMain.MDIChildCount > 0 then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    FrmManutencaoComissao := TFrmManutencaoComissao.Create(Self);
    FrmManutencaoComissao.Showmodal ;
    FrmManutencaoComissao.Free   ;
    FrmManutencaoComissao := Nil ;
  end;
end;

procedure TFrmMain.btnSugCompraClick(Sender: TObject);
begin
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'fRelSugestaoCompra', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  if fRelSugestaoCompra = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);
    //
    Application.ProcessMessages;
    //
    FRelSugestaoCompra := TFRelSugestaoCompra.Create(Self);
    FRelSugestaoCompra.ShowModal;
  end;
end;

procedure TFrmMain.btnPaisesClick(Sender: TObject);
begin
  if Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCadPaises', True)) Then
     Exit;

  if DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  if FrmCadPaises = Nil Then
  begin
     FrmCadPaises := TFrmCadPaises.Create(Self);
     FrmCadPaises.ShowMODAL ;
     FrmCadPaises.Free      ;
     FrmCadPaises := Nil    ;
  end;
end;

procedure TFrmMain.btnPosicaoEstoque2Click(Sender: TObject);
begin
  if FrmMain.MDIChildCount > 1 then
     Exit;

  if not(DMApp.Verificar_Login(FileName(Application.ExeName), 'fRelPosicaoEstoqueGrafico', True)) then
     Exit;

  if DMApp.SelecionarEmpresa = 'N' then
     Exit;

  if fRelPosicaoEstoqueGrafico = nil then
  begin
    if FrmMain.MDIChildCount > 0 then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    fRelPosicaoEstoqueGrafico := TfRelPosicaoEstoqueGrafico.Create(Self);
    fRelPosicaoEstoqueGrafico.ShowModal;
  end;
end;

procedure TFrmMain.btnContratosClick(Sender: TObject);
begin
  If FrmMain.MDIChildCount > 1 Then
     Exit;

  if not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmTipos_Contratos', True)) then
    Exit;

  if DMApp.SelecionarEmpresa = 'N' then
    Exit;

  if FrmTipos_Contratos = nil  then
  begin
    if FrmMain.MDIChildCount > 0 then
       opFechar.OnClick(opFechar);
    Application.ProcessMessages;

    FrmTipos_Contratos := TFrmTipos_Contratos.Create(Self);
    FrmTipos_Contratos.Showmodal;
    FrmTipos_Contratos.Free;
    FrmTipos_Contratos := Nil;
  end;
end;

procedure TFrmMain.btnServicoClick(Sender: TObject);
begin
  If FrmMain.MDIChildCount > 1 Then
     Exit;

  if not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmStatusServico', True)) then
    Exit;

  if DMApp.SelecionarEmpresa = 'N' then
    Exit;

  if frmStatusServico = nil  then
  begin
    Application.ProcessMessages;
    frmStatusServico := TfrmStatusServico.Create(Self);
    frmStatusServico.Showmodal;
    frmStatusServico.Free;
    frmStatusServico := Nil;
  end;
end;

procedure TFrmMain.mnTipoAtendimentoClick(Sender: TObject);
begin
  If FrmMain.MDIChildCount > 1 Then
     Exit;

  if not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmTipoAtendimento', True)) then
    Exit;

  if DMApp.SelecionarEmpresa = 'N' then
    Exit;

  if frmTipoAtendimento = nil  then
  begin
    Application.ProcessMessages;
    frmTipoAtendimento := TfrmTipoAtendimento.Create(Self);
    frmTipoAtendimento.Showmodal;
    frmTipoAtendimento.Free;
    frmTipoAtendimento := Nil;
  end;
end;

procedure TFrmMain.mnMotivoChamadoClick(Sender: TObject);
begin
  If FrmMain.MDIChildCount > 1 Then
     Exit;

  if not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmMotivoChamado', True)) then
    Exit;

  if DMApp.SelecionarEmpresa = 'N' then
    Exit;

  if frmMotivoChamado = nil  then
  begin
    Application.ProcessMessages;
    frmMotivoChamado := TfrmMotivoChamado.Create(Self);
    frmMotivoChamado.Showmodal;
    frmMotivoChamado.Free;
    frmMotivoChamado := Nil;
  end;
end;

procedure TFrmMain.ActServicoExecute(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmSelOrdens', True)) Then Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  {If DMApp.VerificarCaixa = 'N' Then Exit ;}

  { * * * * * }
  try
    if FrmMain.MDIChildCount > 0 then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    FrmSelOrdens   := TFrmSelOrdens.Create(Self);
    FrmSelOrdens.Showmodal ;
  finally
    FrmSelOrdens.Destroy   ;
  end;
end;

procedure TFrmMain.btnSecaoClick(Sender: TObject);
begin
 If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmSecoes_Produtos', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmSecoes_Produtos = Nil Then
  begin

    If FrmMain.MDIChildCount > 0 Then
       opFechar.OnClick(opFechar);

    Application.ProcessMessages;

    FrmSecoes_Produtos := TFrmSecoes_Produtos.Create(Self);
    FrmSecoes_Produtos.FormStyle   := fsMDIChild;
    FrmSecoes_Produtos.WindowState := wsMaximized;
    FrmSecoes_Produtos.BorderStyle := bsNone;
    PnlClient.Visible     := False;
  end;
end;

procedure TFrmMain.ListaAtendimentoClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;

  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRel_Rechamados', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FRel_Rechamados = Nil Then
  Begin
       //
    If FrmMain.MDIChildCount > 0 Then
       opFechar.OnClick(opFechar);
       //
    Application.ProcessMessages;
       //
    FRel_Rechamados := TFRel_Rechamados.Create(Self);
    FRel_Rechamados.ShowModal;

    FRel_Rechamados.Free   ;
    FRel_Rechamados := Nil ;
   End;
end;

procedure TFrmMain.btnRelEquipamentoClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;

  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'fRelEquipamentos', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If fRelEquipamentos2 = Nil Then
  Begin
    //
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    fRelEquipamentos2 := TfRelEquipamentos2.Create(Self);
    fRelEquipamentos2.ShowModal;
  end;
end;

procedure TFrmMain.ActCargaExecute(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmSelCarga', True)) Then Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
  if FrmSelCarga = nil then
  begin
    if FrmMain.MDIChildCount > 0 then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;

    FrmSelCarga   := TFrmSelCarga.Create(Self);
    FrmSelCarga.Showmodal ;
    FrmSelCarga.Free   ;
    FrmSelCarga := nil ;
  end;
end;

procedure TFrmMain.mnConfigSerieClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmSeriesCustomizaveis', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FrmSeriesCustomizaveis = Nil Then
  Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FrmSeriesCustomizaveis     := TFrmSeriesCustomizaveis.Create(Self);
       //
       FrmSeriesCustomizaveis.FormStyle   := fsMDIChild;
       FrmSeriesCustomizaveis.WindowState := wsMaximized;
       FrmSeriesCustomizaveis.BorderStyle := bsNone;
       PnlClient.Visible        := False;
       //
       FrmSeriesCustomizaveis.Show;
     End;
end;

procedure TFrmMain.mnManutencaoKardexClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmSelKardex', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  if FrmSelKardex = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    //
    Application.ProcessMessages;
    //
    FrmSelKardex   := TFrmSelKardex.Create(Self);
    FrmSelKardex.ShowModal;
  end;
end;

procedure TFrmMain.btnPendenciaClick(Sender: TObject);
begin
  if not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmEstoquePendencia', True)) then
    Exit;

  if DMApp.SelecionarEmpresa = 'N' then
    Exit;

  if FrmMain.MDIChildCount > 0 then
     opFechar.OnClick(opFechar);

  if FrmEstoquePendencia = nil  then
    FrmEstoquePendencia := TFrmEstoquePendencia.Create(Self);

  Application.ProcessMessages;
  PnlClient.Visible:= False;
  FrmEstoquePendencia.ShowModal;
end;

procedure TFrmMain.MarcarmensagemcomoLida1Click(Sender: TObject);
begin
  with DMMensagem do
  begin
    if (Application.MessageBox('Deseja realmente marcar esta mensagem como lida?','Aviso', mb_iconquestion + mb_yesno) = id_no) then
      exit;
    try
      UpdMSG.parambyname('codigo').value := MensagensResCODIGO.value;
      UpdMSG.ExecQuery;
      UpdMSG.Transaction.CommitRetaining;
      Application.MessageBox('Mensagem marcada com sucesso','Aviso', mb_iconinformation + mb_ok);
    except
      Application.MessageBox('Erro ao tentar marcar a mensagem','Aviso', mb_iconerror + mb_ok);
    end;

    MensagensRes.Close;
    MensagensRes.Open;
  end

end;

procedure TFrmMain.Timer1Timer(Sender: TObject);
begin
 {
 DMMensagem.MensagensRes.Close;
 DMMensagem.MensagensRes.Open;


 if (DMUsuarios = nil) then
    exit;

 if trim(DMUsuarios.LoginLOGIN.Value) = '' then
    exit;

 if (DmApp.SIS_MSG_INTERNA = 'N') then
   exit;

 if not(DmApp.ATIVA_AGENTE = 'S') then
   exit;

 DMMensagem.MensagensRes.DisableControls;
 DMMensagem.MensagensRes.First;
 with DMMensagem do
 begin
  // Associar o agente à variável Agente

   while not MensagensRes.eof do
   begin
     if MensagensResDT_LEITURA.isNUll then
     begin
       Agent1.Characters.Load(NomeAgente, NomeAgente+'.acs');
       Agente := Agent1.Characters[NomeAgente];

       //------------------------Configurações do  Agente
       Agente.Show(0); // Aparecer 0-lentamente 1-instantaneamente

       // Encenação de abertura
       Agente.Play('Greet'); // Cumprimentar
       Agente.Play('Announce'); // Anunciar
       Agente.Speak('Olá '+DMUsuarios.LoginLOGIN.asString, EmptyStr); // Falar
       Sleep(700); // Da uma pausa ao programa
       Agente.Speak('Você possui mensagens não lidas: ', EmptyStr);
       Agente.Play('RestPose'); // Descansar
       Agente.Play('Wave'); // Assenar com a Mao
       Agente.Speak(MensagensResMENSAGEM.asString,EmptyStr);
       Agente.Play('RestPose'); // Descansar
       Agente.Play('Wave'); // Assenar com a Mao
       Agente.Hide(0);
       Sleep(28000); // Da uma pausa ao programa
       Agent1.Characters.Unload(NomeAgente);
       MensagensRes.EnableControls;
       exit;
     end;
     MensagensRes.next;
   end;

   if (Agent1.Connected) then
    Agent1.Connected := false;

    MensagensRes.EnableControls;


 end; }
end;

procedure TFrmMain.dxBarButton13Click(Sender: TObject);
begin
    ActCargaExecute(Sender);
end;

procedure TFrmMain.dxBarButton14Click(Sender: TObject);
begin
  { * * * * * }
  if not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRel_CargaVenda', True)) then
    Exit;
  { * * * * * }
  if DMApp.SelecionarEmpresa = 'N' then
    Exit;

  if FRel_CargaVenda = nil  then
  begin
        if FrmMain.MDIChildCount > 0 then
          opFechar.OnClick(opFechar);
      FRel_CargaVenda := TFRel_CargaVenda.Create(Self);

      Application.ProcessMessages;
      FRel_CargaVenda.ShowModal;
      FRel_CargaVenda.free;
      FRel_CargaVenda := nil;
  end;
end;

procedure TFrmMain.ProvisaoFinanceiraClick(Sender: TObject);
begin
//previsão financeira....
end;

procedure TFrmMain.btnAlteraPrecoClick(Sender: TObject);
begin
    { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmAlteraPrecos', True)) Then Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
    Exit;

  { * * * * * }
  If frmAlteraPrecos = Nil Then
  Begin

    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;

    frmAlteraPrecos := TfrmAlteraPrecos.Create(Self);
    frmAlteraPrecos.Showmodal ;
    frmAlteraPrecos.Free   ;
    frmAlteraPrecos := Nil ;
  end;
end;

procedure TFrmMain.btnContratoClick(Sender: TObject);
begin
  if not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmContratosClientesProdutos', True)) then
    Exit;

  if DMApp.SelecionarEmpresa = 'N' then
     Exit;

  if FrmMain.MDIChildCount > 0 then
     opFechar.OnClick(opFechar);

  if FrmContratos = nil  then
    FrmContratos := TFrmContratos.Create(Self);

  Application.ProcessMessages;
  PnlClient.Visible:= False;
  FrmContratos.ShowModal;
end;

procedure TFrmMain.btnLeituraClick(Sender: TObject);
begin
  if not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmSelLeituras', True)) then
    Exit;

  if DMApp.SelecionarEmpresa = 'N' then
    Exit;

  if FrmMain.MDIChildCount > 0 then
     opFechar.OnClick(opFechar);

  if FrmSelLeituras = nil  then
    FrmSelLeituras := TFrmSelLeituras.Create(Self);

  Application.ProcessMessages;
  PnlClient.Visible:= False;
  FrmSelLeituras.ShowModal;
end;

procedure TFrmMain.btnCategoriasClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCategoriasDef', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmCategoriasDef = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    FrmCategoriasDef := TFrmCategoriasDef.Create(Self);
    FrmCategoriasDef.FormStyle   := fsMDIChild;
    FrmCategoriasDef.WindowState := wsMaximized;
    FrmCategoriasDef.BorderStyle := bsNone;
    PnlClient.Visible         := False;
  end;
end;

procedure TFrmMain.btnAgrClasseToxicologicaClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmClassesToxicologicas', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmClassesToxicologicas = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    FrmClassesToxicologicas := TFrmClassesToxicologicas.Create(Self);
    FrmClassesToxicologicas.FormStyle   := fsMDIChild;
    FrmClassesToxicologicas.WindowState := wsMaximized;
    FrmClassesToxicologicas.BorderStyle := bsNone;
    PnlClient.Visible         := False;
  end;
end;

procedure TFrmMain.btnAgrClassAmbientalClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmClassAmbiental', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmClassAmbiental = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    FrmClassAmbiental := TFrmClassAmbiental.Create(Self);
    FrmClassAmbiental.FormStyle   := fsMDIChild;
    FrmClassAmbiental.WindowState := wsMaximized;
    FrmClassAmbiental.BorderStyle := bsNone;
    PnlClient.Visible         := False;
  end;

end;

procedure TFrmMain.btnAgrClassQuimicaClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmClassQuimica', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmClassQuimica = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    FrmClassQuimica := TFrmClassQuimica.Create(Self);
    FrmClassQuimica.FormStyle   := fsMDIChild;
    FrmClassQuimica.WindowState := wsMaximized;
    FrmClassQuimica.BorderStyle := bsNone;
    PnlClient.Visible         := False;
  end;
end;

procedure TFrmMain.btnAgrFabricantesClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFabricantes', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmFabricantes = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    FrmFabricantes := TFrmFabricantes.Create(Self);
    FrmFabricantes.FormStyle   := fsMDIChild;
    FrmFabricantes.WindowState := wsMaximized;
    FrmFabricantes.BorderStyle := bsNone;
    PnlClient.Visible         := False;
  end;
end;

procedure TFrmMain.btnAgrMatEmbalagemClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMatEmbalagem', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmMatEmbalagem = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    FrmMatEmbalagem := TFrmMatEmbalagem.Create(Self);
    FrmMatEmbalagem.FormStyle   := fsMDIChild;
    FrmMatEmbalagem.WindowState := wsMaximized;
    FrmMatEmbalagem.BorderStyle := bsNone;
    PnlClient.Visible         := False;
  end;
end;

procedure TFrmMain.btnAgrOrientacoesClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmOrientacoesDef', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmOrientacoesDef = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    FrmOrientacoesDef := TFrmOrientacoesDef.Create(Self);
    FrmOrientacoesDef.FormStyle   := fsMDIChild;
    FrmOrientacoesDef.WindowState := wsMaximized;
    FrmOrientacoesDef.BorderStyle := bsNone;
    PnlClient.Visible         := False;
  end;
end;

procedure TFrmMain.btnArgRegistranteClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmRegistrantes', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmRegistrantes = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    FrmRegistrantes := TFrmRegistrantes.Create(Self);
    FrmRegistrantes.FormStyle   := fsMDIChild;
    FrmRegistrantes.WindowState := wsMaximized;
    FrmRegistrantes.BorderStyle := bsNone;
    PnlClient.Visible         := False;
  end;
end;

procedure TFrmMain.btnDefensivosClick(Sender: TObject);
begin
 If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmDefensivo', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If frmDefensivo = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    frmDefensivo := TfrmDefensivo.Create(Self);
    frmDefensivo.FormStyle   := fsMDIChild;
    frmDefensivo.WindowState := wsMaximized;
    frmDefensivo.BorderStyle := bsNone;
    PnlClient.Visible         := False;
  end;
end;

procedure TFrmMain.btnRelContratosClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;

  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'fRelContratos', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If fRelContratos = Nil Then
  Begin
    //
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    fRelContratos := TfRelContratos.Create(Self);
    fRelContratos.ShowModal;
  end;
end;

procedure TFrmMain.btnUndConversaoClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmConversaoUnidades', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmConversaoUnidades = Nil Then
  Begin
       //
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;

    FrmConversaoUnidades := TFrmConversaoUnidades.Create(Self);
       //
    FrmConversaoUnidades.FormStyle   := fsMDIChild;
    FrmConversaoUnidades.WindowState := wsMaximized;
    FrmConversaoUnidades.BorderStyle := bsNone;
    PnlClient.Visible       := False;
  End;
end;

procedure TFrmMain.btnCadPragasClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPragas', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmPragas = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    FrmPragas := TFrmPragas.Create(Self);
    FrmPragas.FormStyle   := fsMDIChild;
    FrmPragas.WindowState := wsMaximized;
    FrmPragas.BorderStyle := bsNone;
    PnlClient.Visible         := False;
  end;
end;

procedure TFrmMain.btnCadCulturaClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCulturas', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmCulturas = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    FrmCulturas := TFrmCulturas.Create(Self);
    FrmCulturas.FormStyle   := fsMDIChild;
    FrmCulturas.WindowState := wsMaximized;
    FrmCulturas.BorderStyle := bsNone;
    PnlClient.Visible         := False;
  end;
end;

procedure TFrmMain.btnUndMedDosagemClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmUndMedVazao', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If frmUndMedVazao = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    frmUndMedVazao := TfrmUndMedVazao.Create(Self);
    frmUndMedVazao.FormStyle   := fsMDIChild;
    frmUndMedVazao.WindowState := wsMaximized;
    frmUndMedVazao.BorderStyle := bsNone;
    PnlClient.Visible         := False;
  end;
end;

procedure TFrmMain.btnReceiturarioClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmSelReceituario', True)) Then Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then Exit;

  { * * * * * }
  if FrmSelReceituario = nil then
  begin
    if FrmMain.MDIChildCount > 0 then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;

    FrmSelReceituario   := TFrmSelReceituario.Create(Self);
    FrmSelReceituario.Showmodal ;
    FrmSelReceituario.Free   ;
    FrmSelReceituario := nil ;
  end;
end;

procedure TFrmMain.btnRelTituloPendenteClick(Sender: TObject);
begin
  if FrmMain.MDIChildCount > 1 Then
     Exit;

  if Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelAcerto', True)) Then
    Exit;

  if DMApp.SelecionarEmpresa = 'N' Then
    Exit;

  if DMApp.VerificarCaixa = 'N' Then
    Exit ;

  if FRelAcerto = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;


    FRelAcerto := TFRelAcerto.Create(Self);
    FRelAcerto.ShowModal;
  end;
end;

procedure TFrmMain.btnTesteClick(Sender: TObject);
begin
  if DMApp.SelecionarEmpresa = 'N' Then
    Exit;

  frmFiltraMulti := TfrmFiltraMulti.Create(Self);
  frmFiltraMulti.ShowModal;
end;

procedure TFrmMain.btnCotacoesClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmDigitaCotacoes', True)) Then Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
    Exit;

  if DMApp.VerificarCaixa = 'N' Then
    Exit ;

  { * * * * * }
  if FrmDigitaCotacoes = nil then
  begin
    if FrmMain.MDIChildCount > 0 then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;

    FrmDigitaCotacoes := TFrmDigitaCotacoes.Create(Self);
    FrmDigitaCotacoes.Showmodal ;
    FrmDigitaCotacoes.Free   ;
    FrmDigitaCotacoes := nil ;
  end;
end;

procedure TFrmMain.btnAcertoClick(Sender: TObject);
begin
  {}
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmAct_Contas', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
    Exit;

  if DMApp.VerificarCaixa = 'N' Then
    Exit ;

  { * * * * * }
  if frmAct_Contas = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;

    frmAct_Contas := TfrmAct_Contas.Create(Self);
    frmAct_Contas.Showmodal;
    frmAct_Contas.Free;
    frmAct_Contas := Nil;
  end;

end;

procedure TFrmMain.bntVDTClick(Sender: TObject);
begin
  { * * * * * }
  if Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmSelComissoes', True)) then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  if FrmSelComissoes = Nil then
  begin
    If FrmMain.MDIChildCount > 0 then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    FrmSelComissoes := TFrmSelComissoes.Create(Self);
    FrmSelComissoes.Showmodal ;
    FrmSelComissoes.Free   ;
    FrmSelComissoes := Nil ;
  end;
end;

procedure TFrmMain.btnComissoesTerceiroClick(Sender: TObject);
begin
  { * * * * * }
  if Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRelComissoesTerceiros', True)) then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  if FRelComissoesTerceiros = Nil then
  begin
    If FrmMain.MDIChildCount > 0 then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    FRelComissoesTerceiros := TFRelComissoesTerceiros.Create(Self);
    FRelComissoesTerceiros.Showmodal ;
    FRelComissoesTerceiros.Free   ;
    FRelComissoesTerceiros := Nil ;
  end;
end;

procedure TFrmMain.btnExportaIagroClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmExportaIagro', True)) Then
     Exit;

  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  If FrmExportaIagro = Nil Then
  begin
     If FrmMain.MDIChildCount > 0 Then
        opFechar.OnClick(opFechar);

     Application.ProcessMessages;

     FrmExportaIagro := TFrmExportaIagro.Create(Self);
     FrmExportaIagro.showmodal;

     FrmExportaIagro.FREE   ;
     FrmExportaIagro := Nil ;
  end;
end;

procedure TFrmMain.btnEventoContabilClick(Sender: TObject);
begin
  { * * * * * }
  IF Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmEventoContabil', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmEventoContabil = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       DMPlano       := TDMPlano.Create(Self);
       FrmEventoContabil := TFrmEventoContabil.Create(Self);


       FrmEventoContabil.Showmodal ;
       FrmEventoContabil.Free;
       FrmEventoContabil := Nil;
     End;
end;

procedure TFrmMain.btnSincronizarClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmSincronizaCadastros', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If frmSincronizaCadastros = Nil Then
  Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       frmSincronizaCadastros := TfrmSincronizaCadastros.Create(Self);
       frmSincronizaCadastros.showmodal;

       frmSincronizaCadastros.FREE   ;
       frmSincronizaCadastros := Nil ;
  End;
end;

procedure TFrmMain.btnTabelaPrecosClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmTabelaPreco', True)) Then Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
    Exit;

  { * * * * * }
  If FrmTabelaPreco = Nil Then
  Begin

    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;

    FrmTabelaPreco := TFrmTabelaPreco.Create(Self);
    FrmTabelaPreco.Showmodal ;
    FrmTabelaPreco.Free   ;
    FrmTabelaPreco := Nil ;
  end;
end;

procedure TFrmMain.btnTabelaVendedorClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmTabelaVendedor', True)) Then Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
    Exit;

  { * * * * * }
  If frmTabelaVendedor = Nil Then
  Begin

    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;

    frmTabelaVendedor := TfrmTabelaVendedor.Create(Self);
    frmTabelaVendedor.Showmodal ;
    frmTabelaVendedor.Free   ;
    frmTabelaVendedor := Nil ;
  end;
end;

procedure TFrmMain.btnRomaneiosClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmRomaneios', True)) Then Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
    Exit;

  { * * * * * }
  If FrmRomaneios = Nil Then
  Begin

    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;

    FrmRomaneios := TFrmRomaneios.Create(Self);
    FrmRomaneios.Showmodal ;
    FrmRomaneios.Free   ;
    FrmRomaneios := Nil ;
  end;
end;

procedure TFrmMain.btnEstornoClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmEstornaAcerto', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If frmEstornaAcerto = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
       opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    frmEstornaAcerto := TfrmEstornaAcerto.Create(Self);
    frmEstornaAcerto.Showmodal;
    frmEstornaAcerto.Free;
    frmEstornaAcerto := Nil;
  end;
end;

procedure TFrmMain.btnMenManutencaoClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmSelMensalidades', True)) Then Exit;

  { * * * * * }
  if DMApp.SelecionarEmpresa = 'N' then
    Exit;

  if DMApp.VerificarCaixa = 'N' then
    Exit ;
    
  { * * * * * }
  If FrmSelMensalidades = Nil Then
  Begin

    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;

    FrmSelMensalidades := TFrmSelMensalidades.Create(Self);
    FrmSelMensalidades.Showmodal ;
    FrmSelMensalidades.Free   ;
    FrmSelMensalidades := Nil ;
  end;
end;

procedure TFrmMain.btnConsultaRomaneioClick(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmConsultaRomaneio', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmConsultaRomaneio = Nil Then
  Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       FrmConsultaRomaneio := TFrmConsultaRomaneio.Create(Self);
       FrmConsultaRomaneio.Showmodal ;
       FrmConsultaRomaneio.Free   ;
       FrmConsultaRomaneio := nil ;
     End;
end;

procedure TFrmMain.btnResumoServicoClick(Sender: TObject);
begin
  { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;

  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRel_ResumoAtendimentos', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FRel_ResumoAtendimentos = Nil Then
  Begin
       //
    If FrmMain.MDIChildCount > 0 Then
       opFechar.OnClick(opFechar);
       //
    Application.ProcessMessages;
       //
    FRel_ResumoAtendimentos := TFRel_ResumoAtendimentos.Create(Self);
    FRel_ResumoAtendimentos.ShowModal;

    FRel_ResumoAtendimentos.Free   ;
    FRel_ResumoAtendimentos := Nil ;
  End;
end;

procedure TFrmMain.Conecta;
begin
  IdSMTP.IOHandler:=nil;
  IdSMTP.IOHandler:= SSLSocket;
  if not IdSMTP.Connected then
  begin
    IdSMTP.UserName:= dmApp.LOGIN;
    IdSMTP.Host := dmApp.smtp;

    IdSMTP.Password:= dmapp.senha;
    IdSMTP.AuthenticationType:=atLogin;
    IdSMTP.Port:= 465;
    IdSMTP.Connect;
    IdSMTP.Authenticate;
  end;
end;

procedure TFrmMain.Desconecta;
begin
  if IdSMTP.Connected then
  IdSMTP.Disconnect;
end;

procedure TFrmMain.btnPosicaoSaldoEstoqueClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmBIEstoqueGrade', True)) Then Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
    Exit;

  { * * * * * }
  If FrmBIEstoqueGrade = Nil Then
  Begin

    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;

    FrmBIEstoqueGrade := TFrmBIEstoqueGrade.Create(Self);
    FrmBIEstoqueGrade.Showmodal ;
    FrmBIEstoqueGrade.Free   ;
    FrmBIEstoqueGrade := Nil ;
  end;
end;

procedure TFrmMain.btnFolhaPagtoClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFolha', True)) Then
     Exit;

  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
    Exit;


  { * * * * * }
  Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;
  if FrmFolha = Nil Then
  begin
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;

    FrmFolha := TFrmFolha.Create(Self);
    FrmFolha.Showmodal;
    FrmFolha.Free;
    FrmFolha := Nil;
  end;
end;

procedure TFrmMain.btnGrupoEmpresarialClick(Sender: TObject);
begin
  if not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmContratosGrupos', True)) then
    Exit;

  if DMApp.SelecionarEmpresa = 'N' then
     Exit;

  if FrmMain.MDIChildCount > 0 then
     opFechar.OnClick(opFechar);

  if FrmContratosGrupos = nil  then
    FrmContratosGrupos := TFrmContratosGrupos.Create(Self);

  Application.ProcessMessages;
  PnlClient.Visible:= False;
  FrmContratosGrupos.ShowModal;
end;

procedure TFrmMain.GridMensagemEnter(Sender: TObject);
begin
  cxGridPopupMenu.grid := TCxGrid(Sender);
end;

procedure TFrmMain.FormCreate(Sender: TObject);
var
  DirUser : string;
begin
  FResNames := TStringList.Create;
  FSkinNames := TStringList.Create;

  InitializeSkinList;

   FrmSplash := TFrmSplash.Create(Self);
   FrmSplash.showmodal;

  DirUser := GetEnvironmentVariable('USERPROFILE');

  if FileExists(DirUser+'\Agenda.dat') then
    AgendaStorage2.LoadFromFile(DirUser+'\Agenda.dat');
end;

procedure TFrmMain.btnLocalizacaoClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmLocalizacao', True)) Then
     Exit;

  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  If FrmLocalizacao = Nil Then
     Begin
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       Application.ProcessMessages;
       FrmLocalizacao  := TFrmLocalizacao.Create(Self);
       FrmLocalizacao.Showmodal ;
       FrmLocalizacao.Free      ;
       FrmLocalizacao := Nil    ;
     End;
end;

procedure TFrmMain.btnSetaGeoLocalizacaoClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmGerarGeolocalizacao', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If frmGerarGeolocalizacao = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       frmGerarGeolocalizacao := TfrmGerarGeolocalizacao.Create(Self);
       frmGerarGeolocalizacao.ShowModal;

       frmGerarGeolocalizacao.Free      ;
       frmGerarGeolocalizacao := Nil    ;
     End;
end;

procedure TFrmMain.btnContasCorrentesClick(Sender: TObject);
begin
   { * * * * * }
  IF Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPlano', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmPlano = Nil Then
     Begin
       DMPlano       := TDMPlano.Create(Self);
       FrmPlano := TFrmPlano.Create(Self);


       FrmPlano.Showmodal ;
       FrmPlano.Free      ;
       FrmPlano := Nil    ;
     End;
end;

procedure TFrmMain.AgendaStorageRemindersOpenEvent(
  Sender: TcxSchedulerReminders; AEvent: TcxSchedulerControlEvent);
begin
    Scheduler.EditEventUsingDialog(AEvent);
end;

procedure TFrmMain.btnDiaClick(Sender: TObject);
var
  ADate: TDateTime;
  APrevView: TcxSchedulerCustomView;
begin
  APrevView := Scheduler.CurrentView;
  ADate := Date;
  case TToolButton(Sender).Tag of
    0:
      Scheduler.GoToDate(ADate, vmDay);
    1:
      Scheduler.GoToDate(ADate, vmWorkWeek);
    2:
      Scheduler.GoToDate(ADate, vmWeek);
    3:
      Scheduler.GoToDate(ADate, vmMonth);
    4:
      Scheduler.ViewYear.Active := True;
    6:
      begin
        Scheduler.SelectDays(Dayof(Date) - 10, DayOf(Date) - 10);
        Scheduler.ViewGantt.Active := True;
      end;
  end;

end;

procedure TFrmMain.pgcGraficosChange(Sender: TObject);
begin
  GrafEfetuaConsulta;
end;

procedure TFrmMain.PgcMainMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FrmMain.PopupMenu := nil;
end;

procedure TFrmMain.FiltrarFluxoDeCaixa;
var
  cont : integer;
begin
 with dmFinanceiro2 do
 begin
  QryFluxoCaixa.Close;
  QryFluxoCaixa.parambyname('cnpj').value := mtbFiltroCNPJ.value;
  QryFluxoCaixa.parambyname('data1').asDate := mtbFiltroDATA1.AsDateTime;
  QryFluxoCaixa.parambyname('data2').asDate := mtbFiltroDATA2.AsDateTime;
 // if (ckCheque.Checked) then
    QryFluxoCaixa.parambyname('cheque').value := 'S';
{  else
    QryFluxoCaixa.parambyname('cheque').value := 'N'; }

//  if (ckCartao.Checked) then
    QryFluxoCaixa.parambyname('cartao').value := 'S';
{  else
    QryFluxoCaixa.parambyname('cartao').value := 'N'; }

  QryFluxoCaixa.Open;
 end;
end;

procedure TFrmMain.tbsFluxoFinanceiroShow(Sender: TObject);
begin
 AtivaGrafico;
end;

procedure TFrmMain.tbsGeralShow(Sender: TObject);
begin
 cbEmpresa.SetFocus;
end;

procedure TFrmMain.ckReceberEfetivoClick(Sender: TObject);
begin
   AtivaGrafico;
end;

procedure TFrmMain.AtivaGrafico;
begin
   if ckReceberEfetivo.Checked then
  begin
    GraficoBarras.Series[0].Active := true ;
    GraficoLinhas.Series[0].Active := true ;
  end
  else
  begin
    GraficoBarras.Series[0].Active := false ;
    GraficoLinhas.Series[0].Active := false ;
  end;

  if ckReceberPrevisto.Checked then
  begin
    GraficoBarras.Series[1].Active := true ;
    GraficoLinhas.Series[1].Active := true ;
  end
  else
  begin
    GraficoBarras.Series[1].Active := false ;
    GraficoLinhas.Series[1].Active := false ;
  end;

  if ckPagarEfetivo.Checked then
  begin
    GraficoBarras.Series[2].Active := true ;
    GraficoLinhas.Series[2].Active := true ;
  end
  else
  begin
    GraficoBarras.Series[2].Active := false ;
    GraficoLinhas.Series[2].Active := false ;
  end;

  if ckPagarPrevisto.Checked then
  begin
    GraficoBarras.Series[3].Active := true ;
    GraficoLinhas.Series[3].Active := true ;
  end
  else
  begin
    GraficoBarras.Series[3].Active := false ;
    GraficoLinhas.Series[3].Active := false ;
  end;

  if ckSaldoEfetivo.Checked then
  begin
    GraficoBarras.Series[4].Active := true ;
    GraficoLinhas.Series[4].Active := true ;
  end
  else
  begin
    GraficoBarras.Series[4].Active := false ;
    GraficoLinhas.Series[4].Active := false ;
  end;

  if ckSaldoPrevisto.Checked then
  begin
    GraficoBarras.Series[5].Active := true ;
    GraficoLinhas.Series[5].Active := true ;
  end
  else
  begin
    GraficoBarras.Series[5].Active := false ;
    GraficoLinhas.Series[5].Active := false ;
  end;
end;

procedure TFrmMain.GridTVCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  if (GridTV.Controller.FocusedColumnIndex = 1 ) then  //receber previsto
  begin
     FrmFlxReceberPrevista := TFrmFlxReceberPrevista.Create(Self);
     FrmFlxReceberPrevista.ShowModal;
     FrmFlxReceberPrevista.free;
     FrmFlxReceberPrevista := nil;
  end
  else if (GridTV.Controller.FocusedColumnIndex =  2) then //receber efetivo
  begin
     FrmFlxReceberPrevista := TFrmFlxReceberPrevista.Create(Self);
     FrmFlxReceberPrevista.Caption := 'Contas à Receber Efetivas';
     FrmFlxReceberPrevista.pnlTitulo.caption := 'Contas à Receber Efetivas';
     FrmFlxReceberPrevista.DataSource.DataSet := dmFinanceiro2.QryFlxRecEfetivo;
     FrmFlxReceberPrevista.ShowModal;
     FrmFlxReceberPrevista.free;
     FrmFlxReceberPrevista := nil;
  end
  else if (GridTV.Controller.FocusedColumnIndex = 3) then //Pagar Previsto
  begin
     FrmFlxReceberPrevista := TFrmFlxReceberPrevista.Create(Self);
     FrmFlxReceberPrevista.Caption := 'Contas à Pagar Previstas';
     FrmFlxReceberPrevista.pnlTitulo.caption := 'Contas à Pagar Previstas';
     FrmFlxReceberPrevista.DataSource.DataSet := dmFinanceiro2.QryFlxPagarPrevistas;
     FrmFlxReceberPrevista.ShowModal;
     FrmFlxReceberPrevista.free;
     FrmFlxReceberPrevista := nil;
  end
  else if (GridTV.Controller.FocusedColumnIndex = 4) then //Pagar Efetivo
  begin
     FrmFlxReceberPrevista := TFrmFlxReceberPrevista.Create(Self);
     FrmFlxReceberPrevista.Caption := 'Contas à Pagar Efetivas';
     FrmFlxReceberPrevista.pnlTitulo.caption := 'Contas à Pagar Efetivas';
     FrmFlxReceberPrevista.DataSource.DataSet := dmFinanceiro2.QryFlxPagarEfetivo;
     FrmFlxReceberPrevista.ShowModal;
     FrmFlxReceberPrevista.free;
     FrmFlxReceberPrevista := nil;
  end
end;

procedure TFrmMain.pcFluxoCaixaChange(Sender: TObject);
begin
  ConfigGrafFluxoCaixa;
end;

procedure TFrmMain.ConfigGrafFluxoCaixa;
begin
  if (pcFluxoCaixa.ActivePageIndex = 0) then
    ConfigControleGrafico(GraficoBarras)
  else if (pcFluxoCaixa.ActivePageIndex = 1) then
    ConfigControleGrafico(GraficoLinhas);
end;

procedure TFrmMain.ConfigControleGrafico(Grafico: TDBChart);
begin
  ChartEditor.Chart := Grafico;
  ChartPreviewer.Chart := Grafico;
  TeeCommander.Panel := Grafico;
end;

procedure TFrmMain.GrafEfetuaConsulta(Force:Boolean=false);
var
  i : integer;
begin
   if (mtbFiltroCNPJ.asString = '') then
  begin
    Application.MessageBox('Defina a empresa','Aviso',mb_ok+mb_iconinformation);
    cbEmpresa.setfocus;
    exit;
  end;

  if (mtbFiltroDATA1.AsDateTime <= 0) then
  begin
    Application.MessageBox('Defina a data inicial','Aviso',mb_ok+mb_iconinformation);
    edtData1.SetFocus;
    exit;
  end;

  if (mtbFiltroDATA2.AsDateTime <= 0) then
  begin
    Application.MessageBox('Defina a data final','Aviso',mb_ok+mb_iconinformation);
    edtData2.SetFocus;
    exit;
  end;

  //financeiro
  if (pgcGraficos.ActivePageIndex = 0) then
  begin
    //fluxo de caixa
    if pcGraficoGrupoFinanceiro.ActivePageIndex = 0 then
    begin
      FiltrarFluxoDeCaixa;
      ConfigGrafFluxoCaixa;
    end  //contas à pagar
    else if pcGraficoGrupoFinanceiro.ActivePageIndex = 1 then
    begin
       //centro de custo
       if pgcContasPagar.ActivePageIndex = 0 then
       begin
         FiltrarConsulta(QryPagarCCusto,mtbFiltroDATA1.AsDateTime,mtbFiltroDATA2.AsDateTime,QryEmpresasCNPJ.AsString,force);
         ConfigControleGrafico(GrafCentroCusto);
       end else if pgcContasPagar.ActivePageIndex = 1 then
       begin
         FiltrarConsulta(QryPagarCredores,mtbFiltroDATA1.AsDateTime,mtbFiltroDATA2.AsDateTime,QryEmpresasCNPJ.AsString,force);
         ConfigControleGrafico(GrafPagarCredores);
       end
    end
    else if pcGraficoGrupoFinanceiro.ActivePageIndex = 2 then
    begin
       //Receber meses de vencimento
       if pgcContasReceber.ActivePageIndex = 0 then
       begin
         FiltrarConsulta(QryReceberMesVencto,mtbFiltroDATA1.AsDateTime,mtbFiltroDATA2.AsDateTime,QryEmpresasCNPJ.AsString,force);
         ConfigControleGrafico(GrafReceberMesesVenctos);
       end else if pgcContasReceber.ActivePageIndex = 1 then   //maiores devedores
       begin
         FiltrarConsulta(QryReceberDevedores,mtbFiltroDATA1.AsDateTime,mtbFiltroDATA2.AsDateTime,QryEmpresasCNPJ.AsString,force);
         ConfigControleGrafico(GrafReceberDevedores);
       end
    end
  end //Faturamento
  else if (pgcGraficos.ActivePageIndex = 1) then
  begin
    //metas de venda
    if pgcFaturamentos.ActivePageIndex = 0 then
    begin
       FiltrarConsulta(qryMetaVendedor,mtbFiltroDATA1.AsDateTime,mtbFiltroDATA2.AsDateTime,QryEmpresasCNPJ.AsString,force);
       begin
          for i := 0 to FrmMain.ComponentCount - 1 do
          begin
            if (FrmMain.Components[I] is Tchart) then
            begin
              if Tchart(FrmMain.Components[I]).Tag > 0 then
              begin
                 if qryMetaVendedor.Locate('SEQUENCIA',Tchart(FrmMain.Components[I]).Tag, [loCaseInsensitive]) then
                 begin
                   Tchart(FrmMain.Components[I]).Visible := true;
                   Tchart(FrmMain.Components[I]).Title.Text.Text := qryMetaVendedorNOME.AsString;
                   TCircularGauge(Tchart(FrmMain.Components[I]).Series[0]).Value := qryMetaVendedorINDICE.Value;
                 end
                 else if  Tchart(FrmMain.Components[I]).Tag = 100 then  //meta geral da empresa
                 begin
                   Tchart(FrmMain.Components[I]).Visible := true;
                   Tchart(FrmMain.Components[I]).Title.Text.Text := 'Meta Geral de Vendas';
                   TCircularGauge(Tchart(FrmMain.Components[I]).Series[0]).Value := qryMetaVendedorINDICE_GERAL.Value;
                 end
                 else
                   Tchart(FrmMain.Components[I]).Visible := false;
              end
            end;
          end;
       end
    end;
  end
end;

procedure TFrmMain.FiltrarConsulta(Dataset: TIBQuery; Data1, Data2: TDate;
  CNPJ: String;Force:Boolean=false);
begin
  if ((DataSet.State = dsInactive) or (force)) then
  begin
    DataSet.Close;
    DataSet.ParambyName('data1').asDate := Data1;
    DataSet.ParambyName('data2').asDate := Data2;
    DataSet.ParambyName('cnpj').value := cnpj;
    DataSet.Open;
  end;
end;

procedure TFrmMain.cbEmpresaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);

  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmMain.PgcMainPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
var
  perfil : variant;
begin

 //se usuario solicitar a aba, realizar verificações de permissão, liberar somente se for do perfil supervisor
 if (PgcMain.ActivePageIndex = 1) then
 begin
   if DMAPP.USR_CONECTADO = 0 then
   begin
   end;
  // perfil := RetornaValor('select u.perfil from sis_usuarios u where u.codigo = '+IntToStr(DMAPP.USR_CONECTADO);
 end

end;

procedure TFrmMain.PgcMainMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  FrmMain.PopupMenu := Pop;
end;

procedure TFrmMain.ContratoCidadeSinteticoClick(Sender: TObject);
begin
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'fRelClientesCidade', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If fRelClientesCidade = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;
       //
       fRelClientesCidade := TfRelClientesCidade.Create(Self);
       fRelClientesCidade.ShowModal;

       fRelClientesCidade.Free      ;
       fRelClientesCidade := Nil    ;
     End;
end;

procedure TFrmMain.btnCadCategoriasClick(Sender: TObject);
begin
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmClientesCategoria', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmClientesCategoria = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;

       FrmClientesCategoria    := TFrmClientesCategoria.Create(Self);
       FrmClientesCategoria.Showmodal ;

       FrmClientesCategoria.Free   ;
       FrmClientesCategoria := Nil ;
     End;
end;

procedure TFrmMain.OpRepresentanteClick(Sender: TObject);
begin
  If FrmMain.MDIChildCount > 1 Then
     Exit;
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmRepresentantes', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;
  { * * * * * }
  If FrmRepresentantes = Nil Then
     Begin
       //
       If FrmMain.MDIChildCount > 0 Then
          opFechar.OnClick(opFechar);
       //
       Application.ProcessMessages;

       FrmRepresentantes    := TFrmRepresentantes.Create(Self);
       FrmRepresentantes.Showmodal ;

       FrmRepresentantes.Free   ;
       FrmRepresentantes := Nil ;
     End;

end;

procedure TFrmMain.btnCaminhoClick(Sender: TObject);
begin
    GrafEfetuaConsulta(true);
end;

procedure TFrmMain.btnContratoCadClick(Sender: TObject);
begin
  if not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmContratoConstru', True)) then
    Exit;

  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  if FrmMain.MDIChildCount > 0 then
     opFechar.OnClick(opFechar);

  if FrmContratoConstru = nil  then
    FrmContratoConstru := TFrmContratoConstru.Create(Self);

  Application.ProcessMessages;
  PnlClient.Visible:= False;
  FrmContratoConstru.ShowModal;
end;

procedure TFrmMain.btnRelResumoContratoClick(Sender: TObject);
begin
   { * * * * * }
  If FrmMain.MDIChildCount > 1 Then
     Exit;

  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FRel_ContratoObra', True)) Then
     Exit;
  { * * * * * }
  If DMApp.SelecionarEmpresa = 'N' Then
     Exit;

  { * * * * * }
  If FRel_ContratoObra = Nil Then
  Begin
    //
    If FrmMain.MDIChildCount > 0 Then
      opFechar.OnClick(opFechar);

    Application.ProcessMessages;
    FRel_ContratoObra := TFRel_ContratoObra.Create(Self);
    FRel_ContratoObra.ShowModal;
  end;
end;


procedure TfrmMain.InitializeSkinList;
var
  AIndex: Integer;
begin
  with TcxComboBoxProperties(beSkinCombo.Properties) do
  begin
    Items.Clear;
    {Items.Add('Standard');
    Items.Add('Flat');
    Items.Add('Ultra Flat');
    Items.Add('Office 2003');
    Items.Add('Windows Theme')};

    dxSkinsPopulateSkinResources(HInstance, ResNames, SkinNames);
    AIndex := SkinNames.IndexOf(sdxDefaultUserSkinData);
    if AIndex >= 0 then
      SkinNames.Delete(AIndex);
    Items.AddStrings(SkinNames);

    SelectSkinName(dmApp.skinname{'Black'});
  end;
end;

procedure TfrmMain.SynchronizeLookAndFeel;

  procedure CheckNavBars;
  const
    NavBarViewStyle: array[TcxLookAndFeelKind] of Integer = (1, 0, 1, 13);
    NavPaneViewStyle: array[TcxLookAndFeelKind] of Integer = (8, 8, 9, 12);
  begin
    if dxSkinController.UseSkins then
    begin
      //dxNavPane.View := 14;
     // with TdxNavBarSkinExplorerBarPainter(dxNavPane.ViewStyle) do
     //   SkinName := dxSkinController.SkinName;
      //NavBar.View := 15;
      cxLookAndFeelController.SkinName := 'UserSkin';//dxSkinController.SkinName;
    end
    else
      if dxSkinController.NativeStyle then
      begin
        //dxNavPane.View := 11;
        //NavBar.View := 7;
      end
      else
      begin
        //dxNavPane.View := NavPaneViewStyle[dxSkinController.Kind];
        NavBar.View := NavBarViewStyle[dxSkinController.Kind];
      end;
  end;

begin
  CheckNavBars;
end;


procedure TfrmMain.SelectSkinName(const ASkinName: string);
var
  AIndex: Integer;
  AResource: TResourceStream;
begin
  dxSkinController.UseSkins := ASkinName <> '';
  dxSkinController.NativeStyle := False;
  beSkinCombo.EditValue := ASkinName;
  if dxSkinController.UseSkins then
  begin
    AIndex := SkinNames.IndexOf(ASkinName);
    if AIndex >= 0 then
    begin
      AResource := TResourceStream.Create(HInstance,
        ResNames.Strings[Integer(SkinNames.Objects[AIndex])],
        PChar(sdxResourceType));
      try
        dxSkinsUserSkinLoadFromStream(AResource, ASkinName);
      finally
        AResource.Free;
      end;
    end;
  end;
 SynchronizeLookAndFeel;
end;


procedure TfrmMain.WndProc(var Message: TMessage);
const
  KindMap: array[0..4] of TcxLookAndFeelKind =
   (lfStandard, lfFlat, lfUltraFlat, lfOffice11, lfStandard);
begin
  inherited WndProc(Message);
  if Message.Msg = WM_SETUPLOOKANDFEEL then
  begin
      dmApp.skinname := beSkinCombo.CurEditValue;
      SelectSkinName(beSkinCombo.CurEditValue);
  end;
end;

procedure TFrmMain.beSkinComboPropertiesChange(Sender: TObject);
begin
    if (Sender is TcxComboBox) and (TcxComboBox(Sender).ItemIndex >= 0) then
    PostMessage(Handle, WM_SETUPLOOKANDFEEL, TcxComboBox(Sender).ItemIndex, 0);
end;

end.


