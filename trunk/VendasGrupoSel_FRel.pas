 unit VendasGrupoSel_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls,
    dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, ppBands, ppCache,
  ppClass, ppComm, ppRelatv, ppProd, ppReport, ppDB, ppDBPipe, ppCtrls,
  ppPrnabl, ppVar, ppStrtch, ppSubRpt, IBCustomDataSet, IBQuery,  
  cxPropertiesStore, ppParameter, cxGraphics, cxControls, cxLookAndFeels,
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
  TFRelVendasGruposSel = class(TForm)
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
    LblTitulo: TcxLabel;
    b2: TBevel;
    DsGrupo: TDataSource;
    ActFechar: TAction;
    Label4: TcxLabel;
    CmbVendedor: TdxLookupEdit;
    DsVendedor: TDataSource;
    GRID: TdxDBGrid;
    Label5: TcxLabel;
    CmbCliente: TdxLookupEdit;
    DsCliente: TDataSource;
    rptRelVendasGrupos: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    lblEmpresa: TppLabel;
    ppRelVendaGrupo: TppDBPipeline;
    dsRelVendaGrupo: TDataSource;
    lblfiltro: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine4: TppLine;
    ppLabel13: TppLabel;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText2: TppDBText;
    ppDBText10: TppDBText;
    ppLine3: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppLabel14: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    TipoRel: TRadioGroup;
    rptRelVendasGruposSint: TppReport;
    ppTitleBand2: TppTitleBand;
    ppShape2: TppShape;
    ppLabel3: TppLabel;
    lblEmpresaSint: TppLabel;
    lblfiltroSint: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppHeaderBand2: TppHeaderBand;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppDetailBand2: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText13: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSystemVariable4: TppSystemVariable;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppLine12: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine13: TppLine;
    ppLabel27: TppLabel;
    ppDBText20: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine14: TppLine;
    ppLabel28: TppLabel;
    ppLabel19: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppDBText12: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppLabel25: TppLabel;
    stgFRelVendasGruposSel: TcxPropertiesStore;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDSELECIONADO: TdxDBGridCheckColumn;
    rdStatus: TRadioGroup;
    CmbTipoCusto: TdxPickEdit;
    Label6: TcxLabel;
    ppAppRepresentante: TppDBPipeline;
    dsApp: TDataSource;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
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
    procedure GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelVendasGruposSel: TFRelVendasGruposSel;
  Linha, Pagina: Integer;
  sqlOriginalAna, sqlOriginalSint: string;



implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes, Relatorios_DM2;

{$R *.DFM}

procedure TFRelVendasGruposSel.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

 with dmRelatorios2 do
 begin
  sqlOriginalAna :=  qryRelVendasGrupo.selectsql.text;
 end;
end;

procedure TFRelVendasGruposSel.ActFecharExecute(Sender: TObject);
begin
     Close;
end;

procedure TFRelVendasGruposSel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  dsVendedor.DataSet.Close ;
  dsCliente.DataSet.Close ;
  DsGrupo.DataSet.Close ;

  Action := caFree;
  FRelVendasGruposSel := Nil;
end;

procedure TFRelVendasGruposSel.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelVendasGruposSel.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
    Try

    If Not(dsGrupo.DataSet.Active) Then
       dsGrupo.DataSet.Open;

    If Not(dsVendedor.DataSet.Active) Then
       dsVendedor.DataSet.Open;

    If Not(dsCliente.DataSet.Active) Then
       dsCliente.DataSet.Open;
    CmbTipoCusto.ItemIndex := 0;
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

procedure TFRelVendasGruposSel.ActPreviewExecute(Sender: TObject);
Var
    Cont,vendedor,cliente, tipo_custo : Integer;
    FiltroRel, sSqlFiltro, fechada : string;
