 unit Comissoes_FRel;

interface               

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, 
  ppDB, ppBands, ppClass, ppDBPipe, ppCtrls, ppVar, ppPrnabl, ppCache,
  ppComm, ppRelatv, ppProd, ppReport,   ppStrtch, ppSubRpt, ppRegion,
    ppParameter, cxPropertiesStore, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFRelComissoesPendendes = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    Label2: TcxLabel;
    cmbVendedor: TdxLookupEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    DsVendedor: TDataSource;
    rptComAnalitico: TppReport;
    ppTitleBand1: TppTitleBand;
    ppShape22: TppShape;
    lblEmpresa: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel62: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape23: TppShape;
    ppSystemVariable6: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppDBText7: TppDBText;
    ppLabel1: TppLabel;
    gbSituacao: TGroupBox;
    Rd4: TRadioButton;
    Rd5: TRadioButton;
    dbVendas: TppDBPipeline;
    dbBaixas: TppDBPipeline;
    dsBaixas: TDataSource;
    dsComissoes: TDataSource;
    dbComissoes: TppDBPipeline;
    dbParametro: TppDBPipeline;
    dsParametro: TDataSource;
    ppLine3: TppLine;
    lblFiltro: TppLabel;
    GroupBox1: TGroupBox;
    SRd1: TRadioButton;
    SRd2: TRadioButton;
    SubVendas: TppSubReport;
    ppChildReport4: TppChildReport;
    ppHeaderBand5: TppHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppShape1: TppShape;
    ppLabel11: TppLabel;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLabel14: TppLabel;
    ppDBText15: TppDBText;
    ppLabel2: TppLabel;
    ppDBText16: TppDBText;
    ppLabel4: TppLabel;
    ppLabel31: TppLabel;
    ppDBText32: TppDBText;
    ppLabel33: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel10: TppLabel;
    ppDBText31: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLine16: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    dsVendedorR: TDataSource;
    dbVendedor: TppDBPipeline;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    Region: TppRegion;
    SubBaixas: TppSubReport;
    ppChildReport1: TppChildReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel5: TppLabel;
    ppLine2: TppLine;
    ppLabel6: TppLabel;
    ppLine4: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppFooterBand2: TppFooterBand;
    SubComissoes: TppSubReport;
    ppChildReport2: TppChildReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine7: TppLine;
    ppLabel20: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLine9: TppLine;
    ppLabel21: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText22: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppLine8: TppLine;
    ppDBCalc4: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    SubParametros: TppSubReport;
    ppChildReport3: TppChildReport;
    ppHeaderBand4: TppHeaderBand;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine6: TppLine;
    ppLabel32: TppLabel;
    ppLine10: TppLine;
    ppLabel30: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText27: TppDBText;
    ppDBText30: TppDBText;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel29: TppLabel;
    ppLine11: TppLine;
    ppDBText28: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLabel28: TppLabel;
    ppDBText34: TppDBText;
    ppLine13: TppLine;
    ppLabel34: TppLabel;
    ppDBText35: TppDBText;
    ppLabel35: TppLabel;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppLabel36: TppLabel;
    ppDBText36: TppDBText;
    ppLine12: TppLine;
    ppLabel37: TppLabel;
    ppDBText37: TppDBText;
    ppLabel38: TppLabel;
    ppDBText38: TppDBText;
    ppLabel39: TppLabel;
    ppDBText39: TppDBText;
    ppLabel40: TppLabel;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppLabel41: TppLabel;
    ppLine14: TppLine;
    ppDBText42: TppDBText;
    ppLabel44: TppLabel;
    ppDBText43: TppDBText;
    ppLabel45: TppLabel;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine5: TppLine;
    ppDBCalc1: TppDBCalc;
    ppSummaryBand3: TppSummaryBand;
    rptSintetico: TppReport;
    dsVendas: TDataSource;
    ppLabel101: TppLabel;
    ppDBText81: TppDBText;
    dbRelSint: TppDBPipeline;
    dsRelSint: TDataSource;
    gbExibir: TGroupBox;
    ck1: TCheckBox;
    ck2: TCheckBox;
    ck3: TCheckBox;
    ppSummaryBand4: TppSummaryBand;
    ppDBText49: TppDBText;
    ppLabel48: TppLabel;
    ppDBText50: TppDBText;
    ppLabel50: TppLabel;
    ppDBText51: TppDBText;
    ppLabel52: TppLabel;
    ppDBText52: TppDBText;
    ppLabel60: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine1: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppDBText29: TppDBText;
    ppDBText53: TppDBText;
    ppLabel61: TppLabel;
    ppLabel63: TppLabel;
    ppDBText54: TppDBText;
    SRd4: TRadioButton;
    SRd3: TRadioButton;
    SRd5: TRadioButton;
    pnlStatus: TppShape;
    ppTitleBand2: TppTitleBand;
    ppShape2: TppShape;
    lblEmpresaSint: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel49: TppLabel;
    lblFiltroSint: TppLabel;
    ppHeaderBand6: TppHeaderBand;
    ppLabel53: TppLabel;
    ppLine15: TppLine;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel3: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    lblSinStatus: TppDBText;
    ppFooterBand10: TppFooterBand;
    ppShape4: TppShape;
    ppSystemVariable2: TppSystemVariable;
    ppSummaryBand6: TppSummaryBand;
    ppLine20: TppLine;
    ppDBCalc8: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText33: TppDBText;
    ppLabel51: TppLabel;
    ppLine17: TppLine;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine23: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    XStatus: TppShape;
    sRd6: TRadioButton;
    stgFRelComissoesPendendes: TcxPropertiesStore;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
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
    procedure SubComissoesPrint(Sender: TObject);
    procedure SubParametrosPrint(Sender: TObject);
    procedure SubBaixasPrint(Sender: TObject);
    procedure Rd5Click(Sender: TObject);
    procedure ppDetailBand6BeforePrint(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer ;
  public
    { Public declarations }
  end;

var
  FRelComissoesPendendes: TFRelComissoesPendendes;
  sqlOriginalSint, sqlOriginalAna: string;

implementation

uses Usuarios_DM, Application_DM, Funcoes, Relatorios_DM2,
  ComissoesVendedor_FRel;

{$R *.DFM}

procedure TFRelComissoesPendendes.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelComissoesPendendes.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelComissoesPendendes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FRelComissoesPendendes := Nil;
end;

procedure TFRelComissoesPendendes.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelComissoesPendendes.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  sqlOriginalSint := dmRelatorios2.qryRelComissaoSint.sql.text;
  sqlOriginalAna := dmRelatorios2.qryRelComVendd.sql.text;

  Try
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

procedure TFRelComissoesPendendes.ActPreviewExecute(Sender: TObject);
var
 sFiltro, Filtro : string;
begin
    sFiltro := '';
    Filtro := '';
    if (cmbVendedor.text <> '') then
    begin
      sFiltro := sFiltro + ' and vdi.vendedor = '+intToStr(cmbVendedor.LookupKeyValue);
      filtro  := ' Vendedor: '+cmbVendedor.text;
    end
    else
      filtro := ' Vendedor: Todos';

    if (sRd6.checked) then
      filtro  := Filtro + ' Status: Todos';


    if (SRd1.checked) then
    begin
      sFiltro := sFiltro + ' and coalesce(cm.status,''A'') = ''A''';
      filtro  := Filtro + ' Status: Abertas';
    end;

    if (SRd2.checked) then
    begin
      sFiltro := sFiltro + ' and cm.status = ''G''';
      filtro  := Filtro + ' Status: Geradas';
    end;

    if (SRd3.checked) then
    begin
      sFiltro := sFiltro + ' and cm.status = ''C''';
      filtro  := Filtro + ' Status: Canceladas';
    end;

    if (SRd4.checked) then
    begin
      sFiltro := sFiltro + ' and cm.status = ''Q''';
      filtro  := Filtro + ' Status: Quitadas';
    end;

    if (SRd5.checked) then
    begin
      sFiltro := sFiltro + ' and cm.status = ''N''';
      filtro  := Filtro + ' Status: Não Comissionados';
    end;

    with dmRelatorios2 do
    begin
      //Sintético
      if (rd4.Checked) then
      begin
        qryRelComissaoSint.close;
        qryRelComissaoSint.sql.text := sqlOriginalSint + sfiltro +' order by cm.cod_vendedor ';
        qryRelComissaoSint.parambyname('cnpj').value := dmApp.cnpj;
        qryRelComissaoSint.open;

        lblEmpresaSint.caption :=  dmApp.nome;
        lblFiltroSint.caption := filtro;

        rptSintetico.print;
      end
      else
      begin
        //-------------------Labels---------------------//
        qryRelComVendd.close;
        qryRelComVendd.sql.text := sqlOriginalAna;
        qryRelComVendd.parambyname('cnpj').value := dmApp.cnpj;
        qryRelComVendd.Sql.add(sfiltro);
        qryRelComVendd.open;

        //----------------Vendas realizadas------------//
        qryRelComVendas.close;
        qryRelComVendas.parambyname('vendedor').value := qryRelComVenddVENDEDOR.asInteger;
        qryRelComVendas.parambyname('cnpj').value := dmApp.cnpj;
        qryRelComVendas.open;

        //----------------Baixas de Receber------------//
        qryRelComBaixas.close;
        qryRelComBaixas.open;

        //----------------Registro de Comissões--------//
        qryRelComissoes.close;
        qryRelComissoes.open;

        //----------------Registro de Comissões--------//
        qryRelParametros.Close;
        qryRelParametros.Open;

        //------------Comissões-------------
        //aberto
        if ck1.checked then
          SubComissoes.visible := true
        else
          SubComissoes.visible := false;

        if ck2.checked then
          SubBaixas.visible := true
        else
          SubBaixas.visible := false;

        if ck3.checked then
          SubParametros.visible := true
        else
          SubParametros.visible := false;

        lblEmpresa.caption :=  dmApp.nome;
        lblFiltro.caption :=  filtro;
        rptComAnalitico.print;
      end;
    end;
end;

procedure TFRelComissoesPendendes.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelComissoesPendendes.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
  tiracorfundo(sender);
end;

procedure TFRelComissoesPendendes.FimExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO ( SENDER );
end;

procedure TFRelComissoesPendendes.SubComissoesPrint(Sender: TObject);
begin
  //torna visiveis os cabeçalhos dos sub-relatorios
  ppHeaderBand3.visible := true;
end;

procedure TFRelComissoesPendendes.SubParametrosPrint(Sender: TObject);
begin
  ppHeaderBand4.visible := true;
end;

procedure TFRelComissoesPendendes.SubBaixasPrint(Sender: TObject);
begin
  ppHeaderBand2.visible := true;
end;

procedure TFRelComissoesPendendes.Rd5Click(Sender: TObject);
begin
  if (rd5.checked) then
    gbExibir.enabled := true
  else
    gbExibir.enabled := false;
end;

procedure TFRelComissoesPendendes.ppDetailBand6BeforePrint(
  Sender: TObject);
begin
   with dmRelatorios2 do
  begin
      if (Trim(qryRelComissaoSintSTATUS.AsString) = 'Quitada') then
        XStatus.Brush.Color := $0088F4EF
      else if (Trim(qryRelComissaoSintSTATUS.AsString) = 'Gerada') then
        XStatus.Brush.Color := $00FFE2A8
      else if (Trim(qryRelComissaoSintSTATUS.asString) = 'Cancelada') then
        XStatus.Brush.Color := $008080FF
      else if (Trim(qryRelComissaoSintSTATUS.value) = 'Aberta') then
        XStatus.Brush.Color := $00CAF0D7
      else if (Trim(qryRelComissaoSintSTATUS.value) = 'Sem Comissão') then
        XStatus.Brush.Color := clGray;
  end;
end;

end.
