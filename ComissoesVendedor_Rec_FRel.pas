  unit ComissoesVendedor_Rec_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls,
  ppCtrls, ppBands, ppClass, ppDB, ppDBPipe, ppParameter, ppModule,
  raCodMod, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppStrtch, ppSubRpt,   ppRegion,   
  cxPropertiesStore, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel,      
  cxTextEdit, cxMaskEdit, cxSpinEdit, cxTimeEdit, cxDropDownEdit,
  cxCalendar, cxCheckBox;

type
  TFRelComiVendRecebimento = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    cmbVendedor: TdxLookupEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    DsVendedor: TDataSource;
    rptComissaoVend: TppReport;
    ppTitleBand1: TppTitleBand;
    ppShape3: TppShape;
    lblEmpresa: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    lblCaixa: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand7: TppSummaryBand;
    raCodeModule2: TraCodeModule;
    ppParameterList1: TppParameterList;
    ppComissaoVend: TppDBPipeline;
    dsComissaoVend: TDataSource;
    lblfiltro: TppLabel;
    SubVendas: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine4: TppLine;
    ppLabel19: TppLabel;
    ppLine5: TppLine;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppLine6: TppLine;
    ppDBCalc4: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppLine7: TppLine;
    ppDBCalc16: TppDBCalc;
    lblTtlVdVista: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppLabel20: TppLabel;
    ppRecebidas: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppComissaoRec: TppDBPipeline;
    dsComissaoRec: TDataSource;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel26: TppLabel;
    ppLine3: TppLine;
    ppDBText12: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText4: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLine8: TppLine;
    ppDBCalc9: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLine2: TppLine;
    lblTtlBaixaRec: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    SubTrocas: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLine9: TppLine;
    ppLabel38: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText25: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel39: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel40: TppLabel;
    ppLine11: TppLine;
    ppDBText34: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine12: TppLine;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    dsComissaoTrc: TDataSource;
    ppComissaoTrc: TppDBPipeline;
    ppLabel30: TppLabel;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppLabel31: TppLabel;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppLine10: TppLine;
    ppDBCalc1: TppDBCalc;
    lblTtlTrocaVista: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppLabel34: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable4: TppSystemVariable;
    ppShape12: TppShape;
    ppComGeral: TppDBPipeline;
    dsComGeral: TDataSource;
    gbData: TGroupBox;
    Label4: TcxLabel;
    Label5: TcxLabel;
    edAs1: TcxLabel;
    edAs3: TcxLabel;
    Ini: tcxDateEdit;
    fim: tcxDateEdit;
    Label12: TcxLabel;
    gbDetalhes: TGroupBox;
    ckVendas: TcxCheckBox;
    ckTrocas: TcxCheckBox;
    ckRecebimento: TcxCheckBox;
    regTotal: TppRegion;
    ppShape1: TppShape;
    ppDBText38: TppDBText;
    ppDBText37: TppDBText;
    ppDBText36: TppDBText;
    ppLabel44: TppLabel;
    ppLabel43: TppLabel;
    ppLabel45: TppLabel;
    ppDBText35: TppDBText;
    ppDBText26: TppDBText;
    lblTotalGeral: TppLabel;
    ppLabel25: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ckResumo: TcxCheckBox;
    ppLabel46: TppLabel;
    ppDBText39: TppDBText;
    ppDBCalc6: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    GroupBox4: TGroupBox;
    rdVista: TRadioButton;
    rdPrazo: TRadioButton;
    rdAmbos: TRadioButton;
    stgFRelComiVendRecebimento: TcxPropertiesStore;
    ppDBText42: TppDBText;
    ppLabel49: TppLabel;
    ppDBText43: TppDBText;
    ppLabel50: TppLabel;
    ppDBText44: TppDBText;
    ppLabel51: TppLabel;
    ppDBText45: TppDBText;
    ppLabel52: TppLabel;
    ppDBText46: TppDBText;
    ppAppRepresentante: TppDBPipeline;
    dsApp: TDataSource;
    ppDBText47: TppDBText;
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
    procedure ppSummaryBand7BeforePrint(Sender: TObject);
    procedure ppDetailBand3BeforePrint(Sender: TObject);
    procedure ppDBText43Print(Sender: TObject);
    procedure ppDBText44Print(Sender: TObject);
    procedure ppTitleBand2BeforePrint(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer ;
  public
    { Public declarations }
  end;

var
  FRelComiVendRecebimento: TFRelComiVendRecebimento;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes, Relatorios_DM2;

{$R *.DFM}

procedure TFRelComiVendRecebimento.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelComiVendRecebimento.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelComiVendRecebimento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  //
  Action := caFree;
  FRelComiVendRecebimento := Nil;
end;

procedure TFRelComiVendRecebimento.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelComiVendRecebimento.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);

  Try
     IF DMApp.COMISSAO_FAIXA = 'S'
     THEN BEGIN
          dsVendedor.DataSet.Close ;

          cmbVendedor.Enabled := FALSE ;
     END
     ELSE BEGIN
          If Not(dsVendedor.DataSet.Active)
          Then
              dsVendedor.DataSet.Open;

          cmbVendedor.Enabled := TRUE ;
     END;
     dmRelatorios.SelVendedor.close;
     dmRelatorios.SelVendedor.Open;
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

procedure TFRelComiVendRecebimento.ActPreviewExecute(Sender: TObject);
var
  sqlVenda : string;
