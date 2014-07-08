 unit ConfigFin_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, dxBar, Buttons, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus,
  dxSkinsdxBarPainter, cxClasses, cxButtons, cxLabel;

type
  TFrmConfigFinanceira = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    ActCalculadora: TAction;
    BarMgr: TdxBarManager;
    BtnFechar: TdxBarButton;
    edtCotacao: TdxDBCalcEdit;
    Label1: TcxLabel;
    edtQtde: TdxDBCalcEdit;
    Label2: TcxLabel;
    edtDataBase: TdxDBDateEdit;
    Label3: TcxLabel;
    btnMoeda: TcxButton;
    cmbMoeda: TdxDBLookupEdit;
    Label6: TcxLabel;
    dsMoeda: TDataSource;
    RxLabel1: TcxLabel;
    DataSource: TDataSource;
    ActLookup: TAction;
    ActCotacao: TAction;
    btnCotacao: TdxBarButton;
    procedure ActFecharExecute(Sender: TObject);
    procedure DataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActCalculadoraExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pagoEnter(Sender: TObject);
    procedure HISTORICOExit(Sender: TObject);
    procedure DataExit(Sender: TObject);
    procedure DescontoPorcExit(Sender: TObject);
    procedure DescontoExit(Sender: TObject);
    procedure TotalExit(Sender: TObject);
    procedure btnMoedaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbMoedaEnter(Sender: TObject);
    procedure edtDataBaseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtQtdeExit(Sender: TObject);
    procedure edtCotacaoExit(Sender: TObject);
    procedure edtDataBaseExit(Sender: TObject);
    procedure ActLookupExecute(Sender: TObject);
    procedure ActCotacaoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Valor_Total: Extended ;
  end;

var
  FrmConfigFinanceira: TFrmConfigFinanceira;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm, Vendas_Form,
  Dados_Desconto_Form, Vendas_DM2, Moedas_Form, Main, Financeiro_Dm2;

{$R *.DFM}

procedure TFrmConfigFinanceira.ActFecharExecute(Sender: TObject);
begin
  Modalresult := mrCancel ;
end;

procedure TFrmConfigFinanceira.DataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmConfigFinanceira.ActCalculadoraExecute(Sender: TObject);
begin
  //CALCULADORA COM RESULTADO NO CAMPO
  If FrmConfigFinanceira.ActiveControl = edtCotacao then
    Datasource.DataSet.FieldByName('IDX_COTACAO').value := Calculadora ;

  if FrmConfigFinanceira.ActiveControl = edtQtde then
    Datasource.DataSet.FieldByName('IDX_QTDE').value := Calculadora ;

end;

procedure TFrmConfigFinanceira.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  DmFinanceiro2.SelMoedasCotacoes.Close;
  DmFinanceiro2.SelMoedasCotacoes.ParamByName('data_caixa').asDate := DmApp.DataCaixa;
  DmFinanceiro2.SelMoedasCotacoes.Open;
end;

procedure TFrmConfigFinanceira.pagoEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmConfigFinanceira.HISTORICOExit(Sender: TObject);
begin

     TIRACORFUNDO( SENDER );
end;

procedure TFrmConfigFinanceira.DataExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

procedure TFrmConfigFinanceira.DescontoPorcExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

procedure TFrmConfigFinanceira.DescontoExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

procedure TFrmConfigFinanceira.TotalExit(Sender: TObject);
Var
   V: REAL ;
begin
     TIRACORFUNDO( SENDER );

end;

procedure TFrmConfigFinanceira.btnMoedaClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMoedas', False);

  FrmMoedas := TFrmMoedas.Create(Self);

  FrmMoedas.ShowModal;
  FrmMoedas.Free;
  FrmMoedas := Nil;
  Datasource.DataSet.FieldByName('COD_INDEXADOR').value := FrmMain.Codigo_Int ;
  DmFinanceiro.Moeda.Close;
  DmFinanceiro.Moeda.Open;
  cmbMoeda.SetFocus;
end;

procedure TFrmConfigFinanceira.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  total1, total2:real;
begin
  edtQtde.SetFocus;
  if ( (trim(edtCotacao.Text) <> '') and (trim(edtQtde.text) <> '')) then
  begin
    if ((strToFloat(edtCotacao.Text) > 0) or (strToFloat(edtQtde.text) > 0)) then
    begin
      total1 := (strToFloat(edtCotacao.Text) * strToFloat(edtQtde.text));
      total2 := Datasource.DataSet.FieldByName('_Total_Geral_IDX').asFloat;
      if (arredonda(total1,2) <> arredonda(total2,2)) then
      begin
        Application.messagebox('Configuração financeira do faturamento está inconsistente','Aviso',mb_ok+mb_iconerror);
        abort;
        exit;
      end;
    end;
  end;
  FrmConfigFinanceira := nil;
end;

procedure TFrmConfigFinanceira.cmbMoedaEnter(Sender: TObject);
begin
  CorFundo ( Sender );
end;

procedure TFrmConfigFinanceira.edtDataBaseKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0)
end;

procedure TFrmConfigFinanceira.edtQtdeExit(Sender: TObject);
begin
  if (DataSource.DataSet.FieldByName('IDX_QTDE').value > 0) then
    DataSource.DataSet.FieldByName('IDX_COTACAO').value  := (DataSource.DataSet.FieldByName('_Total_Geral_IDX').Value/DataSource.DataSet.FieldByName('IDX_QTDE').Value);
end;

procedure TFrmConfigFinanceira.edtCotacaoExit(Sender: TObject);
begin
  if (DataSource.DataSet.FieldByName('IDX_COTACAO').value > 0) then
    DataSource.DataSet.FieldByName('IDX_QTDE').value  := (DataSource.DataSet.FieldByName('_Total_Geral_IDX').value/DataSource.DataSet.FieldByName('IDX_COTACAO').value);
end;

procedure TFrmConfigFinanceira.edtDataBaseExit(Sender: TObject);
begin
   TIRACORFUNDO( SENDER );
end;

procedure TFrmConfigFinanceira.ActLookupExecute(Sender: TObject);
begin
 btnMoeda.OnClick(btnMoeda);
end;

procedure TFrmConfigFinanceira.ActCotacaoExecute(Sender: TObject);
begin
  DataSource.DataSet.FieldByName('IDX_COTACAO').asFloat  := dmFinanceiro2.SelMoedasCotacoesCOTACAO.Value;
end;

end.
