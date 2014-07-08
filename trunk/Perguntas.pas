 unit Perguntas;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, cxGraphics, cxControls,
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
  TFormPergunta = class(TForm)
    Painel: TPanel;
    Frase: TcxLabel;
    Resposta: TcxLabel;
    btnsim: TcxButton;
    btnnao: TcxButton;
    procedure BtnSimClick(Sender: TObject);
    procedure BtnNaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPergunta: TFormPergunta;

implementation

uses Funcoes;

{$R *.DFM}

procedure TFormPergunta.BtnSimClick(Sender: TObject);
begin
     Resposta.Caption := 'S';
     Close;
end;

procedure TFormPergunta.BtnNaoClick(Sender: TObject);
begin
     Resposta.Caption := 'N';
     Close;
end;

procedure TFormPergunta.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
     BtnSim.SetFocus;
end;


end.
