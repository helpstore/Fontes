 unit Cheque_Acerto_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids, dxmdaset, IBStoredProc, variants, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus,
  dxSkinsdxBarPainter, cxClasses, cxButtons, cxLabel;

type
  TChequeDefault = Class(TObject)
  public
    Banco :String;
    Conta :String;
    ContaDv :String;
    Agencia :String;
    AgenciaDv :String;
    Cheque :String;
    ChequeDv :String;
  end;
type
  TFrmCheque_Acerto = class(TForm)
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
    b2: TBevel;
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    ActLookup: TAction;
    Label8: TcxLabel;
    EdValor: TdxDBCalcEdit;
    EdData: TdxDBDateEdit;
    Label4: TcxLabel;
    Bevel2: TBevel;
    GRID: TDBGrid;
    ActPeriodo: TAction;
    Label5: TcxLabel;
    Label2: TcxLabel;
    EdVencimento: TdxDBDateEdit;
    Label7: TcxLabel;
    Label3: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    Label1: TcxLabel;
    DsBanco: TDataSource;
    Label6: TcxLabel;
    cmbBanco: TdxDBLookupEdit;
    btnBancos: TcxButton;
    EdConta: TdxDBEdit;
    edtCheque: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    Label9: TcxLabel;
    EdDesdobrado: TdxEdit;
    Label10: TcxLabel;
    EdAgencia: TdxDBEdit;
    edDigAgencia: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    EDNOME: TdxDBEdit;
    edtValorTotal: TdxEdit;
    mtbCheque: TdxMemData;
    mtbChequeAGENCIA: TStringField;
    mtbChequeBANCO: TStringField;
    mtbChequeCHEQUE: TStringField;
    mtbChequeCONTA: TStringField;
    mtbChequeEMISSAO: TDateTimeField;
    mtbChequeHISTORICO: TStringField;
    mtbChequePESSOA_FJ: TIntegerField;
    mtbChequePRE_DATE: TDateTimeField;
    mtbChequeVALOR: TFloatField;
    mtbChequeNOME: TStringField;
    mtbChequeDATA_CONCILIACAO: TDateTimeField;
    mtbChequeJUROS: TFloatField;
    mtbChequeMOEDA1: TFloatField;
    mtbChequeMOEDA2: TFloatField;
    mtbChequeTIPO: TStringField;
    mtbChequeDATA_ACERTO: TDateTimeField;
    mtbChequeDATA_CAIXA: TDateTimeField;
    mtbChequeUSUARIO: TIntegerField;
    mtbChequeDIGITO_AGENCIA: TStringField;
    mtbChequeDIGITO_CONTA: TStringField;
    mtbChequeDIGITO_CHEQUE: TStringField;
    mtbChequeORIGEM: TStringField;
    mtbChequeTURNO: TIntegerField;
    mtbChequeACERTO: TIntegerField;
    ChequeRec: TIBDataSet;
    ChequeRecCNPJ: TIBStringField;
    ChequeRecAGENCIA: TIBStringField;
    ChequeRecBANCO: TIBStringField;
    ChequeRecCHEQUE: TIBStringField;
    ChequeRecCONCILIADO: TIBStringField;
    ChequeRecCONTA: TIBStringField;
    ChequeRecEMISSAO: TDateTimeField;
    ChequeRecHISTORICO: TIBStringField;
    ChequeRecPESSOA_FJ: TIntegerField;
    ChequeRecPRE_DATE: TDateTimeField;
    ChequeRecVALOR: TFloatField;
    ChequeRecVENDA: TIntegerField;
    ChequeRecNOME: TIBStringField;
    ChequeRecDATA_CONCILIACAO: TDateTimeField;
    ChequeRecJUROS: TFloatField;
    ChequeRecMOEDA1: TFloatField;
    ChequeRecMOEDA2: TFloatField;
    ChequeRecTIPO: TIBStringField;
    ChequeRecDATA_ACERTO: TDateTimeField;
    ChequeRecDATA_CAIXA: TDateTimeField;
    ChequeRecUSUARIO: TIntegerField;
    ChequeRecDIGITO_AGENCIA: TIBStringField;
    ChequeRecDIGITO_CONTA: TIBStringField;
    ChequeRecDIGITO_CHEQUE: TIBStringField;
    ChequeRecORIGEM: TIBStringField;
    ChequeRecTURNO: TIntegerField;
    ChequeRecTROCA: TIntegerField;
    ChequePag: TIBDataSet;
    ChequePagCHEQUE: TIntegerField;
    ChequePagCNPJ: TIBStringField;
    ChequePagCONTA: TIntegerField;
    ChequePagCONTABILIDADE: TIBStringField;
    ChequePagDATA: TDateTimeField;
    ChequePagHISTORICO: TIBStringField;
    ChequePagIMPRESSO: TIBStringField;
    ChequePagNOME: TIBStringField;
    ChequePagORIGEM: TIBStringField;
    ChequePagPESSOA_FJ: TIntegerField;
    ChequePagPLANILHA: TIntegerField;
    ChequePagVALOR: TFloatField;
    ChequePagPRE_DATE: TDateTimeField;
    ChequePagNOMINAL: TIBStringField;
    ChequeRecCOD_ACERTOCONTA: TIntegerField;
    ChequePagCOD_ACERTOCONTA: TIntegerField;
    DsConta: TDataSource;
    mtbChequePLANO_CONTA: TIntegerField;
    cmbConta: TdxDBLookupEdit;
    Label11: TcxLabel;
    ChequeRecPLANILHA: TIntegerField;
    PcdChequesPagar: TIBStoredProc;
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
    procedure btnBancosClick(Sender: TObject);
    procedure ActLookupExecute(Sender: TObject);
    procedure edtChequeExit(Sender: TObject);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure dxDBEdit2Enter(Sender: TObject);
    procedure dxDBEdit2Exit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure mtbChequeAfterDelete(DataSet: TDataSet);
    procedure mtbChequeAfterPost(DataSet: TDataSet);
    procedure mtbChequeNewRecord(DataSet: TDataSet);
    procedure mtbChequeBeforePost(DataSet: TDataSet);
    procedure mtbChequePLANO_CONTAValidate(Sender: TField);
    procedure cmbContaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    Default :TChequeDefault;
    { Private declarations }
  public
    { Public declarations }
    Acumulado: Real ;
    Retorno: Integer;
    ValorDesdobrado: Real;
    Cheque : boolean;//variavel será true se o cheque for p/cobrir um um outro cheque
    TotalCheques : Real;
    Valor_cheque : Real;

  end;

