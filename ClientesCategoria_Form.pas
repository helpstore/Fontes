unit ClientesCategoria_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxClasses,
  cxLabel;

type
  TFrmClientesCategoria = class(TForm)
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
    Label1: TcxLabel;
    Label2: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    EdInicial: TdxDBEdit;
    b2: TBevel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    LblRegistros: TcxLabel;
    OptAlterar: TdxBarButton;
    LblTitulo: TcxLabel;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    Categoria: TIBDataSet;
    CategoriaCNPJ: TIBStringField;
    CategoriaCODIGO: TIntegerField;
    CategoriaNOME: TIBStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActListagemExecute(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure ActAlterarExecute(Sender: TObject);
    procedure EdInicialEnter(Sender: TObject);
    procedure EdInicialExit(Sender: TObject);
    procedure CategoriaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmClientesCategoria: TFrmClientesCategoria;

implementation

uses Cadastros_DM, Listagens_DM, Application_DM, Main, Usuarios_DM, Funcoes,
  Localizar_Generico;

{$R *.DFM}

procedure TFrmClientesCategoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;
  //

  //
{  If DMCadastros.Tag = 0 Then
     Begin
       DMCadastros.Free;
       DMCadastros := Nil;
     End;}
  //
  If FrmClientesCategoria.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;
  //
  Action := caFree;
  FrmClientesCategoria := Nil;
end;

procedure TFrmClientesCategoria.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    DataSource.DataSet.Append;
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
  EdInicial.SetFocus;
end;

procedure TFrmClientesCategoria.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir esta categoria?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmClientesCategoria.ActPostExecute(Sender: TObject);
begin
  Try
    DataSource.DataSet.Post;
    DMApp.Transaction.CommitRetaining;
  Except
  End;
end;

procedure TFrmClientesCategoria.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmClientesCategoria.FormShow(Sender: TObject);
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
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
  //
//  Datasource.AutoEdit := ActAlterar.Enabled;
  EdInicial.SetFocus;
end;

procedure TFrmClientesCategoria.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmClientesCategoria.ActListagemExecute(Sender: TObject);
begin
  //
  DMListagens := TDMListagens.Create(Self);
  DMListagens.lsBairros(DataSource.DataSet,'Listagem de Categorias');
  DMListagens.Free;
  DMListagens := Nil;
end;

procedure TFrmClientesCategoria.ActLocalizarExecute(Sender: TObject);
begin
  try
        Application.CreateForm(TFrm_Localizar_Generico, Frm_Localizar_Generico);

        Frm_Localizar_Generico.DSource.dataset := DataSource.dataset ;

        Frm_Localizar_Generico.LblTitulo.Caption := 'Localizar Categorias' ;

        Frm_Localizar_Generico.showmodal ;

        Frm_Localizar_Generico.free   ;

        Frm_Localizar_Generico := Nil ;
  Except
  end;
end;

procedure TFrmClientesCategoria.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmClientesCategoria.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmClientesCategoria.DataSourceStateChange(Sender: TObject);
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

procedure TFrmClientesCategoria.ActFecharExecute(Sender: TObject);
begin
  If FrmClientesCategoria.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmClientesCategoria.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount); 
end;

procedure TFrmClientesCategoria.ActAlterarExecute(Sender: TObject);
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

procedure TFrmClientesCategoria.EdInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmClientesCategoria.EdInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmClientesCategoria.CategoriaBeforePost(DataSet: TDataSet);
begin
  CategoriaCNPJ.value := dmApp.Cnpj;
end;

end.
