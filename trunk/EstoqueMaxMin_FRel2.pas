unit EstoqueMaxMin_FRel2;

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
  dxSkinXmas2008Blue, Menus, ImgList, ppEndUsr, DB, IBCustomDataSet,
  dxmdaset, cxPropertiesStore, ppDB, ppDBPipe, ppParameter, ppModule,
  raCodMod, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ActnList, StdCtrls, cxButtons, cxGroupBox,
  cxLabel, ExtCtrls, cxRadioGroup, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, IBQuery;

type
  TFRelEstoqueMaxMin2 = class(TFRelPadrao)
    mtbFiltroFORNECEDOR: TIntegerField;
    mtbFiltroMARCA: TIntegerField;
    mtbFiltroLOCALIZACAO_1: TIntegerField;
    mtbFiltroLOCALIZACAO_2: TIntegerField;
    mtbFiltroLOCALIZACAO_3: TIntegerField;
    Label2: TcxLabel;
    cmbFornecedor: TcxDBLookupComboBox;
    cmbMarca: TcxDBLookupComboBox;
    Label1: TcxLabel;
    Label15: TcxLabel;
    cbLocalizacao2: TcxDBLookupComboBox;
    cbLocalizacao1: TcxDBLookupComboBox;
    Label14: TcxLabel;
    Label13: TcxLabel;
    cbLocalizacao3: TcxDBLookupComboBox;
    cxGroupBox1: TcxGroupBox;
    rd4: TcxRadioButton;
    rd3: TcxRadioButton;
    rdStatus: TcxRadioGroup;
    dsLocalizacao3: TDataSource;
    qryLocalizacao3: TIBQuery;
    qryLocalizacao3CODIGO: TIntegerField;
    qryLocalizacao3CNPJ: TIBStringField;
    qryLocalizacao3DESCRICAO: TIBStringField;
    dsLocalizacao2: TDataSource;
    qryLocalizacao2: TIBQuery;
    qryLocalizacao2CODIGO: TIntegerField;
    qryLocalizacao2CNPJ: TIBStringField;
    qryLocalizacao2DESCRICAO: TIBStringField;
    dsLocalizacao1: TDataSource;
    qryLocalizacao1: TIBQuery;
    qryLocalizacao1CODIGO: TIntegerField;
    qryLocalizacao1CNPJ: TIBStringField;
    qryLocalizacao1DESCRICAO: TIBStringField;
    SelMarca: TIBQuery;
    SelMarcaCNPJ: TIBStringField;
    SelMarcaCODIGO: TIntegerField;
    SelMarcaNOME: TIBStringField;
    SelMarcaSELECIONADO: TIBStringField;
    SelFornecedor: TIBQuery;
    SelFornecedorPESSOA_FJ: TIntegerField;
    SelFornecedorNOME_RAZAO: TIBStringField;
    dsFornecedor: TDataSource;
    dsMarca: TDataSource;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel13: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    lblEstoque: TppLabel;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppLine2: TppLine;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppLine3: TppLine;
    lbl4: TppDBText;
    lbl7: TppDBText;
    lbl6: TppDBText;
    lbl5: TppDBText;
    lbl3: TppDBText;
    ppDBText3: TppDBText;
    ppLine4: TppLine;
    rdStatusEstoque: TcxRadioGroup;
    qryRelatorioPRD_EST_FISICO: TIBBCDField;
    qryRelatorioPRD_PRODUTO: TIBStringField;
    qryRelatorioPRD_GRUPO: TIBStringField;
    qryRelatorioPRD_SUB_GRUPO: TIBStringField;
    qryRelatorioPRD_DT_ULTCOMPRA: TDateField;
    qryRelatorioPRD_DT_ULTVENDA: TDateField;
    qryRelatorioPRD_ESTOQUE: TIBBCDField;
    qryRelatorioSUJ_COMPRA_MAX: TIBBCDField;
    qryRelatorioSUJ_COMPRA_MIN: TIBBCDField;
    qryRelatorioPRD_ATIVO: TIBStringField;
    qryRelatorioPRD_MAX: TIBBCDField;
    qryRelatorioPRD_MIN: TIBBCDField;
    qryRelatorioPRD_CODIGO: TIBStringField;
    qryRelatorioQTDE_COTACAO: TIBBCDField;
    procedure ActImprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    
  end;

var
  FRelEstoqueMaxMin2: TFRelEstoqueMaxMin2;

implementation

uses Application_DM;

{$R *.dfm}

