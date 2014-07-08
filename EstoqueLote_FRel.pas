unit EstoqueLote_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,   dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, ComCtrls, 
  Mask,      ppDB, ppDBPipe,
  ppParameter, ppModule, raCodMod, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt,
    ppRegion, cxPropertiesStore, TXRB, cxGraphics, cxControls,
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
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TFRelEstoqueLote = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    ActPreview: TAction;
    Panel2: TPanel;
    BtnOk: TcxButton;
    RzBitBtn2: TcxButton;
    GroupBox2: TGroupBox;
    Label9: TcxLabel;
    cmbCliente: TdxLookupEdit;
    gbData: TGroupBox;
    Label4: TcxLabel;
    Label5: TcxLabel;
    edAs1: TcxLabel;
    edAs3: TcxLabel;
    edtVenctoInicial: TcxDateEdit;
    edtVenctoFinal: TcxDateEdit;
    DsClientes: TDataSource;
    rptRelPosicaoTitulo: TppReport;
    ppTitleBand6: TppTitleBand;
    ppShape5: TppShape;
    lblEmpresa: TppLabel;
    ppTituloRel: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand6: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppShape9: TppShape;
    ppSystemVariable3: TppSystemVariable;
    raCodeModule4: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppRelPosicaoTitulo: TppDBPipeline;
    dsRelPosicaoTitulo: TDataSource;
    stgFRelAcerto: TcxPropertiesStore;
    GroupBox1: TGroupBox;
    edtEmissaoFinal: TcxDateEdit;
    Label2: TcxLabel;
    Label3: TcxLabel;
    edtEmissaoInicial: TcxDateEdit;
    Label7: TcxLabel;
    Label8: TcxLabel;
    GroupBox5: TGroupBox;
    Label1: TcxLabel;
    Label6: TcxLabel;
    rd1: TRadioButton;
    rd2: TRadioButton;
    edtDatabase: TcxDateEdit;
    Label10: TcxLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    ppLabel10: TppLabel;
    ppLabel14: TppLabel;
    ppLabel4: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel19: TppLabel;
    ppLine5: TppLine;
    ppDBText2: TppDBText;
    ppLabel20: TppLabel;
    ppLine6: TppLine;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppLine7: TppLine;
    ppDBCalc13: TppDBCalc;
    ppLabel21: TppLabel;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppSummaryBand2: TppSummaryBand;
    ppLine8: TppLine;
    ppDBCalc20: TppDBCalc;
    ppLabel22: TppLabel;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppLine9: TppLine;
    ppDBCalc27: TppDBCalc;
    ppLabel23: TppLabel;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBText1: TppDBText;
    lblFiltro: TppLabel;
    edtVlrJuros: TdxCalcEdit;
    edtVlrDescto: TdxCalcEdit;
    ppSubVendas: TppSubReport;
    ppChildReport25: TppChildReport;
    ppTitleBand18: TppTitleBand;
    ppLine65: TppLine;
    ppLabel231: TppLabel;
    ppLabel232: TppLabel;
    ppLabel229: TppLabel;
    ppLabel230: TppLabel;
    ppLabel233: TppLabel;
    ppLabel239: TppLabel;
    ppDetailBand26: TppDetailBand;
    ppDBText196: TppDBText;
    ppDBText199: TppDBText;
    ppDBText198: TppDBText;
    ppDBText197: TppDBText;
    ppDBText205: TppDBText;
    ppSummaryBand25: TppSummaryBand;
    ppLine66: TppLine;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppLine67: TppLine;
    ppLabel234: TppLabel;
    ppDBText200: TppDBText;
    ppLabel235: TppLabel;
    ppDBText201: TppDBText;
    ppDBText202: TppDBText;
    ppLabel236: TppLabel;
    ppDBText203: TppDBText;
    ppLabel237: TppLabel;
    ppDBText204: TppDBText;
    ppLabel238: TppLabel;
    ppDBText231: TppDBText;
    ppLabel269: TppLabel;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppVendas: TppDBPipeline;
    ppVendasppField1: TppField;
    ppVendasppField2: TppField;
    ppVendasppField3: TppField;
    ppVendasppField4: TppField;
    ppVendasppField5: TppField;
    ppVendasppField6: TppField;
    ppVendasppField7: TppField;
    ppVendasppField8: TppField;
    ppVendasppField9: TppField;
    ppVendasppField10: TppField;
    ppVendasppField11: TppField;
    ppVendasppField12: TppField;
    ppVendasppField13: TppField;
    dsVendas: TDataSource;
    GroupBox3: TGroupBox;
    rd7: TRadioButton;
    rd8: TRadioButton;
    ppDBText18: TppDBText;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActPreviewExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure Rd1Click(Sender: TObject);
    procedure CmbCobradorExit(Sender: TObject);
    procedure CmbCobradorEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rd2Click(Sender: TObject);
    procedure ppDBCalc33Print(Sender: TObject);
    procedure ppDBCalc26Print(Sender: TObject);
    procedure ppDetailBand6BeforePrint(Sender: TObject);
  private
    { Private declarations }
    sqlOriginal : string;
    Historico : boolean;
  public
    { Public declarations }
  end;

