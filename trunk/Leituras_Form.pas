unit Leituras_Form;

interface     

uses
  Windows,  Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms,  Grids, DBGrids, IBQuery, RDprint, Mask,
   ppDB, ppDBPipe, ppBands, ppClass, ppVar, ppCtrls, ppPrnabl,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, ppStrtch, ppMemo,
  ppParameter, ppModule, raCodMod, ppRichTx,   DBCtrls,
  cxPropertiesStore, dxTLClms, dxSkinsCore, dxSkinsdxBarPainter,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmLeituras = class(TForm)
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
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    DataSource: TDataSource;
    actLookup: TAction;
    ActNextPage: TAction;
    ActPreviousPage: TAction;
    btnAlterar: TdxBarButton;
    DsItens: TDataSource;
    ActFecharLeitura: TAction;
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
    Panel8: TPanel;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label1: TcxLabel;
    Label6: TcxLabel;
    Label8: TcxLabel;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    GroupBox2: TGroupBox;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    GroupBox3: TGroupBox;
    dxDBCheckEdit20: TdxDBCheckEdit;
    dxDBCheckEdit1: TdxDBCheckEdit;
    btnGerar: TdxBarButton;
    ActLocalizar: TAction;
    stgFrmLeituras10: TcxPropertiesStore;
    pnlCampos: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    btnConfgCampos: TdxBarButton;
    ActConfCampo: TAction;
    dxDBMemo1: TdxDBMemo;
    dxDBEdit3: TdxDBEdit;
    Label7: TcxLabel;
    GRID: TdxDBGrid;
    GRIDCNPJ: TdxDBGridMaskColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDCOD_PRODUTO: TdxDBGridMaskColumn;
    GRIDNOME_PRODUTO: TdxDBGridMaskColumn;
    GRIDLEITURA: TdxDBGridMaskColumn;
    GRIDCOD_ITEM_CONTRATO: TdxDBGridMaskColumn;
    GRIDULTIMA_LEITURA: TdxDBGridMaskColumn;
    GRIDLEITURA_ATUAL: TdxDBGridMaskColumn;
    GRIDSALDO_LEITURA: TdxDBGridMaskColumn;
    GRIDSERIE: TdxDBGridMaskColumn;
    GRIDCONTRATO: TdxDBGridMaskColumn;
    GRIDCOD_CLIENTE: TdxDBGridMaskColumn;
    GRIDCIDADE: TdxDBGridMaskColumn;
    GRIDNOME_CLIENTE: TdxDBGridMaskColumn;
    GRIDLOGRADOURO: TdxDBGridMaskColumn;
    GRIDFONE: TdxDBGridMaskColumn;
    GRIDFAX: TdxDBGridMaskColumn;
    GRIDCELULAR: TdxDBGridMaskColumn;
    GRIDEMAIL: TdxDBGridMaskColumn;
    GRIDMODELO_EQUIPAMENTO: TdxDBGridMaskColumn;
    GRIDINFORMACOES_ITENS: TdxDBGridMemoColumn;
    GRIDBAIRRO: TdxDBGridMaskColumn;
    pnlLeitura: TPanel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    edtLeituraAtual: TDBEdit;
    edtUltLeitura: TDBEdit;
    dxDBEdit9: TdxDBEdit;
    Label13: TcxLabel;
    Label14: TcxLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    rptRel: TppReport;
    ppTitleBand6: TppTitleBand;
    ppShape5: TppShape;
    lblEmpresa: TppLabel;
    ppTituloRel: TppLabel;
    lblFiltro: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    ppDetailBand6: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppShape9: TppShape;
    ppSystemVariable3: TppSystemVariable;
    raCodeModule4: TraCodeModule;
    ppParameterList2: TppParameterList;
    dbRel: TppDBPipeline;
    ppDBPipeline1: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    ppField9: TppField;
    ppField10: TppField;
    ppField11: TppField;
    ppField12: TppField;
    ppField13: TppField;
    ppField14: TppField;
    ppField15: TppField;
    ppField16: TppField;
    ppField17: TppField;
    ppField18: TppField;
    ppField19: TppField;
    ppField20: TppField;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel5: TppLabel;
    ppDBText6: TppDBText;
    ppLabel6: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText10: TppDBText;
    ppLabel10: TppLabel;
    ppDBText11: TppDBText;
    ppLabel11: TppLabel;
    dxDBMemo2: TdxDBMemo;
    Label15: TcxLabel;
    Label16: TcxLabel;
    DBEdit9: TDBEdit;
    Label17: TcxLabel;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    ActExporta: TAction;
    SaveDialog: TSaveDialog;
    btnExportaExcel: TdxBarButton;
    GRIDDADOS_CONTRATO: TdxDBGridMaskColumn;
    GRIDCONTAGEM_LEITURA: TdxDBGridMaskColumn;
    GRIDTOTAL_LEITURA: TdxDBGridMaskColumn;
    GRIDMARCA: TdxDBGridMaskColumn;
    Label18: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    dxBarButton1: TdxBarButton;
    ActReabrir: TAction;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText12: TppDBText;
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
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActGeraVendaExecute(Sender: TObject);
    procedure ActLeituraExecute(Sender: TObject);
    procedure ActGerarItensExecute(Sender: TObject);
    procedure edtLeituraAtualKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActFecharLeituraExecute(Sender: TObject);
    procedure cmbContratoExit(Sender: TObject);
    procedure edtDataRefExit(Sender: TObject);
    procedure cmbContratoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure cmbContratoEnter(Sender: TObject);
    procedure edtDataRefEnter(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure GridHeaderMoved(Sender: TObject; Column: TdxTreeListColumn);
    procedure GridHideHeader(Sender: TObject; AColumn: TdxTreeListColumn);
    procedure GridShowHeader(Sender: TObject; AColumn: TdxTreeListColumn;
      BandIndex, RowIndex, ColIndex: Integer);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure ActConfCampoExecute(Sender: TObject);
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TLCustomizeStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure ActExportaExecute(Sender: TObject);
    procedure ActReabrirExecute(Sender: TObject);
  private
    { Private declarations }
    DragNode: TdxTreeListNode;
    Procedure Calcular_Itens;
  public
     procedure Synchronize;

  end;

var
  FrmLeituras: TFrmLeituras;
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
     Servicos_DM, Localizar_Contratos, Localizar_Contratos_Copias,
  Variants;

  {$R *.DFM}

procedure TFrmLeituras.Calcular_Itens;
begin
//
end;

procedure TFrmLeituras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmLeituras := Nil;
  FrmLocContratosCopias.free;
  FrmLocContratosCopias := nil;
end;

procedure TFrmLeituras.ActIncluirExecute(Sender: TObject);
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

procedure TFrmLeituras.ActExcluirExecute(Sender: TObject);
begin
  If Navigator.DataSource.State in dsEditModes Then
    Exit;
      try
      with dmCadastros2 do
      begin
        if LeituraFECHADA.value = 'S' then
        begin
          Application.MessageBox('Impossível excluir a leitura já se encontra fechada','Aviso', mb_iconerror + mb_ok);
          exit;
        end;

        if (Grid.Focused) then
        begin
          If Application.MessageBox('Tem certeza que deseja excluir este ITEM DA LEITURA?','Aviso',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES then
            LeituraItens.Delete;
        end
        else
        begin
          If Application.MessageBox('Tem certeza que deseja excluir esta LEITURA?','Aviso',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES then
           if  dmCadastros2.Exclui_Leitura(dmApp.cnpj, DMCadastros2.LeituraCODIGO.value) then
             close;

        end;

        DMApp.Transaction.CommitRetaining;
      end
  except
      On E:EDataBaseError Do
      begin
        Application.Messagebox(Pchar('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message),'Aviso',mb_iconerror+mb_ok);
        Exit;
      end
      else
      begin
        Application.Messagebox('Ocorreu um erro não identificado pelo sistema !','Aviso',mb_iconerror+mb_ok);
        Exit;
      end;
  end;
end;

procedure TFrmLeituras.ActPostExecute(Sender: TObject);
begin
   if dmCadastros2.LeituraFECHADA.value = 'S' then
   begin
      Application.MessageBox('Impossível alterar. Leitura já está fechada','Aviso', mb_iconerror + mb_ok);
      exit;
  end;

  if DataSource.Dataset.state in [dsedit,dsinsert] then
    DataSource.Dataset.Post;
end;

procedure TFrmLeituras.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes  Then
    DataSource.DataSet.Cancel
  Else
    BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmLeituras.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Datasource.AutoEdit := ActAlterar.Enabled;
  dmcadastros2.LeituraItens.Close;
  dmcadastros2.LeituraItens.Open;

  Grid.FullExpand;
end;

procedure TFrmLeituras.FormCreate(Sender: TObject);
begin
    If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmLeituras', True)) Then Exit;

    If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
    Else
      AtivaActions(Actions, DMUsuarios.Direito);

     FrmLocContratosCopias := TFrmLocContratosCopias.Create(Self);
    Synchronize;
end;

procedure TFrmLeituras.DataSourceStateChange(Sender: TObject);
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

procedure TFrmLeituras.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmLeituras.CmbTipoPessoaEnter(Sender: TObject);
begin
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmLeituras.btnFiltrarClick(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TFrmLeituras.ActAlterarExecute(Sender: TObject);
begin
  If Navigator.DataSource.State in dsEditModes Then
    Exit;
  Try
    if dmCadastros2.LeituraFECHADA.value = 'S' then
    begin
      Application.MessageBox('Impossível excluir a leitura já se encontra fechada','Aviso', mb_iconerror + mb_ok);
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

procedure TFrmLeituras.GridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If Key = 13 then
  begin
    if dmCadastros2.LeituraItensCODIGO.asInteger > 0 then
      ActLeitura.Execute;
  end
end;

procedure TFrmLeituras.ActGeraVendaExecute(Sender: TObject);
var
  numero : integer;
begin
  try
     //validando a geração de venda
     if (dmCadastros2.LeituraFECHADA.value = 'N') then
     begin
       Application.MessageBox(Pchar('Impossível gerar faturamento.'+#13+'Leitura não está fechada'),'Aviso',mb_iconerror + mb_ok);
       exit;
     end;

     //validando a geração de venda
     if (dmCadastros2.LeituraVENDA.asInteger > 0) then
     begin
       Application.MessageBox(Pchar('Impossível gerar faturamento.'+#13+'Leitura já possui faturamento vinculado'),'Aviso',mb_iconerror + mb_ok);
       exit;
     end;

     //-->> Caso esteja em modo de edição/inserção 'salva'
     if Datasource.DataSet.State in [ dsedit, dsinsert ] then
         Datasource.DataSet.Post;

     //-->> Verifica quantidade de itens na Ordem de Serviço
     if (dmcadastros2.LeituraItens.recordCount <= 0) then
     begin
       Application.MessageBox('Não existem produtos para faturamento','Aviso',mb_iconerror + mb_ok);
       Exit;
     end;

     Numero := DmCadastros2.Gerar_Venda_Leitura(DmApp.Cnpj,DmCadastros2.LeituraCodigo.Value);
     Application.MessageBox(Pchar('Faturamento gerado Nº: ' + inttostr(Numero)),'Aviso',mb_iconinformation + mb_ok);
     dmCadastros2.Leitura.Refresh;
     dmCadastros2.SelLeituras.Close;
     dmCadastros2.SelLeituras.Open;
  except
     Application.MessageBox('Erro ao gerar o faturamento','Aviso',mb_iconerror + mb_ok);
  end;
end;



procedure TFrmLeituras.ActLeituraExecute(Sender: TObject);
begin
  if dmCadastros2.LeituraFECHADA.Value = 'S' then
  begin
    Application.MessageBox('Impossível alterar dados. Leitura já fechada','Aviso',mb_ok+mb_iconerror);
    exit;
  end;

  pnlLeitura.Visible := not (pnlLeitura.Visible);
  if pnlLeitura.Visible then
  begin
    with DmCadastros2 do
    begin
      if LeituraItens.state in [dsbrowse] then
         LeituraItens.edit;
      edtLeituraAtual.setfocus;

    end;
  end;
end;

procedure TFrmLeituras.ActGerarItensExecute(Sender: TObject);
begin
  with dmCadastros2 do
   begin
     if Application.MessageBox('Deseja realmente gerar os itens?','Aviso', mb_iconinformation + mb_yesno) = id_no then
       exit;

     LeituraItens.FetchAll;
     if (LeituraItens.recordCount > 0) then
     begin
       Application.MessageBox('A leitura já possui itens gerados','Aviso', mb_iconerror + mb_ok);
       exit;
     end;

     if (LeituraDATA_REFERENCIA.value <= 0) then
     begin
       Application.MessageBox('Defina uma data de referência','Aviso', mb_iconerror + mb_ok);
       exit;
     end;

     try
       ActPost.execute;

       GerarItens.parambyname('CNPJ').value := dmApp.cnpj;
       GerarItens.parambyname('CONTRATO').value :=  LeituraCONTRATO.value;
       GerarItens.parambyname('LEITURA').value := LeituraCODIGO.value;
       GerarItens.parambyname('DATA_REFERENCIA').value := LeituraDATA_REFERENCIA.value;
       GerarItens.parambyname('TIPO').value := dmCadastros2.SelContratosLeituraTIPO.Value;
       GerarItens.ExecProc;
       DMApp.Transaction.commitRetaining;
     except
       on E:EDataBaseError do
       begin
         Application.Messagebox(Pchar('Ocorreu o seguinte erro : ' + #13 + #13 +E.Message),'Aviso',mb_ok + mb_iconerror);
         exit;
       end
       else
       begin
         Application.Messagebox('Erro ao tentar gerar os itens da leitura','Aviso',mb_ok + mb_iconerror);
         exit;
       end;
     end;

     LeituraItens.Close;
     LeituraItens.Open;
   end
end;

procedure TFrmLeituras.edtLeituraAtualKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  v1, v2 : string;
begin
  If Key = 13 then
  begin
    //Leitura atual inferior a ultima leitura usuário precisa ser informado
    with dmCadastros2 do
    begin
      if (StrToInt(trim(edtLeituraAtual.text)) < StrToInt(trim(edtUltLeitura.Text))) then
      begin
        v1 := trim(edtLeituraAtual.text);
        v2 := trim(edtUltLeitura.Text);
        if Application.MessageBox(Pchar('O Valor da LEITURA ATUAL ('+v1+') é inferior ao valor da ULTIMA LEITURA('+V2+'). Deseja confirmar o valor atual?'),'Aviso', mb_iconinformation + mb_yesno) = id_no then
          exit;
      end;

    end;

    pnlLeitura.Visible := False;
    if DsItens.DataSet.state in [dsedit] then
      DsItens.DataSet.post;

    DsItens.DataSet.Refresh;
    DataSource.DataSet.Refresh;

    Grid.setfocus;
    DsItens.DataSet.next;
    if (DsItens.DataSet.eof) then
     If Application.MessageBox('Deseja fechar a leitura?','Aviso',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
       ActFecharLeitura.execute;
  end;
end;

procedure TFrmLeituras.ActFecharLeituraExecute(Sender: TObject);
var
  existe : boolean;
begin
  Try
    {Verificando se leitura já esta fechada}
    if (dmCadastros2.LeituraFECHADA.value = 'S') then
    begin
      Application.MessageBox('Leitura já se encontra fechada','Aviso',MB_OK+MB_ICONERROR);
      exit;
    end;


    If Application.MessageBox('Deseja realmente fechar esta leitura?','Aviso',MB_YESNO+MB_ICONQUESTION)=IDNO then
      exit;

    {Verificando se leitura possui itens}
    if (dmCadastros2.LeituraItens.RecordCount <= 0) then
    begin
      Application.MessageBox('Impossível realizar o fechamento. Defina antes os itens da leitura','Aviso',MB_OK+MB_ICONERROR);
      exit;
    end;

    {Verificando se algum item não tenha recebido a leitura de cópias}
    with dmCadastros2 do
    begin
      LeituraItens.DisableControls;
      LeituraItens.first;
      existe := false;
      while not (LeituraItens.eof) do
      begin
        if (LeituraItensLEITURA_ATUAL.asInteger <= 0) then
        begin
          existe := true;
          break;
        end
        else
          existe := false;

        LeituraItens.next;
      end;
      LeituraItens.EnableControls;

      if (existe) then
      begin
        Application.MessageBox('Impossível realizar o fechamento. Existem itens que não possuem valores de leitura','Aviso',MB_OK+MB_ICONERROR);
        exit;
      end;


      {Realizando fechamento}
      if (Leitura.state <> dsEdit) then
         Leitura.Edit;

      LeituraFECHADA.value := 'S';
      Leitura.Post;

      SelLeituras.Close;
      SelLeituras.Open;
      Application.MessageBox('Fechamento realizado com sucesso','Aviso',MB_OK+MB_ICONINFORMATION);
      Close;
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

procedure TFrmLeituras.cmbContratoExit(Sender: TObject);
begin
  if (dmCadastros2.LeituraItens.RecordCount > 0) then
  begin
   { if (dmCadastros2.LeituraItensCONTRATO.asInteger <> dmCadastros2.LeituraCONTRATO.asInteger) then
    begin
      Application.MessageBox('Impossível alterar o contrato. A leitura já possuí itens inseridos','Aviso',MB_OK+MB_ICONERROR);
      cmbContrato.SetFocus;
    end }
  end;
  TIRACORFUNDO( SENDER );
end;

procedure TFrmLeituras.edtDataRefExit(Sender: TObject);
begin
  if (dmCadastros2.LeituraItens.RecordCount > 0) then
  begin
    if (dmCadastros2.LeituraDATA_REFERENCIA.value <> edtDataRef.Date) then
    begin
      Application.MessageBox('Impossível alterar a Dt. de Referência. A leitura já possuí itens inseridos','Aviso',MB_OK+MB_ICONERROR);
      edtDataRef.SetFocus;
    end
  end;
  TIRACORFUNDO( SENDER );
end;

procedure TFrmLeituras.cmbContratoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);

  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmLeituras.cmbContratoEnter(Sender: TObject);
begin
  CORFUNDO ( SENDER );
end;

procedure TFrmLeituras.edtDataRefEnter(Sender: TObject);
begin
  CORFUNDO (SENDER);
end;

procedure TFrmLeituras.ActLocalizarExecute(Sender: TObject);
var
  retorno : integer;
begin
  if not (DataSource.State in [ dsinsert, dsedit ]) then
    exit;

  FrmLocContratosCopias.showmodal;
  retorno := 0;
  if FrmLocContratosCopias.modalresult = mrOk then
    retorno := FrmLocContratosCopias.CampTrecho;

  if (retorno > 0) then
    dmCadastros2.LeituraCONTRATO.value := retorno;

  cmbContrato.SetFocus;
end;

procedure TFrmLeituras.Synchronize;
var
  I: Integer;
  Node: TdxTreeListNode;
begin
  TLCustomize.ClearNodes;
  for I := 0 to GRID.ColumnCount - 1 do
  begin
    Node := TLCustomize.Add;
    Node.Values[TLCustomizeColumn.Index] := GRID.Columns[I].Caption;
    if GRID.Columns[I].Visible then
      Node.Values[TLCustomizeIsVisible.Index] := TLCustomizeIsVisible.ValueChecked;
    Node.Data := GRID.Columns[I];
  end;

end;

procedure TFrmLeituras.GridHeaderMoved(Sender: TObject;
  Column: TdxTreeListColumn);
begin
    Synchronize;
end;

procedure TFrmLeituras.GridHideHeader(Sender: TObject;
  AColumn: TdxTreeListColumn);
begin
  Synchronize;
end;

procedure TFrmLeituras.GridShowHeader(Sender: TObject;
  AColumn: TdxTreeListColumn; BandIndex, RowIndex, ColIndex: Integer);
begin
  Synchronize;
end;

procedure TFrmLeituras.TLCustomizeIsVisibleToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmLeituras.ActConfCampoExecute(Sender: TObject);
begin
   pnlCampos.visible := (not pnlCampos.visible);
end;

procedure TFrmLeituras.TLCustomizeDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  column : TdxTreeListColumn;
begin
  DragNode.MoveTo(TLCustomize.FocusedNode, natlInsert);
  column := TdxTreeListColumn(DragNode.Data);
  if (TLCustomize.FocusedNode <> nil) then
    column.Index := TLCustomize.FocusedNode.AbsoluteIndex
  else column.Index := 0;
end;

procedure TFrmLeituras.TLCustomizeDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
 Accept := Source = Sender;
end;

procedure TFrmLeituras.TLCustomizeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrmLeituras.ActExportaExecute(Sender: TObject);
begin
 Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Leitura de Cópias.xls', Grid.SaveToXLS);
end;

procedure TFrmLeituras.Save(ADefaultExt, AFilter, AFileName: String;
  AMethod: TSaveMethod);
begin
  with SaveDialog do
  begin
    DefaultExt := ADefaultExt;
    Filter := AFilter;
    FileName :=  AFileName;
    if Execute then
      AMethod(FileName, true);
  end;
end;

procedure TFrmLeituras.ActReabrirExecute(Sender: TObject);
var
  existe : variant;
begin
  if dmCadastros2.LeituraFECHADA.Value = 'N' then
  begin
    Application.MessageBox('Impossível reabrir. Leitura já está aberta','Aviso',mb_ok+mb_iconerror);
    exit;
  end;

  if (dmCadastros2.LeituraVENDA.AsInteger > 0) then
  begin
     existe := RetornaValor('select count(*) from fat_vendas vd where vd.cnpj ='+QuotedStr(dmApp.cnpj)+ ' and vd.codigo ='+dmCadastros2.LeituraVENDA.AsString);
     if existe > 0 then
     begin
       Application.MessageBox('Impossível reabrir. Leitura possuí faturamento vinculado','Aviso',mb_ok+mb_iconerror);
       exit;
     end;
  end;

  with DmCadastros2 do
  begin
    try
      if Leitura.state in [dsbrowse] then
         Leitura.edit;

      LeituraFECHADA.value := 'N';
      LeituraGERA_FATURAMENTO.value := 'N';
      LeituraVENDA.Clear;
      Leitura.Post;
      Application.MessageBox('Leitura reaberta com sucesso','Aviso',mb_ok+mb_iconinformation);
    except
      On E:Exception Do
      begin
        Application.messagebox(Pchar('Erro ao tentar reabrir a Leitura:  '+E.Message),'Aviso',mb_iconerror + mb_ok);
        Exit;
      end;
    end;

  end;

end;

end.





