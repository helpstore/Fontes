  unit ComissoesVendedor_Rec_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls,
  ppCtrls, ppBands, ppClass, ppDB, ppDBPipe, ppParameter, ppModule,
  raCodMod, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppStrtch, ppSubRpt,   ppRegion,  TXRB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus,
  cxButtons, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TFRelListagemComissao = class(TForm)
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
    lblfiltro: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable4: TppSystemVariable;
    ppShape12: TppShape;
    gbData: TGroupBox;
    Label4: TcxLabel;
    Label5: TcxLabel;
    edAs1: TcxLabel;
    edAs3: TcxLabel;
    Ini: TcxDateEdit;
    fim: TcxDateEdit;
    Label12: TcxLabel;
    VendasRec: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLine16: TppLine;
    ppLabel55: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppVendasRec: TppDBPipeline;
    ppLabel58: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBText39: TppDBText;
    ppDBText44: TppDBText;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppDBText45: TppDBText;
    ppLabel49: TppLabel;
    ppDBText40: TppDBText;
    dsRelVendas: TDataSource;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText1: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure FimExit(Sender: TObject);
    procedure ppSummaryBand7BeforePrint(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer ;
    Procedure Comissao_Faixa ;
  public
    { Public declarations }
  end;

var
  FRelListagemComissao: TFRelListagemComissao;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes, Relatorios_DM2;

{$R *.DFM}

procedure TFRelListagemComissao.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelListagemComissao.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelListagemComissao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  //
  Action := caFree;
  FRelComiVendRecebimento := Nil;
end;

procedure TFRelListagemComissao.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelListagemComissao.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelListagemComissao.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  IF DMAPP.COMISSAO_FAIXA = 'S'
  THEN BEGIN
       Print.ImpF(05,01,'Codigo Data       Cliente                            Produto                                    Liquido    A Vista    A Prazo      Total', [Comp17]);
       Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
       linha  := 08;
  END
  ELSE BEGIN
       Print.ImpF(05,01,'Codigo Data       Cliente                            Nat        NF      Total     Desc    %     Liquido    A Vista    A Prazo      Total', [Comp17]);
       Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
       linha  := 08;
  END;
end;

procedure TFRelListagemComissao.FormShow(Sender: TObject);
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

procedure TFRelListagemComissao.ActPreviewExecute(Sender: TObject);
Var
    Cod_Vendedor: Integer;
    Total_Vendedor, Total_Geral, Comissao_Prazo, Comissao_Vista: Real;
    Comissao_Vendedor_Vista, Comissao_Vendedor_Prazo, Comissao_Geral: Real;
    Vista, Prazo, Porcentagem, Desconto_Vendedor, Desconto_Geral: Real;
    Total_Bruto, Total_Bruto_Geral, Porc_Vista, Porc_Prazo, SOMA_CHEQUE: Real;
    STR: String;
    DATA_CX: String;

    ITEM, ITEM_PRAZO, ITEM_VISTA, CALCVISTA, CALCPRAZO : REAL;
begin

  with dmRelatorios2 do
  begin
    qryRelComVendRec.close;
    qryRelComVendRec.parambyname('cnpj').value := dmApp.cnpj;
    qryRelComVendRec.parambyname('vendedor').value := cmbvendedor.lookupkeyvalue;
    qryRelComVendRec.parambyname('dt_ini').value := ini.date;
    qryRelComVendRec.parambyname('dt_fin').value := fim.date;
    qryRelComVendRec.open;
  end;

  with dmRelatorios do
  begin
    qryComissaoVend.close;
    qryComissaoVend.parambyname('cnpj').value := dmApp.cnpj;
    qryComissaoVend.parambyname('vendedor').value := cmbvendedor.lookupkeyvalue;
    qryComissaoVend.parambyname('dt_ini').value := ini.date;
    qryComissaoVend.parambyname('dt_fin').value := fim.date;
    qryComissaoVend.open;

    qryComissaoTrc.close;
    qryComissaoTrc.parambyname('cnpj').value := dmApp.cnpj;
    qryComissaoTrc.parambyname('vendedor').value := cmbvendedor.lookupkeyvalue;
    qryComissaoTrc.parambyname('dt_ini').value := ini.date;
    qryComissaoTrc.parambyname('dt_fin').value := fim.date;
    qryComissaoTrc.open; //nao descobri porque preenchia estas qry, mas desabilitei já que so utiliza a de rec.

    qryComissaoRec.close;
    qryComissaoRec.parambyname('cnpj').value := dmApp.cnpj;
    qryComissaoRec.parambyname('vendedor').value := cmbvendedor.lookupkeyvalue;
    qryComissaoRec.parambyname('dt_ini').value := ini.date;
    qryComissaoRec.parambyname('dt_fin').value := fim.date;
    qryComissaoRec.open;

    lblFiltro.caption := 'Vendedor: '+cmbVendedor.text+' -  '+formatDateTime('dd/mm/yyy',ini.date)+' à '+formatDateTime('dd/mm/yyy',fim.date);
    lblEmpresa.caption := dmApp.Nome;

    rptComissaoVend.Print;
    exit;
  end;

  IF DMApp.COMISSAO_FAIXA = 'S' THEN
  BEGIN
    Comissao_Faixa ;
    Exit ;
  END;
end;

procedure TFRelListagemComissao.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelListagemComissao.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO ( SENDER );

     IF ( INI.TEXT = '  /  /    ' ) or ( INI.TEXT = '  /  /  ' )
     THEN BEGIN
          INI.DATE := STRTODATE('01/01/1900') ;
     END;
end;

procedure TFRelListagemComissao.FimExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO ( SENDER );

     IF ( FIM.TEXT = '  /  /    ' ) or ( FIM.TEXT = '  /  /  ' )
     THEN BEGIN
          FIM.DATE := STRTODATE('31/12/9999') ;
     END;
end;

procedure TFRelListagemComissao.ppSummaryBand7BeforePrint(
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

end.
