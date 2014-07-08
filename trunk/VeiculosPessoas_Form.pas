 unit VeiculosPessoas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,   Grids, DBGrids, IBQuery, DBCtrls, cxGraphics,
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
  dxSkinscxPCPainter, Menus, dxSkinsdxBarPainter, cxClasses, cxButtons,
  cxPC, cxLabel;

type
  TFrmVeiculosFrota = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel1: TPanel;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Shape1: TShape;
    EdModelo: TdxDBEdit;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    btnLocalizar: TdxBarButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    BtnListagem: TdxBarButton;
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
    dxDBEdit1: TdxDBEdit;
    DsTipo: TDataSource;
    Label6: TcxLabel;
    cmbTipo: TdxDBLookupEdit;
    BtnTipo: TcxButton;
    Label3: TcxLabel;
    CmbMarca: TdxDBLookupEdit;
    BtnMarca: TcxButton;
    DsMarca: TDataSource;
    GRID: TDBGrid;
    Label4: TcxLabel;
    edPlaca: TdxDBMaskEdit;
    edKilometragem: TdxDBCalcEdit;
    Label5: TcxLabel;
    Label7: TcxLabel;
    dxDBCalcEdit1: TdxDBCalcEdit;
    Label8: TcxLabel;
    dxDBCheckEdit2: TdxDBCheckEdit;
    Label22: TcxLabel;
    Label9: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    DBComboBox1: TDBComboBox;
    Label10: TcxLabel;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    Label11: TcxLabel;
    dxDBEdit5: TdxDBEdit;
    Label12: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActListagemExecute(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure EdModeloEnter(Sender: TObject);
    procedure EdModeloExit(Sender: TObject);
    procedure BtnMarcaClick(Sender: TObject);
    procedure BtnTipoClick(Sender: TObject);
    procedure actLookupExecute(Sender: TObject);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVeiculosFrota: TFrmVeiculosFrota;

implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     PessoasFJ_Form,
     Marca_Veiculos_Form,
     Tipo_Veiculos_Form;

{$R *.DFM}

procedure TFrmVeiculosFrota.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmMain.Codigo_Str := Datasource.DataSet.FieldByName('PLACA').asString ;

  //
  If DsMarca.DataSet.Tag = 0 Then
     DsMarca.Dataset.Close;


  If DsTipo.DataSet.Tag = 0 Then
     DsTipo.Dataset.Close;

  If DataSource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;

  //
  If FrmVeiculosFrota.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;

  Action := caFree;
  FrmVeiculosFrota := Nil;
  //
end;

procedure TFrmVeiculosFrota.ActIncluirExecute(Sender: TObject);
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
  EdModelo.SetFocus;
end;

procedure TFrmVeiculosFrota.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Veículo ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmVeiculosFrota.ActPostExecute(Sender: TObject);
begin
  Try
    DataSource.DataSet.Post;
    DMApp.Transaction.CommitRetaining;
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

procedure TFrmVeiculosFrota.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmVeiculosFrota.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  Try
    If Not(DsTipo.DataSet.Active) Then
       DsTipo.DataSet.Open;


    If Not(DsMarca.DataSet.Active) Then
       DsMarca.DataSet.Open;

    If Not(Datasource.DataSet.Active) Then
       DataSource.DataSet.Open;
       
    (Datasource.DataSet as TIBDataset).FetchAll;
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
  EdModelo.SetFocus;
end;

procedure TFrmVeiculosFrota.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmVeiculosFrota.ActListagemExecute(Sender: TObject);
begin
{  //
  DMListagens := TDMListagens.Create(Self);
  DMListagens.lsGeneros;
  DMListagens.Free;
  DMListagens := Nil; }
end;

procedure TFrmVeiculosFrota.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmVeiculosFrota.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrmVeiculosFrota.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmVeiculosFrota.DataSourceStateChange(Sender: TObject);
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

procedure TFrmVeiculosFrota.ActFecharExecute(Sender: TObject);
begin
  If FrmVeiculosFrota.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmVeiculosFrota.FormResize(Sender: TObject);
begin
  //
  pc.Height := FrmVeiculosFrota.Height - 106;
  pc.Width  := FrmVeiculosFrota.Width  -  25;
end;

procedure TFrmVeiculosFrota.EdModeloEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmVeiculosFrota.EdModeloExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmVeiculosFrota.BtnMarcaClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  { * * * * * }
{  if DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMarcas_Veiculos', False);
  { * * * * * }
  //
  dsMarca.DataSet.Tag := dsMarca.DataSet.Tag + 1;
  //
  FrmMarcas_Veiculos := TFrmMarcas_Veiculos.Create(Self);
  FrmMarcas_Veiculos.ShowModal;
  //
  Datasource.DataSet.FieldByName('MARCA_VEICULO').asInteger := FrmMain.Codigo_Int;

  //
  DsMarca.DataSet.Tag := DsMarca.DataSet.Tag - 1;
  DMCadastros.Tag := DMCadastros.Tag - 1;

  FrmMarcas_Veiculos.Free;
  FrmMarcas_Veiculos := Nil;
  //
  cmbMarca.SetFocus;
end;

procedure TFrmVeiculosFrota.BtnTipoClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  { * * * * * }
{  if DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmTipo_Veiculos', False);
  { * * * * * }
  //
  dsTipo.DataSet.Tag := dsTipo.DataSet.Tag + 1;
  //
  FrmTipo_Veiculos := TFrmTipo_Veiculos.Create(Self);
  FrmTipo_Veiculos.ShowModal;
  //
  Datasource.DataSet.FieldByName('TIPO_VEICULO').asInteger := FrmMain.Codigo_Int;

  //
  DsTIPO.DataSet.Tag := DsTIPO.DataSet.Tag - 1;
  DMCadastros.Tag := DMCadastros.Tag - 1;

  FrmTipo_Veiculos.Free;
  FrmTipo_Veiculos := Nil;
  //
  cmbTipo.SetFocus;
end;

procedure TFrmVeiculosFrota.actLookupExecute(Sender: TObject);
begin
  If FrmVeiculosFrota.ActiveControl = cmbTipo Then
     btnTipo.OnClick(btnTipo);
  If FrmVeiculosFrota.ActiveControl = CmbMarca Then
     BtnMarca.OnClick(BtnMarca);
end;

procedure TFrmVeiculosFrota.DBComboBox1Enter(Sender: TObject);
begin
    CorFundo ( Sender );
end;

procedure TFrmVeiculosFrota.DBComboBox1Exit(Sender: TObject);
begin
 TiraCorFundo ( Sender );
end;

end.
