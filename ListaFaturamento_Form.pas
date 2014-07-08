unit ListaFaturamento_Form;

interface

uses
  Windows,  Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RDprint, Db, ActnList, dxDBGrid, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxCntner, StdCtrls, Buttons, ExtCtrls, 
    dxBar, Menus, cxPropertiesStore, Variants, dxExEdtr,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxClasses,
  cxPC, cxLabel;

type
  TfrmListaFaturamento = class(TForm)
    pnlForm: TPanel;
    Bevel3: TBevel;
    LblTitulo: TcxLabel;
    LBLCLIENTE: TcxLabel;
    Actions: TActionList;
    ActFechar: TAction;
    ActExibe: TAction;
    PC: TcxPageControl;
    LBLLIMITE: TcxLabel;
    BarManager: TdxBarManager;
    btnFechar: TdxBarButton;
    dxBarButton2: TdxBarButton;
    stgFrm_Localizar_ContaNota: TcxPropertiesStore;
    GridCheque: TdxDBGrid;
    GridChequeCODIGO: TdxDBGridMaskColumn;
    GridChequeTOTAL: TdxDBGridMaskColumn;
    GridChequeDATA: TdxDBGridColumn;
    GridChequeDATA_CAIXA: TdxDBGridColumn;
    GridChequeFECHADA: TdxDBGridMaskColumn;
    GridChequeVENDEDOR: TdxDBGridMaskColumn;
    GridChequeNATUREZA: TdxDBGridMaskColumn;
    GridChequeDESC_ACRESC: TdxDBGridMaskColumn;
    GridChequeSALDO: TdxDBGridMaskColumn;
    GridChequeNUM_NF: TdxDBGridMaskColumn;
    Panel4: TPanel;
    procedure ActFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActExibeExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    Function FiltrarVendaAberta(CLIENTE: INTEGER ): Real ;
    procedure GRIDFATURACustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure GRIDRECEBERCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GridChequeCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure GridChequeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }


  public
    Nome: String ;
    Codigo: Integer ;
    Autorizou: Boolean ;
    Compra_Atual: Real ;

    { Public declarations }
  end;

var
  frmListaFaturamento: TfrmListaFaturamento;
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
    MensagemClassificacao_Form, ListaDetFat_Form, Vendas_DM2;

Function TfrmListaFaturamento.FiltrarVendaAberta( CLIENTE: INTEGER ): Real ;
Var
   Soma: Real   ;
Begin
     With DmFinanceiro do
     begin
          //isso na verdade é venda, não tem nada de fatura futura..
          SelFatura_Futura.close;
          SelFatura_Futura.Sql.text := ' SELECT * FROM VER_FAT_VENDAS_ABERTAS( :CNPJ, :DINI, :DFIM, :PESSOA ) ';
          SelFatura_Futura.ParamByName ( 'CNPJ'   ).AsString  := DmaPP.Cnpj ;
          SelFatura_Futura.ParamByName ( 'PESSOA' ).AsInteger := Cliente    ;
          SelFatura_Futura.ParamByName ( 'DINI'   ).AsDate    := STRTODATE('01/01/1900');
          SelFatura_Futura.ParamByName ( 'DFIM'   ).AsDate    := STRTODATE('31/12/9999');
          SelFatura_Futura.Open    ;

          Soma := 0;
          SelFatura_Futura.DisableControls ;
          SelFatura_Futura.First ;
          While not SelFatura_Futura.Eof do
          begin
               Soma := Soma + SelFatura_FuturaVLRLIQUIDO.Value ;
               SelFatura_Futura.Next ;
          end;
          SelFatura_Futura.EnableControls ;

          VerFaturasBaixadas.close ;
          VerFaturasBaixadas.ParamByName('CNPJ').AsString  := DmApp.Cnpj ;
          VerFaturasBaixadas.ParamByName('COD' ).AsInteger := Cliente    ;
          VerFaturasBaixadas.Open  ;
     end;

     Result := Soma ;
End;

procedure TfrmListaFaturamento.ActFecharExecute(Sender: TObject);
begin
  Autorizou := False ;
     close ;
end;



procedure TfrmListaFaturamento.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  GridCheque.SetFocus;
end;

procedure TfrmListaFaturamento.ActExibeExecute(Sender: TObject);
begin
  with dmVendas2 do
  begin
    QryFatDet.close;
    QryFatDet.ParambyName('cnpj').value := DmApp.cnpj;
    QryFatDet.ParambyName('codigo').value := qryFaturamentosCODIGO.value;
    QryFatDet.open;

    qryFatItens.close;
    qryFatItens.ParambyName('cnpj').value := DmApp.cnpj;
    qryFatItens.ParambyName('codigo').value := qryFaturamentosCODIGO.value;
    qryFatItens.open;
    qryFatItens.FetchAll;

    qryFatMovtos.Close;
    qryFatMovtos.ParambyName('cnpj').value := DmApp.cnpj;
    qryFatMovtos.ParambyName('codigo').value := qryFaturamentosCODIGO.value;
    qryFatMovtos.Open;
    qryFatMovtos.FetchAll;
  end;

  frmDetFat := TfrmDetFat.Create(Self);
  frmDetFat.showmodal;
  frmDetFat.Free;
end;

procedure TfrmListaFaturamento.FormCreate(Sender: TObject);
begin
     Autorizou := False ;
end;

procedure TfrmListaFaturamento.GRIDFATURACustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
Var
   Value: TDateTime ;
begin
    //
end;

procedure TfrmListaFaturamento.GRIDRECEBERCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
Var
   Value: TDateTime ;
begin
//
end;

procedure TfrmListaFaturamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//
end;
procedure TfrmListaFaturamento.GridChequeCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
   aux: variant;
begin
  if (not ASelected) then
  begin
    Aux := ANode.Values[GridChequeSALDO.Index];
    if VarIsNull(Aux) then
      aux := 0;

    if (StrToFloat(Aux) > 0) then
      AColor := $00D3F8CD
    else
      AColor := $009ED8F3;
  end;
end;

procedure TfrmListaFaturamento.GridChequeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   If Key = 13 then
     ActFechar.Execute;
end;

end.
