 unit MensagemFaturamento_Form;

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
  TFrmMensagemFaturamento = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    RzBitBtn1: TcxButton;
    ActOk: TAction;
    dxDBMemo1: TdxDBMemo;
    DSource: TDataSource;
    Timer1: TTimer;
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
  end;

var
  FrmMensagemFaturamento: TFrmMensagemFaturamento;
  Tempo: Integer;
  
implementation

uses Vendas_Dm, Application_DM, Funcoes;

{$R *.DFM}

procedure TFrmMensagemFaturamento.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmMensagemFaturamento.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmMensagemFaturamento.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmMensagemFaturamento.ActOkExecute(Sender: TObject);
begin
     Modalresult := mrok ;
end;

procedure TFrmMensagemFaturamento.Timer1Timer(Sender: TObject);
begin
     Tempo := Tempo + 1;

     if tempo > DmApp.TEMPOOBSERV
     Then
         Close ;
end;

procedure TFrmMensagemFaturamento.FormCreate(Sender: TObject);
begin
     Tempo := 0;
end;

procedure TFrmMensagemFaturamento.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
end;

end.
