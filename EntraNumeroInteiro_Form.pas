unit EntraNumeroInteiro_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,   dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFrmEntraNumeroInteiro = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    LBLPROMPT: TcxLabel;
    Actions: TActionList;
    ActFechar: TAction;
    RzBitBtn1: TcxButton;
    ActOk: TAction;
    EdNumero: TdxMaskEdit;
    RxLabel1: TcxLabel;
    ActLocalizar: TAction;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Numero: Integer;
  end;

var
  FrmEntraNumeroInteiro: TFrmEntraNumeroInteiro;

implementation

uses Funcoes, Localizar_Vendas, Vendas_Dm;

{$R *.DFM}

procedure TFrmEntraNumeroInteiro.pnlClientResize(Sender: TObject);
begin
     b2.Width := pnlClient.Width - 17;
end;

procedure TFrmEntraNumeroInteiro.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmEntraNumeroInteiro.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmEntraNumeroInteiro.ActOkExecute(Sender: TObject);
begin
     If (EdNumero.Text)<> ''
     then begin
          Numero := StrToInt(TRIM(EdNumero.text));
          Modalresult := mrok ;
     end
     else begin
          MessageDlg('Digite Um Número Válido!', mtError, [mbOK], 0);
          EdNumero.SetFocus ;
     end;
end;

procedure TFrmEntraNumeroInteiro.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
     EDNumero.setfocus ;
end;

procedure TFrmEntraNumeroInteiro.ActLocalizarExecute(Sender: TObject);
begin
  { * * * * * }
  If FrmLocVendas = Nil Then
     Begin
       //
       FrmLocVendas := TFrmLocVendas.Create(Self);
       //
       FrmLocVendas.Showmodal ;

       Numero := ( FrmLocVendas.CampTrecho );

       FrmLocVendas.Free ;
       FrmLocVendas := Nil;

       ModalResult := MrOk ;
     End;
end;

end.
