  unit Rel_ContratoObra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, Db, ppProd, ppClass, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, ppCtrls, ppVar, ppPrnabl, ppBands, ppCache, dxCntner,
  dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, StdCtrls,   ComCtrls,
  Mask,  ppStrtch, ppSubRpt, ppMemo, IBCustomDataSet, IBQuery,
  ppModule, raCodMod,   cxPropertiesStore,  ppEndUsr, ppParameter,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxControls,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel, cxButtons,       
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxCurrencyEdit,
  cxCheckBox, ppRegion, IBSQL;

type
  TFRel_ContratoObra = class(TForm)
    Panel2: TPanel;
    BtnOk: TcxButton;
    RzBitBtn2: TcxButton;
    DsClientes: TDataSource;
    dsContrato: TDataSource;
    qryContratosRel: TIBQuery;
    rptContratoObra: TppReport;
    ppContratos: TppDBPipeline;
    ppLayout: TppDBPipeline;
    dsLayout: TDataSource;
    Designer: TppDesigner;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    qryContratosRelCODIGO: TIntegerField;
    qryContratosRelDESCRICAO: TIBStringField;
    qryContratosRelVALOR: TFloatField;
    qryContratosRelDATA: TDateTimeField;
    qryContratosRelDATA_INICIO: TDateTimeField;
    qryContratosRelDATA_VENCTO: TDateTimeField;
    qryContratosRelPESSOA_FJ: TIBStringField;
    qryContratosRelOBS: TIBStringField;
    qryContratosRelATIVO: TIBStringField;
    qryContratosRelNOME_RAZAO: TIBStringField;
    QryExtratoFinanceiro: TIBQuery;
    QryExtratoFinanceiroCNPJ: TIBStringField;
    QryExtratoFinanceiroEMPRESA: TIBStringField;
    QryExtratoFinanceiroCODIGO: TIntegerField;
    QryExtratoFinanceiroDT_LANCTO: TDateField;
    QryExtratoFinanceiroDT_VENCTO: TDateField;
    QryExtratoFinanceiroPSA_CODIGO: TIntegerField;
    QryExtratoFinanceiroPSA_NOME: TIBStringField;
    QryExtratoFinanceiroVALOR: TIBBCDField;
    QryExtratoFinanceiroVLR_PARCIAL: TIBBCDField;
    QryExtratoFinanceiroSALDO: TIBBCDField;
    QryExtratoFinanceiroDT_PAGTO: TDateField;
    QryExtratoFinanceiroVLR_BAIXA: TIBBCDField;
    QryExtratoFinanceiroDOCTO: TIBStringField;
    QryExtratoFinanceiroPARCELA: TIBStringField;
    QryExtratoFinanceiroTIPO: TIBStringField;
    QryExtratoFinanceiroCOD_PAG_REC: TIntegerField;
    dsExtratoFinanceiro: TDataSource;
    pnlClient: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    GroupBox1: TGroupBox;
    Label11: TcxLabel;
    Label9: TcxLabel;
    cmbContrato: TdxLookupEdit;
    cmbCliente: TdxLookupEdit;
    GroupBox6: TGroupBox;
    rdInativo: TRadioButton;
    rdAtivo: TRadioButton;
    rdAmbos: TRadioButton;
    gbData: TGroupBox;
    Label4: TcxLabel;
    Label5: TcxLabel;
    edAs1: TcxLabel;
    edAs3: TcxLabel;
    DataInicial: TcxDateEdit;
    DataFinal: TcxDateEdit;
    qryVendasPeriodo: TIBQuery;
    dbExtratoFinanceiro: TppDBPipeline;
    dsVendasAna: TDataSource;
    ppVendasAna: TppDBPipeline;
    qryVendasPeriodoCODIGO: TIntegerField;
    qryVendasPeriodoTOTAL: TIBBCDField;
    qryVendasPeriodoTOTAL_BRUTO: TIBBCDField;
    qryVendasPeriodoDESCONTO: TIBBCDField;
    qryVendasPeriodoDATA: TDateTimeField;
    qryVendasPeriodoDATA_CX: TDateField;
    qryVendasPeriodoFECHADA: TIBStringField;
    qryVendasPeriodoHISTORICO: TIBStringField;
    qryVendasPeriodoPESSOA_FJ: TIntegerField;
    qryVendasPeriodoUSUARIO: TIntegerField;
    qryVendasPeriodoNATUREZA: TIntegerField;
    qryVendasPeriodoNUM_NF: TIntegerField;
    qryVendasPeriodoNUM_CUPOM: TIntegerField;
    qryVendasPeriodoOBSERVACAO: TIBStringField;
    qryVendasPeriodoTIPO_MOV: TIBStringField;
    qryVendasPeriodoNOME_CONSUMIDOR: TIBStringField;
    qryVendasPeriodoVENDEDOR: TIntegerField;
    qryVendasPeriodoCANCELADA: TIBStringField;
    qryVendasPeriodoPRD_COD: TIBStringField;
    qryVendasPeriodoPRD_NOME: TIBStringField;
    qryVendasPeriodoPRD_UNIDADE: TIBStringField;
    qryVendasPeriodoPRD_SUBUNIDADE: TIntegerField;
    qryVendasPeriodoPRD_QUANTIDADE: TIBBCDField;
    qryVendasPeriodoPRD_PRC_UNITARIO: TIBBCDField;
    qryVendasPeriodoPRD_DESCONTO: TIBBCDField;
    qryVendasPeriodoPRD_TOTAL: TIBBCDField;
    qryVendasPeriodoVLR_VISTA: TIBBCDField;
    qryVendasPeriodoVLR_PRAZO: TIBBCDField;
    qryVendasPeriodoDOCTO: TIBStringField;
    qryVendasPeriodoCNPJ: TIBStringField;
    qryVendasPeriodoEMPRESA: TIBStringField;
    SelCliente: TIBQuery;
    SelClienteCPF_CGC: TIBStringField;
    SelClienteNOME_RAZAO: TIBStringField;
    dsSelContrato: TDataSource;
    qryContratos: TIBQuery;
    qryContratosCODIGO: TIntegerField;
    qryContratosDESCRICAO: TIBStringField;
    ckConfigurar: TcxCheckBox;
    QryExtratoFinanceiroHISTORICO: TIBStringField;
    QryExtratoFinanceiroHISTORICO_BX: TIBStringField;
    QryExtratoFinanceiroCENTRO_CUSTO: TIBStringField;
    qryContratosRelSALDO_CONTRATO: TIBBCDField;
    qryContratosRelSALDO_PREVISTO: TFloatField;
    ckCons: TcxCheckBox;
    ckProv: TcxCheckBox;
    ActMarcaExibicao: TIBSQL;
    SelEmpresa: TIBQuery;
    SelEmpresaCTR_EXIBE_REL_CONSOLIDADO: TIBStringField;
    SelEmpresaCTR_EXIBE_REL_PROVISIONADO: TIBStringField;
    QryExtratoFinanceiroMOV: TIBStringField;
    qryContratosRelVINCULO_CONTRATO: TIntegerField;
    qryContratosRelPCT_INSS: TFloatField;
    qryContratosRelPCT_IRPJ: TFloatField;
    qryContratosRelPCT_ISS: TFloatField;
    qryContratosRelPCT_PIS: TFloatField;
    qryContratosRelPCT_CSLL: TFloatField;
    qryContratosRelPCT_COFINS: TFloatField;
    qryContratosRelBASE_INSS_MUN: TFloatField;
    qryContratosRelBASE_INSS_NAC: TFloatField;
    qryContratosRelBASE_ISS_MUN: TFloatField;
    qryContratosRelBASE_ISS_NAC: TFloatField;
    ppTitleBand12: TppTitleBand;
    ppShape1: TppShape;
    ppShape6: TppShape;
    ppTituloRel: TppLabel;
    lblEmpresa: TppLabel;
    lblFiltro: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel25: TppLabel;
    ppShape3: TppShape;
    ppLabel7: TppLabel;
    ppDetailBand18: TppDetailBand;
    ppShape9: TppShape;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText16: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    SubFinanceiro: TppSubReport;
    ppChildReport1: TppChildReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape8: TppShape;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    dbValorExtrato: TppDBText;
    ppDBText12: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppShape13: TppShape;
    ppLabel14: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel6: TppLabel;
    ppLine3: TppLine;
    ppDBText3: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppLabel15: TppLabel;
    ppLine1: TppLine;
    ppDBText1: TppDBText;
    ppGroupFooterBand5: TppGroupFooterBand;
    raCodeModule1: TraCodeModule;
    SubFaturamentos: TppSubReport;
    ppChildReport2: TppChildReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape4: TppShape;
    ppLabel12: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText79: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppShape5: TppShape;
    ppLabel27: TppLabel;
    SaldoFaturamento: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel16: TppLabel;
    ppDBText14: TppDBText;
    ppLine4: TppLine;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppShape12: TppShape;
    ppShape7: TppShape;
    ppShape11: TppShape;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppDBText13: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLabel13: TppLabel;
    raCodeModule2: TraCodeModule;
    ppRegion1: TppRegion;
    ppShape14: TppShape;
    ppLabel18: TppLabel;
    ppDBText4: TppDBText;
    ppShape15: TppShape;
    ppLabel23: TppLabel;
    ppDBText11: TppDBText;
    ppFooterBand7: TppFooterBand;
    ppShape80: TppShape;
    ppSystemVariable13: TppSystemVariable;
    ppDBText8: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppShape10: TppShape;
    ppDBText15: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    raCodeModule3: TraCodeModule;
    qryVendasPeriodoPRD_TOTAL_LIQ: TIBBCDField;
    procedure BtnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure cmbClienteExit(Sender: TObject);
    procedure cmbClienteEnter(Sender: TObject);
    procedure cmbEquipamentoExit(Sender: TObject);
    procedure cmbClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    function CompletaWhere(sFiltro, texto:string):string;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppDBText4Print(Sender: TObject);
    procedure ppDBCalc1Print(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    sqlOriginal : string;
  public
    sFiltro, sOrder, tipo, filtro : string;
    { Public declarations }
  end;

var
  FRel_ContratoObra: TFRel_ContratoObra;

implementation

uses Servicos_DM, Application_DM, Usuarios_DM, Funcoes, Relatorios_DM,
  Cadastros_DM, Financeiro_Dm, Cadastros_Dm2;

{$R *.DFM}

procedure TFRel_ContratoObra.BtnOkClick(Sender: TObject);
var
  cons, prov, sOrder, tpdata, vlrIni, vlrFim, kmIni, kmFim, tpaIni, tpaFim, tprIni, tprFim : string;
begin
  sFiltro := '';
  filtro := '';

  filtro := 'Filtro: '+DateToStr(DataInicial.Date)+' à '+DateToStr(DataFinal.Date);

  if ckProv.checked then
  begin
    filtro := filtro + ' - Exibir Mov. Provisionado: Sim';
    prov := 'S';
  end
  else
  begin
    filtro := filtro + ' - Exibir Mov. Provisionado: Não';
    prov := 'N';
  end;

  if ckCons.checked then
  begin
    filtro := filtro + ' - Exibir Mov. Consolidado: Sim';
    cons := 'S';
  end
  else
  begin
    filtro := filtro + ' - Exibir Mov. Consolidado: Não';
    cons := 'N';
  end;

  ActMarcaExibicao.parambyname('prov').value := prov;
  ActMarcaExibicao.parambyname('cons').value := cons;
  ActMarcaExibicao.ExecQuery;
  
  //--------------------------------- Filtro Cliente -------------------------------------------
  if (cmbCliente.text <> '') then
  begin
    sfiltro := CompletaWhere(sFiltro,' ct.pessoa_fj ='+QuoTedStr(cmbCliente.LookupKeyValue));
    filtro := filtro + ' - Cliente: '+cmbCliente.text;
  end;

  //------------------------------------ Contrato Individual-------------------------------------
  if (cmbContrato.text <> '') then
  begin
    sfiltro := CompletaWhere(sFiltro,' ct.codigo ='+IntToStr(cmbContrato.LookupKeyValue));
    filtro := filtro + ' - Contrato: ' + cmbContrato.text;
  end;

  if (rdAtivo.Checked) then
  begin
    sfiltro := CompletaWhere(sFiltro,' coalesce(ct.ativo,''S'') = ''S''');
    filtro := filtro + ' - Status Contrato: Ativo';
  end
  else if (rdInativo.Checked) then
  begin
    sfiltro := CompletaWhere(sFiltro,' coalesce(ct.ativo,''S'') = ''N''');
    filtro := filtro + ' - Status Contrato: Inativo';
  end
  else
    filtro := filtro + ' - Status Contrato: Ambos';

  //----------------------------- Filtro da Data Inicial --------------------------------------
  if (DataInicial.date <= 0) then
  begin
    application.messagebox('Defina a data inicial','Aviso',mb_ok + mb_iconinformation);
    DataInicial.setfocus;
    exit;
  end;

  if (DataFinal.date <= 0) then
  begin
    application.messagebox('Defina a data final','Aviso',mb_ok + mb_iconinformation);
    DataFinal.setfocus;
    exit;
  end;

  if (DataInicial.date > 0) then
      sfiltro := CompletaWhere(sFiltro,' ct.data_inicio >= '''+FormatDateTime('mm/dd/yyyy',DataInicial.date)+'''');

  if (DataFinal.date > 0) then
     sfiltro := CompletaWhere(sFiltro,' ct.data_inicio <= '''+FormatDateTime('mm/dd/yyyy',DataFinal.date)+'''');

  filtro := filtro + ' - Data: '+FormatDateTime('mm/dd/yyyy',DataInicial.date)+ ' à '+FormatDateTime('mm/dd/yyyy',DataFinal.date);

  //-------------------------------------------------------------------------------------------

  qryContratosRel.Close;
  qryContratosRel.SQL.Text := sqlOriginal+sFiltro+sOrder;
  qryContratosRel.Open;

  QryExtratoFinanceiro.Close;
  QryExtratoFinanceiro.Open;

  qryVendasPeriodo.Close;
  qryVendasPeriodo.Open;

  if (ckConfigurar.Checked) then
  begin
    dmApp.ConfigurarRelatorio(rptContratoObra,Designer,FRel_ContratoObra.Caption);
    exit;
  end;

  dmCadastros2.CONFIG_REL_GRAFICO.close;
  dmCadastros2.CONFIG_REL_GRAFICO.parambyname('relatorio').value := FRel_ContratoObra.Caption;
  dmCadastros2.CONFIG_REL_GRAFICO.Open;

  rptContratoObra.Template.DatabaseSettings.Name := FRel_ContratoObra.Caption;
  rptContratoObra.Template.LoadFromDatabase;

  //isso precisa ser encapsulado ao relatorio
  lblEmpresa.caption := dmApp.nome;
  lblFiltro.caption := Filtro;
  rptContratoObra.Print;
end;

procedure TFRel_ContratoObra.FormCreate(Sender: TObject);
begin
//  IniciaComponentes ( Self as TForm );
  SelCliente.Close;
  SelCliente.Open;

  qryContratos.Close;
  qryContratos.Open;

  sqlOriginal := qryContratosRel.sql.text;
end;

procedure TFRel_ContratoObra.RzBitBtn2Click(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFRel_ContratoObra.cmbClienteExit(Sender: TObject);
begin
  TiraCorFundo ( Sender );
end;

procedure TFRel_ContratoObra.cmbClienteEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TFRel_ContratoObra.cmbEquipamentoExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TFRel_ContratoObra.cmbClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

function TFRel_ContratoObra.CompletaWhere(sFiltro, texto: string): string;
begin
  if sFiltro = '' then
     texto := ' where ' + texto
  else
     texto := sFiltro + ' and ' + texto;
  Result := texto;
end;

procedure TFRel_ContratoObra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FRel_ContratoObra := Nil;
end;

procedure TFRel_ContratoObra.ppHeaderBand1BeforePrint(Sender: TObject);
begin
   TppHeaderBand(Sender).visible := true;
end;

procedure TFRel_ContratoObra.ppDBText4Print(Sender: TObject);
begin
   if TppDBText(Sender).FieldValue >= 0 then
     TppDBText(Sender).Font.Color := clGreen
   else
     TppDBText(Sender).Font.Color := clRed;

end;

procedure TFRel_ContratoObra.ppDBCalc1Print(Sender: TObject);
begin
  if TppDBCalc(Sender).Value >= 0 then
     TppDBCalc(Sender).Font.Color := clGreen
   else
     TppDBCalc(Sender).Font.Color := clRed;
end;

procedure TFRel_ContratoObra.FormShow(Sender: TObject);
begin
  SelEmpresa.Close;
  SelEmpresa.Open;

  ckCons.Checked := (SelEmpresaCTR_EXIBE_REL_CONSOLIDADO.value = 'S');
  ckProv.Checked := (SelEmpresaCTR_EXIBE_REL_PROVISIONADO.value = 'S');

end;

end.
