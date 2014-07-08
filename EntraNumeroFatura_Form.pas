unit EntraNumeroFatura_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
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
  TFrmEntraNumeroFatura = class(TForm)
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
  FrmEntraNumeroFatura: TFrmEntraNumeroFatura;

implementation

uses Funcoes, Vendas_Dm, Localizar_Faturas;

{$R *.DFM}

procedure TFrmEntraNumeroFatura.pnlClientResize(Sender: TObject);
begin
     b2.Width := pnlClient.Width - 17;
end;

procedure TFrmEntraNumeroFatura.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmEntraNumeroFatura.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmEntraNumeroFatura.ActOkExecute(Sender: TObject);
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

procedure TFrmEntraNumeroFatura.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
     EDNumero.setfocus ;
end;

procedure TFrmEntraNumeroFatura.ActLocalizarExecute(Sender: TObject);
begin
  { * * * * * }
  If FrmLocFaturas = Nil
  Then Begin
       //
       FrmLocFaturas := TFrmLocFaturas.Create(Self);

       DmVendas.SelOrcamentos.Close;

       DmVendas.SelOrcamentos.Open ;
       //
       FrmLocFaturas.Showmodal ;

       Numero := ( FrmLocFaturas.CampTrecho );

       FrmLocFaturas.Free ;

       FrmLocFaturas := Nil;

       ModalResult := MrOk ;
  End;
end;

end.
