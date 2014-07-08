 unit Filtra_Receber_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, cxGraphics, cxControls,
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
  TFrmFiltraContasReceber = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Ini: TdxDateEdit;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Fim: TdxDateEdit;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    dsPessoas: TDataSource;
    Label4: TcxLabel;
    CmbPessoa: TdxLookupEdit;
    EdDocumento: TdxEdit;
    Label6: TcxLabel;
    RzBitBtn1: TcxButton;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure FimExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltraContasReceber: TFrmFiltraContasReceber;

implementation

uses Application_DM,
     Funcoes,
     Financeiro_Dm;

{$R *.DFM}

procedure TFrmFiltraContasReceber.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmFiltraContasReceber.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmFiltraContasReceber.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFiltraContasReceber.ActOkExecute(Sender: TObject);
begin
     Modalresult := mrok ;
end;

procedure TFrmFiltraContasReceber.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
end;

procedure TFrmFiltraContasReceber.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmFiltraContasReceber.IniExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );

     IF INI.TEXT = '  /  /    '
     THEN
         INI.Date := STRTODATE('01/01/1900');
end;

procedure TFrmFiltraContasReceber.FimExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );

     IF FIM.TEXT = '  /  /    '
     THEN
         FIM.Date := STRTODATE('31/12/9999');
end;

end.
