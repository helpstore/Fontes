unit Entra_Dados_Autorizado_Form;

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
  TFrmEntraDadosAutorizado = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Label3: TcxLabel;
    Actions: TActionList;
    ActFechar: TAction;
    RzBitBtn1: TcxButton;
    ActOk: TAction;
    EdNome: TdxEdit;
    Label1: TcxLabel;
    EdEndereco: TdxEdit;
    EdCpf: TdxMaskEdit;
    Label2: TcxLabel;
    Label5: TcxLabel;
    EdCidade: TdxEdit;
    CmbEstado: TdxPickEdit;
    Label6: TcxLabel;
    Label7: TcxLabel;
    EdRg: TdxEdit;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdCnpjChange(Sender: TObject);
    procedure EdNomeEnter(Sender: TObject);
    procedure EdNomeExit(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdEnderecoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEntraDadosAutorizado: TFrmEntraDadosAutorizado;

implementation

uses Funcoes;

{$R *.DFM}

procedure TFrmEntraDadosAutorizado.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmEntraDadosAutorizado.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmEntraDadosAutorizado.ActOkExecute(Sender: TObject);
begin
     Modalresult := mrok ;
end;

procedure TFrmEntraDadosAutorizado.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
end;

procedure TFrmEntraDadosAutorizado.EdCnpjChange(Sender: TObject);
begin
     If EdCpf.Text <> '   .   .   -  '
     then begin
          EdCpf.Clear ;
     end;
end;

procedure TFrmEntraDadosAutorizado.EdNomeEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmEntraDadosAutorizado.EdNomeExit(Sender: TObject);
begin
     IF TRIM( EDNOME.TEXT ) = ''
     THEN
         ActOk.EXECUTE ;     

     TIRACORFUNDO ( SENDER );
end;

procedure TFrmEntraDadosAutorizado.EdNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmEntraDadosAutorizado.EdEnderecoExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

end.
