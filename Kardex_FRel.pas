unit Kardex_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, Mask, DBCtrls,
  ppDB, ppDBPipe, ppParameter, ppModule, raCodMod, ppCtrls, ppBands, ppVar,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,  
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
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar;

type
  TFRelKardex = class(TForm)
    pnlClient: TPanel;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    Label2: TcxLabel;
    cmbProduto: TdxLookupEdit;
    dsProdutos: TDataSource;
    ActBuscarProd: TAction;
    rptKardex: TppReport;
    ppTitleBand6: TppTitleBand;
    ppShape5: TppShape;
    lblEmpresa: TppLabel;
    ppLabel62: TppLabel;
    lblFiltroSint: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppHeaderBand2: TppHeaderBand;
    ppLabel64: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel72: TppLabel;
    ppLine5: TppLine;
    ppDetailBand6: TppDetailBand;
    ppDBText56: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText64: TppDBText;
    ppDBText1: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppShape9: TppShape;
    ppSystemVariable3: TppSystemVariable;
    ppSummaryBand2: TppSummaryBand;
    ppLabel73: TppLabel;
    ppLine11: TppLine;
    raCodeModule4: TraCodeModule;
    ppParameterList2: TppParameterList;
    dbKardex: TppDBPipeline;
    dsKardex: TDataSource;
    gbData: TGroupBox;
    Label3: TcxLabel;
    Label5: TcxLabel;
    edAs1: TcxLabel;
    edAs3: TcxLabel;
    Rd1: TRadioButton;
    Rd2: TRadioButton;
    DataInicial: TcxDateEdit;
    DataFinal: TcxDateEdit;
    Panel2: TPanel;
    BtnOk: TcxButton;
    RzBitBtn2: TcxButton;
    ppDBText3: TppDBText;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppLabel2: TppLabel;
    ppDBText5: TppDBText;
    ppLabel3: TppLabel;
    ppDBText6: TppDBText;
    ppLabel4: TppLabel;
    ppDBText7: TppDBText;
    ppLabel5: TppLabel;
    ppDBText8: TppDBText;
    ppLabel6: TppLabel;
    ppDBText9: TppDBText;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText10: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure ActBuscarProdExecute(Sender: TObject);
    procedure cmbCodProdutoEnter(Sender: TObject);
    procedure cmbCodProdutoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelKardex: TFRelKardex;
  sqlOriginal : string;
  Linha, Pagina: Integer;
implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes,
  Localizar_Produto_Cadastro_Auto, Relatorios_DM2;

{$R *.DFM}

procedure TFRelKardex.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  sqlOriginal := dmRelatorios2.Kardex.sql.text;
end;

procedure TFRelKardex.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelKardex.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  dsProdutos.DataSet.Close;
  //
  Action := caFree;
  FRelKardex := Nil;
end;

procedure TFRelKardex.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelKardex.FormShow(Sender: TObject);
begin
  IniciaComponentes(Self as TForm);
  Try
    dsProdutos.DataSet.Open;
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

procedure TFRelKardex.ActPreviewExecute(Sender: TObject);
var
  ssql, tipodoc : string;
begin
  if Trim(cmbProduto.Text) = '' then
  begin
    application.messagebox('Informe o produto','Aviso',mb_ok + mb_iconinformation);
    cmbProduto.SetFocus;
    Exit;
  end;

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

  //Opção de pesquisa
  if (rd1.Checked) then
  begin
    tipodoc := 'Movimento';
    ssql := ' and (k.dt_kardex between :dt_inicial and :dt_final) ';
  end else
  begin
    tipodoc := 'Documento';
    ssql := ' and (k.dt_movto between :dt_inicial and :dt_final) ';
  end;

  with DMRelatorios2 do
  begin
    Kardex.close;
    Kardex.sql.text :=  sqlOriginal + ssql + ' order by k.codigo ';
    Kardex.ParamByName('CNPJ').asString     := DMApp.Cnpj;
    Kardex.ParamByName('PRODUTO').asString  := cmbProduto.LookupKeyValue;
    Kardex.ParamByName('DT_INICIAL').asDate := DataInicial.Date;
    Kardex.ParamByName('DT_FINAL').asDate   := DataFinal.Date;
    Kardex.Open;
  end;

  lblFiltroSint.caption := 'Produto: '+cmbProduto.text+ ' - Período: '+DateToStr(DataInicial.date)+' à '+DateToStr(DataFinal.Date)+' - Tp. Data: '+tipodoc;
  lblEmpresa.caption := dmapp.nome;
  rptKardex.print;
  dmRelatorios2.Kardex.sql.text :=  sqlOriginal;
end;

procedure TFRelKardex.ActBuscarProdExecute(Sender: TObject);
Var CodigoProduto: String[13];
begin
  //
  CodigoProduto := DMApp.LocalizarProduto;
  //
  {If Trim(CodigoProduto) <> '' Then
     Begin
       cmbCodProduto.LookupKeyValue := CodigoProduto;
       cmbProduto.LookupKeyValue    := CodigoProduto;
       edDataIni.SetFocus;
     End
  Else
     cmbCodProduto.SetFocus;}
end;

procedure TFRelKardex.cmbCodProdutoEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRelKardex.cmbCodProdutoExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACorFundo ( Sender );
end;

end.
