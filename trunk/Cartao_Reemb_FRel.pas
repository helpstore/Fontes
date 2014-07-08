 unit Cartao_Reemb_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,  ComCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFRelCartaoReemb = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    Label2: TcxLabel;
    dsClientes: TDataSource;
    Print: TRDprint;
    ActBuscarProd: TAction;
    Label3: TcxLabel;
    cmbFornecedor: TdxLookupEdit;
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
  private
    { Private declarations }
    Pessoa_FJ: Integer;

    procedure CARTOES   ;

  public
    { Public declarations }
  end;

var
  FRelCartaoReemb: TFRelCartaoReemb;
  Linha, Pagina: Integer;

implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     Financeiro_Dm ;

{$R *.DFM}

procedure TFRelCartaoReemb.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelCartaoReemb.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelCartaoReemb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  dsClientes.DataSet.Close;
  //
  Action      := caFree;
  FRelCartaoReemb  := Nil;
end;

procedure TFRelCartaoReemb.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelCartaoReemb.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelCartaoReemb.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 80), [Normal]);
                    //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.

  Print.ImpF(05, 01, 'Numero', [Comp17, Negrito]);
  Print.ImpF(05, 15, 'Nome', [Comp17, Negrito]);
  Print.ImpF(05, 35, 'Lancto', [Comp17, Negrito]);
  Print.ImpF(05, 43, 'Reembolso', [Comp17, Negrito]);
  Print.ImpF(05, 51, 'Administradora', [Comp17, Negrito]);
  Print.ImpF(05, 68, 'Tipo', [Comp17, Negrito]);
  Print.ImpF(05, 73, 'Valor', [Comp17, Negrito]);

  Print.ImpF(06, 01, '----------------------------------------------------------------------------------------------------------------------------------------', [Comp17, Negrito]);

  linha  := 7;
end;

procedure TFRelCartaoReemb.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
    DsClientes.DataSet.Open;
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

  edDtInicial.setfocus ;
end;

procedure TFRelCartaoReemb.ActPreviewExecute(Sender: TObject);
begin
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  //
  Pessoa_FJ := 0;

  CARTOES ;

end;

procedure TFRelCartaoReemb.CARTOES ;
var
   Valor, tt_juros, tt_valor: real ;
   Cont: Integer;
Begin
     //
     Print.TitulodoRelatorio := 'Relatorio de Cartoes por Reembolso';

     With DmFinanceiro do
     begin
          Cont := 0;

          Ver_Cartoes.Close ;

          Ver_Cartoes.Sql.Clear ;

          Ver_Cartoes.Params.Clear ;

          Ver_Cartoes.Params.CreateParam ( FtString, 'CNPJ'   , PtInput );
          Ver_Cartoes.Params.CreateParam ( FtDate  , 'DATAINI', PtInput );
          Ver_Cartoes.Params.CreateParam ( FtDate  , 'DATAFIM', PtInput );

          Ver_Cartoes.Sql.Add (' Select * From VER_FIN_MOVTO_CARTAO_REEMBOLSO (:CNPJ, :DATAINI, :DATAFIM) ');

          Ver_Cartoes.ParamByName('CNPJ').asString     := DMApp.Cnpj;

          Ver_Cartoes.ParamByName('DATAINI').asDate := edDtInicial.date ;
          Ver_Cartoes.ParamByName('DATAFIM').asDate := edDtFinal.date   ;

          //
          If Trim(cmbFornecedor.Text) <> ''
          Then Begin
               IF CONT = 0
               THEN BEGIN
                    Ver_Cartoes.Params.CreateParam ( FtInteger, 'PES', PtInput );

                    Ver_Cartoes.Sql.Add (' Where Pessoa_Fj = :PES ');

                    Ver_Cartoes.ParamByName('PES').asInteger := cmbFornecedor.LookupKeyValue ;

                    Cont := Cont + 1;
               END
               ELSE BEGIN
                    Ver_Cartoes.Params.CreateParam ( FtInteger, 'PES', PtInput );

                    Ver_Cartoes.Sql.Add (' And Pessoa_Fj = :PES ');

                    Ver_Cartoes.ParamByName('PES').asInteger := cmbFornecedor.LookupKeyValue ;

                    Cont := Cont + 1;
               END;
          End;

          Ver_Cartoes.Sql.Add (' Order by REEMBOLSO, DATA ');

          If Not Ver_Cartoes.Prepared
          then
              Ver_Cartoes.prepare ;

          //
          Ver_Cartoes.Open;

          //
          If Ver_Cartoes.RecordCount = 0
          Then Begin
               lblStatus.Visible := False ;
               ShowMessage('Não há registros para o período, verifique !');
               //
               Ver_Cartoes.Close;
               //
               edDtInicial.SetFocus;
               Exit;
          End
          Else Begin
               lblStatus.Visible := False ;

               Anda.Max :=  DMFinanceiro.Ver_Cartoes.RecordCount;

               Anda.Position := 0;

               Anda.Visible  := TRUE ;
          End;

          Print.Abrir;

          tt_juros   := 0;
          tt_valor   := 0;

          //
          Ver_Cartoes.First;

          While Not Ver_Cartoes.Eof Do
          Begin
               //
               Valor      := 0;

               tt_valor   := tt_valor   +  Ver_CartoesVALOR_LIQ.VALUE ;

               tt_juros   := tt_juros   +  0         ;

               Print.ImpF(Linha, 01, Ver_CartoesNUM_CARTAO.Text,[Comp17]);
               Print.ImpF(Linha, 15, copy(Ver_CartoesCLIENTE.Value,1,35),[Comp17]);
               Print.ImpF(Linha, 35, Ver_CartoesDATA.text,[Comp17]);
               Print.ImpF(Linha, 43, Ver_CartoesREEMBOLSO.text,[Comp17]);
               Print.ImpF(Linha, 51, COPY(Ver_CartoesNOME_ADMINISTRADORA.Text,1,15),[Comp17]);
               Print.ImpF(Linha, 68, Ver_CartoesTIPO.Value,[Comp17]);
               Print.ImpVAL(Linha, 73, '###,##0.00', Ver_CartoesVALOR_LIQ.VALUE, [Comp17]);
               //
               Anda.Position := Anda.Position + 1;

               Ver_Cartoes.Next;
               //
               Inc(Linha);
               //
               If Linha >= 63 Then
                  Print.Novapagina;
          End;

          Print.ImpF(Linha    , 01, Format('%91s -------------- -------------- --------------', ['']), [Comp17]);

          Print.ImpF(Linha + 1, 01, Format('%91s %14s %14s %14s', ['',FormatFloat('#,##0.00', tt_Valor), FormatFloat('#,##0.00', tt_Juros), FormatFloat('#,##0.00', tt_Valor+tt_juros)]), [Comp17]);

          //
          Ver_Cartoes.Close;
          //
          Anda.Visible:= False;
          Print.Fechar;
     end;
End;

procedure TFRelCartaoReemb.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRelCartaoReemb.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );
end;

end.

