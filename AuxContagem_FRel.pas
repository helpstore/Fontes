unit AuxContagem_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint, ComCtrls,
  ppBands, ppClass, ppDB, ppDBPipe, ppModule, raCodMod, ppCtrls, ppVar,
  ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport,IBQuery,
  ppParameter, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel, Menus, cxButtons;

type
  TFRelAuxContagemEstoque = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    rdbAtivo: TRadioButton;
    rdbNativo: TRadioButton;
    rptRelAuxContagem: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel13: TppLabel;
    ppLabel20: TppLabel;
    ppDetailBand2: TppDetailBand;
    lbl4: TppDBText;
    lbl3: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppShape1: TppShape;
    ppSystemVariable5: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    raCodeModule2: TraCodeModule;
    ppAuxContagem: TppDBPipeline;
    dsAuxContagem: TDataSource;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppLine2: TppLine;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppTitleBand1: TppTitleBand;
    ppShape5: TppShape;
    ppSystemVariable2: TppSystemVariable;
    ppLabel62: TppLabel;
    lblEmpresa: TppLabel;
    ppLine1: TppLine;
    cmbFornecedor: TdxLookupEdit;
    Label2: TcxLabel;
    dsFornecedores: TDataSource;
    Label1: TcxLabel;
    DsMarca: TDataSource;
    cmbMarca: TdxLookupEdit;
    lblFiltro: TppLabel;
    cmbGrupo: TdxLookupEdit;
    Label3: TcxLabel;
    cmbSubGrupo: TdxLookupEdit;
    Label4: TcxLabel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    dsGrupo: TDataSource;
    dsSubGrupo: TDataSource;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ckLocalidade: TCheckBox;
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
    procedure cmbGrupoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmbFornecedorEnter(Sender: TObject);
    procedure cmbFornecedorExit(Sender: TObject);
    procedure ckLocalidadeEnter(Sender: TObject);
    procedure ckLocalidadeExit(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelAuxContagemEstoque: TFRelAuxContagemEstoque;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelAuxContagemEstoque.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelAuxContagemEstoque.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelAuxContagemEstoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  Action := caFree;
  FRelAuxContagemEstoque := Nil;
end;

procedure TFRelAuxContagemEstoque.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelAuxContagemEstoque.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
    Try
//
  dsFornecedores.DataSet.Close;
  TIBQuery(dsFornecedores.DataSet).fetchAll;
  dsFornecedores.DataSet.Open;

  DsMarca.DataSet.Close;
  TIBQuery(DsMarca.DataSet).fetchAll;
  DsMarca.DataSet.Open;

  DsGrupo.DataSet.Close;
  TIBQuery(DsGrupo.DataSet).fetchAll;
  DsGrupo.DataSet.Open;

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

procedure TFRelAuxContagemEstoque.ActPreviewExecute(Sender: TObject);
Var
    filtro: String;
begin

  with dmrelatorios do
  begin
    filtro := '';
    lblFiltro.text :='';
    qryRelAuxContagem.close;
    qryRelAuxContagem.sql.text := ' select distinct coalesce(prd.codigo,'''')||'' - ''||coalesce(prd.nome,'''') prd_produto, prd.unidade, '+
                                  ' gr.nome prd_grupo, sgr.nome prd_sub_grupo, prd.localizacao_1, prd.localizacao_2, prd.localizacao_3 from est_produtos prd '+
                                  ' left join est_grupos gr on (gr.codigo = prd.grupo and gr.cnpj = prd.cnpj) '+
                                  ' left join est_subgrupos sgr on (sgr.subgrupo = prd.subgrupo and sgr.cnpj = prd.cnpj and sgr.grupo = gr.codigo)'+
                                  ' where prd.cnpj = '+QuotedStr(dmapp.cnpj);




    //-------------------Forncedor------------------------
    if (cmbFornecedor.text <> '' ) then
    begin
      filtro := ' and prd.fornecedor = '+IntToStr(cmbfornecedor.lookupkeyValue);
      lblFiltro.text := lblFiltro.text +  ' - Fornecedor:'+cmbfornecedor.text;
    end
    else
      lblFiltro.text := lblFiltro.text +  ' - Fornecedor: Todos';

    //-------------------Marca------------------------
    if (cmbmarca.text <> '' ) then
    begin
      filtro := filtro + ' and prd.marca = '+IntToStr(cmbmarca.lookupkeyValue);
      lblFiltro.text := lblFiltro.text +  ' - Marca:'+cmbMarca.text;
    end
    else
      lblFiltro.text := lblFiltro.text +  ' - Marca: Todas';

    //-------------------Grupo------------------------
    if (cmbGrupo.text <> '' ) then
    begin
      filtro := filtro + ' and prd.Grupo = '+IntToStr(cmbGrupo.lookupkeyValue);
      lblFiltro.text := lblFiltro.text +  ' - Grupo:'+cmbGrupo.text;
    end
    else
      lblFiltro.text := lblFiltro.text +  ' - Grupo: Todos';


    //-------------------SubGrupo------------------------
    if (cmbSubGrupo.text <> '' ) then
    begin
      filtro := filtro + ' and prd.subgrupo = '+IntToStr(cmbSubGrupo.lookupkeyValue);
      lblFiltro.text := lblFiltro.text +  ' - Sub-Grupo:'+cmbSubGrupo.text;
    end
    else
      lblFiltro.text := lblFiltro.text +  ' - SubGrupo: Todos';

    //-------------------Imprime Localidade------------------------
    ppDBText3.Visible := (ckLocalidade.Checked);    
    ppDBText4.Visible := (ckLocalidade.Checked);
    ppDBText5.Visible := (ckLocalidade.Checked);
    if (ckLocalidade.Checked) then
      lblFiltro.text := lblFiltro.text +  ' - Imprime Localidade: Sim'
    else
      lblFiltro.text := lblFiltro.text +  ' - Imprime Localidade: Não';

    //-------------------Produto Ativo------------------------
    if rdbAtivo.Checked Then
    begin
      lblFiltro.text := lblFiltro.text + ' - Prds. Ativos = Sim';
      filtro := filtro + ' and prd.ativo = ''S''';
    end
    else
    begin
      lblFiltro.text := lblFiltro.text +  ' - Prds. Ativos = Não';
      filtro := filtro + ' and prd.ativo = ''N''';
    end;


    qryRelAuxContagem.sql.add(filtro+ ' order by gr.nome, sgr.nome, prd.nome');
    qryRelAuxContagem.Open;

    lblEmpresa.text := dmapp.nome;
    rptRelAuxContagem.print;
  end;

end;

procedure TFRelAuxContagemEstoque.cmbGrupoExit(Sender: TObject);
begin
  if (cmbGrupo.text <> '') then
  begin
    cmbSubGrupo.enabled := true;
    dsSubGrupo.dataset.Close;
    TIBQuery(dsSubGrupo.dataset).parambyname('codigo').value := cmbGrupo.LookupkeyValue;
    dsSubGrupo.dataset.open;
    TIBQuery(dsSubGrupo.dataset).FetchAll;
  end
  else
  begin
    dsSubGrupo.dataset.Close;
    cmbSubGrupo.enabled := false;
  end;

end;

procedure TFRelAuxContagemEstoque.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFRelAuxContagemEstoque.cmbFornecedorEnter(Sender: TObject);
begin
  CorFundo ( Sender );
end;

procedure TFRelAuxContagemEstoque.cmbFornecedorExit(Sender: TObject);
begin
  TiraCorFundo ( Sender );
end;

procedure TFRelAuxContagemEstoque.ckLocalidadeEnter(Sender: TObject);
begin
  CorFundo ( Sender );
end;

procedure TFRelAuxContagemEstoque.ckLocalidadeExit(Sender: TObject);
begin
  TiraCorFundo ( Sender );
end;

end.
