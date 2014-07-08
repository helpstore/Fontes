 unit Mov_Banc_Acerto_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids, dxmdaset, dxDBTLCl, dxGrClms, dxDBGrid, dxTL,
  dxDBCtrl, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  cxLabel;

type
  TFrmMovAvisoBancario = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    btnLocalizar: TdxBarButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    Bevel1: TBevel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    ActLookup: TAction;
    ActPeriodo: TAction;
    DsBanco: TDataSource;
    DsConta: TDataSource;
    Movimento: TIBDataSet;
    MovimentoCODIGO: TIntegerField;
    MovimentoBANCO: TIBStringField;
    MovimentoDOCUMENTO: TIBStringField;
    MovimentoHISTORICO: TIBStringField;
    MovimentoVALOR: TFloatField;
    MovimentoTIPO: TIBStringField;
    MovimentoTIPO_LANCAMENTO: TIBStringField;
    MovimentoCOD_DOC: TIBStringField;
    MovimentoFORNECEDOR: TIntegerField;
    MovimentoPLANILHA: TIntegerField;
    MovimentoMES: TIntegerField;
    MovimentoANO: TIntegerField;
    MovimentoORIGEM: TIBStringField;
    MovimentoCONTRA_PARTIDA: TIntegerField;
    MovimentoCONTA: TIntegerField;
    MovimentoEXCLUIR: TIBStringField;
    MovimentoVALOR_INDEXADO: TFloatField;
    MovimentoCNPJ: TIBStringField;
    MovimentoCOD_ACERTOCONTA: TIntegerField;
    Panel3: TPanel;
    EdDesdobrado: TdxEdit;
    edtValorTotal: TdxEdit;
    Label9: TcxLabel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Panel4: TPanel;
    Panel2: TPanel;
    Shape7: TShape;
    RxLabel2: TcxLabel;
    dxDBEdit15: TdxDBEdit;
    edDocto: TdxDBEdit;
    EdValor: TdxDBCalcEdit;
    BtnConta: TcxButton;
    LblConta: TcxLabel;
    Label8: TcxLabel;
    CmbTipo: TdxDBPickEdit;
    EdConta: TdxButtonEdit;
    BtnTipoDoc: TcxButton;
    cmbTipo_Doc: TdxDBLookupEdit;
    Label2: TcxLabel;
    Label1: TcxLabel;
    EdData: TdxDBDateEdit;
    Label4: TcxLabel;
    Label3: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    Label6: TcxLabel;
    Label5: TcxLabel;
    Bevel2: TBevel;
    Panel5: TPanel;
    GRID: TdxDBGrid;
    GRIDBANCO: TdxDBGridMaskColumn;
    GRIDCOD_DOC: TdxDBGridColumn;
    GRIDDOCUMENTO: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDDATA_CONCILIACAO: TdxDBGridDateColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDTIPO: TdxDBGridMaskColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDTIPO_LANCAMENTO: TdxDBGridMaskColumn;
    DsTipo_Doc: TDataSource;
    MovimentoDATA: TDateField;
    MovimentoDATA_CONCILIACAO: TDateField;
    dxDBDateEdit1: TdxDBDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure edtChequeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActLookupExecute(Sender: TObject);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure dxDBEdit2Enter(Sender: TObject);
    procedure dxDBEdit2Exit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdContaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure BtnContaClick(Sender: TObject);
    procedure MovimentoAfterPost(DataSet: TDataSet);
    procedure MovimentoAfterDelete(DataSet: TDataSet);
    procedure MovimentoBeforePost(DataSet: TDataSet);
    procedure MovimentoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Acumulado: Real ;
    Retorno: Integer;
    ValorDesdobrado: Real;
    TotalMovimento : Real;
    Valor_Movimento : Real;

  end;

var
  FrmMovAvisoBancario: TFrmMovAvisoBancario;
implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Bancos_Form,
     Vendas_Dm, Financeiro_Dm, Receber_Form, MensagemClassificacao_Form,
  Vendas_DM2, Financeiro_Dm2, Act_Baixa_Form, Act_Contas_Form,
  Localizar_Conta, Plano_DM, Plano_Form;

{$R *.DFM}



procedure TFrmMovAvisoBancario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IF EdtValorTotal.text <> edDesdobrado.Text then
  begin
    if (application.messagebox(Pchar('O Valor Desdobrado R$ ' + edDesdobrado.text +#13+ ' não Confere com o Valor Total R$ ' +edtValorTotal.text+'. Deseja cancelar as operações?'),'Aviso',mb_iconquestion + mb_yesno) = id_yes) then
    begin
      modalresult := mrCancel;
      exit;
    end;
  end;

  modalresult := mrOk;
  Action := caFree;
end;

procedure TFrmMovAvisoBancario.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    if (EdConta.text = '') then
    begin
      Application.Messagebox('É necessário definir um conta bancária antes de lançar um movimento','Aviso',mb_ok + mb_iconinformation);
      edconta.setfocus;
      exit;
    end;

    if DataSource.DataSet.state in [dsInactive] then
      DataSource.DataSet.open;

    DataSource.DataSet.Append;
    MovimentoCOD_ACERTOCONTA.value := dmFinanceiro2.ACT_GERA_ACERTOCODIGO.VALUE;
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

procedure TFrmMovAvisoBancario.ActExcluirExecute(Sender: TObject);
begin
  if Application.Messagebox('Tem certeza que deseja excluir este movimento?','Aviso',mb_yesno + mb_iconquestion) = id_no then
     DataSource.Dataset.Delete;
end;

procedure TFrmMovAvisoBancario.ActPostExecute(Sender: TObject);
begin
  Try
    DataSource.DataSet.Post;
    EdConta.enabled := false;

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

procedure TFrmMovAvisoBancario.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes
  Then begin
     DataSource.DataSet.Cancel ;
     EdConta.enabled := false ;
  end
  else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmMovAvisoBancario.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  if DMUsuarios.Direito = 'SUPERVISOR' then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  else
    if DMUsuarios.Objeto = Self.Name then
      AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmMovAvisoBancario.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmMovAvisoBancario.edtChequeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmMovAvisoBancario.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmMovAvisoBancario.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActLocalizar.Enabled := False;
       ActListagem.Enabled  := False;
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
       ActListagem.Enabled  := ActListagem.Tag = 1;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmMovAvisoBancario.ActFecharExecute(Sender: TObject);
begin
  If FrmMovAvisoBancario.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmMovAvisoBancario.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Acumulado := 0;
  DMPlano       := TDMPlano.Create(Self);
  DsTipo_Doc.DataSet.Close;
  DsTipo_Doc.DataSet.Open;

  if (TotalMovimento < 0) then
    TotalMovimento := (TotalMovimento * -1);

  edtValorTotal.Text := formatfloat('###,##0.00',TotalMovimento);

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

  Datasource.AutoEdit := ActAlterar.Enabled;

  EdConta.SetFocus;
end;

procedure TFrmMovAvisoBancario.ActLookupExecute(Sender: TObject);
begin
  //
end;

procedure TFrmMovAvisoBancario.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
  if (( KEY = #13 ) and ( Not DataSource.DataSet.FieldByname ('BANCO').Isnull )) then
  begin
    DataSource.DATASET.EDIT ;
    EdConta.setfocus;
  end;
end;

procedure TFrmMovAvisoBancario.dxDBEdit2Enter(Sender: TObject);
begin
  CORFUNDO ( SENDER );
end;

procedure TFrmMovAvisoBancario.dxDBEdit2Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmMovAvisoBancario.FormDestroy(Sender: TObject);
begin
  FrmMovAvisoBancario := nil;
end;

procedure TFrmMovAvisoBancario.EdContaButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  Application.CreateForm(TFrm_Localizar_Conta, Frm_Localizar_Conta);

  Frm_Localizar_Conta.DSource.DataSet := DmPlano.PlanoMovimento ;

  if ( Frm_Localizar_Conta.showmodal = mrOk ) Then
  Begin
    EdConta.text := IntToStr(Frm_Localizar_Conta.CampTrecho );
    LblConta.Caption := DmPlano.PlanoMovimentoNOME.value ;
  end;

  Frm_Localizar_Conta.free ;
  Frm_Localizar_Conta := Nil ;
end;

procedure TFrmMovAvisoBancario.BtnContaClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPlano', False);

  If DmPlano = Nil then
    DmPlano := TDmPlano.Create(Self)
  else
    DmPlano.Tag := DmPlano.Tag + 1;


  FrmPlano := TFrmPlano.Create(Self);
  FrmPlano.ShowModal;
  Datasource.DataSet.FieldByName('CONTA').asInteger := FrmMain.Codigo_Int;
  FrmPlano.Free;
  FrmPlano := Nil;

  DsConta.DataSet.Tag := DsConta.DataSet.Tag - 1;
  EdConta.SetFocus;
end;

procedure TFrmMovAvisoBancario.MovimentoAfterPost(DataSet: TDataSet);
var
 Aux: Real;
begin
  Aux := 0;
  
  Movimento.DisableControls ;
  Movimento.First ;

  While Not Movimento.Eof do
  begin
    Aux := Aux + MovimentoValor.value ;
    Movimento.Next;
  end;

  Movimento.EnableControls ;
  EdDesdobrado.text := FormatFloat ('###,###,##0.00', Aux);
  Acumulado := Aux ;
end;

procedure TFrmMovAvisoBancario.MovimentoAfterDelete(DataSet: TDataSet);
var
  aux : real;
begin
  Aux := 0;

  Movimento.DisableControls ;
  Movimento.First ;
  While Not Movimento.Eof do
  begin
    Aux := Aux + Movimentovalor.value ;
    Movimento.Next;
  end;

  Movimento.EnableControls ;
  EdDesdobrado.text := FormatFloat ('###,###,##0.00', Aux);
  Acumulado := Aux ;
end;

procedure TFrmMovAvisoBancario.MovimentoBeforePost(DataSet: TDataSet);
begin
  if MOVIMENTO.State = dsInsert then
    MOVIMENTO.FieldByName('CODIGO'  ).Value := DMApp.GerarCodigo('MOVCONTABIL', 1) ;
end;

procedure TFrmMovAvisoBancario.MovimentoNewRecord(DataSet: TDataSet);
VAR
   MES, ANO, DIA: WORD;
begin
   DecodeDate(DATE, ANO, MES, DIA );
   MOVIMENTOCNPJ.Value     := DMApp.Cnpj;
   MOVIMENTOMES.Value      := MES  ;
   MOVIMENTOANO.Value      := ANO  ;
   MOVIMENTODATA.Value     := StrToDate(DateToStr(DmApp.Data_Servidor)) ;
   MOVIMENTOVALOR.Value    := Arredonda( TotalMovimento - Acumulado,2);
   MOVIMENTOCODIGO.Value   := DMApp.GerarCodigo('MOVCONTABIL',0 ) + 1 ;
   MOVIMENTOORIGEM.VALUE   := 'MOV' ;
   MOVIMENTOTIPO.value     := 'C' ;
   MovimentoCONTA.Value    := DmPlano.PlanoMovimentoCONTA.Value ;
   MovimentoBANCO.Value    := DmPlano.PlanoMovimentoBANCO.Value ;
   MovimentoTIPO_LANCAMENTO.Value := 'A' ;
   MovimentoHISTORICO.Value := frmAct_Contas.Historico;

   if (frmAct_Contas.TotalPagar > frmAct_Contas.TotalReceber) then
      MovimentoTIPO.value := 'D'
   else
      MovimentoTIPO.value := 'C';
end;

end.
