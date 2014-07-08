  unit ConsultaCobrancas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Mask, Buttons, ExtCtrls,
   Db,  dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxDBTLCl,
  dxGrClms, dxEditor,
  dxExEdtr, dxEdLib, ComCtrls,  dxDBEdtr, dxDBELib,
  RDprint,   Grids, DBGrids, ppPrnabl, ppClass, ppStrtch, ppRichTx,
  ppCache, ppBands, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  ppVar, ppCtrls,  cxPropertiesStore, 
  dxTLClms, FileCtrl, dxmdaset, Variants, dxBar, dxBarDBNav, dxSkinsCore,
  dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Menus, ppParameter,
  cxButtons, cxLabel;
type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmManutencaoCobranca = class(TForm)
    Actions: TActionList;
    ActFechar: TAction;
    IMPRESSORA: TRDprint;
    ActAgendar: TAction;
    ActListar: TAction;
    ActAgendamentos: TAction;
    ActCartaSCPC: TAction;
    CARTA: TRDprint;
    ActInclusaoScpc: TAction;
    ActExclusaoSCPC: TAction;
    ActInclusaoCheque: TAction;
    ActNotificacao: TAction;
    ActRecNotificacao: TAction;
    ActListagemCobranca: TAction;
    ActCartaSCPCCheque: TAction;
    ActCartaSeed: TAction;
    ActAgendarAgrupado: TAction;
    DataSource: TDataSource;
    rptNotExtraJudicial: TppReport;
    ppDetailBand1: TppDetailBand;
    RichText: TppRichText;
    ppTitleBand1: TppTitleBand;
    lblEmpresa: TppLabel;
    ppLabel1: TppLabel;
    lblCidade: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppFooterBand1: TppFooterBand;
    lblEmpresa2: TppLabel;
    ppLabel3: TppLabel;
    lblEndereco: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    pnlClient: TPanel;
    ActFiltrar: TAction;
    mtbCobranca: TdxMemData;
    mtbCobrancaINDICE: TStringField;
    mtbCobrancaPORCENTAGEM: TBCDField;
    mtbCobrancaDATA: TDateField;
    mtbCobrancaULTIMA_BAIXA: TDateField;
    mtbCobrancaPESSOA_FJ: TIntegerField;
    mtbCobrancaNOME: TStringField;
    mtbCobrancaENDERECO: TStringField;
    mtbCobrancaNUMERO: TStringField;
    mtbCobrancaENDERECO_TRABALHO: TStringField;
    mtbCobrancaCIDADE: TStringField;
    mtbCobrancaBAIRRO: TStringField;
    mtbCobrancaCEP: TStringField;
    mtbCobrancaUF: TStringField;
    mtbCobrancaCOD_END: TIntegerField;
    mtbCobrancaCOD_CID: TIntegerField;
    mtbCobrancaCOD_BAI: TIntegerField;
    mtbCobrancaNUMERO_TRABALHO: TStringField;
    mtbCobrancaFONE: TStringField;
    mtbCobrancaFAX: TStringField;
    mtbCobrancaCELULAR: TStringField;
    mtbCobrancaLOCAL_TRABALHO: TStringField;
    mtbCobrancaFONE_TRABALHO: TStringField;
    mtbCobrancaCPF_CGC: TStringField;
    mtbCobrancaAGENDADO_PARA: TDateTimeField;
    mtbCobrancaCOBRAR_EM: TDateTimeField;
    mtbCobrancaMOTIVO: TStringField;
    mtbCobrancaHISTORICO: TStringField;
    mtbCobrancaCOBRADOR: TIntegerField;
    mtbCobrancaCONTPAGAS: TIntegerField;
    mtbCobrancaCONTAGENDAMENTOS: TIntegerField;
    mtbCobrancaNOME_COBRADOR: TStringField;
    mtbCobrancaRECEBER: TIntegerField;
    mtbCobrancaANO: TIntegerField;
    mtbCobrancaDOCTO: TStringField;
    mtbCobrancaORIGEM: TStringField;
    mtbCobrancaLANCAMENTO: TDateTimeField;
    mtbCobrancaVENDA: TIntegerField;
    mtbCobrancaSELECIONADO: TStringField;
    mtbCobrancaARQ_MORTO: TStringField;
    mtbCobrancaHR_COBRAR_EM: TTimeField;
    mtbCobrancaHR_COBRANCA: TTimeField;
    mtbCobrancaTOTAL: TFloatField;
    mtbCobrancajuros: TFloatField;
    mtbCobrancaSOMA: TBCDField;
    ppLayoutCartaSCPC: TppDBPipeline;
    ppConsulta_Cobranca_Pessoa: TppDBPipeline;
    rptCartaSCPC: TppReport;
    ppTitleBand2: TppTitleBand;
    ppLabel2: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLine4: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
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
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppLine5: TppLine;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    dsConsulta_Cobranca_Pessoa: TDataSource;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    RzPanel1: TPanel;
    lblCliente: TcxLabel;
    lblCobradorAtual: TcxLabel;
    lblIntervalo: TcxLabel;
    LblTitulo: TcxLabel;
    GRID: TdxDBGrid;
    GRIDSOMA: TdxDBGridMaskColumn;
    GRIDINDICE: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDULTIMA_BAIXA: TdxDBGridDateColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDENDERECO: TdxDBGridMaskColumn;
    GRIDNUMERO: TdxDBGridMaskColumn;
    GRIDENDERECO_TRABALHO: TdxDBGridMaskColumn;
    GRIDCIDADE: TdxDBGridMaskColumn;
    GRIDBAIRRO: TdxDBGridMaskColumn;
    GRIDCEP: TdxDBGridMaskColumn;
    GRIDUF: TdxDBGridMaskColumn;
    GRIDCOD_END: TdxDBGridMaskColumn;
    GRIDCOD_CID: TdxDBGridMaskColumn;
    GRIDCOD_BAI: TdxDBGridMaskColumn;
    GRIDNUMERO_TRABALHO: TdxDBGridMaskColumn;
    GRIDFONE: TdxDBGridMaskColumn;
    GRIDFAX: TdxDBGridMaskColumn;
    GRIDCELULAR: TdxDBGridMaskColumn;
    GRIDLOCAL_TRABALHO: TdxDBGridMaskColumn;
    GRIDFONE_TRABALHO: TdxDBGridMaskColumn;
    GRIDCPF_CGC: TdxDBGridMaskColumn;
    GRIDAGENDADO_PARA: TdxDBGridDateColumn;
    GRIDCOBRAR_EM: TdxDBGridDateColumn;
    GRIDMOTIVO: TdxDBGridMaskColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDCOBRADOR: TdxDBGridMaskColumn;
    GRIDCONTPAGAS: TdxDBGridMaskColumn;
    GRIDCONTAGENDAMENTOS: TdxDBGridMaskColumn;
    GRIDNOME_COBRADOR: TdxDBGridMaskColumn;
    GRIDRECEBER: TdxDBGridMaskColumn;
    GRIDANO: TdxDBGridMaskColumn;
    GRIDDOCTO: TdxDBGridMaskColumn;
    GRIDORIGEM: TdxDBGridMaskColumn;
    GRIDLANCAMENTO: TdxDBGridDateColumn;
    GRIDVENDA: TdxDBGridMaskColumn;
    GRIDARQ_MORTO: TdxDBGridMaskColumn;
    GRIDHR_COBRAR_EM: TdxDBGridTimeColumn;
    GRIDHR_COBRANCA: TdxDBGridTimeColumn;
    GRIDLOCAL_COBRANCA: TdxDBGridMaskColumn;
    pnlCampos: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    stgGrdCobr: TcxPropertiesStore;
    ActConfCampos: TAction;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    btnLocalizar: TdxBarButton;
    dxBarButton1: TdxBarButton;
    btnConfig: TdxBarButton;
    btnExpExcel: TdxBarButton;
    ActExportarExcel: TAction;
    SaveDialog: TSaveDialog;
    GRIDMULTA: TdxDBGridCurrencyColumn;
    GRIDVLR_NOMINAL: TdxDBGridCurrencyColumn;
    GRIDVLR_BAIXADO: TdxDBGridCurrencyColumn;
    GRIDSALDO_NOMINAL: TdxDBGridCurrencyColumn;
    GRIDJUROS: TdxDBGridCurrencyColumn;
    Panel4: TPanel;
    LblDataServidor: TcxLabel;
    RzBitBtn2: TcxButton;
    RzBitBtn3: TcxButton;
    RzBitBtn5: TcxButton;
    CkImp: TCheckBox;
    BtnCartaSCPC: TcxButton;
    BTNINCLUSAOSCPC: TcxButton;
    BtnExclusaoSCPC: TcxButton;
    BtnInclusaoCheque: TcxButton;
    BtnCartaJudicial: TcxButton;
    RzBitBtn1: TcxButton;
    RzBitBtn4: TcxButton;
    BtnCartaSCPCCheque: TcxButton;
    RzBitBtn6: TcxButton;
    procedure ActFecharExecute(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnOkClick(Sender: TObject);
    procedure EdClienteInicialButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure EdClienteInicialExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IMPRESSORANewPage(Sender: TObject; Pagina: Integer);
    procedure IMPRESSORABeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure EdClienteInicialEnter(Sender: TObject);
    procedure ActAgendarExecute(Sender: TObject);
    procedure ActListarExecute(Sender: TObject);
    procedure ActAgendamentosExecute(Sender: TObject);
    procedure GRIDCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActCartaSCPCExecute(Sender: TObject);
    procedure ActInclusaoScpcExecute(Sender: TObject);
    procedure ActExclusaoSCPCExecute(Sender: TObject);
    procedure ActInclusaoChequeExecute(Sender: TObject);
    procedure ActNotificacaoExecute(Sender: TObject);
    procedure ActRecNotificacaoExecute(Sender: TObject);
    procedure ActListagemCobrancaExecute(Sender: TObject);
    procedure ActCartaSCPCChequeExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActCartaSeedExecute(Sender: TObject);
    procedure ActFiltrarExecute(Sender: TObject);
    procedure CartaSCPC_PreImpresso;
    procedure CartaSCPC_Customizado;
    procedure GRIDHeaderMoved(Sender: TObject; Column: TdxTreeListColumn);
    procedure GRIDHideHeader(Sender: TObject; AColumn: TdxTreeListColumn);
    procedure GRIDShowHeader(Sender: TObject; AColumn: TdxTreeListColumn;
      BandIndex, RowIndex, ColIndex: Integer);
    procedure ActConfCamposExecute(Sender: TObject);
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TLCustomizeStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure ActExportarExcelExecute(Sender: TObject);

  private
    { Private declarations }
    DragNode: TdxTreeListNode;
    CobExtraJud : string;
    Procedure Imprime ;
    Procedure ImprimeCobranca ;
    procedure Seleciona ;
    procedure IncLinCobr;
    procedure Synchronize;
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public

    Opcao: String ;
    CodCobrador: Integer;
    NomeLocal : String;
    NomeCobrador: String;
    NomeCliente: String;
    DtInicial: TDate;
    DtFinal: TDate;

    //VARIAVEIS PARA LANCAMENTO DAS COBRANCAS
    PESSOA_FJ, CODRECEBER, ANORECEBER: INTEGER ;
    Origem: String;
    { Public declarations }
  end;


var
  FrmManutencaoCobranca: TFrmManutencaoCobranca;
  INI, FIM: Integer;
  AUX, STR: String;
  Inicial, Final: Integer ;
  Pagina : Integer ;
  Lin :integer;
implementation

uses
    Application_DM,
    Funcoes,
    Main,
    Listagens_DM,
    Localizar_Cliente,
    Financeiro_Dm,
    Empresas_DM,
    Agendamento_Cobranca_Form,
    Ver_Agendamentos_Cobranca_Form,
    ConsultaCobrancas_Pessoa_Form,
    Entra_Dados_Cheques_Form, Usuarios_DM,
    Filtra_Cobranca_Form, Cadastros_Dm2, SerieCustomizaveis_DM,
  OrdemCarga_DM;

{$R *.DFM}

procedure TFrmManutencaoCobranca.ActFecharExecute(Sender: TObject);
begin
  close ;
end;

procedure TFrmManutencaoCobranca.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  If (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmManutencaoCobranca.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Diretorio : string;
begin
  if MessageDlg('Deseja Sair da Consulta?', mtConfirmation, [mbOK, mbCancel], 0) = MROK then
  begin
    if DmFinanceiro.SelPessoasFj.Active then
      DmFinanceiro.SelPessoasFj.Close ;
    Frm_Localizar_Cliente.Free   ;
    Frm_Localizar_Cliente := Nil ;
    DMFinanceiro.Consulta_Cobranca.close ;
    DMFinanceiro.SelPessoasFJ.Close ;
    Action := caFree;
    FrmManutencaoCobranca := Nil;
    FrmMain.PnlClient.Visible := True;
  end
  else
    Action := Canone ;

  Diretorio := 'C:\Sistemas\HelpStore\FILTROS';
  if not DirectoryExists(Diretorio) then
  begin
    ForceDirectories(Diretorio);
    MessageDlg('Foi criado uma pasta de Filtros: '+Diretorio, mtInformation, [mbOK], 0);
  end;
  SavedbGridFilterToFile('C:\Sistemas\HelpStore\filtros\FiltroGrdCbr.txt',Grid.Filter);
end;

procedure TFrmManutencaoCobranca.BtnOkClick(Sender: TObject);
begin
  SELECIONA;
  GRID.SETFOCUS;
end;

procedure TFrmManutencaoCobranca.IMPRIME;
var
  IMP, STR :STRING;
  TOTAL, TOTALGERAL :Real ;
  JUROS, JUROSGERAL :Real ;
  SOMA, SOMAGERAL :Real ;
  ULTCLIENTE :Integer  ;
  Cont :Integer  ;
begin
  PAGINA := 1;
  Lin := 5;
  ULTCLIENTE := 0;
  IMPRESSORA.TitulodoRelatorio := 'LISTAGEM DE COBRANCAS';
  IMPRESSORA.ABRIR;
  with DMFINANCEIRO do
  begin
    TOTAL := 0;//TOTAL DO CLIENTE
    TOTALGERAL := 0;//TOTAL DAS CONTAS
    JUROS := 0;
    JUROSGERAL := 0;
    SOMA := 0;
    SOMAGERAL := 0;
    IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE
    Consulta_Cobranca.DisableControls ;
    Consulta_Cobranca.First ;
    Cont := 0;
    while not Consulta_Cobranca.Eof do
    begin
      if not CkImp.Checked then
        inclincobr;
      if IMP = 'N' then
      begin
        inclincobr;
        IMPRESSORA.impf(Lin, 01, copy(INTTOSTR(Consulta_CobrancaPESSOA_FJ.Value )+ '-' + Consulta_CobrancaNOME.VALUE,1,32) , [comp17]);
        IMPRESSORA.impf(Lin, 20, Consulta_CobrancaFONE.value , [comp17]);
        IMPRESSORA.impf(Lin, 26, Consulta_CobrancaCELULAR.value , [comp17]);
        IMPRESSORA.impf(Lin, 32, Consulta_CobrancaFONE_TRABALHO.value , [comp17]);
        IMPRESSORA.impf(Lin, 38, copy(Consulta_CobrancaLOCAL_TRABALHO.value,1,20) , [comp17]);
        IMPRESSORA.impf(Lin, 55, Consulta_CobrancaDATA.TEXT , [comp17]);
        IMP := 'S' ;
        //ULTIMO CODIGO IMPRESSO
        ULTCLIENTE := Consulta_CobrancaPESSOA_FJ.VALUE ;
        TOTAL := 0;//TOTAL DA DATA
        JUROS := 0;
        SOMA  := 0;
      end;
      if not CkImp.Checked then
      begin
        //VALOR
        STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_CobrancaSOMA.Value );
        while LENGTH(STR) < 10 do
          STR := ' ' + STR ;
        IMPRESSORA.impf(Lin, 61, STR ,[comp17]);
        //JUROS
        STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_CobrancaJUROS.Value );
        while LENGTH(STR) < 8 do
          STR := ' ' + STR ;
        IMPRESSORA.impf(Lin, 69, STR ,[comp17]);
        //TOTAL
        STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_CobrancaSoma.Value );
        while LENGTH(STR) < 10 do
          STR := ' ' + STR ;
        IMPRESSORA.impf(Lin, 75, STR ,[comp17]);
      end;
      JUROS := JUROS  + Consulta_CobrancaJUROS.Value;
      JUROSGERAL := JUROSGERAL  + Consulta_CobrancaJUROS.Value;
      SOMA := SOMA  + Consulta_CobrancaSOMA.Value;
      SOMAGERAL := SOMAGERAL  + Consulta_CobrancaSOMA.Value;
      TOTAL := TOTAL + Consulta_CobrancaSoma.Value;
      TOTALGERAL := TOTALGERAL + Consulta_CobrancaSoma.Value;
      Consulta_Cobranca.NEXT ;
      Cont := Cont + 1;
      if ((ULTCLIENTE <> Consulta_CobrancaPESSOA_FJ.VALUE) and (not Consulta_Cobranca.EOF)) then
      begin
        if not CkImp.Checked then
          inclincobr;
        if not CkImp.Checked then
        begin
           IMPRESSORA.impf(Lin,61, '----------' ,[comp17]); //-=-
           IMPRESSORA.impf(Lin,69, '----------' ,[comp17]); //-=-
           IMPRESSORA.impf(Lin,75, '----------' ,[comp17]); //-=-
           inclincobr;
           IMPRESSORA.impf(Lin,50, ' TOTAL' ,[comp17]);

        end;
        //VALOR
        STR :=  FORMATFLOAT ('###,###,##0.00', SOMA );
        while LENGTH(STR) < 10 do
          STR := ' ' + STR ;
        IMPRESSORA.impf(Lin, 61, STR ,[comp17]);
        //JUROS
        STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );
        while LENGTH(STR) < 8 do
          STR := ' ' + STR ;
        IMPRESSORA.impf(Lin, 69, STR ,[comp17]);
        STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );
        while LENGTH(STR) < 10 do
          STR := ' ' + STR ;
        IMPRESSORA.impf(Lin,75, STR ,[comp17]);
        IMP := 'N' ;
      end
      else
      begin
        if (Consulta_Cobranca.EOF) then
        begin
          if not CkImp.Checked then
            inclincobr;
          if not CkImp.Checked then
          begin
             IMPRESSORA.impf(Lin, 61, '----------' ,[comp17]);  //-=-
             IMPRESSORA.impf(Lin, 69, '----------' ,[comp17]);  //-=-
             IMPRESSORA.impf(Lin, 75, '----------' ,[comp17]);  //-=-
             inclincobr;
             IMPRESSORA.impf(Lin, 60, ' TOTAL' ,[comp17]);
          end;
          //VALOR
          STR := FORMATFLOAT ('###,###,##0.00', SOMA);
          while LENGTH(STR) < 10 do
            STR := ' ' + STR ;
          IMPRESSORA.impf(Lin, 61, STR ,[comp17]);
          //JUROS
          STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );
          while LENGTH(STR) < 8 do
            STR := ' ' + STR;
          IMPRESSORA.impf(Lin, 69, STR ,[comp17]);
          STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );
          while LENGTH(STR) < 10 do
            STR := ' ' + STR ;
          IMPRESSORA.impf(Lin, 75, STR ,[comp17]);
          IMP := 'N' ;
        end;
      end;
    end;
    inclincobr;
    IMPRESSORA.impf(Lin, 61, '----------' ,[comp17]); //-=-
    IMPRESSORA.impf(Lin, 69, '----------' ,[comp17]); //-=-
    IMPRESSORA.impf(Lin, 75, '----------' ,[comp17]); //-=-
    inclincobr;
    IMPRESSORA.impf(Lin, 01, 'RELACIONADOS ' + INTTOSTR(CONT) ,[comp17]);
    IMPRESSORA.impf(Lin, 50, ' TOTAL GERAL ' ,[comp17]);
    //VALOR
    STR :=  FORMATFLOAT ('###,###,##0.00', SOMAGERAL );
    while LENGTH(STR) < 10 do
      STR := ' ' + STR ;
    IMPRESSORA.impf(Lin, 61, STR ,[comp17]);
    //JUROS
    STR :=  FORMATFLOAT ('###,###,##0.00', JUROSGERAL );
    while LENGTH(STR) < 8 do
      STR := ' ' + STR ;
    IMPRESSORA.impf(Lin, 69, STR ,[comp17]);
    STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );
    while LENGTH(STR) < 10 do
      STR := ' ' + STR ;
    IMPRESSORA.impf(Lin, 75, STR ,[comp17]);
    inclincobr;
    inclincobr;
    inclincobr;
    inclincobr;
    IMPRESSORA.impf(Lin, 01, '_______________________________' ,[comp17]);
    inclincobr;
    IMPRESSORA.impf(Lin, 01, 'COBRADOR' ,[comp17]);
    Consulta_Cobranca.EnableControls ;
    IMPRESSORA.FECHAR;
  end;
