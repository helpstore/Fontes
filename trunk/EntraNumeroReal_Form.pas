unit EntraNumeroReal_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,   dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Mask,  cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel,   cxTextEdit,
  cxCurrencyEdit;

type
  TFrmEntraNumeroReal = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    LBLPROMPT: TcxLabel;
    Actions: TActionList;
    ActFechar: TAction;
    RzBitBtn1: TcxButton;
    ActOk: TAction;
    EdNumero: TcxCurrencyEdit;
    RxLabel1: TcxLabel;
    ActCalculadora: TAction;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActCalculadoraExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Numero: Real;
  end;

var
  FrmEntraNumeroReal: TFrmEntraNumeroReal;

implementation

uses Funcoes;

{$R *.DFM}

procedure TFrmEntraNumeroReal.pnlClientResize(Sender: TObject);
begin
     b2.Width := pnlClient.Width - 17;
end;

procedure TFrmEntraNumeroReal.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmEntraNumeroReal.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmEntraNumeroReal.ActOkExecute(Sender: TObject);
begin
     If arredonda(EdNumero.Value,2) > 0
     then begin
          Numero := Arredonda(EdNumero.Value,2) ;
          Modalresult := mrok ;
     end
     else begin
          MessageDlg('Digite Um Número Válido!', mtError, [mbOK], 0);
          EdNumero.SetFocus ;
     end;
end;

procedure TFrmEntraNumeroReal.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
     EDNumero.setfocus ;
end;

procedure TFrmEntraNumeroReal.ActCalculadoraExecute(Sender: TObject);
begin
     //CALCULADORA COM RESULTADO NO CAMPO
     If FrmEntraNumeroReal.ActiveControl = EdNumero
     Then begin
          EdNumero.Value := Calculadora ;
     end;
end;

end.
