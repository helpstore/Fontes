  unit Ordens_Servicos_Email_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ActnList, dxBarDBNav, dxBar, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  IBCustomDataSet,
  dxDBEdtr, dxCntner, ExtCtrls, Buttons, StdCtrls,  
  dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL, cxMemo, cxDBEdit,
  cxSpinEdit, cxTimeEdit, cxCalc, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,DateUtils,
  cxButtonEdit, dxmdaset, Menus, cxLookAndFeelPainters, cxButtons,
  cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxClasses,
  cxGridLevel, cxGrid, cxDBData, cxGridDBTableView, IdMessage,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, IdBaseComponent,
  IdComponent, IdIOHandler, IdIOHandlerSocket, IdSSLOpenSSL,
  cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxLabel;

type
 

  TFrmOrdens_Servicos_Email = class(TForm)
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
    ActCancel: TAction;
    DSEMAIL: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    dsTecnico: TDataSource;
    Label2: TcxLabel;
    edtAssunto: TcxDBTextEdit;
    Label3: TcxLabel;
    edtMensagem: TcxDBMemo;
    Label4: TcxLabel;
    Label5: TcxLabel;
    TBLEMAIL: TdxMemData;
    edtContato: TcxDBMemo;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    OpenDialog: TOpenDialog;
    TBLEMAILCODIGO: TIntegerField;
    TBLEMAILCONTATOS: TMemoField;
    TBLEMAILASSUNTO: TStringField;
    TBLEMAILMENSAGEM: TBlobField;
    TBLANEXOS: TdxMemData;
    TBLANEXOSARQUIVO: TStringField;
    TBLANEXOSTAMANHO: TFloatField;
    DSANEXO: TDataSource;
    GridAnexo: TcxGrid;
    GridAnexoDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    GridAnexoDBTableView1RecId: TcxGridDBColumn;
    GridAnexoDBTableView1ARQUIVO: TcxGridDBColumn;
    GridAnexoDBTableView1TAMANHO: TcxGridDBColumn;
    ActEnviar: TAction;
    edtRemetente: TcxDBMemo;
    Label1: TcxLabel;
    cxButton4: TcxButton;
    TBLEMAILREMETENTE: TStringField;
    tblContatos: TdxMemData;
    tblContatosEMAIL: TStringField;
    tblContatosNOME: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure cmbNomeRazaoEnter(Sender: TObject);
    procedure cmbNomeRazaoExit(Sender: TObject);
    procedure dtInicialEnter(Sender: TObject);
    procedure dtInicialExit(Sender: TObject);
    procedure dtInicialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure ActEnviarExecute(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  FrmOrdens_Servicos_Email: TFrmOrdens_Servicos_Email;

implementation

uses
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Servicos_DM, Ordens_Servicos_movtos_Form, Ordens_Servicos_Horas_Form,
  Act_Filtro_Parceiro, Cadastros_Dm2, Filtro_Parceiro_Email,
  Ordens_Servicos_Form;

{$R *.DFM}

procedure TFrmOrdens_Servicos_Email.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  //
  Action := caFree;
  FrmOrdens_Servicos_Horas := Nil;
end;

procedure TFrmOrdens_Servicos_Email.FormShow(Sender: TObject);
var
  contatos : string;
  usuario : integer;
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

  dmApp.Desconecta;
  dmApp.Conecta;

  if (DmServicos.OS_INTERVALOUSUARIO.AsInteger  > 0) then
    usuario := DmServicos.OS_INTERVALOUSUARIO.value
  else
    usuario := dmApp.UsuarioCaixa;


  DmServicos.SelTecnico4.Close;
  DmServicos.SelTecnico4.parambyname('cnpj').value := dmApp.cnpj;
  DmServicos.SelTecnico4.parambyname('usuario').value := usuario;
  DmServicos.SelTecnico4.Open;

  DmServicos.SelTecnico4.FetchAll;
  if (DmServicos.SelTecnico4.RecordCount = 0) then
    Application.MessageBox('Defina um vínculo entre o técnico e o usuário selecionado','Aviso',mb_ok + mb_iconerror);
    
  TBLEMAIL.Open;
  TBLEMAIL.Append;
  TBLEMAILCODIGO.value := DmServicos.OS_INTERVALOCODIGO.value;
  TBLEMAILREMETENTE.value :=   dmapp.EMAIL_PADRAO;
  TBLEMAILASSUNTO.Value := 'Caso '+Completaesq(dmServicos.OrdemCODIGO.asString,'0',9)+': '+dmServicos.OrdemASSUNTO.Value;
  TBLEMAILMENSAGEM.Value := DmServicos.OS_INTERVALOOBSERVACAO.value+#13+#13+#13+#13+#13+DmServicos.SelTecnico4ASSINATURA.value;

  tblContatos.Open;
  contatos := '';
  if dmCadastros2.SelClientesEMAIL.AsString <> '' then
  begin
    tblContatos.Append;
    contatos := dmCadastros2.SelClientesEMAIL.AsString+';';
    tblContatosEMAIL.Value := dmCadastros2.SelClientesEMAIL.AsString;
  end;

  if (dmCadastros2.SelClientes2EMAIL.AsString <> '') then
  begin
    tblContatos.Append;
    contatos := contatos + dmCadastros2.SelClientes2EMAIL.AsString+';';
    tblContatosEMAIL.Value := dmCadastros2.SelClientes2EMAIL.AsString;
  end;

  if (dmapp.EMAIL_CONTROLE <> '') then
  begin
    tblContatos.Append;
    contatos := contatos + dmapp.EMAIL_CONTROLE+';';
    tblContatosEMAIL.Value := dmapp.EMAIL_CONTROLE;
  end;

  if (DmServicos.SelTecnicoEMAIL.AsString <> '') then
  begin
    tblContatos.Append;
    contatos := contatos + DmServicos.SelTecnicoEMAIL.AsString+';';
    tblContatosEMAIL.Value := DmServicos.SelTecnicoEMAIL.AsString;
  end;

  TBLEMAILCONTATOS.Value := contatos;

end;

procedure TFrmOrdens_Servicos_Email.EdCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmOrdens_Servicos_Email.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmOrdens_Servicos_Email.ActFecharExecute(Sender: TObject);
begin
  If FrmOrdens_Servicos_Email.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmOrdens_Servicos_Email.cmbNomeRazaoEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFrmOrdens_Servicos_Email.cmbNomeRazaoExit(Sender: TObject);
begin
     TIRACORFUNDO(SENDER);
end;

procedure TFrmOrdens_Servicos_Email.dtInicialEnter(Sender: TObject);
begin
  CorFundo ( Sender );
end;

procedure TFrmOrdens_Servicos_Email.dtInicialExit(Sender: TObject);
begin
  TiraCorFundo ( Sender );
end;

procedure TFrmOrdens_Servicos_Email.dtInicialKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) Then
    Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFrmOrdens_Servicos_Email.cxButton1Click(Sender: TObject);