end;

procedure TFrmManutencaoCobranca.IMPRIMECOBRANCA;
var
   IMP, STR : STRING;
   TOTAL, TOTALGERAL: Real;
   JUROS, JUROSGERAL: Real;
   SOMA, SOMAGERAL : Real;
   ULTCLIENTE : Integer;
   Cont, Coluna, PARCELAS : Integer;
begin
  PAGINA := 1;
  Lin := 5;
  ULTCLIENTE := 0;
  IMPRESSORA.TitulodoRelatorio := 'LISTAGEM DE COBRANCA EXTERNA ' + NomeCobrador ;
  IMPRESSORA.ABRIR;
  with DMFINANCEIRO do
  begin
    TOTAL := 0;//TOTAL DO CLIENTE
    TOTALGERAL := 0;//TOTAL DAS CONTAS
    JUROS := 0;
    JUROSGERAL := 0;
    SOMA := 0;
    SOMAGERAL := 0;
    IMP := 'N'; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE
    Consulta_Cobranca.DisableControls;

    Consulta_Cobranca.First;
    Cont := 0;
    Coluna := 1;
    while not Consulta_Cobranca.Eof do
    begin
      if ((not CkImp.Checked) and (Coluna = 1)) then
         inclincobr;

      if IMP = 'N' then
      begin
        inclincobr;
        IMPRESSORA.impf(lin-1,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);
        inclincobr;
        IMPRESSORA.impf(Lin, 01, copy(INTTOSTR(Consulta_CobrancaPESSOA_FJ.Value)+ '-' + Consulta_CobrancaNOME.VALUE,1,45) , [comp17]);
        IMPRESSORA.impf(Lin, 25, Consulta_CobrancaFONE.value , [comp17]);
        IMPRESSORA.impf(Lin, 33, Consulta_CobrancaCELULAR.value , [comp17]);
        IMPRESSORA.impf(Lin, 41, Consulta_CobrancaFONE_TRABALHO.value , [comp17]);
        IMPRESSORA.impf(Lin, 48, copy(Consulta_CobrancaLOCAL_TRABALHO.value,1,20) , [comp17]);
        IMP := 'S' ;
        inclincobr;
        IMPRESSORA.impf(Lin, 01, Consulta_CobrancaENDERECO.Value + ' N ' + Consulta_CobrancaNUMERO.Value + ' BAIRRO ' + Consulta_CobrancaBAIRRO.Value , [comp17]);
        IMPRESSORA.impf(Lin, 45, Consulta_CobrancaENDERECO_TRABALHO.Value + ' N ' + Consulta_CobrancaNUMERO_TRABALHO.Value, [comp17]);
        IMPRESSORA.impf(Lin, 73, Consulta_CobrancaCOBRAR_EM.TEXT , [comp17]);
        inclincobr;
        //ULTIMO CODIGO IMPRESSO
        ULTCLIENTE := Consulta_CobrancaPESSOA_FJ.VALUE ;
        TOTAL := 0;//TOTAL DA DATA
        JUROS := 0;
        SOMA := 0;
        COLUNA := 1;
        PARCELAS := 0;
      end;
      if (COLUNA = 1) then
      begin
        PARCELAS := PARCELAS + 1;
        IMPRESSORA.impf(Lin, 01, Consulta_CobrancaDATA.TEXT , [comp17]);
        //VALOR
        STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_CobrancaSOMA.Value);
        while LENGTH(STR) < 10 do
          STR := ' ' + STR ;
        IMPRESSORA.impf(Lin, 07, STR ,[comp17]);
        //JUROS
        STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_CobrancaJUROS.Value );
        while LENGTH(STR) < 8 do
          STR := ' ' + STR ;
        IMPRESSORA.impf(Lin, 15, STR ,[comp17]);
        //TOTAL
        STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_CobrancaSoma.Value );
        while LENGTH(STR) < 10 do
          STR := ' ' + STR ;
        IMPRESSORA.impf(Lin, 21, STR ,[comp17]);
        JUROS := JUROS  + Consulta_CobrancaJUROS.Value;
        JUROSGERAL := JUROSGERAL  + Consulta_CobrancaJUROS.Value;
        SOMA := SOMA  + Consulta_CobrancaSOMA.Value;
        SOMAGERAL := SOMAGERAL  + Consulta_CobrancaSOMA.Value;
        TOTAL := TOTAL + Consulta_CobrancaSoma.Value;
        TOTALGERAL := TOTALGERAL + Consulta_CobrancaSoma.Value;
        COLUNA := 2;
      end
      else
      begin
        if (COLUNA = 2) then
        begin
          PARCELAS := PARCELAS + 1;
          IMPRESSORA.impf(Lin, 28, Consulta_CobrancaDATA.TEXT , [comp17]);
          //VALOR
          STR :=  FORMATFLOAT('###,###,##0.00',Consulta_CobrancaSOMA.Value );
          while LENGTH(STR) < 10 do
            STR := ' ' + STR ;
          IMPRESSORA.impf(Lin, 34, STR ,[comp17]);
          //JUROS
          STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_CobrancaJUROS.Value );
          while LENGTH(STR) < 8 do
            STR := ' ' + STR ;
          IMPRESSORA.impf(Lin, 42, STR ,[comp17]);
          //TOTAL
          STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_CobrancaSoma.Value );
          while LENGTH(STR) < 10 do
            STR := ' ' + STR;
          IMPRESSORA.impf(Lin, 48, STR ,[comp17]);
          JUROS := JUROS  + Consulta_CobrancaJUROS.Value;
          JUROSGERAL := JUROSGERAL  + Consulta_CobrancaJUROS.Value;
          SOMA := SOMA  + Consulta_CobrancaSOMA.Value;
          SOMAGERAL := SOMAGERAL  + Consulta_CobrancaSOMA.Value;
          TOTAL := TOTAL + Consulta_CobrancaSoma.Value;
          TOTALGERAL := TOTALGERAL + Consulta_CobrancaSoma.Value;
          COLUNA := 3;
        end
        else
        begin
          PARCELAS := PARCELAS + 1;
          IMPRESSORA.impf(Lin, 55, Consulta_CobrancaDATA.TEXT , [comp17]);
          //VALOR
          STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_CobrancaSOMA.Value );
          while LENGTH(STR) < 10 do
            STR := ' ' + STR ;
          IMPRESSORA.impf(Lin, 61, STR ,[comp17]);
          //JUROS
          STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_CobrancaJUROS.Value );
          while LENGTH(STR) < 8 do
            STR := ' ' + STR ;
          IMPRESSORA.impf(Lin, 69, STR ,[comp17]);
          //TOTAL
          STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_CobrancaSoma.Value );
          while LENGTH(STR) < 10 do
            STR := ' ' + STR ;
          IMPRESSORA.impf(Lin, 75, STR ,[comp17]);
          JUROS := JUROS  + Consulta_CobrancaJUROS.Value;
          JUROSGERAL := JUROSGERAL  + Consulta_CobrancaJUROS.Value;
          SOMA := SOMA  + Consulta_CobrancaSOMA.Value;
          SOMAGERAL := SOMAGERAL  + Consulta_CobrancaSOMA.Value;
          TOTAL := TOTAL + Consulta_CobrancaSoma.Value;
          TOTALGERAL := TOTALGERAL + Consulta_CobrancaSoma.Value;
          COLUNA := 1;
        end;
      end;
      Consulta_Cobranca.NEXT ;
      Cont := Cont + 1;
      if (ULTCLIENTE <> Consulta_CobrancaPESSOA_FJ.VALUE) then
      begin
        IMP := 'N';
