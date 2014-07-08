 unit ChequesAcertados_FRel;

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
  TFRelChequesAcertados = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    Label2: TcxLabel;
    dsFornecedores: TDataSource;
    Print: TRDprint;
    ActBuscarProd: TAction;
    Label3: TcxLabel;
    cmbFornecedor: TdxLookupEdit;
    Label1: TcxLabel;
    edDtInicial: TdxDateEdit;
    edDtFinal: TdxDateEdit;
    Label4: TcxLabel;
    edNDocto: TdxEdit;
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
    procedure cmbFornecedorEnter(Sender: TObject);
    procedure cmbFornecedorExit(Sender: TObject);
  private
    { Private declarations }
    Pessoa_FJ: Integer;
    NDocto: String[20];
    procedure Acertados ;

  public
    { Public declarations }
  end;

var
  FRelChequesAcertados: TFRelChequesAcertados;
  Linha, Pagina: Integer;

implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     Financeiro_Dm ;

{$R *.DFM}

procedure TFRelChequesAcertados.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelChequesAcertados.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelChequesAcertados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  if dsFornecedores.tag = 0
  then
      dsFornecedores.DataSet.Close
  else
      dsFornecedores.DataSet.tag := dsFornecedores.DataSet.tag - 1;

  //
  Action      := caFree;
  FRelChequesAcertados := Nil;
end;

procedure TFRelChequesAcertados.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelChequesAcertados.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelChequesAcertados.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 80), [Normal]);
                    //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.

  Print.ImpF(05, 01, '  Cheque Motivo      Cliente                                    Pre-Date Conta         Dt. Acerto  Conc      Valor    Jur/Des      Total', [Comp17, Negrito]);
  Print.ImpF(06, 01, '-------- ----------- ---------------------------------------- ---------- ------------- ---------- ----- ---------- ---------- ----------', [Comp17, Negrito]);

  linha  := 7;
end;

procedure TFRelChequesAcertados.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
    dsFornecedores.DataSet.Open;
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

procedure TFRelChequesAcertados.ActPreviewExecute(Sender: TObject);
begin
  If (( edDtInicial.text = '  /  /  ' ) or ( edDtInicial.text = '  /  /    ' ))
  then begin
       MessageDlg ('Digite a Data!', mterror, [mbok],0);
       edDtInicial.SetFocus ;
       Exit;
  end;

  If (( edDtFinal.text = '  /  /  ' ) or ( edDtFinal.text = '  /  /    ' ))
  then begin
       MessageDlg ('Digite a Data!', mterror, [mbok],0);
       edDtFinal.SetFocus ;
       Exit;
  end;

  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  //
  Pessoa_FJ := 0;
  NDocto := '';
  //
  Acertados  ;
end;

procedure TFRelChequesAcertados.Acertados ;
var
   Valor, tt_juros, tt_valor: real ;
begin
  // cheques que foram devolvidos e acertados posteriormente
  Print.TitulodoRelatorio := 'Relatorio de Cheques Acertados no Peridodo de ' + edDtInicial.text + ' a ' + edDtFinal.text ;
  with DmFinanceiro.VerCheque do
  begin
    Close;
    SelectSql.Clear ;
    SelectSql.Add (SelectVerCheque);
    SelectSql.Add (' and c.vezes_devolucao > 0 ');

    //monta consulta
    if (edDtInicial.Date > 0) and (edDtFinal.Date > 0) then
    begin
      SelectSql.Add (' and  c.DATA_ACERTO >= :DINI  ');
      SelectSql.Add (' and  c.DATA_ACERTO <= :DFIM  ');
    end
    else SelectSql.Add (' and  c.data_acerto is not null ) ');
    if Trim(cmbFornecedor.Text) <> '' then
      SelectSql.Add (' And ( c.Pessoa_Fj = :PES ) ');
    if Trim(edNDocto.Text) <> '' then
      SelectSql.Add (' And ( Docto = :DOC ) ');
    SelectSql.Add (' Order by c.DATA_ACERTO, c.CHEQUE ');

     //carrega parametros
    if (edDtInicial.Date > 0) and (edDtFinal.Date > 0) then
    begin
      ParamByName('DINI').asDate := edDtInicial.Date ;
      ParamByName('DFIM').asDate := edDtFinal.Date ;
    end;
    if Trim(cmbFornecedor.Text) <> '' then
      ParamByName('PES').asInteger := cmbFornecedor.LookupKeyValue ;
    if Trim(edNDocto.Text) <> '' then
      ParamByName('DOC').asString := edNDocto.Text ;

    Open;
    if RecordCount = 0 then
    begin
      lblStatus.Visible := False ;
      ShowMessage('Não há registros para o período, verifique !');
      Close;
      edDtInicial.SetFocus;
      Exit;
    end
    else begin
      lblStatus.Visible := False ;
      Anda.Max :=  RecordCount;
      Anda.Position := 0;
      Anda.Visible  := TRUE ;
    end;
  end;
  Print.Abrir;
  tt_juros := 0;
  tt_valor   := 0;
  with DmFinanceiro do
  begin
    VerCheque.First;
    while not VerCheque.Eof do
    begin
      Valor      := 0;
      tt_valor   := tt_valor   +  VerChequeValor.value         ;
      tt_juros   := tt_juros   +  VerChequeJuros.value         ;
      Print.ImpF(Linha, 01, Format('%8s %11s %-40s %10s %-14s %10s %-4s %10s %10s %10s',
                         [VerChequeCHEQUE.Text,
                          COPY(VerChequeMOTIVO_DEVOLUCAO.VALUE,1,11),
                          copy(VerChequeNOME.Value,1,40),
                          VerChequePRE_DATE.text,
                          Copy(VerChequeCONTA.Text, 1, 14),
                          VerChequeDATA_ACERTO.Text,
                          VerChequePROCESSADO.Value,
                          VerChequeValor.Text,
                          VerChequeJuros.text,
                          VerChequeTotal.Text]), [Comp17]);
      Anda.Position := Anda.Position + 1;
      VerCheque.Next;
      Inc(Linha);
      if Linha >= 63 then
        Print.Novapagina;
    end;

    Print.ImpF(Linha    , 01, Format('%103s ---------- ---------- ----------', ['']), [Comp17]);
    Print.ImpF(Linha + 1, 01, Format('%103s %10s %10s %10s', ['',FormatFloat('#,##0.00', tt_Valor), FormatFloat('#,##0.00', tt_Juros), FormatFloat('#,##0.00', tt_Valor+tt_juros)]), [Comp17]);
    VerCheque.Close;
    Anda.Visible:= False;
    Print.Fechar;
  end;
end;

procedure TFRelChequesAcertados.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRelChequesAcertados.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );

     if edDtInicial.TEXT = '  /  /    '
     THEN
         edDtInicial.DATE := STRTODATE ('01/01/1900');
end;

procedure TFRelChequesAcertados.edDtFinalExit(Sender: TObject);
begin
     tiraCorFundo ( Sender );

     if edDtFinal.TEXT = '  /  /    '
     THEN
         edDtFinal.DATE := STRTODATE ('31/12/9999');
end;

procedure TFRelChequesAcertados.cmbFornecedorEnter(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     CorFundo ( Sender );
end;

procedure TFRelChequesAcertados.cmbFornecedorExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );
end;

end.

