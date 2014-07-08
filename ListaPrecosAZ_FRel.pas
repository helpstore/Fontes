unit ListaPrecosAZ_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, ppDB,
  ppDBPipe, ppParameter, ppModule, raCodMod, ppBands, ppCtrls, ppVar,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,  
  Mask,  cxPropertiesStore,     cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit,
  cxCurrencyEdit;

type
  TFRelListaPrecosAZ = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: tcxButton;
    RzBitBtn2: tcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    Label2: TLabel;
    ActBuscarProd: TAction;
    LblStatus: TLabel;
    ANDA: TProgressBar;
    Label4: TLabel;
    EdTipo: TdxPickEdit;
    cmbProdutoInicial: TdxEdit;
    rptRelAZ: TppReport;
    ppTitleBand6: TppTitleBand;
    ppShape5: TppShape;
    lblEmpresa: TppLabel;
    lblNomeRel: TppLabel;
    lblFiltro: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppHeaderBand2: TppHeaderBand;
    ppLabel63: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLine5: TppLine;
    ppDetailBand6: TppDetailBand;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppShape9: TppShape;
    ppSystemVariable3: TppSystemVariable;
    raCodeModule4: TraCodeModule;
    ppParameterList2: TppParameterList;
    dbRelAZ: TppDBPipeline;
    dsRelAZ: TDataSource;
    Label1: TLabel;
    cmbMarca: TdxLookupEdit;
    Label3: TLabel;
    cmbGrupo: TdxLookupEdit;
    Label5: TLabel;
    cmbSubGrupo: TdxLookupEdit;
    dsMarca: TDataSource;
    dsGrupo: TDataSource;
    dsSGrupo: TDataSource;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    gbValor: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    edtVlrInicial: TcxCurrencyEdit;
    edtVlrFinal: TcxCurrencyEdit;
    FRelListaPrecosAZ: TcxPropertiesStore;
    ppAppRepresentante: TppDBPipeline;
    dsApp: TDataSource;
    ppDBText3: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure cmbProdutoInicialEnter(Sender: TObject);
    procedure cmbProdutoInicialExit(Sender: TObject);
    procedure cmbGrupoExit(Sender: TObject);
    procedure cmbGrupoChange(Sender: TObject);
    procedure edtVlrInicialEnter(Sender: TObject);
    procedure edtVlrInicialExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelListaPrecosAZ: TFRelListaPrecosAZ;
  Linha, Pagina: Integer;
implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes, Cadastros_DM;

{$R *.DFM}

procedure TFRelListaPrecosAZ.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

end;

procedure TFRelListaPrecosAZ.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelListaPrecosAZ.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  Action := caFree;
  FRelListaPrecosAZ := Nil;
end;

procedure TFRelListaPrecosAZ.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelListaPrecosAZ.FormShow(Sender: TObject);
begin
  Try
  //
  IniciaComponentes(Self as TForm);
  //
  with Dmcadastros do
  begin
    SelMarca.close;
    SelMarca.open;
    SelMarca.FetchAll;

    SelGrupo.close;
    SelGrupo.open;
    SelGrupo.FetchAll;
  end;


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

procedure TFRelListaPrecosAZ.ActPreviewExecute(Sender: TObject);
var
  FiltroRpt, filtro : string;
begin
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  //

  filtro := '';
  FiltroRpt := '';
  with dmRelatorios do
  begin

    ListaPrecosAZ.SQL.Clear ;
    ListaPrecosAZ.SQL.text :='  SELECT  P.CODIGO CODIGO, P.NOME, P.UNIDADE, P.PRC_VENDA, mrc.nome marca, grp.nome grupo, sgrp.nome sgrupo FROM EST_PRODUTOS P'+
                             ' left join est_marcas mrc on (p.marca = mrc.codigo and mrc.cnpj = p.cnpj)'+
                             ' left join est_grupos grp on (p.grupo = grp.codigo and grp.cnpj = p.cnpj)'+
                             ' left join est_subgrupos sgrp on (grp.codigo = sgrp.grupo and sgrp.subgrupo = p.subgrupo and sgrp.cnpj = grp.cnpj)'+
                             '  WHERE P.CNPJ = :CNPJ and (p.prc_venda between :preco1 and :preco2)';

    ListaPrecosAZ.ParamByName('CNPJ').asString := DMApp.Cnpj;

