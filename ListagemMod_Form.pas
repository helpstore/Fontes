unit ListagemMod_Form;

interface

uses
  Windows, Messages, variants, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,   Grids, DBGrids, dxDBCtrl, dxDBGrid, dxTL,
  dxDBTLCl, dxGrClms, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxPageControlProducer, dxSkinscxPCPainter,
  dxBarSkinnedCustForm, dxSkinsdxRibbonPainter, cxPropertiesStore,
  dxPSCore, cxClasses, ImgList, dxDBTL, cxGroupBox;

type
  TfrmListagemMod = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    Navigator: TdxBarDBNavigator;
    Actions: TActionList;
    ActFechar: TAction;
    actDesabilitar: TAction;
    pnlMensagens: Tcxgroupbox;
    ImageList: TImageList;
    BarMgr: TdxBarManager;
    BtnCancelar: TdxBarButton;
    BtnFechar: TdxBarButton;
    dsRelease: TDataSource;
    DBTreeList: TdxDBTreeList;
    DBTreeListCODIGO: TdxDBTreeListMaskColumn;
    DBTreeListTICKET: TdxDBTreeListMaskColumn;
    DBTreeListCLIENTE: TdxDBTreeListMaskColumn;
    DBTreeListRELEASE: TdxDBTreeListMaskColumn;
    DBTreeListTIPO: TdxDBTreeListMaskColumn;
    DBTreeListCOD_PAI: TdxDBTreeListMaskColumn;
    DBTreeListRESUMO: TdxDBTreeListMaskColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    actImprimir: TAction;
    stgRelease: TcxPropertiesStore;
    DBTreeListCNPJ: TdxDBTreeListColumn;
    DBTreeListDESCRICAO: TdxDBTreeListBlobColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActFecharExecute(Sender: TObject);
    procedure actDesabilitarExecute(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure DBTreeListCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListagemMod: TfrmListagemMod;

implementation

uses
    Cadastros_DM,
    Listagens_DM,
    Application_DM,
    Main,
    Usuarios_DM,
    Funcoes, Localizar_Generico;

{$R *.DFM}

procedure TfrmListagemMod.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If frmListagemMod.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;

  Action := caFree;
  frmListagemMod := Nil;
end;

procedure TfrmListagemMod.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  DMApp.Sis_Releases.close;
  DMApp.Sis_Releases.open;

end;

procedure TfrmListagemMod.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
  begin
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
  
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmListagemMod.ActFecharExecute(Sender: TObject);
begin
  If frmListagemMod.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TfrmListagemMod.actDesabilitarExecute(Sender: TObject);
begin
  try
    if (application.messagebox('Deseja realmente desabilitar a listagem de modificações da release?','Aviso',mb_iconquestion + mb_yesno) = id_no) then
      exit;

    ExecSql('update sis_usuarios u set u.exibir = ''N'' where u.codigo = '+IntToStr(DmApp.USR_CONECTADO),dmapp.TransactionProc);
    application.messagebox('Listagem desabilitada com sucesso!','Aviso',mb_iconinformation + mb_ok);
  except
    application.messagebox('Não foi possível efetuar a operação!','Aviso',mb_iconerror + mb_ok);
    exit;
  end;
end;

procedure TfrmListagemMod.actImprimirExecute(Sender: TObject);
begin
  {dxRelatorio.PrinterPage.PageHeader.LeftTitle.Text := dmApp.nome+' - Releases';
  dxRelatorio.Preview;}
end;

procedure TfrmListagemMod.DBTreeListCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
  aux : VARIANT;
begin
 TdxDBTreeListBlobColumn(AColumn).Field;

  if ANode.HasChildren then
    Exit;


  if not ASelected and (AColumn = DBTreeListRESUMO) then
  begin
    Value := ANode.Values[DBTreeListCNPJ.index];
    if ((not VarIsNull(Value)) and (Value <> '')) then
      Value := StringReplace(Value,'.','',[rfReplaceAll]);
      Value := StringReplace(Value,'/','',[rfReplaceAll]);
      Value := StringReplace(Value,'-','',[rfReplaceAll]);
      Value := StringReplace(Value,' ','',[rfReplaceAll]);
      if Value = DMAPP.CNPJ then
      begin
        AFont.Style := [FSBOLD];
        AColor := $00D2FFFF;//$00ECAD84;
      end else
      begin
        AFont.Style := [];
        AColor := clWindow;
      end;
  end;
end;

end.
