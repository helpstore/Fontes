 unit FluxoCaixa_Form;

interface

uses
  Windows, Messages, SysUtils, Classes,  Graphics, Controls, Forms, Dialogs,
  dxBar,   StdCtrls, ExtCtrls, dxCntner, dxEditor, dxEdLib,
  ComCtrls,  ActnList, dbtables, db, IBCustomDataSet, IBQuery,
    IBStoredProc, cxPropertiesStore, dxExEdtr, 
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxmdaset, dxDBEdtr,
  dxDBELib, Menus, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxButtonEdit, Series, TeEngine, TeeProcs, Chart, DbChart,TeePrevi,
  DBCtrls, dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxClasses, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinscxPCPainter, cxPC, cxLabel;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfrmFluxoCaixa = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    DIR: TOpenDialog;
    Actions: TActionList;
    ActFechar: TAction;
    ActExporta: TAction;
    stgfrmFluxoCaixa: TcxPropertiesStore;
    Panel1: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    dsFluxoCaixa: TDataSource;
    dsEmpresas: TDataSource;
    PopSelecao: TPopupMenu;
    MarcarTodososRegistros1: TMenuItem;
    Panel4: TPanel;
    pcGrafico: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Shape2: TShape;
    Panel6: TPanel;
    GraficoBarras: TDBChart;
    Series1: TBarSeries;
    Series2: TBarSeries;
    Series3: TBarSeries;
    Series4: TBarSeries;
    Series5: TBarSeries;
    Series6: TBarSeries;
    dxTabSheet2: TcxTabSheet;
    GraficoLinhas: TDBChart;
    Panel5: TPanel;
    ckReceberEfetivo: TCheckBox;
    ckReceberPrevisto: TCheckBox;
    ckPagarEfetivo: TCheckBox;
    ckPagarPrevisto: TCheckBox;
    ckSaldoEfetivo: TCheckBox;
    ckSaldoPrevisto: TCheckBox;
    Panel9: TPanel;
    Grid: TdxDBGrid;
    GridDATA: TdxDBGridDateColumn;
    Panel3: TPanel;
    Label9: TcxLabel;
    Label4: TcxLabel;
    Label2: TcxLabel;
    edDtFinal: TdxDateEdit;
    edDtInicial: TdxDateEdit;
    BarSeries1: TLineSeries;
    BarSeries2: TLineSeries;
    BarSeries3: TLineSeries;
    BarSeries4: TLineSeries;
    BarSeries5: TLineSeries;
    BarSeries6: TLineSeries;
    ck3d: TCheckBox;
    GridTT_RECEBER_PREVISO: TdxDBGridCurrencyColumn;
    GridTT_RECEBER_EFETIVO: TdxDBGridCurrencyColumn;
    GridTT_PAGAR_PREVISTO: TdxDBGridCurrencyColumn;
    GridTT_PAGAR_EFETIVO: TdxDBGridCurrencyColumn;
    GridTT_SALDO_PREVISTO: TdxDBGridCurrencyColumn;
    GridTT_SALDO_EFETIVO: TdxDBGridCurrencyColumn;
    SaveDialog: TSaveDialog;
    QryEmpresas: TIBQuery;
    QryEmpresasNOME: TIBStringField;
    QryEmpresasCNPJ: TIBStringField;
    DataSource1: TDataSource;
    cmbEmpresas: TdxLookupEdit;
    BarManager: TdxBarManager;
    BtnFechar: TdxBarButton;
    btnExporta: TdxBarButton;
    ActImprimeGrafico: TAction;
    btnImprimeGrafico: TdxBarButton;
    Panel2: TPanel;
    DBText2: TDBText;
    Label1: TcxLabel;
    DBText1: TDBText;
    Label3: TcxLabel;
    Label5: TcxLabel;
    DBText3: TDBText;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure PRODUTOSBeforeOpen(DataSet: TDataSet);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FimKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

    procedure BtnDirKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnCriarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzBitBtn2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel3Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ckReceberEfetivoClick(Sender: TObject);
    procedure ck3dClick(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure MenuItem1Click(Sender: TObject);
    procedure ActExportaExecute(Sender: TObject);
    procedure ActImprimeGraficoExecute(Sender: TObject);
    procedure cmbEmpresasEnter(Sender: TObject);
    procedure cmbEmpresasExit(Sender: TObject);
    procedure cmbEmpresasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure filtrar;
    procedure AtivaGrafico;
  public
    { Public declarations }
  end;

var
  frmFluxoCaixa: TfrmFluxoCaixa;

implementation

uses Usuarios_DM, Application_DM, Funcoes, Financeiro_Dm2,
  Flx_ReceberPrevista;

{$R *.DFM}

procedure TfrmFluxoCaixa.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  QryEmpresas.Close;
  QryEmpresas.Open;
  
end;

procedure TfrmFluxoCaixa.Save(ADefaultExt, AFilter, AFileName: String;
  AMethod: TSaveMethod);
begin
  with SaveDialog do
  begin
    DefaultExt := ADefaultExt;
    Filter := AFilter;
    FileName := AFileName;
    if Execute then
      AMethod(FileName, true);
  end;
end;

procedure TfrmFluxoCaixa.ActFecharExecute(Sender: TObject);
begin
     Close ;
end;

procedure TfrmFluxoCaixa.PRODUTOSBeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
     (DataSet as TIBQuery).Prepare;
end;

procedure TfrmFluxoCaixa.RzBitBtn2Click(Sender: TObject);
begin
  Close ;
end;

procedure TfrmFluxoCaixa.IniKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmFluxoCaixa.FimKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;



procedure TfrmFluxoCaixa.BtnDirKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmFluxoCaixa.BtnCriarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmFluxoCaixa.RzBitBtn2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmFluxoCaixa.Panel3Exit(Sender: TObject);
begin
 Filtrar;
end;

procedure TfrmFluxoCaixa.filtrar;
var
  cont : integer;
begin
  if (cmbEmpresas.text = '') then
  begin
    Application.MessageBox('Defina a empresa','Aviso',mb_ok+mb_iconinformation);
    cmbEmpresas.setfocus;
    exit;
  end;

  if (edDtInicial.Date <= 0) then
  begin
    Application.MessageBox('Defina a data inicial','Aviso',mb_ok+mb_iconinformation);
    edDtInicial.SetFocus;
    exit;
  end;

  if (edDtFinal.Date <= 0) then
  begin
    Application.MessageBox('Defina a data final','Aviso',mb_ok+mb_iconinformation);
    edDtFinal.SetFocus;
    exit;
  end;
 with dmFinanceiro2 do
 begin
  QryFluxoCaixa.Close;
  QryFluxoCaixa.parambyname('cnpj').value := QryEmpresascnpj.value;
  QryFluxoCaixa.parambyname('data1').asDate := edDtInicial.date;
  QryFluxoCaixa.parambyname('data2').asDate := edDtFinal.date;
 // if (ckCheque.Checked) then
    QryFluxoCaixa.parambyname('cheque').value := 'S';
{  else
    QryFluxoCaixa.parambyname('cheque').value := 'N'; }

//  if (ckCartao.Checked) then
    QryFluxoCaixa.parambyname('cartao').value := 'S';
{  else
    QryFluxoCaixa.parambyname('cartao').value := 'N'; }

  QryFluxoCaixa.Open;
 end;
end;

procedure TfrmFluxoCaixa.FormShow(Sender: TObject);
begin
 cmbEmpresas.SetFocus;
 cmbEmpresas.LookupKeyValue := dmApp.cnpj;
 AtivaGrafico;
end;

procedure TfrmFluxoCaixa.ckReceberEfetivoClick(Sender: TObject);
begin
  AtivaGrafico;
end;

procedure TfrmFluxoCaixa.AtivaGrafico;
begin
   if ckReceberEfetivo.Checked then
  begin
    GraficoBarras.Series[0].Active := true ;
    GraficoLinhas.Series[0].Active := true ;
  end
  else
  begin
    GraficoBarras.Series[0].Active := false ;
    GraficoLinhas.Series[0].Active := false ;
  end;

  if ckReceberPrevisto.Checked then
  begin
    GraficoBarras.Series[1].Active := true ;
    GraficoLinhas.Series[1].Active := true ;
  end
  else
  begin
    GraficoBarras.Series[1].Active := false ;
    GraficoLinhas.Series[1].Active := false ;
  end;

  if ckPagarEfetivo.Checked then
  begin
    GraficoBarras.Series[2].Active := true ;
    GraficoLinhas.Series[2].Active := true ;
  end
  else
  begin
    GraficoBarras.Series[2].Active := false ;
    GraficoLinhas.Series[2].Active := false ;
  end;

  if ckPagarPrevisto.Checked then
  begin
    GraficoBarras.Series[3].Active := true ;
    GraficoLinhas.Series[3].Active := true ;
  end
  else
  begin
    GraficoBarras.Series[3].Active := false ;
    GraficoLinhas.Series[3].Active := false ;
  end;

  if ckSaldoEfetivo.Checked then
  begin
    GraficoBarras.Series[4].Active := true ;
    GraficoLinhas.Series[4].Active := true ;
  end
  else
  begin
    GraficoBarras.Series[4].Active := false ;
    GraficoLinhas.Series[4].Active := false ;
  end;

  if ckSaldoPrevisto.Checked then
  begin
    GraficoBarras.Series[5].Active := true ;
    GraficoLinhas.Series[5].Active := true ;
  end
  else
  begin
    GraficoBarras.Series[5].Active := false ;
    GraficoLinhas.Series[5].Active := false ;
  end;
end;

procedure TfrmFluxoCaixa.ck3dClick(Sender: TObject);
begin
   if ck3d.Checked then
   begin
     GraficoBarras.View3D := true;
     GraficoLinhas.View3D := true;
   end
   else
   begin
     GraficoBarras.View3D := false;
     GraficoLinhas.View3D := false;
   end
end;

procedure TfrmFluxoCaixa.GridDblClick(Sender: TObject);
begin
  if (Grid.FocusedColumn = 1) then  //receber previsto
  begin
     FrmFlxReceberPrevista := TFrmFlxReceberPrevista.Create(Self);
     FrmFlxReceberPrevista.ShowModal;
     FrmFlxReceberPrevista.free;
     FrmFlxReceberPrevista := nil;
  end
  else if (Grid.FocusedColumn = 2) then //receber efetivo
  begin
     FrmFlxReceberPrevista := TFrmFlxReceberPrevista.Create(Self);
     FrmFlxReceberPrevista.Caption := 'Contas à Receber Efetivas';
     FrmFlxReceberPrevista.pnlTitulo.caption := 'Contas à Receber Efetivas';
     FrmFlxReceberPrevista.DataSource.DataSet := dmFinanceiro2.QryFlxRecEfetivo;
     FrmFlxReceberPrevista.ShowModal;
     FrmFlxReceberPrevista.free;
     FrmFlxReceberPrevista := nil;
  end
  else if (Grid.FocusedColumn = 3) then //Pagar Previsto
  begin
     FrmFlxReceberPrevista := TFrmFlxReceberPrevista.Create(Self);
     FrmFlxReceberPrevista.Caption := 'Contas à Pagar Previstas';
     FrmFlxReceberPrevista.pnlTitulo.caption := 'Contas à Pagar Previstas';
     FrmFlxReceberPrevista.DataSource.DataSet := dmFinanceiro2.QryFlxPagarPrevistas;
     FrmFlxReceberPrevista.ShowModal;
     FrmFlxReceberPrevista.free;
     FrmFlxReceberPrevista := nil;
  end
  else if (Grid.FocusedColumn = 4) then //Pagar Efetivo
  begin
     FrmFlxReceberPrevista := TFrmFlxReceberPrevista.Create(Self);
     FrmFlxReceberPrevista.Caption := 'Contas à Pagar Efetivas';
     FrmFlxReceberPrevista.pnlTitulo.caption := 'Contas à Pagar Efetivas';
     FrmFlxReceberPrevista.DataSource.DataSet := dmFinanceiro2.QryFlxPagarEfetivo;
     FrmFlxReceberPrevista.ShowModal;
     FrmFlxReceberPrevista.free;
     FrmFlxReceberPrevista := nil;
  end

end;

procedure TfrmFluxoCaixa.MenuItem1Click(Sender: TObject);
begin
 GraficoLinhas.Print;
end;

procedure TfrmFluxoCaixa.ActExportaExecute(Sender: TObject);
begin
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Fluxo de Caixa.xls', Grid.SaveToXLS);
end;

procedure TfrmFluxoCaixa.ActImprimeGraficoExecute(Sender: TObject);
begin
 if (pcGrafico.ActivePageIndex = 0) then
  GraficoBarras.Print
 else
  GraficoLinhas.Print;
end;

procedure TfrmFluxoCaixa.cmbEmpresasEnter(Sender: TObject);
begin
 CorFundo ( Sender );
end;

procedure TfrmFluxoCaixa.cmbEmpresasExit(Sender: TObject);
begin
 TiraCorFundo ( Sender );
end;

procedure TfrmFluxoCaixa.cmbEmpresasKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
       
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

end.

