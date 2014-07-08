 unit Pendencias_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Mask, Buttons, ExtCtrls,
   Db,  dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxDBTLCl,
  dxGrClms, dxEditor,
  dxExEdtr, dxEdLib, ComCtrls,  dxDBEdtr, dxDBELib,
  RDprint,     cxPropertiesStore, variants, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus,
  dxSkinscxPCPainter, cxPC, cxButtons, cxLabel;

type
  TFrmPendencias = class(TForm)
    pnlForm: TPanel;
    Bevel3: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    DsFatura: TDataSource;
    LblTitulo: TcxLabel;
    EdClienteInicial: TdxButtonEdit;
    IMPRESSORAPEND: TRDprint;
    LBLCLIENTE: TcxLabel;
    DsReceber: TDataSource;
    Panel1: TPanel;
    ActImprimir: TAction;
    ActDetalhes: TAction;
    PC: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    dxTabSheet2: TcxTabSheet;
    PgUp: TAction;
    PgDn: TAction;
    GRIDAVULSASPAGAS: TdxDBGrid;
    GRIDAVULSASPAGASCODIGO: TdxDBGridMaskColumn;
    GRIDAVULSASPAGASDT_VENCTO: TdxDBGridDateColumn;
    GRIDAVULSASPAGASDOCTO: TdxDBGridMaskColumn;
    GRIDAVULSASPAGASVALOR: TdxDBGridMaskColumn;
    GRIDAVULSASPAGASPARCELA: TdxDBGridMaskColumn;
    GRIDAVULSASPAGASFONE: TdxDBGridMaskColumn;
    GRIDAVULSASPAGASHISTORICO: TdxDBGridMaskColumn;
    GRIDAVULSASPAGASDT_LANCTO: TdxDBGridDateColumn;
    GRIDAVULSASPAGASVLR_PARCIAL: TdxDBGridColumn;
    GRIDAVULSASPAGASTOTAL: TdxDBGridColumn;
    GRIDAVULSASPAGASJUROS_REC: TdxDBGridColumn;
    GRIDAVULSASPAGASDESCONTOS: TdxDBGridColumn;
    GRIDAVULSASPAGASTIPO_DOCTO: TdxDBGridColumn;
    DsFaturaRec: TDataSource;
    DsRecebidas: TDataSource;
    DsVendas: TDataSource;
    Label6: TcxLabel;
    LBLFATURAS: TcxLabel;
    Shape3: TShape;
    Shape4: TShape;
    LBLCHEQUE: TcxLabel;
    Label7: TcxLabel;
    Shape6: TShape;
    LBLTOTALFATURA: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    LBLTOTALRECEBER: TcxLabel;
    Shape1: TShape;
    Label10: TcxLabel;
    LBLGERAL: TcxLabel;
    Shape2: TShape;
    LBLTOTALFATURAREC: TcxLabel;
    LBLTOTALRECEBIDAS: TcxLabel;
    LBLGERALREC: TcxLabel;
    Label5: TcxLabel;
    Label3: TcxLabel;
    DsCheques: TDataSource;
    GRIDAVULSASPAGASDT_BAIXA: TdxDBGridColumn;
    GRIDAVULSASPAGASATRASO: TdxDBGridColumn;
    GRIDVENDAS: TdxDBGrid;
    GRIDVENDASCODIGO: TdxDBGridMaskColumn;
    GRIDVENDASDATA: TdxDBGridDateColumn;
    GRIDVENDASNATUREZA: TdxDBGridColumn;
    GRIDVENDASVENDEDOR: TdxDBGridColumn;
    GRIDVENDASTIPO_VENDA: TdxDBGridColumn;
    GRIDVENDASCONSUMIDOR: TdxDBGridColumn;
    GRIDVENDASORCAMENTO: TdxDBGridColumn;
    GRIDVENDASNF: TdxDBGridColumn;
    GRIDVENDASCF: TdxDBGridColumn;
    GRIDVENDASCAIXA: TdxDBGridColumn;
    GRIDVENDASUSUARIO: TdxDBGridColumn;
    GRIDVENDASCANCELADA: TdxDBGridColumn;
    Label11: TcxLabel;
    ActOk: TAction;
    GRIDCHEQUEPAGO: TdxDBGrid;
    Label12: TcxLabel;
    DsChequesPagos: TDataSource;
    GRIDCHEQUEPAGOBANCO: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGOCONTA: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGOCHEQUE: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGOVENDA: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGOVALOR: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGOCONCILIADO: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGOPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGOHISTORICO: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGOAGENCIA: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGONOME: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGOFONE: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGOFAX: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGOCELULAR: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGOCPF_CGC: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGOTotal: TdxDBGridColumn;
    GRIDCHEQUEPAGOJUROS: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGOMOEDA1: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGOMOEDA2: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGOTIPO: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGOPLANILHA: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGODIGITO_AGENCIA: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGODIGITO_CHEQUE: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGOMOTIVO_DEVOLUCAO: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGOCODIGO_MOTIVO_DEVOLUCAO: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGOVEZES_DEVOLUCAO: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGOEMISSAO: TdxDBGridDateColumn;
    GRIDCHEQUEPAGOPRE_DATE: TdxDBGridDateColumn;
    GRIDCHEQUEPAGODATA_CONCILIACAO: TdxDBGridDateColumn;
    GRIDCHEQUEPAGODATA_ACERTO: TdxDBGridDateColumn;
    GRIDCHEQUEPAGODATA_DEVOLUCAO: TdxDBGridDateColumn;
    GRIDCHEQUEPAGORG_IE: TdxDBGridMaskColumn;
    GRIDCHEQUEPAGOPROCESSADO: TdxDBGridMaskColumn;
    dxTabSheet3: TcxTabSheet;
    Label13: TcxLabel;
    Label14: TcxLabel;
    Label15: TcxLabel;
    Label16: TcxLabel;
    Label17: TcxLabel;
    Label18: TcxLabel;
    Label19: TcxLabel;
    Label20: TcxLabel;
    Label21: TcxLabel;
    Shape5: TShape;
    LblValoresAbertos: TcxLabel;
    LblValoresPagos: TcxLabel;
    Shape7: TShape;
    lblvezesnegativado: TcxLabel;
    Shape8: TShape;
    lblultimaconsulta: TcxLabel;
    Shape9: TShape;
    lbldiareabilitado: TcxLabel;
    Shape10: TShape;
    lbldiasatraso: TcxLabel;
    Shape11: TShape;
    lblmaiortempo: TcxLabel;
    Shape12: TShape;
    lblmaiorvalor: TcxLabel;
    Label30: TcxLabel;
    Shape14: TShape;
    lblmediapgtomensal: TcxLabel;
    Shape15: TShape;
    lbllimitedisponivel: TcxLabel;
    Shape16: TShape;
    Label33: TcxLabel;
    Shape13: TShape;
    lblqntdecompras: TcxLabel;
    Shape17: TShape;
    Label22: TcxLabel;
    Shape18: TShape;
    lbltotalentradas: TcxLabel;
    Label23: TcxLabel;
    LblLimite: TcxLabel;
    Shape19: TShape;
    Label24: TcxLabel;
    Label25: TcxLabel;
    Label26: TcxLabel;
    SpeedButton1: TcxButton;
    SpeedButton2: TcxButton;
    BtnFechar: TcxButton;
    GRIDCHEQUE: TdxDBGrid;
    GRIDCHEQUEBANCO: TdxDBGridMaskColumn;
    GRIDCHEQUECONTA: TdxDBGridMaskColumn;
    GRIDCHEQUECHEQUE: TdxDBGridMaskColumn;
    GRIDCHEQUEEMISSAO: TdxDBGridDateColumn;
    GRIDCHEQUEPRE_DATE: TdxDBGridDateColumn;
    GRIDCHEQUEVALOR: TdxDBGridMaskColumn;
    GRIDCHEQUEHISTORICO: TdxDBGridMaskColumn;
    GRIDCHEQUEAGENCIA: TdxDBGridMaskColumn;
    GRIDCHEQUETotal: TdxDBGridColumn;
    GRIDCHEQUEJUROS: TdxDBGridMaskColumn;
    Label27: TcxLabel;
    GRIDCHEQUEPROCESSADO: TdxDBGridMaskColumn;
    GRIDCHEQUEVEZES_DEVOLUCAO: TdxDBGridMaskColumn;
    GRIDCHEQUEDATA_ACERTO: TdxDBGridDateColumn;
    GRIDVENDASVLRLIQUIDO: TdxDBGridMaskColumn;
    GRIDRECEBER: TdxDBGrid;
    GRIDRECEBERSELECIONADO: TdxDBGridCheckColumn;
    GRIDRECEBERCODIGO: TdxDBGridMaskColumn;
    GRIDRECEBERPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDRECEBERVALOR: TdxDBGridMaskColumn;
    GRIDRECEBERPARCIAL: TdxDBGridColumn;
    GRIDRECEBERTOTAL: TdxDBGridColumn;
    GRIDRECEBERJUROSPARC: TdxDBGridColumn;
    GRIDRECEBERJUROSCALC: TdxDBGridColumn;
    GRIDRECEBERTOTAL_NOMINAL: TdxDBGridColumn;
    GRIDRECEBERJUROS: TdxDBGridColumn;
    GRIDRECEBERDESCONTOS: TdxDBGridColumn;
    GRIDRECEBERVENCIMENTO: TdxDBGridDateColumn;
    GRIDRECEBERDOCUMENTO: TdxDBGridMaskColumn;
    GRIDRECEBERPARCELA: TdxDBGridMaskColumn;
    GRIDRECEBERATRASO: TdxDBGridColumn;
    GRIDRECEBERHISTORICO: TdxDBGridMaskColumn;
    GRIDRECEBERLANCAMENTO: TdxDBGridDateColumn;
    GRIDRECEBERTIPO: TdxDBGridColumn;
    GRIDRECEBERCOBRADOR: TdxDBGridColumn;
    GRIDRECEBERARQ_MORTO: TdxDBGridMaskColumn;
    Print: TRDprint;
    stgFrmPendencias: TcxPropertiesStore;
    GRIDCHEQUEPAGODATA_REAPRES: TdxDBGridDateColumn;
    procedure ActFecharExecute(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdClienteInicialButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure EdClienteInicialExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IMPRESSORAPENDNewPage(Sender: TObject; Pagina: Integer);
    procedure IMPRESSORAPENDBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure ActImprimirExecute(Sender: TObject);
    procedure ActDetalhesExecute(Sender: TObject);
    procedure PgUpExecute(Sender: TObject);
    procedure PgDnExecute(Sender: TObject);
    procedure PCChange(Sender: TObject);
    procedure GRIDRECEBERCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure GRIDCHEQUECustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure EdClienteInicialEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActOkExecute(Sender: TObject);
    procedure GRIDCHEQUEPAGOCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    { Private declarations }
    Procedure Imprime;
    Procedure Imprime2; //copiado do relatório de pendências
    Procedure Imprime36 ;
    procedure Seleciona;
    procedure SelecionaRecebidas;
    procedure ANALISA_CLIENTE ( Cliente: Integer );

    Function  FiltrarFatura ( CLIENTE: INTEGER ): Real ;

    procedure IncLin;

  public
    Opcao: String ;
    { Public declarations }
  end;

var
  FrmPendencias: TFrmPendencias;
  INI, FIM: Integer;
  AUX, STR: String;
  Inicial, Final: Integer ;
  Pagina, Lin   : Integer ;
  SomaReceber, SomaCheque, SomaFatura, SomaFaturaFutura: Real ;
  SomaRecebidas, SomaFaturaRec: Real ;
implementation

uses

    Application_DM,
    Funcoes,
    Main,
    Localizar_Cliente,
    Financeiro_Dm,
    Empresas_DM,
    Vendas_Dm, Usuarios_DM, Procedures5_DM, Financeiro_Dm2, Vendas_DM2;

{$R *.DFM}

Function TFrmPendencias.FiltrarFatura ( CLIENTE: INTEGER ): Real ;
Var
   Soma: Real   ;
Begin
     With DmFinanceiro do
     begin
          //isso na verdade é venda, não tem nada de fatura futura..
          SelFatura_Futura.close;
          SelFatura_Futura.Sql.text := ' SELECT * FROM VER_FAT_VENDAS_ABERTAS( :CNPJ, :DINI, :DFIM, :PESSOA ) ';
          SelFatura_Futura.ParamByName ( 'CNPJ'   ).AsString  := DmaPP.Cnpj ;
          SelFatura_Futura.ParamByName ( 'PESSOA' ).AsInteger := Cliente    ;
          SelFatura_Futura.ParamByName ( 'DINI'   ).AsDate    := STRTODATE('01/01/1900');
          SelFatura_Futura.ParamByName ( 'DFIM'   ).AsDate    := STRTODATE('31/12/9999');
          SelFatura_Futura.Open    ;
          SelFatura_Futura.DisableControls ;

          SelFatura_Futura.First ;

          Soma := 0;

          While not SelFatura_Futura.Eof do
          begin
               Soma := Soma + SelFatura_FuturaVLRLIQUIDO.Value ;

               SelFatura_Futura.Next ;
          end;

          SelFatura_Futura.EnableControls ;
     end;

     Result := Soma ;
End;

procedure TFrmPendencias.ActFecharExecute(Sender: TObject);
begin
     close ;
end;                              

procedure TFrmPendencias.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  If (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmPendencias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If application.messagebox('Deseja sair do formulário de Pendências?','Confirme',mb_yesno + mb_iconquestion) = idyes  THEN
     BEGIN
          DmFinanceiro.SelFatura_Futura.close;
          If DmFinanceiro.SelPessoasFJ.Tag = 0
          then
              DmFinanceiro.SelPessoasFJ.Close
          else
              DmFinanceiro.SelPessoasFJ.Tag := DmFinanceiro.SelPessoasFJ.Tag - 1;

          If DsFatura.DataSet.Tag = 0
          then
              DsFatura.DataSet.Close
          else
              DsFatura.DataSet.Tag := DsFatura.DataSet.Tag - 1;

          If DsRecebidas.DataSet.Tag = 0
          then
              DsRecebidas.DataSet.Close
          else
              DsRecebidas.DataSet.Tag := DsRecebidas.DataSet.Tag - 1;

          If DsRecebidas.DataSet.Tag = 0
          then
              DsRecebidas.DataSet.Close
          else
              DsRecebidas.DataSet.Tag := DsRecebidas.DataSet.Tag - 1;

          If DsCheques.DataSet.Tag = 0
          then
              DsCheques.DataSet.Close
          else
              DsRecebidas.DataSet.Tag := DsRecebidas.DataSet.Tag - 1;

          If DsCheques.DataSet.Tag = 0
          then
              DsCheques.DataSet.Close
          else
              DsCheques.DataSet.Tag := DsCheques.DataSet.Tag - 1;

          If DsCheques.DataSet.Tag = 0
          then
              DsReceber.DataSet.Close
          else
              DsCheques.DataSet.Tag := DsCheques.DataSet.Tag - 1;

          Action := caFree;
          FrmPendencias := Nil;
     end
     else begin
          Action := CaNone ;
     end;
end;

procedure TFrmPendencias.Seleciona ;
begin
     WITH DmFinanceiro DO
     BEGIN
          qryVerFatPendencia.Close ;
          qryVerFatPendencia.SQL.text := ' SELECT * FROM VER_FATURA_PESSOA(:CNPJ, :PESSOA_FJ ) ORDER BY VENCIMENTO ';
          qryVerFatPendencia.ParamByName ('PESSOA_FJ').asInteger := strtoint(trim(EdClienteInicial.text));
          qryVerFatPendencia.OPEN    ;

          SOMAFATURA := 0;

          qryVerFatPendencia.DisableControls ;

          qryVerFatPendencia.FIRST ;

          WHILE NOT qryVerFatPendencia.EOF DO
          BEGIN
               SOMAFATURA := SOMAFATURA + qryVerFatPendenciaTOTAL.VALUE ;
               qryVerFatPendencia.NEXT ;
          END;

          LBLTOTALFATURA.Caption := FORMATFLOAT('###,###,##0.00', SOMAFATURA );

          qryVerFatPendencia.EnableControls ;

          //RECEBER
          dmfinanceiro2.qryVerReceberLMT.Close;
          dmfinanceiro2.qryVerReceberLMT.ParamByName ('CNPJ').value := DMAPP.CNPJ;
          dmfinanceiro2.qryVerReceberLMT.ParamByName ('PESSOA_FJ').asInteger := strtoint(trim(EdClienteInicial.text));
          dmfinanceiro2.qryVerReceberLMT.Open;



          SOMARECEBER := 0;

          dmfinanceiro2.qryVerReceberLMT.DisableControls ;

          dmfinanceiro2.qryVerReceberLMT.FIRST ;

          WHILE NOT dmfinanceiro2.qryVerReceberLMT.EOF DO
          BEGIN
               SOMARECEBER := SOMARECEBER + dmfinanceiro2.qryVerReceberLMTTOTAL_Nominal.VALUE ;
               dmfinanceiro2.qryVerReceberLMT.NEXT ;
          END;

          LBLTOTALRECEBER.Caption := FORMATFLOAT('###,###,##0.00', SOMARECEBER );

          dmfinanceiro2.qryVerReceberLMT.EnableControls ;

          SomaFaturaFutura := FiltrarFatura ( strtoint(trim(EdClienteInicial.text))) ;

          LBLFATURAS.Caption := FORMATFLOAT('###,###,##0.00', SomaFaturaFutura );

//////
          //CHEQUE PAGOS
          VERCHEQUE_PAGO.Close ;
          VERCHEQUE_PAGO.SQL.text := ' SELECT * FROM VER_FIN_CHEQUES_PESSOA_PAGO ( :CNPJ, :COD ) ORDER BY PRE_DATE ';
          VERCHEQUE_PAGO.ParamByName ('CNPJ').asString  := DmApp.Cnpj;
          VERCHEQUE_PAGO.ParamByName ('COD' ).asInteger := strtoint(trim(EdClienteInicial.text));
          VERCHEQUE_PAGO.Open ;

          //CHEQUE ABERTOS
          dmfinanceiro2.qryVerChequePendencia.Close ;
          dmfinanceiro2.qryVerChequePendencia.ParamByName('cliente').asInteger := strtoint(trim(EdClienteInicial.text));
          dmfinanceiro2.qryVerChequePendencia.Open;

          SOMACHEQUE := 0;
          dmfinanceiro2.qryVerChequePendencia.DisableControls ;
          dmfinanceiro2.qryVerChequePendencia.FIRST ;
          WHILE NOT dmfinanceiro2.qryVerChequePendencia.EOF DO
          BEGIN
               SOMACHEQUE := SOMACHEQUE + dmfinanceiro2.qryVerChequePendenciaValor.VALUE ;
               dmfinanceiro2.qryVerChequePendencia.NEXT ;
          END;

          LBLCHEQUE.Caption := FORMATFLOAT('###,###,##0.00', SOMACHEQUE );
          dmfinanceiro2.qryVerChequePendencia.EnableControls ;

          SomaFaturaFutura := FiltrarFatura ( strtoint(trim(EdClienteInicial.text))) ;
          LBLFATURAS.Caption := FORMATFLOAT('###,###,##0.00', SomaFaturaFutura );
          LBLGERAL.CAPTION := FORMATFLOAT('###,###,##0.00', SOMARECEBER + SOMAFATURA + SOMAFATURAFUTURA + SOMACHEQUE);
     END;

//--------------


     WITH DmFinanceiro DO
     BEGIN
          qryVerFatPendencia.Close ;
          qryVerFatPendencia.SQL.CLEAR ;
          qryVerFatPendencia.Params.CLEAR ;

          qryVerFatPendencia.Params.CreateParam ( FtInteger, 'PESSOA_FJ', PtInputOutPut );

          qryVerFatPendencia.SQL.ADD ( ' SELECT * FROM VER_FATURA_PESSOA ( :CNPJ, :PESSOA_FJ ) ' );
          qryVerFatPendencia.SQL.ADD ( ' ORDER BY VENCIMENTO ' );

          qryVerFatPendencia.ParamByName ('PESSOA_FJ').asInteger := strtoint(trim(EdClienteInicial.text));

          qryVerFatPendencia.PREPARE ;
          qryVerFatPendencia.OPEN    ;

          SOMAFATURA := 0;

          qryVerFatPendencia.DisableControls ;

          qryVerFatPendencia.FIRST ;

          WHILE NOT qryVerFatPendencia.EOF DO
          BEGIN
               SOMAFATURA := SOMAFATURA + qryVerFatPendenciaTOTAL.VALUE ;
               qryVerFatPendencia.NEXT ;
          END;

          LBLTOTALFATURA.Caption := FORMATFLOAT('###,###,##0.00', SOMAFATURA );

          qryVerFatPendencia.EnableControls ;

          //RECEBER
          dmfinanceiro2.qryVerReceberLMT.Close;
          dmfinanceiro2.qryVerReceberLMT.ParamByName ('CNPJ').value := DMAPP.CNPJ;
          dmfinanceiro2.qryVerReceberLMT.ParamByName ('PESSOA_FJ').asInteger := strtoint(trim(EdClienteInicial.text));
          dmfinanceiro2.qryVerReceberLMT.Open;

          SOMARECEBER := 0;

          dmfinanceiro2.qryVerReceberLMT.DisableControls ;

          dmfinanceiro2.qryVerReceberLMT.FIRST ;

          WHILE NOT dmfinanceiro2.qryVerReceberLMT.EOF DO
          BEGIN
               SOMARECEBER := SOMARECEBER + dmfinanceiro2.qryVerReceberLMTTOTAL_Nominal.VALUE ;
               dmfinanceiro2.qryVerReceberLMT.NEXT ;
          END;

          LBLTOTALRECEBER.Caption := FORMATFLOAT('###,###,##0.00', SOMARECEBER );

          dmfinanceiro2.qryVerReceberLMT.EnableControls ;

          SomaFaturaFutura := FiltrarFatura ( strtoint(trim(EdClienteInicial.text))) ;

          LBLFATURAS.Caption := FORMATFLOAT('###,###,##0.00', SomaFaturaFutura );
     end;
END;

procedure TFrmPendencias.SelecionaRecebidas ;
begin
     WITH DmFinanceiro DO
     BEGIN
          //RECEBER
          Baixas_Receber.Close ;
          Baixas_Receber.SQL.text := 'Select * From VER_BAIXA_RECEBER_PESSOA(:CNPJ,:CLIENTE )';
          Baixas_Receber.ParamByName ('CLIENTE').asInteger := strtoint(trim(EdClienteInicial.text));
          Baixas_Receber.Open ;

          SOMARECEBIDAS := 0;

          Baixas_Receber.DisableControls ;
          WHILE NOT Baixas_Receber.EOF DO
          BEGIN
               SOMARECEBIDAS := SOMARECEBIDAS + Baixas_ReceberTOTAL.VALUE ;
               Baixas_Receber.NEXT ;
          END;

          LBLTOTALRECEBIDAS.Caption := FORMATFLOAT('###,###,##0.00', SOMARECEBIDAS );
          Baixas_Receber.EnableControls ;

          LBLGERALREC.CAPTION := FORMATFLOAT('###,###,##0.00', SOMARECEBIDAS + SOMAFATURAREC );
     END;
END;

procedure TFrmPendencias.IMPRIME;
VAR
   IMP, STR         : STRING;
   JUROS, JUROSGERAL, TOTAL, TOTALGERAL: Real ;
   ULTCOD           : INTEGER;
begin
     // Se pensa o tamanho da armada que é este relatório.. 900 e poucas linhas.. pra caba!!!
     PAGINA     := 1;
     Lin      := 5;

     IF TRIM(DmApp.Perfil_ComputadorPORTA_PENDENCIAS.VALUE  ) <> ''  THEN
     begin
       SetDefaultPrinter( DmApp.Perfil_ComputadorPORTA_PENDENCIAS.VALUE )       ;
       IMPRESSORAPEND.SetPrinterbyPorta ( DmApp.Perfil_ComputadorPORTA_PENDENCIAS.VALUE );
       IMPRESSORAPEND.PortaComunicacao := DmApp.Perfil_ComputadorPORTA_PENDENCIAS.VALUE  ;
     end;

     IMPRESSORAPEND.ABRIR;
     WITH DMFINANCEIRO DO
     BEGIN
          TOTAL      := 0;//TOTAL DO CLIENTE
          TOTALGERAL := 0;//TOTAL DAS CONTAS
          JUROSGERAL := 0;//VALOR DOS JUROS
          IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE
          qryVerFatPendencia.FIRST ;
          WHILE NOT qryVerFatPendencia.Eof DO
          BEGIN
            IncLin;

            IF IMP = 'N' THEN
            BEGIN
              IMPRESSORAPEND.impf(Lin,01, INTTOSTR(qryVerFatPendenciaPESSOA_FJ.Value) + '-'+ qryVerFatPendenciaNOME.Value , [comp17]);

              IF LENGTH( qryVerFatPendenciaCPF_CGC.Value ) <= 11 THEN
                IMPRESSORAPEND.impf(Lin,50, MASCARACPF(qryVerFatPendenciaCPF_CGC.Value) , [comp17])
              ELSE
                IMPRESSORAPEND.impf(Lin,50, MASCARACNPJ(qryVerFatPendenciaCPF_CGC.Value) , [comp17]);

              IMP := 'S' ;

              //ULTIMO CODIGO IMPRESSO
              ULTCOD := qryVerFatPendenciaPESSOA_FJ.VALUE ;
              TOTAL := 0;//TOTAL DO CLIENTE

              IncLin ;
            END;

            //BLOCO DE IMPRESSAO DO CONTAS A RECEBER
            //lancamento
            IMPRESSORAPEND.impf(Lin,01,DATETOSTR(qryVerFatPendenciaDATA.Value ),[comp17]);

            //Documento
            IMPRESSORAPEND.impf(Lin,08, LeftStr(qryVerFatPendenciaCODIGO.text, 10) ,[comp17]);

            //VENCIMENTO
            IMPRESSORAPEND.impf(Lin,22, DATETOSTR(qryVerFatPendenciaVENCIMENTO.Value ) ,[comp17]);

            //ATRASO
            IMPRESSORAPEND.impf(Lin,32, FLOATTOSTR(DATE-qryVerFatPendenciaVENCIMENTO.Value ) ,[comp17]);

             STR :=  FORMATFLOAT ('###,###,##0.00', qryVerFatPendenciaTOTAL.Value );
              WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               IMPRESSORAPEND.impf(Lin,50, STR ,[comp17]);

               JUROS := qryVerFatPendenciaJUROS.VALUE ;

               STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               IMPRESSORAPEND.impf(Lin,62, STR ,[comp17]);

               STR :=  FORMATFLOAT ('###,###,##0.00', JUROS + qryVerFatPendenciaTOTAL.Value);
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               IMPRESSORAPEND.impf(Lin,73, STR ,[comp17]);

               TOTAL      := TOTAL + qryVerFatPendenciaTOTAL.Value;
               TOTALGERAL := TOTALGERAL + qryVerFatPendenciaTOTAL.Value + JUROS ;
               JUROSGERAL := JUROSGERAL + JUROS ;

               qryVerFatPendencia.NEXT ;

               IF (( ULTCOD <> qryVerFatPendenciaPESSOA_FJ.VALUE )AND(NOT qryVerFatPendencia.EOF))
               THEN BEGIN
                    IncLin;

                    IMPRESSORAPEND.impf(Lin,50, '-------------' ,[comp17]);
                    IMPRESSORAPEND.impf(Lin,62, '-------------' ,[comp17]);
                    IMPRESSORAPEND.impf(Lin,73, '-------------' ,[comp17]);

                    IncLin;

                    IMPRESSORAPEND.impf(Lin,40, ' SOMA FATURAS' ,[comp17]);

                    //VALOR
                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORAPEND.impf(Lin,50, STR ,[comp17]);

                    //JUROS
                    STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORAPEND.impf(Lin,62, STR ,[comp17]);

                    //GERAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORAPEND.impf(Lin,73, STR ,[comp17]);

                    IncLin;

                    IMPRESSORAPEND.impf(Lin,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);
               END
               ELSE BEGIN
                    IF (qryVerFatPendencia.EOF)
                    THEN BEGIN
                         IncLin;

                         IMPRESSORAPEND.impf(Lin,50, '-------------' ,[comp17]);
                         IMPRESSORAPEND.impf(Lin,62, '-------------' ,[comp17]);
                         IMPRESSORAPEND.impf(Lin,73, '-------------' ,[comp17]);

                         IncLin;

                         IMPRESSORAPEND.impf(Lin,40, ' SOMA FATURAS' ,[comp17]);

                         //VALOR
                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORAPEND.impf(Lin, 50, STR ,[comp17]);

                         //JUROS
                         STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORAPEND.impf(Lin, 62, STR ,[comp17]);

                         //GERAL
                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORAPEND.impf(Lin,73, STR ,[comp17]);

                         IncLin;

                         IMPRESSORAPEND.impf(Lin,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);
                    END;
               END;
          END;

          dmfinanceiro2.qryVerReceberLMT.FIRST ;

          //CONTAS A RECEBER
          WHILE NOT dmfinanceiro2.qryVerReceberLMT.Eof DO
          BEGIN
               IncLin;

               IF IMP = 'N'
               THEN BEGIN
                    IMPRESSORAPEND.impf(Lin,01,INTTOSTR(dmfinanceiro2.qryVerReceberLMTPESSOA_FJ.Value) + '-'+ dmfinanceiro2.qryVerReceberLMTNOME.Value , [comp17]);

                    IF LENGTH( dmfinanceiro2.qryVerReceberLMTCPF_CGC.Value ) <= 11
                    THEN BEGIN
                         IMPRESSORAPEND.impf(Lin,50,MASCARACPF(dmfinanceiro2.qryVerReceberLMTCPF_CGC.Value) , [comp17]);
                    END
                    ELSE BEGIN
                         IMPRESSORAPEND.impf(Lin,50, MASCARACNPJ(dmfinanceiro2.qryVerReceberLMTCPF_CGC.Value) , [comp17]);
                    END;


                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTCOD := dmfinanceiro2.qryVerReceberLMTPESSOA_FJ.VALUE ;

                    TOTAL := 0;//TOTAL DO CLIENTE

                    IncLin ;
               END;

               //BLOCO DE IMPRESSAO DO CONTAS A RECEBER
               //lancamento
               IMPRESSORAPEND.impf(Lin, 01, DATETOSTR(dmfinanceiro2.qryVerReceberLMTDT_LANCTO.Value),[comp17]);

               //Documento
               IMPRESSORAPEND.impf(Lin, 08, LeftStr(dmfinanceiro2.qryVerReceberLMTDOCTO.text, 10) ,[comp17]);

               //VENCIMENTO
               IMPRESSORAPEND.impf(Lin, 22, DATETOSTR(dmfinanceiro2.qryVerReceberLMTDT_VENCTO.Value ) ,[comp17]);

               //ATRASO
               IMPRESSORAPEND.impf(Lin,32, FLOATTOSTR(dmfinanceiro2.qryVerReceberLMTAtraso.Value ) ,[comp17]);

               STR :=  FORMATFLOAT ('###,###,##0.00', dmfinanceiro2.qryVerReceberLMTTOTAL.Value );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               IMPRESSORAPEND.impf(Lin,50, STR ,[comp17]);


               STR :=  FORMATFLOAT ('###,###,##0.00', dmfinanceiro2.qryVerReceberLMTJuros_Conta.value);
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               IMPRESSORAPEND.impf(Lin,62, STR ,[comp17]);

               STR :=  FORMATFLOAT ('###,###,##0.00', dmfinanceiro2.qryVerReceberLMTTOTAL_Nominal.Value);
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               IMPRESSORAPEND.impf(Lin,73, STR ,[comp17]);

               TOTAL      := TOTAL + dmfinanceiro2.qryVerReceberLMTTOTAL.Value;
               TOTALGERAL := TOTALGERAL + dmfinanceiro2.qryVerReceberLMTTOTAL_Nominal.Value;
               JUROSGERAL := JUROSGERAL + dmfinanceiro2.qryVerReceberLMTJuros_Conta.value;

               dmfinanceiro2.qryVerReceberLMT.NEXT ;

               IF (( ULTCOD <> dmfinanceiro2.qryVerReceberLMTPESSOA_FJ.VALUE )AND(NOT dmfinanceiro2.qryVerReceberLMT.EOF))
               THEN BEGIN
                    IncLin;

                    IMPRESSORAPEND.impf(Lin,50, '-------------' ,[comp17]);
                    IMPRESSORAPEND.impf(Lin,62, '-------------' ,[comp17]);
                    IMPRESSORAPEND.impf(Lin,73, '-------------' ,[comp17]);

                    IncLin;

                    IMPRESSORAPEND.impf(Lin,40, ' TOTAL RECEBER' ,[comp17]);

                    //TOTAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORAPEND.impf(Lin, 50, STR ,[comp17]);

                    //TOTAL GERAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', JUROSGERAL );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORAPEND.impf(Lin,62, STR ,[comp17]);

                    //TOTAL GERAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORAPEND.impf(Lin,73, STR ,[comp17]);

                    IncLin;

                    IMPRESSORAPEND.impf(Lin,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);
               END
               ELSE BEGIN
                    IF (dmfinanceiro2.qryVerReceberLMT.EOF)
                    THEN BEGIN
                         IncLin;


                         IMPRESSORAPEND.impf(Lin,50, '-------------' ,[comp17]);
                         IMPRESSORAPEND.impf(Lin,62, '-------------' ,[comp17]);
                         IMPRESSORAPEND.impf(Lin,73, '-------------' ,[comp17]);

                         IncLin;

                         IMPRESSORAPEND.impf(Lin,40, ' TOTAL RECEBER' ,[comp17]);

                         //TOTAL
                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORAPEND.impf(Lin,50, STR ,[comp17]);

                         //JUROS
                         STR :=  FORMATFLOAT ('###,###,##0.00', JUROSGERAL );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORAPEND.impf(Lin,62, STR ,[comp17]);

                         //TOTAL GERAL
                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORAPEND.impf(Lin,73, STR ,[comp17]);

                         IncLin;

                         IMPRESSORAPEND.impf(Lin,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);
                    END;
               END;
          END;

//////////////////////////////////////////////

          SelFatura_Futura.FIRST ;

          IncLin;

          IMPRESSORAPEND.impf(Lin,01,'VENDAS ABERTAS' ,[comp17]);

          IncLin;
          TOTAL := 0;
          //
          WHILE NOT SelFatura_Futura.Eof DO
          BEGIN
               IncLin;

               IF IMP = 'N'
               THEN BEGIN
                    IMPRESSORAPEND.impf(Lin,01,INTTOSTR(SelFatura_FuturaPESSOA_FJ.Value) + '-'+ SelFatura_FuturaPESSOA_RAZAO.Value , [comp17]);

                    IF LENGTH( SelFatura_FuturaCPF_CGC.Value ) <= 11
                    THEN BEGIN
                         IMPRESSORAPEND.impf(Lin,50,MASCARACPF(SelFatura_FuturaCPF_CGC.Value) , [comp17]);
                    END
                    ELSE BEGIN
                         IMPRESSORAPEND.impf(Lin,50, MASCARACNPJ(SelFatura_FuturaCPF_CGC.Value) , [comp17]);
                    END;

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTCOD := SelFatura_FuturaPESSOA_FJ.VALUE ;

                    TOTAL := 0;//TOTAL DO CLIENTE

                    IncLin ;
               END;

               //BLOCO DE IMPRESSAO DO CONTAS A RECEBER
               //lancamento
               IMPRESSORAPEND.impf(Lin,01,DATETOSTR(SelFatura_FuturaDATA_CAIXA.Value ),[comp17]);

               //Documento
               IMPRESSORAPEND.impf(Lin,08, LeftStr(SelFatura_FuturaCODIGO.text, 6) ,[comp17]);

               //NOTA FISCAL
               IMPRESSORAPEND.impf(Lin,22, LeftStr(SelFatura_FuturaNUM_NF.TEXT,6 ) ,[comp17]);

               //CUPOM FISCAL
               IMPRESSORAPEND.impf(Lin,32, LeftStr(SelFatura_FuturaNUM_CUPOM.TEXT,6 ) ,[comp17]);

               STR :=  FORMATFLOAT ('###,###,##0.00', SelFatura_FuturaTOTAL.Value );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               IMPRESSORAPEND.impf(Lin,50, STR ,[comp17]);

               STR :=  FORMATFLOAT ('###,###,##0.00', SelFatura_FuturaVLRLIQUIDO.VALUE );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               IMPRESSORAPEND.impf(Lin,73, STR ,[comp17]);

               TOTAL      := TOTAL + SelFatura_FuturaVLRLIQUIDO.VALUE;
               TOTALGERAL := TOTALGERAL + SelFatura_FuturaVLRLIQUIDO.VALUE ;

               SelFatura_Futura.NEXT ;

               IF (( ULTCOD <> SelFatura_FuturaPESSOA_FJ.VALUE )AND(NOT SelFatura_Futura.EOF))
               THEN BEGIN
                    IncLin;

                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORAPEND.impf(Lin,73, '-------------' ,[comp17]);

                    IncLin;

                    IMPRESSORAPEND.impf(Lin,55, ' TOTAL VENDAS' ,[comp17]);

                    IMPRESSORAPEND.impf(Lin,73, STR ,[comp17]);

                    IncLin;

                    IMPRESSORAPEND.impf(Lin,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);
               END
               ELSE BEGIN
                    IF (SelFatura_Futura.EOF)
                    THEN BEGIN
                         IncLin;

                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORAPEND.impf(Lin,73, '-------------' ,[comp17]);

                         IncLin;

                         IMPRESSORAPEND.impf(Lin,55, ' TOTAL VENDAS' ,[comp17]);

                         IMPRESSORAPEND.impf(Lin,73, STR ,[comp17]);

                         IncLin;

                         IMPRESSORAPEND.impf(Lin,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);
                    END;
               END;
          END;

///////////////////////////////////////////

          IncLin;

          STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          IMPRESSORAPEND.impf(Lin,73, '-------------' ,[comp17]);

          IncLin;

          IMPRESSORAPEND.impf(Lin,56, ' TOTAL GERAL' ,[comp17]);

          IMPRESSORAPEND.impf(Lin,73, STR ,[comp17]);

          IMPRESSORAPEND.FECHAR;
     END;
end;

procedure TFrmPendencias.IMPRIME36;
VAR
   IMP, STR         : STRING;
   JUROS, JUROSGERAL, TOTAL, TOTALGERAL: Real ;
   ULTCOD           : INTEGER;
   TAMPAGINA        : INTEGER;
begin
     PAGINA     := 1;
     Lin        := 5;

     IF TRIM(DmApp.Perfil_ComputadorPORTA_PENDENCIAS.VALUE  ) <> ''
     THEN BEGIN
          SetDefaultPrinter( DmApp.Perfil_ComputadorPORTA_PENDENCIAS.VALUE )       ;
          IMPRESSORAPEND.SetPrinterbyPorta ( DmApp.Perfil_ComputadorPORTA_PENDENCIAS.VALUE );
          IMPRESSORAPEND.PortaComunicacao := DmApp.Perfil_ComputadorPORTA_PENDENCIAS.VALUE  ;
     END;

     IMPRESSORAPEND.OnBeforeNewPage := NIL ;

     TAMPAGINA := 0;

     DMFINANCEIRO.qryVerFatPendencia.FetchAll  ;

     dmfinanceiro2.qryVerReceberLMT.FetchAll ;

     DMFINANCEIRO.SelFatura_Futura.FetchAll ;

     TAMPAGINA := TAMPAGINA + DMFINANCEIRO.qryVerFatPendencia.RecordCount ;

     TAMPAGINA := TAMPAGINA + dmfinanceiro2.qryVerReceberLMT.RecordCount ;

     TAMPAGINA := TAMPAGINA + DMFINANCEIRO.SelFatura_Futura.RecordCount ;

     IMPRESSORAPEND.TamanhoQteLinhas := 20 + TAMPAGINA + 14;

     IMPRESSORAPEND.ABRIR;

     WITH DMFINANCEIRO DO
     BEGIN


          TOTAL      := 0;//TOTAL DO CLIENTE
          TOTALGERAL := 0;//TOTAL DAS CONTAS
          JUROSGERAL := 0;//VALOR DOS JUROS

          IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE

          qryVerFatPendencia.FIRST ;

          WHILE NOT qryVerFatPendencia.Eof DO
          BEGIN
               IncLin;

               IF IMP = 'N'
               THEN BEGIN
                    IMPRESSORAPEND.impf(Lin,01, COPY(INTTOSTR(qryVerFatPendenciaPESSOA_FJ.Value) + '-'+ qryVerFatPendenciaNOME.Value,1,40) , [comp17]);

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTCOD := qryVerFatPendenciaPESSOA_FJ.VALUE ;

                    TOTAL := 0;//TOTAL DO CLIENTE

                    IncLin ;
                    IncLin ;
               END;

               //BLOCO DE IMPRESSAO DO CONTAS A RECEBER

               //DOCUMEMENTO
               IMPRESSORAPEND.impf(Lin,01, LeftStr(qryVerFatPendenciaCODIGO.text, 10) ,[comp17]);

               //VENCIMENTO
               IMPRESSORAPEND.impf(Lin,13, DATETOSTR(qryVerFatPendenciaVENCIMENTO.Value ) ,[comp17]);

               JUROS := qryVerFatPendenciaJUROS.VALUE ;

               STR :=  FORMATFLOAT ('###,###,##0.00', JUROS + qryVerFatPendenciaTOTAL.Value);
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               IMPRESSORAPEND.impf(Lin,25, STR ,[comp17]);

               TOTAL      := TOTAL + qryVerFatPendenciaTOTAL.Value;
               TOTALGERAL := TOTALGERAL + qryVerFatPendenciaTOTAL.Value + JUROS ;
               JUROSGERAL := JUROSGERAL + JUROS ;

               qryVerFatPendencia.NEXT ;

               IF (( ULTCOD <> qryVerFatPendenciaPESSOA_FJ.VALUE )AND(NOT qryVerFatPendencia.EOF))
               THEN BEGIN
                    IncLin;

                    IMPRESSORAPEND.impf(Lin,25, '-----------' ,[comp17]);

                    IncLin;

                    IMPRESSORAPEND.impf(Lin,25, ' SOMA FATURAS' ,[comp17]);

                    //GERAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORAPEND.impf(Lin,25, STR ,[comp17]);

                    IncLin;

                    IMPRESSORAPEND.impf(Lin,01,'----------------------------------------------------' ,[comp17]);
               END
               ELSE BEGIN
                    IF (qryVerFatPendencia.EOF)
                    THEN BEGIN
                         IncLin;

                         IMPRESSORAPEND.impf(Lin,25, '-----------' ,[comp17]);

                         IncLin;
                         //GERAL
                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORAPEND.impf(Lin,25, STR ,[comp17]);

                         IncLin;

                         IMPRESSORAPEND.impf(Lin,01,'----------------------------------------------------' ,[comp17]);
                    END;
               END;
          END;

          dmfinanceiro2.qryVerReceberLMT.FIRST ;

          //CONTAS A RECEBER
          WHILE NOT dmfinanceiro2.qryVerReceberLMT.Eof DO
          BEGIN
               IncLin;

               IF IMP = 'N'
               THEN BEGIN
                    IMPRESSORAPEND.impf(Lin,01, COPY(INTTOSTR(dmfinanceiro2.qryVerReceberLMTPESSOA_FJ.Value) + '-'+ dmfinanceiro2.qryVerReceberLMTNOME.Value,1,40) , [comp17]);

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTCOD := dmfinanceiro2.qryVerReceberLMTPESSOA_FJ.VALUE ;

                    TOTAL := 0;//TOTAL DO CLIENTE

                    IncLin ;
                    IncLin ;
               END;

               //BLOCO DE IMPRESSAO DO CONTAS A RECEBER
               //Documento
               IMPRESSORAPEND.impf(Lin, 01, LeftStr(dmfinanceiro2.qryVerReceberLMTDOCTO.text, 10) ,[comp17]);

               //PARCELA
               IMPRESSORAPEND.impf(Lin, 10, (dmfinanceiro2.qryVerReceberLMTPARCELA.Value ) ,[comp17]);

               //VENCIMENTO
               IMPRESSORAPEND.impf(Lin, 13, DATETOSTR(dmfinanceiro2.qryVerReceberLMTDT_VENCTO.Value ) ,[comp17]);


               STR :=  FORMATFLOAT ('###,###,##0.00', + dmfinanceiro2.qryVerReceberLMTTOTAL_Nominal.Value);

               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               IMPRESSORAPEND.impf(Lin,25, STR ,[comp17]);

               TOTAL      := TOTAL + dmfinanceiro2.qryVerReceberLMTTOTAL_Nominal.Value ;
               TOTALGERAL := TOTALGERAL + dmfinanceiro2.qryVerReceberLMTTOTAL_Nominal.Value;
               JUROSGERAL := JUROSGERAL + JUROS ;

               dmfinanceiro2.qryVerReceberLMT.NEXT ;

               IF (( ULTCOD <> dmfinanceiro2.qryVerReceberLMTPESSOA_FJ.VALUE )AND(NOT dmfinanceiro2.qryVerReceberLMT.EOF))
               THEN BEGIN
                    IncLin;

                    IMPRESSORAPEND.impf(Lin,25, '-----------' ,[comp17]);

                    IncLin;

                    IMPRESSORAPEND.impf(Lin,15, ' TOTAL RECEBER' ,[comp17]);

                    //TOTAL GERAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORAPEND.impf(Lin,25, STR ,[comp17]);

                    IncLin;

                    IMPRESSORAPEND.impf(Lin,01,'----------------------------------------------------' ,[comp17]);
               END
               ELSE BEGIN
                    IF (dmfinanceiro2.qryVerReceberLMT.EOF)
                    THEN BEGIN
                         IncLin;

                         IMPRESSORAPEND.impf(Lin,25, '----------' ,[comp17]);

                         IncLin;

                         IMPRESSORAPEND.impf(Lin,15, ' TOTAL RECEBER' ,[comp17]);

                         //TOTAL GERAL
                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORAPEND.impf(Lin,25, STR ,[comp17]);

                         IncLin;

                         IMPRESSORAPEND.impf(Lin,01,'----------------------------------------------------' ,[comp17]);
                    END;
               END;
          END;

          //////////////////////////////////////////////

          SelFatura_Futura.FIRST ;

          IncLin;

          IMPRESSORAPEND.impf(Lin,01,'VENDAS ABERTAS' ,[comp17]);

          IncLin;

          //
          WHILE NOT SelFatura_Futura.Eof DO
          BEGIN
               IncLin;

               IF IMP = 'N'
               THEN BEGIN
                    IMPRESSORAPEND.impf(Lin,01,COPY(INTTOSTR(SelFatura_FuturaPESSOA_FJ.Value) + '-'+ SelFatura_FuturaPESSOA_RAZAO.Value,1,40) , [comp17]);

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTCOD := SelFatura_FuturaPESSOA_FJ.VALUE ;

                    TOTAL := 0;//TOTAL DO CLIENTE

                    IncLin ;
                    IncLin ;
               END;
               //Documento
               IMPRESSORAPEND.impf(Lin,01, LeftStr(SelFatura_FuturaCODIGO.text, 6) ,[comp17]);

               //DATA
               IMPRESSORAPEND.impf(Lin,10, DATETOStr(SelFatura_FuturaDATA.VALUE) ,[comp17]);

               STR :=  FORMATFLOAT ('###,###,##0.00', SelFatura_FuturaVLRLIQUIDO.VALUE );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               IMPRESSORAPEND.impf(Lin, 25, STR ,[comp17]);

               TOTAL      := TOTAL + SelFatura_FuturaVLRLIQUIDO.VALUE;
               TOTALGERAL := TOTALGERAL + SelFatura_FuturaVLRLIQUIDO.VALUE ;

               SelFatura_Futura.NEXT ;

               IF (( ULTCOD <> SelFatura_FuturaPESSOA_FJ.VALUE )AND(NOT SelFatura_Futura.EOF))
               THEN BEGIN
                    IncLin;

                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORAPEND.impf(Lin,25, '-----------' ,[comp17]);

                    IncLin;

                    IMPRESSORAPEND.impf(Lin,15, ' TOTAL VENDAS' ,[comp17]);

                    IMPRESSORAPEND.impf(Lin,25, STR ,[comp17]);

                    IncLin;

                    IMPRESSORAPEND.impf(Lin,01,'----------------------------------------------------' ,[comp17]);
               END
               ELSE BEGIN
                    IF (SelFatura_Futura.EOF)
                    THEN BEGIN
                         IncLin;

                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORAPEND.impf(Lin,25, '-----------' ,[comp17]);

                         IncLin;

                         IMPRESSORAPEND.impf(Lin,15, ' TOTAL VENDAS' ,[comp17]);

                         IMPRESSORAPEND.impf(Lin,25, STR ,[comp17]);

                         IncLin;

                         IMPRESSORAPEND.impf(Lin,01,'----------------------------------------------------' ,[comp17]);
                    END;
               END;
          END;

          ///////////////////////////////////////////

          IncLin;

          STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          IMPRESSORAPEND.impf(Lin,25, '-----------' ,[comp17]);

          IncLin;

          IMPRESSORAPEND.impf(Lin,15, ' TOTAL GERAL' ,[comp17]);

          IMPRESSORAPEND.impf(Lin,25, STR ,[comp17]);

          IMPRESSORAPEND.FECHAR;
     END;
end;

procedure TFrmPendencias.EdClienteInicialButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        IF Frm_Localizar_Cliente = Nil
        then begin
             Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente);
        end
        else
            Frm_Localizar_Cliente.tag := Frm_Localizar_Cliente.tag + 1;

        Frm_Localizar_Cliente.DSource.DataSet := DmFinanceiro.SelPessoas ;

        if ( Frm_Localizar_Cliente.showmodal = mrOk )
        Then Begin
             EdClienteInicial.TEXT := IntToStr(Frm_Localizar_Cliente.CampTrecho) ;
        end;

        if Frm_Localizar_Cliente.tag = 0
        then begin
             Frm_Localizar_Cliente.free ;
             Frm_Localizar_Cliente := Nil ;
        end
        else
            Frm_Localizar_Cliente.tag := Frm_Localizar_Cliente.tag - 1; 
  Except
  end;
end;

procedure TFrmPendencias.IncLin;
begin
     Lin := Lin + 1;
     If Lin > 60
     then
         IMPRESSORAPEND.NovaPagina ;
end;

procedure TFrmPendencias.EdClienteInicialExit(Sender: TObject);
begin
     CORFUNDO ( SENDER );

     if actok.Enabled
     then
         actok.Execute ;
end;

procedure TFrmPendencias.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     If Not DmFinanceiro.SelPessoasFJ.Active
     then
         DmFinanceiro.SelPessoasFJ.Open ;

     EdClienteInicial.SetFocus ;
end;

procedure TFrmPendencias.IMPRESSORAPENDNewPage(Sender: TObject; Pagina: Integer);
begin
     IF TRIM(DMAPP.Perfil_ComputadorFOLHA_PENDENCIAS.VALUE) = 'A4'
     THEN BEGIN
          // Cabeçalho...
          IMPRESSORAPEND.impf(01,01,'===============================================================================',[Normal]);
          IMPRESSORAPEND.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
          IMPRESSORAPEND.impf(02,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
          IMPRESSORAPEND.impf(03,01,'RELATORIO DE PENDENCIAS ' ,[Normal]);
          IMPRESSORAPEND.impf(03,45,'DATA: '+ DATETIMETOSTR(now),[Normal]);
          IMPRESSORAPEND.impf(04,01,'===============================================================================',[Normal]);

          IMPRESSORAPEND.impf(06,01,'LANC   DOCUMENTO     VENCTO    ATRASO             VALOR       JUROS      TOTAL',[Normal]);

          inc(pagina);
          Lin  := 7;
     END
     ELSE BEGIN
          // Cabeçalho...
          IMPRESSORAPEND.impf(01,01,'====================================================',[COMP17]);
          IMPRESSORAPEND.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
          IMPRESSORAPEND.impf(03,01,'RELATORIO DE PENDENCIAS' ,[Normal]);
          IMPRESSORAPEND.impf(04,01,'DATA: '+ DATETIMETOSTR(now),[Normal]);
          IMPRESSORAPEND.impf(05,01,'====================================================',[COMP17]);

          IMPRESSORAPEND.impf(06,01,'DOCTO',[COMP17]);
          IMPRESSORAPEND.impf(06,10,'P',[COMP17]);
          IMPRESSORAPEND.impf(06,13,'VENCTO',[COMP17]);
          IMPRESSORAPEND.impf(06,25,'     TOTAL',[COMP17]);

          inc(pagina);
          Lin  := 7;
     END;
end;

procedure TFrmPendencias.IMPRESSORAPENDBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
     IF TRIM(DMAPP.Perfil_ComputadorFOLHA_PENDENCIAS.VALUE) = 'A4'
     THEN BEGIN
          // Rodapé...
          IMPRESSORAPEND.impf(63,01,'===============================================================================',[normal]);
          IMPRESSORAPEND.impf(64,01,dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString,[comp17,italico]);
     END;
end;

procedure TFrmPendencias.ActImprimirExecute(Sender: TObject);
begin
     IF TRIM(DMAPP.Perfil_ComputadorFOLHA_PENDENCIAS.VALUE) = 'A4' THEN
         IMPRIME
     ELSE BEGIN
          IMPRESSORAPEND.OnBeforeNewPage := Nil ;
          IMPRIME36 ;
     END
end;

procedure TFrmPendencias.ActDetalhesExecute(Sender: TObject);
begin
  if (FrmPendencias.ActiveControl = GRIDRECEBER) then
  begin
    If (not dmfinanceiro2.qryVerReceberLMTCODIGO_VN.IsNull) then
      DmVendas2.Proc_Consulta_Venda(DmFinanceiro2.qryVerReceberLMTCODIGO_VN.Value)
    else
      Application.MessageBox('Esta pendência não possui uma venda vinculada','Aviso',mb_ok+mb_iconerror);
  end;
end;

procedure TFrmPendencias.PgUpExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex < 2 Then
     pc.ActivePageIndex := pc.ActivePageIndex + 1;
end;

procedure TFrmPendencias.PgDnExecute(Sender: TObject);
begin
  If pc.ActivePageIndex > 0 Then
     pc.ActivePageIndex := pc.ActivePageIndex - 1;
end;

procedure TFrmPendencias.PCChange(Sender: TObject);
begin
     //-->> Aba - Valores em Abertos
     IF PC.ActivePageIndex = 0 THEN
     BEGIN
          LBLTOTALFATURAREC.Visible := false ;
          LBLTOTALRECEBIDAS.Visible := false ;
          LBLGERALREC.Visible       := false ;

          Shape4.Visible            := True  ;
          LBLCHEQUE.Visible         := True  ;
          Label7.Visible            := True  ;
          LBLFATURAS.Visible        := True  ;
          Label6.Visible            := True  ;
          Shape3.Visible            := True  ;

          LBLTOTALFATURA.Visible    := true  ;
          LBLTOTALRECEBER.Visible   := true  ;
          LBLGERAL.Visible          := true  ;
     END
     ELSE BEGIN
          //-->> Aba - Valores Recebidos
          IF PC.ActivePageIndex = 1 THEN
          BEGIN
               SELECIONARECEBIDAS ;

               DsFaturaRec.DataSet.Active:= true  ;
               DsRecebidas.DataSet.Active:= true  ;

               LBLTOTALFATURAREC.Visible := true  ;
               LBLTOTALRECEBIDAS.Visible := true  ;
               LBLGERALREC.Visible       := true  ;

               Shape4.Visible            := false ;
               LBLCHEQUE.Visible         := false ;
               Label7.Visible            := false ;
               LBLFATURAS.Visible        := false ;
               Label6.Visible            := false ;
               Shape3.Visible            := false ;

               LBLTOTALFATURA.Visible    := false ;
               LBLTOTALRECEBER.Visible   := false ;
               LBLGERAL.Visible          := false ;
          END ELSE
          BEGIN
               //-->> Aba - Analise
               IF PC.ActivePageIndex = 2 THEN
               BEGIN
                    IF ( TRIM ( EdClienteInicial.Text ) <> '' ) THEN
                      ANALISA_CLIENTE ( strtoint(TRIM(EdClienteInicial.TEXT)) );
               END
               ELSE BEGIN
                    LBLTOTALFATURAREC.Visible := false ;
                    LBLTOTALRECEBIDAS.Visible := false ;
                    LBLGERALREC.Visible       := false ;

                    Label7.Visible            := True  ;
                    Shape4.Visible            := True  ;
                    LBLCHEQUE.Visible         := True  ;

                    LBLFATURAS.Visible        := True  ;
                    Label6.Visible            := True  ;
                    Shape3.Visible            := True  ;

                    LBLTOTALFATURA.Visible    := true  ;
                    LBLTOTALRECEBER.Visible   := true  ;
                    LBLGERAL.Visible          := true  ;
               END;
          END;
     END;
end;

procedure TFrmPendencias.GRIDRECEBERCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
Var
   Value: TDateTime ;
begin
     if ( not ASelected  )// and ((AColumn = GRIDRECEBERVENCIMENTO))
     then begin
          Value := ANode.Values[GRIDRECEBERVENCIMENTO.Index];

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

          end;
     end;
end;

procedure TFrmPendencias.GRIDCHEQUECustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
Var
   Value: STRING ;
begin
    if (not ASelected) then
    begin
    Value := ANode.Values[GRIDCHEQUEPROCESSADO.Index];
    if not VarIsNull(Value) then
    begin
      if Value = 'S' then
        AColor := $00ECAD84
      else
        AColor := clWhite;
    end
    else AFont.Color := clBlack;

    if ANode.Values[GRIDCHEQUEVEZES_DEVOLUCAO.Index] = '1' then
      AColor := $008080FF
    else
      if ANode.Values[GRIDCHEQUEVEZES_DEVOLUCAO.Index] = '2' then
        AColor := $00970097;

    if not VarIsNull(ANode.Values[GRIDCHEQUEDATA_ACERTO.Index]) then
      AColor := $004B9696;

  end;
end;

procedure TFrmPendencias.EdClienteInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmPendencias.FormCreate(Sender: TObject);
begin
  //
  PC.ActivePageIndex := 0;
  ActImprimir.Hint := ActImprimir.Hint + LblTitulo.Caption + ' [F9]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  with dmFinanceiro2 do
  begin
    qryVerReceberLMT.close;
    DmFinanceiro.SelFatura_Futura.close;
    qryVerChequePendencia.close;
    DmFinanceiro.Baixas_Receber.close;
    DmFinanceiro.VerCheque_Pago.close;
  end;
end;

procedure TFrmPendencias.ActOkExecute(Sender: TObject);
begin
     If ( trim(EdClienteInicial.Text) ) <> ''
     then begin
          if DmFinanceiro.SelPessoasFJ.locate ( 'CODIGO', trim(EdClienteInicial.Text),[] )
          then begin
               LBLCLIENTE.Caption := DmFinanceiro.SelPessoasFJNOME_RAZAO.Value ;

               SELECIONA ;
          end
          else begin
               Showmessage ('Cliente Não Cadastrado!');
               EdClienteInicial.SetFocus ;
          end;
     end
     ELSE BEGIN
          LBLCLIENTE.Caption := '' ;
     END;
end;

procedure TFrmPendencias.ANALISA_CLIENTE(Cliente: Integer);
begin
     //Faz a Analise do Cliente
     Try
        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs5 = Nil Then
        DMProcs5 := TDMProcs5.Create(Self);
        //
        DMProcs5.ANALISA_CLIENTE.ParamByName('CNPJ').asString      := DMApp.Cnpj   ;
        DMProcs5.ANALISA_CLIENTE.ParamByName('CLIENTE').asInteger  := Cliente      ;

        DMProcs5.ANALISA_CLIENTE.ExecProc;

        lblqntdecompras.caption    := formatfloat('##0',DMProcs5.ANALISA_CLIENTE.ParamByName('QUANTIDADE_COMPRAS').asFloat)  ;
        LblValoresAbertos.caption  := formatfloat('##0.00',DMProcs5.ANALISA_CLIENTE.ParamByName('VALORES_ABERTOS').asFloat)  ;
        LblValoresPagos.Caption    := formatfloat('##0.00',DMProcs5.ANALISA_CLIENTE.ParamByName('VALORES_PAGOS').asFloat)    ;
        lbltotalentradas.Caption   := formatfloat('##0.00',DMProcs5.ANALISA_CLIENTE.ParamByName('ENTRADAS_PAGAS').asFloat)  ;
        lblvezesnegativado.Caption := DMProcs5.ANALISA_CLIENTE.ParamByName('NEGATIVADO_N_VEZES').asString ;
//      DMProcs5.ANALISA_CLIENTE.ParamByName('ULTIMA_CONSULTA').asDate ;
//      DMProcs5.ANALISA_CLIENTE.ParamByName('REABILITADO_DIA').asDate ;

        lblmediapgtomensal.caption := formatfloat('##0.00',DMProcs5.ANALISA_CLIENTE.ParamByName('MEDIA_MENSAL').asFloat)   ;

        lbldiasatraso.caption      := formatfloat('##0',DMProcs5.ANALISA_CLIENTE.ParamByName('MEDIA_ATRASO').asInteger)   ;
        lblmaiortempo.caption      := formatfloat('##0',DMProcs5.ANALISA_CLIENTE.ParamByName('MAIOR_ATRASO').asInteger)   ;
        lblmaiorvalor.caption      := formatfloat('##0.00',DMProcs5.ANALISA_CLIENTE.ParamByName('MAIOR_COMPRA').asFloat)     ;
        LblLimite.caption          := formatfloat('##0.00',DMProcs5.ANALISA_CLIENTE.ParamByName('LIMITE_CREDITO').asFloat)   ;
        lbllimitedisponivel.caption     := formatfloat('##0.00',DMProcs5.ANALISA_CLIENTE.ParamByName('LIMITE_DISPONIVEL').asFloat) ;

        //
        DMProcs5.ANALISA_CLIENTE.Close ;

        //
        DMProcs5.Free;
        DMProcs5 := Nil;

        DmApp.TransactionProc.Commit ;
     except
     end;
end;

procedure TFrmPendencias.GRIDCHEQUEPAGOCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
Var
   Value: STRING ;
begin
  if (not ASelected) then
    begin
    Value := ANode.Values[GRIDCHEQUEPAGOPROCESSADO.Index];
    if not VarIsNull(Value) then
    begin
      if Value = 'S' then
        AColor := $00ECAD84
      else
        AColor := clWhite;
    end
    else AFont.Color := clBlack;

    //pinta de vermelho pois foi devolvido 1 vez
    if ANode.Values[GRIDCHEQUEPAGOVEZES_DEVOLUCAO.Index] = '1' then
    begin
      if not VarIsNull(ANode.Values[GRIDCHEQUEPAGODATA_REAPRES.Index]) then
        AColor := $002CD2E0
      else
        AColor := $008080FF;
    end
    else
      if ANode.Values[GRIDCHEQUEPAGOVEZES_DEVOLUCAO.Index] = '2' then
        AColor := $00970097;

    if not VarIsNull(ANode.Values[GRIDCHEQUEPAGODATA_ACERTO.Index]) then
      AColor := $004B9696;
  end;
end;

procedure TFrmPendencias.Imprime2;
var
   Valor, tt_juros, tt_liquido, tt_valor: real ;
   tt_juros_Cli, tt_liquido_Cli, tt_valor_Cli: real ;
   Cont, Atraso2 : Integer;
   UltDuplicata, UltCliente: Integer;
   Filtro, Atraso: String;
Begin

    Print.TitulodoRelatorio := 'Pendências de Clientes';
    with DmFinanceiro do
    begin
      //-------------------------------Filtrando Dados--------------------------------------//
      Cont := 0;
      {Abrindo pendências.. aí é que tá.. pelo que parece ver pendencia faz ma varredura
      em Contas à Receber em Vendas e em Faturas e traz os valores de dívida do caboclo}
      VerPendencias.Close ;
      VerPendencias.Sql.text := ' Select * From VER_PENDENCIAS( :CNPJ, :DINI, :DFIM )'+
                                ' where Pessoa_Fj = '+EdClienteInicial.text+
                                ' Order by NOME, PESSOA_FJ, FATURA ';

      VerPendencias.ParamByName('CNPJ').asString  := DMApp.Cnpj;
      VerPendencias.ParamByName('DINI').asDate := StrToDate('01/01/1800') ;
      VerPendencias.ParamByName('DFIM').asDate := StrToDate('01/01/2800') ;
      VerPendencias.Open;
      VerPendencias.FetchAll;


      //----------------------------------Começando a Impressão-------------------------------------//
      Print.Abrir;
      tt_juros     := 0  ;
      tt_liquido   := 0  ;
      tt_valor     := 0  ;
      UltDuplicata := -1 ;
      UltCliente   := -1 ;
      VerPendencias.First;
      while Not VerPendencias.Eof Do
      Begin
        //Quebrando por cliente
        if UltCliente <> VerPendenciasPESSOA_FJ.value then
        begin
          print.ImpF(Linha, 01, copy(VerPendenciasNOME.Value,1,40) + '-' + VerPendenciasPESSOA_FJ.TEXT,[Comp17]);
          Inc(Linha);

          ultCliente   := VerPendenciasPESSOA_FJ.value    ;

          tt_juros_Cli   := 0;
          tt_liquido_Cli := 0;
          tt_valor_Cli   := 0;

          UltDuplicata := -1 ;

          Cont := 0;

          {Aqui percorre finfaturas e finfaturas parcial }
          VER_DADOS_FATURA.close ;
          VER_DADOS_FATURA.ParamByName ('pessoa').asinteger := VerPendenciasPESSOA_FJ.VALUE ;
          VER_DADOS_FATURA.ParamByName ('DINI'      ).asDate    := StrToDate('01/01/1800') ;
          VER_DADOS_FATURA.ParamByName ('DFIM'      ).asDate    := StrToDate('31/12/9999') ;
          VER_DADOS_FATURA.Open;
          VER_DADOS_FATURA.first;
        end;

        {Se fatura for igual a zero (então nota já foi faturada e termos de passar a considerar
        os dados que estão em fin_faturas)}
        if VerPendenciasFATURA.VALUE = 0 then
        begin
          Valor      := VerPendenciasJuros_Calculadors.Value;
          tt_Liquido := tt_Liquido +  VerPendenciasTotal.Value + Valor;
          tt_valor   := tt_valor   +  VerPendenciasTotal.value;
          tt_juros   := tt_juros   +  Valor;

          tt_juros_Cli   := tt_juros_Cli   + Valor;
          tt_liquido_Cli := tt_liquido_Cli + VerPendenciasTotal.Value + Valor;
          tt_valor_Cli   := tt_valor_Cli   + VerPendenciasTotal.Value ;

          Cont := Cont + 1;
          Atraso := copy(FloatToStr(VerPendenciasDt_Vencto.Value - dmapp.Data_Servidor ), 1, 4);
          Print.ImpF(Linha, 20,VerPendenciasArq_morto.AsString,[Comp17]);
          Print.ImpF(Linha, 30,datetostr(VerPendenciasDt_Lancto.value),[Comp17]);
          Print.ImpF(Linha, 37,Copy(VerPendenciasDOCTO.Text, 1, 14),[Comp17]);
          Print.ImpF(Linha, 45,datetostr(VerPendenciasDt_Vencto.value),[Comp17]);
          Print.Impd(Linha, 54,atraso,[Comp17]);
          Print.Impd(Linha, 63,formatfloat('###,##0.00', VerPendenciasTotal.value),[Comp17]);
          Print.Impd(Linha, 72,formatfloat('###,##0.00', valor),[Comp17]);
          Print.Impd(Linha, 80,VerPendenciasTotal_Nominal.Text, [Comp17]);

          Inc(Linha);
        end
        else
        begin
          //Não sei porque deste negocio
          if  ultduplicata <> VerPendenciasFATURA.VALUE then
          begin
            while not VER_DADOS_FATURA.eof do
            begin
              Valor      := VER_DADOS_FATURAJUROS_CALCULADOS.Value         ;
              tt_Liquido := tt_Liquido +  VER_DADOS_FATURAVALOR.Value + Valor ;
              tt_valor   := tt_valor   +  VER_DADOS_FATURAVALOR.Value   ;
              tt_juros   := tt_juros   +  Valor                         ;

              Cont := Cont + 1;

              Atraso := Copy(FloatToStr(DMAPP.Data_Servidor - VER_DADOS_FATURAVENCIMENTO.Value ), 1, 4);
              tt_juros_Cli   := tt_juros_Cli   + Valor;
              tt_liquido_Cli := tt_liquido_Cli + VER_DADOS_FATURAVALOR.Value + Valor;
              tt_valor_Cli   := tt_valor_Cli   + VER_DADOS_FATURAVALOR.Value ;

              Print.ImpF(Linha, 3,VER_DADOS_FATURACODIGO.Text,[Comp17]);
              Print.ImpF(Linha, 30,datetostr(VER_DADOS_FATURADATA.value),[Comp17]);
              Print.ImpF(Linha, 37,VER_DADOS_FATURACODIGO.Text,[Comp17]);
              Print.ImpF(Linha, 45,datetostr(VER_DADOS_FATURAVENCIMENTO.value),[Comp17]);
              Print.Impd(Linha, 63,formatfloat('###,##0.00',VER_DADOS_FATURAVALOR.Value),[Comp17]);
              Print.Impd(Linha, 72,formatfloat('###,##0.00', VER_DADOS_FATURAJUROS_CALCULADOS.Value),[Comp17]);
              Print.Impd(Linha, 80,formatfloat('###,##0.00', VER_DADOS_FATURATOTAL_NOMINAL.Value), [Comp17]);

              inc(Linha);
              ver_dados_fatura.next;
            end;
            ULTDUPLICATA := VerPendenciasFATURA.VALUE ;
          END;
        END;

        VerPendencias.Next;

        IF ((UltCliente <> VerPendenciasPESSOA_FJ.value) OR (VerPendencias.EOF)) THEN
        begin
          if (cont > 1)then
          begin
            Linha := Linha - 1;

            //subtotalizar
            Print.Impd(Linha+ 1, 63,FormatFloat('#,##0.00', tt_Valor_Cli),[Comp17]);
            Print.Impd(Linha+ 1, 72,FormatFloat('#,##0.00', tt_Juros_Cli),[Comp17]);
            Print.Impd(Linha+ 1, 80,FormatFloat('#,##0.00', tt_Liquido_Cli), [Comp17]);
            Inc(Linha);
            Inc(Linha);

            If Linha >= 63 Then
               Print.Novapagina;
          end;
        end;

        if Linha >= 63 Then
          Print.Novapagina;
      end;

      Print.ImpF(Linha    , 01, Format('%91s -------------- -------------- --------------', ['']), [Comp17]);
      Print.ImpF(Linha + 1, 01, Format('%91s %14s %14s %14s', ['',FormatFloat('#,##0.00', tt_Valor), FormatFloat('#,##0.00', tt_Juros), FormatFloat('#,##0.00', tt_Liquido)]), [Comp17]);

      VerPendencias.Close;
      Print.Fechar;
    end;
end;

end.


