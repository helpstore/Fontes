 unit LocalizarAplicacoes_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, Db, dxDBGrid, dxTL, dxDBCtrl, dxCntner, StdCtrls,  
  ExtCtrls, DBCtrls, dxExEdtr, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel;

type
  TFrmLocalizarAplicacao = class(TForm)
    ActLista: TActionList;
    ActCancelar: TAction;
    GRID: TdxDBGrid;
    DSource: TDataSource;
    GRIDAPLICACAO: TdxDBGridMaskColumn;
    GRIDLOCAL: TdxDBGridMaskColumn;
    pnlTop: TPanel;
    Bevel2: TBevel;
    LblTitulo: TcxLabel;
    Label6: TcxLabel;
    Label1: TcxLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    procedure ActCancelarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLocalizarAplicacao: TFrmLocalizarAplicacao;

implementation

uses LocalizarProd_DM;

{$R *.DFM}

procedure TFrmLocalizarAplicacao.ActCancelarExecute(Sender: TObject);
begin
     Close ;
end;

end.
