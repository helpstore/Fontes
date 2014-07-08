 unit Filtra_Baixa_Form;

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
  dxSkinValentine, dxSkinXmas2008Blue, Menus, cxButtons, cxLabel,
  IBCustomDataSet, IBQuery, cxRadioGroup;

type
  TFrmBaixaContas = class(TForm)
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
    Label5: TcxLabel;
    CmbFantasia: TdxLookupEdit;
    Codigo: TdxCurrencyEdit;
    Label2: TcxLabel;
    cbCentroCusto: TdxLookupEdit;
    lblCentroCusto: TcxLabel;
    SelCentro: TIBQuery;
    SelCentroCODIGO: TIntegerField;
    SelCentroNOME: TIBStringField;
    dsCentro: TDataSource;
    rdData1: TcxRadioButton;
    rdData2: TcxRadioButton;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure SelCentroBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmBaixaContas: TFrmBaixaContas;

implementation

uses Cadastros_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFrmBaixaContas.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmBaixaContas.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmBaixaContas.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmBaixaContas.ActOkExecute(Sender: TObject);
begin
     Modalresult := mrok ;
end;

procedure TFrmBaixaContas.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  SelCentro.Close;
  SelCentro.Open;
end;

procedure TFrmBaixaContas.IniEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmBaixaContas.IniExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

procedure TFrmBaixaContas.SelCentroBeforeOpen(DataSet: TDataSet);
begin
  SelCentro.ParamByName('cnpj').value := dmapp.cnpj;
end;

end.
