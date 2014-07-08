 unit VendasMarca_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls,
  ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppCtrls,
  ppVar, ppBands, ppPrnabl, ppCache, ppParameter, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFRelVendasMarcas = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Ini: TdxDateEdit;
    Fim: TdxDateEdit;
    Label2: TcxLabel;
    cmbMarca: TdxLookupEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    ActFechar: TAction;
    Label4: TcxLabel;
    CmbVendedor: TdxLookupEdit;
    DsVendedor: TDataSource;
    DsMarca: TDataSource;
    rptVendaMarca: TppReport;
    ppVendaMarca: TppDBPipeline;
    rptSintetico: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape3: TppShape;
    lblEmpresaSint: TppLabel;
    ppLabel15: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    lblFiltroSint: TppLabel;
    ppShape4: TppShape;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText19: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable4: TppSystemVariable;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppLabel27: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText20: TppDBText;
    ppLine9: TppLine;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine10: TppLine;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel28: TppLabel;
    ckTipo: TdxCheckEdit;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    lblEmpresa: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    lblFiltro: TppLabel;
    ppShape2: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel1: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable2: TppSystemVariable;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc5: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLine2: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText10: TppDBText;
    ppLine1: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine3: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel13: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel12: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLabel18: TppLabel;
    ppDBText15: TppDBText;
    ppDBCalc6: TppDBCalc;
    ppDBText16: TppDBText;
    ppLabel19: TppLabel;
    ppLine8: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ckSintetico: TdxCheckEdit;
    ppLabel20: TppLabel;
    ppDBText17: TppDBText;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText18: TppDBText;
    ppDBText21: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure FimExit(Sender: TObject);
  private
    { Private declarations }
    Marca, SubMarca: Integer;
  public
//    procedure ImprimePeso;
    { Public declarations }
  end;

var
  FRelVendasMarcas: TFRelVendasMarcas;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelVendasMarcas.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

end;

procedure TFRelVendasMarcas.ActFecharExecute(Sender: TObject);
begin
     Close;
end;

procedure TFRelVendasMarcas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  dsVendedor.DataSet.Close ;
  DsMarca.DataSet.Close ;

  Action := caFree;
  FRelVendasMarcas := Nil;
end;

procedure TFRelVendasMarcas.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelVendasMarcas.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
    Try

    If Not(dsMarca.DataSet.Active) Then
       dsMarca.DataSet.Open;

    If Not(dsVendedor.DataSet.Active) Then
       dsVendedor.DataSet.Open;

  Except
    On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         Exit;
       End
    Else
       Begin
         ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
         Exit;
       End;
  End;
end;

procedure TFRelVendasMarcas.ActPreviewExecute(Sender: TObject);
Var
    sFiltroSql,SUBUNIDADE, Filtro : string;
    Cont, Cod_Marca: Integer;
    UltProd, NomeProd, Unidade : String;
    Quantidade, Total_Produto, Total_Marca, Total_Geral, Quantidade_Geral: Real;
    STR: String;

    DESCONTO, UNITARIO, TOTAL: REAL;
begin
  //------------------------------------------------filtros-------------------------------------------------//
  //------data--------//
  If (Ini.date <= 0 ) Or (Fim.date  <= 0)Then
  begin
    MessageDlg('Informe o Período', MtError, [MbOk],0);
    exit;
  end;
  Filtro := 'Período:'+formatdatetime('dd/mm/yy',ini.date)+ ' à '+ formatdatetime('dd/mm/yy',fim.date);

  //------marca--------//
  if cmbMarca.text <> '' then
  begin
    if Filtro <> '' then
      filtro := Filtro + ' - ';
    Filtro := Filtro + 'Marca:'+cmbMarca.text;

    if sFiltroSql <> '' then
      sFiltroSql := sFiltroSql + ' and ';

    sFiltroSql := sFiltroSql + ' COD_MARCA =' +intToStr(cmbMarca.LookupKeyValue);
  end;

  //------vendedor--------//
  if cmbVendedor.text <> '' then
  begin
    if sFiltroSql <> '' then
      sFiltroSql := sFiltroSql + ' and ';

    sFiltroSql := sFiltroSql + ' VENDEDOR =' +intToStr(cmbVendedor.LookupKeyValue);

    if Filtro <> '' then
      filtro := Filtro + ' - ';
    Filtro := Filtro + 'Vendedor:'+CmbVendedor.text;
  end;

  //------Somente vendas fechadas-----//
  if (not CkTipo.checked) and (CkTipo.visible) then
  begin
    if Filtro <> '' then
      filtro := Filtro + ' - ';
    Filtro := Filtro + 'Vendas Fechadas';

    if sFiltroSql <> '' then
      sFiltroSql := sFiltroSql + ' and ';

    sFiltroSql := sFiltroSql + 'FECHADA =  ''S''';
  end
  else
  if cktipo.checked then
  begin
    if Filtro <> '' then
      filtro := Filtro + ' - ';
    Filtro := Filtro + 'Vendas Abertas e Fechadas';
  end;
  //----------------------------------------------------------------------------------------------------------//

  DMRelatorios.Fat_VendasMarca.Close ;
  DMRelatorios.Fat_VendasMarca.SQL.text := 'select  * from PCD_REL_VENDAS_MARCA(:CNPJ,:DTINI,:DTFIM)';
  if sFiltroSql <> '' then
    DMRelatorios.Fat_VendasMarca.SQL.Add (' where '+sFiltroSql);
  DMRelatorios.Fat_VendasMarca.SQL.Add (' order by marca, CODIGO_VD');
  DMRelatorios.Fat_VendasMarca.ParamByName('CNPJ').asString:= DMApp.Cnpj;
  DMRelatorios.Fat_VendasMarca.ParamByName('DTINI').asDate := Ini.Date;
  DMRelatorios.Fat_VendasMarca.ParamByName('DTFIM').asDate := Fim.Date;
  DMRelatorios.Fat_VendasMarca.open;

  If CkSintetico.Checked then
  begin
   lblfiltroSint.text := Filtro;
   lblEmpresaSint.text := dmApp.nome;
   rptSintetico.print;
  end
  else
  begin
    lblfiltro.text := Filtro;
    lblEmpresa.text := dmApp.nome;
    rptVendaMarca.print;
  end;

end;

procedure TFRelVendasMarcas.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelVendasMarcas.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
  TIRACORFUNDO ( SENDER );

  IF INI.date <= 0 then
    INI.DATE := STRTODATE('01/01/1900') ;

end;

procedure TFRelVendasMarcas.FimExit(Sender: TObject);
begin
  //TROCA A COR PARA A COR SELECIONADA
  TIRACORFUNDO ( SENDER );

  IF FIM.date <= 0 THEN
    FIM.DATE := STRTODATE('31/12/9999') ;

end;


end.
