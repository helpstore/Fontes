 unit Filtra_RelTerceiros_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, ComCtrls, 
  Mask,    ppBands, ppStrtch, ppRichTx, ppCtrls, ppVar,
  ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppParameter, ppModule, raCodMod,   cxPropertiesStore,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel,  cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmRelTerceiros = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    ActPreview: TAction;
    Panel2: TPanel;
    BtnOk: TcxButton;
    RzBitBtn2: TcxButton;
    gbData: TGroupBox;
    Label2: TcxLabel;
    Label5: TcxLabel;
    rd3: TRadioButton;
    GroupBox2: TGroupBox;
    CmbFornecedor: TdxLookupEdit;
    Label11: TcxLabel;
    edAs1: TcxLabel;
    edAs3: TcxLabel;
    DataInicial: tcxDateEdit;
    DsTerceiro: TDataSource;
    Label9: TcxLabel;
    cmbMarca: TdxLookupEdit;
    DataFinal: tcxDateEdit;
    rd4: TRadioButton;
    cmbGrupo: TdxLookupEdit;
    Label1: TcxLabel;
    Label3: TcxLabel;
    cmbSubGrupo: TdxLookupEdit;
    Label4: TcxLabel;
    cmbProduto: TdxLookupEdit;
    GroupBox3: TGroupBox;
    CmbTerceiro: TdxLookupEdit;
    Label10: TcxLabel;
    dsRel: TDataSource;
    ppRel: TppDBPipeline;
    dsFornecedor: TDataSource;
    dsMarca: TDataSource;
    dsGrupo: TDataSource;
    dsSubGrupo: TDataSource;
    dsProduto: TDataSource;
    rptRel: TppReport;
    ppTitleBand6: TppTitleBand;
    ppShape5: TppShape;
    lblEmpresa: TppLabel;
    ppLabel62: TppLabel;
    lblFiltro: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppHeaderBand2: TppHeaderBand;
    ppLabel65: TppLabel;
    ppLine5: TppLine;
    ppLabel1: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText59: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppShape9: TppShape;
    ppSystemVariable3: TppSystemVariable;
    ppSummaryBand2: TppSummaryBand;
    raCodeModule4: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLine2: TppLine;
    ppLabel5: TppLabel;
    ppDBText4: TppDBText;
    ppLine3: TppLine;
    ppLabel6: TppLabel;
    ppDBText5: TppDBText;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLine4: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLine6: TppLine;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppLine7: TppLine;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    rd1: TRadioButton;
    rd2: TRadioButton;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    rptRel2: TppReport;
    ppTitleBand1: TppTitleBand;
    ppShape1: TppShape;
    lblEmpresa2: TppLabel;
    ppLabel14: TppLabel;
    lblFiltro2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppHeaderBand1: TppHeaderBand;
    ppLine8: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable4: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLine9: TppLine;
    ppLabel24: TppLabel;
    ppDBText17: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLine10: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppLabel25: TppLabel;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppLine11: TppLine;
    ppLabel26: TppLabel;
    ppDBText18: TppDBText;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLine12: TppLine;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppLabel27: TppLabel;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppLine13: TppLine;
    ppLabel28: TppLabel;
    ppDBText19: TppDBText;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppLine14: TppLine;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppLabel29: TppLabel;
    raCodeModule1: TraCodeModule;
    ppParameterList1: TppParameterList;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppLine15: TppLine;
    ppLabel30: TppLabel;
    ppDBText10: TppDBText;
    ppLabel16: TppLabel;
    ppDBText20: TppDBText;
    ppLine16: TppLine;
    ppLabel31: TppLabel;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppShape2: TppShape;
    ppDBText7: TppDBText;
    ppDBText23: TppDBText;
    ppLabel33: TppLabel;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppDBText24: TppDBText;
    ppLabel35: TppLabel;
    ppShape3: TppShape;
    ppLabel36: TppLabel;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppLine17: TppLine;
    ppDBCalc44: TppDBCalc;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    stgfrmRelTerceiros: TcxPropertiesStore;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActPreviewExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure CmbTerceiroExit(Sender: TObject);
    procedure CmbTerceiroEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmbGrupoExit(Sender: TObject);
    procedure rd2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    filtro : string;
  end;

var
  frmRelTerceiros: TfrmRelTerceiros;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Relatorios_DM, Usuarios_DM;

{$R *.DFM}

procedure TfrmRelTerceiros.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TfrmRelTerceiros.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TfrmRelTerceiros.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmRelTerceiros.ActPreviewExecute(Sender: TObject);
var
  tipodt, tiporel, filtro, sfiltro : STRING;    
