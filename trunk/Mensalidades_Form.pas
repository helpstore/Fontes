 unit Mensalidades_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms,  Grids, DBGrids, IBQuery, RDprint, Mask,
   ppDB, ppDBPipe, ppBands, ppClass, ppVar, ppCtrls, ppPrnabl,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, ppStrtch, ppMemo,
  ppParameter, ppModule, raCodMod, ppRichTx,   DBCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, cxClasses, cxLabel;

type
  TfrmMensalidade = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    Bevel1: TBevel;
    ActOrcamento: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    DataSource: TDataSource;
    actLookup: TAction;
    ActNextPage: TAction;
    ActPreviousPage: TAction;
    btnAlterar: TdxBarButton;
    DsItens: TDataSource;
    ActFecharMensalidade: TAction;
    dsSelContratoLeitura: TDataSource;
    Panel2: TPanel;
    LblTitulo: TcxLabel;
    ActGeraVenda: TAction;
    ActGerarItens: TAction;
    ActLeitura: TAction;
    btnGerarVenda: TdxBarButton;
    btnFecharLeitura: TdxBarButton;
    Panel6: TPanel;
    Label2: TcxLabel;
    Label11: TcxLabel;
    Label12: TcxLabel;
    cmbContrato: TdxDBLookupEdit;
    dxDBEdit8: TdxDBEdit;
    edtDataRef: TdxDBDateEdit;
    GridItens: TdxDBGrid;
    Panel8: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label1: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    btnGerar: TdxBarButton;
    ActLocalizar: TAction;
    GridItensCNPJ: TdxDBGridMaskColumn;
    GridItensCODIGO: TdxDBGridMaskColumn;
    GridItensCOD_MENSALIDADE: TdxDBGridMaskColumn;
    GridItensCOD_ITEM_CONTRATO: TdxDBGridMaskColumn;
    GridItensCONTRATO: TdxDBGridMaskColumn;
    GridItensCOD_PRODUTO: TdxDBGridMaskColumn;
    GridItensSERIE: TdxDBGridMaskColumn;
    GridItensNOME_PRODUTO: TdxDBGridMaskColumn;
    GridItensVALOR: TdxDBGridCurrencyColumn;
    GroupBox3: TGroupBox;
    dxDBCheckEdit20: TdxDBCheckEdit;
    dxDBCheckEdit1: TdxDBCheckEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure CmbTipoPessoaEnter(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActGeraVendaExecute(Sender: TObject);
    procedure ActGerarItensExecute(Sender: TObject);
    procedure ActFecharMensalidadeExecute(Sender: TObject);
    procedure cmbContratoExit(Sender: TObject);
    procedure edtDataRefExit(Sender: TObject);
    procedure cmbContratoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmbContratoEnter(Sender: TObject);
    procedure edtDataRefEnter(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
  private
    { Private declarations }
    Procedure Calcular_Itens;
  public

  end;

var
  frmMensalidade: TfrmMensalidade;
  Sair: Boolean ;

implementation

uses
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Cadastros_DM,
     Cadastros_DM2,
     Servicos_DM, Localizar_Contratos;

  {$R *.DFM}

procedure TfrmMensalidade.Calcular_Itens;
begin
//
end;

procedure TfrmMensalidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frmMensalidade := Nil;
  FrmLocContratos.free;
  FrmLocContratos := nil;
end;

procedure TfrmMensalidade.ActIncluirExecute(Sender: TObject);
begin
  try
     //
     If Navigator.DataSource.State in dsEditModes Then
        Exit;

     Navigator.DataSource.DataSet.Append;
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

procedure TfrmMensalidade.ActExcluirExecute(Sender: TObject);
begin
  If Navigator.DataSource.State in dsEditModes Then
    Exit;

  try
      with dmCadastros2 do
      begin
        if MensalidadeFECHADA.value = 'S' then
        begin
          Application.MessageBox('Impossível excluir. A mensalidade já se encontra fechada','Aviso', mb_iconerror + mb_ok);
          exit;
        end;

        if (GridItens.Focused) then
        begin
          If Application.MessageBox('Tem certeza que deseja excluir este ITEM DA MENSALIDADE?','Aviso',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES then
            MensalidadeItens.Delete;
        end
        else
        begin
          If Application.MessageBox('Tem certeza que deseja excluir esta MENSALIDADE?','Aviso',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES then
            dmCadastros2.Exclui_Mensalidade(dmApp.cnpj, DMCadastros2.MensalidadeCODIGO.value);
        end;

        DMApp.Transaction.CommitRetaining;
      end
  except
      On E:Exception Do
      begin
        Application.Messagebox(Pchar('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message),'Aviso',mb_iconerror+mb_ok);
        Exit;
      end;
  end;
end;

procedure TfrmMensalidade.ActPostExecute(Sender: TObject);
begin
  if DataSource.Dataset.state in [dsedit,dsinsert] then
    DataSource.Dataset.Post;
end;

procedure TfrmMensalidade.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes  Then
    DataSource.DataSet.Cancel
  Else
    BtnFechar.OnClick(BtnFechar);
end;

procedure TfrmMensalidade.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Datasource.AutoEdit := ActAlterar.Enabled;
  dmcadastros2.MensalidadeItens.Close;
  dmcadastros2.MensalidadeItens.Open;
end;

procedure TfrmMensalidade.FormCreate(Sender: TObject);
begin
    If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmMensalidade', True)) Then Exit;

    If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
    Else
      AtivaActions(Actions, DMUsuarios.Direito);

    FrmLocContratos := TFrmLocContratos.Create(Self);
end;

procedure TfrmMensalidade.DataSourceStateChange(Sender: TObject);
begin
  dxBarBDBNavFirst.Enabled := true ;
  dxBarBDBNavPrev.Enabled  := true ;
  dxBarBDBNavNext.Enabled  := true ;
  dxBarBDBNavLast.Enabled  := true ;

  //
  If Navigator.DataSource.State in dsEditModes Then
  Begin
    ActIncluir.Enabled   := False;
    ActAlterar.Enabled   := False;
    ActExcluir.Enabled   := False;


    BtnSalvar.Enabled    := True;
    BtnCancelar.Enabled  := True;
  End
  Else
  Begin
    ActIncluir.Enabled   := ActIncluir.Tag = 1;
    ActAlterar.Enabled   := ActAlterar.Tag = 1;
    ActExcluir.Enabled   := ActExcluir.Tag = 1;

    BtnSalvar.Enabled    := False;
    BtnCancelar.Enabled  := False;
    ActFechar.Enabled    := True;
  end;


end;

procedure TfrmMensalidade.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmMensalidade.CmbTipoPessoaEnter(Sender: TObject);
begin
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TfrmMensalidade.btnFiltrarClick(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TfrmMensalidade.ActAlterarExecute(Sender: TObject);
begin
  If Navigator.DataSource.State in dsEditModes Then
    Exit;
  Try
    if dmCadastros2.MensalidadeFECHADA.value = 'S' then
    begin
      Application.MessageBox('Impossível editar. Registro já se encontra fechado','Aviso', mb_iconerror + mb_ok);
      exit;
    end;

    DataSource.DataSet.Edit;

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

procedure TfrmMensalidade.ActGeraVendaExecute(Sender: TObject);
var
  numero : integer;
begin
  try
     //validando a geração de venda
     if (dmCadastros2.MensalidadeVALOR_MENSALIDADE.asFloat <= 0) then
     begin
       Application.MessageBox(Pchar('Impossível gerar faturamento.'+#13+'Mensalidade não tem valor deninido'),'Aviso',mb_iconerror + mb_ok);
       exit;
     end;

     //validando a geração de venda
     if (dmCadastros2.MensalidadeFECHADA.value = 'N') then
     begin
       Application.MessageBox(Pchar('Impossível gerar faturamento.'+#13+'Mensalidade não está fechada'),'Aviso',mb_iconerror + mb_ok);
       exit;
     end;

     //validando a geração de venda
     if (dmCadastros2.MensalidadeFaturamento.asInteger > 0) then
     begin
       Application.MessageBox(Pchar('Impossível gerar faturamento.'+#13+'Mensalidade já possui faturamento vinculado'),'Aviso',mb_iconerror + mb_ok);
       exit;
     end;

     //-->> Caso esteja em modo de edição/inserção 'salva'
     if Datasource.DataSet.State in [ dsedit, dsinsert ] then
         Datasource.DataSet.Post;

     //-->> Verifica quantidade de itens na Ordem de Serviço
     if (dmcadastros2.MensalidadeItens.recordCount <= 0) then
     begin
       Application.MessageBox('Não existem produtos para faturamento','Aviso',mb_iconerror + mb_ok);
       Exit;
     end;

     Numero := DmCadastros2.Gerar_Venda_Mensalidade(DmApp.Cnpj,DmCadastros2.MensalidadeCodigo.Value,(Date+30));
     Application.MessageBox(Pchar('Faturamento gerado Nº: ' + inttostr(Numero)),'Aviso',mb_iconinformation + mb_ok);
     dmCadastros2.Mensalidade.Refresh;
     dmCadastros2.SelMensalidades.Close;
     dmCadastros2.SelMensalidades.Open;
  except
     Application.MessageBox('Erro ao gerar o faturamento','Aviso',mb_iconerror + mb_ok);
  end;
end;



procedure TfrmMensalidade.ActGerarItensExecute(Sender: TObject);
begin
  with dmCadastros2 do
   begin
     if Application.MessageBox('Deseja realmente gerar os itens?','Aviso', mb_iconinformation + mb_yesno) = id_no then
       exit;

     MensalidadeItens.FetchAll;
     if (MensalidadeItens.recordCount > 0) then
     begin
       Application.MessageBox('A mensalidade já possui itens gerados','Aviso', mb_iconerror + mb_ok);
       exit;
     end;

     if (MensalidadeDATA_REFERENCIA.value <= 0) then
     begin
       Application.MessageBox('Defina uma data de referência','Aviso', mb_iconerror + mb_ok);
       exit;
     end;

     try
       ActPost.execute;

       GerarItenMen.parambyname('CNPJ').value := dmApp.cnpj;
       GerarItenMen.parambyname('CONTRATO').value :=  MensalidadeCONTRATO.value;
       GerarItenMen.parambyname('COD_MENSALIDADE').value := MensalidadeCODIGO.value;
       GerarItenMen.parambyname('DATA_REFERENCIA').value := MensalidadeDATA_REFERENCIA.value;
       GerarItenMen.ExecProc;
       DMApp.Transaction.commitRetaining;
     except
       on E:Exception do
       begin
         Application.Messagebox(Pchar('Ocorreu o seguinte erro : ' + #13 + #13 +E.Message),'Aviso',mb_ok + mb_iconerror);
         exit;
       end;
     end;

     MensalidadeItens.Close;
     MensalidadeItens.Open;
   end
end;

procedure TfrmMensalidade.ActFecharMensalidadeExecute(Sender: TObject);
var
  existe : boolean;
begin
  Try
    {Verificando se já esta fechada}
    if (dmCadastros2.MensalidadeFECHADA.value = 'S') then
    begin
      Application.MessageBox('Mensalidade já se encontra fechada','Aviso',MB_OK+MB_ICONERROR);
      exit;
    end;


    If Application.MessageBox('Deseja realmente fechar esta mensalidade?','Aviso',MB_YESNO+MB_ICONQUESTION)=IDNO then
      exit;

    {Verificando se  possui itens}
    if (dmCadastros2.MensalidadeItens.RecordCount <= 0) then
    begin
      Application.MessageBox('Impossível realizar o fechamento. Defina antes os itens da mensalidade','Aviso',MB_OK+MB_ICONERROR);
      exit;
    end;


      {Realizando fechamento}
    with dmCadastros2 do
    begin
      if (Mensalidade.state <> dsEdit) then
         Mensalidade.Edit;

      MensalidadeFECHADA.value := 'S';
      Mensalidade.Post;
      SelMensalidades.Close;
      SelMensalidades.Open;

    end ;
      Application.MessageBox('Fechamento realizado com sucesso','Aviso',MB_OK+MB_ICONINFORMATION);
  Except
    On E:Exception Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         Exit;
       End
  end;
end;

procedure TfrmMensalidade.cmbContratoExit(Sender: TObject);
begin
  if (dmCadastros2.MensalidadeItens.RecordCount > 0) then
  begin
    if (dmCadastros2.MensalidadeItensCONTRATO.asInteger <> dmCadastros2.MensalidadeCONTRATO.asInteger) then
    begin
      Application.MessageBox('Impossível alterar o contrato. O registro já possuí itens inseridos','Aviso',MB_OK+MB_ICONERROR);
      cmbContrato.SetFocus;
    end
  end;
  TIRACORFUNDO( SENDER );
end;

procedure TfrmMensalidade.edtDataRefExit(Sender: TObject);
begin
  if (dmCadastros2.MensalidadeItens.RecordCount > 0) then
  begin
    if (dmCadastros2.MensalidadeDATA_REFERENCIA.value <> edtDataRef.Date) then
    begin
      Application.MessageBox('Impossível alterar a Dt. de Referência. O registro já possuí itens inseridos','Aviso',MB_OK+MB_ICONERROR);
      edtDataRef.SetFocus;
    end
  end;
  TIRACORFUNDO( SENDER );
end;

procedure TfrmMensalidade.cmbContratoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);

  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmMensalidade.cmbContratoEnter(Sender: TObject);
begin
  CORFUNDO ( SENDER );
end;

procedure TfrmMensalidade.edtDataRefEnter(Sender: TObject);
begin
  CORFUNDO (SENDER);
end;

procedure TfrmMensalidade.ActLocalizarExecute(Sender: TObject);
var
  retorno : integer;
begin
  if not (DataSource.State in [ dsinsert, dsedit ]) then
    exit;

  FrmLocContratos.showmodal;
  retorno := 0;
  if FrmLocContratos.modalresult = mrOk then
    retorno := FrmLocContratos.CampTrecho;

  if (retorno > 0) then
    dmCadastros2.MensalidadeCONTRATO.value := retorno;

  cmbContrato.SetFocus;
end;

end.