//        if (PARCELAS = 1) then
//        begin
          inclincobr;
//          IMPRESSORA.impf(lin+5,01,'0---------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);
//        end;
      end;
      if ((ULTCLIENTE <> Consulta_CobrancaPESSOA_FJ.VALUE) and (not Consulta_Cobranca.EOF) and (PARCELAS > 1)) then
      begin
//        if not CkImp.Checked then
//          inclincobr;
        if not CkImp.Checked then
        begin
          IMPRESSORA.impf(Lin,61, '----------' ,[comp17]);
          IMPRESSORA.impf(Lin,69, '----------' ,[comp17]);
          IMPRESSORA.impf(Lin,75, '----------' ,[comp17]);
          inclincobr;
          IMPRESSORA.impf(Lin,50, ' TOTAL' ,[comp17]);
        end;
        //VALOR
        STR :=  FORMATFLOAT ('###,###,##0.00', SOMA );
        while LENGTH(STR) < 10 do
          STR := ' ' + STR ;
        IMPRESSORA.impf(Lin, 61, STR ,[comp17]);
        //JUROS
        STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );
        while LENGTH(STR) < 8 do
          STR := ' ' + STR ;
        IMPRESSORA.impf(Lin, 69, STR ,[comp17]);
        STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );
        while LENGTH(STR) < 10 do
          STR := ' ' + STR ;
        IMPRESSORA.impf(Lin,75, STR ,[comp17]);
        inclincobr;
        IMP := 'N';
      end
      else
      begin
        if (Consulta_Cobranca.EOF) AND (PARCELAS > 1) then
        begin
//          if not CkImp.Checked then
//            inclincobr;
          if not CkImp.Checked then
          begin
            IMPRESSORA.impf(Lin, 61, '----------' ,[comp17]);
            IMPRESSORA.impf(Lin, 69, '----------' ,[comp17]);
            IMPRESSORA.impf(Lin, 75, '----------' ,[comp17]);
            inclincobr;
            IMPRESSORA.impf(Lin, 60, ' TOTAL' ,[comp17]);
          end;
          //VALOR
          STR :=  FORMATFLOAT ('###,###,##0.00', SOMA );
          while LENGTH(STR) < 10 do
            STR := ' ' + STR ;
          IMPRESSORA.impf(Lin, 61, STR ,[comp17]);
          //JUROS
          STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );
          while LENGTH(STR) < 8 do
            STR := ' ' + STR ;
          IMPRESSORA.impf(Lin, 69, STR ,[comp17]);
          STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );
          while LENGTH(STR) < 10 do
            STR := ' ' + STR ;
          IMPRESSORA.impf(Lin, 75, STR ,[comp17]);
          inclincobr;
          IMP := 'N' ;
        end;
      end;
    end;
    inclincobr;
    IMPRESSORA.impf(Lin, 61, '----------' ,[comp17]);
    IMPRESSORA.impf(Lin, 69, '----------' ,[comp17]);
    IMPRESSORA.impf(Lin, 75, '----------' ,[comp17]);
    inclincobr;
    IMPRESSORA.impf(Lin, 01, 'RELACIONADOS ' + INTTOSTR(CONT) ,[comp17]);
    IMPRESSORA.impf(Lin, 50, ' TOTAL GERAL ' ,[comp17]);
    //VALOR
    STR :=  FORMATFLOAT ('###,###,##0.00', SOMAGERAL );
    while LENGTH(STR) < 10 do
      STR := ' ' + STR ;
    IMPRESSORA.impf(Lin, 61, STR ,[comp17]);
    //JUROS
    STR :=  FORMATFLOAT ('###,###,##0.00', JUROSGERAL );
    while LENGTH(STR) < 8 do
      STR := ' ' + STR ;
    IMPRESSORA.impf(Lin, 69, STR ,[comp17]);
    STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );
    while LENGTH(STR) < 10 do
      STR := ' ' + STR ;
    IMPRESSORA.impf(Lin, 75, STR ,[comp17]);
    inclincobr;
    inclincobr;
    inclincobr;
    inclincobr;
    IMPRESSORA.impf(Lin, 01, '_______________________________' ,[comp17]);
    inclincobr;
    IMPRESSORA.impf(Lin, 01, 'COBRADOR' ,[comp17]);
    Consulta_Cobranca.EnableControls ;
    IMPRESSORA.FECHAR;
  end;
end;

procedure TFrmManutencaoCobranca.EdClienteInicialButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
  try
    Frm_Localizar_Cliente.DSource.DataSet := DmFinanceiro.SelPessoasFJ;
    if ( Frm_Localizar_Cliente.showmodal = mrOk ) then
      //EdClienteInicial.TEXT := IntToStr(Frm_Localizar_Cliente.CampTrecho);
  except
    Application.HandleException(self);
  end;
end;

procedure TFrmManutencaoCobranca.Seleciona ;
var
   Cont, Cont2: Integer;
   sSql : string;
begin
  with TfrmFiltraCobranca.create(Self) do
  begin
      showmodal;
      if not(modalresult = mrOk) then
        exit;

      if Rd2.Checked then
        lblIntervalo.caption := 'Intervalo: '+DateToStr(DtInicial)+' - '+TimeToStr(tedtCobrar.time)+' à '+DateToStr(DtFinal)+' - '+TimeToStr(tedtCobrado.time)
      else
        lblIntervalo.caption := 'Intervalo: '+DatetoStr(DtInicial)+' à '+DateToStr(DtFinal);

      lblCobradorAtual.caption := 'Cobrador: '+NomeCobrador;
      lblCliente.caption := 'Cliente: '+NomeCliente;

      with DMFINANCEIRO do
      begin
         sSql := ' SELECT  * FROM CONSULTA_COBRANCA (:CNPJ, :INI, :FIM,:DT_CX) ';

        if dmCadastros2.SelCobradorINTERNO.VALUE = 'S' then
          sSql := sSql + ' where ((COBRADOR IS NULL) or (COBRADOR = '+inttostr(CodCobrador)+'))'
        else if (CodCobrador > 0) then
          sSql := sSql +' Where  COBRADOR = '+inttostr(CodCobrador);


        sSql := sSql +Filtro+' ORDER BY NOME, PESSOA_FJ, AGENDADO_PARA  ';

        Consulta_Cobranca.Close;
        Consulta_Cobranca.SQL.text := sSql;
        Consulta_Cobranca.ParamByName ('CNPJ').asString := dmApp.cnpj;
        Consulta_Cobranca.ParamByName ('INI').AsDate := DtInicial ;
        Consulta_Cobranca.ParamByName ('FIM').AsDate := DtFinal;
        Consulta_Cobranca.ParamByName ('DT_CX').AsDate := dmApp.Data_Servidor;
        Consulta_Cobranca.Open;

      end;
      free;
  end;
  //----------------Setando labels----------------//

end;


procedure TFrmManutencaoCobranca.IncLincobr;
begin
  Lin := Lin + 1;
  if Lin > 60 then
    Impressora.NovaPagina ;
end;

procedure TFrmManutencaoCobranca.EdClienteInicialExit(Sender: TObject);
begin
  //TROCA A COR PARA A COR SELECIONADA
  TiraCorFundo(sender);
end;

procedure TFrmManutencaoCobranca.FormShow(Sender: TObject);
begin
  IniciaComponentes(Self as TForm);
  Frm_Localizar_Cliente := TFrm_Localizar_Cliente.Create(Self);
  seleciona;
  CobExtraJud := RichText.RichText;
end;

