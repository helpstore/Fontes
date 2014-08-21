unit UntCadContaCorrente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untCadPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxContainer,
  dxSkinsdxBarPainter, cxIntlBase, cxintl, cxPropertiesStore,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxBarDBNav, ImgList, ActnList,
  dxBar, cxClasses, IBQuery, IBCustomDataSet, cxLabel, cxTextEdit,
  cxDBEdit, ExtCtrls, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxPC;

type
  TfrmCadContaCorrente = class(TfrmCadPadrao)
    dtListCNPJ: TIBStringField;
    dtListCONTA: TIntegerField;
    dtListCODIGO: TIBStringField;
    dtListCONTAPAI: TIBStringField;
    dtListNOME: TIBStringField;
    dtListBANCO: TIBStringField;
    dtListULTIMO_CHEQUE: TIntegerField;
    dtListTIPO: TIBStringField;
    dtListAGENCIA: TIBStringField;
    dtListDV_AGENCIA: TIBStringField;
    dtListCONTA_CORRENTE: TIBStringField;
    dtListDV_CONTA_CORRENTE: TIBStringField;
    dtListDV_AGENCIA_CONTA: TIBStringField;
    dtListCTB_FLUXO_CAIXA: TIBStringField;
    dtListGERA_BOLETOS: TIBStringField;
    dtListBLT_INSTRUCAO: TMemoField;
    dtListBLT_LOCAL_PAGTO: TIBStringField;
    dtListBLT_COD_CEDENTE: TIntegerField;
    dtListBLT_DIG_COD_CEDENTE: TIBStringField;
    dtListBLT_AGENCIA: TIBStringField;
    dtListBLT_DIG_AGENCIA: TIBStringField;
    dtListBLT_CONVENIO: TIntegerField;
    dtListBLT_CONTA: TIBStringField;
    dtListBLT_DIG_CONTA: TIBStringField;
    dtListBLT_CARTEIRA: TIBStringField;
    dtListBLT_LAYOUT: TSmallintField;
    dtListBLT_ACEITE_DOCTO: TIBStringField;
    dtListBLT_DIAS_ABATIMENTO: TIBStringField;
    dtListBLT_DIAS_DESCONTO: TIntegerField;
    dtListBLT_DIAS_MORA_JUROS: TIntegerField;
    dtListBLT_DIAS_PROTESTO: TIntegerField;
    dtListBLT_PCT_ABATIMENTO: TFloatField;
    dtListBLT_PCT_DESCONTO: TFloatField;
    dtListDESP_BANCARIA: TFloatField;
    dtListMORA_DIARIA: TFloatField;
    dtListBLT_VLR_IOF: TFloatField;
    dtListBLT_VLR_OUTRAS_DESP: TFloatField;
    dtListBLT_DIR_REMESSA: TIBStringField;
    dtListBLT_DIR_RETORNO: TIBStringField;
    dtListBLT_MULTA: TFloatField;
    dtListBLT_NOSSO_NUM_INI: TIntegerField;
    dtListBLT_NOSSO_NUM_FIM: TIntegerField;
    dtListBLT_NOSSO_NUM_PROX: TIntegerField;
    dtListBLT_MODALIDADE: TIBStringField;
    dtListBLT_LAYOUT_IMPRESSAO: TIBStringField;
    dtListBLT_NUM_COPIAS: TIntegerField;
    GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn;
    GridDBBandedTableView2CONTA: TcxGridDBBandedColumn;
    GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn;
    GridDBBandedTableView2CONTAPAI: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME: TcxGridDBBandedColumn;
    GridDBBandedTableView2BANCO: TcxGridDBBandedColumn;
    GridDBBandedTableView2ULTIMO_CHEQUE: TcxGridDBBandedColumn;
    GridDBBandedTableView2TIPO: TcxGridDBBandedColumn;
    GridDBBandedTableView2AGENCIA: TcxGridDBBandedColumn;
    GridDBBandedTableView2DV_AGENCIA: TcxGridDBBandedColumn;
    GridDBBandedTableView2CONTA_CORRENTE: TcxGridDBBandedColumn;
    GridDBBandedTableView2DV_CONTA_CORRENTE: TcxGridDBBandedColumn;
    GridDBBandedTableView2DV_AGENCIA_CONTA: TcxGridDBBandedColumn;
    GridDBBandedTableView2CTB_FLUXO_CAIXA: TcxGridDBBandedColumn;
    GridDBBandedTableView2GERA_BOLETOS: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_INSTRUCAO: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_LOCAL_PAGTO: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_COD_CEDENTE: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_DIG_COD_CEDENTE: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_AGENCIA: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_DIG_AGENCIA: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_CONVENIO: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_CONTA: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_DIG_CONTA: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_CARTEIRA: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_LAYOUT: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_ACEITE_DOCTO: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_DIAS_ABATIMENTO: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_DIAS_DESCONTO: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_DIAS_MORA_JUROS: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_DIAS_PROTESTO: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_PCT_ABATIMENTO: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_PCT_DESCONTO: TcxGridDBBandedColumn;
    GridDBBandedTableView2DESP_BANCARIA: TcxGridDBBandedColumn;
    GridDBBandedTableView2MORA_DIARIA: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_VLR_IOF: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_VLR_OUTRAS_DESP: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_DIR_REMESSA: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_DIR_RETORNO: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_MULTA: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_NOSSO_NUM_INI: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_NOSSO_NUM_FIM: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_NOSSO_NUM_PROX: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_MODALIDADE: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_LAYOUT_IMPRESSAO: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT_NUM_COPIAS: TcxGridDBBandedColumn;
    dtEditCNPJ: TIBStringField;
    dtEditCONTA: TIntegerField;
    dtEditCODIGO: TIBStringField;
    dtEditCONTAPAI: TIBStringField;
    dtEditNOME: TIBStringField;
    dtEditBANCO: TIBStringField;
    dtEditULTIMO_CHEQUE: TIntegerField;
    dtEditTIPO: TIBStringField;
    dtEditAGENCIA: TIBStringField;
    dtEditDV_AGENCIA: TIBStringField;
    dtEditCONTA_CORRENTE: TIBStringField;
    dtEditDV_CONTA_CORRENTE: TIBStringField;
    dtEditDV_AGENCIA_CONTA: TIBStringField;
    dtEditCTB_FLUXO_CAIXA: TIBStringField;
    dtEditGERA_BOLETOS: TIBStringField;
    dtEditBLT_INSTRUCAO: TMemoField;
    dtEditBLT_LOCAL_PAGTO: TIBStringField;
    dtEditBLT_COD_CEDENTE: TIntegerField;
    dtEditBLT_DIG_COD_CEDENTE: TIBStringField;
    dtEditBLT_AGENCIA: TIBStringField;
    dtEditBLT_DIG_AGENCIA: TIBStringField;
    dtEditBLT_CONVENIO: TIntegerField;
    dtEditBLT_CONTA: TIBStringField;
    dtEditBLT_DIG_CONTA: TIBStringField;
    dtEditBLT_CARTEIRA: TIBStringField;
    dtEditBLT_LAYOUT: TSmallintField;
    dtEditBLT_ACEITE_DOCTO: TIBStringField;
    dtEditBLT_DIAS_ABATIMENTO: TIBStringField;
    dtEditBLT_DIAS_DESCONTO: TIntegerField;
    dtEditBLT_DIAS_MORA_JUROS: TIntegerField;
    dtEditBLT_DIAS_PROTESTO: TIntegerField;
    dtEditBLT_PCT_ABATIMENTO: TFloatField;
    dtEditBLT_PCT_DESCONTO: TFloatField;
    dtEditDESP_BANCARIA: TFloatField;
    dtEditMORA_DIARIA: TFloatField;
    dtEditBLT_VLR_IOF: TFloatField;
    dtEditBLT_VLR_OUTRAS_DESP: TFloatField;
    dtEditBLT_DIR_REMESSA: TIBStringField;
    dtEditBLT_DIR_RETORNO: TIBStringField;
    dtEditBLT_MULTA: TFloatField;
    dtEditBLT_NOSSO_NUM_INI: TIntegerField;
    dtEditBLT_NOSSO_NUM_FIM: TIntegerField;
    dtEditBLT_NOSSO_NUM_PROX: TIntegerField;
    dtEditBLT_MODALIDADE: TIBStringField;
    dtEditBLT_LAYOUT_IMPRESSAO: TIBStringField;
    dtEditBLT_NUM_COPIAS: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadContaCorrente: TfrmCadContaCorrente;

implementation

{$R *.dfm}

end.
