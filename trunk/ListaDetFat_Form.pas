unit ListaDetFat_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    RDprint, Db, ActnList, dxDBGrid, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxCntner, StdCtrls, Buttons, ExtCtrls, 
    dxBar, cxPropertiesStore, dxExEdtr, variants, Grids,
  DBGrids, IBCustomDataSet, IBQuery, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxClasses,
  cxLabel;

type
  TfrmDetFat = class(TForm)
    pnlForm: TPanel;
    LBLCLIENTE: TcxLabel;
    Actions: TActionList;
    ActFechar: TAction;
    ActProdutos: TAction;
    ActImprimir: TAction;
    ActLibera: TAction;
    LBLLIMITE: TcxLabel;
    BarManager: TdxBarManager;
    dxBarButton1: TdxBarButton;
    LimiteAtual: TdxBarButton;
    Panel1: TPanel;
    Panel6: TPanel;
    Panel2: TPanel;
    Panel5: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    dsFaturamento: TDataSource;
    GridFaturamentos: TdxDBGrid;
    GridFaturamentosCODIGO: TdxDBGridMaskColumn;
    GridFaturamentosTOTAL: TdxDBGridMaskColumn;
    GridFaturamentosDESC_ACRES: TdxDBGridMaskColumn;
    GridFaturamentosDATA: TdxDBGridDateColumn;
    GridFaturamentosDATA_CAIXA: TdxDBGridDateColumn;
    GridFaturamentosFECHADA: TdxDBGridMaskColumn;
    GridFaturamentosVENDEDOR: TdxDBGridMaskColumn;
    GridFaturamentosNATUREZA: TdxDBGridMaskColumn;
    GridItens: TdxDBGrid;
    GridMovimentos: TdxDBGrid;
    GridItensSEQUENCIA: TdxDBGridMaskColumn;
    GridItensPRODUTO: TdxDBGridMaskColumn;
    GridItensSALDO_ITEM: TdxDBGridMaskColumn;
    GridItensQUANTIDADE: TdxDBGridMaskColumn;
    GridItensQTDE_ENTREGUE: TdxDBGridMaskColumn;
    GridItensDESCONTO: TdxDBGridMaskColumn;
    GridItensPRC_UNITARIO: TdxDBGridMaskColumn;
    GridItensTOTAL_ITEM: TdxDBGridMaskColumn;
    GridMovimentosCODIGO: TdxDBGridMaskColumn;
    GridMovimentosTOTAL: TdxDBGridMaskColumn;
    GridMovimentosDESC_ACRES: TdxDBGridMaskColumn;
    GridMovimentosDATA: TdxDBGridDateColumn;
    GridMovimentosDATA_CAIXA: TdxDBGridDateColumn;
    GridMovimentosFECHADA: TdxDBGridMaskColumn;
    GridMovimentosVENDEDOR: TdxDBGridMaskColumn;
    GridMovimentosNATUREZA: TdxDBGridMaskColumn;
    stgfrmDetFat: TcxPropertiesStore;
    GridFaturamentosTOTAL_LIQUIDO: TdxDBGridMaskColumn;
    GridFaturamentosFORMA_PAGTO: TdxDBGridMaskColumn;
    GridFaturamentosTERCEIRO: TdxDBGridMaskColumn;
    GridItensPRC_UNIT_ORIGINAL: TdxDBGridMaskColumn;
    GridItensCOMPLEMENTO: TdxDBGridMaskColumn;
    procedure ActFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GridItensCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure GridMovimentosCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);

  private
    { Private declarations }
  public
    Nome: String ;
    Codigo: Integer ;
    Autorizou: Boolean ;
    { Public declarations }
  end;

var
  frmDetFat: TfrmDetFat;
  INI, FIM: Integer;
  AUX, STR: String;
  Inicial, Final: Integer ;
  Pagina, Lin   : Integer ;
  SomaReceber, SomaCheque, SomaFatura, SomaFaturaFutura: Real ;
implementation

{$R *.DFM}
uses
    Cadastros_DM,
    Application_DM,
    Funcoes,
    Main,
    Financeiro_Dm,
    Empresas_DM,
    Vendas_Dm,
    MensagemClassificacao_Form, Vendas_DM2;



procedure TfrmDetFat.ActFecharExecute(Sender: TObject);
begin
  Autorizou := False ;
     close ;
end;

procedure TfrmDetFat.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  
end;

procedure TfrmDetFat.FormCreate(Sender: TObject);
begin
     Autorizou := False ;
end;

procedure TfrmDetFat.GridItensCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
   aux: variant;
begin
  if (not ASelected) then
  begin

    Aux := ANode.Values[GridItensSALDO_ITEM.Index];
    if VarIsNull(Aux) then
      aux := 0;

    if (StrToFloat(Aux) > 0) then
      AColor := $00D3F8CD
    else
      AColor := $009ED8F3;
  end;
end;

procedure TfrmDetFat.GridMovimentosCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  if (not ASelected) then
     AColor := $009ED8F3;
end;

end.
