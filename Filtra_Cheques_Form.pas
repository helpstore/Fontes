 unit Filtra_Cheques_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, ppDB, ppDBPipe, ppBands,
  ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
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
  TFiltra_Cheques_Frm = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    RzBitBtn1: TcxButton;
    ActOk: TAction;
    Dsource: TDataSource;
    Label4: TcxLabel;
    CmbConta: TdxLookupEdit;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure CmbContaEnter(Sender: TObject);
    procedure CmbContaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Filtra_Cheques_Frm: TFiltra_Cheques_Frm;

implementation

uses Application_DM, Listagens_DM, Financeiro_Dm, Funcoes;

{$R *.DFM}

procedure TFiltra_Cheques_Frm.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFiltra_Cheques_Frm.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFiltra_Cheques_Frm.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFiltra_Cheques_Frm.ActOkExecute(Sender: TObject);
begin
     DmListagens     := TDmListagens.Create(Self);
     DmListagens.IMPRIMECHEQUE (CmbConta.Lookupkeyvalue );
     DmListagens.Free ;
     DmListagens := Nil ;
     Modalresult := mrok ;
end;

procedure TFiltra_Cheques_Frm.CmbContaEnter(Sender: TObject);
begin
     CorFundo( Sender );
end;

procedure TFiltra_Cheques_Frm.CmbContaExit(Sender: TObject);
begin
     TiraCorFundo( Sender );
end;

end.
