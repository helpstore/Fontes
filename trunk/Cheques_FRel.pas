 unit Cheques_FRel;

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
  TFRelCheque = class(TForm)
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
    Label5: TcxLabel;
    cmbTipoRel: TdxPickEdit;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    RDDATA: TRadioGroup;
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
    procedure cmbTipoRelExit(Sender: TObject);
    procedure cmbFornecedorExit(Sender: TObject);
    procedure edDtFinalExit(Sender: TObject);
    procedure cmbTipoRelChange(Sender: TObject);
  private
    { Private declarations }
    Pessoa_FJ: Integer;
    NDocto: String[20];
    procedure ABERTOS   ;
    procedure CONCILIADOS  ;
    procedure NAOCONCILIADOS  ;
    procedure MontaConsultaAbertos;
    procedure SetParametrosAbertos;
    procedure MontaConsultaConciliados;
    procedure MontaConsultaNaoConciliados;
    procedure SetParametrosConciliados;
    procedure SetParametrosNaoConciliados;

  public
    { Public declarations }
  end;

var
  FRelCheque: TFRelCheque;
  Linha, Pagina: Integer;

implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     Financeiro_Dm ;

{$R *.DFM}

procedure TFRelCheque.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  RDDATA.ItemIndex := 0;
end;

procedure TFRelCheque.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelCheque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  if dsFornecedores.tag = 0
  then
      dsFornecedores.DataSet.Close
  else
      dsFornecedores.DataSet.tag := dsFornecedores.DataSet.tag - 1;

  Action      := caFree;
  FRelCheque := Nil;
end;

procedure TFRelCheque.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelCheque.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelCheque.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 80), [Normal]);
                    //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.

  Print.ImpF(05, 01, '  Cheque Cliente                             Emissão    Pré-Date   Conta           Dt. Conc  Conc       Valor     Jur/Des      Total', [Comp17, Negrito]);
  Print.ImpF(06, 01, '-------- ----------------------------------- ---------- ---------- ------------- ---------- ----- ----------- ----------- ----------', [Comp17, Negrito]);

  linha  := 7;
end;

procedure TFRelCheque.FormShow(Sender: TObject);
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
  //
  cmbTipoRel.ItemIndex := 0;
end;

procedure TFRelCheque.ActPreviewExecute(Sender: TObject);
begin
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  //
  Pessoa_FJ := 0;
  NDocto := '';
  //
  If cmbTipoRel.Text = 'Abertos'
  Then Begin
       ABERTOS ;
  end ;

  If cmbTipoRel.Text = 'Conciliados'
  Then Begin
       CONCILIADOS ;
  end ;

  If cmbTipoRel.Text = 'Não Conciliados'
  Then Begin
       NAOCONCILIADOS ;
  end ;
end;

procedure TFRelCheque.ABERTOS ;
var
   Valor, tt_juros, tt_valor: real ;
begin
  //Cheques sem movimentação alguma de depósito(não conciliados)
  Print.TitulodoRelatorio := 'Relatorio de Cheques Abertos';
  with DmFinanceiro.VerCheque do
  begin
    Close ;
    SelectSql.Clear ;
    SelectSql.Add (SelectVerCheque);     //aqui
    //CHEQUES Q FORAM DEVOLVIDOS E NAO FORAM ACERTADOS
    MontaConsultaAbertos;
    SetParametrosAbertos;
    Open;
    if RecordCount = 0 then
    begin
      lblStatus.Visible := False ;
      ShowMessage('Não há registros para o período, verifique !');
      Close;
      edDtInicial.SetFocus;
      Exit;
    end
    else Begin
      lblStatus.Visible := False ;
      Anda.Max :=  RecordCount;
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
      Print.ImpF(Linha, 01, Format('%8s %-35s %10s %10s %-14s %10s %-4s %11s %11s %11s',
                                       [VerChequeCHEQUE.Text,
                                        copy(VerChequeNOME.Value,1,35),
                                        VerChequeEmissao.text,
                                        VerChequePRE_DATE.text,
                                        Copy(VerChequeCONTA.Text, 1, 14),
                                        VerChequeDATA_CONCILIACAO.Text,
                                        VerChequeCONCILIADO.Value,
                                        VerChequeValor.Text,
                                        VerChequeJuros.text,
                                        VerChequeTotal.Text]), [Comp17]);
      Anda.Position := Anda.Position + 1;
      VerCheque.Next;
      Inc(Linha);
      if Linha >= 63 then
        Print.Novapagina;
    end;
    Print.ImpF(Linha    , 01, Format('%91s -------------- -------------- --------------', ['']), [Comp17]);
    Print.ImpF(Linha + 1, 01, Format('%91s %14s %14s %14s', ['',FormatFloat('#,##0.00', tt_Valor), FormatFloat('#,##0.00', tt_Juros), FormatFloat('#,##0.00', tt_Valor+tt_juros)]), [Comp17]);
    VerCheque.Close;
    Anda.Visible:= False;
    Print.Fechar;
  end;
