  unit Splash_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,   StdCtrls, jpeg, DateUtils, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxLabel, cxImage, cxDBEdit, DB,
  cxTextEdit, cxDBLabel;

type
  TFrmSplash = class(TForm)
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape7: TShape;
    lblCumprimento: TcxLabel;
    Image2: TImage;
    Image3: TImage;
    Timer: TTimer;
    DataSource: TDataSource;
    cxDBImage1: TcxDBImage;
    RxLabel7: TcxLabel;
    lblLink: TcxDBLabel;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSplash: TFrmSplash;

implementation

uses Funcoes, Application_DM;

{$R *.DFM}

procedure TFrmSplash.FormCreate(Sender: TObject);
begin
  lblCumprimento.Caption := Trim(Cumprimento());
  with dmApp do
  begin
    QryParceiro.Close;
    QryParceiro.Open;
  end;
end;

procedure TFrmSplash.FormShow(Sender: TObject);
var
  versao : integer;
begin
  RxLabel7.caption  := 'Copyright © '+inttostr(yearof(Date));
  versao := DMApp.RetornaVersao;
//  lblVersaoTop.Caption := '2.1.'+inttostr(versao);
end;

procedure TFrmSplash.TimerTimer(Sender: TObject);
begin
  close;
end;

procedure TFrmSplash.Image1Click(Sender: TObject);
begin
  close;
end;

end.


