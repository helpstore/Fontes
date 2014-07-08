unit CotasSB_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms, Grids, DBGrids, variants, dxSkinsCore,
  dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinscxPCPainter, cxPC;

type
  TFrmCotasSB = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
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
    b2: TBevel;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    LblRegistros: TLabel;
    DataSource: TDataSource;
    LblTitulo: TLabel;
    Image1: TImage;
    actLookup: TAction;
    btnFiltrar: TdxBarButton;
    dsVendedores: TDataSource;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Label1: TLabel;
    Shape1: TShape;
    ActNextPage: TAction;
    ActPreviousPage: TAction;
    cmbVendedor: TdxLookupEdit;
    dsGrupos: TDataSource;
    dsSubGrupos: TDataSource;
    DsVerCotas: TDataSource;
    dxTabSheet2: TcxTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cmbGrupo: TdxDBLookupEdit;
    cmbSubGrupo: TdxDBLookupEdit;
    edValorCota: TdxDBCalcEdit;
    dxDBCalcEdit1: TdxDBCalcEdit;
    dxDBCalcEdit2: TdxDBCalcEdit;
    Grid: TdxDBGrid;
    GridGRUPO: TdxDBGridMaskColumn;
    GridNOME_GRUPO: TdxDBGridLookupColumn;
    GridSUBGRUPO: TdxDBGridMaskColumn;
    GridNOME_SUBGRUPO: TdxDBGridLookupColumn;
    GridVALOR: TdxDBGridMaskColumn;
    GridCOMISSAO_VISTA: TdxDBGridColumn;
    GridCOMISSAO_PRAZO: TdxDBGridColumn;
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
    procedure DbImKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure actLookupExecute(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure ActNextPageExecute(Sender: TObject);
    procedure ActPreviousPageExecute(Sender: TObject);
    procedure cmbVendedorExit(Sender: TObject);
    procedure cmbVendedorEnter(Sender: TObject);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel2Exit(Sender: TObject);
    procedure cmbGrupoEnter(Sender: TObject);
    procedure cmbGrupoExit(Sender: TObject);
    procedure pcChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmCotasSB: TFrmCotasSB;

implementation

uses Cadastros_DM, Listagens_DM, Application_DM, Main, Usuarios_DM, Funcoes;

{$R *.DFM}

procedure TFrmCotasSB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  If Datasource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;
  If dsVendedores.DataSet.Tag = 0 Then
     dsVendedores.DataSet.Close;
  If DsVerCotas.DataSet.Tag = 0 Then
     DsVerCotas.DataSet.Close;

  //
{  If DMCadastros.Tag = 0 Then
     Begin
       DMCadastros.Free;
       DMCadastros := Nil;
     End;}
  //
  Action := caFree;
  FrmCotasSB := Nil;
end;

procedure TFrmCotasSB.ActIncluirExecute(Sender: TObject);
begin
  If cmbVendedor.text = ''
  then begin
          MessageDlg('Selecione o Vendedor!', mtError, [MbOk], 0);
          Exit;
  end;

  If DataSource.State in dsEditModes Then
     Exit;
  Try
     PC.ActivePageIndex := 1;
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
  //
  Grid.FocusedColumn := 0;
  cmbGrupo.SetFocus;
end;

procedure TFrmCotasSB.ActExcluirExecute(Sender: TObject);
begin
  //
  If MessageBox(Handle,'Tem certeza que deseja Excluir esta Cota ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     Begin
       Navigator.DataSource.Dataset.Delete;
       DMApp.Transaction.CommitRetaining;
       DsVerCotas.DataSet.Close;
       DsVerCotas.DataSet.Open ;
     End;
end;

procedure TFrmCotasSB.ActPostExecute(Sender: TObject);
begin
  Try
     IF Navigator.DataSource.State IN [ DSINSERT, DSEDIT ]
     THEN BEGIN
          Navigator.DataSource.DataSet.Post;
          DMApp.Transaction.CommitRetaining;
          Navigator.DataSource.DataSet.Refresh;
     END;
     DsVerCotas.DataSet.Close;
     DsVerCotas.DataSet.Open ;
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

procedure TFrmCotasSB.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     Begin
       DataSource.DataSet.Cancel;
       Grid.SetFocus;
     End
  Else
      If FrmCotasSB.ActiveControl = Grid
      Then BEGIN
           PC.ACTIVEPAGEINDEX := 0;
           cmbVendedor.SetFocus ;
      END
      Else
          BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmCotasSB.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Try
    If Not(dsVendedores.DataSet.Active) Then
       dsVendedores.DataSet.Open;
    If Not(dsVerCotas.DataSet.Active) Then
       dsVerCotas.DataSet.Open;
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
  Datasource.AutoEdit := ActAlterar.Enabled;
  //
  cmbVendedor.SetFocus;
end;

procedure TFrmCotasSB.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  PC.ActivePageIndex := 0;
end;

procedure TFrmCotasSB.ActListagemExecute(Sender: TObject);
begin
  //
  DMListagens := TDMListagens.Create(Self);
  DMListagens.lsCotas ( DMCadastros.Ver_Cotas );
  DMListagens.Free;
  DMListagens := Nil;
end;

procedure TFrmCotasSB.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmCotasSB.DbImKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
       If Self.ActiveControl = pc Then
          Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmCotasSB.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmCotasSB.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActLocalizar.Enabled := False;
       ActListagem.Enabled  := False;
       btnFiltrar.Enabled   := False;
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
       btnFiltrar.Enabled   := True;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmCotasSB.ActFecharExecute(Sender: TObject);
begin
  If FrmCotasSB.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmCotasSB.actLookupExecute(Sender: TObject);
begin
{  If FrmCotasSB.ActiveControl = cmbAtividade Then
     btnAtividade.OnClick(btnAtividade);
  If FrmCotasSB.ActiveControl = cmbLogradouro Then
     btnLogradouro.OnClick(btnLogradouro);
  If FrmCotasSB.ActiveControl = cmbBairro Then
     btnBairro.OnClick(btnBairro);
  If FrmCotasSB.ActiveControl = cmbCidade Then
     btnCidade.OnClick(btnCidade); }
end;

procedure TFrmCotasSB.btnFiltrarClick(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TFrmCotasSB.ActNextPageExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex < 1 Then
     pc.ActivePageIndex := pc.ActivePageIndex + 1;
end;

procedure TFrmCotasSB.ActPreviousPageExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex > 0 Then
     pc.ActivePageIndex := pc.ActivePageIndex - 1;
end;

procedure TFrmCotasSB.cmbVendedorExit(Sender: TObject);
begin
  //
  If (Trim(cmbVendedor.Text) = '') And
     (FrmCotasSB.ActiveControl <> dxTabSheet1)Then
     Begin
       ShowMessage('Por favor escolha um Vendedor !');
       cmbVendedor.SetFocus;
       Exit;
     End
  Else If Trim(cmbVendedor.Text) <> ''
  Then Begin
       //
       DsVerCotas.DataSet.Close;
       DsVerCotas.DataSet.Open ;
       //
       dsGrupos.DataSet.Open;
       dsSubGrupos.DataSet.Open;
       DataSource.DataSet.Open;
     End;
  TiraCorFundo(Sender);
end;

procedure TFrmCotasSB.cmbVendedorEnter(Sender: TObject);
begin
  //
  DataSource.DataSet.Close;
  dsSubGrupos.DataSet.Close;
  dsGrupos.DataSet.Close;
  CorFundo(Sender);
end;

procedure TFrmCotasSB.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If Key = vk_Return
     Then BEGIN
          DMCadastros.Subgrupos_Cotas.locate ( 'GRUPO;SUBGRUPO', VarArrayOf([DMCadastros.Ver_CotasGrupo.Value, DMCadastros.Ver_CotasSubGrupo.Value]),[] );
          cmbGrupo.SetFocus ;
     END;
end;

procedure TFrmCotasSB.Panel2Exit(Sender: TObject);
begin
  //
  If DataSource.State in dsEditModes Then
     ActPost.Execute;
  //
  Grid.SetFocus;
end;

procedure TFrmCotasSB.cmbGrupoEnter(Sender: TObject);
begin
     CorFundo(Sender);
end;

procedure TFrmCotasSB.cmbGrupoExit(Sender: TObject);
begin
     TiraCorFundo(Sender);
end;

procedure TFrmCotasSB.pcChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
     IF FrmCotasSB <> Nil
     then begin
          IF cmbVendedor.Text = ''
          THEN BEGIN
               MessageDlg ('Selecione o Vendedor!', mtConfirmation,[MbOk], 0 );
               cmbVendedor.SetFocus ;
               AllowChange := False ;
          END;
     end;
end;

end.
