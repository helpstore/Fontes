  unit Perfil_Pagto_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids,   dxCntner,
  dxEditor, dxEdLib, dxDBELib, StdCtrls,   dxBarDBNav,
  ActnList, Db, dxBar, dxDBGrid, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxGrClEx, dxExEdtr, dxDBEdtr,    cxGraphics,
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
  dxSkinscxPCPainter, dxSkinsdxBarPainter, cxClasses, cxPC, cxLabel;

type
  TFrmPerfilPagto = class(TForm)
    Panel1: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    DataSource: TDataSource;
    Actions: TActionList;
    ActAlterar: TAction;
    ActGravar: TAction;
    ActCancelar: TAction;
    ActNP: TAction;
    ActPP: TAction;
    ActFechar: TAction;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Shape1: TShape;
    Label1: TcxLabel;
    Label2: TcxLabel;
    tbsFaixas: TcxTabSheet;
    GridDescto: TdxDBGrid;
    edCredito: TdxDBCalcEdit;
    dsFaixas: TDataSource;
    GridDesctoCNPJ: TdxDBGridMaskColumn;
    GridDesctoCODIGO: TdxDBGridMaskColumn;
    GridDesctoCOD_PERFIL_PAGTO: TdxDBGridMaskColumn;
    GridDesctoDIA_INICIAL: TdxDBGridMaskColumn;
    GridDesctoDIA_FINAL: TdxDBGridMaskColumn;
    GridDesctoPCT_PAGTO: TdxDBGridMaskColumn;
    EdCodigo: TdxDBEdit;
    edNome: TdxDBEdit;
    Label3: TcxLabel;
    Label4: TcxLabel;
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
    OptAlterar: TdxBarButton;
    Navigator: TdxBarDBNavigator;
    ActIncluir: TAction;
    ActExcluir: TAction;
    Action1: TAction;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActGravarExecute(Sender: TObject);
    procedure ActNPExecute(Sender: TObject);
    procedure ActPPExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure pcChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure dxDBGrid2Enter(Sender: TObject);
    procedure GridVlrExit(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPerfilPagto: TFrmPerfilPagto;

implementation

uses Application_DM, Funcoes, Main, Financeiro_Dm2,
  Usuarios_DM;

{$R *.DFM}

procedure TFrmPerfilPagto.ActIncluirExecute(Sender: TObject);
begin
  Try
    Navigator.DataSource.DataSet.Append;
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
  edNome.SetFocus;
end;

procedure TFrmPerfilPagto.ActExcluirExecute(Sender: TObject);
begin
     If MessageBox(Handle,'Tem certeza que deseja Excluir este Perfil ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     Begin
       Try
         Navigator.DataSource.Dataset.Delete;
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
       DMApp.Transaction.CommitRetaining;
     End;
end;

procedure TFrmPerfilPagto.ActGravarExecute(Sender: TObject);
begin
  Try
    if (Navigator.DataSource.DataSet.state in [dsInsert,dsEdit]) then
      Navigator.DataSource.DataSet.Post;
      
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

procedure TFrmPerfilPagto.ActNPExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex < 1 Then
     pc.ActivePageIndex := pc.ActivePageIndex + 1;
end;

procedure TFrmPerfilPagto.ActPPExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex > 0 Then
     pc.ActivePageIndex := pc.ActivePageIndex - 1;
end;

procedure TFrmPerfilPagto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FrmPerfilPagto := Nil;

end;

procedure TFrmPerfilPagto.FormCreate(Sender: TObject);
begin
  //
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
  //
  pc.ActivePageIndex := 0;
end;

procedure TFrmPerfilPagto.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  // Abrindo os DataSet's
  Try
    If Not(DataSource.DataSet.Active) Then
       DataSource.DataSet.Open;
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

procedure TFrmPerfilPagto.DataSourceStateChange(Sender: TObject);
begin
  if DataSource.State in dsEditModes then
  begin
    ActIncluir.Enabled   := False;
    ActAlterar.Enabled   := False;
    ActExcluir.Enabled   := False;
    BtnSalvar.Enabled    := True;
    BtnCancelar.Enabled  := True;
    ActFechar.Enabled    := False;
  end
  else
  begin
    ActIncluir.Enabled   := ActIncluir.Tag = 1;
    ActAlterar.Enabled   := ActAlterar.Tag = 1;
    ActExcluir.Enabled   := ActExcluir.Tag = 1;
    BtnSalvar.Enabled    := False;
    BtnCancelar.Enabled  := False;
    ActFechar.Enabled    := true;
  end
end;

procedure TFrmPerfilPagto.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmPerfilPagto.ActCancelarExecute(Sender: TObject);
begin
  If (Navigator.DataSource.DataSet.State in dsEditModes) Then
     Begin
       If (MessageBox(Handle,'Tem certeza que deseja Cancelar as informações ?',
                             'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES) Then
       Navigator.DataSource.DataSet.Cancel;
     End
  Else
     Begin
       If pc.ActivePageIndex = 1 Then
          pc.ActivePageIndex := 0
       Else
          BtnFechar.OnClick(BtnFechar);
     End;
end;

procedure TFrmPerfilPagto.pcChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  Try
     If FrmPerfilPagto <> Nil then
     begin
       If NewPage = tbsFaixas Then
         dsFaixas.DataSet.Open
       else
         dsFaixas.DataSet.Close;
     end;
  Except
  End;
end;

procedure TFrmPerfilPagto.dxDBGrid2Enter(Sender: TObject);
begin
  Navigator.DataSource := TdxDBGrid(Sender).DataSource;
  TdxDBGrid(Sender).DataSource.OnStateChange := DataSourceStateChange;
end;

procedure TFrmPerfilPagto.GridVlrExit(Sender: TObject);
begin
  if TdxDBGrid(Sender).DataSource.DataSet.state in [dsInsert,dsEdit] then
    TdxDBGrid(Sender).DataSource.DataSet.Post;
end;



procedure TFrmPerfilPagto.ActAlterarExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;

  try
    DataSource.DataSet.Edit;
  except
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
  end;
end;

end.
