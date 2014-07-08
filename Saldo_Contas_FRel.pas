 unit Saldo_Contas_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, Grids,
  DBGrids, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFRelPosicao_Contas = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    Label2: TcxLabel;
    Print: TRDprint;
    ActBuscarProd: TAction;
    Label1: TcxLabel;
    edDtInicial: TdxDateEdit;
    edDtFinal: TdxDateEdit;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure edDtInicialEnter(Sender: TObject);
    procedure edDtInicialExit(Sender: TObject);
    procedure edDtFinalExit(Sender: TObject);
  private
    { Private declarations }

    procedure SALDO   ;

  public
    { Public declarations }
  end;

var
  FRelPosicao_Contas: TFRelPosicao_Contas;
  Linha, Pagina: Integer;

implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     Financeiro_Dm ;

{$R *.DFM}

procedure TFRelPosicao_Contas.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelPosicao_Contas.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelPosicao_Contas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  Action      := caFree;
  FRelPosicao_Contas := Nil;
end;

procedure TFRelPosicao_Contas.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelPosicao_Contas.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelPosicao_Contas.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(NOW()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(05, 01, 'Conta                             Sld Inicial       Lancadas       Baixadas      Sld Final', [Comp17]);
  Print.ImpF(06, 01, '------------------------------ -------------- -------------- -------------- --------------', [Comp17]);

  linha  := 7;
end;

procedure TFRelPosicao_Contas.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
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

procedure TFRelPosicao_Contas.ActPreviewExecute(Sender: TObject);
begin
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  //
  //
  SALDO ;
end;

procedure TFRelPosicao_Contas.SALDO ;
var
   tt_valor, Saldo_Final: real ;
   Conta: String ;
Begin
     //
     Print.TitulodoRelatorio := 'Relatorio de Acompanhamento de Saldos';

     With DmFinanceiro do
     begin
          SALDO_CONTAS.Close ;

          SALDO_CONTAS.Sql.Clear ;

          SALDO_CONTAS.Params.Clear ;

          SALDO_CONTAS.Params.CreateParam ( FtString, 'CNPJ'    , PtInput );
          SALDO_CONTAS.Params.CreateParam ( FtDate  , 'DATA_INI', PtInput );
          SALDO_CONTAS.Params.CreateParam ( FtDate  , 'DATA_FIN', PtInput );

          SALDO_CONTAS.Sql.Add (' Select * From SALDO_CONTAS_PERIODO ( :CNPJ, :DATA_INI, :DATA_FIN ) ');

          SALDO_CONTAS.ParamByName('CNPJ').asString   := DMApp.Cnpj;
          SALDO_CONTAS.ParamByName('DATA_INI').asDate := edDtInicial.Date ;
          SALDO_CONTAS.ParamByName('DATA_FIN').asDate := edDtFinal.Date ;
          //
          If Not SALDO_CONTAS.Prepared
          then
              SALDO_CONTAS.prepare ;

          //
          SALDO_CONTAS.Open;

          SALDO_CONTAS.FetchAll  ;

          //
          If SALDO_CONTAS.RecordCount = 0
          Then Begin
               lblStatus.Visible := False ;
               ShowMessage('Não há registros para o período, verifique !');
               //
               SALDO_CONTAS.Close;
               //
               edDtInicial.SetFocus;
               Exit;
          End
          Else Begin
               lblStatus.Visible := False ;

               Anda.Max :=  DMFinanceiro.SALDO_CONTAS.RecordCount;

               Anda.Position := 0;

               Anda.Visible  := TRUE ;
          End;

          Print.Abrir;

          tt_valor     := 0  ;

          //
          SALDO_CONTAS.First;

          While Not SALDO_CONTAS.Eof Do
          Begin
               Saldo_Final := SALDO_CONTASSALDO_INICIAL.value + SALDO_CONTASSALDO_LANCADAS.VALUE - SALDO_CONTASSALDO_BAIXAS.VALUE ;

               IF SALDO_CONTASorigem.value = 'REC'
               THEN BEGIN
                    Conta := 'Receber' ;
               END;

               IF SALDO_CONTASorigem.value = 'PGR'
               THEN BEGIN
                    Conta := 'Pagar' ;
               END;

               IF SALDO_CONTASorigem.value = 'VNV'
               THEN BEGIN
                    Conta := 'Vendas a Vista' ;
               END;

               IF SALDO_CONTASorigem.value = 'VNP'
               THEN BEGIN
                    Conta := 'Vendas a Prazo' ;
               END;

               Print.ImpF(Linha, 01, Format('%-30s %14s %14s %14s %14s', [Conta,FormatFloat('#,##0.00', SALDO_CONTASSALDO_INICIAL.value) ,FormatFloat('#,##0.00', SALDO_CONTASSALDO_LANCADAS.VALUE), FormatFloat('#,##0.00', SALDO_CONTASSALDO_BAIXAS.VALUE), FormatFloat('#,##0.00', SALDO_FINAL)]), [Comp17]);

               Inc(Linha);

               tt_valor   := tt_valor +  SALDO_FINAL ;

               //
               Anda.Position := Anda.Position + 1;

               SALDO_CONTAS.Next;

               //
               If Linha >= 63 Then
                  Print.Novapagina;
          End;

          Print.ImpF(Linha    , 01, Format('%91s -------------- -------------- --------------', ['']), [Comp17]);

          Print.ImpF(Linha, 01, Format('%-30s %14s %14s %14s %14s', ['',FormatFloat('#,##0.00', SALDO_CONTASSALDO_INICIAL.value) ,FormatFloat('#,##0.00', 0), FormatFloat('#,##0.00', 0), FormatFloat('#,##0.00', tt_valor)]), [Comp17]);

          //
          SALDO_CONTAS.Close;
          //
          Anda.Visible:= False;

          Print.Fechar;
     end;
End;


procedure TFRelPosicao_Contas.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRelPosicao_Contas.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );

     if edDtInicial.TEXT = '  /  /    '
     THEN
         edDtInicial.DATE := STRTODATE ('01/01/1900');

end;

procedure TFRelPosicao_Contas.edDtFinalExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );

     if edDtFinal.TEXT = '  /  /    '
     THEN
         edDtFinal.DATE := STRTODATE ('31/12/9999');
end;

end.

