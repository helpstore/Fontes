 unit MensagemDisPlay_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxDBEdtr, dxDBELib, dxEdLib, dxCntner, dxEditor, dxExEdtr, StdCtrls,
   ExtCtrls, Db, ActnList, cxGraphics, cxControls, cxLookAndFeels,
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
  TFrmMensagemDisplay = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnEnviar: TcxButton;
    Label1: TcxLabel;
    Label3: TcxLabel;
    edDtValidade: TdxDBDateEdit;
    edMensagem: TdxDBEdit;
    edAssunto: TdxDBEdit;
    Actions: TActionList;
    ActEnviar: TAction;
    ActCancelar: TAction;
    Label5: TcxLabel;
    BtnResponder: TcxButton;
    ActResponder: TAction;
    procedure cmbLoginKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActEnviarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActResponderExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Remetente, Destinatario, Assunto, Mensagem, Reservado: String;
    Dt_Envio: TDateTime;
  end;

var
  FrmMensagemDisplay: TFrmMensagemDisplay;

implementation

uses Application_DM,
     Funcoes,
     Main, Mensagem_DM;

{$R *.DFM}

procedure TFrmMensagemDisplay.cmbLoginKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmMensagemDisplay.ActEnviarExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmMensagemDisplay.ActCancelarExecute(Sender: TObject);
begin
  //
  Close;
end;

procedure TFrmMensagemDisplay.FormShow(Sender: TObject);
begin
    Remetente    := DMMensagem.MensagensDESTINATARIO.value ;
    Destinatario := DMMensagem.MensagensREMETENTE.value    ;
    Assunto      := DMMensagem.MensagensASSUNTO.Value      ;
    Reservado    := 'S'                                    ;
    Dt_Envio     := DmApp.Data_Servidor                    ;
    Mensagem     := ''                                     ;

    MessageBeep ( MB_ICONEXCLAMATION  );
end;

procedure TFrmMensagemDisplay.ActResponderExecute(Sender: TObject);
begin
     Repeat
           Mensagem := Inputbox (Assunto, 'Resp', '' );

           If Trim( Mensagem ) = ''
           then
               Showmessage('Digite uma Resposta Válida!');

     until trim( mensagem ) <> '' ;

     Close ;
end;

end.
