unit Grades_Entradas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,  Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Grids, DBGrids,
  dxExEdtr, Buttons, dxDBEdtr,  DBCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, dxSkinsdxBarPainter,
  cxClasses, cxButtons, cxLabel;

type
  TFrmGrades_Entradas = class(TForm)
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
    EdInicial: TdxDBEdit;
    b2: TBevel;
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    LblRegistros: TcxLabel;
    Label3: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    Label4: TcxLabel;
    DsProduto: TDataSource;
    GRID: TDBGrid;
    Label8: TcxLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBDateEdit2: TdxDBDateEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    Label7: TcxLabel;
    CmbMaterial: TdxDBLookupEdit;
    BtnMaterial: TcxButton;
    DsMaterial: TDataSource;
    Label1: TcxLabel;
    CmbCor: TdxDBLookupEdit;
    BtnCor: TcxButton;
    DsCor: TDataSource;
    ActLookUp: TAction;
    Panel4: TPanel;
    BtnExtornaVenda: TcxButton;
    Label5: TcxLabel;
    CmbPerfil: TdxDBLookupEdit;
    BtnPerfil: TcxButton;
    DsPerfil: TDataSource;
    GRIDNUMEROS: TDBGrid;
    DsNumeros: TDataSource;
    DbNav: TDBNavigator;
    EdNumero: TdxEdit;
    Label6: TcxLabel;
    RzBitBtn1: TcxButton;
    ActNumero: TAction;
    EDCODIGO: TdxEdit;
    EDNOME: TdxEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure EdInicialEnter(Sender: TObject);
    procedure EdInicialExit(Sender: TObject);
    procedure BtnMaterialClick(Sender: TObject);
    procedure BtnCorClick(Sender: TObject);
    procedure ActLookUpExecute(Sender: TObject);
    procedure BtnPerfilClick(Sender: TObject);
    procedure ActNumeroExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
    Codigo_Produto, Nome_Produto: String;
  end;

var
  FrmGrades_Entradas: TFrmGrades_Entradas;

implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Material_Form,
     Cor_Form,
     Perfil_Grades_Form,
     Entradas_DM,
     Grades_Form;

{$R *.DFM}

procedure TFrmGrades_Entradas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  FrmMain.Codigo_Str := Datasource.DataSet.FieldByName('GRADE').asString ;
  
  //
  If DsNumeros.DataSet.Tag = 0 Then
     DsNumeros.Dataset.Close;

  If DsMaterial.DataSet.Tag = 0 Then
     DsMaterial.Dataset.Close;

  If DsCor.DataSet.Tag = 0 Then
     DsCor.Dataset.Close;

  If DsPerfil.DataSet.Tag = 0 Then
     DsPerfil.Dataset.Close;

  If Datasource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;
  //
  If FrmGrades_Entradas.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;
  //
  Action := caFree;
  FrmGrades_Entradas := Nil;
end;

procedure TFrmGrades_Entradas.ActIncluirExecute(Sender: TObject);
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
  CmbMaterial.SetFocus;
end;

procedure TFrmGrades_Entradas.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Gênero ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmGrades_Entradas.ActPostExecute(Sender: TObject);
begin
  Try
    DataSource.DataSet.Post;
    DMApp.Transaction.CommitRetaining;
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

procedure TFrmGrades_Entradas.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmGrades_Entradas.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
     With DmEntradas do
     Begin
       Grades.Close ;
       Grades.ParamByName ( 'PRODUTO' ).AsString := Codigo_Produto ;
       Grades.Open  ;
     end;

     EDCODIGO.Text := CODIGO_PRODUTO ;

     EDNOME.Text   := NOME_PRODUTO   ;

    If Not(DataSource.DataSet.Active) Then
       Datasource.DataSet.Open;

    (Datasource.DataSet as TIBDataset).FetchAll;

    If Not(DsMaterial.DataSet.Active) Then
       DsMaterial.DataSet.Open;

    If Not(DsPerfil.DataSet.Active) Then
       DsPerfil.DataSet.Open;

    If Not(DsCor.DataSet.Active) Then
       DsCor.DataSet.Open;

    If Not(DsNumeros.DataSet.Active) Then
       DsNumeros.DataSet.Open;
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
  CmbMaterial.SetFocus;
