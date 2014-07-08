  unit Ordens_Servicos_Horas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ActnList, dxBarDBNav, dxBar, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  IBCustomDataSet,
  dxDBEdtr, dxCntner, ExtCtrls, Buttons, StdCtrls,  
  dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL, cxMemo, cxDBEdit,
  cxSpinEdit, cxTimeEdit, cxCalc, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,DateUtils, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, dxSkinsdxBarPainter, cxClasses, cxButtons,
  cxLabel;

type
  TFrmOrdens_Servicos_Horas = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel1: TPanel;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    BtnFechar: TdxBarButton;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActListagem: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    ActFechar: TAction;
    actLookup: TAction;
    DataSource: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    GroupBox1: TGroupBox;
    Label2: TcxLabel;
    dtInicial: TcxDBDateEdit;
    Label3: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    GroupBox2: TGroupBox;
    Label4: TcxLabel;
    Label7: TcxLabel;
    Label9: TcxLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    hrInicial: TcxDBTimeEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxDBSpinEdit3: TcxDBSpinEdit;
    dtFinal: TcxDBDateEdit;
    hrFinal: TcxDBTimeEdit;
    hrTotal: TcxDBTextEdit;
    Label8: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label10: TcxLabel;
    cxDBMemo1: TcxDBMemo;
    Label12: TcxLabel;
    dsTecnico: TDataSource;
    btnEditar: TdxBarButton;
    GroupBox3: TGroupBox;
    cxDBDateEdit2: TcxDBDateEdit;
    Label15: TcxLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    Label16: TcxLabel;
    GroupBox4: TGroupBox;
    cxDBTextEdit3: TcxDBTextEdit;
    Label1: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label11: TcxLabel;
    cmbTecnico: TdxDBLookupEdit;
    Label13: TcxLabel;
    cxDBDateEdit4: TcxDBDateEdit;
    Label14: TcxLabel;
    cmbContato: TdxDBLookupEdit;
    Label17: TcxLabel;
    Label18: TcxLabel;
    cmbStatus: TdxDBLookupEdit;
    dsContato: TDataSource;
    dsStatus: TDataSource;
    dxDBLookupEdit1: TdxDBLookupEdit;
    Label19: TcxLabel;
    dsVeiculo: TDataSource;
    edtTipoMovimento: TdxDBLookupEdit;
    Label20: TcxLabel;
    dsTipoMovimento: TDataSource;
    btnStatus: TcxButton;
    btnTipoMovto: TcxButton;
    DataSource1: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure cmbNomeRazaoEnter(Sender: TObject);
    procedure cmbNomeRazaoExit(Sender: TObject);
    procedure CmbTipoDespesasEnter(Sender: TObject);
    procedure dtInicialEnter(Sender: TObject);
    procedure dtInicialExit(Sender: TObject);
    procedure dtInicialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActAlterarExecute(Sender: TObject);
    procedure btnStatusClick(Sender: TObject);
    procedure btnTipoMovtoClick(Sender: TObject);
    procedure actLookupExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOrdens_Servicos_Horas: TFrmOrdens_Servicos_Horas;

implementation

uses
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Servicos_DM, Ordens_Servicos_movtos_Form, Cadastros_Dm2,
  StatusServico_Form, TipoMovimento_Form, Ordens_Servicos_Form;

{$R *.DFM}

procedure TFrmOrdens_Servicos_Horas.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  //
  Action := caFree;
  FrmOrdens_Servicos_Horas := Nil;
end;

procedure TFrmOrdens_Servicos_Horas.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    DataSource.DataSet.Append;
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
//  EdData.SetFocus;
end;

procedure TFrmOrdens_Servicos_Horas.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Movimento ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmOrdens_Servicos_Horas.ActPostExecute(Sender: TObject);
begin
  Try
     If DataSource.State in dsEditModes
     Then begin
          {if (DateOf(dtInicial.date) > DateOf(dmApp.DataServidor)) then
          begin
            Application.MessageBox('Dt. Inicial inválida. Valor superior a data corrente','Aviso',mb_ok + mb_iconerror);
            dtInicial.setfocus;
            exit;
          end
          else if ((datetostr(dtInicial.date) = datetostr(dmApp.DataServidor)) and (hrInicial.Time > Time)) then
          begin
              Application.MessageBox('Hr. Inicial inválida. Valor superior a hora corrente','Aviso',mb_ok + mb_iconerror);
              hrInicial.setfocus;
              exit;
          end
          else if (DateOf(dtFinal.date) > dateof(dmApp.DataServidor)) then
          begin
            Application.MessageBox('Dt. Final inválida. Valor superior a data corrente','Aviso',mb_ok + mb_iconerror);
            dtFinal.setfocus;
            exit;
          end
          else if ((DateOf(dtFinal.date) = DateOf(dmApp.DataServidor)) and (hrfinal.Time > Time)) then
          begin
            Application.MessageBox('Hr. Final inválida. Valor superior a hora corrente','Aviso',mb_ok + mb_iconerror);
            hrfinal.setfocus;
            exit;
          end;}

          DataSource.DataSet.Post;
          DMApp.Transaction.CommitRetaining;
     end;
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