procedure TFrmManutencaoCobranca.IMPRESSORANewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  IMPRESSORA.impf(01,01,'===============================================================================',[Normal]);
  if (NomeLocal = '') then
    IMPRESSORA.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO])
  else
    IMPRESSORA.impf(02,01, DMFINANCEIRO.Local_CobrancaNOME.VALUE, [NORMAL,NEGRITO]);
  IMPRESSORA.impf(03,01,IMPRESSORA.TitulodoRelatorio,[Normal]);
  IMPRESSORA.impf(03,45,'DATA: '+ DATETIMETOSTR(DATE),[Normal]);
  IMPRESSORA.impf(03,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
  IMPRESSORA.impf(04,01,'===============================================================================',[Normal]);
  IMPRESSORA.impf(05,01,'LANCAMENTO = ' + DateToStr(DtInicial) + ' A ' + DateToStr(DtFinal) , [Normal]);
  IMPRESSORA.impf(06,01,'PESSOA',[COMP17]);
  IMPRESSORA.impf(06,35,'       VALOR',[COMP17]);
  inc(pagina);
  Lin  := 7;
end;

procedure TFrmManutencaoCobranca.IMPRESSORABeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  IMPRESSORA.impf(63,01,'===============================================================================',[normal]);
  IMPRESSORA.impf(64,01,dmApp.QryParceiroPARC_TEXTO_RELATORIO.AsString,[comp17,italico]);
   
end;

procedure TFrmManutencaoCobranca.EdClienteInicialEnter(Sender: TObject);
begin
  CorFundo(Sender);
end;

procedure TFrmManutencaoCobranca.ActAgendarExecute(Sender: TObject);
var
   x : integer;
   Data, Hora: String;
   Agendou, Agendar:Boolean;
begin
  if GRID.SelectedCount <= 0 then
  begin
    application.messagebox('Selecione uma cobrança','Avise',mb_iconinformation + mb_ok );
    exit;
  end;

  mtbCobranca.Open;
  if not mtbCobranca.IsEmpty then
   mtbCobranca.data.Values.Clear;

  for x:=0 to Grid.Count - 1 do
  begin
   // if Grid.Items[X].Selected then
    if GridSOMA.TreeList.Items[x].Selected then
    begin
      mtbCobranca.append;
      mtbCobrancaSOMA.value := strToFloat(stringReplace(GridSOMA.TreeList.Items[x].Strings[GridSOMA.index],'.','',[rfReplaceAll]));
      Data := GridDATA.TreeList.Items[x].Strings[GridDATA.index];
      if ((Data <> '') and (Data <> '00/00/0000')) then
        mtbCobrancaDATA.asDateTime := StrToDate(Data);

      mtbCobrancaPESSOA_FJ.value := StrToInt(GridPESSOA_FJ.TreeList.Items[x].Strings[GridPESSOA_FJ.index]);

      Data := GridULTIMA_BAIXA.TreeList.Items[x].Strings[GridULTIMA_BAIXA.index];
      if ((Data <> '') and (Data <> '00/00/0000')) then
        mtbCobrancaULTIMA_BAIXA.asDateTime := StrToDate(Data);

      mtbCobrancaNOME.value := GridNOME.TreeList.Items[x].Strings[GridNOME.index];
      mtbCobrancaFONE.value := GRIDFONE.TreeList.Items[x].Strings[GRIDFONE.index];
      mtbCobrancaFAX.value := GridFAX.TreeList.Items[x].Strings[GridFAX.index];
      mtbCobrancaCELULAR.value := GridCELULAR.TreeList.Items[x].Strings[GridCELULAR.index];
      mtbCobrancaLOCAL_TRABALHO.value := GRIDLOCAL_TRABALHO.TreeList.Items[x].Strings[GRIDLOCAL_TRABALHO.index];
      mtbCobrancaFONE_TRABALHO.value := GridFONE_TRABALHO.TreeList.Items[x].Strings[GridFONE_TRABALHO.index];
      mtbCobrancaCPF_CGC.value := GridCPF_CGC.TreeList.Items[x].Strings[GridCPF_CGC.index];

      Data := GRIDcobrar_em.TreeList.Items[x].Strings[GRIDcobrar_em.index];
      if ((Data <> '') and (Data <> '00/00/0000')) then
        mtbCobrancaCOBRAR_EM.value := StrToDate(Data);

      Data := GridAGENDADO_PARA.TreeList.Items[x].Strings[GridAGENDADO_PARA.index];
      if ((Data <> '') and (Data <> '00/00/0000')) then
        mtbCobrancaAGENDADO_PARA.value := StrToDate(Data);

      mtbCobrancaRECEBER.value := StrToInt(GRIDRECEBER.TreeList.Items[x].Strings[GRIDRECEBER.index]);
      mtbCobrancaMOTIVO.value := GRIDMOTIVO.TreeList.Items[x].Strings[GRIDMOTIVO.index];
      mtbCobrancaORIGEM.value := GRIDORIGEM.TreeList.Items[x].Strings[GRIDORIGEM.index]; ;
      mtbCobrancaANO.value := StrToInt(GRIDANO.TreeList.Items[x].Strings[GRIDANO.index]);
      if  GRIDVENDA.TreeList.Items[x].Strings[GRIDVENDA.index] <> '' then
        mtbCobrancaVENDA.value := StrToInt(GRIDVENDA.TreeList.Items[x].Strings[GRIDVENDA.index]);

      mtbCobrancaARQ_MORTO.value := GRIDARQ_MORTO.TreeList.Items[x].Strings[GRIDARQ_MORTO.index];

      Hora := GRIDHR_COBRAR_EM.TreeList.Items[x].Strings[GRIDHR_COBRAR_EM.index];
      if (Hora <> '') then
        mtbCobrancaHR_COBRAR_EM.value := StrToTime(Hora);

      Hora := GRIDHR_COBRANCA.TreeList.Items[x].Strings[GRIDHR_COBRANCA.index];
      if (Hora <> '') then
        mtbCobrancaHR_COBRANCA.value := StrToTime(Hora);

      mtbCobranca.post;
    end;
  end;

  if (mtbCobranca.recordcount <= 0) then
  begin
    Application.messagebox('Desagrupe os registros para realizar os agendamentos','Aviso',mb_ok + mb_iconerror);
    exit;
  end;

  PESSOA_FJ   := GRIDPESSOA_FJ.Field.Value ;
  CODRECEBER  := GRIDRECEBER.Field.Value ;
  ANORECEBER  := GRIDANO.Field.Value ;
  ORIGEM      := GRIDORIGEM.Field.Value ;

  if FrmAgendamentoCobranca = nil then
  begin
    FrmAgendamentoCobranca := TFrmAgendamentoCobranca.Create(Self);
    FrmAgendamentoCobranca.Inicial := DtInicial;
    FrmAgendamentoCobranca.Final := Dtfinal;
    FrmAgendamentoCobranca.Data_Servidor := dmapp.Data_Servidor;
    FrmAgendamentoCobranca.EDNOME.TEXT := NomeCobrador;

    Agendou := false ;

    If FrmAgendamentoCobranca.Showmodal = MrOk then
      Agendou := true ;


    FrmAgendamentoCobranca.Free;
    FrmAgendamentoCobranca := nil;
  end;

  if Agendou then
  begin
    DmFinanceiro.Consulta_Cobranca.Close;
    seleciona;
  end;

  GRID.SetFocus;
end;

procedure TFrmManutencaoCobranca.ActListarExecute(Sender: TObject);
begin
  if DmFINANCEIRO.Consulta_Cobranca.RecordCount > 0 then
    IMPRIME;
end;

procedure TFrmManutencaoCobranca.ActAgendamentosExecute(Sender: TObject);
begin
  if GRIDPESSOA_FJ.Field.Value > 0 then
  begin
    with DmFinanceiro do
    begin
      Historico_Cobrancas_Pcl.Close;
      Historico_Cobrancas_Pcl.ParamByName('CNPJ').ASSTRING  := DMAPP.CNPJ;
      Historico_Cobrancas_Pcl.ParamByName('PESSOA_FJ').ASINTEGER := GRIDPESSOA_FJ.Field.Value;
      Historico_Cobrancas_Pcl.ParamByName('RECEBER').ASINTEGER := GRIDRECEBER.Field.Value;
      Historico_Cobrancas_Pcl.ParamByName('ANO_REC').ASINTEGER := GRIDANO.Field.Value;
      Historico_Cobrancas_Pcl.Open;
    end;
    if FrmVerAgendamentoCobranca = nil then
    begin
      FrmVerAgendamentoCobranca := TFrmVerAgendamentoCobranca.Create(Self);
      FrmVerAgendamentoCobranca.Showmodal ;
      FrmVerAgendamentoCobranca.Free   ;
      FrmVerAgendamentoCobranca := Nil ;
    end;
  end;
end;


procedure TFrmManutencaoCobranca.GRIDCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: TDateTime ;
   Aux: String;
begin
     if ANode.HasChildren then
      Exit;
      
     if ( not ASelected  ) AND ( NOT (DataSource.DataSet.STATE IN [ DSINSERT, DSEDIT ]))
     then begin
          //VERIFICANDO ARQUIVO MORTO
          Aux := ANode.Values[GRIDarq_morto.Index];

          IF ( Aux = 'S' )
          THEN BEGIN
               AColor := clRed;
          END
          ELSE BEGIN
               Value := ANode.Values[GRIDDATA.Index];

               if not VarIsNull(Value)
               then begin
                    if Value < Date
                    then
                        AColor := $00ECAD84
                    else
                        AColor := clWhite;
               end
               else begin
                    AFont.Color := clBlack;
               END;
          end;
     end
     else
     begin
      AColor := $00A2E6B8; //$0062B0FF;
      AFont.Color := clBlack;
     end;
end;

procedure TFrmManutencaoCobranca.GRIDKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((Key = 13) and (NomeCobrador <> '')) then
  begin
    FrmManutencaoCobrancaPessoa := TFrmManutencaoCobrancaPessoa.Create(Self);
    FrmManutencaoCobrancaPessoa.PESSOA_FJ := GRIDPESSOA_FJ.Field.Value;
    FrmManutencaoCobrancaPessoa.LblCobrador.caption := NomeCobrador;
    FrmManutencaoCobrancaPessoa.DATAINICIAL := DtInicial;
    FrmManutencaoCobrancaPessoa.DATAFINAL := DtFinal;
    FrmManutencaoCobrancaPessoa.Cobrador := CodCobrador;
    FrmManutencaoCobrancaPessoa.Showmodal;
    FrmManutencaoCobrancaPessoa.Free;
    FrmManutencaoCobrancaPessoa := Nil;
  end;  
end;

procedure TFrmManutencaoCobranca.ActCartaSCPCExecute(Sender: TObject);
var
   x : integer;
   Cont: Integer;
   LinCrt:Integer;
begin
  if GRIDPESSOA_FJ.Field.Value > 0 then
  begin
    with DmFinanceiro do
    begin
      CARTA.ABRIR;
      for x:=0 to Grid.Count - 1 do                                    
      begin
        if Grid.Items[x].Selected then
        begin

          Consulta_Cobranca_Pessoa.Close;
          Consulta_Cobranca_Pessoa.SQL.CLEAR;
          Consulta_Cobranca_Pessoa.Params.CLEAR;
          Consulta_Cobranca_Pessoa.Params.CreateParam(FtDate, 'INI', PtInput);
          Consulta_Cobranca_Pessoa.Params.CreateParam(FtDate, 'FIM', PtInput);
          Consulta_Cobranca_Pessoa.SQL.ADD(' SELECT * FROM CONSULTA_COBRANCA_PESSOA(:CNPJ, :INI, :FIM, :PESSOA)');
          Consulta_Cobranca_Pessoa.ParamByName('CNPJ').AsString := DMAPP.Cnpj ;
          Consulta_Cobranca_Pessoa.ParamByName('INI').AsDate := DtInicial;
          Consulta_Cobranca_Pessoa.ParamByName('FIM').AsDate := DtFinal;
          Consulta_Cobranca_Pessoa.ParamByName('PESSOA').asInteger := StrToInt(GridPESSOA_FJ.TreeList.Items[x].Strings[GridPESSOA_FJ.index]);
          //GRIDPESSOA_FJ.Field.Value;


          if dmCadastros2.SelCobradorINTERNO.VALUE = 'S' then
          begin
            Consulta_Cobranca_Pessoa.SQL.Add(' Where ((COBRADOR IS NULL) or (COBRADOR = :COBRADOR))');
            Consulta_Cobranca_Pessoa.ParamByName('COBRADOR').asInteger := CodCobrador;
          end
          else
          begin
            Consulta_Cobranca_Pessoa.SQL.Add(' Where (COBRADOR = :COBRADOR)');
            Consulta_Cobranca_Pessoa.ParamByName('COBRADOR').asInteger := CodCobrador;
          end;

          Consulta_Cobranca_Pessoa.SQL.Add(' And ((COBRAR_EM <= :COB) or (COBRAR_EM IS NULL))');
          Consulta_Cobranca_Pessoa.ParamByName('COB').asDate := DtFinal;
          Consulta_Cobranca_Pessoa.SQL.ADD(' ORDER BY PESSOA_FJ, NOME, AGENDADO_PARA  ');
          Consulta_Cobranca_Pessoa.Prepare;
          Consulta_Cobranca_Pessoa.Open;
          Consulta_Cobranca_Pessoa.FetchAll;

          if Consulta_Cobranca_Pessoa.RecordCount > 0 then
          begin
            Lincrt := length(DMAPP.CIDADE + ' (' + DMAPP.UF + '), ' + CDOW(DMAPP.DataServidor , exdDMA));
            Lincrt := 95 - LinCrt ;
            CARTA.impf(01, LinCrt, DMAPP.CIDADE + ' (' + DMAPP.UF + '), ' + CDOW(DMAPP.DataServidor, exdDMA ), [comp17]);
            CARTA.impf(03, 01, 'A:' , [comp17]);
            CARTA.impf(04, 01, Consulta_Cobranca_PessoaPESSOA_FJ.TEXT + '-' + Consulta_Cobranca_PessoaNOME.VALUE, [comp17]);
            CARTA.impf(05, 01, Consulta_Cobranca_PessoaENDERECO.VALUE + ', N ' + Consulta_Cobranca_PessoaNUMERO.VALUE , [comp17]);
            CARTA.impf(06, 01, Consulta_Cobranca_PessoaBAIRRO.VALUE  , [comp17]);
            CARTA.impf(07, 01, Consulta_Cobranca_PessoaCEP.VALUE + '  ' + Consulta_Cobranca_PessoaCIDADE.VALUE + '/' + Consulta_Cobranca_PessoaUF.VALUE , [comp17]);
            CARTA.impf(11, 01, 'REF. SEUS DEBITOS: '  , [comp17]);
            LinCrt := 12 ;
            Consulta_Cobranca_Pessoa.DisableControls ;
            Consulta_Cobranca_Pessoa.First ;
            CARTA.impf(LinCrt, 48, 'DOCUMENTO' , [comp17]);
            CARTA.impf(LinCrt, 61, '     VALOR' , [comp17]);
            CARTA.impf(LinCrt, 75, 'VENCIMENTO' , [comp17]);
            LinCrt := LinCrt + 1 ;
            while not Consulta_Cobranca_Pessoa.Eof do
            begin
              if ((DMAPP.DataServidor - Consulta_Cobranca_PessoaDATA.VALUE) > 31) then
              begin
                CARTA.impf(LinCrt, 50, Consulta_Cobranca_PessoaDOCTO.value , [comp17]);
                //VALOR
                STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Cobranca_PessoaSOMA.Value );
                while LENGTH(STR) < 10 do
                  STR := ' ' + STR ;
                CARTA.impf(LinCrt, 61, STR ,[comp17]);
                CARTA.impf(LinCrt, 75, Consulta_Cobranca_PessoaDATA.text , [comp17]);
                LinCrt := LinCrt + 1;
              end;
              Consulta_Cobranca_Pessoa.NEXT;
            end;
            LinCrt := LinCrt + 1;
            LinCrt := LinCrt + 1;
            CARTA.impf(LinCrt, 30, 'Informamos a  V.Sra. da existencia de debitos junto'  , [normal]);
            LinCrt := LinCrt + 1;
            CARTA.impf(LinCrt, 01, 'a este estabelecimento, conforme descricao acima.'  , [normal]);
            LinCrt := LinCrt + 1;
            LinCrt := LinCrt + 1;
            CARTA.impf(LinCrt, 30, 'Conforme  legislacao,  comunicamos ainda que dentro'  , [normal]);
            LinCrt := LinCrt + 1;
            CARTA.impf(LinCrt, 01, 'de 3(tres) dias do recebimento desta, caso persista a pendencia,  as parcelas em'  , [normal]);
            LinCrt := LinCrt + 1;
            CARTA.impf(LinCrt, 01, 'atraso estarao sendo encaminhadas para registro junto ao orgao de defesa e '  , [normal]);
            LinCrt := LinCrt + 1;
            CARTA.impf(LinCrt, 01, 'protecao ao credito.'  , [normal]);
            LinCrt := LinCrt + 1;
            LinCrt := LinCrt + 1;
            CARTA.impf(LinCrt, 30, 'Sendo  assim, estamos cumprindo  o  dispositivo  no'  , [normal]);
            LinCrt := LinCrt + 1;
            CARTA.impf(LinCrt, 01, 'paragrafo 2o do artigo 43, da lei 8.078/90 ( Codigo  de  Protecao  e  Defesa  do'  , [normal]);
            LinCrt := LinCrt + 1;
            CARTA.impf(LinCrt, 01, 'Consumidor ),  informando  que  seu  nome passara a constar no banco de Dados do'  , [normal]);
            LinCrt := LinCrt + 1;
            CARTA.impf(LinCrt, 01, 'Servico Central de Protecao ao Credito ( SCPC ) e ainda passará a constar no '  , [normal]);
            LinCrt := LinCrt + 1;
            CARTA.impf(LinCrt, 01, 'cartorio de Protestos de Titulos'  , [normal]);
            LinCrt := LinCrt + 1;
            LinCrt := LinCrt + 1;
            CARTA.impf(LinCrt, 30, 'Nosso Interesse e Sempre Servi-lo bem,  para  tanto'  , [normal]);
            LinCrt := LinCrt + 1;
            CARTA.impf(LinCrt, 01, 'aguardamos sua presenca para futuras negociacoes.'  , [normal]);
            LinCrt := LinCrt + 1;
            LinCrt := LinCrt + 1;
            CARTA.impf(LinCrt, 01, '(CASO JA TENHA QUITADO ESTE DEBITO, FAVOR DESCONSIDERAR ESTE AVISO).'  , [normal]);
            LinCrt := LinCrt + 1;
            LinCrt := LinCrt + 1;
            LinCrt := LinCrt + 1;
            LinCrt := LinCrt + 1;
            CARTA.impf(LinCrt, 01, '                                                    ----------------------------'  , [normal]);
            LinCrt := LinCrt + 1;
            CARTA.impf(LinCrt, 01, '                                                      DEPARTAMENTO DE COBRANCA'  , [normal]);
            LinCrt := LinCrt + 1;
            LinCrt := LinCrt + 1;
            LinCrt := LinCrt + 1;
            if NomeLocal = '' then
            begin
              CARTA.impf(LinCrt, 01, DMAPP.NOME , [comp17]);
              LinCrt := LinCrt + 1;
              CARTA.impf(LinCrt, 01, DMAPP.ENDER , [comp17]);
              LinCrt := LinCrt + 1;
              CARTA.impf(LinCrt, 01, DMAPP.FONE  , [comp17]);
              LinCrt := LinCrt + 1;
              CARTA.impf(LinCrt, 01, DMAPP.CIDADE + '/' + DMAPP.UF  , [comp17]);
            end
            else
            begin
              CARTA.impf(LinCrt, 01, Local_CobrancaNOME.VALUE , [comp17]);
              LinCrt := LinCrt + 1;
              CARTA.impf(LinCrt, 01, Local_CobrancaENDERECO.Value , [comp17]);
              LinCrt := LinCrt + 1;
              CARTA.impf(LinCrt, 01, Local_CobrancaFONE.Value  , [comp17]);
              LinCrt := LinCrt + 1;
              CARTA.impf(LinCrt, 01, Local_CobrancaCIDADE.VALUE + '/' + Local_CobrancaUF.VALUE, [comp17]);
            end; //fim else
            Consulta_Cobranca_Pessoa.close ;
 //           CARTA.FECHAR;
          end; // fim if
          CARTA.Novapagina;
        end; //fim if
      end; // fim for
      CARTA.FECHAR;
    end; // fim with
  end;// fim if
