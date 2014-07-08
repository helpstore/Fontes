unit PosicaoEstoqueGrafico_FRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao_FRel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, IBQuery, ImgList, ppEndUsr, DB,
  IBCustomDataSet, dxmdaset, cxPropertiesStore, ppDB, ppDBPipe,
  ppParameter, ppModule, raCodMod, ppBands, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ActnList, StdCtrls,
  cxButtons, cxGroupBox, cxLabel, ExtCtrls, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, dxDBEdtr, dxDBELib, cxCheckBox, dxCntner,
  dxEditor, dxExEdtr, dxEdLib, cxCurrencyEdit, cxRadioGroup, ppStrtch,
  ppSubRpt, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfRelPosicaoEstoqueGrafico = class(TFRelPadrao)
    GroupBox3: TCXGroupBox;
    rd4: TcxRadioButton;
    rd6: TcxRadioButton;
    rd5: TcxRadioButton;
    rd7: TcxRadioButton;
    gbSituacao: TCXGroupBox;
    rd1: TcxRadioButton;
    rd2: TcxRadioButton;
    rd3: TcxRadioButton;
    gbData: TCXGroupBox;
    Label4: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    edAs3: TcxLabel;
    DataInicial: TdxDateEdit;
    DataFinal: TdxDateEdit;
    ckComplementar: TcxCheckBox;
    gbValor: TCXGroupBox;
    Label1: TcxLabel;
    Label6: TcxLabel;
    edtVlrInicial: TcxCurrencyEdit;
    edtVlrFinal: TcxCurrencyEdit;
    dsFornecedor: TDataSource;
    dsMarca: TDataSource;
    dsSubGrupo: TDataSource;
    dsGrupo: TDataSource;
    dsProdutos: TDataSource;
    ppPosisaoLote: TppDBPipeline;
    dsPosicaoLote: TDataSource;
    ppSubFornecedor: TppSubReport;
    ppChildReport3: TppChildReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel24: TppLabel;
    ppLine7: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel30: TppLabel;
    ppLabel32: TppLabel;
    ppLabel20: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText29: TppDBText;
    ppDBText39: TppDBText;
    ppSubReport3: TppSubReport;
    ppChildReport6: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLine12: TppLine;
    ppLabel73: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLine13: TppLine;
    ppDBCalc4: TppDBCalc;
    ppDBText27: TppDBText;
    ppDBText19: TppDBText;
    ppDBText34: TppDBText;
    ppDBText36: TppDBText;
    ppDBText35: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppLabel33: TppLabel;
    ppLine8: TppLine;
    ppDBText40: TppDBText;
    ppGroupFooterBand5: TppGroupFooterBand;
    raCodeModule3: TraCodeModule;
    ppSubMarcas: TppSubReport;
    ppChildReport1: TppChildReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel9: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel29: TppLabel;
    ppLabel41: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText10: TppDBText;
    ppSubReport2: TppSubReport;
    ppChildReport5: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLine10: TppLine;
    ppLabel63: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine11: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText28: TppDBText;
    ppDBText37: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel10: TppLabel;
    ppLine2: TppLine;
    ppDBText11: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    raCodeModule1: TraCodeModule;
    ppSubSintetico: TppSubReport;
    ppChildReport2: TppChildReport;
    ppHeaderBand4: TppHeaderBand;
    ppLabel13: TppLabel;
    ppLine4: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel21: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel16: TppLabel;
    ppLabel31: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel82: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText20: TppDBText;
    ppSubReport1: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLine5: TppLine;
    ppLabel53: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText57: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    ppLine6: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText15: TppDBText;
    ppDBText30: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppDBText86: TppDBText;
    ppSummaryBand7: TppSummaryBand;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    raCodeModule4: TraCodeModule;
    ppSubGrupos: TppSubReport;
    ppChildReport8: TppChildReport;
    ppHeaderBand8: TppHeaderBand;
    ppLabel114: TppLabel;
    ppLine29: TppLine;
    ppLabel112: TppLabel;
    ppLabel36: TppLabel;
    ppLabel42: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel37: TppLabel;
    ppLabel76: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppDetailBand9: TppDetailBand;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppDBText32: TppDBText;
    ppDBText38: TppDBText;
    SubGrupoLote: TppSubReport;
    ppChildReport25: TppChildReport;
    ppTitleBand18: TppTitleBand;
    ppLabel231: TppLabel;
    ppLabel239: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel43: TppLabel;
    ppLabel34: TppLabel;
    ppLabel233: TppLabel;
    ppLine65: TppLine;
    ppLabel229: TppLabel;
    ppDetailBand26: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppSummaryBand25: TppSummaryBand;
    ppLine3: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText33: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppSummaryBand8: TppSummaryBand;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppLabel128: TppLabel;
    ppLine31: TppLine;
    ppDBText111: TppDBText;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel35: TppLabel;
    ppLine9: TppLine;
    ppDBText31: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    raCodeModule9: TraCodeModule;
    SelProdutos: TIBQuery;
    SelProdutosCODIGO: TIBStringField;
    SelProdutosNOME: TIBStringField;
    SelProdutos_Cod_Nome: TStringField;
    SelGrupo: TIBQuery;
    SelGrupoCODIGO: TIntegerField;
    SelGrupoNOME: TIBStringField;
    SelGrupoSELECIONADO: TIBStringField;
    SelSubGrupo: TIBQuery;
    SelSubGrupoCNPJ: TIBStringField;
    SelSubGrupoGRUPO: TIntegerField;
    SelSubGrupoNOME: TIBStringField;
    SelSubGrupoSUBGRUPO: TIntegerField;
    SelMarca: TIBQuery;
    SelMarcaCNPJ: TIBStringField;
    SelMarcaCODIGO: TIntegerField;
    SelMarcaNOME: TIBStringField;
    SelMarcaSELECIONADO: TIBStringField;
    SelFornecedor: TIBQuery;
    SelFornecedorPESSOA_FJ: TIntegerField;
    SelFornecedorNOME_RAZAO: TIBStringField;
    mtbFiltroGRUPO: TIntegerField;
    mtbFiltroSUBGRUPO: TIntegerField;
    mtbFiltroMARCA: TIntegerField;
    mtbFiltroFORNECEDOR: TIntegerField;
    qryLocalizacao1: TIBQuery;
    qryLocalizacao1CODIGO: TIntegerField;
    qryLocalizacao1CNPJ: TIBStringField;
    qryLocalizacao1DESCRICAO: TIBStringField;
    qryLocalizacao2: TIBQuery;
    qryLocalizacao2CODIGO: TIntegerField;
    qryLocalizacao2CNPJ: TIBStringField;
    qryLocalizacao2DESCRICAO: TIBStringField;
    qryLocalizacao3: TIBQuery;
    qryLocalizacao3CODIGO: TIntegerField;
    qryLocalizacao3CNPJ: TIBStringField;
    qryLocalizacao3DESCRICAO: TIBStringField;
    dsLocalizacao3: TDataSource;
    dsLocalizacao2: TDataSource;
    dsLocalizacao1: TDataSource;
    edAs1: TcxLabel;
    DataBase: TcxDateEdit;
    Label5: TcxLabel;
    Label8: TcxLabel;
    cmbFornecedor: TcxDBLookupComboBox;
    cmbMarca: TcxDBLookupComboBox;
    Label7: TcxLabel;
    Label11: TcxLabel;
    cmbSubGrupo: TcxDBLookupComboBox;
    cmbGrupo: TcxDBLookupComboBox;
    Label12: TcxLabel;
    Label9: TcxLabel;
    cmbProduto: TcxDBLookupComboBox;
    Label14: TcxLabel;
    cbLocalizacao1: TcxDBLookupComboBox;
    cbLocalizacao2: TcxDBLookupComboBox;
    Label15: TcxLabel;
    cbLocalizacao3: TcxDBLookupComboBox;
    Label13: TcxLabel;
    mtbFiltroLOCALIZACAO_1: TIntegerField;
    mtbFiltroLOCALIZACAO_2: TIntegerField;
    mtbFiltroLOCALIZACAO_3: TIntegerField;
    mtbFiltroPRODUTO: TStringField;
    qryRelatorioPRODUTO: TIBStringField;
    qryRelatorioNOME_PRODUTO: TIBStringField;
    qryRelatorioCOD_FORNECEDOR: TIntegerField;
    qryRelatorioFORNECEDOR: TIBStringField;
    qryRelatorioCOD_GRUPO: TIntegerField;
    qryRelatorioGRUPO: TIBStringField;
    qryRelatorioCOD_SUBGRUPO: TIntegerField;
    qryRelatorioSUBGRUPO: TIBStringField;
    qryRelatorioCOD_MARCA: TIntegerField;
    qryRelatorioMARCA: TIBStringField;
    qryRelatorioDATA_MOV: TDateField;
    qryRelatorioORIGEM: TIBStringField;
    qryRelatorioQTDE_ANT: TIBBCDField;
    qryRelatorioQTDE: TIBBCDField;
    qryRelatorioSALDO: TIBBCDField;
    qryRelatorioTIPO_MOV: TIBStringField;
    qryRelatorioUND: TIBStringField;
    qryRelatorioPRC_CUSTO_MED: TIBBCDField;
    qryRelatorioPRC_VENDA: TIBBCDField;
    qryRelatorioCUSTO_AQUISICAO: TIBBCDField;
    qryRelatorioTTL_PRC_CUSTO_MED: TIBBCDField;
    qryRelatorioTTL_PRC_VENDA: TIBBCDField;
    qryRelatorioTTL_CUSTO_AQUISICAO: TIBBCDField;
    qryRelatorioDT_VENCTO_PRC_VENDA: TDateField;
    qryRelatorioLOCALIZACAO_1: TIntegerField;
    qryRelatorioLOCALIZACAO_2: TIntegerField;
    qryRelatorioLOCALIZACAO_3: TIntegerField;
    qryRelatorioLOCALIZACAO_1_NOME: TIBStringField;
    qryRelatorioLOCALIZACAO_2_NOME: TIBStringField;
    qryRelatorioLOCALIZACAO_3_NOME: TIBStringField;
    QryRelLotes: TIBQuery;
    QryRelLotesESTOQUE: TFloatField;
    QryRelLotesPENEIRA: TIBStringField;
    QryRelLotesATESTADO: TIBStringField;
    QryRelLotesGERMINACAO: TFloatField;
    QryRelLotesPUREZA: TFloatField;
    QryRelLotesVALIDADE: TDateTimeField;
    QryRelLotesDT_ULTIMA_COMPRA: TDateTimeField;
    QryRelLotesDT_ULTIMA_VENDA: TDateTimeField;
    QryRelLotesPESO: TFloatField;
    QryRelLotesLOTE: TIBStringField;
    dsLinkPosEst: TDataSource;
    qryRelatorioOUT_CNPJ: TIBStringField;
    procedure ActImprimirExecute(Sender: TObject);
    procedure ppGroupHeaderBand5BeforePrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelPosicaoEstoqueGrafico: TfRelPosicaoEstoqueGrafico;

