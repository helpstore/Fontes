 unit Flx_ReceberPrevista;

interface

uses
  Windows, Messages, SysUtils, Classes,  Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, Buttons, dxBar,
  cxPropertiesStore, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,IBQuery,
  Grids, DBGrids, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxClasses, cxLabel, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxGridCustomPopupMenu, cxGridPopupMenu, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomView, cxGridLevel, cxGrid;

type

  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmFlxReceberPrevista = class(TForm)
    pnlClient: TPanel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    DataSource: TDataSource;
    BarManager: TdxBarManager;
    BtnFechar: TdxBarButton;
    ActCancelar: TAction;
    Label1: TcxLabel;
    pnlTitulo: TPanel;
    stgFrmFlxReceberPrevista: TcxPropertiesStore;
    btnExporta: TdxBarButton;
    ActExporta: TAction;
    SaveDialog: TSaveDialog;
    Grid: TcxGrid;
    lvConta: TcxGridLevel;
    tvConta: TcxGridDBBandedTableView;
    tvContaCODIGO: TcxGridDBBandedColumn;
    tvContaDT_EMISSAO: TcxGridDBBandedColumn;
    tvContaDT_VENCTO: TcxGridDBBandedColumn;
    tvContaVALOR: TcxGridDBBandedColumn;
    tvContaPARCEIRO: TcxGridDBBandedColumn;
    tvContaTIPO: TcxGridDBBandedColumn;
    cxGridPopupMenu: TcxGridPopupMenu;
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure CmbPessoaExit(Sender: TObject);
    procedure CmbPessoaEnter(Sender: TObject);
    procedure CmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BaixarTitulos(Acerto: Integer;TipoAcerto: String);
  end;

var
  FrmFlxReceberPrevista: TFrmFlxReceberPrevista;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm2,
   SerieCustomizaveis_DM, SeriesCustomizaveis,
  Cadastros_Dm2, Act_Contas_Form, Act_Renegociacao_Form,
  Cheque_Acerto_Form, Mov_Banc_Acerto_Form;

{$R *.DFM}

procedure TFrmFlxReceberPrevista.ActFecharExecute(Sender: TObject);
begin
   Modalresult := mrCancel ;
end;

procedure TFrmFlxReceberPrevista.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFlxReceberPrevista.Save(ADefaultExt, AFilter, AFileName: String;
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

procedure TFrmFlxReceberPrevista.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  with DMCadastros do
  begin
    TIBQuery(DataSource.DataSet).Close;
    TIBQuery(DataSource.DataSet).ParamByName('cnpj').value := dmFinanceiro2.QryFluxoCaixaE_CNPJ.value;
    TIBQuery(DataSource.DataSet).ParamByName('data').value := dmFinanceiro2.QryFluxoCaixaDATA.value;
    TIBQuery(DataSource.DataSet).Open;
  end;
end;

procedure TFrmFlxReceberPrevista.IniEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmFlxReceberPrevista.IniExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

procedure TFrmFlxReceberPrevista.ActCancelarExecute(Sender: TObject);
begin
  ActFechar.FreeInstance;
end;

procedure TFrmFlxReceberPrevista.BaixarTitulos(Acerto: Integer;TipoAcerto: String);
begin
end;

procedure TFrmFlxReceberPrevista.CmbPessoaExit(Sender: TObject);
begin
  TIRACORFUNDO( SENDER );
end;

procedure TFrmFlxReceberPrevista.CmbPessoaEnter(Sender: TObject);
begin
CORFUNDO( SENDER );
end;

procedure TFrmFlxReceberPrevista.CmbPessoaKeyDown(Sender: TObject; var Key: Word;
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