begin
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

  if (DataFinal.date < DataInicial.date) then
  begin
    application.messagebox('Intervalo de datas inválido','Aviso',mb_ok + mb_iconinformation);
    DataInicial.setfocus;
    exit;
  end;


  if (cmbTerceiro.text <> '') then
  begin
    filtro := filtro + ' cod_terceiro ='+intToStr(cmbTerceiro.LookupKeyValue);
    sFiltro := 'Terceiro: '+cmbTerceiro.text;
  end;

  if (GroupBox2.enabled) then
  begin
      if (Cmbfornecedor.text <> '') then
      begin
        if (filtro <> '' ) then
        begin
           filtro := filtro + ' and ';
           sFiltro := sFiltro + ' - ';
        end;

        filtro := filtro + ' COD_FORNECEDOR ='+intToStr(CmbFornecedor.LookupKeyValue);
        sFiltro := sFiltro + 'Fornecedor: '+CmbFornecedor.text;
      end;

      if (CmbMarca.text <> '') then
      begin
        if (filtro <> '' ) then
        begin
           filtro := filtro + ' and ';
           sFiltro := sFiltro + ' - ';
        end;

        filtro := filtro + ' COD_MARCA ='+intToStr(CmbMARCA.LookupKeyValue);
        sFiltro := sFiltro + 'Marca: '+CmbMARCA.text;
      end;

      if (CmbGRUPO.text <> '') then
      begin
        if (filtro <> '' ) then
        begin
           filtro := filtro + ' and ';
           sFiltro := sFiltro + ' - ';
        end;

        filtro := filtro + ' COD_GRUPO ='+intToStr(CmbGRUPO.LookupKeyValue);
        sFiltro := sFiltro + 'Grupo: '+CmbGrupo.text;
      end;

      if (CmbSUBGRUPO.text <> '') then
      begin
        if (filtro <> '' ) then
        begin
           filtro := filtro + ' and ';
           sFiltro := sFiltro + ' - ';
        end;

        filtro := filtro + ' COD_SUBGRUPO ='+intToStr(CmbSUBGRUPO.LookupKeyValue);
        sFiltro := sFiltro + 'SubGrupo: '+CmbSubGrupo.text;
      end;

      if (CmbPRODUTO.text <> '') then
      begin
        if (filtro <> '' ) then
        begin
           filtro := filtro + ' and ';
           sFiltro := sFiltro + ' - ';
        end;

        filtro := filtro + ' COD_PRODUTO ='+intToStr(CmbPRODUTO.LookupKeyValue);
        sFiltro := sFiltro + 'Produto: '+CmbProduto.text;
      end;

  end;
  //----------------------------------Filtrando pela Data-------------------------------//

  // Dt. de Vencimento
  if (filtro <> '' ) then
    sFiltro := sFiltro + ' - ';

  if Rd3.Checked then
  begin
    tipodt := 'C';
    sFiltro := sFiltro + 'Dt. Caixa: '+DateToStr(DataInicial.date)+' à '+DateToStr(DataFinal.Date);
  end
  else
  begin
    tipodt := 'V';
    sFiltro := sFiltro + 'Dt. Vencto: '+DateToStr(DataInicial.date)+' à '+DateToStr(DataFinal.Date);
  end;

  //----------------------------------tipo do relatorioc-------------------------------//
  // Dt. de Vencimento
  if Rd1.Checked then
    tiporel := 'S'
  else
    tiporel := 'A';


  if (filtro <> '') then
    filtro := ' where '+filtro;

  with dmRelatorios do
  begin
    qryRelVendasTerceiros.close;
    qryRelVendasTerceiros.sql.text := 'select * from pcd_venda_terceiro(:cnpj,:data1,:data2,:tipo,:tipo_dt)'+filtro
                                      +' order by cod_terceiro, cliente, data_vd, codigo ';

    qryRelVendasTerceiros.parambyname('CNPJ').value := dmapp.cnpj;
    qryRelVendasTerceiros.parambyname('DATA1').AsDate := DataInicial.Date;
    qryRelVendasTerceiros.parambyname('DATA2').AsDate := DataFinal.Date;
    qryRelVendasTerceiros.parambyname('TIPO').value := tiporel;
    qryRelVendasTerceiros.parambyname('TIPO_DT').value := tipodt;
    qryRelVendasTerceiros.open;


    if (tiporel = 'A') then
    begin
      lblEmpresa2.caption := dmapp.nome;
      lblFiltro2.caption := sFiltro;
      rptRel2.print
    end
    else
    begin
      lblEmpresa.caption := dmapp.nome;
      lblFiltro.caption := sFiltro;
      rptRel.print;
    end;
  end;


end;

procedure TfrmRelTerceiros.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  with dmCadastros do
  begin
    Terceiros.close;
    Terceiros.open;
    Terceiros.FetchAll;

    SelFornecedor.close;
    SelFornecedor.open;
    SelFornecedor.FetchAll;

    Marcas.close;
    Marcas.open;
    Marcas.fetchAll;

    Grupos.close;
    Grupos.open;
    Grupos.fetchAll;

    Subgrupos.DataSource := frmRelTerceiros.DsGrupo;

    Subgrupos.close;
    Subgrupos.open;
    SubGrupos.fetchAll;

    Produtos.close;
    Produtos.open;
    Produtos.fetchAll;
  end;

  cmbTerceiro.setfocus;

  pnlClient.color := clWhite;
  edAs1.Style.Font.Color := clred;
  edAs3.Style.Font.Color := clred;
end;

procedure TfrmRelTerceiros.IniEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TfrmRelTerceiros.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
end;

procedure TfrmRelTerceiros.CmbTerceiroExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TfrmRelTerceiros.CmbTerceiroEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TfrmRelTerceiros.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmRelTerceiros.cmbGrupoExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
  if cmbGrupo.text <> '' then
  begin
    cmbSubGrupo.Enabled := true;
    cmbSubGrupo.SetFocus;
  end
  else
    cmbSubGrupo.Enabled := false;
end;

procedure TfrmRelTerceiros.rd2Click(Sender: TObject);
begin
  if (rd2.checked) then
    GroupBox2.enabled := true
  else
    GroupBox2.enabled := false;
end;

procedure TfrmRelTerceiros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmRelTerceiros := Nil;
end;

procedure TfrmRelTerceiros.FormCreate(Sender: TObject);
begin
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

end;

end.
