unit AlteraVendas_Form;

interface

uses              
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxExEdtr, cxGraphics,
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
  TFrmAlteraVendas = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarManager: TdxBarManager;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    Actions: TActionList;
    ActAlterar: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    Bevel1: TBevel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    Label1: TcxLabel;
    EdDocumento: TdxDBEdit;
    cbFrete: TdxDBCheckEdit;
    dxDBEdit21: TdxDBEdit;
    Label3: TcxLabel;
    EdDataNota: TdxDBDateEdit;
    dxDBEdit3: TdxDBEdit;
    Label2: TcxLabel;
    EdNatureza: TdxDBEdit;
    Label4: TcxLabel;
    Label19: TcxLabel;
    LBLTERCEIROS: TcxLabel;
    Label18: TcxLabel;
    Label5: TcxLabel;
    EdVendedor: TdxDBEdit;
    EdTerceiro: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    Label7: TcxLabel;
    Label14: TcxLabel;
    dxDBEdit20: TdxDBEdit;
    Panel3: TPanel;
    Label25: TcxLabel;
    Label27: TcxLabel;
    Label6: TcxLabel;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    edObservacoes: TdxDBMemo;
    Label34: TcxLabel;
    dxDBEdit13: TdxDBEdit;
    dxDBEdit14: TdxDBEdit;
    Label35: TcxLabel;
    dxDBEdit12: TdxDBEdit;
    Label29: TcxLabel;
    Label9: TcxLabel;
    dxDBEdit15: TdxDBEdit;
    dxDBEdit17: TdxDBEdit;
    Label12: TcxLabel;
    Label13: TcxLabel;
    dxDBEdit19: TdxDBEdit;
    dxDBEdit16: TdxDBEdit;
    Label11: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    EdInicial: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    Label8: TcxLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBCheckEdit1: TdxDBCheckEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmAlteraVendas: TFrmAlteraVendas;

implementation

uses Cadastros_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Vendas_Dm;

{$R *.DFM}

procedure TFrmAlteraVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;
  //
  If Datasource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;
  //
  If FrmAlteraVendas.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;
  //
  Action := caFree;
  FrmAlteraVendas := Nil;
end;

procedure TFrmAlteraVendas.ActPostExecute(Sender: TObject);
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

procedure TFrmAlteraVendas.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmAlteraVendas.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
    If Not(DataSource.DataSet.Active) Then
       Datasource.DataSet.Open;
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
  Datasource.AutoEdit := ActAlterar.Enabled;
end;

procedure TFrmAlteraVendas.FormCreate(Sender: TObject);
begin
  //
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmAlteraVendas.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmAlteraVendas.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmAlteraVendas.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       ActAlterar.Enabled   := False;
       BtnSalvar.Enabled    := True;
       BtnCancelar.Enabled  := True;
       ActFechar.Enabled    := False;
     End
  Else
     Begin
       ActAlterar.Enabled   := true ;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True ;
     End;
end;

procedure TFrmAlteraVendas.ActFecharExecute(Sender: TObject);
begin
  If FrmAlteraVendas.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

end.