end;

procedure TFrmManutencaoCobranca.ActInclusaoScpcExecute(Sender: TObject);
begin
  if GRIDPESSOA_FJ.Field.Value > 0 then
  begin
      with dmFinanceiro do
      begin
        Consulta_Cobranca_Pessoa.Close;
        Consulta_Cobranca_Pessoa.SQL.text := ' SELECT * FROM CONSULTA_COBRANCA_PESSOA(:CNPJ, :INI, :FIM, :PESSOA) '+
                                             ' where (atraso > 31) ';
        if dmCadastros2.SelCobradorINTERNO.VALUE = 'S' then
          Consulta_Cobranca_Pessoa.SQL.Add(' and ((COBRADOR IS NULL) or (COBRADOR = :COBRADOR))')
        else
          Consulta_Cobranca_Pessoa.SQL.Add(' and (COBRADOR = :COBRADOR)');

        Consulta_Cobranca_Pessoa.SQL.Add(' And ((COBRAR_EM <= :COB) or (COBRAR_EM IS NULL))');
        Consulta_Cobranca_Pessoa.SQL.ADD(' ORDER BY PESSOA_FJ, NOME, AGENDADO_PARA  ');
        Consulta_Cobranca_Pessoa.ParamByName('CNPJ').AsString := DMAPP.Cnpj;
        Consulta_Cobranca_Pessoa.ParamByName('INI').AsDate := DtInicial;
        Consulta_Cobranca_Pessoa.ParamByName('FIM').AsDate := DtFinal;
        Consulta_Cobranca_Pessoa.ParamByName('PESSOA').asInteger := GRIDPESSOA_FJ.Field.Value ;
        Consulta_Cobranca_Pessoa.ParamByName('COB').asDate := Dtfinal;
        Consulta_Cobranca_Pessoa.ParamByName('COBRADOR').asInteger := CodCobrador;
        Consulta_Cobranca_Pessoa.Open;

        if DmFinanceiro.Consulta_Cobranca_Pessoa.RecordCount > 0 then
        begin
          CartaSCPC_Customizado;
          //CartaSCPC_PreImpresso;

          if application.messagebox('Deseja Desabilitar o Cliente no Cadastro de Pessoa Fisica/Juridica ?','Aviso', mb_iconquestion + MB_YESNO ) = id_yes then
             ExecSql('UPDATE GLO_CLIENTES SET BLOQUEADO = '+QuotedStr('S') +', NEG_N_VEZES = (COALESCE(NEG_N_VEZES,0) + 1) WHERE PESSOA_FJ = '+ inttostr(DmFinanceiro.Consulta_Cobranca_PessoaPESSOA_FJ.value) +
            ' and CNPJ ='''+dmapp.Cnpj+'''',DmFinanceiro.Consulta_Cobranca.transaction);
        end;
      end;
  end;
end;

procedure TFrmManutencaoCobranca.ActExclusaoSCPCExecute(Sender: TObject);
Var
   Cont: Integer;
   LinCrt:Integer;
   Soma: Real;
   Docto: String;
begin
  if GRIDPESSOA_FJ.Field.Value > 0 then
  begin
    with DmFinanceiro do
    begin
      Consulta_Cobranca_Pessoa.Close ;
      Consulta_Cobranca_Pessoa.SQL.CLEAR ;
      Consulta_Cobranca_Pessoa.Params.CLEAR ;
      Consulta_Cobranca_Pessoa.Params.CreateParam(FtDate, 'INI', PtInput);
      Consulta_Cobranca_Pessoa.Params.CreateParam(FtDate, 'FIM', PtInput);
      Consulta_Cobranca_Pessoa.SQL.ADD(' SELECT * FROM CONSULTA_COBRANCA_PESSOA(:CNPJ, :INI, :FIM, :PESSOA)');
      Consulta_Cobranca_Pessoa.ParamByName('CNPJ').AsString := DMAPP.Cnpj ;
      Consulta_Cobranca_Pessoa.ParamByName('INI').AsDate := DtInicial;
      Consulta_Cobranca_Pessoa.ParamByName('FIM').AsDate := DtFinal;
      Consulta_Cobranca_Pessoa.ParamByName('PESSOA').asInteger := GRIDPESSOA_FJ.Field.Value;

      if dmCadastros2.SelCobradorINTERNO.VALUE = 'S' then
      begin
        Consulta_Cobranca_Pessoa.SQL.Add(' Where ((COBRADOR IS NULL) or (COBRADOR = :COBRADOR))');
        Consulta_Cobranca_Pessoa.ParamByName('COBRADOR').asInteger := CodCobrador;
      end
      else
      begin
        Consulta_Cobranca_Pessoa.Params.CreateParam(FtInteger, 'COBRADOR', PtInput);
        Consulta_Cobranca_Pessoa.SQL.Add(' Where (COBRADOR = :COBRADOR)');
        Consulta_Cobranca_Pessoa.ParamByName('COBRADOR').asInteger := CodCobrador ;
      end;
      Consulta_Cobranca_Pessoa.Params.CreateParam(FtDate, 'COB', PtInputOutPut);
      Consulta_Cobranca_Pessoa.SQL.Add(' And ((COBRAR_EM <= :COB) or (COBRAR_EM IS NULL))');
      Consulta_Cobranca_Pessoa.ParamByName('COB').asDate := DtFinal;
      Consulta_Cobranca_Pessoa.SQL.ADD(' ORDER BY PESSOA_FJ, NOME, AGENDADO_PARA  ');
      Consulta_Cobranca_Pessoa.Prepare ;
      Consulta_Cobranca_Pessoa.Open ;
      Consulta_Cobranca_Pessoa.FetchAll ;

      if Consulta_Cobranca_Pessoa.RecordCount > 0 then
      begin
        VERPESSOA(Consulta_Cobranca_PessoaPESSOA_FJ.VALUE);
        VERCLIENTE(Consulta_Cobranca_PessoaPESSOA_FJ.VALUE);
        CARTA.TamanhoQteLinhas := 33;
        CARTA.ABRIR;
        CARTA.impf(01, 01, 'CARIMBO E ASSINATURA DA EMPRESA', [comp17]);
        if (NomeLocal = '') then
        begin
          CARTA.impf(03, 01, DMAPP.Nome, [comp12, NEGRITO]);
          CARTA.impf(05, 01, 'CANCELAMENTO', [comp12, NEGRITO]);
          CARTA.impf(08, 01, 'A/C SCPC - ' + DMAPP.CIDADE , [comp12, NEGRITO]);
        end
        else
        begin
          CARTA.impf(03, 01, Local_CobrancaNOME.VALUE , [comp12, NEGRITO]);
          CARTA.impf(05, 01, 'CANCELAMENTO', [comp12, NEGRITO]);
          CARTA.impf(08, 01, 'A/C SCPC - ' + Local_CobrancaCIDADE.VALUE , [comp12, NEGRITO]);
        end;
        CARTA.impf(10, 01, COPY('NOME '   + Consulta_Cobranca_PessoaPESSOA_FJ.TEXT + '-' + Consulta_Cobranca_PessoaNOME.VALUE,1,25), [comp17]);
        CARTA.impf(11, 01, COPY('NOME '   + Consulta_Cobranca_PessoaPESSOA_FJ.TEXT + '-' + Consulta_Cobranca_PessoaNOME.VALUE,26,25), [comp17]);
        CARTA.impf(12, 01, 'DT. NASC ' + Ver_PessoaDT_NASCIMENTO.text , [comp17]);
        CARTA.impf(13, 01, 'CPF ' + MASCARACPF(Consulta_Cobranca_PessoaCPF_CGC.TEXT), [comp17]);
        Consulta_Cobranca_Pessoa.DisableControls ;
        Consulta_Cobranca_Pessoa.First ;
        SOMA := 0;
        CARTA.impf(14, 01, 'CARNE/DUPLICATA/NOTA PROMISSORIA', [comp17]);
        CARTA.impf(15, 01, COPY(DOCTO,1,40), [comp17]);
        CARTA.impf(16, 01, 'VALOR ' + FORMATFLOAT('###,##0.00', SOMA), [comp17]);
        CARTA.impf(17, 01, 'LIQUIDADO EM ' + DATETOSTR(DMAPP.DATASERVIDOR) , [comp17]);
        if ( NomeLocal = '' ) then
        begin
          CARTA.impf(23, 01, DMAPP.Nome   , [comp17]);
          CARTA.impf(24, 01, DMAPP.ENDER  , [comp17]);
          CARTA.impf(25, 01, DMAPP.BAIRRO , [comp17]);
          CARTA.impf(26, 01, DMAPP.CIDADE + '/' + DMAPP.UF, [comp17]);
          CARTA.impf(27, 01, DMAPP.FONE   , [comp17]);
        end
        else
        begin
          CARTA.impf(23, 01, Local_CobrancaNOME.VALUE   , [comp17]);
          CARTA.impf(24, 01, Local_CobrancaENDERECO.VALUE  , [comp17]);
          CARTA.impf(25, 01, Local_CobrancaBAIRRO.VALUE , [comp17]);
          CARTA.impf(26, 01, Local_CobrancaCIDADE.VALUE + '/' + Local_CobrancaUF.VALUE, [comp17]);
          CARTA.impf(27, 01, Local_CobrancaFONE.VALUE   , [comp17]);
        end;
        CARTA.impf(29, 01, 'CARIMBO E ASSINATURA DA EMPRESA' , [comp17]);
        CARTA.FECHAR;
        CARTA.TamanhoQteLinhas := 66;
        Consulta_Cobranca_Pessoa.close;
      end;
    end;
  end;
end;

procedure TFrmManutencaoCobranca.ActInclusaoChequeExecute(Sender: TObject);
var
   NOME, NASCIMENTO, CPF, RG, UF, ENDERECO, BAIRRO, CIDADE, CEP,
   CHEQUE, VENCIMENTO, DT_VENDA, VALOR, DT_COMUNICACAO, ALINEA, BANCO,
   AGENCIA, CONTA: String;
   Cont: Integer;
   LinCrt:Integer;
   Soma: Real;
begin
  FrmEntraDadosCheques := TFrmEntraDadosCheques.Create(Self);
  //
  if FrmEntraDadosCheques.Showmodal = MrOk then
  begin
    NOME := FrmEntraDadosCheques.EdNome.Text;
    RG := FrmEntraDadosCheques.EdRg.text;
    CPF := FrmEntraDadosCheques.EdCpf.text;
    CIDADE := FrmEntraDadosCheques.edcidade.text;
    ENDERECO := FrmEntraDadosCheques.EdEndereco.Text;
    BAIRRO := FrmEntraDadosCheques.EDBAIRRO.Text;
    CEP := FrmEntraDadosCheques.EDCEP.Text;
    NASCIMENTO := FrmEntraDadosCheques.EdNascimento.Text;
    BANCO := FrmEntraDadosCheques.BANCO;
    AGENCIA := FrmEntraDadosCheques.EdAgencia.Text;
    CONTA := FrmEntraDadosCheques.EdConta.Text;
    CHEQUE := FrmEntraDadosCheques.EDCHEQUE.Text;
    VENCIMENTO := FrmEntraDadosCheques.EdVencimento.Text;
    DT_VENDA := FrmEntraDadosCheques.EdEmissao.Text;
    VALOR := FORMATFLOAT('###,##0.00', FrmEntraDadosCheques.EdValor.value);
    ALINEA := FrmEntraDadosCheques.EdAlinea.Text     ;
  end;
  FrmEntraDadosCheques.Free;
  FrmEntraDadosCheques := nil;
  CARTA.TamanhoQteLinhas := 33;
  CARTA.ABRIR;
  Lincrt := length(DMAPP.CIDADE + ' (' + DMAPP.UF + '), ' + CDOW(DMAPP.DataServidor , exdDMA ));
  Lincrt := 93 - LinCrt ;
  CARTA.impf(01, LinCrt, DMAPP.CIDADE + ' (' + DMAPP.UF + '), ' + CDOW(DMAPP.DataServidor, exdDMA ), [comp17]);
  CARTA.impf(03, 01, 'REQUERIMENTO DE INCLUSAO AO S.C.P.C.' , [comp12, NEGRITO]);
  if (NomeLocal = '') then
  begin
    CARTA.impf(04, 01, 'CODIGO ' + DmApp.CODIGO_SCPC + ' NOME DA EMPRESA ' + DMAPP.NOME, [comp17]);
    CARTA.impf(05, 01, 'NOME '   + NOME , [comp17]);
    CARTA.impf(06, 01, 'DT. NASC ' + NASCIMENTO + ', CPF ' + CPF + ', RG ' + RG + ', UF ' + 'MS' , [comp17]);
  end
  else
  begin
    CARTA.impf(04, 01, 'CODIGO ' + DMFINANCEIRO.Local_CobrancaCODIGO_SCPC.VALUE + ' NOME DA EMPRESA ' + DMFINANCEIRO.Local_CobrancaNOME.VALUE, [comp17]);
    CARTA.impf(05, 01, 'NOME '   + NOME , [comp17]);
    CARTA.impf(06, 01, 'DT. NASC ' + NASCIMENTO + ', CPF ' + CPF + ', RG ' + RG + ', UF ' + 'MS' , [comp17]);
  end;
  CARTA.impf(07, 01, 'CONJUGE  '  , [comp17]);
  CARTA.impf(08, 01, 'FILIACAO '  , [comp17]);
  CARTA.impf(09, 01, ENDERECO  , [comp17]);
  CARTA.impf(10, 01, BAIRRO  , [comp17]);
  CARTA.impf(11, 01, CEP + '  ' + CIDADE + '/' + 'MS' , [comp17]);
  CARTA.impf(12, 01, 'N.CONTRATO ' + CHEQUE , [comp17]);
  CARTA.impf(12, 25, 'DT. VENC ' + VENCIMENTO, [comp17]);
  CARTA.impf(12, 45, 'DT.VENDA ' + DT_VENDA, [comp17]);
  CARTA.impf(13, 01, 'VALOR   ' + VALOR, [comp17]);
  CARTA.impf(13, 20, 'DT. COMUNICACAO ' , [comp17]);
  CARTA.impf(13, 35, 'ALINEA ' + ALINEA, [comp17]);
  CARTA.impf(13, 45, 'BCO ' + BANCO, [comp17]);
  CARTA.impf(13, 65, 'AG ' + AGENCIA, [comp17]);
  CARTA.impf(14, 01, 'AVALISTA ' , [comp17]);
  CARTA.impf(15, 01, 'DEVEDOR PRINCIPAL ' , [comp17]);
  CARTA.impf(17, 40, 'DECLARACAO' , [comp12, NEGRITO]);
  CARTA.impf(19, 01, 'DECLARAMOS  SER  DE  NOSSA RESPONSABILIDADE O DEBITO  REGISTRADO  E  QUE  POSSUIMOS  DOCUMENTO  COMPROVATORIO  DA  ORIGEM  DA  DIVIDA.' , [comp17, NEGRITO]);
  CARTA.impf(20, 01, 'A EMPRESA ESTA CIENTE DA OBRIGATORIEDADE DE COMUNICACAO ESCRITA AO CLIENTE SOBRE O REGISTRO NO  S.C.P.C., ATENDENDO AO DISPOSTO  NO 2o' , [comp17, NEGRITO]);
  CARTA.impf(21, 01, 'DO ARTIGO 43 DO CODIGO DE DEFESA DO CONSUMIDOR.' , [comp17, NEGRITO]);
  CARTA.FECHAR;
  CARTA.TamanhoQteLinhas := 66;
end;

procedure TFrmManutencaoCobranca.ActNotificacaoExecute(Sender: TObject);
var
   Cont, I: Integer;
   LinCrt:Integer;
   Texto, filtro, Datas: String;
   Soma: Real;
begin

  if GRIDPESSOA_FJ.Field.Value > 0 then
  begin
    with DmFinanceiro do
    begin
      Consulta_Cobranca_Pessoa.Close ;
      Consulta_Cobranca_Pessoa.SQL.text := ' SELECT * FROM CONSULTA_COBRANCA_PESSOA(:CNPJ, :INI, :FIM, :PESSOA)'+
                                           ' where ((COBRAR_EM <= :COB) or (COBRAR_EM IS NULL))';

      if dmCadastros2.SelCobradorINTERNO.VALUE = 'S' then
        Consulta_Cobranca_Pessoa.SQL.Add('  and ((COBRADOR IS NULL) or (COBRADOR = :COBRADOR))')
      else
        Consulta_Cobranca_Pessoa.SQL.Add(' and (COBRADOR = :COBRADOR)');

      Consulta_Cobranca_Pessoa.SQL.ADD(' ORDER BY DATA,PESSOA_FJ, NOME, AGENDADO_PARA  ');
      Consulta_Cobranca_Pessoa.ParamByName('CNPJ').AsString := DMAPP.Cnpj;
      Consulta_Cobranca_Pessoa.ParamByName('INI').AsDate := DtInicial;
      Consulta_Cobranca_Pessoa.ParamByName('FIM').AsDate := DtFinal;
      Consulta_Cobranca_Pessoa.ParamByName('PESSOA').asInteger := DmFinanceiro.Consulta_CobrancaPessoa_fj.value;
      Consulta_Cobranca_Pessoa.ParamByName('COB').asDate := DtFinal;
      Consulta_Cobranca_Pessoa.ParamByName('COBRADOR').asInteger := CodCobrador;
      Consulta_Cobranca_Pessoa.Open;
      Consulta_Cobranca_Pessoa.FetchAll;

      if Consulta_Cobranca_Pessoa.RecordCount > 0 then
      begin
        Consulta_Cobranca_Pessoa.DisableControls ;
        Consulta_Cobranca_Pessoa.First ;
        SOMA := 0;
        Datas := '';
        while not Consulta_Cobranca_Pessoa.Eof do
        begin
          if ((DMAPP.DataServidor - Consulta_Cobranca_PessoaDATA.VALUE) > 31) then
          begin
            if Pos(trim(Consulta_Cobranca_PessoaDATA.text),trim(datas))=0 then
              datas := datas + ', ' + Consulta_Cobranca_PessoaDATA.text;
            SOMA := SOMA + Consulta_Cobranca_PessoaSOMA.Value;
          end;
          Consulta_Cobranca_Pessoa.NEXT ;
        end;

        EXTENSO.Valor := SOMA ;
        RichText.RichText := CobExtraJud;
        //-----------------------------------Cabeçalho da Carta--------------------------------//
        lblEmpresa.Caption := dmapp.nome;
        lblCidade.caption :=  dmapp.cidade + ' (' +dmapp.uf+')';
        lblEmpresa2.caption := dmapp.nome;

        //-----------------------------------Texto---------------------------------------------//
        RichText.RichText := StringReplace(RichText.RichText,'<cliente>',Consulta_Cobranca_PessoaNOME.asString,[rfReplaceAll]);
        RichText.RichText := StringReplace(RichText.RichText,'<valor>',formatfloat('###,##0.00',soma),[rfReplaceAll]);
        RichText.RichText := StringReplace(RichText.RichText,'<valorextenso>',EXTENSO.texto,[rfReplaceAll]);
        RichText.RichText := StringReplace(RichText.RichText,'<datas>',datas,[rfReplaceAll]);

        if (NomeLocal = '') then
          lblEndereco.caption := dmapp.ENDER + ', ' + dmapp.BAIRRO + ', ' + dmapp.CIDADE + '-' + dmapp.UF + '. ' + dmapp.FONE
        else
          lblEndereco.caption := Local_CobrancaENDERECO.VALUE + ', ' + Local_CobrancaBAIRRO.VALUE + ', ' + Local_Cobrancacidade.value + '-' + Local_CobrancaUF.value + '. ' + Local_CobrancaFONE.VALUE;

        rptNotExtraJudicial.print;
        exit;

        CARTA.ABRIR;
        if (NomeLocal = '') then
        begin
          CARTA.impf(01, 01, DMAPP.NOME , [comp12,negrito]);
          CARTA.impf(04, 01, 'NOTIFICACAO EXTRA JUDICIAL', [comp12,negrito]);
          Lincrt := length(DMAPP.CIDADE + ' (' + DMAPP.UF + '), ' + CDOW(DMAPP.DataServidor , exdDMA ));
          Lincrt := 63 - LinCrt ;
          CARTA.impf(06, LinCrt, DMAPP.CIDADE + ' (' + DMAPP.UF + '), ' + CDOW(DMAPP.DataServidor, exdDMA ), [comp17]);
        end
        else
        begin
          CARTA.impf(01, 01, Local_CobrancaNOME.VALUE , [comp12,negrito]);
          CARTA.impf(04, 01, 'NOTIFICACAO EXTRA JUDICIAL', [comp12,negrito]);
          Lincrt := length( Local_CobrancaCIDADE.VALUE + ' (' + Local_CobrancaUF.VALUE + '), ' + CDOW(DMAPP.DataServidor , exdDMA ));
          Lincrt := 63 - LinCrt ;
          CARTA.impf(06, LinCrt, Local_CobrancaCIDADE.VALUE + ' (' + Local_CobrancaUF.VALUE + '), ' + CDOW(DMAPP.DataServidor, exdDMA ), [comp17]);
        end;
        CARTA.impf(09, 01, 'Ilmo(a) Sr(a).' , [comp17]);
        CARTA.impf(10, 01, Consulta_Cobranca_PessoaNOME.VALUE, [comp17]);
        Consulta_Cobranca_Pessoa.Close ;
        EXTENSO.Valor := SOMA ;
        TEXTO := 'Pela presente vimos informá-lo(a) que se encontra em nosso setor   de cobranca, titulo representativo de divida ';
        TEXTO := TEXTO + ', nota(s) promissoria(s) no valor de ' + formatfloat('###,##0.00', soma)+ ' (' + EXTENSO.Texto + ')';
        TEXTO := TEXTO + ' mais acrescimos legais vencido(s) em ' + Datas + '.' ;
        LinCrt := 13 ;
        CARTA.impf(LinCrt, 15, Copy ( Texto, 1, 65) , [normal]);
        Texto := Copy ( texto, 66, 500 );
        LinCrt := LinCrt + 1;
        I := 1;
        while trim(Copy ( Texto, I, 80)) <> '' do
        begin
          CARTA.impf(LinCrt, 01, Copy ( Texto, I, 80) , [normal]);
          LinCrt := LinCrt + 1;
          I := I + 80;
        end;
        LinCrt := LinCrt + 1;
        CARTA.impf(LinCrt, 15, 'Infelizmente caso nao haja manifestacao de vossa parte no sentido', [normal]);
        LinCrt := LinCrt + 1;
        CARTA.impf(LinCrt, 01, 'resgatar citada divida,  dentro de um prazo de cinco dias,  teremos que tomar as', [normal]);
        LinCrt := LinCrt + 1;
        CARTA.impf(LinCrt, 01, 'medidas cabiveis, inclusive   AJUIZAMENTO DE PROCESSO JUDICIAL  junto ao juizado', [normal]);
        LinCrt := LinCrt + 1;
        CARTA.impf(LinCrt, 01, 'Especial Civel, onde poderao ser penhorados, por oficial de justica, bens,', [normal]);
        LinCrt := LinCrt + 1;
        CARTA.impf(LinCrt, 01, 'inclusive moveis, suficientes para recuperacao do credito em aberto,  alem ' , [normal]);
        LinCrt := LinCrt + 1;
        CARTA.impf(LinCrt, 01, 'de eventuais outras medidas que se apresentem necessarias.', [normal]);
        LinCrt := LinCrt + 1;
        LinCrt := LinCrt + 1;
        CARTA.impf(LinCrt, 15, 'Esperamos, sinceramente, que nao  sejam  necessarias  acoes  tao ', [normal]);
        LinCrt := LinCrt + 1;
        CARTA.impf(LinCrt, 01, 'drasticas, o que depende exclusivamente de vossa senhoria.', [normal]);
        LinCrt := LinCrt + 1;
        LinCrt := LinCrt + 1;
        CARTA.impf(LinCrt, 15, 'Sem mais para o momento,', [normal]);
        LinCrt := LinCrt + 1;
        CARTA.impf(LinCrt, 15, 'Subscrevemos-nos.', [normal]);
        LinCrt := LinCrt + 1;
        LinCrt := LinCrt + 1;
        LinCrt := LinCrt + 1;

        if (NomeLocal = '') then
        begin
          CARTA.impf(LinCrt, 25, DMAPP.NOME , [comp12,negrito]);
          LinCrt := LinCrt + 1;
          CARTA.impf(LinCrt, 25, 'Depto Juridico', [comp12,negrito]);
          LinCrt := LinCrt + 1;
          LinCrt := LinCrt + 1;
          LinCrt := LinCrt + 1;
          CARTA.impf(LinCrt, 01, dmapp.ENDER + ', ' + dmapp.BAIRRO + ', ' + dmapp.CIDADE + '-' + dmapp.UF + '. ' + dmapp.FONE, [comp12,negrito]);
        end
        else
        begin
          CARTA.impf(LinCrt, 25, Local_CobrancaNOME.VALUE , [comp12,negrito]);
          LinCrt := LinCrt + 1;
          CARTA.impf(LinCrt, 25, 'Depto Juridico', [comp12,negrito]);
          LinCrt := LinCrt + 1;
          LinCrt := LinCrt + 1;
          LinCrt := LinCrt + 1;
          CARTA.impf(LinCrt, 01, Local_CobrancaENDERECO.VALUE + ', ' + Local_CobrancaBAIRRO.VALUE + ', ' + Local_Cobrancacidade.value + '-' + Local_CobrancaUF.value + '. ' + Local_CobrancaFONE.VALUE, [comp12,negrito]);
        end;
        CARTA.FECHAR;
        Consulta_Cobranca_Pessoa.close ;
      end;
    end;
  end;
end;

procedure TFrmManutencaoCobranca.ActRecNotificacaoExecute(Sender: TObject);
var
   Cont: Integer;
   LinCrt:Integer;
begin
  if GRIDPESSOA_FJ.Field.Value > 0 then
  begin
    with DmFinanceiro do
    begin
      Consulta_Cobranca_Pessoa.Close ;
      Consulta_Cobranca_Pessoa.SQL.CLEAR ;
      Consulta_Cobranca_Pessoa.Params.CLEAR ;
      Consulta_Cobranca_Pessoa.Params.CreateParam(FtDate, 'INI', PtInput);
      Consulta_Cobranca_Pessoa.Params.CreateParam(FtDate, 'FIM', PtInput);
      Consulta_Cobranca_Pessoa.SQL.ADD(' SELECT * FROM CONSULTA_COBRANCA_PESSOA(:CNPJ, :INI, :FIM, :PESSOA)');
      Consulta_Cobranca_Pessoa.ParamByName('CNPJ').AsString := DMAPP.Cnpj;
      Consulta_Cobranca_Pessoa.ParamByName('INI').AsDate := DtInicial;
      Consulta_Cobranca_Pessoa.ParamByName('FIM').AsDate := DtFinal;
      Consulta_Cobranca_Pessoa.ParamByName('PESSOA').asInteger := GRIDPESSOA_FJ.Field.Value;
      if dmCadastros2.SelCobradorINTERNO.VALUE = 'S' then
      begin
        Consulta_Cobranca_Pessoa.Params.CreateParam( FtInteger, 'COBRADOR', PtInput);
        Consulta_Cobranca_Pessoa.SQL.Add(' Where ((COBRADOR IS NULL) or (COBRADOR = :COBRADOR))');
        Consulta_Cobranca_Pessoa.ParamByName('COBRADOR').asInteger := CodCobrador;
      end
      else
      begin
        Consulta_Cobranca_Pessoa.Params.CreateParam(FtInteger, 'COBRADOR', PtInput);
        Consulta_Cobranca_Pessoa.SQL.Add(' Where (COBRADOR = :COBRADOR)');
        Consulta_Cobranca_Pessoa.ParamByName('COBRADOR').asInteger := CodCobrador;
      end;
      Consulta_Cobranca_Pessoa.Params.CreateParam(FtDate, 'COB', PtInputOutPut);
      Consulta_Cobranca_Pessoa.SQL.Add(' And ((COBRAR_EM <= :COB) or (COBRAR_EM IS NULL))');
      Consulta_Cobranca_Pessoa.ParamByName('COB').asDate := DtFinal;
      Consulta_Cobranca_Pessoa.SQL.ADD(' ORDER BY PESSOA_FJ, NOME, AGENDADO_PARA  ');
      Consulta_Cobranca_Pessoa.Prepare ;
      Consulta_Cobranca_Pessoa.Open ;
      Consulta_Cobranca_Pessoa.FetchAll ;
      if Consulta_Cobranca_Pessoa.RecordCount > 0 then
      begin
        CARTA.ABRIR;
        Lincrt := length(DMAPP.CIDADE + ' (' + DMAPP.UF + '), ' + CDOW(DMAPP.DataServidor , exdDMA ));
        Lincrt := 95 - LinCrt ;
        CARTA.impf(01, LinCrt, DMAPP.CIDADE + ' (' + DMAPP.UF + '), ' + CDOW(DMAPP.DataServidor, exdDMA ), [comp17]);
        CARTA.impf(03, 01, 'A:' , [comp17]);
        CARTA.impf(04, 01, Consulta_Cobranca_PessoaPESSOA_FJ.TEXT + '-' + Consulta_Cobranca_PessoaNOME.VALUE, [comp17]);
        CARTA.impf(05, 01, Consulta_Cobranca_PessoaENDERECO.VALUE + ', N ' + Consulta_Cobranca_PessoaNUMERO.VALUE , [comp17]);
        CARTA.impf(06, 01, Consulta_Cobranca_PessoaBAIRRO.VALUE  , [comp17]);
        CARTA.impf(07, 01, Consulta_Cobranca_PessoaCEP.VALUE + '  ' + Consulta_Cobranca_PessoaCIDADE.VALUE + '/' + Consulta_Cobranca_PessoaUF.VALUE , [comp17]);
        CARTA.impf(08, 01, 'FONE ' + Consulta_Cobranca_PessoaFONE.VALUE  , [comp17]);
        CARTA.impf(11, 01, 'REF. SEUS DEBITOS: '  , [comp17]);
        LinCrt := 12 ;
        Consulta_Cobranca_Pessoa.DisableControls ;
        Consulta_Cobranca_Pessoa.First ;
        CARTA.impf(LinCrt, 48, 'DOCUMENTO' , [comp17]);
        CARTA.impf(LinCrt, 61, '     VALOR' , [comp17]);
        CARTA.impf(LinCrt, 75, 'VENCIMENTO' , [comp17]);
        LinCrt := LinCrt + 1 ;
        while not Consulta_Cobranca_Pessoa.Eof do
        begin
          if ((DMAPP.DataServidor - Consulta_Cobranca_PessoaDATA.VALUE) > 31) then
          begin
            CARTA.impf(LinCrt, 50, Consulta_Cobranca_PessoaDOCTO.value , [comp17]);
            //VALOR
            STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Cobranca_PessoaSOMA.Value );
            while LENGTH(STR) < 10 do
              STR := ' ' + STR ;
            CARTA.impf(LinCrt, 61, STR ,[comp17]);
            CARTA.impf(LinCrt, 75, Consulta_Cobranca_PessoaDATA.text , [comp17]);
            LinCrt := LinCrt + 1;
          end;
          Consulta_Cobranca_Pessoa.NEXT ;
        end;
        LinCrt := LinCrt + 1;
        CARTA.impf(LinCrt, 01, '--------------------------------------------------------------------------------'  , [normal]);
        LinCrt := LinCrt + 1;
        CARTA.impf(LinCrt, 01, '--------------------------------------------------------------------------------'  , [normal]);
        LinCrt := LinCrt + 1;
        CARTA.impf(LinCrt, 01, '--------------------------------------------------------------------------------'  , [normal]);
        LinCrt := LinCrt + 1;
        CARTA.impf(LinCrt, 01, '--------------------------------------------------------------------------------'  , [normal]);
        LinCrt := LinCrt + 1;
        CARTA.impf(LinCrt, 01, '--------------------------------------------------------------------------------'  , [normal]);
        CARTA.FECHAR;
        Consulta_Cobranca_Pessoa.close ;
      end;
    end;
  end;
end;

procedure TFrmManutencaoCobranca.ActListagemCobrancaExecute(Sender: TObject);
begin
  if dmfinanceiro.Consulta_Cobranca.RecordCount > 0 then
    IMPRIMECOBRANCA;
end;

procedure TFrmManutencaoCobranca.ActCartaSCPCChequeExecute(Sender: TObject);
var
   Cont: Integer;
   LinCrt:Integer;
   NOME, NASCIMENTO, CPF, RG, UF, ENDERECO, BAIRRO, CIDADE, CEP,
   CHEQUE, VENCIMENTO, DT_VENDA, VALOR, DT_COMUNICACAO, ALINEA, BANCO,
   AGENCIA, CONTA: String;
begin
  FrmEntraDadosCheques := TFrmEntraDadosCheques.Create(Self);
  if FrmEntraDadosCheques.Showmodal = MrOk then
  begin
    NOME := FrmEntraDadosCheques.EdNome.Text;
    RG := FrmEntraDadosCheques.EdRg.text;
    CPF := FrmEntraDadosCheques.EdCpf.text;
    CIDADE := FrmEntraDadosCheques.edcidade.text;
    ENDERECO := FrmEntraDadosCheques.EdEndereco.Text;
    BAIRRO := FrmEntraDadosCheques.EDBAIRRO.Text;
    CEP := FrmEntraDadosCheques.EDCEP.Text;
    NASCIMENTO := FrmEntraDadosCheques.EdNascimento.Text;
    BANCO := FrmEntraDadosCheques.BANCO;
    AGENCIA := FrmEntraDadosCheques.EdAgencia.Text;
    CONTA := FrmEntraDadosCheques.EdConta.Text;
    CHEQUE := FrmEntraDadosCheques.EDCHEQUE.Text;
    VENCIMENTO := FrmEntraDadosCheques.EdVencimento.Text;
    DT_VENDA := FrmEntraDadosCheques.EdEmissao.Text;
    VALOR := FORMATFLOAT('###,##0.00', FrmEntraDadosCheques.EdValor.value);
    ALINEA := FrmEntraDadosCheques.EdAlinea.Text;
  end;
  FrmEntraDadosCheques.Free;
  FrmEntraDadosCheques := Nil;
  CARTA.ABRIR;
  Lincrt := length(DMAPP.CIDADE + ' (' + DMAPP.UF + '), ' + CDOW(DMAPP.DataServidor , exdDMA));
  Lincrt := 95 - LinCrt ;
  CARTA.impf(01, LinCrt, DMAPP.CIDADE + ' (' + DMAPP.UF + '), ' + CDOW(DMAPP.DataServidor, exdDMA), [comp17]);
  CARTA.impf(03, 01, 'A:' , [comp17]);
  CARTA.impf(04, 01, NOME, [comp17]);
  CARTA.impf(05, 01, ENDERECO , [comp17]);
  CARTA.impf(06, 01, BAIRRO  , [comp17]);
  CARTA.impf(07, 01, CEP + '  ' + CIDADE + '/' + DMAPP.UF , [comp17]);
  CARTA.impf(11, 01, 'REF. SEUS DEBITOS: '  , [comp17]);
  LinCrt := 12 ;
  CARTA.impf(LinCrt, 38, '   CHEQUE' , [comp17]);
  CARTA.impf(LinCrt, 61, '     VALOR' , [comp17]);
  CARTA.impf(LinCrt, 75, 'VENCIMENTO' , [comp17]);
  LinCrt := LinCrt + 1 ;
  CARTA.impf(LinCrt, 40, BANCO + '/' + AGENCIA + '/' + CHEQUE , [comp17]);
  //VALOR
  STR :=  VALOR ;
  while LENGTH(STR) < 10 do
    STR := ' ' + STR ;
  CARTA.impf(LinCrt, 61, STR ,[comp17]);
  CARTA.impf(LinCrt, 75, DT_VENDA , [comp17]);
  LinCrt := LinCrt + 1;
  LinCrt := LinCrt + 1;
  LinCrt := LinCrt + 1;
  CARTA.impf(LinCrt, 30, 'Informamos a  V.Sra. da existencia de debitos junto'  , [normal]);
  LinCrt := LinCrt + 1;
  CARTA.impf(LinCrt, 01, 'a este estabelecimento, conforme descricao acima.'  , [normal]);
  LinCrt := LinCrt + 1;
  LinCrt := LinCrt + 1;
  CARTA.impf(LinCrt, 30, 'Conforme  legislacao,  comunicamos ainda que dentro'  , [normal]);
  LinCrt := LinCrt + 1;
  CARTA.impf(LinCrt, 01, 'de 3(tres) dias do recebimento desta, caso persista a pendencia,  as parcelas em'  , [normal]);
  LinCrt := LinCrt + 1;
  CARTA.impf(LinCrt, 01, 'atraso estarao sendo encaminhadas para registro junto ao orgao de defesa e prote'  , [normal]);
  LinCrt := LinCrt + 1;
  CARTA.impf(LinCrt, 01, 'cao ao credito.'  , [normal]);
  LinCrt := LinCrt + 1;
  LinCrt := LinCrt + 1;
  CARTA.impf(LinCrt, 30, 'Sendo  assim, estamos cumprindo  o  dispositivo  no'  , [normal]);
  LinCrt := LinCrt + 1;
  CARTA.impf(LinCrt, 01, 'paragrafo 2o do artigo 43, da lei 8.078/90 ( Codigo  de  Protecao  e  Defesa  do'  , [normal]);
  LinCrt := LinCrt + 1;
  CARTA.impf(LinCrt, 01, 'Consumidor ),  informando  que  seu  nome passara a constar no banco de Dados do'  , [normal]);
  LinCrt := LinCrt + 1;
  CARTA.impf(LinCrt, 01, 'Servico Central de Protecao ao Credito ( SCPC ).'  , [normal]);
  LinCrt := LinCrt + 1;
  LinCrt := LinCrt + 1;
  CARTA.impf(LinCrt, 30, 'Nosso Interesse e Sempre Servi-lo bem,  para  tanto'  , [normal]);
  LinCrt := LinCrt + 1;
  CARTA.impf(LinCrt, 01, 'aguardamos sua presenca para futuras negociacoes.'  , [normal]);
  LinCrt := LinCrt + 1;
  LinCrt := LinCrt + 1;
  CARTA.impf(LinCrt, 01, '(CASO JA TENHA QUITADO ESTE DEBITO, FAVOR DESCONSIDERAR ESTE AVISO).'  , [normal]);
  LinCrt := LinCrt + 1;
  LinCrt := LinCrt + 1;
  LinCrt := LinCrt + 1;
  LinCrt := LinCrt + 1;
  CARTA.impf(LinCrt, 01, '                                                    ----------------------------'  , [normal]);
  LinCrt := LinCrt + 1;
  CARTA.impf(LinCrt, 01, '                                                      DEPARTAMENTO DE COBRANCA'  , [normal]);
  LinCrt := LinCrt + 1;
  LinCrt := LinCrt + 1;
  LinCrt := LinCrt + 1;
  if (NomeLocal = '') then
  begin
    CARTA.impf(LinCrt, 01, DMAPP.NOME , [comp17]);
    LinCrt := LinCrt + 1;
    CARTA.impf(LinCrt, 01, DMAPP.ENDER , [comp17]);
    LinCrt := LinCrt + 1;
    CARTA.impf(LinCrt, 01, DMAPP.FONE  , [comp17]);
    LinCrt := LinCrt + 1;
    CARTA.impf(LinCrt, 01, DMAPP.CIDADE + '/' + DMAPP.UF  , [comp17]);
  end
  else
  begin
    CARTA.impf(LinCrt, 01, DMFINANCEIRO.Local_CobrancaNOME.VALUE , [comp17]);
    LinCrt := LinCrt + 1;
    CARTA.impf(LinCrt, 01, DMFINANCEIRO.Local_CobrancaENDERECO.VALUE , [comp17]);
    LinCrt := LinCrt + 1;
    CARTA.impf(LinCrt, 01, DMFINANCEIRO.Local_CobrancaFONE.VALUE  , [comp17]);
    LinCrt := LinCrt + 1;
    CARTA.impf(LinCrt, 01, DMFINANCEIRO.Local_CobrancaCIDADE.VALUE + '/' + DMFINANCEIRO.Local_CobrancaUF.VALUE  , [comp17]);
  end;
  CARTA.FECHAR;
end;

procedure TFrmManutencaoCobranca.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  if DMUsuarios.Direito = 'SUPERVISOR' then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  else if DMUsuarios.Objeto = Self.Name then
     AtivaActions(Actions, DMUsuarios.Direito);

  Synchronize;
  if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGrdCbr.txt') then
    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGrdCbr.txt',Grid.Filter);

  DataSource.DataSet := dmFinanceiro.Consulta_Cobranca;
  Grid.DataSource := DataSource;
end;

procedure TFrmManutencaoCobranca.Synchronize;
var
  I: Integer;
  Node: TdxTreeListNode;
begin
  TLCustomize.ClearNodes;
  for I := 0 to GRID.ColumnCount - 1 do
  begin
    Node := TLCustomize.Add;
    Node.Values[TLCustomizeColumn.Index] := GRID.Columns[I].Caption;
    if GRID.Columns[I].Visible then
      Node.Values[TLCustomizeIsVisible.Index] := TLCustomizeIsVisible.ValueChecked;
    Node.Data := GRID.Columns[I];
  end;
end;

procedure TFrmManutencaoCobranca.ActCartaSeedExecute(Sender: TObject);
Var
   Cont: Integer;
   LinCrt:Integer;
   Soma: Real;
   Docto: String;
begin
     IF dmFinanceiro.Consulta_CobrancaPESSOA_FJ.VALUE > 0
     THEN BEGIN
          DmFinanceiro.VERPESSOA(dmfinanceiro.Consulta_CobrancaPESSOA_FJ.VALUE);
          DmFinanceiro.VERCLIENTE(dmfinanceiro.Consulta_CobrancaPESSOA_FJ.VALUE);

          CARTA.TamanhoQteLinhas := 33;

          CARTA.ABRIR;

          CARTA.impf(01, 01, 'DESTINATARIO DO OBJETO -    SEED', [EXPANDIDO, NEGRITO]);

          CARTA.ImpF(02, 01, Replicate('-', 80), [Normal]);

          CARTA.impf(03, 01, 'NOME     = ' + DmFinanceiro.Ver_PessoaNOME_RAZAO.TEXT , [comp17]);
          CARTA.impf(04, 01, 'ENDERECO = ' + DmFinanceiro.Ver_PessoaENDERECO.TEXT + ', N ' + DmFinanceiro.Ver_PessoaNUMERO.TEXT, [comp17]);
          CARTA.impf(05, 01, 'BAIRRO   = ' + DmFinanceiro.Ver_PessoaBAIRRO.text , [comp17]);
          CARTA.impf(06, 01, 'CIDADE   = ' + DmFinanceiro.Ver_PessoaCidade.value + ' UF = ' + DmFinanceiro.Ver_PessoaUf.Value + '   CEP = ' + DmFinanceiro.Ver_PessoaCep.Text , [comp17]);

          CARTA.impf(07, 01, 'O OBJETO FOI DEVIDAMENTE ENTREGUE....= |    SIM |__|     NAO |  |__|', [comp12, negrito]);

          CARTA.impf(08, 01, 'DATA DO RECEBIMENTO ____/____/_______', [comp17]);
          CARTA.impf(08, 30, 'ASSINATURA DO RECEBEDOR:', [comp17]);
          CARTA.impf(09, 30, '                             __________________________', [comp17]);


          CARTA.impf(11, 01, 'DOCUMENTO IDENTIFICACAO DO RECEBEDOR:', [comp17]);
          CARTA.impf(11, 30, 'RUBRICA E MAT. DO EMPREGADO:', [comp17]);
          CARTA.impf(12, 30, '                             __________________________', [comp17]);

          CARTA.impf(13, 01, 'O ENDEREÇO PARA DEVOLUÇÃO DESTA CORRESPONDÊNCIA', [comp17]);

          if ( NomeLocal = '' ) then
          begin
               CARTA.impf(14, 01, 'REMETENTE:' + DMAPP.Nome   , [comp17, NEGRITO]);
               CARTA.impf(15, 01, DMAPP.ENDER  , [comp17]);
               CARTA.impf(15, 30, DMAPP.BAIRRO , [comp17]);
               CARTA.impf(15, 50, DMAPP.CIDADE + '/' + DMAPP.UF, [comp17]);
          end
          else begin
               CARTA.impf(14, 01, 'REMETENTE:' + DmFinanceiro.Local_CobrancaNOME.VALUE   , [comp17, NEGRITO]);
               CARTA.impf(15, 01, DmFinanceiro.Local_CobrancaENDERECO.VALUE  , [comp17]);
               CARTA.impf(15, 30, DmFinanceiro.Local_CobrancaBAIRRO.VALUE , [comp17]);
               CARTA.impf(15, 50, DmFinanceiro.Local_CobrancaCIDADE.VALUE + '/' + DmFinanceiro.Local_CobrancaUF.VALUE, [comp17]);
          end;

          CARTA.FECHAR;

          CARTA.TamanhoQteLinhas := 66;

          DmFinanceiro.Ver_Pessoa.CLOSE ;
          DmFinanceiro.VER_CLIENTE_DADOS.close ;
     end;
end;

procedure TFrmManutencaoCobranca.ActFiltrarExecute(Sender: TObject);
begin
  seleciona;
end;

procedure TFrmManutencaoCobranca.CartaSCPC_PreImpresso;
var
   Cont: Integer;
   LinCrt:Integer;
   Soma: Real;
   Docto: String;
begin
  with DmFinanceiro do
  begin
        VERPESSOA   ( Consulta_Cobranca_PessoaPESSOA_FJ.VALUE );
        VERCLIENTE ( Consulta_Cobranca_PessoaPESSOA_FJ.VALUE );
        CARTA.TamanhoQteLinhas := 33;
        CARTA.ABRIR;
        Lincrt := length(DMAPP.CIDADE + ' (' + DMAPP.UF + '), ' + CDOW(DMAPP.DataServidor , exdDMA ));
        Lincrt := 93 - LinCrt ;
        CARTA.impf(01, LinCrt, DMAPP.CIDADE + ' (' + DMAPP.UF + '), ' + CDOW(DMAPP.DataServidor, exdDMA ), [comp17]);
        CARTA.impf(03, 01, 'REQUERIMENTO DE INCLUSAO AO S.C.P.C.' , [comp12, NEGRITO]);
        if NomeLocal = '' then
            CARTA.impf(04, 01, 'CODIGO ' + DmApp.CODIGO_SCPC + ' NOME DA EMPRESA ' + DMAPP.NOME, [comp17])
        else
            CARTA.impf(04, 01, 'CODIGO ' + Local_CobrancaCODIGO_SCPC.VALUE + ' NOME DA EMPRESA ' + Local_CobrancaNOME.VALUE, [comp17]);
        CARTA.impf(05, 01, 'NOME '   + Consulta_Cobranca_PessoaPESSOA_FJ.TEXT + '-' + Consulta_Cobranca_PessoaNOME.VALUE, [comp17]);
        CARTA.impf(06, 01, 'DT. NASC ' + Ver_PessoaDT_NASCIMENTO.text + ', CPF ' + MASCARACPF(Consulta_Cobranca_PessoaCPF_CGC.TEXT) + ', RG ' + Ver_PessoaRG_IE.value + ', UF ' + Ver_PessoaUF.VALUE , [comp17]);
        CARTA.impf(07, 01, 'CONJUGE  ' + VER_CLIENTE_DADOSCONJUGE.VALUE , [comp17]);
        CARTA.impf(08, 01, 'FILIACAO ' + VER_CLIENTE_DADOSPAI.VALUE + ' / ' + VER_CLIENTE_DADOSMAE.VALUE , [comp17]);
        VER_CLIENTE_DADOS.CLOSE ;
        CARTA.impf(09, 01, Consulta_Cobranca_PessoaENDERECO.VALUE + ', N ' + Consulta_Cobranca_PessoaNUMERO.VALUE , [comp17]);
        CARTA.impf(10, 01, Consulta_Cobranca_PessoaBAIRRO.VALUE  , [comp17]);
        CARTA.impf(11, 01, Copy(Consulta_Cobranca_PessoaCEP.VALUE,1,5) + '-' + Copy(Consulta_Cobranca_PessoaCEP.VALUE,6,3) + '  ' + Consulta_Cobranca_PessoaCIDADE.VALUE + '/' + Consulta_Cobranca_PessoaUF.VALUE , [comp17]);
        CARTA.impf(12, 01, 'N.CONTRATO/NOTA PROMISSORIA ' + DOCTO , [comp17]);
        CARTA.impf(12, 25, 'DT. VENC' , [comp17]);
        CARTA.impf(12, 45, 'DT.VENDA' , [comp17]);
        Consulta_Cobranca_Pessoa.DisableControls ;
        Consulta_Cobranca_Pessoa.First ;
        LinCrt := 13 ;
        SOMA := 0;
        while not Consulta_Cobranca_Pessoa.Eof do
        begin
              if ((DMAPP.DataServidor - Consulta_Cobranca_PessoaDATA.VALUE) > 31) then
              begin
                    CARTA.impf(LinCrt, 01, Consulta_Cobranca_PessoaDOCTO.text , [comp17]);
                    CARTA.impf(LinCrt, 25, Consulta_Cobranca_PessoaDATA.TEXT , [comp17]);
                    CARTA.impf(LinCrt, 45, Consulta_Cobranca_PessoaLANCAMENTO.TEXT , [comp17]);
                    //CARTA.impf(LinCrt, 45,  , [comp17]);
                    //VALOR
                    SOMA := SOMA + Consulta_Cobranca_PessoaSOMA.Value;
              end;
              Consulta_Cobranca_Pessoa.NEXT ;
              LinCrt := LinCrt + 1;
        end;
        CARTA.impf(LinCrt, 01, 'VALOR   ' + FORMATFLOAT('###,##0.00', SOMA), [comp17]);
        CARTA.impf(LinCrt, 20, 'DT. COMUNICACAO ' , [comp17]);
        CARTA.impf(LinCrt, 35, 'ALINEA ' , [comp17]);
        CARTA.impf(LinCrt, 45, 'BCO ' , [comp17]);
        CARTA.impf(LinCrt, 65, 'AG ' , [comp17]);
        LinCrt := LinCrt + 1;
        CARTA.impf(LinCrt, 01, 'AVALISTA ' , [comp17]);
        LinCrt := LinCrt + 1;
        CARTA.impf(LinCrt, 01, 'DEVEDOR PRINCIPAL ' + Consulta_Cobranca_PessoaPESSOA_FJ.TEXT + '-' + Consulta_Cobranca_PessoaNOME.VALUE, [comp17]);
        LinCrt := LinCrt + 2;
        CARTA.impf(LinCrt, 40, 'DECLARACAO' , [comp12, NEGRITO]);
        LinCrt := LinCrt + 2;
        CARTA.impf(LinCrt, 01, 'DECLARAMOS  SER  DE  NOSSA RESPONSABILIDADE O DEBITO  REGISTRADO  E  QUE  POSSUIMOS  DOCUMENTO  COMPROVATORIO  DA  ORIGEM  DA  DIVIDA.' , [comp17, NEGRITO]);
        LinCrt := LinCrt + 1;
        CARTA.impf(LinCrt, 01, 'A EMPRESA ESTA CIENTE DA OBRIGATORIEDADE DE COMUNICACAO ESCRITA AO CLIENTE SOBRE O REGISTRO NO  S.C.P.C., ATENDENDO AO DISPOSTO  NO 2o' , [comp17, NEGRITO]);
        LinCrt := LinCrt + 1;
        CARTA.impf(LinCrt, 01, 'DO ARTIGO 43 DO CODIGO DE DEFESA DO CONSUMIDOR.' , [comp17, NEGRITO]);
        CARTA.FECHAR;
        CARTA.TamanhoQteLinhas := 66;
  end;
end;

procedure TFrmManutencaoCobranca.CartaSCPC_Customizado;
begin
    DmSerie_Customizaveis.edtLayoutCartaSCPC.close;
    DmSerie_Customizaveis.edtLayoutCartaSCPC.parambyname('cnpj').value := dmApp.cnpj;
    DmSerie_Customizaveis.edtLayoutCartaSCPC.Open;

    rptCartaSCPC.Template.DatabaseSettings.Name := DmSerie_Customizaveis.edtLayoutCartaSCPCCNPJ.asstring;
    rptCartaSCPC.Template.LoadFromDatabase;
    rptCartaSCPC.print;
end;

procedure TFrmManutencaoCobranca.GRIDHeaderMoved(Sender: TObject;
  Column: TdxTreeListColumn);
begin
   Synchronize;
end;

procedure TFrmManutencaoCobranca.GRIDHideHeader(Sender: TObject;
  AColumn: TdxTreeListColumn);
begin
   Synchronize;
end;

procedure TFrmManutencaoCobranca.GRIDShowHeader(Sender: TObject;
  AColumn: TdxTreeListColumn; BandIndex, RowIndex, ColIndex: Integer);
begin
   Synchronize;
end;

procedure TFrmManutencaoCobranca.ActConfCamposExecute(Sender: TObject);
begin
  pnlCampos.visible := (not pnlCampos.visible);
end;

procedure TFrmManutencaoCobranca.TLCustomizeDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  column : TdxTreeListColumn;
begin
  DragNode.MoveTo(TLCustomize.FocusedNode, natlInsert);
  column := TdxTreeListColumn(DragNode.Data);
  if (TLCustomize.FocusedNode <> nil) then
    column.Index := TLCustomize.FocusedNode.AbsoluteIndex
  else column.Index := 0;

end;

procedure TFrmManutencaoCobranca.TLCustomizeDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
    Accept := Source = Sender;
end;

procedure TFrmManutencaoCobranca.TLCustomizeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrmManutencaoCobranca.TLCustomizeIsVisibleToggleClick(
  Sender: TObject; const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmManutencaoCobranca.Save(ADefaultExt, AFilter, AFileName: String;
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

procedure TFrmManutencaoCobranca.ActExportarExcelExecute(Sender: TObject);
begin
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Listagem de Cobranças.xls', Grid.SaveToXLS);
end;

end.


