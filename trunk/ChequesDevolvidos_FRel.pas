 unit ChequesDevolvidos_FRel;

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
  TFRelChequeDevolvido = class(TForm)
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
    procedure DEVOLVIDOS ;

  public
    { Public declarations }
  end;

var
  FRelChequeDevolvido: TFRelChequeDevolvido;
  Linha, Pagina: Integer;

implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     Financeiro_Dm ;

{$R *.DFM}

procedure TFRelChequeDevolvido.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelChequeDevolvido.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelChequeDevolvido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  if dsFornecedores.tag = 0
  then
      dsFornecedores.DataSet.Close
  else
      dsFornecedores.DataSet.tag := dsFornecedores.DataSet.tag - 1;
      
  //
  Action      := caFree;
  FRelChequeDevolvido := Nil;
end;

procedure TFRelChequeDevolvido.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelChequeDevolvido.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelChequeDevolvido.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 80), [Normal]);
                    //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.

  Print.ImpF(05, 01, '  Cheque Motivo      Cliente                                    Pre-Date Conta            Dt. Dev  Conc      Valor    Jur/Des      Total', [Comp17, Negrito]);
  Print.ImpF(06, 01, '-------- ----------- ---------------------------------------- ---------- ------------- ---------- ----- ---------- ---------- ----------', [Comp17, Negrito]);

  linha  := 7;
end;

procedure TFRelChequeDevolvido.FormShow(Sender: TObject);
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

procedure TFRelChequeDevolvido.ActPreviewExecute(Sender: TObject);
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
  DEVOLVIDOS  ;
end;

procedure TFRelChequeDevolvido.DEVOLVIDOS ;
var
   Valor, tt_juros, tt_valor: real ;
Begin
  //cheques devolvidos 1 ou 2 vezes
  Print.TitulodoRelatorio := 'Relatorio de Cheques Devolvidos no Peridodo de ' + edDtInicial.text + ' a ' + edDtFinal.text ;
  with DmFinanceiro.VerCheque do
  begin
    Close ;
    SelectSQL.Clear ;
    //select colocado no codigo de dm financeiro
    SelectSQL.Add(SelectVerCheque);
    SelectSql.Add (' and c.VEZES_DEVOLUCAO > 0 ');

    //monta a consulta
    if edDtInicial.Date > 0 then
      SelectSQL.Add (' and ( c.DATA_DEVOLUCAO >= :DINI ) ');
    if edDtFinal.Date > 0 then
      SelectSQL.Add (' and ( c.DATA_DEVOLUCAO <= :DFIM ) ');
    if Trim(cmbFornecedor.Text) <> '' then
      SelectSql.Add (' and ( c.Pessoa_Fj = :PES ) ');
    if Trim(edNDocto.Text) <> '' then
      SelectSql.Add (' and ( c.CHEQUE = :DOC ) ');

    //vai pegar soment eos que foram devolvidos e deixar os que forama acertados
    SelectSql.Add (' and ( (c.tipo = ''DE'') or (c.tipo = ''D2'') ) ');
    SelectSql.Add (' Order by c.NOME, c.pre_date, c.CHEQUE ');

    // carrega os parametros
    if edDtInicial.Date > 0 then
      ParamByName('DINI').asDate := edDtInicial.Date ;
    if edDtFinal.Date > 0 then
      ParamByName('DFIM').asDate := edDtFinal.Date ;
    if Trim(cmbFornecedor.Text) <> '' then
      ParamByName('PES').asInteger := cmbFornecedor.LookupKeyValue ;
    if Trim(edNDocto.Text) <> '' then
      ParamByName('DOC').asString := edNDocto.Text ;

    Open;
    if RecordCount = 0  then
    begin
      lblStatus.Visible := False ;
      ShowMessage('Não há registros para o período, verifique !');
      Close;
      edDtInicial.SetFocus;
      Exit;
    end
    else begin
      lblStatus.Visible := False ;
      Anda.Max := RecordCount;
      Anda.Position := 0;
      Anda.Visible  := true;
    end;
  end;

  Print.Abrir;
  tt_juros   := 0;
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
                          VerChequeDATA_DEVOLUCAO.Text,
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

procedure TFRelChequeDevolvido.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRelChequeDevolvido.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );

     if edDtInicial.TEXT = '  /  /    '
     THEN
         edDtInicial.DATE := STRTODATE ('01/01/1900');
end;

procedure TFRelChequeDevolvido.edDtFinalExit(Sender: TObject);
begin
     tiraCorFundo ( Sender );

     if edDtFinal.TEXT = '  /  /    '
     THEN
         edDtFinal.DATE := STRTODATE ('31/12/9999');
end;

procedure TFRelChequeDevolvido.cmbFornecedorEnter(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     CorFundo ( Sender );
end;

procedure TFRelChequeDevolvido.cmbFornecedorExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );
end;

end.

