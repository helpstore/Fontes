 unit Consulta_Estoque_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxClasses, cxLabel;

type
  TFrmConsultaEstoque = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    btnLocalizar: TdxBarButton;
    Actions: TActionList;
    ActLocalizar: TAction;
    Bevel1: TBevel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    LblRegistros: TcxLabel;
    BtnBaixa: TdxBarButton;
    Label10: TcxLabel;
    dxBarEdit1: TdxBarEdit;
    GRID: TdxDBGrid;
    ImpPagar: TdxBarButton;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDNOME_PRODUTO: TdxDBGridMaskColumn;
    GRIDEST_PRODUTO: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDTIPO: TdxDBGridMaskColumn;
    GRIDFISICO: TdxDBGridColumn;
    Label1: TcxLabel;
    LBLESTOQUE: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmConsultaEstoque: TFrmConsultaEstoque;

implementation

uses Cadastros_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Estoque_Dm;

{$R *.DFM}

procedure TFrmConsultaEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  If FrmConsultaEstoque.FormStyle = fsMDIChild Then
     Begin
       Datasource.Dataset.Close;

       //
       Action := caFree;
       FrmConsultaEstoque := Nil;
     End
  Else
     Begin
       Action := caHide;
     End;
  //
end;

procedure TFrmConsultaEstoque.FormShow(Sender: TObject);
var
   Estoque: Real;
begin
  //
    DmEstoque.VER_ESTOQUE.Open ;

    Estoque := 0;

    DmEstoque.VER_ESTOQUE.first ;

    while not DmEstoque.VER_ESTOQUE.eof do
    begin
         estoque := estoque + DmEstoque.VER_ESTOQUEfisico.value ;
         DmEstoque.VER_ESTOQUE.NEXT ;
    end;

    LBLESTOQUE.CAPTION := FORMATFLOAT ('###,###,##0.00', ESTOQUE);

    GRID.SETFOCUS ;
end;

procedure TFrmConsultaEstoque.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmConsultaEstoque.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmConsultaEstoque.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmConsultaEstoque.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmConsultaEstoque.ActFecharExecute(Sender: TObject);
begin
  If FrmConsultaEstoque.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmConsultaEstoque.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount);
end;

end.
