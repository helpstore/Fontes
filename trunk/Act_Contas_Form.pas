unit Act_Contas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
     cxPropertiesStore, Variants, DBCtrls, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxButtonEdit, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxClasses, cxLabel;

type
  TfrmAct_Contas = class(TForm)
    pnlClient: TPanel;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    btnLocalizar: TdxBarButton;
    Actions: TActionList;
    Bevel1: TBevel;
    dsPagar: TDataSource;
    BtnFechar: TdxBarButton;
    ActFechar: TAction;
    ActLookup: TAction;
    ActAcertar: TAction;
    Label10: TcxLabel;
    ActSelecionados: TAction;
    ActSeleciona: TAction;
    ActSelecionaTodos: TAction;
    ActBaixarParcial: TAction;
    ActDetalhes: TAction;
    OpDetalhes: TdxBarButton;
    Panel2: TPanel;
    pnlMulti: TPanel;
    Label9: TcxLabel;
    Panel6: TPanel;
    GridReceber: TdxDBGrid;
    Panel8: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    GridPagar: TdxDBGrid;
    Panel9: TPanel;
    dsReceber: TDataSource;
    GridReceberCODIGO: TdxDBGridMaskColumn;
    GridReceberPESSOA_FJ: TdxDBGridMaskColumn;
    GridReceberDT_VENCTO: TdxDBGridDateColumn;
    GridReceberDOCTO: TdxDBGridMaskColumn;
    GridReceberPARCELA: TdxDBGridMaskColumn;
    GridReceberDATA_ULT_BAIXA: TdxDBGridDateColumn;
    GridReceberNOME: TdxDBGridMaskColumn;
    GridReceberAtraso: TdxDBGridColumn;
    GridReceberSELECIONADO: TdxDBGridCheckColumn;
    GridReceberVALOR: TdxDBGridCurrencyColumn;
    GridReceberVLR_PARCIAL: TdxDBGridCurrencyColumn;
    GridReceberJuros_Calculados: TdxDBGridCurrencyColumn;
    GridReceberTotal_Geral: TdxDBGridCurrencyColumn;
    GridReceberACT_TOTAL_RECEBER: TdxDBGridCurrencyColumn;
    Bevel3: TBevel;
    Bevel2: TBevel;
    lblSaldo: TcxLabel;
    lblPagar: TcxLabel;
    lblReceber: TcxLabel;
    Label15: TcxLabel;
    Label20: TcxLabel;
    lblSaldoVlr: TcxLabel;
    GridReceberJuros: TdxDBGridCurrencyColumn;
    GridReceberDesconto: TdxDBGridCurrencyColumn;
    GridReceberVariacao: TdxDBGridCurrencyColumn;
    GridReceberSldNominal: TdxDBGridCurrencyColumn;
    GridReceberMultas: TdxDBGridCurrencyColumn;
    GridReceberTotal_Baixar: TdxDBGridMaskColumn;
    btnBaixar: TdxBarButton;
    GridPagarRecId: TdxDBGridColumn;
    GridPagarCODIGO: TdxDBGridMaskColumn;
    GridPagarDT_VENCTO: TdxDBGridDateColumn;
    GridPagarPARCELA: TdxDBGridMaskColumn;
    GridPagarDATA_ULT_BAIXA: TdxDBGridDateColumn;
    GridPagarSELECIONADO: TdxDBGridCheckColumn;
    GridPagarVALOR: TdxDBGridCurrencyColumn;
    GridPagarVLR_PARCIAL: TdxDBGridCurrencyColumn;
    GridPagarSldNominal: TdxDBGridCurrencyColumn;
    GridPagarMULTAS: TdxDBGridCurrencyColumn;
    GridPagarJUROS: TdxDBGridCurrencyColumn;
    GridPagarDESCONTO: TdxDBGridCurrencyColumn;
    GridPagarVARIACAO: TdxDBGridCurrencyColumn;
    GridPagarTotal_Geral: TdxDBGridCurrencyColumn;
    GridPagarTotal_Baixar: TdxDBGridCurrencyColumn;
    GridReceberold_Juros: TdxDBGridMaskColumn;
    GridReceberold_Multa: TdxDBGridMaskColumn;
    GridReceberold_Variacao: TdxDBGridMaskColumn;
    GridReceberold_desconto: TdxDBGridMaskColumn;
    ActVerOldValue: TAction;
    GridPagarOld_Juros: TdxDBGridMaskColumn;
    GridPagarOld_Multa: TdxDBGridMaskColumn;
    GridPagarOld_Desconto: TdxDBGridMaskColumn;
    GridPagarOld_Variacao: TdxDBGridMaskColumn;
    GridPagarOld_Total_Baixar: TdxDBGridMaskColumn;
    GridPagarSALDO_MOEDA: TdxDBGridMaskColumn;
    Label1: TcxLabel;
    lblCaixa: TcxLabel;
    FiltraParceiro: TAction;
    btnParceiro: TcxButtonEdit;
    GridPagarNOME: TdxDBGridMaskColumn;
    edtParceiro: TdxEdit;
    pnlSimples: TPanel;
    Label3: TcxLabel;
    lblCaixa2: TcxLabel;
    lblnome: TcxLabel;
    CmbCliente: TdxButtonEdit;
    Label2: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActFecharExecute(Sender: TObject);
    procedure EdClienteInicialButtonClick(Sender: TObject;  AbsoluteIndex: Integer);
    procedure EdClienteInicialExit(Sender: TObject);
    procedure EdTipoKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
    procedure EdTipoEnter(Sender: TObject);
    procedure EdTipoExit(Sender: TObject);
    procedure BtnOkExit(Sender: TObject);
    procedure GridPagarCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ActSelecionaExecute(Sender: TObject);
    procedure cmbClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActAcertarExecute(Sender: TObject);
    procedure GridReceberKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridPagarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridReceberCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ActVerOldValueExecute(Sender: TObject);
    procedure FiltraParceiroExecute(Sender: TObject);
    procedure btnParceiroPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure GridReceberDblClick(Sender: TObject);
    procedure GridPagarDblClick(Sender: TObject);
    procedure CmbClienteButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure CmbClienteExit(Sender: TObject);
  private
    { Private declarations }
    filtro, nome : string;
    cont, codigo : integer;
    SqlOriginalPagar, SqlCotacao, SqlOriginalReceber : string;
    Procedure Soma_Receber(Tipo: String; DIni: TDateTime; DFim: TDateTime; Pessoa: Integer);
    procedure AcertaBaixa(codigo:integer);
    procedure Seleciona;
  public
    { Public declarations }
    TotalReceber, TotalPagar, Saldo  : REAL    ;
    Pessoa : integer;
    Historico: string;
    procedure Filtrar;
  end;

