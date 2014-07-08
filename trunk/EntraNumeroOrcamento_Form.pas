unit EntraNumeroOrcamento_Form;

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
  TFrmEntraNumeroOrcamento = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    RzBitBtn1: TcxButton;
    ActOk: TAction;
    RxLabel1: TcxLabel;
    ActLocalizar: TAction;
    EdNumero: TdxMaskEdit;
    LBLPROMPT: TcxLabel;
    edtCFOP: TdxMaskEdit;
    Label1: TcxLabel;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Numero: Integer;
    CFOP : Integer;
  end;

var
  FrmEntraNumeroOrcamento: TFrmEntraNumeroOrcamento;

implementation

uses Funcoes, Vendas_Dm, Localizar_Orcamentos, Application_DM;

{$R *.DFM}

procedure TFrmEntraNumeroOrcamento.pnlClientResize(Sender: TObject);
begin
     b2.Width := pnlClient.Width - 17;
end;

procedure TFrmEntraNumeroOrcamento.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmEntraNumeroOrcamento.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmEntraNumeroOrcamento.ActOkExecute(Sender: TObject);
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

     If (edtCFOP.Text) <> '' then
     begin
       CFOP := StrToInt(TRIM(edtCFOP.text));
       Modalresult := mrok ;
     end
     else
     begin
       MessageDlg('Digite Um Número Válido!', mtError, [mbOK], 0);
       edtCFOP.SetFocus ;
     end;
end;

procedure TFrmEntraNumeroOrcamento.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
     EDNumero.setfocus ;
end;

procedure TFrmEntraNumeroOrcamento.ActLocalizarExecute(Sender: TObject);
begin
  { * * * * * }
  If FrmLocOrcamentos = Nil Then
  Begin
       //
       FrmLocOrcamentos := TFrmLocOrcamentos.Create(Self);

       DmVendas.SelOrcamentos.Close;

       DmVendas.SelOrcamentos.Open ;
       //
       FrmLocOrcamentos.Showmodal ;

       Numero := ( FrmLocOrcamentos.CampTrecho );
       EdNumero.text := intToStr(Numero);

       FrmLocOrcamentos.Free ;
       FrmLocOrcamentos := Nil;
  end;
end;

procedure TFrmEntraNumeroOrcamento.FormCreate(Sender: TObject);
begin
  edtCFOP.text := IntToStr(DmApp.PDVNATUREZA);
end;

end.
