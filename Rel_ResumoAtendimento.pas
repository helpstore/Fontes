    unit Rel_ResumoAtendimento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, Db, ppProd, ppClass, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, ppCtrls, ppVar, ppPrnabl, ppBands, ppCache, dxCntner,
  dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, StdCtrls,   ComCtrls,
  Mask,  ppStrtch, ppSubRpt, ppMemo, IBCustomDataSet, IBQuery,
  ppModule, raCodMod,   cxPropertiesStore, ppRichTx, dxEdLib,
   ppEndUsr, ppParameter, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxLabel,
  cxButtons, cxCheckBox;

type
  TFRel_ResumoAtendimentos = class(TForm)
    Panel2: TPanel;
    BtnOk: TcxButton;
    RzBitBtn2: TcxButton;
    pnlClient: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    dsMecanico: TDataSource;
    dsStatus: TDataSource;
    dsAtendimento_Sint: TDataSource;
    qAtendimento_Sint: TIBQuery;
    rptAtendimento: TppReport;
    ppTitleBand12: TppTitleBand;
    ppShape6: TppShape;
    ppTituloRel: TppLabel;
    lblEmpresa: TppLabel;
    ppDetailBand18: TppDetailBand;
    ppFooterBand7: TppFooterBand;
    ppShape80: TppShape;
    ppSystemVariable13: TppSystemVariable;
    ppAtendimento: TppDBPipeline;
    lblFiltro: TppLabel;
    stgFRel_Rechamados: TcxPropertiesStore;
    dsSelServico: TDataSource;
    ppSystemVariable1: TppSystemVariable;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppHeaderBand1: TppHeaderBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine68: TppLine;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLabel267: TppLabel;
    ppLine74: TppLine;
    ppDBText255: TppDBText;
    ppDBText245: TppDBText;
    ppDBText247: TppDBText;
    ppDBText254: TppDBText;
    ppLine75: TppLine;
    ppLabel268: TppLabel;
    ppDBCalc22: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppLine73: TppLine;
    ppLabel266: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBRichText1: TppDBRichText;
    gbData: TGroupBox;
    Label4: TcxLabel;
    Label5: TcxLabel;
    edtAbInicial: TdxDateEdit;
    edtAbFinal: TdxDateEdit;
    GroupBox2: TGroupBox;
    Label8: TcxLabel;
    Label10: TcxLabel;
    edtFcInicial: TdxDateEdit;
    edtFcFinal: TdxDateEdit;
    GroupBox1: TGroupBox;
    Label12: TcxLabel;
    Label37: TcxLabel;
    Label9: TcxLabel;
    Label3: TcxLabel;
    Label2: TcxLabel;
    Label21: TcxLabel;
    cmbTecnico: TdxLookupEdit;
    cmbContato: TdxLookupEdit;
    cmbCliente: TdxLookupEdit;
    cmbStatus: TdxLookupEdit;
    cmbMotivo: TdxLookupEdit;
    cmbServExecutado: TdxLookupEdit;
    qAtendimento_SintOFC_CODIGO: TIntegerField;
    qAtendimento_SintCLI_NOME_RAZAO: TIBStringField;
    qAtendimento_SintCONTATO: TIBStringField;
    qAtendimento_SintST_NOME: TIBStringField;
    qAtendimento_SintCUSTO_OS: TFloatField;
    qAtendimento_SintHORAS_TRABALHADAS: TFloatField;
    qAtendimento_SintCOD_TECNICO: TIntegerField;
    qAtendimento_SintTECNICO: TIBStringField;
    qAtendimento_SintINFORMACOES: TBlobField;
    DsClientes: TDataSource;
    dsContato: TDataSource;
    dsMotivo: TDataSource;
    ppDBText3: TppDBText;
    ppDBText1: TppDBText;
    ppDBResumoGeral: TppDBPipeline;
    DsResumoGeral: TDataSource;
    QryResumoGeral: TIBQuery;
    QryResumoGeralVALOR: TFloatField;
    QryResumoGeralDESCRICAO: TIBStringField;
    ResumoGeral: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand1: TppDetailBand;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppCustoTecnico: TppDBPipeline;
    dsCustoTecnico: TDataSource;
    QryCustoTecnico: TIBQuery;
    QryCustoTecnicoCUSTO: TFloatField;
    QryCustoTecnicoHORAS: TFloatField;
    QryCustoTecnicoCODIGO: TIntegerField;
    QryCustoTecnicoNOME: TIBStringField;
    SubCustoTecnico: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel4: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText6: TppDBText;
    ppHeaderBand2: TppHeaderBand;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppDBText5: TppDBText;
    ppLine2: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBText7: TppDBText;
    QryCustoCliente: TIBQuery;
    dsCustoCliente: TDataSource;
    ppCustoCliente: TppDBPipeline;
    QryCustoClienteCUSTO: TFloatField;
    QryCustoClienteHORAS: TFloatField;
    QryCustoClienteCODIGO: TIntegerField;
    QryCustoClienteNOME_RAZAO: TIBStringField;
    SubCustoCliente: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppLabel8: TppLabel;
    ppHeaderBand3: TppHeaderBand;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine3: TppLine;
    ppDetailBand3: TppDetailBand;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLine4: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    QryCustoTPA: TIBQuery;
    dsCustoTPA: TDataSource;
    ppCustoTPA: TppDBPipeline;
    SubTPA: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppLabel12: TppLabel;
    ppHeaderBand4: TppHeaderBand;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine5: TppLine;
    ppDetailBand4: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLine6: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    QryCustoTPACUSTO: TFloatField;
    QryCustoTPAHORAS: TFloatField;
    QryCustoTPACODIGO: TIntegerField;
    QryCustoTPANOME: TIBStringField;
    GroupBox6: TGroupBox;
    rdFinalizado: TRadioButton;
    rdAberto: TRadioButton;
    rdTecAmbos: TRadioButton;
    dsLayout: TDataSource;
    ppLayout: TppDBPipeline;
    Designer: TppDesigner;
    ckConfigurar: TcxCheckBox;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText14: TppDBText;
    procedure BtnOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure cmbClienteExit(Sender: TObject);
    procedure cmbClienteEnter(Sender: TObject);
    procedure cmbEquipamentoExit(Sender: TObject);
    procedure cmbClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    function CompletaWhere(sFiltro, texto:string):string;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ppHeaderBand6BeforePrint(Sender: TObject);
    procedure ppHeaderBand3BeforePrint(Sender: TObject);
  private
    { Private declarations }
    sqlOriginal : string;
  public
    sFiltro, sOrder, tipo, filtro : string;
    { Public declarations }
  end;

