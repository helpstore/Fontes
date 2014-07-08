unit EntraDescontoVenda_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,   dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Mask,  cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel, cxTextEdit, cxCurrencyEdit;

type
  TFrmEntraDesconto = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    LBLPROMPT: TcxLabel;
    Actions: TActionList;
    ActFechar: TAction;
    RzBitBtn1: TcxButton;
    ActOk: TAction;
    EdValor: TcxCurrencyEdit;
    RxLabel1: TcxLabel;
    ActCalculadora: TAction;
    Label1: TcxLabel;
    EdVenda: TcxCurrencyEdit;
    Label2: TcxLabel;
    EdPorcentagem: TcxCurrencyEdit;
    Label3: TcxLabel;
    EdLiquido: TcxCurrencyEdit;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActCalculadoraExecute(Sender: TObject);
    procedure EdValorExit(Sender: TObject);
    procedure EdPorcentagemExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Numero: Real;
  end;

var
  FrmEntraDesconto: TFrmEntraDesconto;

implementation

uses Funcoes;

{$R *.DFM}

procedure TFrmEntraDesconto.pnlClientResize(Sender: TObject);
begin
     b2.Width := pnlClient.Width - 17;
end;

procedure TFrmEntraDesconto.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmEntraDesconto.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmEntraDesconto.ActOkExecute(Sender: TObject);
begin
     If arredonda(EdLiquido.Value,2) > 0
     then begin
          Numero := Arredonda(EdLiquido.Value,2) ;
          Modalresult := mrok ;
     end
     else begin
          MessageDlg('Digite Um Valor Válido!', mtError, [mbOK], 0);
          EdValor.SetFocus ;
     end;
end;

procedure TFrmEntraDesconto.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     EDValor.setfocus ;
end;

procedure TFrmEntraDesconto.ActCalculadoraExecute(Sender: TObject);
begin
     //CALCULADORA COM RESULTADO NO CAMPO
     If FrmEntraDesconto.ActiveControl = EdValor
     Then begin
          EdValor.Value := Calculadora ;
     end;

     //CALCULADORA COM RESULTADO NO CAMPO
     If FrmEntraDesconto.ActiveControl = EdPorcentagem
     Then begin
          EdPorcentagem.Value := Calculadora ;
     end;

     //CALCULADORA COM RESULTADO NO CAMPO
     If FrmEntraDesconto.ActiveControl = EdLiquido
     Then begin
          EdLiquido.Value := Calculadora ;
     end;
end;

procedure TFrmEntraDesconto.EdValorExit(Sender: TObject);
begin
     EdLiquido.Value     := Arredonda(EdVenda.Value - EdValor.Value,2);
     EdPorcentagem.Value := Arredonda((EdVenda.Value - EdValor.Value * 100)/EdVenda.Value,2);
end;

procedure TFrmEntraDesconto.EdPorcentagemExit(Sender: TObject);
begin
     EdValor.Value     := Arredonda( (EdVenda.Value * EdPorcentagem.Value)/100  ,2);
     EdLiquido.Value   := Arredonda(EdVenda.Value - EdValor.Value,2);
end;

end.
