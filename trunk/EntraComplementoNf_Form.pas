unit EntraComplementoNf_Form;

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
  TFrmEntraComplementoNf = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    LBLPROMPT: TcxLabel;
    Actions: TActionList;
    ActFechar: TAction;
    RzBitBtn1: TcxButton;
    ActOk: TAction;
    Label1: TcxLabel;
    EdDocumento: TdxEdit;
    EDCOMPLEMENTO: TdxEdit;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EDCOMPLEMENTOEnter(Sender: TObject);
    procedure EDCOMPLEMENTOExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEntraComplementoNf: TFrmEntraComplementoNf;

implementation

uses Funcoes, Localizar_Vendas, Vendas_Dm;

{$R *.DFM}

procedure TFrmEntraComplementoNf.pnlClientResize(Sender: TObject);
begin
     b2.Width := pnlClient.Width - 17;
end;

procedure TFrmEntraComplementoNf.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmEntraComplementoNf.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmEntraComplementoNf.ActOkExecute(Sender: TObject);
begin
     If (EDCOMPLEMENTO.Text) <> ''
     then begin
          Modalresult := mrok ;
     end
     else begin
          MessageDlg('Digite Um Complemento Para Este Produto!', mtError, [mbOK], 0);
          EDCOMPLEMENTO.SetFocus ;
     end;
end;

procedure TFrmEntraComplementoNf.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
     EDCOMPLEMENTO.setfocus ;
end;

procedure TFrmEntraComplementoNf.EDCOMPLEMENTOEnter(Sender: TObject);
begin
     CorFundo( Sender );
end;

procedure TFrmEntraComplementoNf.EDCOMPLEMENTOExit(Sender: TObject);
begin
     TiraCorFundo( Sender );
end;

end.
