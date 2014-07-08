 unit Mensagem_Form;

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
  TFrmMensagem = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnEnviar: TcxButton;
    btnCancelar: TcxButton;
    Label2: TcxLabel;
    Label1: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    edDtResposta: TdxDBDateEdit;
    edDtValidade: TdxDBDateEdit;
    edMensagem: TdxDBEdit;
    cmbLogin: TdxDBLookupEdit;
    edAssunto: TdxDBEdit;
    DataSource: TDataSource;
    dsUsuarios: TDataSource;
    Actions: TActionList;
    ActEnviar: TAction;
    ActCancelar: TAction;
    cbReservado: TdxDBCheckEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbLoginKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ActEnviarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMensagem: TFrmMensagem;

implementation

uses Mensagem_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFrmMensagem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  DataSource.DataSet.Close;
  dsUsuarios.DataSet.Close;
  //
  Action := caFree;
  FrmMensagem := Nil;
end;

procedure TFrmMensagem.cmbLoginKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmMensagem.FormShow(Sender: TObject);
begin
  //
  Try
    //
    If Not(dsUsuarios.DataSet.Active) Then
       dsUsuarios.DataSet.Open;
    //
    If Not(DataSource.DataSet.Active) Then
       DataSource.DataSet.Open;
    //
    DataSource.DataSet.Append;
  Except
    On E:Exception Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End;
  End;
  //
  cmbLogin.SetFocus;
end;

procedure TFrmMensagem.ActEnviarExecute(Sender: TObject);
begin
  Try
    DataSource.DataSet.Post;
    DMApp.Transaction.CommitRetaining;
  Except
    On E:Exception Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End;
  End;
  //
  Close;
end;

procedure TFrmMensagem.ActCancelarExecute(Sender: TObject);
begin
  //
  DataSource.DataSet.Cancel;
  //
  Close;
end;

procedure TFrmMensagem.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

end.
