 unit ComissoesTerceiros_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, 
  ppDB, ppBands, ppClass, ppDBPipe, ppCtrls, ppVar, ppPrnabl, ppCache,
  ppComm, ppRelatv, ppProd, ppReport,   ppStrtch, ppSubRpt, ppRegion,
    ppParameter, cxPropertiesStore, cxGraphics, cxControls,
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
  TFRelComissoesTerceiros = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    Label2: TcxLabel;
    cmbAgente: TdxLookupEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    rptComTerceiro: TppReport;
    ppTitleBand1: TppTitleBand;
    ppShape22: TppShape;
    lblEmpresa: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel62: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape23: TppShape;
    dbVendas: TppDBPipeline;
    dbBaixas: TppDBPipeline;
    dsBaixas: TDataSource;
    dbItens: TppDBPipeline;
    lblFiltro: TppLabel;
    GroupBox1: TGroupBox;
    SRd1: TRadioButton;
    SRd3: TRadioButton;
    SubItens: TppSubReport;
    ppChildReport4: TppChildReport;
    ppHeaderBand5: TppHeaderBand;
    ppDetailBand5: TppDetailBand;
    dsVendas: TDataSource;
    SRd2: TRadioButton;
    sRd4: TRadioButton;
    stgFRelComissoesTerceiros: TcxPropertiesStore;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDBText7: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    dsItens: TDataSource;
    ppShape1: TppShape;
    ppShape4: TppShape;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel10: TppLabel;
    ppLabel14: TppLabel;
    ppLabel33: TppLabel;
    ppLabel36: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText10: TppDBText;
    ppDBText13: TppDBText;
    ppDBText16: TppDBText;
    dbAgentes: TppDBPipeline;
    dsAgentes: TDataSource;
    dsComissoes: TDataSource;
    dbComissoes: TppDBPipeline;
    gbData: TGroupBox;
    Label4: TcxLabel;
    Label5: TcxLabel;
    DataFinal: TdxDateEdit;
    DataInicial: TdxDateEdit;
    GroupBox2: TGroupBox;
    Label1: TcxLabel;
    Label3: TcxLabel;
    DataFinal2: TdxDateEdit;
    DataInicial2: TdxDateEdit;
    dsSelAgente: TDataSource;
    SubComissoes: TppSubReport;
    ppChildReport7: TppChildReport;
    ppHeaderBand8: TppHeaderBand;
    ppDetailBand8: TppDetailBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLine8: TppLine;
    ppLabel53: TppLabel;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppLine9: TppLine;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppSummaryBand5: TppSummaryBand;
    SubBaixas: TppSubReport;
    ppChildReport8: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand9: TppDetailBand;
    ppSummaryBand6: TppSummaryBand;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppLine10: TppLine;
    ppDBCalc11: TppDBCalc;
    ppLabel15: TppLabel;
    ppDBText18: TppDBText;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppDBText20: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBText21: TppDBText;
    ppLabel19: TppLabel;
    ppDBText22: TppDBText;
    ppLabel20: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppShape7: TppShape;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLabel25: TppLabel;
    ppShape8: TppShape;
    BackupRelatorio: TppReport;
    ppTitleBand3: TppTitleBand;
    ppShape9: TppShape;
    ppLabel37: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport2: TppChildReport;
    ppHeaderBand4: TppHeaderBand;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel54: TppLabel;
    ppLabel61: TppLabel;
    ppLabel63: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppSubReport2: TppSubReport;
    ppChildReport3: TppChildReport;
    ppHeaderBand6: TppHeaderBand;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLine2: TppLine;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppSummaryBand4: TppSummaryBand;
    ppSubReport3: TppSubReport;
    ppChildReport5: TppChildReport;
    ppHeaderBand7: TppHeaderBand;
    ppShape14: TppShape;
    ppShape19: TppShape;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppSubReport4: TppSubReport;
    ppChildReport6: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppShape20: TppShape;
    ppShape21: TppShape;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppDetailBand10: TppDetailBand;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppSummaryBand7: TppSummaryBand;
    ppLine3: TppLine;
    ppDBCalc8: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine4: TppLine;
    ppLabel81: TppLabel;
    ppDBText62: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine5: TppLine;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppLabel82: TppLabel;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppLabel93: TppLabel;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppLabel94: TppLabel;
    ppDBText74: TppDBText;
    ppLabel95: TppLabel;
    ppFooterBand2: TppFooterBand;
    ppShape26: TppShape;
    ppSummaryBand8: TppSummaryBand;
    ppShape27: TppShape;
    ppShape28: TppShape;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppDBCalc16: TppDBCalc;
    ppLabel100: TppLabel;
    GroupBox3: TGroupBox;
    srd5: TRadioButton;
    srd6: TRadioButton;
    ppShape5: TppShape;
    ppSystemVariable2: TppSystemVariable;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    ppLabel6: TppLabel;
    ppDBText4: TppDBText;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
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
    procedure ppDetailBand6BeforePrint(Sender: TObject);
    procedure ppHeaderBand5BeforePrint(Sender: TObject);
    procedure ppDBText50GetText(Sender: TObject; var Text: String);
    procedure ppDBText50Print(Sender: TObject);
    procedure ppDBText48Print(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer ;
  public
    { Public declarations }
  end;

var
  FRelComissoesTerceiros: TFRelComissoesTerceiros;
  sqlOriginal : string;

implementation

uses Usuarios_DM, Application_DM, Funcoes, Relatorios_DM2,
  ComissoesVendedor_FRel, Comissoes_FRel, Vendas_Dm, Relatorios_DM;

{$R *.DFM}

procedure TFRelComissoesTerceiros.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelComissoesTerceiros.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelComissoesTerceiros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FRelComissoesTerceiros := Nil;
end;

procedure TFRelComissoesTerceiros.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelComissoesTerceiros.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  sqlOriginal := dmRelatorios2.Qry_Faturamentos.sql.text;

  Try
    dsSelAgente.DataSet.Close;
    dsSelAgente.DataSet.Open;
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

procedure TFRelComissoesTerceiros.ActPreviewExecute(Sender: TObject);
var
 sFiltro, Filtro : string;
begin
    sFiltro := '';
    Filtro := '';
    if (cmbAgente.text <> '') then
    begin
      sFiltro := sFiltro + ' and cmi.pessoa_fj = '+intToStr(cmbAgente.LookupKeyValue);
      filtro  := ' Agente: '+cmbAgente.text;
    end
    else
      filtro := ' Agente: Todos';

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

    if (DataInicial2.date <= 0) then
    begin
      application.messagebox('Defina a data inicial','Aviso',mb_ok + mb_iconinformation);
      DataInicial2.setfocus;
      exit;
    end;

    if (DataFinal2.date <= 0) then
    begin
      application.messagebox('Defina a data final','Aviso',mb_ok + mb_iconinformation);
      DataFinal2.setfocus;
      exit;
    end;

    if (DataFinal2.date < DataInicial2.date) then
    begin
      application.messagebox('Intervalo de datas inválido','Aviso',mb_ok + mb_iconinformation);
      DataInicial2.setfocus;
      exit;
    end;

    //Filtrando pela data do caixa
    sfiltro := sfiltro + ' and (vd2.data_caixa between '+QuotedStr(FormatDateTime('mm/dd/yyyy',DataInicial.date))+' and '+QuotedStr(FormatDateTime('mm/dd/yyyy',DataFinal.date))+')';
    filtro := Filtro + ' -  Dt. Cx. Faturamento: '+DataInicial.Text+' à '+DataFinal.text;

    //Filtrando pela data da geracao da comissao
    sfiltro := sfiltro + ' and (cm.dt_geracao between '+QuotedStr(FormatDateTime('mm/dd/yyyy',DataInicial2.date))+' and '+QuotedStr(FormatDateTime('mm/dd/yyyy',DataFinal2.date))+')';
    filtro := Filtro + ' - Dt. Geração: '+DataInicial2.Text+' à '+DataFinal2.text;

    if (sRd4.checked) then
      filtro  := Filtro + ' - Status: Todos'
    else if (sRd1.checked) then
    begin
      filtro  := Filtro + ' - Status: Abertas';
      sfiltro := sfiltro + ' and cm.status = ''L''';
    end
    else if (sRd2.checked) then
    begin
      filtro  := Filtro + ' - Status: Quitadas';
      sfiltro := sfiltro + ' and cm.status = ''P''';
    end
    else if (sRd3.checked) then
    begin
      filtro  := Filtro + ' - Status: Geradas';
      sfiltro := sfiltro + ' and cm.status = ''F''';
    end;

    if (sRd5.checked) then
    begin
      filtro  := Filtro + ' - Impressão: Sintético';
      SubItens.Visible := false;
    end
    else
    begin
      filtro  := Filtro + ' - Impressão: Analítico';
      SubItens.Visible := true;
    end;

    with dmRelatorios2 do
    begin
      //------------Faturamento------------//
      Qry_Faturamentos.Close;
      Qry_Faturamentos.sql.text := sqlOriginal + sfiltro;
      Qry_Faturamentos.parambyname('cnpj').value := dmApp.cnpj;
      Qry_Faturamentos.Open;


      //---------Itens do Faturamento------------//
      Qry_FatItens.close;
      Qry_FatItens.open;

      //------------Agentes do Item--------//
      Qry_FatItensAgentes.close;
      Qry_FatItensAgentes.open;

      //----------------Registro de Comissões--------//
      Qry_FatComissoes.Close;
      Qry_FatComissoes.Open;

      //------------Comissões-------------
      Qry_ComBaixas.Close;
      Qry_ComBaixas.Open;

      lblEmpresa.caption :=  dmApp.nome;
      lblFiltro.caption :=  filtro;
      rptComTerceiro.print;

    end;
end;

procedure TFRelComissoesTerceiros.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelComissoesTerceiros.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
  tiracorfundo(sender);
end;

procedure TFRelComissoesTerceiros.FimExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO ( SENDER );
end;

procedure TFRelComissoesTerceiros.ppDetailBand6BeforePrint(
  Sender: TObject);
begin
   with dmRelatorios2 do
   begin
     {if (Trim(qryRelComissaoSintSTATUS.AsString) = 'Quitada') then
       XStatus.Brush.Color := $0088F4EF
     else if (Trim(qryRelComissaoSintSTATUS.AsString) = 'Gerada') then
       XStatus.Brush.Color := $00FFE2A8
     else if (Trim(qryRelComissaoSintSTATUS.asString) = 'Cancelada') then
       XStatus.Brush.Color := $008080FF
     else if (Trim(qryRelComissaoSintSTATUS.value) = 'Aberta') then
       XStatus.Brush.Color := $00CAF0D7
     else if (Trim(qryRelComissaoSintSTATUS.value) = 'Sem Comissão') then
       XStatus.Brush.Color := clGray;}
  end;
end;

procedure TFRelComissoesTerceiros.ppHeaderBand5BeforePrint(
  Sender: TObject);
begin
  TppHeaderBand(Sender).Visible := true;
end;

procedure TFRelComissoesTerceiros.ppDBText50GetText(Sender: TObject;
  var Text: String);
begin
  if (Text = 'A') then
    Text := 'Abertas'
  else if (Text = 'Q') then
    Text := 'Quitadas'
  else if (Text = 'C') then
    Text := 'Geradas';
end;

procedure TFRelComissoesTerceiros.ppDBText50Print(Sender: TObject);
begin
   If (TppDBText(Sender).FieldValue = 'A') then
     TppDBText(Sender).Font.Color := clGreen;


end;

procedure TFRelComissoesTerceiros.ppDBText48Print(Sender: TObject);
begin
  If (TppDBText(Sender).FieldValue > 0) then
     TppDBText(Sender).Font.Color := clGreen
  else if (TppDBText(Sender).FieldValue < 0) then
     TppDBText(Sender).Font.Color := clRed;
end;

end.
