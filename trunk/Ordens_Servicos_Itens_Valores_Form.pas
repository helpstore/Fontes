  unit Ordens_Servicos_Itens_Valores_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBELib, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel;

type
  TFrmEntraValorOs_Itens = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Label3: TcxLabel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    Label1: TcxLabel;
    EdValor: TdxDBCalcEdit;
    DataSource: TDataSource;
    dxDBCalcEdit1: TdxDBCalcEdit;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure ValorEnter(Sender: TObject);
    procedure ValorExit(Sender: TObject);
    procedure ValorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdValorExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEntraValorOs_Itens: TFrmEntraValorOs_Itens;

implementation

uses Funcoes, Servicos_DM;

{$R *.DFM}

procedure TFrmEntraValorOs_Itens.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmEntraValorOs_Itens.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmEntraValorOs_Itens.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmEntraValorOs_Itens.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
end;

procedure TFrmEntraValorOs_Itens.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmEntraValorOs_Itens.IniExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmEntraValorOs_Itens.ValorEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmEntraValorOs_Itens.ValorExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmEntraValorOs_Itens.ValorKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmEntraValorOs_Itens.EdValorExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
     MODALRESULT := MROK ;
end;

end.
