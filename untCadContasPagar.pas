unit untCadContasPagar;

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
  dxSkinsdxBarPainter, cxIntlBase, cxintl, cxPropertiesStore, ACBrBase,
  ACBrEnterTab, cxGridCustomPopupMenu, cxGridPopupMenu, dxBarDBNav,
  ImgList, ActnList, dxBar, cxClasses, IBQuery, IBCustomDataSet, cxLabel,
  cxTextEdit, cxDBEdit, ExtCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxPC;

type
  TfrmCadContasPagar = class(TfrmCadPadrao)
    dtListCNPJ: TIBStringField;
    dtListCODIGO_VN: TIntegerField;
    dtListCODIGO: TIntegerField;
    dtListANO: TSmallintField;
    dtListPESSOA_FJ: TIntegerField;
    dtListDT_EMISSAO: TDateTimeField;
    dtListDT_VENCTO: TDateTimeField;
    dtListDT_LANCTO: TDateTimeField;
    dtListDOCTO: TIBStringField;
    dtListPARCELA: TIBStringField;
    dtListHISTORICO: TIBStringField;
    dtListVALOR: TFloatField;
    dtListVLR_PARCIAL: TFloatField;
    dtListJUROS_PAG: TFloatField;
    dtListDESCONTOS: TFloatField;
    dtListBOLETO: TIBStringField;
    dtListORIGEM: TIBStringField;
    dtListCODIGO_ENT: TIntegerField;
    dtListANO_ENT: TSmallintField;
    dtListAVISO: TIntegerField;
    dtListDT_AVISO: TDateTimeField;
    dtListSELECIONADO: TIBStringField;
    dtListCENTRO_CUSTO: TIntegerField;
    dtListNOME: TIBStringField;
    dtListDUPLICATA: TIBStringField;
    dtListCONFERIDA: TIBStringField;
    dtListTOTAL_ENTRADA: TFloatField;
    dtListPLANILHA: TIntegerField;
    dtListFLUXO_CAIXA: TDateTimeField;
    dtListCONTABILIDADE: TIntegerField;
    dtListDT_ULTIMA_BAIXA: TDateTimeField;
    dtListTIPO_DOCTO: TIBStringField;
    dtListCOD_INDEXADOR: TIntegerField;
    dtListIDX_DATABASE: TDateField;
    dtListIDX_COTACAO: TFloatField;
    dtListIDX_QTDE: TFloatField;
    dtListVALOR_EXTENSO: TIBStringField;
    dtListCOD_CONFIG_TITULO: TIntegerField;
    dtListNOME_RAZAO: TIBStringField;
    dtListCOD_CONTRATO: TIntegerField;
    dtListCTR_DESCRICAO: TIBStringField;
    dtListCC_DESCRICAO: TIBStringField;
    dtListNOME_TIPO_DOCTO: TIBStringField;
    GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn;
    GridDBBandedTableView2CODIGO_VN: TcxGridDBBandedColumn;
    GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn;
    GridDBBandedTableView2ANO: TcxGridDBBandedColumn;
    GridDBBandedTableView2PESSOA_FJ: TcxGridDBBandedColumn;
    GridDBBandedTableView2DT_EMISSAO: TcxGridDBBandedColumn;
    GridDBBandedTableView2DT_VENCTO: TcxGridDBBandedColumn;
    GridDBBandedTableView2DT_LANCTO: TcxGridDBBandedColumn;
    GridDBBandedTableView2DOCTO: TcxGridDBBandedColumn;
    GridDBBandedTableView2PARCELA: TcxGridDBBandedColumn;
    GridDBBandedTableView2HISTORICO: TcxGridDBBandedColumn;
    GridDBBandedTableView2VALOR: TcxGridDBBandedColumn;
    GridDBBandedTableView2VLR_PARCIAL: TcxGridDBBandedColumn;
    GridDBBandedTableView2JUROS_PAG: TcxGridDBBandedColumn;
    GridDBBandedTableView2DESCONTOS: TcxGridDBBandedColumn;
    GridDBBandedTableView2BOLETO: TcxGridDBBandedColumn;
    GridDBBandedTableView2ORIGEM: TcxGridDBBandedColumn;
    GridDBBandedTableView2CODIGO_ENT: TcxGridDBBandedColumn;
    GridDBBandedTableView2ANO_ENT: TcxGridDBBandedColumn;
    GridDBBandedTableView2AVISO: TcxGridDBBandedColumn;
    GridDBBandedTableView2DT_AVISO: TcxGridDBBandedColumn;
    GridDBBandedTableView2SELECIONADO: TcxGridDBBandedColumn;
    GridDBBandedTableView2CENTRO_CUSTO: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME: TcxGridDBBandedColumn;
    GridDBBandedTableView2DUPLICATA: TcxGridDBBandedColumn;
    GridDBBandedTableView2CONFERIDA: TcxGridDBBandedColumn;
    GridDBBandedTableView2TOTAL_ENTRADA: TcxGridDBBandedColumn;
    GridDBBandedTableView2PLANILHA: TcxGridDBBandedColumn;
    GridDBBandedTableView2FLUXO_CAIXA: TcxGridDBBandedColumn;
    GridDBBandedTableView2CONTABILIDADE: TcxGridDBBandedColumn;
    GridDBBandedTableView2DT_ULTIMA_BAIXA: TcxGridDBBandedColumn;
    GridDBBandedTableView2TIPO_DOCTO: TcxGridDBBandedColumn;
    GridDBBandedTableView2COD_INDEXADOR: TcxGridDBBandedColumn;
    GridDBBandedTableView2IDX_DATABASE: TcxGridDBBandedColumn;
    GridDBBandedTableView2IDX_COTACAO: TcxGridDBBandedColumn;
    GridDBBandedTableView2IDX_QTDE: TcxGridDBBandedColumn;
    GridDBBandedTableView2VALOR_EXTENSO: TcxGridDBBandedColumn;
    GridDBBandedTableView2COD_CONFIG_TITULO: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME_RAZAO: TcxGridDBBandedColumn;
    GridDBBandedTableView2COD_CONTRATO: TcxGridDBBandedColumn;
    GridDBBandedTableView2CTR_DESCRICAO: TcxGridDBBandedColumn;
    GridDBBandedTableView2CC_DESCRICAO: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME_TIPO_DOCTO: TcxGridDBBandedColumn;
    Contas_Pagar: TIBDataSet;
    Contas_PagarCNPJ: TIBStringField;
    Contas_PagarCODIGO_VN: TIntegerField;
    Contas_PagarCODIGO: TIntegerField;
    Contas_PagarANO: TSmallintField;
    Contas_PagarPESSOA_FJ: TIntegerField;
    Contas_PagarDT_EMISSAO: TDateTimeField;
    Contas_PagarDT_VENCTO: TDateTimeField;
    Contas_PagarDT_LANCTO: TDateTimeField;
    Contas_PagarDOCTO: TIBStringField;
    Contas_PagarPARCELA: TIBStringField;
    Contas_PagarHISTORICO: TIBStringField;
    Contas_PagarVALOR: TFloatField;
    Contas_PagarVLR_PARCIAL: TFloatField;
    Contas_PagarJUROS_PAG: TFloatField;
    Contas_PagarDESCONTOS: TFloatField;
    Contas_PagarBOLETO: TIBStringField;
    Contas_PagarORIGEM: TIBStringField;
    Contas_PagarCODIGO_ENT: TIntegerField;
    Contas_PagarANO_ENT: TSmallintField;
    Contas_PagarAVISO: TIntegerField;
    Contas_PagarDT_AVISO: TDateTimeField;
    Contas_PagarSELECIONADO: TIBStringField;
    Contas_PagarCENTRO_CUSTO: TIntegerField;
    Contas_PagarNOME: TIBStringField;
    Contas_PagarDUPLICATA: TIBStringField;
    Contas_PagarCONFERIDA: TIBStringField;
    Contas_PagarTOTAL_ENTRADA: TFloatField;
    Contas_PagarPLANILHA: TIntegerField;
    Contas_PagarFLUXO_CAIXA: TDateTimeField;
    Contas_PagarCONTABILIDADE: TIntegerField;
    Contas_PagarDT_ULTIMA_BAIXA: TDateTimeField;
    Contas_PagarTIPO_DOCTO: TIBStringField;
    Contas_PagarCOD_INDEXADOR: TIntegerField;
    Contas_PagarIDX_DATABASE: TDateField;
    Contas_PagarIDX_COTACAO: TFloatField;
    Contas_PagarIDX_QTDE: TFloatField;
    Contas_PagarCOD_CONFIG_TITULO: TIntegerField;
    Contas_PagarTotal: TFloatField;
    Contas_Pagar_Total_Geral_IDX: TFloatField;
    Contas_PagarNOME_RAZAO: TIBStringField;
    Contas_PagarVALOR_EXTENSO: TIBStringField;
    Contas_PagarCTR_DESCRICAO: TIBStringField;
    Contas_PagarCOD_CONTRATO: TIntegerField;
    Contas_PagarCC_DESCRICAO: TIBStringField;
    Contas_PagarNOME_TIPO_DOCTO: TIBStringField;
    dtListTotal: TFloatField;
    dtList_Total_Geral_IDX: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadContasPagar: TfrmCadContasPagar;

implementation

{$R *.dfm}

end.