var
  FrmCheque_Acerto: TFrmCheque_Acerto;
implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Bancos_Form,
     Vendas_Dm, Financeiro_Dm, Receber_Form, MensagemClassificacao_Form,
  Vendas_DM2, Financeiro_Dm2, Act_Baixa_Form, Act_Contas_Form;

{$R *.DFM}



procedure TFrmCheque_Acerto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IF EdtValorTotal.text <> edDesdobrado.Text then
  begin
    if (application.messagebox(Pchar('O Valor Desdobrado R$ ' + edDesdobrado.text +#13+ ' não Confere com o Valor Total R$ ' +edtValorTotal.text+'. Deseja cancelar as operações?'),'Aviso',mb_iconquestion + mb_yesno) = id_yes) then
    begin
      modalresult := mrCancel;
      exit;
    end;
  end;

    //se esta desdobrado corretamente gerar os cheques
    try
      if (frmAct_Contas.TotalPagar > frmAct_Contas.TotalReceber) then
      begin
        ChequePag.Close;
        ChequePag.Open;
        //Lancando cheques a pagar
        mtbCheque.first;
        while not mtbCheque.eof do
        begin
          ChequePag.append;
          ChequePagCNPJ.value := dmapp.cnpj;
          ChequePagCHEQUE.value := mtbChequeCHEQUE.AsInteger;
          ChequePagCONTA.value := mtbChequePLANO_CONTA.AsInteger;
          ChequePagDATA.value := mtbChequeEMISSAO.value;
          ChequePagHISTORICO.value := mtbChequeHISTORICO.value;
          ChequePagIMPRESSO.value := 'N';
          ChequePagNOME.Value := mtbChequeNOME.value;
          ChequePagORIGEM.Value := mtbChequeORIGEM.value;
          ChequePagPESSOA_FJ.Value := mtbChequePESSOA_FJ.value;
          ChequePagVALOR.Value := mtbChequeVALOR.value;
          ChequePagPRE_DATE.Value := mtbChequePRE_DATE.value;
          ChequePagCOD_ACERTOCONTA.Value := mtbChequeACERTO.value;
          ChequePag.Post;
          if (mtbChequePLANO_CONTA.AsInteger > 0) then
          begin
            PcdChequesPagar.ParamByName('CNPJ').value := dmApp.Cnpj;
            PcdChequesPagar.ParamByName('CODIGOPAGAR').value := 0;
            PcdChequesPagar.ParamByName('ANOPAGAR').value :=  0;
            PcdChequesPagar.ParamByName('VALOR').value := mtbChequeVALOR.value;
            PcdChequesPagar.ParamByName('DATA').AsDate := mtbChequePRE_DATE.value;
            PcdChequesPagar.ParamByName('DOCUMENTO').value :=  'CH: '+mtbChequeCHEQUE.AsString;
            PcdChequesPagar.ParamByName('HISTORICO').value := mtbChequeHISTORICO.value;
            PcdChequesPagar.ParamByName('CONTA').value := mtbChequePLANO_CONTA.AsInteger;
            PcdChequesPagar.ParamByName('PLANILHA').value := mtbChequeACERTO.value;
            PcdChequesPagar.ParamByName('FORNECEDOR').value := mtbChequePESSOA_FJ.value;
            PcdChequesPagar.ExecProc;
          end;

          mtbCheque.Next;
        end;
      end
      else//Lançando cheques a receber
      begin
        ChequeRec.Close;
        ChequeRec.Open;

        mtbCheque.first;
        while not mtbCheque.eof do
        begin
          ChequeRec.append;
          ChequeRecCNPJ.value := dmapp.cnpj;
          ChequeRecCHEQUE.value := mtbChequeCHEQUE.value;
          ChequeRecBANCO.value := mtbChequeBANCO.value;
          ChequeRecCONTA.value := mtbChequeCONTA.value;
          ChequeRecEMISSAO.value := mtbChequeEMISSAO.value;
          ChequeRecHISTORICO.value := mtbChequeHISTORICO.value;
          ChequeRecNOME.Value := mtbChequeNOME.value;
          ChequeRecORIGEM.Value := mtbChequeORIGEM.value;
          ChequeRecPESSOA_FJ.Value := mtbChequePESSOA_FJ.value;
          ChequeRecVALOR.Value := mtbChequeVALOR.value;
          ChequeRecPRE_DATE.Value := mtbChequePRE_DATE.value;
          ChequeRecDATA_CAIXA.Value := mtbChequeDATA_CAIXA.value;
          ChequeRecUSUARIO.Value := mtbChequeUSUARIO.value;
          ChequeRecCOD_ACERTOCONTA.Value := mtbChequeACERTO.value;
          ChequeRecCONCILIADO.Value := 'N';
          ChequeRec.Post;

          mtbCheque.next;
        end;
      end;
    except
       On E:EDataBaseError Do
           Begin
              Application.MessageBox(Pchar('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message),'Aviso', MB_OK + MB_ICONERROR);
              modalresult := mrCancel;
              abort;
              exit;
           End
           Else
           Begin
              Application.MessageBox('Ocorreu um Erro não identificado pelo Sistema !','Aviso', MB_OK + MB_ICONERROR);
              modalresult := mrCancel;
              abort;
              exit;
           End;
    end;
  modalresult := mrOK;
  FreeAndNil(Default);
  Action := caFree;
end;

procedure TFrmCheque_Acerto.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    if DataSource.DataSet.state in [dsInactive] then
      DataSource.DataSet.open;

    DataSource.DataSet.Append;
    mtbChequeACERTO.value := dmFinanceiro2.ACT_GERA_ACERTOCODIGO.VALUE;
    mtbChequePESSOA_FJ.value := dmFinanceiro2.ACT_GERA_ACERTOPESSOA_RECIBO.VALUE;
    mtbChequeNOME.value := FrmAct_Baixa.CmbPessoa.text;

    if Default <> nil then
    begin
      mtbChequeBANCO.Value := Default.Banco;
      mtbChequeAGENCIA.Value := Default.Agencia;
      mtbChequeDIGITO_AGENCIA.Value := Default.AgenciaDv;
      mtbChequeCONTA.Value := Default.Conta;
      mtbChequeDIGITO_CONTA.Value := Default.ContaDv;
      mtbChequeCHEQUE.Value := Default.Cheque;
      mtbChequeDIGITO_CHEQUE.Value := Default.ChequeDv;
    end;

    if mtbChequePessoa_fj.value = 1 then
    begin
      Ednome.enabled := true ;
      Ednome.setfocus ;
    end
    else if (cmbBanco.enabled) then
      cmbBanco.setfocus
    else if (cmbConta.enabled) then
      cmbConta.setfocus
    else
      edtCheque.setfocus;
      
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

procedure TFrmCheque_Acerto.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Cheque ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmCheque_Acerto.ActPostExecute(Sender: TObject);
begin
  Try
    DataSource.DataSet.Post;

    Ednome.enabled := false ;

    if Default = nil then
    begin
      Default := TChequeDefault.Create;
      Default.Banco := mtbChequeBANCO.Value;
      Default.Agencia := mtbChequeAGENCIA.Value;
      Default.AgenciaDv := mtbChequeDIGITO_AGENCIA.Value;
      Default.Conta := mtbChequeCONTA.Value;
      Default.ContaDv := mtbChequeDIGITO_CONTA.Value;
      Default.Cheque := inttostr(strtoint(mtbChequeCHEQUE.Value) + 1);
      Default.ChequeDv := mtbChequeDIGITO_CHEQUE.Value;
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

procedure TFrmCheque_Acerto.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes
  Then begin
     DataSource.DataSet.Cancel ;
     Ednome.enabled := false ;
  end
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmCheque_Acerto.FormCreate(Sender: TObject);
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

procedure TFrmCheque_Acerto.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmCheque_Acerto.edtChequeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmCheque_Acerto.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmCheque_Acerto.DataSourceStateChange(Sender: TObject);
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

procedure TFrmCheque_Acerto.ActFecharExecute(Sender: TObject);
begin
  If FrmCheque_Acerto.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmCheque_Acerto.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Acumulado := 0;

  if (TotalCheques < 0) then
  begin
    cmbBanco.enabled := false;
    edConta.enabled := false;
    EdAgencia.enabled := false;
    edDigAgencia.enabled := false;
    TotalCheques := (TotalCheques * -1);
    cmbConta.enabled := true;
  end
  else
  begin
    cmbBanco.enabled := true;
    edConta.enabled := true;
    EdAgencia.enabled := true;
    edDigAgencia.enabled := true;
    cmbConta.enabled := false;
  end;
    
  edtValorTotal.Text := formatfloat('###,##0.00',TotalCheques);

  Try
   DsBanco.DataSet.Close;
   DsBanco.DataSet.Open;

   DsConta.DataSet.Close;
   DsConta.DataSet.Open;

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

  if (cmbBanco.enabled) then
    cmbBanco.setfocus
  else if (cmbConta.enabled) then
    cmbConta.setfocus
  else
    edtCheque.setfocus;
end;

procedure TFrmCheque_Acerto.btnBancosClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmBancos', False);

  DsBanco.DataSet.Tag := DsBanco.DataSet.Tag + 1;

  FrmBancos := TFrmBancos.Create(Self);
  FrmBancos.ShowModal;

  Datasource.DataSet.FieldByName('BANCO').asString := FrmMain.Codigo_Str;
  FrmBancos.Free;
  FrmBancos := Nil;

  DsBanco.DataSet.Tag := DsBanco.DataSet.Tag - 1;

  cmbBanco.SetFocus;
end;

procedure TFrmCheque_Acerto.ActLookupExecute(Sender: TObject);
begin
  If FrmCheque_Acerto.ActiveControl = cmbBanco Then
    btnBancos.OnClick(btnBancos);
end;

procedure TFrmCheque_Acerto.edtChequeExit(Sender: TObject);
begin
  TIRACORFUNDO ( SENDER );
  IF DATASOURCE.STATE IN [ DSINSERT, DSEDIT ] then
  begin
    WHILE LENGTH (mtbChequeCHEQUE.VALUE ) < 6 DO
    BEGIN
      mtbChequeCHEQUE.VALUE := '0' + mtbChequeCHEQUE.VALUE ;
    END;
  END;
end;

procedure TFrmCheque_Acerto.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
   IF (( KEY = #13 ) and ( Not DataSource.DataSet.FieldByname ('BANCO').Isnull )) then
   begin
     DataSource.DATASET.EDIT ;
     if (cmbBanco.enabled) then
       cmbBanco.setfocus
     else
       edtCheque.setfocus;
   END;
end;

procedure TFrmCheque_Acerto.dxDBEdit2Enter(Sender: TObject);
begin
  CORFUNDO ( SENDER );
end;

procedure TFrmCheque_Acerto.dxDBEdit2Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmCheque_Acerto.FormDestroy(Sender: TObject);
begin
  FrmCheque_Acerto := nil;
end;

procedure TFrmCheque_Acerto.mtbChequeAfterDelete(DataSet: TDataSet);
var
  aux : real;
begin
  Aux := 0;

  mtbCheque.DisableControls ;
  mtbCheque.First ;
  While Not mtbCheque.Eof do
  begin
    Aux := Aux + mtbChequevalor.value ;
    mtbCheque.Next;
  end;

  mtbCheque.EnableControls ;
  EdDesdobrado.text := FormatFloat ('###,###,##0.00', Aux);
  Acumulado := Aux ;
end;

procedure TFrmCheque_Acerto.mtbChequeAfterPost(DataSet: TDataSet);
var
 Aux: Real;
begin
  Aux := 0;
  mtbCheque.DisableControls ;
  mtbCheque.First ;

  While Not mtbCheque.Eof do
  begin
    Aux := Aux + mtbChequeValor.value ;
    mtbCheque.Next;
  end;

  mtbCheque.EnableControls ;
  EdDesdobrado.text := FormatFloat ('###,###,##0.00', Aux);
  Acumulado := Aux ;
end;

procedure TFrmCheque_Acerto.mtbChequeNewRecord(DataSet: TDataSet);
begin
  mtbChequeACERTO.value := dmFinanceiro2.ACT_GERA_ACERTOCODIGO.VALUE;
  mtbChequePESSOA_FJ.value := dmFinanceiro2.ACT_GERA_ACERTOPESSOA_RECIBO.VALUE;
  mtbChequeNOME.value := FrmAct_Baixa.CmbPessoa.text;
  mtbChequeVALOR.Value     := Arredonda( TotalCheques - Acumulado,2);
  mtbChequeEMISSAO.Value   := DmApp.DataCaixa             ;
  mtbChequeTIPO.Value      := 'NO'                        ;
  mtbChequeDATA_CAIXA.Value:= DmApp.DataCaixa             ;
  mtbChequeUSUARIO.Value   := DmApp.UsuarioCaixa          ;
  mtbChequeHISTORICO.Value := frmAct_Contas.Historico;
end;

procedure TFrmCheque_Acerto.mtbChequeBeforePost(DataSet: TDataSet);
begin
  if (cmbConta.enabled) then
  begin
    if (mtbChequePLANO_CONTA.AsInteger <= 0) then
    begin
      Application.MessageBox('Defina a conta em que o cheque será vinculado','Aviso',mb_ok+mb_iconerror);
      cmbConta.setfocus;
      abort;
      exit;
    end;
  end;

  if (cmbBanco.enabled) then
  begin
    if (mtbChequeBANCO.value = '') then
    begin
      Application.MessageBox('Defina o banco em que o cheque será vinculado','Aviso',mb_ok+mb_iconerror);
      cmbBanco.setfocus;
      abort;
      exit;
    end;
  end;

  if (edConta.enabled) then
  begin
    if (mtbChequeCONTA.value = '') then
    begin
      Application.MessageBox('Defina a conta em que o cheque será vinculado','Aviso',mb_ok+mb_iconerror);
      edconta.setfocus;
      abort;
      exit;
    end;
  end;

  if (EdAgencia.enabled) then
  begin
    if (mtbChequeAGENCIA.value = '') then
    begin
      Application.MessageBox('Defina a agência da conta em que o cheque será vinculado','Aviso',mb_ok+mb_iconerror);
      EdAgencia.setfocus;
      abort;
      exit;
    end;
  end;
end;

procedure TFrmCheque_Acerto.mtbChequePLANO_CONTAValidate(Sender: TField);
var
  UltCheque : variant;
begin
 UltCheque := RetornaValor('select ultimo_cheque from ctb_planoconta p where p.cnpj ='+
                            QuotedStr(DMApp.cnpj)+' and p.conta ='+IntToStr(Sender.Value),dmapp.TransactionAux);

 if not(VarIsNull(UltCheque)) then
   mtbChequeCHEQUE.value := UltCheque + 1;

end;

procedure TFrmCheque_Acerto.cmbContaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

end.
