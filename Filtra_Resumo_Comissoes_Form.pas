 unit Filtra_Resumo_Comissoes_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,   dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, IBCustomDataSet, IBQuery,
  RDprint, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport,
  ppBands, ppCache, ppCtrls, ppVar, ppPrnabl, ppParameter, cxGraphics,
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
  cxButtons, cxLabel;

type
  TFrmFiltraResumoComissoes = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Ini: TdxDateEdit;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Fim: TdxDateEdit;
    Actions: TActionList;
    ActFechar: TAction;
    ActPreview: TAction;
    rptResumoComissoes: TppReport;
    dbResumoComissoes: TppDBPipeline;
    dsResumoComissoes: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel10: TppLabel;
    ppLine2: TppLine;
    ppLabel5: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppLabel6: TppLabel;
    ppShape21: TppShape;
    lblEmpresa: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    lblRelatorio: TppLabel;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppSystemVariable6: TppSystemVariable;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    rdTrocaVenda: TRadioGroup;
    rdStatus: TRadioGroup;
    lblFiltro: TppLabel;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText7: TppDBText;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActPreviewExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure FimExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltraResumoComissoes: TFrmFiltraResumoComissoes;

implementation

uses  Application_DM,
      Funcoes,
      Financeiro_Dm, Caixa_Dm;

{$R *.DFM}

procedure TFrmFiltraResumoComissoes.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmFiltraResumoComissoes.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmFiltraResumoComissoes.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFiltraResumoComissoes.ActPreviewExecute(Sender: TObject);
var
   Total, Vista, Prazo: Real;
   TipoMovimento, TipoRel, Status, sql, order, filtro  : string;
begin
  filtro := '';
  if (ini.date <= 0) then
    ini.date := strtodate('01/01/1900') ;

  if (fim.date <= 0) then
    fim.date := strtodate('31/12/9999') ;


  TipoMovimento := ' Todos ';
  case rdTrocaVenda.ItemIndex of
  1: begin
       filtro := filtro + ' tipo_venda = ''TRC''';
       TipoMovimento := ' Trocas';
     end;
  2: begin
       filtro := ' tipo_venda <> ''TRC''';
       TipoMovimento := ' Vendas';
     end;
  end;

  status := 'Ambos';
  case rdStatus.ItemIndex of
   0 :begin
       if filtro <> '' then
        filtro := filtro + ' and ';

       status := 'Fechado';
       filtro := filtro + '  fechada = ''S''';
      end;
   1 :begin
       if filtro <> '' then
        filtro := filtro + ' and ';

       status := 'Aberto';
       filtro := filtro + '  coalesce(fechada,''N'')=''N''';
      end;
  end;


  order := ' group by NOME_VENDEDOR ';
  if DMApp.COMISSAO_FAIXA = 'S' then
  begin
    lblRelatorio.Caption := 'Resumo de Comissões - Por Faixa';
    if (filtro <> '') then
       filtro := ' where '+filtro;
    sql := ' select NOME_VENDEDOR VENDEDOR ,sum(com_vista) VLR_COMVISTA , sum(com_prazo) VLR_COMPRAZO, '+
           ' sum(com_total) COMISSAO, sum(vlr_vista) VISTA, sum(vlr_prazo) prazo, '+
           ' sum(VLR_ITEM) total from pcd_comissao_faixa(:cnpj,:ini,:fim) '+filtro+order;
  end
  else
  begin
     lblRelatorio.Caption := 'Resumo de Comissões - Normal';
     if (filtro <> '') then
       filtro := ' and '+filtro;

     sql :=' select cast (sum(vlr_vista) as numeric (18,4)) vista, cast(sum(vlrliquido) as numeric (18,4)) total,cast(sum(vlr_prazo) as numeric (18,4)) prazo, '+
           ' cast((sum(vlr_vista*com_vista)/100.00) as numeric (18,4)) vlr_comvista, cast((sum(vlr_prazo*com_prazo)/100.00) as numeric (18,4)) vlr_comprazo,'+
           ' cast((sum((vlr_vista*com_vista)/100.00) + sum((vlr_prazo*com_prazo)/100.00)) as numeric (18,4)) comissao, '+
           ' cast(sum(com_vista) as numeric (18,4)) com_vista, cast(sum(com_prazo)as numeric (18,4)) com_prazo,nome_vendedor vendedor from VER_FAT_VENDAS_VENDEDOR(:cnpj, :ini, :fim,0) '+
           ' where coalesce(cancelada,''N'') = ''N'''+filtro+order;
  end;


  with DmCaixa do
  begin
    Vendas_Agrupadas_Periodo.Close ;
    Vendas_Agrupadas_Periodo.sql.text := sql;
    Vendas_Agrupadas_Periodo.ParamByName('CNPJ').ASSTRING := DMAPP.Cnpj;
    Vendas_Agrupadas_Periodo.ParamByName('INI').ASDATE := Ini.DATE;
    Vendas_Agrupadas_Periodo.ParamByName('FIM').ASDATE := Fim.Date;
    Vendas_Agrupadas_Periodo.Open;

    lblEmpresa.Caption := DMApp.Nome;
    lblFiltro.Caption := 'Período: '+Ini.Text + ' à ' + Fim.Text +' - Status:'+status+' - Tipo Movimento:'+TipoMovimento;
    rptResumoComissoes.Print;
  end;

end;

procedure TFrmFiltraResumoComissoes.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
end;

procedure TFrmFiltraResumoComissoes.IniEnter(Sender: TObject);
begin
     CorFundo( Sender );
end;

procedure TFrmFiltraResumoComissoes.IniExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );

     IF INI.TEXT = '  /  /    '
     THEN
         INI.Date := STRTODATE('01/01/1900');
end;

procedure TFrmFiltraResumoComissoes.FimExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );

     IF FIM.TEXT = '  /  /    '
     THEN
         FIM.Date := STRTODATE('31/12/9999');
end;

end.
