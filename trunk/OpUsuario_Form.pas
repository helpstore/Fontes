  unit OpUsuario_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls,  cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFrmOpUsuario = class(TForm)
    Bevel3: TBevel;
    Panel1: TPanel;
    NBCentro: TNotebook;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Image2: TImage;
    CmbAcao: TComboBox;
    EdUsuario: TEdit;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    EdSenhaAtual: TEdit;
    EdNovaSenha: TEdit;
    EdConfirmar: TEdit;
    NBBotoes: TNotebook;
    Bevel2: TBevel;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    BtnOk: TcxButton;
    BtnCancelar: TcxButton;
    BtnOkSenha: TcxButton;
    RzBitBtn2: TcxButton;
    BtnVoltar: TcxButton;
    Panel2: TPanel;
    RxLabel1: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdUsuarioEnter(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnVoltarClick(Sender: TObject);
    procedure EdSenhaAtualKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnOkSenhaClick(Sender: TObject);
    procedure EdSenhaAtualKeyPress(Sender: TObject; var Key: Char);
    procedure CmbAcaoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure WMNCHitTest(var M: TWMNCHitTest); message WM_NCHitTest;
  end;

var
  FrmOpUsuario: TFrmOpUsuario;

implementation

uses Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

Procedure TFrmOpUsuario.WMNCHitTest(var M: TWMNCHitTest);
Begin
  Inherited;
  If M.Result = htClient Then
     M.Result := htCaption;
End;

procedure TFrmOpUsuario.FormCreate(Sender: TObject);
begin
  // Configuracao da Tela
  If Trim(DMUsuarios.LoginNOME.Value) <> '' Then
     EdUsuario.Text := Trim(DMUsuarios.LoginNOME.Value)
  Else
     EdUsuario.Text := 'Administrador do Sistema';
  //
  CmbAcao.Items[0] := 'Efetuar logoff de ' + UpperCase(DMUsuarios.LoginLOGIN.Value);
  CmbAcao.ItemIndex := 0;
  //
  NBCentro.PageIndex := 0;
  NBBotoes.PageIndex := 0;
end;

procedure TFrmOpUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmOpUsuario := Nil;
end;

procedure TFrmOpUsuario.EdUsuarioEnter(Sender: TObject);
begin
  CmbAcao.SetFocus;
end;

procedure TFrmOpUsuario.BtnOkClick(Sender: TObject);
begin
  // Opcoes
  If CmbAcao.ItemIndex = 0 Then
     Begin
       DMApp.LogOff;
       Close;
     End;
  If CmbAcao.ItemIndex = 1 Then
     Begin
       NBCentro.PageIndex := 1;
       NBBotoes.PageIndex := 1;
       EdSenhaAtual.SetFocus;
     End;
end;

procedure TFrmOpUsuario.BtnVoltarClick(Sender: TObject);
begin
 // Cancelando a mudanca de senha
 NBCentro.PageIndex := 0;
 NBBotoes.PageIndex := 0;
end;

procedure TFrmOpUsuario.EdSenhaAtualKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmOpUsuario.BtnOkSenhaClick(Sender: TObject);
begin
  // Verificando se a senha atual é correta
  If Encrypt(EdSenhaAtual.Text) <> DMUsuarios.LoginSENHA.Value Then
     Begin
       FrmOpUsuario.Hide;
       MessageDlg('Senha atual inválida.' + #13 +
                  'Para a segurança do usuário, será efetuado Logoff !', mtError,
                  [mbOk], 0);
       DMApp.LogOff;
       Close;
     End
  Else
     Begin
       If (Trim(EdNovaSenha.Text) = '') Or (Trim(EdNovaSenha.Text) = '') Then
          Begin
            MessageDlg('O Usuário deve informar e confirmar a nova senha !',MtInformation,[MbOk],0);
            EdNovaSenha.SetFocus;
            Exit;
          End;
       If EdNovaSenha.Text <> EdConfirmar.Text Then
          Begin
            MessageDlg('A Senha não foi confirmada corretamente, verifique !',MtError,[MbOk],0);
            EdNovaSenha.SetFocus;
          End
       Else
          Begin
            // Alterando a Senha do Usuário
            DMUsuarios.Login.Edit;
            DMUsuarios.LoginSENHA.Value := Encrypt(EdNovaSenha.Text);
            DMUsuarios.Login.Post;
            DMApp.Transaction.CommitRetaining;
            Close;
          End;
     End;
end;

procedure TFrmOpUsuario.EdSenhaAtualKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #27 Then
     BtnVoltar.OnClick(BtnVoltar);
end;

procedure TFrmOpUsuario.CmbAcaoKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 Then
   Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFrmOpUsuario.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  If FrmOpUsuario.Tag = 1 Then
     Begin
       CmbAcao.ItemIndex := 1;
       BtnOk.OnClick(BtnOk);
       EdSenhaAtual.Text := '123456';
       EdNovaSenha.SetFocus;
     End;
end;

procedure TFrmOpUsuario.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
