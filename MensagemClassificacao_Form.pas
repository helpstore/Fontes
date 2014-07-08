 unit MensagemClassificacao_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,   dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  dxDBELib, Db, cxGraphics, cxControls, cxLookAndFeels,
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
  TFrmMensagemClassificacao = class(TForm)
    pnlClient: TPanel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    RzBitBtn1: TcxButton;
    ActOk: TAction;
    Timer1: TTimer;
    MEMO: TMemo;
    Label6: TcxLabel;
    EdSenha: TdxEdit;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Senha_Cliente_Pdv: String;
  end;

var
  FrmMensagemClassificacao: TFrmMensagemClassificacao;
  Tempo: Integer;
  
implementation

uses Vendas_Dm, Application_DM, Funcoes;

{$R *.DFM}

procedure TFrmMensagemClassificacao.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmMensagemClassificacao.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmMensagemClassificacao.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmMensagemClassificacao.ActOkExecute(Sender: TObject);
begin
     If EdSenha.Visible
     then begin
          if Senha_Cliente_Pdv <> ''
          then begin
               If EdSenha.Text <> Senha_Cliente_Pdv
               then Begin
                    MessageDlg('Senha Inválida', mtError, [mbOK], 0);
                    EdSenha.SetFocus ;
                    EdSenha.SelectAll ;
               End
               else
                   Modalresult := mrok ;
          end
          else begin
               If EdSenha.Text <> DmApp.PDV_SENHA
               then Begin
                    MessageDlg('Senha Inválida', mtError, [mbOK], 0);
                    EdSenha.SetFocus ;
                    EdSenha.SelectAll ;
               End
               else
                   Modalresult := mrok ;
          end;
     end
     else
         Modalresult := mrok ;
end;

procedure TFrmMensagemClassificacao.Timer1Timer(Sender: TObject);
begin
     Tempo := Tempo + 1;

     if tempo > DmApp.TEMPOOBSERV
     Then
//         Close ;
end;

procedure TFrmMensagemClassificacao.FormCreate(Sender: TObject);
begin
     Tempo := 0;
end;

procedure TFrmMensagemClassificacao.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     If EdSenha.Visible
     then
          EdSenha.SetFocus ;
end;

end.
