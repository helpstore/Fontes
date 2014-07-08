 unit Terceiros_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,   ppDB, ppDBPipe, ppCtrls, ppBands, ppVar,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, ppParameter, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinscxPCPainter, cxPC, cxLabel;

type
  TFrmTerceiros = class(TForm)
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
    Label3: TcxLabel;
    btnPessoaFJ: TSpeedButton;
    Shape1: TShape;
    Label10: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    EdCodigo: TdxDBEdit;
    cmbNomeRazao: TdxDBLookupEdit;
    edNome: TdxDBEdit;
    EdPorcIcm: TdxDBCalcEdit;
    dxDBCalcEdit1: TdxDBCalcEdit;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
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
    dsPessoasFJ: TDataSource;
    DataSource: TDataSource;
    rptTerceiros: TppReport;
    ppTitleBand1: TppTitleBand;
    ppShape22: TppShape;
    lblEmpresa: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel62: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel10: TppLabel;
    ppLine3: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppDBText8: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppShape23: TppShape;
    ppSystemVariable6: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppLabel1: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppFormaPagto: TppDBPipeline;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText2: TppDBText;
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
    procedure actLookupExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnPessoaFJClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTerceiros: TFrmTerceiros;

implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     PessoasFJ_Form;

{$R *.DFM}

procedure TFrmTerceiros.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;

  If DataSource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;
  If dsPessoasFJ.DataSet.Tag = 0 Then
     dsPessoasFJ.DataSet.Close;

  Action := caFree;
  FrmTerceiros := Nil;

  If FrmMain.MDIChildCount = 1 Then
     FrmMain.PnlClient.Visible := True;
end;

procedure TFrmTerceiros.ActIncluirExecute(Sender: TObject);
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
  CmbNomeRazao.SetFocus;
end;

procedure TFrmTerceiros.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Cliente ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmTerceiros.ActPostExecute(Sender: TObject);
begin
  DataSource.DataSet.Post;
  DMApp.Transaction.CommitRetaining;
end;

procedure TFrmTerceiros.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmTerceiros.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Try
    If Not(dsPessoasFJ.DataSet.Active) Then
       dsPessoasFJ.DataSet.Open;
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
  cmbNomeRazao.SetFocus;
end;

procedure TFrmTerceiros.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F7]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

end;

procedure TFrmTerceiros.ActListagemExecute(Sender: TObject);
begin
  DMListagens := TDMListagens.Create(Self);
  with dmListagens do
  begin
    qryRelTerceiro.Close;
    qryRelTerceiro.Open;
    lblEmpresa.caption := dmApp.nome;
    rptTerceiros.print;
    Free;
  end;
  DMListagens := Nil;
end;

procedure TFrmTerceiros.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmTerceiros.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrmTerceiros.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmTerceiros.DataSourceStateChange(Sender: TObject);
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

procedure TFrmTerceiros.ActFecharExecute(Sender: TObject);
begin
  If FrmTerceiros.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmTerceiros.actLookupExecute(Sender: TObject);
begin
  If FrmTerceiros.ActiveControl = cmbNomeRazao Then
     btnPessoaFJ.OnClick(btnPessoaFJ);
end;

procedure TFrmTerceiros.FormActivate(Sender: TObject);
begin
  Try
    FrmTerceiros.Refresh;
    Case FrmTerceiros.Tag Of
         1: Begin
              //
              Datasource.DataSet.FieldByName('PESSOA_FJ').asInteger := FrmMain.Codigo_Int;
              cmbNomeRazao.SetFocus;
            End;
    End;
    FrmTerceiros.Tag := 0;
  Except
  End;
end;

procedure TFrmTerceiros.btnPessoaFJClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  DMCadastros.Tag := 1;
  //
  DsPessoasFj.DataSet.Tag := 1;

  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPessoasFJ', False);
  { * * * * * }
  //
  FrmTerceiros.Tag := 1;
  //
  FrmPessoasFJ := TFrmPessoasFJ.Create(Self);
  FrmPessoasFJ.ShowModal;
  //
  Datasource.DataSet.FieldByName('PESSOA_FJ').asInteger := FrmMain.Codigo_Int;

  DsPessoasFj.DataSet.Tag := DsPessoasFj.DataSet.Tag - 1;

  // Fechando Datasets desnecessários
  DMCadastros.Logradouros.Close;
  DMCadastros.Bairros.Close;
  DMCadastros.Cidades.Close;
  //
  cmbNomeRazao.SetFocus;
end;

procedure TFrmTerceiros.FormResize(Sender: TObject);
begin
  //
  pc.Height := FrmTerceiros.Height - 110;
  pc.Width  := FrmTerceiros.Width  -  25;
end;

end.
