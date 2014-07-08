unit Identificacao_Form;

interface

uses
  Windows, Messages, SysUtils,  Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, DBCtrls, DB,
   Mask,    IBCustomDataSet, IBTable, cxPropertiesStore,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel,   cxTextEdit;

type
  TFrmIdent = class(TForm)
    Bevel1: TBevel;
    Panel1: TPanel;
    RxLabel1: TcxLabel;
    Bevel2: TBevel;
    LblLogin: TcxLabel;
    LblSenha: TcxLabel;
    Image1: TImage;
    Image3: TImage;
    Image2: TImage;
    BtnCancelar: TcxButton;
    BtnOk: TcxButton;
    EdLogin: TcxTextEdit;
    EdSenha: TcxTextEdit;
    Image4: TImage;
    stgFrmIdent: TcxPropertiesStore;
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdLoginKeyPress(Sender: TObject; var Key: Char);
    procedure BtnOkClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EdLoginEnter(Sender: TObject);
    procedure EdLoginExit(Sender: TObject);
  private
    { Private declarations }
    Tentativas: Integer;
  public
    { Public declarations }
    Codigo: Integer;
    Procedure WMNCHitTest(var M: TWMNCHitTest); message WM_NCHitTest;
  end;

var
  FrmIdent: TFrmIdent;

implementation

uses Application_DM, Cadastros_DM, Funcoes;

{$R *.DFM}


Procedure TFrmIdent.WMNCHitTest(var M: TWMNCHitTest);
Begin
  Inherited;
  If M.Result = htClient Then
     M.Result := htCaption;
End;

procedure TFrmIdent.EdCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  If (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmIdent.EdLoginKeyPress(Sender: TObject; var Key: Char);
begin
// Rotina para a Tecla ESC
If Key = #27 Then
   BtnCancelar.OnClick(BtnCancelar);

// Rotina para a Tecla ENTER
If Key = #13 Then
   If ((Sender as TcxTextEdit).Tag = 1) And (Trim(EdLogin.Text) <> '') And (Trim(EdSenha.Text) <> '') Then
      BtnOk.OnClick(BtnOk);
end;

procedure TFrmIdent.BtnOkClick(Sender: TObject);
begin
  // Caso naum tenha especificado algum dos campos, sair da rotina

  If (Trim(EdLogin.Text) = '') And (Trim(EdSenha.Text) ='') Then Exit;

  // Desabilitando os componentes
  LblLogin.Enabled := False;
  EdLogin.Enabled := False;
  LblSenha.Enabled := False;
  EdSenha.Enabled := False;
  If DMApp.Autenticar(EdLogin.Text, Encrypt(EdSenha.Text)) Then
  begin
       //Registrando eventos
       With DmApp do
       begin
            if SIS_MSG_INTERNA = 'S'
            THEN BEGIN
                 Eventos.UnRegisterEvents ;
                 Eventos.Events.Clear ;
                 Eventos.Events.Add ('NovaMensagem_' + EdLogin.text);
                 Eventos.Events.Add ('ExcluirMensagem_' + EdLogin.text);
                 Eventos.RegisterEvents ;
            END;
       end;
       Close // se o Login ocorreu corretamente
  end
  Else
     Begin
       MessageDlg('Login inválido, verifique Usuário e Senha !',MtError,[MbOk],0);
       Inc(Tentativas);
     End;
  If Tentativas >= 3 Then
     Begin
       MessageDlg('Houve falha na tentativa de Login, contate o Administrador do Sistema !',MtError,[MbOk],0);
       Close;
     End;
  // Habilitando os componentes
  LblLogin.Enabled := True;
  EdLogin.Enabled := True;
  LblSenha.Enabled := True;
  EdSenha.Enabled := True;
  EdLogin.SetFocus;
end;

procedure TFrmIdent.BtnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmIdent.FormClose(Sender: TObject; var Action: TCloseAction);
var
  DirUser : string;
begin
  stgFrmIdent.StoreTo(true);
  Action := caFree;
  FrmIdent := Nil;
end;

procedure TFrmIdent.FormCreate(Sender: TObject);
var
  dia, mes, ano : integer;
  FMyStream: TMemoryStream;
  DirUser : String;
begin
  DirUser := GetEnvironmentVariable('USERPROFILE');
  // Later I load the Stream from database
  stgFrmIdent.StorageName := (DirUser+'\'+stgFrmIdent.Name);
  if FileExists(DirUser+'\'+stgFrmIdent.Name) then
    stgFrmIdent.RestoreFrom;

  Tentativas := 0;

end;

procedure TFrmIdent.EdLoginEnter(Sender: TObject);
begin
  (Sender as TcxTextEdit).Style.Color := clWhite;
end;

procedure TFrmIdent.EdLoginExit(Sender: TObject);
begin
  (Sender as TcxTextEdit).Style.Color := $00DCE1E4;
end;

end.