var
  FRel_ResumoAtendimentos: TFRel_ResumoAtendimentos;

implementation

uses Servicos_DM, Application_DM, Usuarios_DM, Funcoes, Relatorios_DM,
  Cadastros_DM, Financeiro_Dm, Cadastros_Dm2, Rel_Rechamados;

{$R *.DFM}

procedure TFRel_ResumoAtendimentos.BtnOkClick(Sender: TObject);
var
  sOrder, sqlResumoGeral, tpdata, vlrIni, vlrFim, kmIni, kmFim, tpaIni, tpaFim, tprIni, tprFim : string;
begin
  sFiltro := '';
  filtro := '';
  if (rdAberto.Checked) then
    sFiltro := sFiltro +' and (ofc.data_fechamento is null) ';

  if (rdFinalizado.Checked) then
    sFiltro := sFiltro +' and (ofc.data_fechamento is not null) ';

  if (edtAbInicial.Date > 0) then
    sFiltro := sFiltro +' and (cast ( ofc.entrada as date) >= '''+StringReplace(edtAbInicial.Text,'/','.',[rfReplaceAll])+ ''' ) ';

  if (edtAbFinal.Date > 0) then
    sFiltro := sFiltro +' and (cast ( ofc.entrada as date) <= '''+StringReplace(edtAbFinal.Text,'/','.',[rfReplaceAll])+ ''' ) ';

  if (edtFcInicial.Date > 0) then
    sFiltro := sFiltro +' and (cast ( ofc.data_fechamento as date) >= '''+StringReplace(edtFcInicial.Text,'/','.',[rfReplaceAll])+ ''' ) ';

  if (edtFcFinal.Date > 0) then
    sFiltro := sFiltro +' and (cast( ofc.data_fechamento as date) <= '''+StringReplace(edtFcFinal.Text,'/','.',[rfReplaceAll])+ ''' ) ';


  filtro := filtro + ' - Dt. Abertura: '+edtAbInicial.Text+' à '+edtAbFinal.Text;
  filtro := filtro + ' - Dt. Fechamento: '+edtFcInicial.Text+' à '+edtFcFinal.Text;

  //--------------------------------- Filtro Cliente -------------------------------------------
  if (cmbCliente.text <> '') then
  begin
    sFiltro := sFiltro +' and (ofc.pessoa_fj = '+IntToStr(cmbCliente.LookupKeyValue)+ ' ) ';
    filtro := filtro + ' - Cliente: '+cmbCliente.text;
  end;

  //--------------------------------- Filtro Cliente -------------------------------------------
  if (cmbContato.text <> '') then
  begin
    sFiltro := sFiltro +' and (ctt.codigo = '+IntToStr(cmbContato.LookupKeyValue)+ ' ) ';
    filtro := filtro + ' - Contato: '+cmbContato.text;
  end;

  //------------------------------------ Status-------------------------------------
  if (cmbStatus.text <> '') then
  begin
    sFiltro := sFiltro +' and (st.codigo = '+IntToStr(cmbStatus.LookupKeyValue)+ ' ) ';
    filtro := filtro + ' - Status: ' + cmbStatus.text;
  end;

  //------------------------------------ Motivo do Chamado-------------------------------------
  if (cmbMotivo.text <> '') then
  begin
    sFiltro := sFiltro +' and (mtc.codigo = '+IntToStr(cmbMotivo.LookupKeyValue)+ ' ) ';
    filtro := filtro + ' - Mtv. Chamado: ' +cmbMotivo.text;
  end;

   //--------------------------------- Filtro técnico -----------------------------------------
  if (cmbTecnico.text <> '') then
  begin
    sFiltro := sFiltro + ' and (ofc.mecanico = '+IntToStr(cmbtecnico.LookupKeyValue)+ ' ) ';
    filtro := filtro +' - Técnico: ' + cmbTecnico.text;
  end;

  //------------------------------------ Filtro Servico Executado -----------------------------------------
  if (cmbServExecutado.text <> '') then
  begin
    sFiltro := sFiltro +' and (ofc.ID_TIPO_ATENDIMENTO = '+IntToStr(cmbServExecutado.LookupKeyValue)+ ' ) ';
    filtro := filtro + ' - Serviço Executado: ' + cmbServExecutado.text;
  end;

  qAtendimento_Sint.Close;
  qAtendimento_Sint.SQL.Text := sqlOriginal+sFiltro+' order by mec.nome, ofc.codigo ';
  qAtendimento_Sint.ParamByName('CNPJ').Value      := DMApp.Cnpj;
  qAtendimento_Sint.Open;


  {Montando resumo geral}
  sqlResumoGeral := 'select  sum(ofc.custo_os) valor, '' Custo Total: '' Descricao' +

                    '            from ofc_ordem_servico ofc '+
                    '            left join ofc_status             st on (st.codigo = ofc.cod_status and st.cnpj=ofc.cnpj) '+
                    '            left join ofc_mecanicos          mec on (mec.codigo = ofc.mecanico and mec.cnpj = ofc.cnpj)  '+
                    '            left join ofc_defeito            def on (def.codigo = ofc.defeito_reclamado and def.cnpj = ofc.cnpj) '+
                    '            left join ofc_motivo_chamado     mtc on (mtc.codigo = ofc.id_motivo_chamado and mtc.cnpj = ofc.cnpj) '+
                    '            left join ofc_tipo_atendimento   tpa on (tpa.codigo = ofc.id_tipo_atendimento and tpa.cnpj = ofc.cnpj) '+
                    '            left join glo_pessoas_fj         cli on (cli.codigo = ofc.pessoa_fj and cli.cnpj = ofc.cnpj) '+
                    '            left join glo_pessoas_fj         ctt on (ctt.codigo = ofc.cod_contato and ctt.cnpj = ofc.cnpj) '+
                    ' where (ofc.cnpj = :cnpj) '+ sFiltro +
                    '  union  '+
                    ' select  count(*) Valor, '' OS Abertas: '' Descricao '+

                    '            from ofc_ordem_servico ofc                '+
                    '            left join ofc_status             st on (st.codigo = ofc.cod_status and st.cnpj=ofc.cnpj) '+
                    '            left join ofc_mecanicos          mec on (mec.codigo = ofc.mecanico and mec.cnpj = ofc.cnpj) '+
                    '            left join ofc_defeito            def on (def.codigo = ofc.defeito_reclamado and def.cnpj = ofc.cnpj) '+
                    '           left join ofc_motivo_chamado     mtc on (mtc.codigo = ofc.id_motivo_chamado and mtc.cnpj = ofc.cnpj) '+
                    '            left join ofc_tipo_atendimento   tpa on (tpa.codigo = ofc.id_tipo_atendimento and tpa.cnpj = ofc.cnpj) '+
                    '            left join glo_pessoas_fj         cli on (cli.codigo = ofc.pessoa_fj and cli.cnpj = ofc.cnpj) '+
                    '            left join glo_pessoas_fj         ctt on (ctt.codigo = ofc.cod_contato and ctt.cnpj = ofc.cnpj) '+
                    ' where (ofc.cnpj = :cnpj) and ofc.data_fechamento is not null '+ sFiltro +
                    ' union '+
                    '  select  count(*) Valor, '' OS Fechadas: '' Descricao '+
                    '              from ofc_ordem_servico ofc   '+
                    '              left join ofc_status             st on (st.codigo = ofc.cod_status and st.cnpj=ofc.cnpj) '+
                    '              left join ofc_mecanicos          mec on (mec.codigo = ofc.mecanico and mec.cnpj = ofc.cnpj) '+
                    '              left join ofc_defeito            def on (def.codigo = ofc.defeito_reclamado and def.cnpj = ofc.cnpj)'+
                    '              left join ofc_motivo_chamado     mtc on (mtc.codigo = ofc.id_motivo_chamado and mtc.cnpj = ofc.cnpj) '+
                    '              left join ofc_tipo_atendimento   tpa on (tpa.codigo = ofc.id_tipo_atendimento and tpa.cnpj = ofc.cnpj) '+
                    '              left join glo_pessoas_fj         cli on (cli.codigo = ofc.pessoa_fj and cli.cnpj = ofc.cnpj)   '+
                    '              left join glo_pessoas_fj         ctt on (ctt.codigo = ofc.cod_contato and ctt.cnpj = ofc.cnpj)  '+
                    '  where (ofc.cnpj = :cnpj) and ofc.data_fechamento is null '+ sFiltro;

  QryResumoGeral.Close;
  QryResumoGeral.SQL.text := sqlResumoGeral;
  QryResumoGeral.ParamByName('CNPJ').Value      := DMApp.Cnpj;
  QryResumoGeral.open;

  QryCustoTecnico.Close;
  QryCustoTecnico.SQL.text := ' select  sum(ofc.custo_os) custo, sum (ofc.horas_trabalhadas) horas, mec.codigo, mec.nome '+
                              '        from ofc_ordem_servico ofc  '+
                              '        left join ofc_status             st on (st.codigo = ofc.cod_status and st.cnpj=ofc.cnpj) '+
                              '        left join ofc_mecanicos          mec on (mec.codigo = ofc.mecanico and mec.cnpj = ofc.cnpj) '+
                              '        left join ofc_defeito            def on (def.codigo = ofc.defeito_reclamado and def.cnpj = ofc.cnpj) '+
                              '        left join ofc_motivo_chamado     mtc on (mtc.codigo = ofc.id_motivo_chamado and mtc.cnpj = ofc.cnpj) '+
                              '        left join ofc_tipo_atendimento   tpa on (tpa.codigo = ofc.id_tipo_atendimento and tpa.cnpj = ofc.cnpj) '+
                              '        left join glo_pessoas_fj         cli on (cli.codigo = ofc.pessoa_fj and cli.cnpj = ofc.cnpj) '+
                              '        left join glo_pessoas_fj         ctt on (ctt.codigo = ofc.cod_contato and ctt.cnpj = ofc.cnpj) '+
                              ' where  (ofc.cnpj = :cnpj)  '+sfiltro+' group by mec.codigo, mec.nome order by sum(ofc.custo_os)';
  QryCustoTecnico.ParamByName('CNPJ').Value      := DMApp.Cnpj;
  QryCustoTecnico.Open;

  QryCustoCliente.close;
  QryCustoCliente.SQL.text := 'select  sum(ofc.custo_os) custo, sum (ofc.horas_trabalhadas) horas, cli.codigo, cli.nome_razao '+
                              '            from ofc_ordem_servico ofc  '+
                              '            left join ofc_status             st on (st.codigo = ofc.cod_status and st.cnpj=ofc.cnpj) '+
                              '            left join ofc_mecanicos          mec on (mec.codigo = ofc.mecanico and mec.cnpj = ofc.cnpj) '+
                              '            left join ofc_defeito            def on (def.codigo = ofc.defeito_reclamado and def.cnpj = ofc.cnpj) '+
                              '            left join ofc_motivo_chamado     mtc on (mtc.codigo = ofc.id_motivo_chamado and mtc.cnpj = ofc.cnpj) '+
                              '            left join ofc_tipo_atendimento   tpa on (tpa.codigo = ofc.id_tipo_atendimento and tpa.cnpj = ofc.cnpj) '+
                              '            left join glo_pessoas_fj         cli on (cli.codigo = ofc.pessoa_fj and cli.cnpj = ofc.cnpj) '+
                              '            left join glo_pessoas_fj         ctt on (ctt.codigo = ofc.cod_contato and ctt.cnpj = ofc.cnpj) '+
                              ' where (ofc.cnpj = :cnpj)  '+sfiltro+' group by cli.codigo, cli.nome_razao order by sum(ofc.custo_os)';
  QryCustoCliente.ParamByName('CNPJ').Value      := DMApp.Cnpj;
  QryCustoCliente.Open;

  QryCustoTPA.close;
  QryCustoTPA.SQL.text := ' select  sum(ofc.custo_os) custo, sum (ofc.horas_trabalhadas) horas, tpa.codigo, tpa.nome  '+
                          ' from ofc_ordem_servico ofc   '+
                          ' left join ofc_status             st on (st.codigo = ofc.cod_status and st.cnpj=ofc.cnpj) '+
                          ' left join ofc_mecanicos          mec on (mec.codigo = ofc.mecanico and mec.cnpj = ofc.cnpj) '+
                          ' left join ofc_defeito            def on (def.codigo = ofc.defeito_reclamado and def.cnpj = ofc.cnpj)  '+
                          ' left join ofc_motivo_chamado     mtc on (mtc.codigo = ofc.id_motivo_chamado and mtc.cnpj = ofc.cnpj)  '+
                          ' left join ofc_tipo_atendimento   tpa on (tpa.codigo = ofc.id_tipo_atendimento and tpa.cnpj = ofc.cnpj) '+
                          ' left join glo_pessoas_fj         cli on (cli.codigo = ofc.pessoa_fj and cli.cnpj = ofc.cnpj)  '+
                          ' left join glo_pessoas_fj         ctt on (ctt.codigo = ofc.cod_contato and ctt.cnpj = ofc.cnpj)  '+
                          ' where (ofc.cnpj = :cnpj) '+sfiltro+' group by tpa.codigo, tpa.nome order by sum(ofc.custo_os) ';
  QryCustoTPA.ParamByName('CNPJ').Value      := DMApp.Cnpj;
  QryCustoTPA.Open;

  if (ckConfigurar.Checked) then
  begin
    dmApp.ConfigurarRelatorio(rptAtendimento,Designer,FRel_ResumoAtendimentos.Caption);
    exit;
  end;

  dmCadastros2.CONFIG_REL_GRAFICO.close;
  dmCadastros2.CONFIG_REL_GRAFICO.parambyname('relatorio').value := FRel_ResumoAtendimentos.Caption;
  dmCadastros2.CONFIG_REL_GRAFICO.Open;

  rptAtendimento.Template.DatabaseSettings.Name := FRel_ResumoAtendimentos.Caption;
  rptAtendimento.Template.LoadFromDatabase;

  lblEmpresa.caption := dmApp.nome;
  lblFiltro.caption := Filtro;
  rptAtendimento.Print;
end;

procedure TFRel_ResumoAtendimentos.FormCreate(Sender: TObject);
begin
//  IniciaComponentes ( Self as TForm );

  with DmServicos do
  begin
    SelPessoasFJ.close;
    SelPessoasFJ.Open;;
    SelPessoasFJ.fetchAll;

    SelPessoasFJ2.close;
    SelPessoasFJ2.Open;;
    SelPessoasFJ2.fetchAll;

    SelMecanico.close;
    SelMecanico.open;
    SelMecanico.FetchAll;

    SelCidade.close;
    SelCidade.open;
    SelCidade.FetchAll;

    SelEquipCliente.close;
    SelEquipCliente.Open;
    SelEquipCliente.FetchAll;

    SelModelosProduto.Close;
    SelModelosProduto.Open;
    SelModelosProduto.FetchAll;

    SelStatus.Close;
    SelStatus.Open;
    SelStatus.FetchAll;

    SelMotivo.Close;
    SelMotivo.Open;
    SelMotivo.FetchAll;

    SelContrato.Close;
    SelContrato.Open;

    TipoAtendimento.Close;
    TipoAtendimento.Open;
  end;

  with dmCadastros2 do
  begin
    SelContratos.Close;
    SelContratos.Open;
    SelContratos.Fetchall;
  end;

  with DMRelatorios do
  begin
    SelRegiao.close;
    SelRegiao.open;
    SelRegiao.FetchAll;
  end;

  with DMCadastros do
  begin
    Marcas.close;
    Marcas.open;
    Marcas.FetchAll;
  end;
  sqlOriginal := qAtendimento_Sint.sql.text;
end;

procedure TFRel_ResumoAtendimentos.RzBitBtn2Click(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFRel_ResumoAtendimentos.cmbClienteExit(Sender: TObject);
begin
  TiraCorFundo ( Sender );
end;

procedure TFRel_ResumoAtendimentos.cmbClienteEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TFRel_ResumoAtendimentos.cmbEquipamentoExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TFRel_ResumoAtendimentos.cmbClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

function TFRel_ResumoAtendimentos.CompletaWhere(sFiltro, texto: string): string;
begin
  if sFiltro = '' then
     texto := ' where ' + texto
  else
     texto := sFiltro + ' and ' + texto;
  Result := texto;
end;

procedure TFRel_ResumoAtendimentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FRel_Rechamados := Nil;
end;

procedure TFRel_ResumoAtendimentos.ppHeaderBand6BeforePrint(Sender: TObject);
begin
  TppHeaderBand(Sender).visible := true;
end;

procedure TFRel_ResumoAtendimentos.ppHeaderBand3BeforePrint(
  Sender: TObject);
begin
  TppHeaderBand(Sender).Visible := true;
end;

end.
