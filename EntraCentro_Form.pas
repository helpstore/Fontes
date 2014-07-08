unit EntraCentro_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,   dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  db, dxDBEdtr, dxDBELib, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxLabel;

type
  TFrmEntraCentro = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    DsCentro: TDataSource;
    CmbCentroCusto: TdxLookupEdit;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ActOkExecute(Sender: TObject);
    procedure CmbCentroCustoExit(Sender: TObject);
    procedure CmbCentroCustoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Codigo : String;
  end;

var
  FrmEntraCentro: TFrmEntraCentro;

implementation

uses Funcoes,
     Application_DM;

{$R *.DFM}

procedure TFrmEntraCentro.pnlClientResize(Sender: TObject);
begin
     b2.Width := pnlClient.Width - 17;
end;

procedure TFrmEntraCentro.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmEntraCentro.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
  IF KEY = 13
  THEN
      Modalresult := mrok ;
end;

procedure TFrmEntraCentro.FormShow(Sender: TObject);
begin
     Codigo := '';
     IniciaComponentes ( Self as TForm );
     CmbCentroCusto.setfocus ;
end;

procedure TFrmEntraCentro.ActOkExecute(Sender: TObject);
begin
     ModalResult := MrOk ;
end;

procedure TFrmEntraCentro.CmbCentroCustoExit(Sender: TObject);
begin
     tiraCorFundo ( Sender );
     Modalresult := mrok ;
end;

procedure TFrmEntraCentro.CmbCentroCustoEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

end.
