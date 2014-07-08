unit GerarLeituras_Form;

interface

uses
  Windows, Messages, SysUtils, Classes,   Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls,   
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
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel,    
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxMemo;

type
  TfrmGerarLeituras = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: tcxButton;
    RzBitBtn2: tcxButton;
    Label2: TLabel;
    Print: TRDprint;
    Actions: TActionList;
    ActPreview: TAction;
    LblStatus: TLabel;
    ANDA: TProgressBar;
    DataRef: tcxDateEdit;
    RzMemo1: tcxmemo;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edCodigoInicialEnter(Sender: TObject);
    procedure edCodigoInicialExit(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  frmGerarLeituras: TfrmGerarLeituras;
  Linha, Pagina: Integer;

implementation

uses  Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TfrmGerarLeituras.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TfrmGerarLeituras.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmGerarLeituras.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmGerarLeituras.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  DataRef.date := date;
end;

procedure TfrmGerarLeituras.edCodigoInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TfrmGerarLeituras.edCodigoInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

end.
