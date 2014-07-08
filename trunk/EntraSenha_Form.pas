unit EntraSenha_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,   dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  db, cxGraphics, cxControls, cxLookAndFeels,
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
  TFrmEntraSenha = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    LBLPROMPT: TcxLabel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    EdNumero: TdxMaskEdit;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure EdNumeroExit(Sender: TObject);
    procedure ActOkExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Senha : String;
  end;

var
  FrmEntraSenha: TFrmEntraSenha;

implementation

uses Funcoes, LocalizarProd_DM,
     Application_DM;

{$R *.DFM}

procedure TFrmEntraSenha.pnlClientResize(Sender: TObject);
begin
     b2.Width := pnlClient.Width - 17;
end;

procedure TFrmEntraSenha.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmEntraSenha.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
  If Key = 13
  then begin
     If Senha <> EdNumero.Text
     then begin
          MessageDlg('Senha Incorreta!', mtError, [MbOk], 0);
          EdNumero.SetFocus ;
          EdNumero.SelectAll ;
     end
     Else
         ModalResult := MrOk ;
  end
end;

procedure TFrmEntraSenha.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
     EDNumero.setfocus ;
end;

procedure TFrmEntraSenha.EdNumeroExit(Sender: TObject);
begin
     If Senha <> EdNumero.Text
     then begin
          MessageDlg('Senha Incorreta!', mtError, [MbOk], 0);
          EdNumero.SetFocus ;
          EdNumero.SelectAll ;
     end
     Else
         ModalResult := MrOk ;
end;

procedure TFrmEntraSenha.ActOkExecute(Sender: TObject);
begin
     If Senha <> EdNumero.Text
     then begin
          MessageDlg('Senha Incorreta!', mtError, [MbOk], 0);
          EdNumero.SetFocus ;
          EdNumero.SelectAll ;
          Abort ;
     end ;
end;

end.
