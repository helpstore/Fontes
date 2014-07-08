 unit Pagas_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, IBCustomDataSet, IBQuery,
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
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFrmFiltraContasPagar = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Ini: TdxDateEdit;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Fim: TdxDateEdit;
    Actions: TActionList;
    ActFechar: TAction;
    RzBitBtn1: TcxButton;
    ActOk: TAction;
    dsPessoas: TDataSource;
    Label4: TcxLabel;
    CmbPessoa: TdxLookupEdit;
    EdDocumento: TdxEdit;
    Label6: TcxLabel;
    Label2: TcxLabel;
    CmbCentro: TdxLookupEdit;
    DsCentro: TDataSource;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltraContasPagar: TFrmFiltraContasPagar;

implementation

uses  Application_DM,
      Funcoes,
      Financeiro_Dm;

{$R *.DFM}

procedure TFrmFiltraContasPagar.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmFiltraContasPagar.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmFiltraContasPagar.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFiltraContasPagar.ActOkExecute(Sender: TObject);
begin
     Modalresult := mrok ;
end;

procedure TFrmFiltraContasPagar.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
end;

procedure TFrmFiltraContasPagar.IniEnter(Sender: TObject);
begin
     CorFundo( Sender );
end;

procedure TFrmFiltraContasPagar.IniExit(Sender: TObject);
begin
     tiraCorFundo( Sender );
end;

end.
