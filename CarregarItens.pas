 unit CarregarItens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, ExtCtrls, Grids, DBGrids, Db, ActnList, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner, Mask, DBCtrls, 
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls,
  ppVar, ppPrnabl, ppBands, ppCache, ppParameter, ppStrtch, ppRichTx, IBDatabase,
  dxTLClms, cxPropertiesStore,   dxExEdtr,
  dxBar, dxBarDBNav, dxEditor, dxDBEdtr, dxDBELib,  Variants, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Menus, cxControls, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel, cxButtons;

type
  TFrmCarregarItens = class(TForm)
    Panel1: TPanel;
    btnSalvar: TcxButton;
    DataSource: TDataSource;
    ActLista: TActionList;
    ActCarregar: TAction;
    pnlCarregar: TPanel;
    edtCarregar: TDBEdit;
    Label1: TcxLabel;
    ActSalvar: TAction;
    edtEntregar: TDBEdit;
    Label2: TcxLabel;
    ppLayoutRequisicao: TppDBPipeline;
    ppSerieRequisicao: TppDBPipeline;
    rptSerieRequisicao: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppSystemVariable7: TppSystemVariable;
    ppDBText131: TppDBText;
    ppDBText132: TppDBText;
    ppDBText133: TppDBText;
    ppDBText134: TppDBText;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppDBText135: TppDBText;
    ppDBText136: TppDBText;
    ppDBText137: TppDBText;
    ppLabel66: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppLabel67: TppLabel;
    ppDBText138: TppDBText;
    ppDBText139: TppDBText;
    ppLabel68: TppLabel;
    ppDBText140: TppDBText;
    ppLabel69: TppLabel;
    ppDBText141: TppDBText;
    ppDBText142: TppDBText;
    ppDBText143: TppDBText;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppDBText144: TppDBText;
    ppLabel73: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLine10: TppLine;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLine11: TppLine;
    ppDBText145: TppDBText;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLine12: TppLine;
    ppDBText146: TppDBText;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText147: TppDBText;
    ppDBText148: TppDBText;
    ppDBText149: TppDBText;
    ppDBText150: TppDBText;
    ppDBText151: TppDBText;
    ppDBText152: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppLabel99: TppLabel;
    ppDBText153: TppDBText;
    ppDBText154: TppDBText;
    ppSystemVariable9: TppSystemVariable;
    ppLabel100: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppDBText155: TppDBText;
    ppLabel101: TppLabel;
    ppDBRichText4: TppDBRichText;
    ppLabel102: TppLabel;
    ppLine13: TppLine;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLine14: TppLine;
    ppLabel107: TppLabel;
    ppDBRichText5: TppDBRichText;
    ppLabel108: TppLabel;
    ppDBRichText6: TppDBRichText;
    ppLabel109: TppLabel;
    ppParameterList5: TppParameterList;
    pnlCampos: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    ActConfCampos: TAction;
    stgCarregarProduto: TcxPropertiesStore;
    Panel2: TPanel;
    Panel6: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Image1: TImage;
    GridItens: TdxDBGrid;
    GridItensCNPJ: TdxDBGridMaskColumn;
    GridItensCODIGO: TdxDBGridMaskColumn;
    GridItensPRODUTO: TdxDBGridMaskColumn;
    GridItensNOME_PRODUTO: TdxDBGridMaskColumn;
    GridItensNUMERO: TdxDBGridMaskColumn;
    GridItensGRADE: TdxDBGridMaskColumn;
    GridItensSEQUENCIA: TdxDBGridMaskColumn;
    GridItensQUANTIDADE: TdxDBGridMaskColumn;
    GridItensVOLUME: TdxDBGridMaskColumn;
    GridItensPESO: TdxDBGridMaskColumn;
    GridItensUNIDADE: TdxDBGridMaskColumn;
    GridItensSUBUNIDADE: TdxDBGridMaskColumn;
    GridItensFRACIONADO: TdxDBGridMaskColumn;
    GridItensSERVICO: TdxDBGridBlobColumn;
    GridItensLOTE: TdxDBGridMaskColumn;
    GridItensCODIGO_LOTE: TdxDBGridMaskColumn;
    GridItensUTILIZA_LOTE: TdxDBGridMaskColumn;
    GridItensENTREGUE: TdxDBGridMaskColumn;
    GridItensCARREGADO: TdxDBGridColumn;
    GridItensDEVOLVIDO: TdxDBGridMaskColumn;
    GridItensENTREGAR: TdxDBGridMaskColumn;
    GridItensDEVOLVER: TdxDBGridMaskColumn;
    GridItensCARREGAR: TdxDBGridColumn;
    ActCancelar: TAction;
    btnCancelar2: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActCarregarExecute(Sender: TObject);
    procedure edtCarregarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActSalvarExecute(Sender: TObject);
    procedure edtEntregarExit(Sender: TObject);
    procedure edtEntregarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Synchronize;
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TLCustomizeStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure ActConfCamposExecute(Sender: TObject);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure FormCreate(Sender: TObject);
    procedure GridItensCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: String; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure ActCancelarExecute(Sender: TObject);
  private
    DragNode: TdxTreeListNode;    
    Carregado, Devolvido, Entregue, QtdePed :double;
    Carregar, Devolver, Entregar :double;
    procedure CarregarVariaveis(CodVenda, CodProduto: string; Trans: TIBTransaction=nil);
    procedure ZerarVariaveis;  
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCarregarItens: TFrmCarregarItens;

