unit DevolverItens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxDBGrid, dxTL, dxDBCtrl, dxCntner,
   StdCtrls, Mask, DBCtrls, ppDB, ppComm, ppRelatv, ppDBPipe,
  ppProd, ppClass, ppReport, ppBands, ppCache, ppCtrls, ppVar, ppPrnabl,
  ppParameter, ppStrtch, ppRichTx, dxExEdtr, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFrmDevolverItens = class(TForm)
    Panel6: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Image1: TImage;
    Panel1: TPanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    GridItens: TdxDBGrid;
    GridItensCNPJ: TdxDBGridMaskColumn;
    GridItensCODIGO: TdxDBGridMaskColumn;
    GridItensPRODUTO: TdxDBGridMaskColumn;
    GridItensNOME_PRODUTO: TdxDBGridMaskColumn;
    GridItensGRADE: TdxDBGridMaskColumn;
    GridItensNUMERO: TdxDBGridMaskColumn;
    GridItensQUANTIDADE: TdxDBGridMaskColumn;
    GridItensUNIDADE: TdxDBGridMaskColumn;
    GridItensCARREGADO: TdxDBGridMaskColumn;
    GridItensENTREGUE: TdxDBGridMaskColumn;
    GridItensSEQUENCIA: TdxDBGridMaskColumn;
    GridItensDEVOLVER: TdxDBGridColumn;
    DataSource: TDataSource;
    ActLista: TActionList;
    ActDevolver: TAction;
    ActCancelar: TAction;
    ActSalvar: TAction;
    pnlDevolver: TPanel;
    Label2: TcxLabel;
    edtDevolver: TDBEdit;
    ppLayoutDevolucao: TppDBPipeline;
    rptSerieDevolucao: TppReport;
    ppSerieDevolucao: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppHeaderBand5: TppHeaderBand;
    ppSystemVariable7: TppSystemVariable;
    ppDBText131: TppDBText;
    ppDBText132: TppDBText;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppDBText133: TppDBText;
    ppDBText134: TppDBText;
    ppDBText135: TppDBText;
    ppLabel64: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppLabel65: TppLabel;
    ppDBText136: TppDBText;
    ppDBText137: TppDBText;
    ppLabel66: TppLabel;
    ppDBText138: TppDBText;
    ppLabel67: TppLabel;
    ppDBText139: TppDBText;
    ppLabel68: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLine10: TppLine;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLine11: TppLine;
    ppDBText140: TppDBText;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLine12: TppLine;
    ppDBText141: TppDBText;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppDBText142: TppDBText;
    ppLabel89: TppLabel;
    ppLabel92: TppLabel;
    ppLabel98: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppDBText143: TppDBText;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText144: TppDBText;
    ppDBText146: TppDBText;
    ppDBText148: TppDBText;
    ppDBText149: TppDBText;
    ppDBText150: TppDBText;
    ppLine15: TppLine;
    ppFooterBand4: TppFooterBand;
    ppSystemVariable9: TppSystemVariable;
    ppLabel93: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppDBRichText4: TppDBRichText;
    ppLabel94: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLabel97: TppLabel;
    ppDBRichText5: TppDBRichText;
    ppDBCalc1: TppDBCalc;
    ppLabel95: TppLabel;
    ppLine17: TppLine;
    ppLabel96: TppLabel;
    ppLabel99: TppLabel;
    GridItensDEVOLVIDO: TdxDBGridColumn;
    procedure ActCancelarExecute(Sender: TObject);
    procedure ActDevolverExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtDevolvidoEnter(Sender: TObject);
    procedure edtDevolverExit(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure edtDevolverKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlDevolverExit(Sender: TObject);
    procedure GridItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    Carregado, Devolvido, Entregue, QtdePed :double;
    Carregar, Devolver, Entregar :double;
    procedure CarregarVariaveis;
    procedure ZerarVariaveis;    
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDevolverItens: TFrmDevolverItens;

implementation

uses Vendas_DM2, Application_DM, Funcoes, OrdemCarga_DM;

{$R *.DFM}

procedure TFrmDevolverItens.ActCancelarExecute(Sender: TObject);
begin
     If DataSource.State in [ dsinsert, dsedit ]then
     begin
          DmVendas2.CarregarItensFutura.DisableControls ;
          DataSource.DataSet.Cancel ;
     end;
     Close;
end;

procedure TFrmDevolverItens.ActDevolverExecute(Sender: TObject);
begin
    {------------- Habilita Panel ---------------------------------------------}
    pnlDevolver.Visible := not (pnlDevolver.Visible);
    if pnlDevolver.Visible then
    begin
      edtDevolver.setfocus;

      if DmVendas2.CarregarItensFutura.state in [dsbrowse] then
        DmVendas2.CarregarItensFutura.edit;

      //--------------------
      DmVendas2.CarregarItensFuturaDEVOLVER.value := Carregado + Entregue - Devolvido;
      edtDevolver.SelectAll;
    end;
end;

procedure TFrmDevolverItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     DataSource.DataSet.Close     ;
end;

procedure TFrmDevolverItens.edtDevolvidoEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmDevolverItens.edtDevolverExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmDevolverItens.edtDevolverKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //--------- Enter ----------------------
  If Key = 13 then
  begin
    //--------------------
    CarregarVariaveis;

    if (Devolver < 0)OR(Devolver > Carregado + Entregue) then
    begin
      MessageDlg('Produto "'+DmVendas2.CarregarItensFuturaNOME_PRODUTO.asstring+'". Quantidade Inválida!!', mtInformation, [mbOK], 0);
      abort;
      exit;
    end;

    if DmVendas2.CarregarItensFutura.state in [dsedit] then
      DmVendas2.CarregarItensFutura.post;
    pnlDevolver.Visible := False;
    GridItens.setfocus;
    DmVendas2.CarregarItensFutura.next;
    if (DmVendas2.CarregarItensFutura.eof) then
      ActSalvarExecute(Sender);

  end;

  //--------- Esc ----------------------
  if key = 27 then
  begin
      pnlDevolver.visible := false;
      GridItens.setfocus;
  end;
end;

procedure TFrmDevolverItens.pnlDevolverExit(Sender: TObject);
begin
    pnlDevolver.VISIBLE := FALSE;
end;

procedure TFrmDevolverItens.ZerarVariaveis;
begin
    if DmVendas2.CarregarItensFutura.state in [dsbrowse] then
      DmVendas2.CarregarItensFutura.edit;
    DmVendas2.CarregarItensFuturaCARREGAR.value  := 0;
    DmVendas2.CarregarItensFuturaENTREGAR.value  := 0;
    DmVendas2.CarregarItensFuturaDEVOLVER.value := 0;
    DmVendas2.CarregarItensFutura.post;    
end;

procedure TFrmDevolverItens.ActSalvarExecute(Sender: TObject);
var
  Entregue, Carregar :double;
  StatusOC, Devolver : integer;
  OrdemCarga : integer;
begin
    Devolver := RetornaValor('select sum(coalesce(DEVOLVER,0))'+
                              ' from FAT_VENDAS_ITENS'+
                              ' where CODIGO = '+DmVendas2.CarregarItensFuturaCODIGO.AsString +
                              ' and CNPJ = '    +QuotedStr(dmapp.cnpj),DmVendas2.CarregarItensFutura.transaction);

    IF( DEVOLVER = 0 )THEN
    BEGIN
       MessageDlg('Não foi possivel gerar devolução sem itens!! ', mtInformation, [mbOK], 0);
       exit;
    END;

    {--------- GERA ORDEM DE CARGA --------------------------------------------}
    OrdemCarga := DmOrdemCarga.Gerar_OrdemCarga(DmVendas2.CarregarItensFuturaCODIGO.VALUE, 7, dmapp.USR_CONECTADO);
    DmOrdemCarga.AtualizaCarregadoPedidoDEVOLUCAO;
    DmOrdemCarga.AtualizaStatusPedido(DmVendas2.SelFaturaVendasFuturaCODIGO.AsString,DmVendas2.CarregarItensFutura.Transaction);

    {--------- Impressão da Devolução -----------------------------------------}
    If MessageBox(Handle,'Deseja Imprimir Devolução ?',
    'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
        DmOrdemCarga.ImprimirDevolucao(OrdemCarga);

    {-------- Fechar ----------------------------------------------------------}
    ActCancelarExecute(Sender);
end;

procedure TFrmDevolverItens.GridItensKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = 13 then
  begin
      //--------- QtdePed/Carregado/Entregue/Devolver ----------------------
      CarregarVariaveis;
      ZerarVariaveis;      

      //--------------------
      if (Carregado + Entregue = 0)OR(Devolver > Carregado + Entregue) then
      begin
        MessageDlg(' O Produto "'+DmVendas2.CarregarItensFuturaNOME_PRODUTO.asstring+'" não pode ser devolvido!!', mtInformation, [mbOK], 0);
        DmVendas2.CarregarItensFutura.next;
        GridItens.SetFocus;
        abort;
      end;
      //--------------------
      ActDevolverExecute(Sender);
  end;
end;

procedure TFrmDevolverItens.CarregarVariaveis;
begin
    QtdePed   := DmVendas2.CarregarItensFuturaQUANTIDADE.value;
    //
    Carregado := DmVendas2.CarregarItensFuturaCARREGADO.value;
    Entregue  := DmVendas2.CarregarItensFuturaENTREGUE.value;
    Devolvido := DmVendas2.CarregarItensFuturaDEVOLVIDO.value;
    //
    Carregar  := DmVendas2.CarregarItensFuturaCARREGAR.value;
    Entregar  := DmVendas2.CarregarItensFuturaENTREGAR.value;
    Devolver  := DmVendas2.CarregarItensFuturaDEVOLVER.value;
end;

end.
