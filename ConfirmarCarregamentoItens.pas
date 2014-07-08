 unit ConfirmarCarregamentoItens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids,  ExtCtrls, StdCtrls, Mask, DBCtrls,
  ActnList, Db, dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxTLClms,
  cxPropertiesStore,
  dxDBTLCl, dxGrClms, dxExEdtr,
  dxBar, dxBarDBNav, dxEditor, dxDBEdtr, dxDBELib, Variants, cxGraphics,
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
  TFrmConfirmarCarregamentoItens = class(TForm)
    Panel1: TPanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    DataSource: TDataSource;
    ActLista: TActionList;
    ActEntregar: TAction;
    ActCancelar: TAction;
    ActSalvar: TAction;
    pnlCarregado: TPanel;
    lblCaption: TcxLabel;
    edtCarregado: TDBEdit;
    pnlCampos: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
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
    GridItensGRADE: TdxDBGridMaskColumn;
    GridItensNUMERO: TdxDBGridMaskColumn;
    GridItensUNIDADE: TdxDBGridMaskColumn;
    GridItensQUANTIDADE: TdxDBGridMaskColumn;
    GridItensSEQUENCIA: TdxDBGridMaskColumn;
    GridItensENTREGUE: TdxDBGridMaskColumn;
    GridItensCARREGADO: TdxDBGridMaskColumn;
    ActConfCampos: TAction;
    GridItensCODIGO_LOTE: TdxDBGridColumn;
    GridItensLOTE: TdxDBGridColumn;
    stgConfirmarCarregamento: TcxPropertiesStore;
    GridItensMATERIAL: TdxDBGridColumn;
    GridItensCOR: TdxDBGridColumn;
    GridItensPERFIL: TdxDBGridColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GridItens2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActEntregarExecute(Sender: TObject);
    procedure edtCarregadoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActCancelarExecute(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure edtCarregadoExit(Sender: TObject);
    procedure edtCarregadoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AtualizaStatusOrdemCarga;
    procedure GridItensCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: String; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure Synchronize;
    procedure FormCreate(Sender: TObject);
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TLCustomizeStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure ActConfCamposExecute(Sender: TObject);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);

  private
    DragNode: TdxTreeListNode;  
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfirmarCarregamentoItens: TFrmConfirmarCarregamentoItens;

implementation

uses Funcoes, Application_DM, OrdemCarga_DM, Vendas_DM2;

{$R *.DFM}

procedure TFrmConfirmarCarregamentoItens.ActCancelarExecute(
  Sender: TObject);
begin
     If DataSource.State in [ dsinsert, dsedit ]then
     begin
          DmOrdemCarga.OrdemCargaItens.DisableControls ;
          DataSource.DataSet.Cancel ;
     end;
     Close;
end;

procedure TFrmConfirmarCarregamentoItens.ActEntregarExecute(
  Sender: TObject);
begin
  pnlCarregado.Visible := not (pnlCarregado.Visible);
  if pnlCarregado.Visible then
  begin
    edtcarregado.setfocus;
    if DmOrdemCarga.OrdemCargaItens.state in [dsbrowse] then
      DmOrdemCarga.OrdemCargaItens.edit;
    DmOrdemCarga.OrdemCargaItensCARREGADO.value := DmOrdemCarga.OrdemCargaItensQUANTIDADE.value;
    edtcarregado.SelectAll;
  end;
end;