implementation

uses Vendas_DM2, Application_DM,Funcoes, SelFaturaVendas_Form,
  OrdemCarga_DM;

{$R *.DFM}

procedure TFrmCarregarItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     DataSource.DataSet.Close     ;
end;

procedure TFrmCarregarItens.ActCarregarExecute(Sender: TObject);
begin
    //
    CarregarVariaveis(DmVendas2.CarregarItensFuturaCODIGO.Asstring,
                      DmVendas2.CarregarItensFuturaPRODUTO.Asstring,
                      DmVendas2.CarregarItensFutura.Transaction);
    ZerarVariaveis;
    //
    if Carregado + Entregue - Devolvido >= QtdePed then
    begin
      MessageDlg(' O Produto "'+DmVendas2.CarregarItensFuturaNOME_PRODUTO.asstring+'" já foi entregue completamente !!', mtInformation, [mbOK], 0);
      DmVendas2.CarregarItensFutura.next;
      abort;
    end;

    //-----------------------------------------------------------------
    pnlCarregar.Visible := not (pnlCarregar.Visible);
    if pnlCarregar.Visible then
    begin
      if DmVendas2.CarregarItensFutura.state in [dsbrowse] then
        DmVendas2.CarregarItensFutura.edit;

      DmVendas2.CarregarItensFuturaCARREGAR.value := (QtdePed - Carregado - Entregue + Devolvido);
      edtEntregar.Setfocus;
      edtEntregar.SelectAll;
    end;
end;