end;
procedure TFRelCheque.MontaConsultaAbertos;
begin
  with DmFinanceiro.VerCheque do
  begin
    SelectSql.Add (' and C.DATA_CONCILIACAO IS NULL and C.PROCESSADO <> '+''''+'S'+''''+' ');

    if RDDATA.ItemIndex = 0 then
    begin
      if edDtInicial.Date > 0 then
        SelectSql.Add (' and C.PRE_DATE >= :DINI ');
//        ParamByName('DINI').asDate := edDtInicial.Date ;
      if edDtFinal.Date > 0 then
        SelectSql.Add (' and C.PRE_DATE <= :DFIM ');
//                    VerCheque.ParamByName('DFIM').asDate := edDtFinal.Date ;
    end
    else begin
      if edDtInicial.Date > 0 then
        SelectSql.Add (' and C.EMISSAO >= :DINI ');
  //      VerCheque.ParamByName('DINI').asDate := edDtInicial.Date ;
                 //
      if edDtFinal.Date > 0 then
        SelectSql.Add (' and C.EMISSAO <= :DFIM ');
  //    VerCheque.ParamByName('DFIM').asDate := edDtFinal.Date ;
    end;
    if Trim(cmbFornecedor.Text) <> '' then
      SelectSql.Add (' and C.Pessoa_Fj = :PES ');
//    VerCheque.ParamByName('PES').asInteger := cmbFornecedor.LookupKeyValue ;

    if Trim(edNDocto.Text) <> '' then
      SelectSql.Add (' and C.Docto = :DOC ');
//    VerCheque.ParamByName('DOC').asString := edNDocto.Text ;

    case RDDATA.ItemIndex of
      0 : SelectSql.Add (' Order by C.Pre_Date, C.Cheque ');
      1 : SelectSql.Add (' Order by C.emissao, C.Cheque ');
    end;
  end;
end;

procedure TFRelCheque.CONCILIADOS ;
var
   Valor, tt_juros, tt_valor: real ;
begin
  //cheques somente conciliados
  Print.TitulodoRelatorio := 'Relatorio de Cheques Conciliados';
  with DmFinanceiro.VerCheque do
  begin
    Close;
    SelectSql.Clear ;
    SelectSql.Add (SelectVerCheque);
    MontaConsultaConciliados;
    SetParametrosConciliados;
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
      Print.ImpF(Linha, 01, Format('%8s %-35s %10s %10s %-14s %10s %-4s %11s %11s %11s',
                           [VerChequeCHEQUE.Text,
                            copy(VerChequeNOME.Value,1,35),
                            VerChequeEmissao.text,
                            VerChequePRE_DATE.text,
                            Copy(VerChequeCONTA.Text, 1, 14),
                            VerChequeDATA_CONCILIACAO.Text,
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

    Print.ImpF(Linha    , 01, Format('%91s -------------- -------------- --------------', ['']), [Comp17]);
    Print.ImpF(Linha + 1, 01, Format('%91s %14s %14s %14s', ['',FormatFloat('#,##0.00', tt_Valor), FormatFloat('#,##0.00', tt_Juros), FormatFloat('#,##0.00', tt_Valor+ tt_juros)]), [Comp17]);
    VerCheque.Close;
    Anda.Visible:= False;
    Print.Fechar;
  end;
end;

procedure TFRelCheque.NAOCONCILIADOS ;
var
   Valor, tt_juros, tt_valor: real ;
begin
  //cheques somente conciliados
  Print.TitulodoRelatorio := 'Relatorio de Cheques Não Conciliados';
  with DmFinanceiro.VerCheque do
  begin
    Close;
    SelectSql.Clear ;
    SelectSql.Add (SelectVerCheque);
    MontaConsultaNaoConciliados;
    SetParametrosNaoConciliados;
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
      Print.ImpF(Linha, 01, Format('%8s %-35s %10s %10s %-14s %10s %-4s %11s %11s %11s',
                           [VerChequeCHEQUE.Text,
                            copy(VerChequeNOME.Value,1,35),
                            VerChequeEmissao.text,
                            VerChequePRE_DATE.text,
                            Copy(VerChequeCONTA.Text, 1, 14),
                            VerChequeDATA_CONCILIACAO.Text,
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

    Print.ImpF(Linha    , 01, Format('%91s -------------- -------------- --------------', ['']), [Comp17]);
    Print.ImpF(Linha + 1, 01, Format('%91s %14s %14s %14s', ['',FormatFloat('#,##0.00', tt_Valor), FormatFloat('#,##0.00', tt_Juros), FormatFloat('#,##0.00', tt_Valor+ tt_juros)]), [Comp17]);
    VerCheque.Close;
    Anda.Visible:= False;
    Print.Fechar;
  end;
end;

procedure TFRelCheque.MontaConsultaConciliados;
begin
  with DmFinanceiro.VerCheque do
  begin
    if edDtInicial.Date > 0 then
      SelectSql.Add (' and C.DATA_CONCILIACAO >= :DINI ');
//      ParamByName('DINI').asDate := edDtInicial.Date ;

    if edDtFinal.Date > 0 then
      SelectSql.Add (' and C.DATA_CONCILIACAO <= :DFIM ');
//      ParamByName('DFIM').asDate := edDtFinal.Date ;

    if Trim(cmbFornecedor.Text) <> '' then
      SelectSql.Add (' and C.Pessoa_Fj = :PES ');
//      VerCheque.ParamByName('PES').asInteger := cmbFornecedor.LookupKeyValue ;

    if Trim(edNDocto.Text) <> '' then
      SelectSql.Add (' and C.Docto = :DOC ');
//      ParamByName('DOC').asString := edNDocto.Text ;

    SelectSql.Add (' Order by C.DATA_CONCILIACAO, c.Cheque ');
  end;
end;

procedure TFRelCheque.MontaConsultaNaoConciliados;
begin
  with DmFinanceiro.VerCheque do
  begin
    SelectSql.Add (' and C.DATA_CONCILIACAO IS NULL ');

    if edDtInicial.Date > 0 then
      SelectSql.Add (' and C.PRE_DATE >= :DINI ');
//      ParamByName('DINI').asDate := edDtInicial.Date ;

    if edDtFinal.Date > 0 then
      SelectSql.Add (' and C.PRE_DATE <= :DFIM ');
//      ParamByName('DFIM').asDate := edDtFinal.Date ;

    if Trim(cmbFornecedor.Text) <> '' then
      SelectSql.Add (' and C.Pessoa_Fj = :PES ');
//      VerCheque.ParamByName('PES').asInteger := cmbFornecedor.LookupKeyValue ;

    if Trim(edNDocto.Text) <> '' then
      SelectSql.Add (' and C.Docto = :DOC ');
//      ParamByName('DOC').asString := edNDocto.Text ;

    SelectSql.Add (' Order by C.PRE_DATE, c.Cheque ');
  end;
end;

procedure TFRelCheque.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRelCheque.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );

     if edDtInicial.TEXT = '  /  /    '
     THEN
         edDtInicial.DATE := STRTODATE ('01/01/1900');
end;

procedure TFRelCheque.cmbTipoRelExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );

     IF cmbTipoRel.Text = 'Abertos'
     THEN BEGIN
          RDDATA.Enabled := TRUE ;
     END
     ELSE BEGIN
          RDDATA.Enabled   := FALSE ;
          edNDocto.SetFocus ;
     END;
end;

procedure TFRelCheque.cmbFornecedorExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );
end;

procedure TFRelCheque.edDtFinalExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );

     if edDtFinal.TEXT = '  /  /    '
     THEN
         edDtFinal.DATE := STRTODATE ('31/12/9999');
end;

procedure TFRelCheque.cmbTipoRelChange(Sender: TObject);
begin
  RDDATA.Visible := cmbTipoRel.ItemIndex = 0;
end;

procedure TFRelCheque.SetParametrosAbertos;
begin
  with DmFinanceiro.VerCheque do
  begin
    if RDDATA.ItemIndex = 0 then
    begin
      if edDtInicial.Date > 0 then
        ParamByName('DINI').asDate := edDtInicial.Date ;
      if edDtFinal.Date > 0 then
        ParamByName('DFIM').asDate := edDtFinal.Date ;
    end
    else begin
      if edDtInicial.date > 0 then
        ParamByName('DINI').asDate := edDtInicial.Date ;
      if edDtFinal.Date > 0 then
        ParamByName('DFIM').asDate := edDtFinal.Date ;
    end;
    if Trim(cmbFornecedor.Text) <> '' then
      ParamByName('PES').asInteger := cmbFornecedor.LookupKeyValue ;

    if Trim(edNDocto.Text) <> '' then
      ParamByName('DOC').asString := edNDocto.Text;
  end;
end;

procedure TFRelCheque.SetParametrosConciliados;
begin
  with DmFinanceiro.VerCheque do
  begin
    if edDtInicial.Date > 0 then
      ParamByName('DINI').asDate := edDtInicial.Date ;

    if edDtFinal.Date > 0 then
      ParamByName('DFIM').asDate := edDtFinal.Date ;

    if Trim(cmbFornecedor.Text) <> '' then
      ParamByName('PES').asInteger := cmbFornecedor.LookupKeyValue ;

    if Trim(edNDocto.Text) <> '' then
      ParamByName('DOC').asString := edNDocto.Text ;
  end;
end;

procedure TFRelCheque.SetParametrosNaoConciliados;
begin
  with DmFinanceiro.VerCheque do
  begin
    if edDtInicial.Date > 0 then
      ParamByName('DINI').asDate := edDtInicial.Date ;

    if edDtFinal.Date > 0 then
      ParamByName('DFIM').asDate := edDtFinal.Date ;

    if Trim(cmbFornecedor.Text) <> '' then
      ParamByName('PES').asInteger := cmbFornecedor.LookupKeyValue ;

    if Trim(edNDocto.Text) <> '' then
      ParamByName('DOC').asString := edNDocto.Text ;
  end;
end;

end.

