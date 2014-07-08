unit EntraNumeroOrcamento_Ordem_Form;

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
  TFrmEntraNumeroOrcamentoOrdem = class(TForm)
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
  FrmEntraNumeroOrcamentoOrdem: TFrmEntraNumeroOrcamentoOrdem;

implementation

uses Funcoes, Vendas_Dm, Localizar_Orcamentos, Localizar_Orcamentos_Ordem,
  Servicos_DM;

{$R *.DFM}

procedure TFrmEntraNumeroOrcamentoOrdem.pnlClientResize(Sender: TObject);
begin
     b2.Width := pnlClient.Width - 17;
end;

procedure TFrmEntraNumeroOrcamentoOrdem.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmEntraNumeroOrcamentoOrdem.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmEntraNumeroOrcamentoOrdem.ActOkExecute(Sender: TObject);
begin
     If (trim(EdNumero.Text))<> ''
     then begin
          Numero := StrToInt(TRIM(EdNumero.text));
          Modalresult := mrok ;
     end
     else begin
          MessageDlg('Digite Um Número Válido!', mtError, [mbOK], 0);
          EdNumero.SetFocus ;
     end;
end;

procedure TFrmEntraNumeroOrcamentoOrdem.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
     EDNumero.setfocus ;
end;

procedure TFrmEntraNumeroOrcamentoOrdem.ActLocalizarExecute(Sender: TObject);
begin
  { * * * * * }
  If FrmLocOrcamentos_Ordem = Nil
  Then Begin
       //
       FrmLocOrcamentos_Ordem := TFrmLocOrcamentos_Ordem.Create(Self);

       DmServicos.SelOrdens_Servicos_Orc.Close;

       DmServicos.SelOrdens_Servicos_Orc.Open ;
       //
       FrmLocOrcamentos_Ordem.Showmodal ;

       Numero := ( FrmLocOrcamentos_Ordem.CampTrecho );

       FrmLocOrcamentos_Ordem.Free ;

       FrmLocOrcamentos_Ordem := Nil;

       DmServicos.SelOrdens_Servicos_Orc.close ;

       ModalResult := MrOk ;
  End;
end;

end.
