 unit Cotacoes_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, 
  IBCustomDataSet, ppParameter, ppModule, raCodMod, ppBands, ppCtrls,
  ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppDB, ppDBPipe, cxGraphics, cxControls, cxLookAndFeels,
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
  TFRelCotacoesPeriodo = class(TForm)
    pnlClient: TPanel;
    Actions: TActionList;
    ActPreview: TAction;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Ini: TdxDateEdit;
    Fim: TdxDateEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Panel2: TPanel;
    LblStatus: TcxLabel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    ANDA: TProgressBar;
    TipoCotacao: TRadioGroup;
    Label2: TcxLabel;
    Label4: TcxLabel;
    cmbTransp: TdxLookupEdit;
    cmbFornecedor: TdxLookupEdit;
    DsFornecedor: TDataSource;
    dsTransp: TDataSource;
    rptCotacoesPeriodo: TppReport;
    ppTitleBand7: TppTitleBand;
    ppShape6: TppShape;
    lblEmpresa: TppLabel;
    ppLabel76: TppLabel;
    lblFiltro: TppLabel;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand7: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    raCodeModule1: TraCodeModule;
    ppParameterList3: TppParameterList;
    ppCotacoes: TppDBPipeline;
    dsCotacoes: TDataSource;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBText65: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText70: TppDBText;
    ppLine12: TppLine;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLine13: TppLine;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel90: TppLabel;
    ppShape7: TppShape;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppLine14: TppLine;
    ppShape8: TppShape;
    ppSystemVariable6: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel5: TppLabel;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText6: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure FimExit(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FRelCotacoesPeriodo: TFRelCotacoesPeriodo;
  Linha, Pagina: Integer;
  TipoRelatorio: String;

  Cod_Vendedor: Integer;
  Total_Vendedor, Total_Geral: Real;
  Data_Caixa, STR, Str_Jur, Str_Desc: String;
  AVista, APrazo, Descontos, Juros, TotalQuantidade: Real;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes,
  VendasPeriodo_FRel;

{$R *.DFM}

procedure TFRelCotacoesPeriodo.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

end;

procedure TFRelCotacoesPeriodo.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelCotacoesPeriodo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  DMRelatorios.lkpFornecedor.CLOSE ;
  DMRelatorios.lkpTransportadora.CLOSE ;

  Action := caFree;
  FRelCotacoesPeriodo := Nil;
end;

procedure TFRelCotacoesPeriodo.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;





procedure TFRelCotacoesPeriodo.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
    Try
       //
       DMRelatorios.lkpTransportadora.Open ;
       DMRelatorios.lkpFornecedor.Open ;
       //
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

procedure TFRelCotacoesPeriodo.ActPreviewExecute(Sender: TObject);
var
   FiltroRel, Filtro : string;
begin
  FiltroRel := '';
  if (Ini.date <=0) or (Fim.date <=0) then
  begin
    application.messageBox('Informe o período corretamente','Aviso', mb_iconinformation + mb_ok);
    exit;
  end;

  filtro := ini.Text + ' à ' + fim.text;
  //-------------------------------------------Filtros do Relatório-----------------------------------//
  //Fornecedor
  if (cmbFornecedor.Text <> '') then
  begin
    FiltroRel := FiltroRel + ' and pessoa_fj ='+intTostr(cmbFornecedor.LookupKeyValue);

    if filtro <> '' then
      filtro := filtro + ' - ';

    filtro := filtro + ' Fornecedor: '+cmbFornecedor.text;
  end
  else
    filtro := filtro + ' Fornecedor: Todos';

  //Transportadora
  if (cmbTransp.Text <> '') then
  begin
    FiltroRel := FiltroRel + ' and transportadora = '+intTostr(cmbTransp.LookupKeyValue);

    if filtro <> '' then
      filtro := filtro + ' - ';

    filtro := filtro + ' Transportadora: '+cmbTransp.Text;
  end;

  if filtro <> '' then
     filtro := filtro + ' - ';

  case TipoCotacao.ItemIndex of
    0 :filtro := filtro + 'Tip. Cotação: Ambas';
    1 :begin
         filtro := filtro + 'Tip. Cotação: Abertas';
         FiltroRel := FiltroRel + ' and fechado = ''N'' ';
       end;
    2 :begin
         filtro := filtro + 'Tip. Cotação: Fechadas';
         FiltroRel := FiltroRel + ' and fechado = ''S'' ';
       end;
  end;
  //------------------------------final do filtro--------------------------------------------------//


  with DMRelatorios do
  begin
    qryRelCotacoes.close;
    qryRelCotacoes.sql.text := ' select c.data, c.codigo, c.desc_acresc, c.total,pgt.nome, c.nome fornecedor,'+
                               ' coalesce(ci.produto,'''') ||''-''||coalesce(ci.nome_produto,'''') nome_produto,'+
                               ' ci.porc_desc, ci.prc_unit_original,ci.prc_unitario, ci.prc_custo, ci.quantidade,'+
                               ' ci.unidade, ci.subunidade, coalesce(c.fechado,''N'') fechado  from fat_cotacoes c'+
                               ' left join fin_formas_pagto pgt on (pgt.codigo = c.codigo and pgt.cnpj = c.cnpj)'+
                               ' inner join fat_cotacoes_itens ci on (ci.codigo = c.codigo and ci.cnpj = c.cnpj)'+
                               ' where c.cnpj = :cnpj and (c.data between :data1 and :data2) ';

    qryRelCotacoes.parambyname('data1').asDate := ini.date;
    qryRelCotacoes.parambyname('data2').asDate := fim.date;
    qryRelCotacoes.parambyname('cnpj').value := dmapp.cnpj;
    {Se houve algum filtro}
    if FiltroRel <> '' then
       qryRelCotacoes.SQL.Add(FiltroRel);

    qryRelCotacoes.SQL.Add('order by c.codigo');
    qryRelCotacoes.open;

    lblFiltro.text := 'FILTRO: '+fILTRO;
    lblEmpresa.text := dmapp.nome;
    rptCotacoesPeriodo.print;
    exit;
  end;

end;

procedure TFRelCotacoesPeriodo.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACorFundo ( Sender );
     if INI.date <= 0 then
        INI.DATE := STRTODATE ('01/01/1900');
end;

procedure TFRelCotacoesPeriodo.IniEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRelCotacoesPeriodo.FimExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACorFundo ( Sender );

     if FIM.date <= 0 then
       FIM.DATE := STRTODATE ('31/12/9999');

end;

end.