var
  frmAct_Contas: TfrmAct_Contas;
implementation

uses
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Dados_Baixa_Form,
     Financeiro_Dm,
     Localizar_Cliente,
     Procedures_DM,
     Dados_Baixa_Receber_Multiplos_Form,
     Dados_Baixa_Loja_Form,
     Dados_Baixa_Parcial_Form,
     Cartao_Venda_Form,
     Vendas_Dm, SelVendasPdv_Form, Financeiro_Dm2, Vendas_DM2,
  Baixa_Receber_Multiplos_Parc_Form, Act_Baixa_Form, ValoresOriginais_Form,
  Act_Filtro_Parceiro, MensagemFaturamento_Form;


{$R *.DFM}

procedure TfrmAct_Contas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If MessageDlg('Sair da Tela', mtConfirmation, [mbOK, mbCancel], 0) = MrOk  then
     begin
        dmApp.ZeraCaixaUsuario(owner);
     end
     else
       Action := CaNone ;
  dmfinanceiro2.AcertoPagar.selectsql.text := SqlOriginalPagar;
  dmfinanceiro2.QryVerCotacao.sql.Text :=  SqlCotacao;
  dmfinanceiro2.AcertoReceber.selectsql.text := SqlOriginalReceber;

  if (Frm_Localizar_Cliente <> nil) then
  begin
    Frm_Localizar_Cliente.Free ;
    Frm_Localizar_Cliente := Nil ;
  end
end;

