unit Inclui_Nota_Fatura_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor , dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, dxDBGrid, dxDBTLCl, dxGrClms,
  dxDBCtrl, dxTL,   cxPropertiesStore, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFrmIncluirNotaFatura = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    GRID: TdxDBGrid;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDNATUREZA: TdxDBGridColumn;
    GRIDVENDEDOR: TdxDBGridColumn;
    GRIDTIPO_VENDA: TdxDBGridColumn;
    GRIDCONSUMIDOR: TdxDBGridColumn;
    GRIDORCAMENTO: TdxDBGridColumn;
    GRIDNF: TdxDBGridColumn;
    GRIDCF: TdxDBGridColumn;
    GRIDCAIXA: TdxDBGridColumn;
    GRIDUSUARIO: TdxDBGridColumn;
    GRIDCANCELADA: TdxDBGridColumn;
    DataSource: TDataSource;
    Panel1: TPanel;
    RzBitBtn1: TcxButton;
    LblNome: TcxLabel;
    stgFrmIncluirNotaFatura: TcxPropertiesStore;
    procedure ActFecharExecute(Sender: TObject);
    procedure DataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmIncluirNotaFatura: TFrmIncluirNotaFatura;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Vendas_Dm;

{$R *.DFM}

procedure TFrmIncluirNotaFatura.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmIncluirNotaFatura.DataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmIncluirNotaFatura.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
end;

end.
