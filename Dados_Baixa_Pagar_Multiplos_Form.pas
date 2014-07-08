unit Dados_Baixa_Pagar_Multiplos_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
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
  dxSkinXmas2008Blue, Menus, dxSkinsdxBarPainter, cxClasses, cxButtons,
  cxLabel, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel,
  cxGridCustomView, cxGrid;

type
  TFrmDadosBaixaPagarSelecao = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    btnLocalizar: TdxBarButton;
    Actions: TActionList;
    ActLocalizar: TAction;
    Bevel1: TBevel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    Label10: TcxLabel;
    lblNome: TcxLabel;
    LBLCLIENTE: TcxLabel;
    BtnOk: TcxButton;
    Bevel3: TBevel;
    ActSeleciona: TAction;
    Label16: TcxLabel;
    Label14: TcxLabel;
    LBLNUMARQ: TcxLabel;
    Data: TdxDateEdit;
    Label3: TcxLabel;
    Label2: TcxLabel;
    Valor: TdxCurrencyEdit;
    Label4: TcxLabel;
    Desconto: TdxCurrencyEdit;
    Label5: TcxLabel;
    Juros: TdxCurrencyEdit;
    Label1: TcxLabel;
    Total: TdxCurrencyEdit;
    HISTORICO: TdxEdit;
    Label6: TcxLabel;
    RxLabel1: TcxLabel;
    ActCalculadora: TAction;
    ActCancelar: TAction;
    DsConta: TDataSource;
    Label12: TcxLabel;
    cmbConta: TdxLookupEdit;
    Label7: TcxLabel;
    Dinheiro: TdxCurrencyEdit;
    Cheque: TdxCurrencyEdit;
    Label8: TcxLabel;
    Label9: TcxLabel;
    EdNumeroCheque: TdxCurrencyEdit;
    Grid: TcxGrid;
    GridTV: TcxGridDBBandedTableView;
    GridLV: TcxGridLevel;
    GridTVCODIGO: TcxGridDBBandedColumn;
    GridTVANO: TcxGridDBBandedColumn;
    GridTVPESSOA_FJ: TcxGridDBBandedColumn;
    GridTVDOCTO: TcxGridDBBandedColumn;
    GridTVPARCELA: TcxGridDBBandedColumn;
    GridTVHISTORICO: TcxGridDBBandedColumn;
    GridTVVALOR: TcxGridDBBandedColumn;
    GridTVBOLETO: TcxGridDBBandedColumn;
    GridTVORIGEM: TcxGridDBBandedColumn;
    GridTVAVISO: TcxGridDBBandedColumn;
    GridTVDT_AVISO: TcxGridDBBandedColumn;
    GridTVNOME: TcxGridDBBandedColumn;
    GridTVENDERECO: TcxGridDBBandedColumn;
    GridTVNUMERO: TcxGridDBBandedColumn;
    GridTVCIDADE: TcxGridDBBandedColumn;
    GridTVBAIRRO: TcxGridDBBandedColumn;
    GridTVCEP: TcxGridDBBandedColumn;
    GridTVUF: TcxGridDBBandedColumn;
    GridTVCOD_END: TcxGridDBBandedColumn;
    GridTVCOD_CID: TcxGridDBBandedColumn;
    GridTVCOD_BAI: TcxGridDBBandedColumn;
    GridTVFONE: TcxGridDBBandedColumn;
    GridTVCPF_CGC: TcxGridDBBandedColumn;
    GridTVSELECIONADO: TcxGridDBBandedColumn;
    GridTVVLR_PARCIAL: TcxGridDBBandedColumn;
    GridTVTotal: TcxGridDBBandedColumn;
    GridTVDESCONTOS: TcxGridDBBandedColumn;
    GridTVJUROS_PAG: TcxGridDBBandedColumn;
    GridTVCODIGO_ENT: TcxGridDBBandedColumn;
    GridTVANO_ENT: TcxGridDBBandedColumn;
    GridTVCENTRO_CUSTO: TcxGridDBBandedColumn;
    GridTVNOME_CENTRO: TcxGridDBBandedColumn;
    GridTVDUPLICATA: TcxGridDBBandedColumn;
    GridTVCONFERIDA: TcxGridDBBandedColumn;
    GridTVDT_EMISSAO: TcxGridDBBandedColumn;
    GridTVDT_VENCTO: TcxGridDBBandedColumn;
    GridTVDT_LANCTO: TcxGridDBBandedColumn;
    GridTVDT_ULTIMA_BAIXA: TcxGridDBBandedColumn;
    GridTVCOD_INDEXADOR: TcxGridDBBandedColumn;
    GridTVIDX_DATABASE: TcxGridDBBandedColumn;
    GridTVIDX_COTACAO: TcxGridDBBandedColumn;
    GridTVIDX_QTDE: TcxGridDBBandedColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActSelecionaExecute(Sender: TObject);
    procedure DescontoExit(Sender: TObject);
    procedure ActCalculadoraExecute(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure DescontoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActCancelarExecute(Sender: TObject);
    procedure DescontoEnter(Sender: TObject);
    procedure HISTORICOExit(Sender: TObject);
    procedure cmbContaExit(Sender: TObject);
    procedure DinheiroEnter(Sender: TObject);
    procedure DinheiroExit(Sender: TObject);
    procedure ChequeEnter(Sender: TObject);
    procedure ChequeExit(Sender: TObject);
  private
    { Private declarations }
    Procedure Soma_Pagar (Tipo: String; DIni: TDateTime; DFim: TDateTime; Pessoa: Integer);
    procedure SelecionaLancamento ;
    procedure SelecionaVencimento ;

  public
    { Public declarations }
    SOMATOTAL  : REAL ;
    QUANTIDADE : INTEGER ;
  end;

var
  FrmDadosBaixaPagarSelecao: TFrmDadosBaixaPagarSelecao;
implementation

uses
     Cadastros_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Financeiro_Dm,
     Procedures_DM,
     Baixa_Pagar_Multiplos_Form ;

{$R *.DFM}
procedure TFrmDadosBaixaPagarSelecao.SelecionaLancamento ;
begin
     WITH DmFinanceiro DO
     BEGIN
          VERPagar.Close ;
          VERPagar.SQL.CLEAR ;
          VERPagar.Params.CLEAR ;

          VERPagar.Params.CreateParam ( FtDate, 'DINI', PtInput );
          VERPagar.Params.CreateParam ( FtDate, 'DFIM', PtInput );

          VERPagar.SQL.ADD ( ' SELECT * FROM VER_Pagar_LANCAMENTO ( :CNPJ, :DINI, :DFIM ) ' );

          VERPagar.ParamByName ( 'DINI' ).AsDate := FrmBaixaPagarSelecao.DATAINICIAL.Date ;
          VERPagar.ParamByName ( 'DFIM' ).AsDate := FrmBaixaPagarSelecao.DATAFINAL.Date ;

          VERPagar.Params.CreateParam ( FtInteger, 'PES', PtInputOutPut );

          VERPagar.SQL.Add (' Where PESSOA_FJ = :PES ');

          VERPagar.ParamByName ('PES').asInteger := STRTOINT(trim(FrmBaixaPagarSelecao.EdClienteInicial.Text)) ;

          VERPagar.Params.CreateParam ( FtString, 'SEL', PtInputOutPut );

          VERPagar.SQL.Add (' and SELECIONADO = :SEL ');

          VERPagar.ParamByName ('SEL').asString := 'S' ;

          VERPagar.SQL.ADD ( ' ORDER BY  DT_LANCTO, DOCTO ' );

          VERPagar.Prepare ;
          VERPagar.Open ;
     END;
END;


procedure TFrmDadosBaixaPagarSelecao.SelecionaVencimento ;
begin
     WITH DMFINANCEIRO DO
     BEGIN
          VERPagar.Close ;
          VERPagar.SQL.CLEAR ;
          VERPagar.Params.CLEAR ;

          VERPagar.Params.CreateParam ( FtDate, 'DINI', PtInput );
          VERPagar.Params.CreateParam ( FtDate, 'DFIM', PtInput );

          VERPagar.SQL.ADD ( ' SELECT * FROM VER_Pagar_VENCIMENTO ( :CNPJ, :DINI, :DFIM ) ' );

          VERPagar.ParamByName ( 'DINI' ).AsDate := FrmBaixaPagarSelecao.DATAINICIAL.Date ;
          VERPagar.ParamByName ( 'DFIM' ).AsDate := FrmBaixaPagarSelecao.DATAFINAL.Date ;

          VERPagar.Params.CreateParam ( FtInteger, 'PES', PtInputOutPut );

          VERPagar.SQL.Add (' Where PESSOA_FJ = :PES ');

          VERPagar.ParamByName ('PES').asInteger := STRTOINT(trim(FrmBaixaPagarSelecao.EdClienteInicial.Text)) ;

          VERPagar.Params.CreateParam ( FtString, 'SEL', PtInputOutPut );

          VERPagar.SQL.Add (' and SELECIONADO = :SEL ');

          VERPagar.ParamByName ('SEL').asString := 'S' ;

          VERPagar.SQL.ADD ( ' ORDER BY DT_VENCTO, DOCTO ' );

          VERPagar.Prepare ;
          VERPagar.Open ;
     END;
END;

procedure TFrmDadosBaixaPagarSelecao.FormShow(Sender: TObject);
begin
     DsConta.DataSet.Open ;
     
     IniciaComponentes ( Self as TForm );
     Desconto.SetFocus;
end;

procedure TFrmDadosBaixaPagarSelecao.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmDadosBaixaPagarSelecao.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmDadosBaixaPagarSelecao.dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmDadosBaixaPagarSelecao.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmDadosBaixaPagarSelecao.ActFecharExecute(Sender: TObject);
begin
     Close;
end;

Procedure TFrmDadosBaixaPagarSelecao.Soma_Pagar (Tipo: String; DIni: TDateTime; DFim: TDateTime; Pessoa: Integer);
begin
  //
{ If DMProcs = Nil Then
     DMProcs := TDMProcs.Create(Self);}

  //PARA SABER QUAL PROCEDURE PEGAR
  DMProcs.Soma_Selecionadorec.StoredProcName := 'SOMA_Pagar_' + TIPO;
  //
  DMProcs.Soma_Selecionadorec.ParamByName('CNPJ').asString      := DmApp.Cnpj ;
  DMProcs.Soma_Selecionadorec.ParamByName('DINI').asDate        := DIni       ;
  DMProcs.Soma_Selecionadorec.ParamByName('DFIM').asDate        := DFim       ;
  DMProcs.Soma_Selecionadorec.ParamByName('PESSOA').asInteger   := Pessoa     ;

  DMProcs.Soma_Selecionadorec.ExecProc;

  SOMATOTAL  := DMProcs.Soma_Selecionadorec.ParamByName('SOMA').asFloat;
  QUANTIDADE := DMProcs.Soma_Selecionadorec.ParamByName('QUANTIDADE').asInteger;

  LBLNUMARQ.Caption := INTTOSTR(QUANTIDADE);
  Valor.Value       := SOMATOTAL;

  //
  //
{ DMProcs.Free;
  DMProcs := Nil;}
end;


procedure TFrmDadosBaixaPagarSelecao.ActSelecionaExecute(Sender: TObject);
begin
     with DmFinanceiro do
     begin
          Seleciona_Pagar (VerPagarCODIGO.VALUE, VerPagarANO.VALUE, VerPagarSELECIONADO.VALUE);

          IF FrmBaixaPagarSelecao.EdTipo.Text = 'Lancamento'
          THEN BEGIN
               SELECIONALANCAMENTO ;
               //SOMA OS VALORES
               FrmDadosBaixaPagarSelecao.SOMA_Pagar ( 'LANCAMENTO', FrmBaixaPagarSelecao.DATAINICIAL.Date , FrmBaixaPagarSelecao.DATAFINAL.Date, STRTOINT(trim(FrmBaixaPagarSelecao.EdClienteInicial.Text)) );
          END
          ELSE BEGIN
               SELECIONAVENCIMENTO ;
               //SOMA OS VALORES
               FrmDadosBaixaPagarSelecao.SOMA_Pagar ( 'VENCIMENTO', FrmBaixaPagarSelecao.DATAINICIAL.Date , FrmBaixaPagarSelecao.DATAFINAL.Date, STRTOINT(trim(FrmBaixaPagarSelecao.EdClienteInicial.Text)) );
          END;
     end;
end;

procedure TFrmDadosBaixaPagarSelecao.DescontoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO(SENDER);
     Total.Value := Valor.Value - Desconto.Value + Juros.Value ;
end;

procedure TFrmDadosBaixaPagarSelecao.ActCalculadoraExecute( Sender: TObject);
begin
     //CALCULADORA COM RESULTADO NO CAMPO
     If FrmDadosBaixaPagarSelecao.ActiveControl = Desconto
     Then begin
          Desconto.Value := Calculadora ;
     end;
     If FrmDadosBaixaPagarSelecao.ActiveControl = Juros
     Then begin
          Juros.Value := Calculadora ;
     end;    
end;

procedure TFrmDadosBaixaPagarSelecao.BtnOkClick(Sender: TObject);
begin
     IF ((Data.Text <> '  /  /  ') and (Data.Text <> '  /  /    '))
     THEN BEGIN
          IF Total.Value > 0
          THEN BEGIN
               If Arredonda(Dinheiro.Value + Cheque.Value,2) <> Arredonda(Total.Value,2)
               then begin
                    MessageDlg('O Valor Digitado Não Confere!',MtError,[MbOk],0);
                    Dinheiro.SetFocus ;
                    Abort;
               end
               else begin
                    Modalresult := mrok ;
               end;
          END
          ELSE BEGIN
               MessageDlg('O Valor Digitado Não Pode Ser Zero!',MtError,[MbOk],0);
               Abort;
          END;
     END
     ELSE BEGIN
          MessageDlg('Digite a Data!',MtError,[MbOk],0);
          Data.SetFocus ;
          Abort;
     END;
end;

procedure TFrmDadosBaixaPagarSelecao.DescontoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmDadosBaixaPagarSelecao.ActCancelarExecute(Sender: TObject);
begin
     ModalResult := MrCancel ;
end;

procedure TFrmDadosBaixaPagarSelecao.DescontoEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFrmDadosBaixaPagarSelecao.HISTORICOExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO(SENDER);
end;

procedure TFrmDadosBaixaPagarSelecao.cmbContaExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO(SENDER);
     if (cheque.value > 0) then
       EdNumeroCheque.Value := DmApp.Ultimo_Cheque ( DmFinanceiro.SelPlanoConta.Value ) + 1;
end;

procedure TFrmDadosBaixaPagarSelecao.DinheiroEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
     CHEQUE.Value := 0 ;
     DINHEIRO.Value   := Total.Value;
     CHEQUE.SelectAll ;
     dinheiro.SelectAll ;
end;

procedure TFrmDadosBaixaPagarSelecao.DinheiroExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
  Cheque.Value  := Total.Value - Dinheiro.Value;
end;

procedure TFrmDadosBaixaPagarSelecao.ChequeEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFrmDadosBaixaPagarSelecao.ChequeExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO(SENDER);
     
end;

end.