procedure TfrmAct_Contas.FormShow(Sender: TObject);
begin
//  IniciaComponentes ( Self as TForm );
  if (DmApp.ACT_MULTI_SELETOR = 'S') then
  begin
    pnlMulti.Visible := true;
    pnlSimples.Visible := false;
  end
  else
  begin
    pnlMulti.Visible := false;
    pnlSimples.Visible := true;
  end;

  SqlOriginalPagar := dmfinanceiro2.AcertoPagar.selectsql.text;
  SqlOriginalReceber := dmfinanceiro2.AcertoReceber.selectsql.text;
  SqlCotacao := dmfinanceiro2.QryVerCotacao.sql.Text ;

  lblCaixa.Caption := DateToStr(dmapp.DataCaixa);
  lblCaixa2.Caption := DateToStr(dmapp.DataCaixa);

  DmFinanceiro.SelPessoasFJ.Close;
  DmFinanceiro.SelPessoasFJ.Open;

//  btnParceiro.SetFocus;
  
  with DmFinanceiro2 do
  begin
    mtbAcertoReceber.Close;
    mtbAcertoReceber.Open;

    if not mtbAcertoReceber.IsEmpty then
      mtbAcertoReceber.data.Values.Clear;

    mtbAcertoPagar.Close;
    mtbAcertoPagar.Open;

    if not mtbAcertoPagar.IsEmpty then
      mtbAcertoPagar.data.Values.Clear;
  end

end;

procedure TfrmAct_Contas.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  if DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  btnParceiro.EditModified := false;
end;

procedure TfrmAct_Contas.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmAct_Contas.ActFecharExecute(Sender: TObject);
begin
  If frmAct_Contas.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TfrmAct_Contas.EdClienteInicialButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        Frm_Localizar_Cliente.DSource.DataSet := DmFinanceiro.SelPessoas ;


  Except
  end;
end;

procedure TfrmAct_Contas.EdClienteInicialExit(Sender: TObject);
begin

 TiraCorFundo( Sender );
end;

