  unit ManutencaoBoletos_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Mask, Buttons, ExtCtrls,
     Db,  dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxDBTLCl,
  dxGrClms, dxEditor,
  dxExEdtr, dxEdLib, ComCtrls,   dxDBEdtr, dxDBELib,
  RDprint,   Grids, DBGrids, ppPrnabl, ppClass, ppStrtch, ppRichTx,
  ppCache, ppBands, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  ppVar, ppCtrls,    cxPropertiesStore, variants,
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
  dxSkinXmas2008Blue, Menus, ppParameter, cxButtons, cxLabel;

type
  TfrmManutencaoBoleto = class(TForm)
    Actions: TActionList;
    ActFechar: TAction;
    ActListagem: TAction;
    DataSource: TDataSource;
    rptNotExtraJudicial: TppReport;
    ppDetailBand1: TppDetailBand;
    RichText: TppRichText;
    ppTitleBand1: TppTitleBand;
    lblEmpresa: TppLabel;
    ppLabel1: TppLabel;
    lblCidade: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppFooterBand1: TppFooterBand;
    lblEmpresa2: TppLabel;
    ppLabel3: TppLabel;
    lblEndereco: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    pnlBottom: TPanel;
    Bevel1: TBevel;
    Label6: TcxLabel;
    BtnFechar: TcxButton;
    GRID: TdxDBGrid;
    Panel4: TPanel;
    RzBitBtn3: TcxButton;
    RzPanel1: TPanel;
    ActFiltrar: TAction;
    Label1: TcxLabel;
    RzBitBtn5: TcxButton;
    RzBitBtn2: TcxButton;
    ActRemessa: TAction;
    ActRetorno: TAction;
    ActImprimir: TAction;
    GRIDSAC_NOME: TdxDBGridMaskColumn;
    GRIDSAC_RUA: TdxDBGridMaskColumn;
    GRIDBLT_CONVENIO: TdxDBGridMaskColumn;
    GRIDSAC_COMPLEMENTO: TdxDBGridMaskColumn;
    GRIDSAC_NUM: TdxDBGridMaskColumn;
    GRIDSAC_EMAIL: TdxDBGridMaskColumn;
    GRIDSAC_CEP: TdxDBGridMaskColumn;
    GRIDSAC_CIDADE: TdxDBGridMaskColumn;
    GRIDSAC_UF: TdxDBGridMaskColumn;
    GRIDSAC_BAIRRO: TdxDBGridMaskColumn;
    GRIDSAC_PESSOA: TdxDBGridMaskColumn;
    GRIDBLT_AGENCIA: TdxDBGridMaskColumn;
    GRIDCED_CODIGOCED: TdxDBGridMaskColumn;
    GRIDCED_DIG_CODIGOCED: TdxDBGridMaskColumn;
    GRIDBLT_CARTEIRA: TdxDBGridMaskColumn;
    GRIDBLT_INSTRUCAO: TdxDBGridMemoColumn;
    GRIDBLT_LAYOUT: TdxDBGridMaskColumn;
    GRIDBLT_DIG_CONTA: TdxDBGridMaskColumn;
    GRIDBLT_DIG_AGENCIA: TdxDBGridMaskColumn;
    GRIDBLT_CONTA: TdxDBGridMaskColumn;
    GRIDBLT_LOCAL_PAGTO: TdxDBGridMaskColumn;
    GRIDBLT_BANCO: TdxDBGridMaskColumn;
    GRIDBLT_ACEITE_DOCTO: TdxDBGridMaskColumn;
    GRIDBLT_DIAS_ABATIMENTO: TdxDBGridMaskColumn;
    GRIDBLT_DIAS_DESCONTO: TdxDBGridMaskColumn;
    GRIDBLT_DIAS_MORA_JUROS: TdxDBGridMaskColumn;
    GRIDBLT_MULTA: TdxDBGridMaskColumn;
    GRIDBLT_DIAS_PROTESTO: TdxDBGridMaskColumn;
    GRIDBLT_PCT_ABATIMENTO: TdxDBGridMaskColumn;
    GRIDBLT_PCT_DESCONTO: TdxDBGridMaskColumn;
    GRIDBLT_VLR_DESPESA: TdxDBGridMaskColumn;
    GRIDBLT_VLR_IOF: TdxDBGridMaskColumn;
    GRIDBLT_VLR_MORA_JUROS: TdxDBGridMaskColumn;
    GRIDBLT_VLR_OUTRAS_DESP: TdxDBGridMaskColumn;
    GRIDBLT_VALOR: TdxDBGridMaskColumn;
    GRIDBLT_DT_LANCTO: TdxDBGridDateColumn;
    GRIDBLT_DT_VENCTO: TdxDBGridDateColumn;
    GRIDBLT_NOME_BANCO: TdxDBGridMaskColumn;
    GRIDNOSSO_NUMERO: TdxDBGridColumn;
    GRIDREC_DESCONTO: TdxDBGridMaskColumn;
    GRIDREC_VLR_PARCIAL: TdxDBGridMaskColumn;
    GRIDREC_DATA_ULT_BAIXA: TdxDBGridDateColumn;
    GRIDBLT_NUM_IMP: TdxDBGridMaskColumn;
    GRIDTotal: TdxDBGridColumn;
    GRIDJuros: TdxDBGridColumn;
    GRIDPSA_CODIGO: TdxDBGridMaskColumn;
    stgfrmManutencaoBoleto: TcxPropertiesStore;
    procedure ActFecharExecute(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure EdClienteInicialButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure EdClienteInicialExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActRemessaExecute(Sender: TObject);
    procedure ActRetornoExecute(Sender: TObject);
    procedure ActImprimirExecute(Sender: TObject);
    procedure ActListagemExecute(Sender: TObject);
    procedure GRIDCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    
  end;


var
  frmManutencaoBoleto: TfrmManutencaoBoleto;
implementation

uses
    Application_DM, Localizar_Cliente, Main, funcoes,
  Financeiro_Dm2, Financeiro_Dm;

{$R *.DFM}

procedure TfrmManutencaoBoleto.ActFecharExecute(Sender: TObject);
begin
  close ;
end;

procedure TfrmManutencaoBoleto.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  If (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmManutencaoBoleto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('Deseja Sair da Consulta?', mtConfirmation, [mbOK, mbCancel], 0) = MROK then
  begin
    if DmFinanceiro.SelPessoasFj.Active then
      DmFinanceiro.SelPessoasFj.Close ;
    Frm_Localizar_Cliente.Free   ;
    Frm_Localizar_Cliente := Nil ;

    DMFinanceiro.SelPessoasFJ.Close ;
    Action := caFree;

    FrmMain.PnlClient.Visible := True;
  end
  else
    Action := Canone ;
end;

procedure TfrmManutencaoBoleto.FormResize(Sender: TObject);
begin
  Bevel1.Width := pnlBottom.Width - 30;
  BtnFechar.Left := Bevel1.Left + (Bevel1.Width - BtnFechar.Width);
end;

procedure TfrmManutencaoBoleto.BtnOkClick(Sender: TObject);
begin
  GRID.SETFOCUS;
end;

procedure TfrmManutencaoBoleto.EdClienteInicialButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
  try
    Frm_Localizar_Cliente.DSource.DataSet := DmFinanceiro.SelPessoasFJ;
    if (Frm_Localizar_Cliente.showmodal = mrOk) then
      //EdClienteInicial.TEXT := IntToStr(Frm_Localizar_Cliente.CampTrecho);
  except
    Application.HandleException(self);
  end;
end;

procedure TfrmManutencaoBoleto.EdClienteInicialExit(Sender: TObject);
begin
  TiraCorFundo(sender);
end;

procedure TfrmManutencaoBoleto.FormShow(Sender: TObject);
begin
  IniciaComponentes(Self as TForm);
  with dmFinanceiro2 do
  begin
     qryManBoletos.close;
     qryManBoletos.Open;
  end;
end;

procedure TfrmManutencaoBoleto.ActRemessaExecute(Sender: TObject);
begin
//
end;

procedure TfrmManutencaoBoleto.ActRetornoExecute(Sender: TObject);
begin
//
end;

procedure TfrmManutencaoBoleto.ActImprimirExecute(Sender: TObject);
begin
//
end;

procedure TfrmManutencaoBoleto.ActListagemExecute(Sender: TObject);
begin
//
end;

procedure TfrmManutencaoBoleto.GRIDCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Valor : Variant;
begin
  if (ASelected) then
    exit;
    
  Valor := ANode.Values[GRIDBLT_DT_VENCTO.Index];

  if not VarIsNull(Valor) then
  begin
    if Valor < Date then
      AColor := $00ECAD84
    else
      AColor := clWhite;
  end
  else
    AFont.Color := clBlack;


end;

end.

            