begin
    if ((ini.Date <= 0) or (fim.Date <= 0)) then
    begin
      application.messagebox('Defina um intervalo de datas','Aviso',mb_ok + mb_iconinformation);
      ini.SetFocus;
      exit;
    end;

    FiltroRel := 'Período:'+formatDateTime('dd/mm/yyyy',ini.date)+' à '+formatDateTime('dd/mm/yyyy',fim.date);

    //----------Filtro Vendedor---------//
    if cmbVendedor.text <> '' then
    begin
      vendedor := cmbVendedor.Lookupkeyvalue;
      FiltroRel := FiltroRel + ' - Vendedor: '+cmbVendedor.text;
    end
    else
      vendedor := 0;

    FiltroRel := FiltroRel + ' - Tipo Custo: '+CmbTipoCusto.text;


    if cmbcliente.text <> '' then
    begin
      cliente := cmbcliente.Lookupkeyvalue;
      FiltroRel := FiltroRel + ' - Cliente: '+cmbcliente.text;
    end
    else
      cliente := 0;

    if (rdStatus.ItemIndex = 0) then
    begin
      fechada := 'N';
      FiltroRel := FiltroRel + ' - Status de Faturamento: Aberto';
    end
    else
    begin
      fechada := 'S';
      FiltroRel := FiltroRel + ' - Status de Faturamento: Fechado';
    end;

    DMRelatorios2.qryRelVendasGrupo.Close;
    DMRelatorios2.qryRelVendasGrupo.ParamByName('cnpj').value := dmapp.cnpj;
    DMRelatorios2.qryRelVendasGrupo.ParamByName('dataini').value := ini.date;
    DMRelatorios2.qryRelVendasGrupo.ParamByName('datafim').value := fim.date;
    DMRelatorios2.qryRelVendasGrupo.ParamByName('vendedor').value := vendedor;
    DMRelatorios2.qryRelVendasGrupo.ParamByName('cliente').value := cliente;
    DMRelatorios2.qryRelVendasGrupo.ParamByName('fechada').value := fechada;
    DMRelatorios2.qryRelVendasGrupo.ParamByName('tipo_custo').value := CmbTipoCusto.ItemIndex;
    DMRelatorios2.qryRelVendasGrupo.open;

    if (TipoRel.ItemIndex = 1) then
    begin
      lblfiltroSint.caption := FiltroRel;
      lblEmpresaSint.caption := dmapp.nome;
      rptRelVendasGruposSint.print;
    end
    else
    begin
      lblfiltro.caption := FiltroRel;
      lblEmpresa.caption := dmapp.nome;
      rptRelVendasGrupos.print;
    end;


end;


procedure TFRelVendasGruposSel.IniEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TFRelVendasGruposSel.IniExit(Sender: TObject);
begin
  //TROCA A COR PARA A COR SELECIONADA
  TIRACORFUNDO ( SENDER );

  IF (INI.TEXT = '  /  /    ' ) or ( INI.TEXT = '  /  /  ' ) then
    INI.DATE := STRTODATE('01/01/1900') ;
end;

procedure TFRelVendasGruposSel.FimExit(Sender: TObject);
begin
  //TROCA A COR PARA A COR SELECIONADA
  TIRACORFUNDO ( SENDER );

  IF ( FIM.TEXT = '  /  /    ' ) or ( FIM.TEXT = '  /  /  ' ) then
    FIM.DATE := STRTODATE('31/12/9999');
end;

procedure TFRelVendasGruposSel.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
   Book: TBookMark ;
begin
  If (( Key = 13 ) OR ( Key = vk_space ))then
  begin
    Book := DMRelatorios.SelGrupo.GetBookmark ;
    with DMRelatorios do
    begin
      Geral.Close ;
      Geral.Sql.Clear ;
      Geral.Params.Clear ;

      Geral.Params.CreateParam ( FtString , 'E',   PtInput );
      Geral.Params.CreateParam ( FtInteger, 'C',   PtInput );

      Geral.Params.CreateParam ( FtString , 'SEL', PtInput );
      Geral.Sql.Add (' Update Est_Grupos Set Selecionado = :SEL ');

      Geral.Sql.Add (' Where Codigo = :C and CNPJ = :E          ');

      Geral.ParamByName ('E'  ).AsString  := DmApp.Cnpj   ;
      Geral.ParamByName ('C'  ).AsInteger := DMRelatorios.SelGrupoCODIGO.VALUE ;

      IF DMRelatorios.SelGrupoSELECIONADO.VALUE = 'S' then
        Geral.ParamByName ('SEL').AsString  := 'N'
      else
        Geral.ParamByName ('SEL').AsString  := 'S';

      Geral.EXECSQL ;

      DMRelatorios.SelGrupo.close ;
      DMRelatorios.SelGrupo.open  ;

      DMRelatorios.SelGrupo.GotoBookmark ( book );
      DMRelatorios.SelGrupo.FreeBookmark ( BOOK );
    end;
  end;
end;

end.