begin

  if (rdVista.Checked) then
    sqlVenda := ' select * from PCD_REL_COMISSAO_VED(:cnpj,:vendedor, :dt_ini,:dt_fin) where tipo_mov = ''Vista'' order by tipo_mov, data '
  else if (rdPrazo.checked) then
    sqlVenda := ' select * from PCD_REL_COMISSAO_VED(:cnpj,:vendedor, :dt_ini,:dt_fin) where tipo_mov = ''Prazo'' order by tipo_mov, data '
  else if (rdAmbos.checked) then
    sqlVenda := ' select * from PCD_REL_COMISSAO_VED(:cnpj,:vendedor, :dt_ini,:dt_fin) order by tipo_mov, data ' ;


  ppRecebidas.visible := ckRecebimento.checked;
  SubTrocas.visible := ckTrocas.checked;
  SubVendas.visible := ckVendas.checked;
  regTotal.visible := ckResumo.checked;


  with dmRelatorios do
  begin
    qryComissaoVend.close;
    qryComissaoVend.sql.text := sqlVenda;
    qryComissaoVend.parambyname('cnpj').value := dmApp.cnpj;
    qryComissaoVend.parambyname('vendedor').value := cmbvendedor.lookupkeyvalue;
    qryComissaoVend.parambyname('dt_ini').asDate := ini.date;
    qryComissaoVend.parambyname('dt_fin').asDate := fim.date;
    qryComissaoVend.open;

    qryComissaoTrc.close;
    qryComissaoTrc.parambyname('cnpj').value := dmApp.cnpj;
    qryComissaoTrc.parambyname('vendedor').value := cmbvendedor.lookupkeyvalue;
    qryComissaoTrc.parambyname('dt_ini').asDate := ini.date;
    qryComissaoTrc.parambyname('dt_fin').asDate := fim.date;
    qryComissaoTrc.open; //nao descobri porque preenchia estas qry, mas desabilitei já que so utiliza a de rec.

    qryComissaoRec.close;
    qryComissaoRec.parambyname('cnpj').value := dmApp.cnpj;
    qryComissaoRec.parambyname('vendedor').value := cmbvendedor.lookupkeyvalue;
    qryComissaoRec.parambyname('dt_ini').asDate := ini.date;
    qryComissaoRec.parambyname('dt_fin').asDate := fim.date;
    qryComissaoRec.open;

    lblFiltro.caption := 'Vendedor: '+cmbVendedor.text+' -  '+formatDateTime('dd/mm/yyy',ini.date)+' à '+formatDateTime('dd/mm/yyy',fim.date);
    lblEmpresa.caption := dmApp.Nome;

    rptComissaoVend.Print;
    exit;
  end;
end;


procedure TFRelComiVendRecebimento.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelComiVendRecebimento.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO ( SENDER );

     IF (INI.date <= 0) then
       INI.DATE := STRTODATE('01/01/1900') ;
end;

procedure TFRelComiVendRecebimento.FimExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO ( SENDER );

     IF ( FIM.date <= 0) then
       FIM.DATE := STRTODATE('31/12/9999') ;
end;

procedure TFRelComiVendRecebimento.ppSummaryBand7BeforePrint(
  Sender: TObject);
var
  TotalVista, TotalRecebidas, TotalTrocasVista, TotalVendaVista : Real;
begin
  TotalVendaVista := StrToFloat(stringReplace(lblTtlVdVista.text,'.','',[rfReplaceAll]));
  TotalTrocasVista := StrToFloat(stringReplace(lblTtlTrocaVista.text,'.','',[rfReplaceAll]));
  TotalRecebidas := StrToFloat(stringReplace(lblTtlBaixaRec.text,'.','',[rfReplaceAll]));
  TotalVista := (TotalVendaVista + TotalTrocasVista);
  with dmRelatorios do
  begin
    qryComissaoGeral.close;
    qryComissaoGeral.parambyname('cnpj').value := dmApp.cnpj;
    qryComissaoGeral.parambyname('vendedor').value := cmbvendedor.lookupkeyvalue;
    qryComissaoGeral.parambyname('vlrvista').value := TotalVista;
    qryComissaoGeral.parambyname('vlrprazo').value := TotalRecebidas;
    qryComissaoGeral.open;
  end;
  lblTotalGeral.Caption := formatFloat('###,###,##0.00',TotalVista + TotalRecebidas);

end;

procedure TFRelComiVendRecebimento.ppDetailBand3BeforePrint(
  Sender: TObject);
begin
  if ppDBText42.FieldValue = 'R' then
    ppDBText42.font.Color := ClRed
  else
    ppDBText42.font.Color := ClGreen;
end;

procedure TFRelComiVendRecebimento.ppDBText43Print(Sender: TObject);
begin
   if ppDBText43.FieldValue = 'DEVOLUCAO' then
    ppDBText43.font.Color := ClRed
  else
    ppDBText43.font.Color := ClGreen;
end;

procedure TFRelComiVendRecebimento.ppDBText44Print(Sender: TObject);
begin
  if ppDBText44.FieldValue < 100  then
    ppDBText44.font.Color := ClRed
  else
    ppDBText44.font.Color := ClGreen;
end;

procedure TFRelComiVendRecebimento.ppTitleBand2BeforePrint(
  Sender: TObject);
begin
  TppTitleBand(Sender).Visible := true;
end;

end.