procedure TfrmAct_Contas.EdTipoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  If (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmAct_Contas.Seleciona;
begin

END;

Procedure TfrmAct_Contas.Soma_Receber (Tipo: String; DIni: TDateTime; DFim: TDateTime; Pessoa: Integer);
begin

end;


procedure TfrmAct_Contas.EdTipoEnter(Sender: TObject);
begin
  CorFundo( Sender );
end;

procedure TfrmAct_Contas.EdTipoExit(Sender: TObject);
begin
  //TROCA A COR DE FUNDO
  TiraCorFundo( Sender );
end;

procedure TfrmAct_Contas.BtnOkExit(Sender: TObject);
begin
  //TROCA A COR DE FUNDO
  TiraCorFundo( Sender );
end;

procedure TfrmAct_Contas.GridPagarCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
  if ANode.HasChildren then
    Exit;

  if not ASelected and (AColumn = GridPagarJuros) then
  begin
    Value := ANode.Values[AColumn.Index];
    if ((not VarIsNull(Value))) then
    begin
      //Amarelo.. foi alterado o valor original
      if (Value <> ANode.Values[GridPagarOld_Juros.index]) then
        AColor := $0093FFFF
      else
        AColor := $00E6FDE3;
    end
  end
  else if not ASelected and (AColumn = GridPagarMultas) then
  begin
    Value := ANode.Values[AColumn.Index];
    if ((not VarIsNull(Value))) then
    begin
      //Amarelo.. foi alterado o valor original
      if (Value <> ANode.Values[GridPagarOld_Multa.index]) then
        AColor := $0093FFFF
      else
        AColor := $00E6FDE3;
    end
  end
  else if not ASelected and (AColumn = GridPagarDesconto) then
  begin
    Value := ANode.Values[AColumn.Index];
    if ((not VarIsNull(Value))) then
    begin
      //Amarelo.. foi alterado o valor original
      if (Value <> ANode.Values[GridPagarOld_Desconto.index]) then
        AColor := $0093FFFF
      else
        AColor := $00CECEFF;
    end
  end
  else if not ASelected and (AColumn = GridPagarVariacao) then
  begin
    Value := ANode.Values[AColumn.Index];
    if ((not VarIsNull(Value))) then
    begin
      //Amarelo.. foi alterado o valor original
      if (Value <> ANode.Values[GridPagarold_Variacao.index]) then
        AColor := $0093FFFF
      else
        AColor := $00E6FDE3;
    end
  end
  else if not ASelected and (AColumn = GridPagarSELECIONADO) then
  begin
    Value := ANode.Values[AColumn.Index];
    if (Value = 'S') then
    begin
      //O Total a baixar não poderá ser superior ao total dos debitos
      if ((ANode.Values[GridPagarTotal_Geral.index]) < (ANode.Values[GridPagarTotal_Baixar.index])) then
        AColor := clRed
      else
        AColor := clGreen;
    end
  end;
end;

procedure TfrmAct_Contas.AcertaBaixa(Codigo:integer);
begin
//
end;


procedure TfrmAct_Contas.Filtrar;
begin
  with dmFinanceiro2 do
  begin
    QryVerCotacao.Close;
    QryVerCotacao.sql.text :=  SqlCotacao + filtro;
//    QryVerCotacao.ParamByName('pessoa').value := cmbCliente.LookupKeyValue;
    QryVerCotacao.ParamByName('data').asDate := dmApp.DataCaixa;
    QryVerCotacao.ParamByName('cnpj').value := dmApp.cnpj;
    QryVerCotacao.Open;
    if QryVerCotacaoEXISTE.value > 0 then
    begin
      Application.Messagebox('Antes de realizar as baixas será necessário lançar os valores dos índices para à data de caixa selecionada. Verifique','Aviso',mb_iconerror + mb_ok);
      exit;
    end;

    ReceberTotal_Selecionado := 0;
    PagarTotal_Selecionado := 0;

    mtbAcertoReceber.Close;
    mtbAcertoReceber.Open;
    mtbAcertoReceber.data.Values.Clear;

    mtbAcertoPagar.Close;
    mtbAcertoPagar.Open;
    mtbAcertoPagar.data.Values.Clear;

    //---------------------------------Contas à Receber------------------------------------//
    AcertoReceber.Close;
//    AcertoReceber.ParamByName('pessoa_fj').value := cmbCliente.LookupKeyValue;
    AcertoReceber.ParamByName('cnpj').value := dmApp.cnpj;
    AcertoReceber.ParamByName('dt_caixa').AsDate := dmApp.DataCaixa;
    AcertoReceber.Open;

    //    mtbAcertoReceber.DisableControls;
    mtbAcertoReceberTotal_Baixar.OnValidate := nil;

    AcertoReceber.First;
    while not AcertoReceber.Eof do
    begin
      mtbAcertoReceber.Append;
      mtbAcertoReceberSALDO_MOEDA.value :=  AcertoReceberSALDO_MOEDA.value;
      mtbAcertoReceberCODIGO.Value := AcertoReceberCODIGO.value;
      mtbAcertoReceberTotal_Geral.Value := AcertoReceberTotal_Geral.value;
      mtbAcertoReceberPESSOA_FJ.Value := AcertoReceberPESSOA_FJ.value;
      mtbAcertoReceberDT_EMISSAO.value := AcertoReceberDT_EMISSAO.value;
      mtbAcertoReceberDT_VENCTO.value := AcertoReceberDT_VENCTO.value;
      mtbAcertoReceberDOCTO.value := AcertoReceberDOCTO.value;
      mtbAcertoReceberPARCELA.value := AcertoReceberPARCELA.value;
      mtbAcertoReceberVALOR.value := AcertoReceberVALOR.value;
      mtbAcertoReceberVLR_PARCIAL.value := AcertoReceberVLR_PARCIAL.value;
      mtbAcertoReceberCODIGO_VN.value := AcertoReceberCODIGO_VN.value;
      mtbAcertoReceberTIPO_DOCTO.value := AcertoReceberTIPO_DOCTO.value;
      mtbAcertoReceberJUROS_PARCIAL.value := AcertoReceberJUROS_PARCIAL.value;
      if not (AcertoReceberDATA_ULT_BAIXA.isnull) then
        mtbAcertoReceberDATA_ULT_BAIXA.value := AcertoReceberDATA_ULT_BAIXA.value;

      mtbAcertoReceberARQ_MORTO.value := AcertoReceberARQ_MORTO.value;
      mtbAcertoReceberTAXA_JUROS.value := AcertoReceberTAXA_JUROS.value;
      mtbAcertoReceberCOD_INDEXADOR.value := AcertoReceberCOD_INDEXADOR.value;
      mtbAcertoReceberIDX_DATABASE.value := AcertoReceberIDX_DATABASE.value;
      mtbAcertoReceberIDX_COTACAO.value := AcertoReceberIDX_COTACAO.value;
      mtbAcertoReceberIDX_QTDE.value := AcertoReceberIDX_QTDE.value;
      mtbAcertoReceberNOME.value := AcertoReceberNOME.value;
      mtbAcertoReceberSldNominal.value := mtbAcertoReceberVALOR.asFloat - mtbAcertoReceberVLR_PARCIAL.asFloat;
      mtbAcertoReceberJuros_Calculados.value := AcertoReceberJuros_Calculados.value;
      mtbAcertoReceberJuros.value := AcertoReceberJuros_Calculados.value;
      mtbAcertoReceberVARIACAO.value := AcertoReceberVARIACAO.value;
      mtbAcertoReceberDESCONTO.value := 0;
      mtbAcertoReceberMULTAS.value := 0;
      mtbAcertoReceberOld_Juros.value := AcertoReceberJuros_Calculados.value;
      mtbAcertoReceberOld_VARIACAO.value := AcertoReceberVARIACAO.value;
      mtbAcertoReceberOld_DESCONTO.value := 0;
      mtbAcertoReceberOld_MULTA.value := 0;
      mtbAcertoReceberAtraso.value := AcertoReceberAtraso.value;
      mtbAcertoReceberTotal_Baixar.value := 0;
      mtbAcertoReceberSELECIONADO.value := 'N';
      AcertoReceber.next;
    end;
    mtbAcertoReceber.First;

//    mtbAcertoReceber.EnableControls;
    mtbAcertoReceberTotal_Baixar.OnValidate := mtbAcertoReceberTotal_BaixarValidate;


    //---------------------------------Contas à Pagar------------------------------------//
    AcertoPagar.Close;
//    AcertoPagar.ParamByName('pessoa_fj').value := cmbCliente.LookupKeyValue;
    AcertoPagar.ParamByName('cnpj').value := dmApp.cnpj;
    AcertoPagar.ParamByName('dt_caixa').AsDate := dmApp.DataCaixa;
    AcertoPagar.Open;

//    mtbAcertoPagar.DisableControls;
    mtbAcertoPagarTotal_Baixar.OnValidate := nil;

    AcertoPagar.First;
    while not AcertoPagar.Eof do
    begin
      mtbAcertoPagar.Append;
      mtbAcertoPagarCODIGO.Value := AcertoPagarCODIGO.value;
      mtbAcertoPagarTotal_Geral.Value := AcertoPagarTotal_Geral.value;
      mtbAcertoPagarPESSOA_FJ.Value := AcertoPagarPESSOA_FJ.value;
      mtbAcertoPagarDT_EMISSAO.value := AcertoPagarDT_EMISSAO.value;
      mtbAcertoPagarDT_VENCTO.value := AcertoPagarDT_VENCTO.value;
      mtbAcertoPagarDOCTO.value := AcertoPagarDOCTO.value;
      mtbAcertoPagarPARCELA.value := AcertoPagarPARCELA.value;
      mtbAcertoPagarVALOR.value := AcertoPagarVALOR.value;
      mtbAcertoPagarVLR_PARCIAL.value := AcertoPagarVLR_PARCIAL.value;
      mtbAcertoPagarCODIGO_VN.value := AcertoPagarCODIGO_VN.value;
      mtbAcertoPagarTIPO_DOCTO.value := AcertoPagarTIPO_DOCTO.value;
      if not (AcertoPagarDT_ULTIMA_BAIXA.isnull) then
        mtbAcertoPagarDATA_ULT_BAIXA.value := AcertoPagarDT_ULTIMA_BAIXA.value;

      mtbAcertoPagarCOD_INDEXADOR.value := AcertoPagarCOD_INDEXADOR.value;
      mtbAcertoPagarIDX_DATABASE.value := AcertoPagarIDX_DATABASE.value;
      mtbAcertoPagarIDX_COTACAO.value := AcertoPagarIDX_COTACAO.value;
      mtbAcertoPagarIDX_QTDE.value := AcertoPagarIDX_QTDE.value;
      mtbAcertoPagarNOME.value := AcertoPagarNOME.value;
      mtbAcertoPagarSldNominal.value := mtbAcertoPagarVALOR.asFloat - mtbAcertoPagarVLR_PARCIAL.asFloat;
      mtbAcertoPagarJuros_Calculados.value := AcertoPagarJuros_Calculados.value;

      mtbAcertoPagarJuros.value := AcertoPagarJuros_Calculados.value;
      mtbAcertoPagarVARIACAO.value := AcertoPagarVARIACAO.value;
      mtbAcertoPagarDESCONTO.value := 0;
      mtbAcertoPagarMULTAS.value := 0;

      mtbAcertoPagarOld_Juros.value := AcertoPagarJuros_Calculados.value;
      mtbAcertoPagarOld_VARIACAO.value := AcertoPagarVARIACAO.value;
      mtbAcertoPagarOld_DESCONTO.value := 0;
      mtbAcertoPagarOld_MULTA.value := 0;

      mtbAcertoPagarAtraso.value := AcertoPagarAtraso.value;
      mtbAcertoPagarTotal_Baixar.value := 0;
      mtbAcertoPagarSELECIONADO.value := 'N';
      AcertoPagar.next;
    end;
    mtbAcertoPagar.First;

//    mtbAcertoPagar.EnableControls;
    mtbAcertoPagarTotal_Baixar.OnValidate := mtbAcertoPagarTotal_BaixarValidate;
  end;

  TotalReceber := 0;
  TotalPagar := 0;
  Saldo := 0;
  lblSaldo.caption := 'Saldo';
  lblSaldoVlr.caption := '0,00';
  lblPagar.caption := '0,00';
  lblReceber.caption := '0,00';
  dmFinanceiro2.AcertoPagar.Transaction.CommitRetaining;
  dmFinanceiro2.AcertoReceber.Transaction.CommitRetaining;
end;

procedure TfrmAct_Contas.ActSelecionaExecute(Sender: TObject);
begin
  with dmFinanceiro2 do
  begin
    if frmAct_Contas.ActiveControl = GridReceber then
    begin
      if (mtbAcertoReceber.State <> dsEdit) then
        mtbAcertoReceber.Edit;

      if mtbAcertoReceberSELECIONADO.value = 'S' then
      begin
        mtbAcertoReceberSELECIONADO.value := 'N';
        TotalReceber :=  TotalReceber - mtbAcertoReceberTOTAL_Baixar.value;
        mtbAcertoReceberOld_Total_Baixar.Value := 0;//Não mexa nesse trem!!!!!!!!!!!!!!!!!!!
        mtbAcertoReceberTOTAL_BAIXAR.value := 0;
        mtbAcertoReceberTOTAL_GERAL.value := mtbAcertoReceberSldNominal.value + mtbAcertoReceberMultas.Value + mtbAcertoReceberVariacao.value
                                       + mtbAcertoReceberJuros.value - mtbAcertoReceberDesconto.value;
      end
      else
      begin
        mtbAcertoReceberSELECIONADO.value := 'S';
        mtbAcertoReceberTOTAL_BAIXAR.value := mtbAcertoReceberSldNominal.value + mtbAcertoReceberMultas.Value + mtbAcertoReceberVariacao.value
                                              + mtbAcertoReceberJuros.value - mtbAcertoReceberDesconto.value;

       // TotalReceber :=  TotalReceber + mtbAcertoReceberTOTAL_BAIXAR.value;
      end;
      lblReceber.Caption := FormatFloat('###,##0.00',TotalReceber);
    end
    else if frmAct_Contas.ActiveControl = GridPagar then
    begin
      if (mtbAcertoPagar.State <> dsEdit) then
        mtbAcertoPagar.Edit;

      if mtbAcertoPagarSELECIONADO.value = 'S' then
      begin
        mtbAcertoPagarSELECIONADO.value := 'N';
        TotalPagar :=  TotalPagar - mtbAcertoPagarTOTAL_BAIXAR.value;
        mtbAcertoPagarOld_Total_Baixar.Value := 0; //Não mexa nesse trem!!!!!!!!!!!!!!!!!!!
        mtbAcertoPagarTOTAL_BAIXAR.Value := 0;
      end
      else
      begin
        mtbAcertoPagarSELECIONADO.value := 'S';
        mtbAcertoPagarTOTAL_BAIXAR.Value := mtbAcertoPagarTotal_Geral.value;
       // TotalPagar :=  TotalPagar + mtbAcertoPagarTOTAL_BAIXAR.value;
      end;
      lblPagar.Caption := FormatFloat('###,##0.00',TotalPagar);
    end;
  end;

  saldo := TotalReceber - TotalPagar;
  if (Saldo < 0 ) then
  begin
    lblSaldo.Caption := 'Saldo Pagar';
    lblSaldoVlr.Caption := FormatFloat('###,##0.00',(Saldo * -1));
  end
  else if (Saldo > 0 ) then
  begin
    lblSaldo.Caption := 'Saldo Receber';
    lblSaldoVlr.Caption := FormatFloat('###,##0.00', Saldo );
  end
  else
  begin
    lblSaldo.Caption := 'Saldo';
    lblSaldoVlr.Caption := FormatFloat('###,##0.00',0);
  end;
end;

procedure TfrmAct_Contas.cmbClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
      Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
      Perform(WM_NEXTDLGCTL, 1, 0);
  if (key = 13) then
      FiltraParceiro.Execute;
end;

procedure TfrmAct_Contas.ActAcertarExecute(Sender: TObject);
var
  BXVlrNominal : real;
begin
  if ((trim(CmbCliente.Text) <> '') and (CmbCliente.visible)) then
    pessoa := StrToInt(Trim(CmbCliente.Text));

  FrmAct_Baixa := TFrmAct_Baixa.Create(Self);
  FrmAct_Baixa.ShowModal;
  FrmAct_Baixa.Free;
  FrmAct_Baixa := nil;
end;

procedure TfrmAct_Contas.GridReceberKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((key=13) or (key=113))Then
    dmFinanceiro2.mtbAcertoReceber.Edit;
end;

procedure TfrmAct_Contas.GridPagarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if ((key=13) or (key=113))Then
    dmFinanceiro2.mtbAcertoPagar.Edit;
end;

procedure TfrmAct_Contas.GridReceberCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
  if ANode.HasChildren then
    Exit;

  if not ASelected and (AColumn = GridReceberJuros) then
  begin
    Value := ANode.Values[AColumn.Index];
    if ((not VarIsNull(Value))) then
    begin
      //Amarelo.. foi alterado o valor original
      if (Value <> ANode.Values[GridReceberOld_Juros.index]) then
        AColor := $0093FFFF
      else
        AColor := $00E6FDE3;
    end
  end
  else if not ASelected and (AColumn = GridReceberMultas) then
  begin
    Value := ANode.Values[AColumn.Index];
    if ((not VarIsNull(Value))) then
    begin
      //Amarelo.. foi alterado o valor original
      if (Value <> ANode.Values[GridReceberOld_Multa.index]) then
        AColor := $0093FFFF
      else
        AColor := $00E6FDE3;
    end
  end
  else if not ASelected and (AColumn = GridReceberDesconto) then
  begin
    Value := ANode.Values[AColumn.Index];
    if ((not VarIsNull(Value))) then
    begin
      //Amarelo.. foi alterado o valor original
      if (Value <> ANode.Values[GridReceberOld_Desconto.index]) then
        AColor := $0093FFFF
      else
        AColor := $00CECEFF;
    end
  end
  else if not ASelected and (AColumn = GridReceberVariacao) then
  begin
    Value := ANode.Values[AColumn.Index];
    if ((not VarIsNull(Value))) then
    begin
      //Amarelo.. foi alterado o valor original
      if (Value <> ANode.Values[GridReceberold_Variacao.index]) then
        AColor := $0093FFFF
      else
        AColor := $00E6FDE3;
    end
  end
  else if not ASelected and (AColumn = GridReceberSELECIONADO) then
  begin
    Value := ANode.Values[AColumn.Index];
    if (Value = 'S') then
    begin
      //O Total a baixar não poderá ser superior ao total dos debitos
      if ((ANode.Values[GridReceberTotal_Geral.index]) < (ANode.Values[GridReceberTotal_Baixar.index])) then
        AColor := clRed
      else
        AColor := clGreen;
    end
  end;
end;


procedure TfrmAct_Contas.ActVerOldValueExecute(Sender: TObject);
begin
  FrmValoresOriginais := TFrmValoresOriginais.Create(Self);
  FrmValoresOriginais.ShowModal;
  FrmValoresOriginais.Free;
  FrmValoresOriginais := nil;
end;

procedure TfrmAct_Contas.FiltraParceiroExecute(Sender: TObject);
begin
  if DmApp.ACT_MULTI_SELETOR = 'S' then
  begin
    FrmFiltraParceiro := TFrmFiltraParceiro.Create(Self);
    FrmFiltraParceiro.ShowModal;
    filtro := FrmFiltraParceiro.Filtro;
    cont := FrmFiltraParceiro.cont;
    nome := FrmFiltraParceiro.nome;
    codigo := FrmFiltraParceiro.codigo;
    FrmFiltraParceiro.Free;
    FrmFiltraParceiro := nil;
  end
  else
  begin
    if Frm_Localizar_Cliente = nil then
    begin
        Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;
        Frm_Localizar_Cliente.EdCodigo.Text := CmbCliente.Text;
    end;
    Frm_Localizar_Cliente.DSource.dataset := DmVendas.SelPessoasFJ ;


   if (Frm_Localizar_Cliente.showmodal = mrOk ) Then
   Begin
      CmbCliente.Text := IntToStr(Frm_Localizar_Cliente.CampTrecho);
      lblnome.Caption := Frm_Localizar_Cliente.CampNome;
   end;

    if (trim(CmbCliente.text) <> '') then
    begin
      codigo := StrToInt(trim(CmbCliente.text));
      nome := lblnome.Caption;
      cont := 1;
      filtro := ' = '+trim(CmbCliente.text);
    end
    else
      cont := 0;
  end;

  if (cont > 0) then
  begin
    if (cont > 1) then
      edtParceiro.text := 'VÁRIOS PARCEIROS'
    else
    begin
      edtParceiro.text := NOME;

      with dmVendas2 do
      begin
        Valida_Cliente.Close ;
        Valida_Cliente.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;
        Valida_Cliente.ParamByName ('CODIGO').AsInteger := codigo ;
        Valida_Cliente.Open ;

        If Not Valida_ClienteOBS.isNull then
        Begin
          Application.CreateForm(TFrmMensagemFaturamento, FrmMensagemFaturamento);
          FrmMensagemFaturamento.Showmodal ;
          FrmMensagemFaturamento.Free ;
          FrmMensagemFaturamento  := Nil;
        end
        else
        begin
          If Not Valida_ClienteOBS2.isNull then
          begin
            Application.CreateForm(TFrmMensagemFaturamento, FrmMensagemFaturamento);
            FrmMensagemFaturamento.dxDBMemo1.DataField := 'OBS2' ;
            FrmMensagemFaturamento.Showmodal ;
            FrmMensagemFaturamento.Free ;
            FrmMensagemFaturamento  := Nil;
          end;
        end;
      end;
    end;

    with dmFinanceiro2 do
    begin
      AcertoReceber.SelectSQL.Text := SqlOriginalReceber + Filtro;
      AcertoPagar.SelectSQL.Text := SqlOriginalPagar + Filtro;
    end;
    filtrar;
  end;
end;

procedure TfrmAct_Contas.btnParceiroPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  FiltraParceiro.Execute;
end;

procedure TfrmAct_Contas.GridReceberDblClick(Sender: TObject);
begin
   If (dmFinanceiro2.mtbAcertoReceberCODIGO_VN.AsInteger > 0) then
     DmVendas2.Proc_Consulta_Venda(dmFinanceiro2.mtbAcertoReceberCODIGO_VN.Value)
   else
     Application.messagebox('Conta à Receber não possui um faturamento vinculado','Aviso',mb_iconinformation + mb_ok);
end;

procedure TfrmAct_Contas.GridPagarDblClick(Sender: TObject);
begin
  If (dmFinanceiro2.mtbAcertoPagarCODIGO_VN.AsInteger > 0 ) then
     DmVendas2.Proc_Consulta_Venda(dmFinanceiro2.mtbAcertoPagarCODIGO_VN.AsInteger)
   else
     Application.messagebox('Conta à Pagar não possui uma faturamento vinculado','Aviso',mb_iconinformation + mb_ok);
end;

procedure TfrmAct_Contas.CmbClienteButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
    FiltraParceiro.Execute;
end;

procedure TfrmAct_Contas.CmbClienteExit(Sender: TObject);
begin
    //FiltraParceiro.Execute;
end;

end.
