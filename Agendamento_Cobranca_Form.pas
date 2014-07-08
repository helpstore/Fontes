unit Agendamento_Cobranca_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, ComCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxClasses, cxLabel,  
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxSpinEdit,
  cxTimeEdit;

type
  TFrmAgendamentoCobranca = class(TForm)
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
    Label2: TcxLabel;
    b2: TBevel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    OptAlterar: TdxBarButton;
    LblTitulo: TcxLabel;
    Label5: TcxLabel;
    Label4: TcxLabel;
    Label1: TcxLabel;
    DsMotivo: TDataSource;
    ActLookuP: TAction;
    Label3: TcxLabel;
    EdReceber: TdxDBEdit;
    Label6: TcxLabel;
    EdPessoa: TdxDBEdit;
    Label7: TcxLabel;
    EdHistorico: TdxEdit;
    EDNOME: TdxEdit;
    CmbUsuario: TdxLookupEdit;
    tedtCobrado: TcxTimeEdit;
    edData1: TcxDateEdit;
    edData2: TcxDateEdit;
    tedtCobrar: TcxTimeEdit;
    Label8: TcxLabel;
    CmbCobrador: TdxLookupEdit;
    DsCobrador: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure EDNOMEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure EdHistorico1Enter(Sender: TObject);
    procedure EdHistorico1Exit(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure edData2Exit(Sender: TObject);
    procedure edData1Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CmbCobradorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CmbUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdHistoricoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno : Integer;
    Inicial, Final, Data_Servidor: TDateTime;
  end;

var
  FrmAgendamentoCobranca: TFrmAgendamentoCobranca;

implementation

uses Financeiro_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes, ConsultaCobrancas_Form, ListagemCobrancas_Form, Cadastros_Dm2;

{$R *.DFM}

procedure TFrmAgendamentoCobranca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  If Datasource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;

  If DsMotivo.DataSet.Tag = 0 Then
     DsMotivo.Dataset.Close;

  //
  Action := caFree;
  FrmAgendamentoCobranca := Nil;
end;

procedure TFrmAgendamentoCobranca.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    DataSource.DataSet.Insert ;
  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
end;

procedure TFrmAgendamentoCobranca.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Agendamento ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmAgendamentoCobranca.ActPostExecute(Sender: TObject);
var
  ssql : string;
begin
  Try
    with dmFinanceiro do
    begin
      //--------------------verificando se o intervalo de datas é valido -----------------//
      if Length(trim(EdHistorico.text)) > 100 then
      begin
        application.messagebox(Pchar('Campo histórico está com '+IntToStr(Length(trim(EdHistorico.text)))+' caracteres e pode conter no máximo 100. Verifique'),'Aviso',mb_ok+mb_Iconerror);
        EdHistorico.setfocus;
        exit;
      end;

      //--------------------verificando se o intervalo de datas é valido -----------------//
      if (edData2.date = edData1.date) then
      begin
        if (tedtCobrar.time < tedtCobrado.time) then
        begin
          application.messagebox('Intervalo de horas inválido','Aviso',mb_ok+mb_Iconerror);
          tedtCobrar.setfocus;
          exit;
        end;
      end
      else if (edData2.date < edData1.date) then
      begin
        application.messagebox('Intervalo de datas inválido','Aviso',mb_ok+mb_Iconerror);
        exit;
      end;

      if (CmbCobrador.text = '') then
      begin
        application.messagebox('Defina o cobrador destino','Aviso',mb_ok+mb_Iconerror);
        exit;
      end;

      //-------Verificando se o agendamento esta utilizando uma data de 'cobrado em' inferior a prevista para a mesma---------------/
      qryLocalizaCob.transaction := TIBDataset(DataSource.dataset).transaction;
      qryLocalizaCob.close;
      qryLocalizaCob.sql.text := ' select max(cb.COBRAR_EM) data, max(cb.HR_COBRAR_EM) hora from fin_cobrancas'+
                                 ' cb where cb.cnpj = :cnpj and cb.pessoa_fj = :pessoa '+
                                 ' and cb.receber = :receber and cb.origem = :origem';

      qryLocalizaCob.parambyname('cnpj').value := dmapp.cnpj;
      qryLocalizaCob.parambyname('pessoa').value := FrmManutencaoCobranca.mtbCobrancaPESSOA_FJ.value;
      qryLocalizaCob.parambyname('receber').value := FrmManutencaoCobranca.mtbCobrancaRECEBER.value;
      qryLocalizaCob.parambyname('origem').value := FrmManutencaoCobranca.mtbCobrancaORIGEM.value;
      qryLocalizaCob.open;

      if (qryLocalizaCob.fieldbyname('data').value > edData1.date) then
      begin
       if  application.messagebox(Pchar('Cobrança sendo realizada antes da data agendada'+#13+'Deseja continuar?'),'Aviso',mb_yesno+mb_Iconquestion) = id_no then
         exit;
      end;

      with FrmManutencaoCobranca do
      begin
          mtbCobranca.first;
          while not mtbCobranca.eof do
          begin
            InsereCobranca.parambyname('CNPJ').value :=  dmApp.cnpj;
            InsereCobranca.parambyname('pessoa_fj').value :=  mtbCobrancaPessoa_fj.value;
            InsereCobranca.parambyname('receber').value :=  mtbCobrancaReceber.value;
            InsereCobranca.parambyname('origem').value :=  mtbCobrancaOrigem.value;
            InsereCobranca.parambyname('DATA_COBRANCA').asDate :=  edData1.date;
            InsereCobranca.parambyname('HR_COBRANCA').asTime := tedtCobrado.time;
            InsereCobranca.parambyname('COBRAR_EM').asDate := edData2.date;
            InsereCobranca.parambyname('HR_COBRAR_EM').asTime := tedtCobrar.time;
            InsereCobranca.parambyname('HISTORICO').value := edHistorico.text;
            InsereCobranca.parambyname('MOTIVO').value := cmbUsuario.LookupKeyValue;
            InsereCobranca.parambyname('nome_motivo').value := cmbUsuario.text;
            InsereCobranca.parambyname('COBRADOR').value:= CmbCobrador.LookupKeyValue;
            InsereCobranca.parambyname('nome_cobrador').value:= CmbCobrador.text;
            InsereCobranca.parambyname('ano').value := mtbCobrancaAno.value;
            InsereCobranca.ExecQuery;
            mtbCobranca.next;
          end;
      end;
    end;

    DMApp.Transaction.CommitRetaining;
    modalresult := mrok  ;
  Except
  End;
end;

procedure TFrmAgendamentoCobranca.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Try
    with dmfinanceiro do
    begin
      dmCadastros2.SelCobrador.Close;
      dmCadastros2.SelCobrador.Open;
      tedtCobrado.Time := Time;
      tedtCobrar.Time := Time;

      edData1.date := dmapp.DataServidor;
      edData2.date := dmapp.DataServidor;

      dmcadastros2.Motivo_Cobranca.close;
      dmcadastros2.Motivo_Cobranca.parambyname('CNPJ').value := dmapp.cnpj;
      dmcadastros2.Motivo_Cobranca.Open;

      IF FrmManutencaoCobranca <> nIL THEN
      BEGIN
        DataSource.DataSet := Cobranca ;
        Cobranca.Open ;
//        EdData1.SetFocus;
        ActIncluir.Execute ;
      end ;

      IF FrmListagemCobranca <> nIL THEN
      BEGIN
        DataSource.DataSet := DmFinanceiro.edtCobranca_Listagem ;
        If Not(edtCobranca_Listagem.Active) Then
        begin
             {edtCobranca_Listagem.parambyname('indice').value := mtbcobrancaindice.value;
             edtCobranca_Listagem.open;
             edtCobranca_Listagem.Edit;}
        end;
        //
//        EdData1.SetFocus;
      end;
    end;

  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
end;

procedure TFrmAgendamentoCobranca.FormCreate(Sender: TObject);
begin
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmAgendamentoCobranca.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmAgendamentoCobranca.EDNOMEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmAgendamentoCobranca.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmAgendamentoCobranca.DataSourceStateChange(Sender: TObject);
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

procedure TFrmAgendamentoCobranca.ActFecharExecute(Sender: TObject);
begin
  If FrmAgendamentoCobranca.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmAgendamentoCobranca.ActAlterarExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    DataSource.DataSet.Edit;
  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
end;

procedure TFrmAgendamentoCobranca.EdHistorico1Enter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmAgendamentoCobranca.EdHistorico1Exit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmAgendamentoCobranca.ActCancelExecute(Sender: TObject);
begin
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmAgendamentoCobranca.edData2Exit(Sender: TObject);
begin
  if edData2.date <= 0 then
     edData2.date := date;

  TIRACORFUNDO ( SENDER );
end;

procedure TFrmAgendamentoCobranca.edData1Exit(Sender: TObject);
begin
  TIRACORFUNDO ( SENDER );
end;

procedure TFrmAgendamentoCobranca.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  {CmbUsuario
  DsMotivo, NOME, CODIGO

  }
  If (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  If (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmAgendamentoCobranca.CmbCobradorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  If (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmAgendamentoCobranca.CmbUsuarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  If (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmAgendamentoCobranca.EdHistoricoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  If (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

end.