procedure TFRelEstoqueMaxMin2.ActImprimirExecute(Sender: TObject);
Var
    Tipo, marca, fornecedor, loc1, loc2, loc3, Cod_Grupo, Cod_SubGrupo: integer;
    tipo_calc, str, filtro : String;
begin
  inherited;
  Filtro := '';
//-------------------------------- Estoque  ----------------------------
  case rdStatusEstoque.ItemIndex of
  0 :begin
      Tipo := 1;
      lblEstoque.text := 'Est. Mínimo';
     ppLblFiltro.text := 'Produtos Abaixo do Estoque Mínimo';
    end;
  1:begin
     Tipo := 2;
     lblEstoque.text := 'Est. Máximo';
     ppLblFiltro.text := 'Produtos Acima do Estoque Máximo';
    end;
  2:begin
     Tipo := 3;
     lblEstoque.text := 'Est. Máximo e Mínimo';
     ppLblFiltro.text := 'Todos os Produtos';
    end;
  end;

//-------------------------------- Calculo  ----------------------------
  if rd3.Checked Then
  begin
     Tipo_calc := 'P';
     ppLblFiltro.text := ppLblFiltro.text + ' - Cálculo: Média Periódica';
  end
  else begin
     Tipo_calc := 'S';
     ppLblFiltro.text := ppLblFiltro.text + ' - Cálculo: Simplificado';
  end;

  //-------------------------------- Loc1  ----------------------------
    if (cbLocalizacao1.text <> '' ) then
    begin
      loc1 := mtbFiltroLOCALIZACAO_1.value;
      ppLblFiltro.text := ppLblFiltro.text +  ' - Loc. 1:'+cbLocalizacao1.text;
    end
    else
      loc1 := 0;

    if (cbLocalizacao2.text <> '' ) then
    begin
      loc2 := mtbFiltroLOCALIZACAO_2.value;
      ppLblFiltro.text := ppLblFiltro.text +  ' - Loc. 2:'+cbLocalizacao2.text;
    end
    else
      loc2 := 0;


    if (cbLocalizacao3.text <> '' ) then
    begin
      loc3 := mtbFiltroLOCALIZACAO_3.value;
      ppLblFiltro.text := ppLblFiltro.text +  ' - Loc. 3:'+cbLocalizacao3.text;
    end
    else
      loc3 := 0;

    //-------------------------------- Fornecedor  ----------------------------
    if (cmbFornecedor.text <> '' ) then
    begin
      fornecedor := mtbFiltroFORNECEDOR.value;
      ppLblFiltro.text := ppLblFiltro.text +  ' - Fornecedor:'+cmbfornecedor.text;
    end
    else
    begin
      fornecedor := 0;
      ppLblFiltro.text := ppLblFiltro.text +  ' - Fornecedor: Todos';
    end;
//-------------------------------- Marca  ----------------------------
    if (cmbmarca.text <> '' ) then
    begin
      marca := mtbFiltroMARCA.value;
      ppLblFiltro.text := ppLblFiltro.text +  ' - Marca:'+cmbMarca.text;
    end
    else begin
      marca := 0;
      ppLblFiltro.text := ppLblFiltro.text +  ' - Marca: Todas';
    end;

//-------------------------------- Ativo/Desativo/Todos  ----------------------------
   case rdStatus.ItemIndex of
     0 : begin
           Filtro := ' WHERE PRD_ATIVO = ''S''';
           ppLblFiltro.text := ' Status: Ativo';
         end;
    1 :  begin
           Filtro := ' WHERE PRD_ATIVO = ''N''';
           ppLblFiltro.text := ' Status: Inativo';
         end;
    2 :  begin
           ppLblFiltro.text := ' Status: Todos';
         end;
   end;

    qryRelatorio.close;
    qryRelatorio.sql.text := ' select * from pcd_est_max_min(:cnpj,:tipo,:fornecedor,:marca,:loc1,:loc2,:loc3,:tipo_calc) '+Filtro+' order by prd_grupo, prd_sub_grupo, prd_produto ';
    qryRelatorio.ParamByName('cnpj').value := dmapp.cnpj;
    qryRelatorio.ParamByName('tipo').value := tipo;
    qryRelatorio.ParamByName('fornecedor').value := fornecedor;
    qryRelatorio.ParamByName('tipo_calc').value := tipo_calc;
    qryRelatorio.ParamByName('marca').value := marca;
    qryRelatorio.ParamByName('loc1').value := loc1;
    qryRelatorio.ParamByName('loc2').value := loc2;
    qryRelatorio.ParamByName('loc3').value := loc3;
    qryRelatorio.Open;

    Report.Print;
end;

end.