var
  FRelEstoqueLote: TFRelEstoqueLote;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm,
     Relatorios_DM, Usuarios_DM, Main, Relatorios_DM2, Receber_FRel2,
  Variants;

{$R *.DFM}

procedure TFRelEstoqueLote.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFRelEstoqueLote.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFRelEstoqueLote.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelEstoqueLote.ActPreviewExecute(Sender: TObject);
var
  sFiltro, sOrder, tipo, filtro : string;
  juros, desconto : real;
begin
  if (edtVenctoInicial.date <= 0) then
  begin
    application.messagebox('Defina a data de vencimento inicial','Aviso',mb_ok + mb_iconinformation);
    edtVenctoInicial.setfocus;
    exit;
  end;

  if (edtVenctoFinal.date <= 0) then
  begin
    application.messagebox('Defina a data de vencimento final','Aviso',mb_ok + mb_iconinformation);
    edtVenctoFinal.setfocus;
    exit;
  end;

  if (edtVenctoFinal.date < edtVenctoInicial.date) then
  begin
    application.messagebox('Intervalo de datas de vencimento inválido','Aviso',mb_ok + mb_iconinformation);
    edtVenctoInicial.setfocus;
    exit;
  end;

  if (edtEmissaoInicial.date <= 0) then
  begin
    application.messagebox('Defina a data de emissão inicial','Aviso',mb_ok + mb_iconinformation);
    edtEmissaoInicial.setfocus;
    exit;
  end;

  if (edtEmissaoFinal.date <= 0) then
  begin
    application.messagebox('Defina a data de emissão final','Aviso',mb_ok + mb_iconinformation);
    edtEmissaoFinal.setfocus;
    exit;
  end;

  if (edtEmissaoFinal.date < edtEmissaoInicial.date) then
  begin
    application.messagebox('Intervalo de datas de emissão inválido','Aviso',mb_ok + mb_iconinformation);
    edtEmissaoInicial.setfocus;
    exit;
  end;

  if (edtDatabase.date < dmApp.DataCaixa) then
  begin
    application.messagebox('A data base para saldo não pode ser inferior a data do caixa selecionado','Aviso',mb_ok + mb_iconinformation);
    edtDatabase.setfocus;
    exit;
  end;
  //-------------------------------------Filtros-------------------------------------------------//
  filtro := 'Pessoa :'+cmbCliente.Text;
  filtro := filtro + ' - Dt. Vencimento: '+DateToStr(edtVenctoInicial.Date)+' à '+DateToStr(edtVenctoFinal.Date);
  filtro := filtro + ' - Dt. Emissão: '+DateToStr(edtEmissaoInicial.Date)+' à '+DateToStr(edtEmissaoFinal.Date);

  if (rd2.Checked) then
  begin
    juros := StrToFloat(edtVlrJuros.Text);
    desconto := StrToFloat(edtVlrDescto.Text);

    filtro := filtro + ' - Juros(%): '+edtVlrJuros.text+' - Descontos(%): '+edtVlrDescto.Text;
  end
  else
  begin //essa opção irá fazer com que o cálculo de juros seja efetuado dentro do procedimento
    juros := -1;
    desconto := -1;
    filtro := filtro + ' - Juros: Padrão - Descontos: Padrão';
  end;

  filtro := filtro + ' - Saldo em: '+DateToStr(edtDatabase.date);

  lblFiltro.Text := filtro;

  if (rd7.Checked) then
    ppSubVendas.Visible := true
  else
    ppSubVendas.Visible := false;

  with dmRelatorios2 do
  begin
    QryRelPosicaoTitulos.Close;
    QryRelPosicaoTitulos.sql.text := sqlOriginal;
    QryRelPosicaoTitulos.paramByName('cnpj').value := dmApp.Cnpj;
    if (cmbCliente.text <> '') then
      QryRelPosicaoTitulos.paramByName('e_pessoa_fj').value := DmFinanceiro.SelPessoasFJCODIGO.Value
    else
      QryRelPosicaoTitulos.paramByName('e_pessoa_fj').value := 0;

    QryRelPosicaoTitulos.paramByName('e_dt_vencto_1').asDate := edtVenctoInicial.date;
    QryRelPosicaoTitulos.paramByName('e_dt_vencto_2').asDate := edtVenctoFinal.date;
    QryRelPosicaoTitulos.paramByName('e_dt_emissao_1').asDate := edtEmissaoInicial.date;
    QryRelPosicaoTitulos.paramByName('e_dt_emissao_2').asDate := edtEmissaoFinal.date;
    QryRelPosicaoTitulos.paramByName('e_juros').value := juros;
    QryRelPosicaoTitulos.paramByName('e_desconto').value := desconto;
    QryRelPosicaoTitulos.paramByName('dtbase').asDate := edtDatabase.Date;
    QryRelPosicaoTitulos.Open;

    //----Vendas------
    qryRelVDRec.close;
    qryRelVDRec.paramByName('cnpj').value := dmApp.Cnpj;
    qryRelVDRec.Open;

  end;

  lblEmpresa.caption := dmapp.nome;
  lblFiltro.caption := filtro;
  rptRelPosicaoTitulo.print;
  dmrelatorios2.QryRelPosicaoTitulos.sql.text := sqlOriginal;
