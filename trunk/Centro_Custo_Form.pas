 unit Centro_Custo_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, StdCtrls, Db, Menus, ImgList, dxBarDBNav, dxBar,
  dxTL, dxDBCtrl, dxCntner, dxDBTL, dxExEdtr, dxEdLib, dxDBELib,  IBCustomDataSet,
  dxPSCore,  variants,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxSkinsCore,
  dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, dxSkinscxPCPainter,
  dxBarSkinnedCustForm, dxSkinsdxRibbonPainter, cxClasses, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxLabel;

type
  TFrmCCusto = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
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
    LblRegistros: TcxLabel;
    ActAtualizar: TAction;
    BTNAlterar: TdxBarButton;
    Panel2: TPanel;
    dxBarButton2: TdxBarButton;
    ActInsereFilho: TAction;
    DBTreeList: TdxDBTreeList;
    DBTreeListCNPJ: TdxDBTreeListMaskColumn;
    DBTreeListCODIGO: TdxDBTreeListMaskColumn;
    DBTreeListNOME: TdxDBTreeListMaskColumn;
    DBTreeListAGRUPADOR: TdxDBTreeListMaskColumn;
    DBTreeListTIPO_CENTRO: TdxDBTreeListMaskColumn;
    DBTreeListEXCLUI_DEMOSTRATIVO_FINANCEIRO: TdxDBTreeListMaskColumn;
    ImageList: TImageList;
    PopupMenu: TPopupMenu;
    ActIncluir1: TMenuItem;
    ActInsereFilho1: TMenuItem;
    ActExpandir: TAction;
    ActContrair: TAction;
    ActExcluir1: TMenuItem;
    ExpandirTodos1: TMenuItem;
    ContrairTodos1: TMenuItem;
    ImageList1: TImageList;
    Panel3: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    GroupBox1: TGroupBox;
    ckRelatorio: TdxDBCheckEdit;
    GroupBox2: TGroupBox;
    ckGrade: TCheckBox;
    ckCMV: TdxDBCheckEdit;
    dxComponentPrinter1: TdxComponentPrinter;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActListagemExecute(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure EdInicialEnter(Sender: TObject);
    procedure EdInicialExit(Sender: TObject);
    procedure CmbTipoEnter(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActInsereFilhoExecute(Sender: TObject);
    procedure ActExpandirExecute(Sender: TObject);
    procedure ActContrairExecute(Sender: TObject);
    procedure DBTreeList2GetStateIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure ckGradeClick(Sender: TObject);
    procedure DBTreeListKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
     FParentValue: Variant;
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmCCusto: TFrmCCusto;

implementation

uses Cadastros_DM, Listagens_DM, Application_DM, Main, Usuarios_DM, Funcoes,  Localizar_Generico;

{$R *.DFM}

procedure TFrmCCusto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  //
  FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;
  //
  If Datasource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;
  If FrmCCusto.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;
  //
  Action := caFree;
  FrmCCusto := Nil;
end;

procedure TFrmCCusto.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    if DMCadastros.Centro_CustoAGRUPADOR.IsNull then
      FParentValue := Null
    else
      FParentValue := DMCadastros.Centro_CustoAGRUPADOR.value;

    DataSource.DataSet.insert;
    if not VarIsNull(FParentValue) then
      DMCadastros.Centro_CustoAGRUPADOR.value := FParentValue ;
  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !', MtError,[MbOk],0);
         Exit;
       End;
  End;
  //EdInicial.SetFocus;
  DBTreeList.ShowEditor;
end;

procedure TFrmCCusto.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Centro de Custos ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmCCusto.ActPostExecute(Sender: TObject);
begin
  Try
    If not (DataSource.State in dsEditModes) Then
       Exit;

    DataSource.DataSet.Post;
    DataSource.DataSet.Refresh;
    DMApp.Transaction.CommitRetaining;
  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ', MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !', MtError,[MbOk],0);
         Exit;
       End;
  End;
end;

procedure TFrmCCusto.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmCCusto.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
    If Not(DataSource.DataSet.Active) Then
       Datasource.DataSet.Open;

    (Datasource.DataSet as TIBDataset).FetchAll;

  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ', MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !', MtError,[MbOk],0);
         Exit;
       End;
  End;
  //
//  Datasource.AutoEdit := ActAlterar.Enabled;
//  EdInicial.SetFocus;
end;

procedure TFrmCCusto.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmCCusto.ActListagemExecute(Sender: TObject);
begin
 {dxComponentPrinter1Link1.PrinterPage.PageHeader.LeftTitle.Text := dmApp.nome+' - Centros de Custo';
 dxComponentPrinter1.Preview(True,nil);    }
end;

procedure TFrmCCusto.ActLocalizarExecute(Sender: TObject);
begin
  try
        Application.CreateForm(TFrm_Localizar_Generico, Frm_Localizar_Generico);

        Frm_Localizar_Generico.DSource.dataset := DataSource.dataset ;

        Frm_Localizar_Generico.LblTitulo.Caption := 'Localizar Bancos' ;

        Frm_Localizar_Generico.showmodal ;

        Frm_Localizar_Generico.free   ;

        Frm_Localizar_Generico := Nil ;
  Except
  end;
end;

procedure TFrmCCusto.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmCCusto.DataSourceStateChange(Sender: TObject);
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

procedure TFrmCCusto.ActFecharExecute(Sender: TObject);
begin
  If FrmCCusto.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmCCusto.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount);
  //Somente os agrupadores "paizões" podem ter privilégio de alterar parametros
  if DMCadastros.Centro_CustoAgrupador.isNull then
  begin
    ckCMV.Enabled := true;
    ckRelatorio.Enabled := true;
  end
  else
  begin
    ckCMV.Enabled := false;
    ckRelatorio.Enabled := false;
  end;

end;

procedure TFrmCCusto.EdInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmCCusto.EdInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
{     if cmbAgrupador.text <> '' then
       CmbTipo.enabled := false
     else
       CmbTipo.enabled := true;}
end;

procedure TFrmCCusto.CmbTipoEnter(Sender: TObject);
begin
    CORFUNDO(SENDER);
    (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
    (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmCCusto.ActAlterarExecute(Sender: TObject);
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

procedure TFrmCCusto.ActInsereFilhoExecute(Sender: TObject);
begin
  FParentValue := TdxDBTreeListNode(DBTreeList.FocusedNode).Id;
  DataSource.DataSet.insert;
  DMCadastros.Centro_CustoAGRUPADOR.value :=  FParentValue;
  DBTreeList.ShowEditor;
end;

procedure TFrmCCusto.ActExpandirExecute(Sender: TObject);
begin
  DBTreeList.FullExpand;
end;

procedure TFrmCCusto.ActContrairExecute(Sender: TObject);
begin
  DBTreeList.FullCollapse;
end;

procedure TFrmCCusto.DBTreeList2GetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
  if Node.Expanded then
    Index := 1
  else Index := 0;
end;

procedure TFrmCCusto.ckGradeClick(Sender: TObject);
begin
  if ckGrade.checked then
    DBTreeList.ShowGrid := true
  else
    DBTreeList.ShowGrid := false;
end;

procedure TFrmCCusto.DBTreeListKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_RETURN) then
    ActPost.Execute;
end;

end.