begin
  //seja la qm for manter o codigo, descupe-me a gambiarra.. ms to com pressa
  dmCadastros2.SelFiltraParceiro.Close;
  dmCadastros2.SelFiltraParceiro.Open;
  FrmFiltraParceiroEmail := TFrmFiltraParceiroEmail.Create(Self);
  FrmFiltraParceiroEmail.ShowModal;
  if FrmFiltraParceiroEmail.modalresult = mrOK then
  begin
    TBLEMAILCONTATOS.Value := (FrmFiltraParceiroEmail.filtro);

    //inserindo os contatos
    tblContatos.close;
    tblContatos.Open;
    tblContatos.data.Values.Clear;

    dmCadastros2.SelFiltraParceiro.First;
    while not dmCadastros2.SelFiltraParceiro.Eof do
    begin
      if (dmCadastros2.SelFiltraParceiroSELECIONADO.value = 'S') then
      begin
        tblContatos.Append;
        tblContatosEMAIL.value := dmCadastros2.SelFiltraParceiroEMAIL.value;
        tblContatosNOME.value := dmCadastros2.SelFiltraParceiroNOME_RAZAO.value;
      end;
      dmCadastros2.SelFiltraParceiro.Next;
    end;
  end;
end;

procedure TFrmOrdens_Servicos_Email.cxButton2Click(Sender: TObject);
var
 caminho : string;
 f: file of Byte;
 size: Real;
begin
    if (OpenDialog.Execute) then
    begin
      AssignFile(f, OpenDialog.FileName);
      Reset(f);
      size := fileSize('f');
      CloseFile(f);

      size := (size/1024);

      Caminho :=  ExtractFileName(OpenDialog.FileName);
      TBLANEXOS.Open;
      TBLANEXOS.Append;
      TBLANEXOSARQUIVO.value := caminho;
      TBLANEXOSTAMANHO.value := Size;
      TBLANEXOS.Post;
    end;
end;

procedure TFrmOrdens_Servicos_Email.cxButton3Click(Sender: TObject);
begin
  if (TBLANEXOSARQUIVO.AsString <> '') then
    begin
      if Application.Messagebox('Deseja realmente excluir o anexo?','Aviso',mb_yesno + mb_iconquestion) = id_no then
      exit;
    end
    else
    begin
     Application.Messagebox('Impossível excluir. Selecione um anexo válido','Aviso',mb_ok + mb_iconerror);
     exit;
    end;
    TBLANEXOS.Delete;
end;

function EnviaEmail(P:Pointer):LongInt;
var
 xAnexo,i : Integer;