end;

procedure TFRelEstoqueLote.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  cmbCliente.setfocus;

  pnlClient.color := clWhite;
  edAs1.Style.Font.Color := clred;
  edAs3.Style.Font.Color := clred;

  edtDatabase.Date := dmApp.DataCaixa;
end;

procedure TFRelEstoqueLote.IniEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFRelEstoqueLote.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
end;

procedure TFRelEstoqueLote.Rd1Click(Sender: TObject);
begin
 if Rd1.Checked then
 begin
   edtVlrJuros.Enabled := false;
   edtVlrDescto.Enabled := false;
 end
end;

procedure TFRelEstoqueLote.CmbCobradorExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TFRelEstoqueLote.CmbCobradorEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TFRelEstoqueLote.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelEstoqueLote.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  sqlOriginal := dmRelatorios2.QryRelPosicaoTitulos.sql.text;

  with DmFinanceiro do
  begin
    SelPessoasFJ.close;
    SelPessoasFJ.Open;;
    SelPessoasFJ.fetchAll;
  end;
end;

procedure TFRelEstoqueLote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmApp.ZeraCaixaUsuario(owner);
  ACTION := cAFree;
  FRelAcerto := nil;
end;

procedure TFRelEstoqueLote.rd2Click(Sender: TObject);
begin
 if Rd2.Checked then
 begin
   edtVlrJuros.Enabled := true;
   edtVlrDescto.Enabled := true;
 end
end;

procedure TFRelEstoqueLote.ppDBCalc33Print(Sender: TObject);
begin
  if (TppDBCalc(Sender).value < 0) then
    ppLabel23.Text :=  'Total Geral - À Pagar'
  else
    ppLabel23.Text :=  'Total Geral - À Receber';

end;

procedure TFRelEstoqueLote.ppDBCalc26Print(Sender: TObject);
begin
  if (TppDBCalc(Sender).Value < 0) then
    ppLabel22.text := ' Total Pessoa - À Pagar'
  else
    ppLabel22.text := ' Total Pessoa - À Receber';
end;

procedure TFRelEstoqueLote.ppDetailBand6BeforePrint(Sender: TObject);
begin
  if not(rd7.checked) then
   TppDetailBand(Sender).Height := 0.4063
 else
   TppDetailBand(Sender).Height := 0.2000;
end;

end.
