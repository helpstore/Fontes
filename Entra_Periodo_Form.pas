unit Entra_Periodo_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Buttons, RDprint, Db, ppDB, ppDBPipe, ppParameter,
  ppModule, raCodMod, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache,
  ppComm, ppRelatv, ppProd, ppReport,   cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons;

type
  TFrmEntraPeriodo = class(TForm)
    pnlClient: TPanel;
    Ini: TdxDateEdit;
    Label3: TLabel;
    Label1: TLabel;
    Fim: TdxDateEdit;
    Actions: TActionList;
    ActFechar: TAction;
    ActPreview: TAction;
    Panel2: TPanel;
    Bevel1: TBevel;
    LblTitulo: TLabel;
    RzBitBtn2: TcxButton;
    RzBitBtn1: TcxButton;
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure FimExit(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure ActOkExecute(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FrmEntraPeriodo: TFrmEntraPeriodo;

implementation

uses Funcoes, Financeiro_Dm, Application_DM, Usuarios_DM,
  SelFaturaVendas_Form, Main;

{$R *.DFM}

procedure TFrmEntraPeriodo.ActFecharExecute(Sender: TObject);
begin
   ModalResult := mrCancel;
end;

procedure TFrmEntraPeriodo.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmEntraPeriodo.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
end;

procedure TFrmEntraPeriodo.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmEntraPeriodo.IniExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
     if ini.date < 0 then
     ini.date := date;
end;

procedure TFrmEntraPeriodo.FimExit(Sender: TObject);
begin
  TIRACORFUNDO ( SENDER );

  if fim.date < 0 then
    fim.date := date;
end;

procedure TFrmEntraPeriodo.BtnOkClick(Sender: TObject);
begin
  Modalresult := mrok ;
end;

procedure TFrmEntraPeriodo.FormCreate(Sender: TObject);
begin
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmEntraPeriodo.ActPreviewExecute(Sender: TObject);
begin
  modalResult := mrOk;
end;

procedure TFrmEntraPeriodo.ActOkExecute(Sender: TObject);
begin
  if not(owner = frmMain) then
     exit;

 
end;

end.
