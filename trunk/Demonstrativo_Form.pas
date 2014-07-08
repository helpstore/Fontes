unit Demonstrativo_Form;
                 
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,  ComCtrls, 
  TeeProcs, TeEngine, Chart, DBChart, Series,  IBCustomDataSet,
  IBQuery, dxTL, dxDBCtrl, dxDBTL,   ImgList, Menus,  
  dxPSCore,dxPSTVLnk, dxPSdxDBTVLnk, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxtree, dxdbtree,
   ppChrtDP,
  ppParameter, ppModule, raCodMod, ppBands, ppVar, ppCtrls, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  dxmdaset, cxPropertiesStore, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, dxSkinsCore,
  dxSkinscxPCPainter, dxSkinsdxBarPainter, dxBarSkinnedCustForm,
  dxSkinsdxRibbonPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxButtons, cxLabel, cxPC,
  cxCustomData, cxStyles, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu,
  cxInplaceContainer, cxDBTL, cxTLData;

type
  Reg_Demon = record
     CODIGO: Integer;
     AGRUPADOR: Integer;
     NOME: String;
     VALOR1: double;
     VALOR2: double;
     VALOR3: double;
     VALOR4: double;
     VALOR5: double;
     VALOR6: double;
end;

type
  TfrmDemonstrativo = class(TForm)
    Actions: TActionList;
    ActPreview: TAction;
    ActImprimir: TAction;
    qryPlano: TIBQuery;
    qryPlanoCODIGO: TIntegerField;
    qryPlanoAGRUPADOR: TIntegerField;
    qryPlanoNOME: TIBStringField;
    qryPlanoVALOR1: TFloatField;
    qryPlanoVALOR2: TFloatField;
    qryPlanoVALOR3: TFloatField;
    qryPlanoVALOR4: TFloatField;
    qryPlanoVALOR5: TFloatField;
    qryPlanoVALOR6: TFloatField;
    qryPlanoSMES1: TIBStringField;
    qryPlanoSMES2: TIBStringField;
    qryPlanoSMES3: TIBStringField;
    qryPlanoSMES4: TIBStringField;
    qryPlanoSMES5: TIBStringField;
    qryPlanoSMES6: TIBStringField;
    dsDemostrativo: TDataSource;
    tblMen2: TdxMemData;
    tblMen2AGRUPADOR: TIntegerField;
    tblMen2CODIGO: TIntegerField;
    tblMen2NOME: TStringField;
    tblMen2VALOR1: TFloatField;
    tblMen2VALOR2: TFloatField;
    tblMen2VALOR3: TFloatField;
    tblMen2VALOR4: TFloatField;
    tblMen2VALOR5: TFloatField;
    tblMen2VALOR6: TFloatField;
    tblMen2SMES1: TStringField;
    tblMen2SMES2: TStringField;
    tblMen2SMES3: TStringField;
    tblMen2SMES4: TStringField;
    tblMen2SMES5: TStringField;
    tblMen2SMES6: TStringField;
    tblMen2Total: TFloatField;
    ImageList1: TImageList;
    PopupMenu: TPopupMenu;
    Visualizar1: TMenuItem;
    Imprimir1: TMenuItem;
    N1: TMenuItem;
    ActGrafico: TAction;
    tblGrafico: TdxMemData;
    tblGraficoMes: TStringField;
    tblGraficoValor: TFloatField;
    pgcDemonstrativo: TcxPageControl;
    tbsDemonstrativo: TcxTabSheet;
    tbsGrafico: TcxTabSheet;
    GroupBox1: TGroupBox;
    Label1: TcxLabel;
    Label2: TcxLabel;
    edtMes: TdxSpinEdit;
    edtAno: TdxSpinEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    DBTreeList: TdxDBTreeList;
    DBTreeListNOME: TdxDBTreeListMaskColumn;
    DBTreeListVALOR1: TdxDBTreeListMaskColumn;
    DBTreeListVALOR2: TdxDBTreeListMaskColumn;
    DBTreeListVALOR3: TdxDBTreeListMaskColumn;
    DBTreeListVALOR4: TdxDBTreeListMaskColumn;
    DBTreeListVALOR5: TdxDBTreeListMaskColumn;
    DBTreeListVALOR6: TdxDBTreeListMaskColumn;
    DBTreeListTotal: TdxDBTreeListMaskColumn;
    Panel2: TPanel;
    RzBitBtn3: TcxButton;
    RzBitBtn2: TcxButton;
    GRAFICO: TDBChart;
    Series3: TFastLineSeries;
    dxComponentPrinter1: TdxComponentPrinter;
    Panel1: TPanel;
    RzBitBtn4: TcxButton;
    RzBitBtn6: TcxButton;
    ActImprimirGrafico: TAction;
    dbGrafico: TppDBPipeline;
    dsGrafico: TDataSource;
    rptGrafico: TppReport;
    ppTitleBand6: TppTitleBand;
    ppShape5: TppShape;
    lblRel: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand6: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppShape9: TppShape;
    ppSystemVariable3: TppSystemVariable;
    raCodeModule4: TraCodeModule;
    ppParameterList2: TppParameterList;
    lblTituloRel: TppLabel;
    stgfrmDemonstrativo2: TcxPropertiesStore;
    ExpandirTodos1: TMenuItem;
    ContrairTodos1: TMenuItem;
    ppAppRepresentante: TppDBPipeline;
    dsApp: TDataSource;
    ppDBText1: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure ActImprimirExecute(Sender: TObject);
    procedure DBTreeListVALOR1CustomDrawColumnHeader(Sender: TObject;
      AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
      var ADone: Boolean);
    procedure DBTreeListVALOR2CustomDrawColumnHeader(Sender: TObject;
      AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
      var ADone: Boolean);
    procedure DBTreeListVALOR3CustomDrawColumnHeader(Sender: TObject;
      AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
      var ADone: Boolean);
    procedure DBTreeListVALOR4CustomDrawColumnHeader(Sender: TObject;
      AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
      var ADone: Boolean);
    procedure DBTreeListVALOR5CustomDrawColumnHeader(Sender: TObject;
      AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
      var ADone: Boolean);
    procedure DBTreeListVALOR6CustomDrawColumnHeader(Sender: TObject;
      AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
      var ADone: Boolean);
    procedure DBTreeListNOMECustomDrawColumnHeader(Sender: TObject;
      AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
      var ADone: Boolean);
    procedure DBTreeListGetStateIndex(Sender: TObject;
      Node: TdxTreeListNode; var Index: Integer);
    procedure DBTreeListVALOR1CustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure N1Click(Sender: TObject);
    procedure ActGraficoExecute(Sender: TObject);
    procedure ActImprimirGraficoExecute(Sender: TObject);
    procedure ExpandirTodos1Click(Sender: TObject);
    procedure ContrairTodos1Click(Sender: TObject);
    procedure pgcDemonstrativoChange(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
    function TotalFilhos(Qtde_Reg, Pai,vl: Integer): double;
  public
    { Public declarations }
  end;

var
  frmDemonstrativo: TfrmDemonstrativo;
  Reg : array of Reg_demon;
implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes, Main,
  Rel_GraficoVendas_Form, GraficoVendas_Form;

{$R *.DFM}

procedure TfrmDemonstrativo.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

end;

procedure TfrmDemonstrativo.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmDemonstrativo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  Action := caFree;
  frmDemonstrativo := Nil;
  FrmMain.PnlClient.Visible := True;
end;

procedure TfrmDemonstrativo.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmDemonstrativo.FormShow(Sender: TObject);
begin
  IniciaComponentes(Self as TForm);
  edtAno.IntValue := Year(Date);
  edtMes.IntValue := Month(Date);
  pgcDemonstrativo.activePage := tbsDemonstrativo;

  Try
       //
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

procedure TfrmDemonstrativo.ActPreviewExecute(Sender: TObject);
var
  ttlReg,i : integer;
begin
  pgcDemonstrativo.ActivePage := tbsDemonstrativo;
  tblMen2.open;
  qryPlano.Close;
  qryPlano.parambyname('cnpj').value := dmapp.cnpj;
  qryPlano.parambyname('mes').value := edtMes.IntValue;
  qryPlano.parambyname('ano').value := edtAno.IntValue;
  qryPlano.open;
  qryPlano.FetchAll;
  if not tblMen2.IsEmpty then
    tblMen2.Data.Values.Clear;

  ttlReg := qryPlano.RecordCount;
  setlength(Reg,ttlReg+2);

  //-------------------------Preenchendo os Memory Tables--------------------------//
  qryPlano.first;
  i := 1;
  while not qryPlano.eof do
  begin
    Reg[i].Codigo := qryPlanoCODIGO.value;
    Reg[i].nome := qryplanoNome.value;
    Reg[i].agrupador := qryPlanoAgrupador.value;
    Reg[i].valor1 := qryplanoValor1.value;
    Reg[i].valor2 := qryplanoValor2.value;
    Reg[i].valor3 := qryplanoValor3.value;
    Reg[i].valor4 := qryplanoValor4.value;
    Reg[i].valor5 := qryplanoValor5.value;
    Reg[i].valor6 := qryplanoValor6.value;
    inc(i);
    qryPlano.Next;
  end;

  qryPlano.first;
  while not qryplano.eof do
  begin
    tblMen2.Append;
    tblMen2CODIGO.value := qryPlanoCODIGO.value;
    tblMen2AGRUPADOR.value := qryPlanoAgrupador.value;
    tblMen2NOME.value    :=  qryPlanoNome.value;
    tblMen2VALOR1.value  :=  qryPlanoValor1.value + TotalFilhos(ttlReg,qryplanoCodigo.value,1);
    tblMen2VALOR2.value  :=  qryPlanoValor2.value + TotalFilhos(ttlReg,qryplanoCodigo.value,2);
    tblMen2VALOR3.value  :=  qryPlanoValor3.value + TotalFilhos(ttlReg,qryplanoCodigo.value,3);
    tblMen2VALOR4.value  :=  qryPlanoValor4.value + TotalFilhos(ttlReg,qryplanoCodigo.value,4);
    tblMen2VALOR5.value  :=  qryPlanoValor5.value + TotalFilhos(ttlReg,qryplanoCodigo.value,5);
    tblMen2VALOR6.value  :=  qryPlanoValor6.value + TotalFilhos(ttlReg,qryplanoCodigo.value,6);

    tblMen2SMES1.value  :=  qryPlanoSMES1.value;
    tblMen2SMES2.value  :=  qryPlanoSMES2.value;
    tblMen2SMES3.value  :=  qryPlanoSMES3.value;
    tblMen2SMES4.value  :=  qryPlanoSMES4.value;
    tblMen2SMES5.value  :=  qryPlanoSMES5.value;
    tblMen2SMES6.value  :=  qryPlanoSMES6.value;

    tblMen2Total.value  := tblMen2VALOR1.asFloat + tblMen2VALOR2.asFloat + tblMen2VALOR3.asFloat+ tblMen2VALOR4.asFloat + tblMen2VALOR5.asFloat + tblMen2VALOR6.asFloat;
    tblmen2.post;
    qryplano.next;
  end;
  DBTreeList.FullCollapse;
end;

function TfrmDemonstrativo.TotalFilhos(Qtde_Reg, Pai, Vl: Integer): double;
var
    i: integer;
    valor : double;
begin
    valor := 0;
    for i:= 1 to Qtde_Reg do
    Begin
      if (Reg[i].agrupador = Pai) then
      begin
         case vl of
           1 : valor := Valor + Reg[i].valor1 + (TotalFilhos(Qtde_Reg,Reg[i].Codigo,vl));
           2 : valor := Valor + Reg[i].valor2 + (TotalFilhos(Qtde_Reg,Reg[i].Codigo,vl));
           3 : valor := Valor + Reg[i].valor3 + (TotalFilhos(Qtde_Reg,Reg[i].Codigo,vl));
           4 : valor := Valor + Reg[i].valor4 + (TotalFilhos(Qtde_Reg,Reg[i].Codigo,vl));
           5 : valor := Valor + Reg[i].valor5 + (TotalFilhos(Qtde_Reg,Reg[i].Codigo,vl));
           6 : valor := Valor + Reg[i].valor6 + (TotalFilhos(Qtde_Reg,Reg[i].Codigo,vl));
         end;
      end;
    end;
    Result := valor;
end;


procedure TfrmDemonstrativo.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TfrmDemonstrativo.IniExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TfrmDemonstrativo.ActImprimirExecute(Sender: TObject);
begin
//
end;

procedure TfrmDemonstrativo.DBTreeListVALOR1CustomDrawColumnHeader(
  Sender: TObject; AColumn: TdxTreeListColumn; ACanvas: TCanvas;
  ARect: TRect; var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
  var ADone: Boolean);
begin
  AColumn.caption := tblMen2SMES1.value;
end;

procedure TfrmDemonstrativo.DBTreeListVALOR2CustomDrawColumnHeader(
  Sender: TObject; AColumn: TdxTreeListColumn; ACanvas: TCanvas;
  ARect: TRect; var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
  var ADone: Boolean);
begin
  AColumn.caption := tblMen2SMES2.value;
end;

procedure TfrmDemonstrativo.DBTreeListVALOR3CustomDrawColumnHeader(
  Sender: TObject; AColumn: TdxTreeListColumn; ACanvas: TCanvas;
  ARect: TRect; var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
  var ADone: Boolean);
begin
  AColumn.caption := tblMen2SMES3.value;
end;

procedure TfrmDemonstrativo.DBTreeListVALOR4CustomDrawColumnHeader(
  Sender: TObject; AColumn: TdxTreeListColumn; ACanvas: TCanvas;
  ARect: TRect; var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
  var ADone: Boolean);
begin
  AColumn.caption := tblMen2SMES4.value;
end;

procedure TfrmDemonstrativo.DBTreeListVALOR5CustomDrawColumnHeader(
  Sender: TObject; AColumn: TdxTreeListColumn; ACanvas: TCanvas;
  ARect: TRect; var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
  var ADone: Boolean);
begin
  AColumn.caption := tblMen2SMES5.value;
end;

procedure TfrmDemonstrativo.DBTreeListVALOR6CustomDrawColumnHeader(
  Sender: TObject; AColumn: TdxTreeListColumn; ACanvas: TCanvas;
  ARect: TRect; var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
  var ADone: Boolean);
begin
  AColumn.caption := tblMen2SMES6.value;
end;

procedure TfrmDemonstrativo.DBTreeListNOMECustomDrawColumnHeader(
  Sender: TObject; AColumn: TdxTreeListColumn; ACanvas: TCanvas;
  ARect: TRect; var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
  var ADone: Boolean);
begin
  AColumn.caption := '';
end;

procedure TfrmDemonstrativo.DBTreeListGetStateIndex(Sender: TObject;
  Node: TdxTreeListNode; var Index: Integer);
begin
  if Node.Expanded then
    Index := 1
  else Index := 0;
end;

procedure TfrmDemonstrativo.DBTreeListVALOR1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  valor : string;
begin
  valor := StringReplace(AText,'.','',[rfReplaceAll]);
  if strToFloat(Valor) < 0 then
    AFont.Color := clRed
  else if strToFloat(Valor) > 0 then
    AFont.Color := clGreen;
end;

procedure TfrmDemonstrativo.N1Click(Sender: TObject);
begin
 //
end;

procedure TfrmDemonstrativo.ActGraficoExecute(Sender: TObject);
begin
  if tblMen2.recordCount < 1 then
  begin
    application.messagebox('Primeiramente relize a filtragem dos valores antes de exibir o gráfico','Aviso',mb_ok+mb_iconinformation);
    exit;
  end;
  pgcDemonstrativo.ActivePage := tbsGrafico;
  Grafico.Title.Text.SetText(Pchar('Demonstrativo Financeiro - Progressão de Valores - ('+tblMen2Nome.asString+')'));
  tblGrafico.Open;
  if not tblGrafico.IsEmpty then
   tblGrafico.data.Values.Clear;

  tblGrafico.append;
  tblGraficoMes.value := tblMen2SMES1.value;
  tblGraficoValor.value := tblmen2Valor1.asFloat;
  tblGrafico.post;

  tblGrafico.append;
  tblGraficoMes.value := tblmen2sMes2.value;
  tblGraficoValor.value := tblmen2Valor2.asFloat;
  tblGrafico.post;

  tblGrafico.append;
  tblGraficoMes.value := tblmen2sMes3.value;
  tblGraficoValor.value := tblmen2Valor3.asFloat;
  tblGrafico.post;

  tblGrafico.append;
  tblGraficoMes.value := tblmen2sMes4.value;
  tblGraficoValor.value := tblmen2Valor4.asFloat;
  tblGrafico.post;

  tblGrafico.append;
  tblGraficoMes.value := tblmen2sMes1.value;
  tblGraficoValor.value := tblmen2Valor5.asFloat;
  tblGrafico.post;

  tblGrafico.append;
  tblGraficoMes.value := tblmen2sMes1.value;
  tblGraficoValor.value := tblmen2Valor6.asFloat;
  tblGrafico.post;
end;

procedure TfrmDemonstrativo.ActImprimirGraficoExecute(Sender: TObject);
begin
 lblTituloRel.caption := dmApp.nome;
 lblRel.caption := 'Demonstrativo Financeiro - Progressão de Valores('+tblMen2Nome.asString+')';
 rptGrafico.Print;
end;

procedure TfrmDemonstrativo.ExpandirTodos1Click(Sender: TObject);
begin
  DBTreeList.FullExpand;
end;

procedure TfrmDemonstrativo.ContrairTodos1Click(Sender: TObject);
begin
  DBTreeList.FullCollapse;
end;

procedure TfrmDemonstrativo.pgcDemonstrativoChange(Sender: TObject);
begin
  if (pgcDemonstrativo.ActivePageIndex = 1) then
    ActGrafico.Execute;
end;

end.