//-------------------------------- Ativo/Desativo/Todos  ----------------------------
    If(EdTipo.Text = 'Ativo') Then
    begin
      Filtro := Filtro + ' AND  ATIVO = ''S''';
      FiltroRpt := ' Status: Ativo';
    end
    Else if (EdTipo.Text = 'Desativado') then
    begin
      Filtro := Filtro + ' AND  ATIVO = ''N''';
      FiltroRpt := ' Status: Inativo';
    end
    else
      FiltroRpt := ' Status: Todos';

    //-------------------------------- MARCA  ----------------------------
    if (cmbMarca.text <> '') then
    begin
      Filtro := Filtro + ' AND  MRC.CODIGO = '+IntToStr(cmbMarca.LookupKeyValue);
      FiltroRpt := FiltroRpt+ ' Marca: '+cmbMarca.text;
    end;

    //-------------------------------- GRUPO  ----------------------------
    if (cmbGrupo.text <> '') then
    begin
      Filtro := Filtro + ' AND  grp.CODIGO = '+IntToStr(cmbGrupo.LookupKeyValue);
      FiltroRpt := FiltroRpt+ ' Grupo: '+cmbGrupo.text;
    end;

    //-------------------------------- SUB-GRUPO  ----------------------------
    if ((cmbSubGrupo.text <> '') and (cmbSubGrupo.enabled)) then
    begin
      Filtro := Filtro + ' AND  sgrp.subgrupo = '+IntToStr(cmbSubGrupo.LookupKeyValue);
      FiltroRpt := FiltroRpt+ ' Sub-Grupo: '+cmbSubGrupo.text;
    end;

    //-------------------------------- Produto inicial até letra "Z"  ----------------------------
    If cmbProdutoInicial.Text <> '' Then
    begin
      filtro := Filtro + '  AND P.NOME LIKE ' + char(39) + TRIM(cmbProdutoInicial.TEXT) + '%' + char(39);
      FiltroRpt := FiltroRpt + ' Produto inicial: '''+TRIM(cmbProdutoInicial.TEXT)+'''';
    end;

    ListaPrecosAZ.SQL.Add(Filtro);
    ListaPrecosAZ.SQL.Add ('  ORDER BY P.NOME                              ');
    ListaPrecosAZ.parambyname('preco1').value := edtVlrInicial.value;
    ListaPrecosAZ.parambyname('preco2').value := edtVlrFinal.value;
    ListaPrecosAZ.Open;
  end;//end with

  lblEmpresa.text := dmapp.nome;
  lblFiltro.text := FiltroRpt;
  rptRelAZ.print;
  exit;
end;

procedure TFRelListaPrecosAZ.cmbProdutoInicialEnter(Sender: TObject);
begin
  CORFUNDO ( SENDER );
end;

procedure TFRelListaPrecosAZ.cmbProdutoInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFRelListaPrecosAZ.cmbGrupoExit(Sender: TObject);
begin
  TIRACORFUNDO ( SENDER );
  with DMCadastros do
  begin
    if (trim(cmbGrupo.text) = '') then
      exit;

    SelSubGrupo.Close;
    SelSubGrupo.parambyname('codigo').value := SelGrupoCODIGO.Value;
    SelSubGrupo.Open;
    SelSubGrupo.FetchAll;
  end;
end;

procedure TFRelListaPrecosAZ.cmbGrupoChange(Sender: TObject);
begin
  if (trim(cmbGrupo.text) = '') then
  begin
    DMCadastros.SelSubGrupo.Close;
    cmbSubGrupo.enabled := false;
  end
  else
  begin
    with DMCadastros do
    begin
      SelSubGrupo.Close;
      SelSubGrupo.parambyname('codigo').value := SelGrupoCODIGO.Value;
      SelSubGrupo.Open;
      SelSubGrupo.FetchAll;
    end;
    cmbSubGrupo.enabled := true;
  end;


end;

procedure TFRelListaPrecosAZ.edtVlrInicialEnter(Sender: TObject);
begin
  CORFUNDO ( SENDER );
end;

procedure TFRelListaPrecosAZ.edtVlrInicialExit(Sender: TObject);
begin
  TIRACORFUNDO ( SENDER );
end;

end.