procedure TFrmCarregarItens.edtCarregarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  CREDITO, DEBITAR :double;
begin
    CarregarVariaveis(  DmVendas2.CarregarItensFuturaCODIGO.Asstring,
                        DmVendas2.CarregarItensFuturaPRODUTO.Asstring,
                        DmVendas2.CarregarItensFutura.Transaction);
    //-----------------------------------------------------------------
    CREDITO   := QtdePed - ( Carregado + Entregue );
    DEBITAR   := ( Carregar + Entregar );
    //-----------------------------------------------------------------

    //--------- Enter ----------------------
    If Key = 13 then
    begin
        if DEBITAR > CREDITO then
        begin
          MessageDlg('Produto "'+DmVendas2.CarregarItensFuturaNOME_PRODUTO.asstring+'". Quantidade Inválida!!', mtInformation, [mbOK], 0);
          abort;
          exit;
        end;

        pnlCarregar.Visible := False;
        if DmVendas2.CarregarItensFutura.state in [dsedit] then
          DmVendas2.CarregarItensFutura.post;
        GridItens.setfocus;
        DmVendas2.CarregarItensFutura.next;
        if (DmVendas2.CarregarItensFutura.eof) then
            If MessageBox(Handle,'Deseja finalizar carregamento ?','Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
                ActSalvarExecute(Sender);
    end;

    //--------- Esc ----------------------
    if key = 27 then
    begin
      pnlCarregar.Visible := False;
      GridItens.setfocus;
    end;
end;

procedure TFrmCarregarItens.ActSalvarExecute(Sender: TObject);
var
  Entregar, Carregar :double;
  StatusOC, devolvido : integer;
  OrdemCarga : integer;
begin
    Entregar  := RetornaValor('select sum(coalesce(ENTREGAR,0))'+
                              ' from FAT_VENDAS_ITENS'+
                              ' where CODIGO = '+DmVendas2.CarregarItensFuturaCODIGO.AsString +
                              ' and CNPJ = '    +QuotedStr(dmapp.cnpj),DmVendas2.CarregarItensFutura.transaction);

    Carregar  := RetornaValor('select sum(coalesce(CARREGAR,0))'+
                              ' from FAT_VENDAS_ITENS'+
                              ' where CODIGO = '+DmVendas2.CarregarItensFuturaCODIGO.AsString +
                              ' and CNPJ = '    +QuotedStr(dmapp.cnpj),DmVendas2.CarregarItensFutura.transaction);

    {-------- Gera Carga somente com Itens ------------------------------------}
    IF( ENTREGAR + CARREGAR = 0 )THEN
    BEGIN
       MessageDlg('Não foi possivel gerar carga sem itens!! ', mtInformation, [mbOK], 0);
       exit;
    END;

    {-------- GERA ORDEM DE CARGA ---------------------------------------------}
    DMApp.Transaction.CommitRetaining;
    OrdemCarga := DmOrdemCarga.Gerar_OrdemCarga(DmVendas2.CarregarItensFuturaCODIGO.VALUE, 1, dmapp.USR_CONECTADO);

    {-------- CONFIRMA IMPRESSÃO ----------------------------------------------}
    If MessageBox(Handle,'Deseja Imprimir Requisição ?','Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
        DmOrdemCarga.ImprimirRequisicao(OrdemCarga);

    {-------- Fechar ----------------------------------------------------------}
    ActCancelarExecute(Sender);
end;

procedure TFrmCarregarItens.edtEntregarExit(Sender: TObject);
begin
    //
    CarregarVariaveis(  DmVendas2.CarregarItensFuturaCODIGO.Asstring,
                        DmVendas2.CarregarItensFuturaPRODUTO.Asstring,
                        DmVendas2.CarregarItensFutura.Transaction);
    {--------- Sugere Valor a Carregar ----------------------------------------}
    //if QtdePed < Entregar then
    //begin
    //    MessageDlg(' Ultrapassou a quantidade do Pedido! ', mtInformation, [mbOK], 0);
    //    DmVendas2.CarregarItensFuturaENTREGAR.value := 0;
    //    edtEntregar.Setfocus;
    //end;

    if Entregar > 0 then
     DmVendas2.CarregarItensFuturaCARREGAR.value := QtdePed - Entregue - Carregado - Entregar;
end;

procedure TFrmCarregarItens.edtEntregarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmCarregarItens.CarregarVariaveis(CodVenda, CodProduto: string; Trans: TIBTransaction=nil);
begin
    QtdePed   := DmVendas2.CarregarItensFuturaQUANTIDADE.value;
    //
    Carregado := RetornaValor('select sum(coalesce(carregado,0))'+
                              ' from FAT_VENDAS_ITENS'+
                              ' where codigo = '    +CodVenda +
                              ' and produto = '     +QuotedStr(CodProduto)+
                              ' and cnpj = '''      +dmapp.cnpj+'''',Trans);
    Entregue  := RetornaValor('select sum(coalesce(entregue,0))'+
                              ' from FAT_VENDAS_ITENS'+
                              ' where codigo = '    +CodVenda +
                              ' and produto = '     +QuotedStr(CodProduto)+
                              ' and cnpj = '''      +dmapp.cnpj+'''',Trans);
    Devolvido := RetornaValor('select sum(coalesce(devolvido,0))'+
                              ' from FAT_VENDAS_ITENS'+
                              ' where codigo = '    +CodVenda +
                              ' and produto = '     +QuotedStr(CodProduto)+
                              ' and cnpj = '''      +dmapp.cnpj+'''',Trans);
    //
    Carregar  := DmVendas2.CarregarItensFuturaCARREGAR.value;
    Entregar  := DmVendas2.CarregarItensFuturaENTREGAR.value;
    Devolver  := DmVendas2.CarregarItensFuturaDEVOLVER.value;
end;

procedure TFrmCarregarItens.ZerarVariaveis;
begin
    if DmVendas2.CarregarItensFutura.state in [dsbrowse] then
      DmVendas2.CarregarItensFutura.edit;
    DmVendas2.CarregarItensFuturaCARREGAR.value  := 0;
    DmVendas2.CarregarItensFuturaENTREGAR.value  := 0;
    DmVendas2.CarregarItensFuturaDEVOLVER.value := 0;
    DmVendas2.CarregarItensFutura.post;
end;

procedure TFrmCarregarItens.GridItensKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = 13 then
    ActCarregarExecute(Sender);
end;

procedure TFrmCarregarItens.FormShow(Sender: TObject);
begin
    DmVendas2.CarregarItensFutura.first;
end;

procedure TFrmCarregarItens.Synchronize;
var
  I: Integer;
  Node: TdxTreeListNode;
begin
    TLCustomize.ClearNodes;
    for I := 0 to GridItens.ColumnCount - 1 do
    begin
      Node := TLCustomize.Add;
      Node.Values[TLCustomizeColumn.Index] := GridItens.Columns[I].Caption;
      if GridItens.Columns[I].Visible then
        Node.Values[TLCustomizeIsVisible.Index] := TLCustomizeIsVisible.ValueChecked;
      Node.Data := GridItens.Columns[I];
    end;
end;

procedure TFrmCarregarItens.TLCustomizeDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  column : TdxTreeListColumn;
begin
  DragNode.MoveTo(TLCustomize.FocusedNode, natlInsert);
  column := TdxTreeListColumn(DragNode.Data);
  if (TLCustomize.FocusedNode <> nil) then
    column.Index := TLCustomize.FocusedNode.AbsoluteIndex
  else column.Index := 0;
end;

procedure TFrmCarregarItens.TLCustomizeDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = Sender;
end;

procedure TFrmCarregarItens.TLCustomizeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrmCarregarItens.ActConfCamposExecute(Sender: TObject);
begin
    pnlCampos.visible := (not pnlCampos.visible);
end;

procedure TFrmCarregarItens.TLCustomizeIsVisibleToggleClick(
  Sender: TObject; const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmCarregarItens.FormCreate(Sender: TObject);
begin
    Synchronize;
end;

procedure TFrmCarregarItens.GridItensCustomDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxDBTreeListColumn; const AText: String; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
var
  Qtde, Carregar, Entregar: variant;
begin
{* ---------- [ Legenda -   ITEM DE VENDA] -----[ Cor ]-----------
      0 - Aberto                              = BRANCO
      3 - Parcialmente Carregado              = LARANJA
      5 - Carregado                           = VERDE
   -----------------------------------------------------  *}

  if ANode.HasChildren then
    Exit;

  if not ASelected then
  begin
    //Verifica qual aba está aberta
    Qtde           := ANode.Values[GridItensQUANTIDADE.index];
    Entregar       := ANode.Values[GridItensENTREGAR.index];
    Carregar       := ANode.Values[GridItensCARREGAR.index];

    if (not     (VarIsNull(Qtde) and VarIsNull(Carregado) and VarIsNull(Carregado)) ) then
    begin
        //Parcial
        if ( StrToFloat(Qtde) > StrToFloat(Carregar)+StrToFloat(Entregar)) and
           ((StrToFloat(Carregar) > 0)  or  (StrToFloat(Entregar) > 0)) then
            AColor := $003C9DFF
        else
        //Total
        if (  StrToFloat(Qtde) = StrToFloat(Carregar)+StrToFloat(Entregar)  ) then
            AColor := $00A6FFA6
        //Estrapolou qtde
        else
        if (  StrToFloat(Qtde) < StrToFloat(Carregar)+StrToFloat(Entregar)  ) then
            AColor := $007171FF
        //nenhum
        else
            AColor := clwhite;
    end else
        AColor := clwhite;
  end;
end;

procedure TFrmCarregarItens.ActCancelarExecute(Sender: TObject);
begin
  If DataSource.State in [ dsinsert, dsedit ]then
  begin
     if (application.messagebox('Deseja realmente cancelar o carregamento?','Aviso',mb_iconquestion+mb_yesno)=id_no) then
       exit;

     DmVendas2.CarregarItensFutura.DisableControls ;
     DataSource.DataSet.Cancel ;
  end;

  Close;
end;

end.