end;

procedure TFrmGrades_Entradas.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmGrades_Entradas.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmGrades_Entradas.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmGrades_Entradas.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmGrades_Entradas.DataSourceStateChange(Sender: TObject);
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

procedure TFrmGrades_Entradas.ActFecharExecute(Sender: TObject);
begin
     Close;
end;

procedure TFrmGrades_Entradas.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount);
end;

procedure TFrmGrades_Entradas.EdInicialEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmGrades_Entradas.EdInicialExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );
end;

procedure TFrmGrades_Entradas.BtnMaterialClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
{ If DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  dsMaterial.DataSet.Tag    := dsMaterial.DataSet.Tag    + 1;

  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMateriais', False);
  { * * * * * }
  //
  FrmMateriais := TFrmMateriais.Create(Self);

  FrmMateriais.ShowModal;

  DMCadastros.Tag := DMCadastros.Tag - 1;

  Datasource.DataSet.FieldByName('MATERIAL').asInteger := FrmMain.Codigo_Int;

  DsMaterial.DataSet.Tag := DsMaterial.DataSet.Tag    - 1;

  //
  FrmMateriais.Free;
  FrmMateriais := Nil;
  //
  CmbMaterial.SetFocus;
end;

procedure TFrmGrades_Entradas.BtnCorClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
{ If DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  dsCor.DataSet.Tag    := dsCor.DataSet.Tag    + 1;

  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCores', False);
  { * * * * * }
  //
  FrmCores := TFrmCores.Create(Self);

  FrmCores.ShowModal;

  DMCadastros.Tag := DMCadastros.Tag - 1;

  Datasource.DataSet.FieldByName('Cor').asInteger := FrmMain.Codigo_Int;

  DsCor.DataSet.Tag := DsCor.DataSet.Tag    - 1;

  //
  FrmCores.Free;
  FrmCores := Nil;
  //
  CmbCor.SetFocus;
end;

procedure TFrmGrades_Entradas.ActLookUpExecute(Sender: TObject);
begin
  If FrmGrades.ActiveControl = cmbMaterial Then
     BtnMaterial.OnClick(BtnMaterial);
  If FrmGrades.ActiveControl = cmbCor Then
     BtnCor.OnClick(BtnCor);
  If FrmGrades.ActiveControl = cmbPerfil Then
     BtnPerfil.OnClick(BtnPerfil);
end;

procedure TFrmGrades_Entradas.BtnPerfilClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
{ If DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  dsPerfil.DataSet.Tag    := dsPerfil.DataSet.Tag    + 1;

  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPerfil_Grades', False);
  { * * * * * }
  //
  FrmPerfil_Grades := TFrmPerfil_Grades.Create(Self);

  FrmPerfil_Grades.ShowModal;

  DMCadastros.Tag := DMCadastros.Tag - 1;

  Datasource.DataSet.FieldByName('Perfil').asInteger := FrmMain.Codigo_Int;

  DsPerfil.DataSet.Tag := DsPerfil.DataSet.Tag    - 1;

  //
  FrmPerfil_Grades.Free;
  FrmPerfil_Grades := Nil;
  //
  CmbPerfil.SetFocus;
end;

procedure TFrmGrades_Entradas.ActNumeroExecute(Sender: TObject);
begin
     If trim(EdNumero.text) = ''
     then begin
          messagedlg('Digite o Número!', MtError, [mbok],0);
          EdNumero.SetFocus ;
     end
     else begin
          DmApp.inserir_Num_Grade ( DMEntradas.GradesProduto.Value,
                                   DMEntradas.GradesGrade.value,
                                   (trim(EdNumero.text)));
          DsNumeros.DataSet.Close ;
          DsNumeros.DataSet.Open  ;

          EdNumero.Clear    ;
          EdNumero.setfocus ;
     end;
end;

procedure TFrmGrades_Entradas.ActAlterarExecute(Sender: TObject);
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

end.