procedure TFrmOrdens_Servicos_Horas.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmOrdens_Servicos_Horas.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
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
  //
  DmServicos.SelTecnico2.Close;
  DmServicos.SelTecnico2.Open;

  dmCadastros2.SelTipoMovimento.close;
  dmCadastros2.SelTipoMovimento.Open;

  DmServicos.SelStatus3.Close;
  DmServicos.SelStatus3.Open;

  dmCadastros2.SelClientes3.Close;
  dmCadastros2.SelClientes3.Open;
  
  dmCadastros2.SelVeiculos.Close;
  dmCadastros2.SelVeiculos.Open;
end;

procedure TFrmOrdens_Servicos_Horas.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

end;

procedure TFrmOrdens_Servicos_Horas.EdCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmOrdens_Servicos_Horas.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmOrdens_Servicos_Horas.DataSourceStateChange(Sender: TObject);
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

procedure TFrmOrdens_Servicos_Horas.ActFecharExecute(Sender: TObject);
begin
  If FrmOrdens_Servicos_Horas.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmOrdens_Servicos_Horas.cmbNomeRazaoEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFrmOrdens_Servicos_Horas.cmbNomeRazaoExit(Sender: TObject);
begin
     TIRACORFUNDO(SENDER);
end;

procedure TFrmOrdens_Servicos_Horas.CmbTipoDespesasEnter(Sender: TObject);
begin
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
  CORFUNDO(SENDER);
end;

procedure TFrmOrdens_Servicos_Horas.dtInicialEnter(Sender: TObject);
begin
  CorFundo ( Sender );
end;

procedure TFrmOrdens_Servicos_Horas.dtInicialExit(Sender: TObject);
begin
  TiraCorFundo ( Sender );
end;

procedure TFrmOrdens_Servicos_Horas.dtInicialKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) Then
  begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
 
end;

procedure TFrmOrdens_Servicos_Horas.ActAlterarExecute(Sender: TObject);
begin
  DmServicos.OS_INTERVALO.Edit;
end;

procedure TFrmOrdens_Servicos_Horas.btnStatusClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  if not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmStatusServico', True)) then
    Exit;

  frmStatusServico := TfrmStatusServico.Create(Self);
  frmStatusServico.Showmodal;

  with dmServicos do
  begin
    SelStatus3.Close;
    SelStatus3.Open;
    SelStatus3.fetchAll;
  end;

  Datasource.DataSet.FieldByName('COD_STATUS').asInteger := FrmMain.Codigo_Int;
  frmStatusServico.Free;
  frmStatusServico := Nil;

  cmbStatus.SetFocus;
end;

procedure TFrmOrdens_Servicos_Horas.btnTipoMovtoClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  if not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmTipoMovimento', True)) then
    Exit;

  frmTipoMovimento := TfrmTipoMovimento.Create(Self);
  frmTipoMovimento.Showmodal;

  with dmCadastros2 do
  begin
    SelTipoMovimento.Close;
    SelTipoMovimento.Open;
    SelTipoMovimento.fetchAll;
  end;

  Datasource.DataSet.FieldByName('COD_TIPO_MOVTO').asInteger := FrmMain.Codigo_Int;
  frmTipoMovimento.Free;
  frmTipoMovimento := Nil;

  edtTipoMovimento.SetFocus;
end;

procedure TFrmOrdens_Servicos_Horas.actLookupExecute(Sender: TObject);
begin
   If (FrmOrdens_Servicos_Horas.ActiveControl = cmbStatus) Then
     btnStatus.OnClick(btnStatus);

  If (FrmOrdens_Servicos_Horas.ActiveControl = edtTipoMovimento)Then
     btnTipoMovto.OnClick(btnTipoMovto);
end;

end.