procedure TFrmConfirmarCarregamentoItens.ActSalvarExecute(Sender: TObject);
begin
    If MessageBox(Handle,'Confirma Entrega de Produtos ?',
    'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
    begin
      AtualizaStatusOrdemCarga;
      DmOrdemCarga.AtualizaCarregadoPedidoCONFIRMACAO;
      DmOrdemCarga.AtualizaStatusPedido(DmOrdemCarga.OrdemCargaCODIGO_VND.AsString,DmOrdemCarga.OrdemCarga.transaction);
      close;
    end;
end;

procedure TFrmConfirmarCarregamentoItens.GridItens2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = 13 then
    ActEntregarExecute(Sender);
end;

procedure TFrmConfirmarCarregamentoItens.edtCarregadoExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmConfirmarCarregamentoItens.edtCarregadoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  //--------- Enter ----------------------
  If Key = 13 then
  begin
    if( DmOrdemCarga.OrdemCargaItensCARREGADO.VALUE > DmOrdemCarga.OrdemCargaItensQUANTIDADE.VALUE )then
    begin
      showmessage('"Quantidade Carregado" não poderá ser superior a "Quantidade a Carregar" !!');
      exit;
    end;

    pnlCarregado.Visible := False;
    if DmOrdemCarga.OrdemCargaItens.state in [dsedit] then
      DmOrdemCarga.OrdemCargaItens.post;
    GridItens.setfocus;
    DmOrdemCarga.OrdemCargaItens.next;
    if (DmOrdemCarga.OrdemCargaItens.eof) then
      ActSalvarExecute(Sender);
  end;
  //--------- Esc ----------------------  
  if key = 27 then
  begin
    pnlCarregado.Visible := False;
    GridItens.setfocus;
  end;
end;

procedure TFrmConfirmarCarregamentoItens.edtCarregadoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key = 27 then
      pnlCarregado.visible := false;
end;

procedure TFrmConfirmarCarregamentoItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     DataSource.DataSet.Close     ;
end;

procedure TFrmConfirmarCarregamentoItens.AtualizaStatusOrdemCarga;
var
  Carregar, Carregado, Devolvido : variant;
begin
{ ------------------------[ Legenda "Ordem de Carga" ]---------------------------------
  Carregar  = Qtde para ser carregado no deposito
  Entregue  = Qtde entregue pelo vendedor, esse campo não sera carregado pelo deposito
  Carregado = Qtde carregado, confirmado após o carregador entregar a requisição.
  Devolvido = Qtde devolvido, confirmado após o carregador entregar a requisição.
  ------------------------------------------------------------------------------------- }
  Carregar  := RetornaValor('select sum(coalesce(quantidade,0)) from CRG_ORDEM_CARGA_ITENS where codigo = '+DmOrdemCarga.OrdemCargaItensCODIGO.AsString +
                            ' and cnpj = '''+dmapp.cnpj+'''',DmOrdemCarga.OrdemCargaItens.transaction);
  Carregado := RetornaValor('select sum(coalesce(carregado,0)) from CRG_ORDEM_CARGA_ITENS where codigo = '+DmOrdemCarga.OrdemCargaItensCODIGO.AsString +
                            ' and cnpj = '''+dmapp.cnpj+'''',DmOrdemCarga.OrdemCargaItens.transaction);
  Devolvido := RetornaValor('select sum(coalesce(devolvido,0)) from CRG_ORDEM_CARGA_ITENS where codigo = '+DmOrdemCarga.OrdemCargaItensCODIGO.AsString +
                            ' and cnpj = '''+dmapp.cnpj+'''',DmOrdemCarga.OrdemCargaItens.transaction);

  Carregado := Carregado - Devolvido;

  if( Carregado > Carregar )then
  begin
    showmessage('Quantidade Carregada Ultrapassou Quantidade do Carregamento!!');
    Exit;
  end;

  //---- Confirmação de CARREGAMENTO PARCIAL
  If (Carregado < Carregar) and
  (MessageBox(Handle,'Confirma "CARREGAMENTO PARCIAL" dos itens ?','Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=ID_YES) Then
  begin
      ExecSql('UPDATE CRG_ORDEM_CARGA SET STATUS = 3, USUARIO = '+INTTOSTR(dmapp.USR_CONECTADO) +' WHERE CODIGO = '+ DmOrdemCarga.OrdemCargaCODIGO.AsString +
      ' and CNPJ ='''+dmapp.Cnpj+'''',DmOrdemCarga.OrdemCarga.transaction);
  end;

  //---- Confirmação de CARREGAMENTO TOTAL
  If (Carregado = Carregar) then
  begin
      ExecSql('UPDATE CRG_ORDEM_CARGA SET  STATUS = 5, USUARIO = '+INTTOSTR(dmapp.USR_CONECTADO) +'  WHERE CODIGO = '+ DmOrdemCarga.OrdemCargaCODIGO.AsString +
      ' and CNPJ ='''+dmapp.Cnpj+'''',DmOrdemCarga.OrdemCarga.transaction);
  end;

end;

procedure TFrmConfirmarCarregamentoItens.GridItensCustomDraw(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxDBTreeListColumn; const AText: String; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
var
  Qtde, Carregado, Entregue: variant;
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
    Carregado      := ANode.Values[GridItensCARREGADO.index];

    if (not     (VarIsNull(Qtde) and VarIsNull(Carregado)) ) then
    begin
        //Parcial
        if ( StrToFloat(Qtde) > StrToFloat(Carregado))  and  (StrToFloat(Carregado) > 0) then
            AColor := $003C9DFF
        else
        //Total
        if (  StrToFloat(Qtde) = StrToFloat(Carregado)  ) then
            AColor := $00A6FFA6
        //nenhum
        else
            AColor := clwhite;
    end else
        AColor := clwhite;
  end;
end;

procedure TFrmConfirmarCarregamentoItens.Synchronize;
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

procedure TFrmConfirmarCarregamentoItens.FormCreate(Sender: TObject);
begin
     Synchronize;
end;

procedure TFrmConfirmarCarregamentoItens.TLCustomizeDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  column : TdxTreeListColumn;
begin
  DragNode.MoveTo(TLCustomize.FocusedNode, natlInsert);
  column := TdxTreeListColumn(DragNode.Data);
  if (TLCustomize.FocusedNode <> nil) then
    column.Index := TLCustomize.FocusedNode.AbsoluteIndex
  else column.Index := 0;
end;

procedure TFrmConfirmarCarregamentoItens.TLCustomizeDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = Sender;
end;

procedure TFrmConfirmarCarregamentoItens.TLCustomizeStartDrag(
  Sender: TObject; var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrmConfirmarCarregamentoItens.ActConfCamposExecute(
  Sender: TObject);
begin
    pnlCampos.visible := (not pnlCampos.visible);
end;

procedure TFrmConfirmarCarregamentoItens.TLCustomizeIsVisibleToggleClick(
  Sender: TObject; const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

end.