implementation

uses Relatorios_DM2, Application_DM;

{$R *.dfm}

procedure TfRelPosicaoEstoqueGrafico.ActImprimirExecute(Sender: TObject);
var
  sFiltro, sOrder, tipo, filtro : string;
  codsubgrupo, codgrupo, codfornecedor, codmarca, codlocalizacao1, codlocalizacao2, codlocalizacao3 : integer;
  codproduto,cpl : string;
begin
  inherited;
  filtro := '';
  sfiltro := '';
  codsubgrupo := 0;
  codgrupo := 0;
  codfornecedor := 0;
  codmarca := 0;
  codlocalizacao1 := 0;
  codlocalizacao2 := 0;
  codlocalizacao3 := 0;
  codproduto := '';
  cpl := '';

  //-----------inabilitando todos os sub-reports---------------------//clWindowText
  ppSubSintetico.visible :=  false;
  ppSubMarcas.visible :=  false;
  ppSubFornecedor.visible :=  false;
  ppSubGrupos.visible :=  false;

  if (DataBase.date <= 0) then
  begin
    application.messagebox('Defina a data base','Aviso',mb_ok + mb_iconinformation);
    DataBase.setfocus;
    exit;
  end;

  //-------------------------------------Filtrando as Combos------------------------------------------//
  if (cmbProduto.text <> '') then
  begin
    filtro := 'Produto: '+cmbProduto.text;
    codproduto := mtbFiltroPRODUTO.AsString;
  end
  else
    codproduto := '';


  if (cmbGrupo.text <> '') then
    filtro := filtro + 'Grupo: '+cmbGrupo.text;

  codgrupo := mtbFiltroGRUPO.AsInteger;

  if (cmbSubGrupo.text <> '') then
  begin
    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'SubGrupo: '+cmbSubGrupo.text;
  end;
  codsubgrupo := mtbFiltroSUBGRUPO.AsInteger;

  if (cmbMarca.text <> '') then
  begin
    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'Marca: '+cmbMarca.text;
  end;
  codmarca := mtbFiltroMARCA.AsInteger;

  if (cbLocalizacao1.text <> '') then
  begin
    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'Localização 1: '+cbLocalizacao1.text;
  end;
  codlocalizacao1 := mtbFiltroLOCALIZACAO_1.AsInteger;


  if (cbLocalizacao2.text <> '') then
  begin
    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'Localização 2: '+cbLocalizacao2.text;
  end;
  codlocalizacao2 := mtbFiltroLOCALIZACAO_2.AsInteger;

  if (cbLocalizacao3.text <> '') then
  begin
    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'Localização 3: '+cbLocalizacao3.text;
  end;
  codlocalizacao3 := mtbFiltroLOCALIZACAO_3.AsInteger;

  if (cmbFornecedor.text <> '') then
  begin
    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'Fornecedor: '+cmbFornecedor.text;
  end;
  codfornecedor := mtbFiltroFORNECEDOR.AsInteger;

  if (DataInicial.Date > 0) then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + ' Vencto. Preço Inicial : '+DataInicial.text;
    sfiltro := sfiltro + ' DT_VENCTO_PRC_VENDA >='+stringReplace(QuotedStr(DateToStr(DataInicial.date)),'/','.',[rfReplaceAll]);
  end;

  if (DataFinal.Date > 0) then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + ' Vencto. Preço Final : '+DataInicial.text;
    sfiltro := sfiltro + ' DT_VENCTO_PRC_VENDA <='+stringReplace(QuotedStr(DateToStr(DataFinal.date)),'/','.',[rfReplaceAll]);
  end;

  //------------------------------------Tipo de Baixa (Parcial..)------------------------------------//
  if (filtro <> '') then
    filtro := filtro + ' - ';

  if (rd1.checked) then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    filtro := filtro + 'Situação de Estoque: Existente';
    sfiltro := sfiltro + ' SALDO > 0 ';
  end
  else if (rd2.checked) then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    filtro := filtro + 'Situação de Estoque: Inexistente';
    sfiltro := sfiltro + ' SALDO = 0 ';
  end
  else
    filtro := filtro + 'Situação de Estoque: Ambos';

  //-------------------------------------valores-------------------------------------------------------//
  if (sfiltro <> '') then
    sfiltro := sFiltro + ' and ';

  if (filtro <> '') then
    filtro := filtro + ' - ';

  sfiltro := sfiltro + ' ( saldo between '+StringReplace(edtVlrInicial.Text,'.','',[rfReplaceAll])+' and '+StringReplace(edtVlrFinal.Text,'.','',[rfReplaceAll])+')';
  sfiltro := StringReplace(sfiltro,',','.',[rfReplaceAll]);
  filtro := filtro + 'Qtde em Estoque (UND): '+edtVlrInicial.Text+' à '+edtVlrFinal.text;


  //---------------------------------------------Ordenação-------------------------------------------------//
  //-----------Sintético----------//
  if (rd7.checked) then
  begin
    ppSubSintetico.visible :=  true;
    sOrder := ' order by nome_produto, produto';
    filtro := filtro + ' Opção de Quebra: SINTÉTICO';
  end;

  //-----------Fornecedor----------//
  if (rd4.checked) then
  begin
    ppSubFornecedor.visible :=  true;
    sOrder := ' order by fornecedor, nome_produto, produto';
    filtro := filtro + ' Opção de Quebra: FORNECEDOR';
  end;

  //-----------Marca------------//
  if (rd5.checked) then
  begin
    ppSubMarcas.visible :=  true;
    sOrder := ' order by marca, nome_produto, produto';
    filtro := filtro + ' Opção de Quebra: MARCA';
  end;

  //-----------SubGrupo----------//
  if (rd6.checked) then
  begin
   ppSubGrupos.visible :=  true;
   sOrder := ' order by grupo, subgrupo, nome_produto, produto';
   filtro := filtro + ' Opção de Quebra: SUB GRUPO';
  end;

  if (ckComplementar.checked) then
    cpl := 'S'
  else
    cpl := 'N';

    qryRelatorio.Close;
    if sFiltro <> '' then
      qryRelatorio.sql.Add(' where '+sfiltro+sOrder);

    qryRelatorio.paramByName('cnpj').value := dmApp.Cnpj;
    qryRelatorio.paramByName('data').asDate := DataBase.date;
    qryRelatorio.paramByName('codproduto').value := codproduto;
    qryRelatorio.paramByName('codgrupo').value := codgrupo;
    qryRelatorio.paramByName('codsubgrupo').value := codsubgrupo;
    qryRelatorio.paramByName('codmarca').value := codmarca;
    qryRelatorio.paramByName('codfornecedor').value := codfornecedor;
    qryRelatorio.paramByName('codlocalizacao1').value := codlocalizacao1;
    qryRelatorio.paramByName('codlocalizacao2').value := codlocalizacao2;
    qryRelatorio.paramByName('codlocalizacao3').value := codlocalizacao3;
    qryRelatorio.paramByName('cpl').value := cpl;
    qryRelatorio.Open;

    QryRelLotes.Close;
    QryRelLotes.Open;

  ppLblFiltro.Caption := filtro;
  Report.print;
end;

procedure TfRelPosicaoEstoqueGrafico.ppGroupHeaderBand5BeforePrint(
  Sender: TObject);
begin
  inherited;
  TppGroupHeaderBand(Sender).Visible := true;
end;

procedure TfRelPosicaoEstoqueGrafico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  fRelPosicaoEstoqueGrafico := Nil;
end;

end.