begin
    with dmApp do
    begin
      if IdSMTP.Connected then
      begin

        if (DmServicos.SelTecnicoEMAIL.AsString = '') then
        begin
          Application.MessageBox('Defina um email para o técnico responsável ','Aviso',mb_iconerror + mb_ok);
          exit;
        end;

        if (dmCadastros2.SelClientesEMAIL.AsString = '') then
        begin
          Application.MessageBox('Defina um email para o cliente ','Aviso',mb_iconerror + mb_ok);
          exit;
        end;


       { if (dmCadastros2.SelClientes2EMAIL.AsString = '') then
        begin
          Application.MessageBox('Defina um email para o contato ','Aviso',mb_iconerror + mb_ok);
          exit;
        end;}


        IdMessage.Clear;
        with IdMessage do
        begin
          From.Address := FrmOrdens_Servicos_Email.TBLEMAILREMETENTE.value; //opcional
          //  From.Name := dmapp.NOME_USUARIO; //opcional
          Body.Clear;
          Body.Add(FrmOrdens_Servicos_Email.TBLEMAILMENSAGEM.Value);
          i := 0;
          FrmOrdens_Servicos_Email.tblContatos.first;
          while not FrmOrdens_Servicos_Email.tblContatos.Eof do
          begin
            Recipients.Add;
            Recipients.Items[i].Address := FrmOrdens_Servicos_Email.tblContatosEMAIL.AsString;
            Recipients.Items[i].Name := FrmOrdens_Servicos_Email.tblContatosNOME.AsString;
            FrmOrdens_Servicos_Email.tblContatos.next;
            i := i + 1;
          end;

          Subject := 'OS '+Completaesq(dmServicos.OrdemCODIGO.asString,'0',9)+': '+dmServicos.OrdemASSUNTO.asString;
          //Priority := mpHigh;
          ReceiptRecipient.Text := From.Text;
        end;
      end;

      FrmOrdens_Servicos_Email.TBLANEXOS.Open;
      FrmOrdens_Servicos_Email.TBLANEXOS.first;
      while not FrmOrdens_Servicos_Email.TBLANEXOS.eof do
      begin
        TIdAttachment.create(idmessage.MessageParts, TFileName(FrmOrdens_Servicos_Email.TBLANEXOSARQUIVO.value));
        FrmOrdens_Servicos_Email.TBLANEXOS.next;
      end;

      with dmServicos do
      begin
        OS_INTERVALO_EMAIL_INSERT.open;
        OS_INTERVALO_EMAIL_INSERT.Append;
        OS_INTERVALO_EMAIL_INSERTASSUNTO.value := FrmOrdens_Servicos_Email.TBLEMAILASSUNTO.value;
        OS_INTERVALO_EMAIL_INSERTDE.value := FrmOrdens_Servicos_Email.TBLEMAILREMETENTE.value;
        OS_INTERVALO_EMAIL_INSERTPARA.value := FrmOrdens_Servicos_Email.TBLEMAILCONTATOS.value;
        OS_INTERVALO_EMAIL_INSERTDATA.Value := Data_Servidor;
        OS_INTERVALO_EMAIL_INSERTSEQUENCIA.value := OS_INTERVALOSEQUENCIA.VALUE;
        OS_INTERVALO_EMAIL_INSERTCOD_INTERVALO.value := OS_INTERVALOCODIGO.VALUE;
      end;


      try
        Application.Messagebox('Atenção! Mensagem sendo enviada, não feche a aplicação até receber a confirmação ou não do envio.','Aviso',mb_ok + mb_iconinformation);
        IdSMTP.Send(IdMessage);
        dmServicos.OS_INTERVALO_EMAIL_INSERTENVIADO.value := '1';
      except
         On E:Exception Do
         begin
           Application.Messagebox(Pchar('Falha ao enviar a mensagem: '+ E.Message),'Aviso',mb_ok + mb_iconerror);
           dmServicos.OS_INTERVALO_EMAIL_INSERTENVIADO.value := '0';
           dmServicos.OS_INTERVALO_EMAIL_INSERT.POST;

           dmServicos.OS_INTERVALO_EMAIL.Close;
           dmServicos.OS_INTERVALO_EMAIL.Open;
           exit;
         end
      end;
    end;

   Application.Messagebox('Mensagem enviada com sucesso','Aviso',mb_ok + mb_iconinformation);
   dmServicos.OS_INTERVALO_EMAIL_INSERT.POST;  //
   dmServicos.OS_INTERVALO_EMAIL.Close;
   dmServicos.OS_INTERVALO_EMAIL.Open;
end;

procedure TFrmOrdens_Servicos_Email.ActEnviarExecute(Sender: TObject);
var
  hThreadID :THandle;
  ThreadID :DWord;
  a : integer;
begin
  a := 0;
  hThreadID := CreateThread(nil, 0, @EnviaEmail, nil, 0, ThreadID);
end;

procedure TFrmOrdens_Servicos_Email.cxButton4Click(Sender: TObject);
begin
  dmCadastros2.SelFiltraParceiro.Close;
  dmCadastros2.SelFiltraParceiro.Open;
  FrmFiltraParceiroEmail := TFrmFiltraParceiroEmail.Create(Self);
  FrmFiltraParceiroEmail.ShowModal;
  if FrmFiltraParceiroEmail.modalresult <> mrcancel then
  begin
    if (FrmFiltraParceiroEmail.cont > 1) then
    begin
      Application.MessageBox('Email de remetente só pode conter um registro. Verifique','Aviso',MB_OK + mb_iconerror);
      exit;
    end;
    
    TBLEMAILREMETENTE.Value := (FrmFiltraParceiroEmail.filtro);
  end
end;

procedure TFrmOrdens_Servicos_Email.ActCancelExecute(Sender: TObject);
begin
  //ActFechar.execute;;
end;

end.
