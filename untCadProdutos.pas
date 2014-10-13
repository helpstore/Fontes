unit untCadProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untCadPadraoMaster, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinsdxBarPainter, dxmdaset, cxIntlBase, cxintl, cxPropertiesStore,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxBarDBNav, ImgList, ActnList,
  dxBar, cxClasses, IBQuery, IBCustomDataSet, cxLabel, cxTextEdit,
  cxDBEdit, ExtCtrls, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxPC, cxCheckBox;

type
  TfrmCadProdutos = class(TfrmCadPadraoMaster)
    dtListCOMPLEMENTO: TIBStringField;
    dtListCOD_TECNICO: TIntegerField;
    dtListCNPJ: TIBStringField;
    dtListCODIGO: TIBStringField;
    dtListCOD_GETIN: TIBStringField;
    dtListCODIGO_2: TIBStringField;
    dtListNOME: TIBStringField;
    dtListMARCA: TIntegerField;
    dtListMODELO: TIntegerField;
    dtListGRUPO: TIntegerField;
    dtListSUBGRUPO: TIntegerField;
    dtListREDUCAO: TIntegerField;
    dtListUNIDADE: TIBStringField;
    dtListCTE: TIntegerField;
    dtListCTIE: TIntegerField;
    dtListQTDADE_1: TFloatField;
    dtListQTDADE_2: TFloatField;
    dtListQNTDE_MINIMA_VENDA: TFloatField;
    dtListLOCALIZACAO_1: TIBStringField;
    dtListLOCALIZACAO_2: TIBStringField;
    dtListLOCALIZACAO_3: TIBStringField;
    dtListNEG_QTDADE_2: TIBStringField;
    dtListQTDADE_MIN: TIntegerField;
    dtListQTDADE_MAX: TIntegerField;
    dtListCOMPLEMENTO_NF: TIBStringField;
    dtListDT_ULT_COMPRA: TDateField;
    dtListQT_ULT_COMPRA: TIntegerField;
    dtListDT_ULT_VENDA: TDateField;
    dtListPRC_VENDA: TFloatField;
    dtListTRIB_PIS: TIBStringField;
    dtListTRIB_COFINS: TIBStringField;
    dtListTRIB_IPI: TIBStringField;
    dtListPESO_LIQ: TFloatField;
    dtListPERC_FRETE: TFloatField;
    dtListCSOSN: TIntegerField;
    dtListIPI: TFloatField;
    dtListVOLUME: TFloatField;
    dtListPROD_PESAVEL: TIBStringField;
    dtListETIQUETA_ENT: TIBStringField;
    dtListATIVO: TIBStringField;
    dtListSUBUNIDADE: TIntegerField;
    dtListCODIGO_NCM: TIBStringField;
    dtListNOME_MODELO: TIBStringField;
    dtListVENDE_FRACIONADO: TIBStringField;
    dtListPOSSUI_LOTE: TIBStringField;
    dtListQNTDE_PEDIDA: TFloatField;
    dtListPREVISAO_ENTREGA: TDateField;
    dtListQNTDE_MAXIMA_VENDA: TFloatField;
    dtListPIS: TIBStringField;
    dtListCOFINS: TIBStringField;
    dtListSERVICO: TIBStringField;
    dtListVALIDADE: TIntegerField;
    dtListSECAO: TIntegerField;
    dtListCOMPROMETIDO: TIBBCDField;
    dtListEST_MIN: TIBBCDField;
    dtListEST_MAX: TIBBCDField;
    dtListSERIE: TIBStringField;
    dtListDEBITA_ICMS: TIBStringField;
    dtListTRIB_ALIQ_EST: TIBBCDField;
    dtListTRIB_ALIQ_INT: TIBBCDField;
    dtListTRIB_MODALIDADE: TIBStringField;
    dtListCOR: TIntegerField;
    dtListMATERIAL: TIntegerField;
    dtListCOD_LOCALIZACAO_1: TIntegerField;
    dtListCOD_LOCALIZACAO_2: TIntegerField;
    dtListCOD_LOCALIZACAO_3: TIntegerField;
    dtListNOME_GRUPO: TIBStringField;
    dtListNOME_SUBGRUPO: TIBStringField;
    dtListNOME_SECAO: TIBStringField;
    dtListNOME_MODELO1: TIBStringField;
    dtListNOME_MARCA1: TIBStringField;
    dtListNOME_MATERIAL: TIBStringField;
    dtListNOME_UNIDADE: TIBStringField;
    dtListNOME_COR: TIBStringField;
    dtListNOME_LOC_1: TIBStringField;
    dtListNOME_LOC_2: TIBStringField;
    dtListNOME_LOC_3: TIBStringField;
    dtListALIQUOTA_ECF: TIBStringField;
    dtListNOME_MARCA: TIBStringField;
    TVRegistroCOMPLEMENTO: TcxGridDBBandedColumn;
    TVRegistroCOD_TECNICO: TcxGridDBBandedColumn;
    TVRegistroCNPJ: TcxGridDBBandedColumn;
    TVRegistroCODIGO: TcxGridDBBandedColumn;
    TVRegistroCOD_GETIN: TcxGridDBBandedColumn;
    TVRegistroCODIGO_2: TcxGridDBBandedColumn;
    TVRegistroNOME: TcxGridDBBandedColumn;
    TVRegistroMARCA: TcxGridDBBandedColumn;
    TVRegistroMODELO: TcxGridDBBandedColumn;
    TVRegistroGRUPO: TcxGridDBBandedColumn;
    TVRegistroSUBGRUPO: TcxGridDBBandedColumn;
    TVRegistroREDUCAO: TcxGridDBBandedColumn;
    TVRegistroUNIDADE: TcxGridDBBandedColumn;
    TVRegistroCTE: TcxGridDBBandedColumn;
    TVRegistroCTIE: TcxGridDBBandedColumn;
    TVRegistroQTDADE_1: TcxGridDBBandedColumn;
    TVRegistroQTDADE_2: TcxGridDBBandedColumn;
    TVRegistroQNTDE_MINIMA_VENDA: TcxGridDBBandedColumn;
    TVRegistroLOCALIZACAO_1: TcxGridDBBandedColumn;
    TVRegistroLOCALIZACAO_2: TcxGridDBBandedColumn;
    TVRegistroLOCALIZACAO_3: TcxGridDBBandedColumn;
    TVRegistroNEG_QTDADE_2: TcxGridDBBandedColumn;
    TVRegistroQTDADE_MIN: TcxGridDBBandedColumn;
    TVRegistroQTDADE_MAX: TcxGridDBBandedColumn;
    TVRegistroCOMPLEMENTO_NF: TcxGridDBBandedColumn;
    TVRegistroDT_ULT_COMPRA: TcxGridDBBandedColumn;
    TVRegistroQT_ULT_COMPRA: TcxGridDBBandedColumn;
    TVRegistroDT_ULT_VENDA: TcxGridDBBandedColumn;
    TVRegistroPRC_VENDA: TcxGridDBBandedColumn;
    TVRegistroTRIB_PIS: TcxGridDBBandedColumn;
    TVRegistroTRIB_COFINS: TcxGridDBBandedColumn;
    TVRegistroTRIB_IPI: TcxGridDBBandedColumn;
    TVRegistroPESO_LIQ: TcxGridDBBandedColumn;
    TVRegistroPERC_FRETE: TcxGridDBBandedColumn;
    TVRegistroCSOSN: TcxGridDBBandedColumn;
    TVRegistroIPI: TcxGridDBBandedColumn;
    TVRegistroVOLUME: TcxGridDBBandedColumn;
    TVRegistroPROD_PESAVEL: TcxGridDBBandedColumn;
    TVRegistroETIQUETA_ENT: TcxGridDBBandedColumn;
    TVRegistroATIVO: TcxGridDBBandedColumn;
    TVRegistroSUBUNIDADE: TcxGridDBBandedColumn;
    TVRegistroCODIGO_NCM: TcxGridDBBandedColumn;
    TVRegistroNOME_MODELO: TcxGridDBBandedColumn;
    TVRegistroVENDE_FRACIONADO: TcxGridDBBandedColumn;
    TVRegistroPOSSUI_LOTE: TcxGridDBBandedColumn;
    TVRegistroQNTDE_PEDIDA: TcxGridDBBandedColumn;
    TVRegistroPREVISAO_ENTREGA: TcxGridDBBandedColumn;
    TVRegistroQNTDE_MAXIMA_VENDA: TcxGridDBBandedColumn;
    TVRegistroPIS: TcxGridDBBandedColumn;
    TVRegistroCOFINS: TcxGridDBBandedColumn;
    TVRegistroSERVICO: TcxGridDBBandedColumn;
    TVRegistroVALIDADE: TcxGridDBBandedColumn;
    TVRegistroSECAO: TcxGridDBBandedColumn;
    TVRegistroCOMPROMETIDO: TcxGridDBBandedColumn;
    TVRegistroEST_MIN: TcxGridDBBandedColumn;
    TVRegistroEST_MAX: TcxGridDBBandedColumn;
    TVRegistroSERIE: TcxGridDBBandedColumn;
    TVRegistroDEBITA_ICMS: TcxGridDBBandedColumn;
    TVRegistroTRIB_ALIQ_EST: TcxGridDBBandedColumn;
    TVRegistroTRIB_ALIQ_INT: TcxGridDBBandedColumn;
    TVRegistroTRIB_MODALIDADE: TcxGridDBBandedColumn;
    TVRegistroCOR: TcxGridDBBandedColumn;
    TVRegistroMATERIAL: TcxGridDBBandedColumn;
    TVRegistroCOD_LOCALIZACAO_1: TcxGridDBBandedColumn;
    TVRegistroCOD_LOCALIZACAO_2: TcxGridDBBandedColumn;
    TVRegistroCOD_LOCALIZACAO_3: TcxGridDBBandedColumn;
    TVRegistroNOME_GRUPO: TcxGridDBBandedColumn;
    TVRegistroNOME_SUBGRUPO: TcxGridDBBandedColumn;
    TVRegistroNOME_SECAO: TcxGridDBBandedColumn;
    TVRegistroNOME_MODELO1: TcxGridDBBandedColumn;
    TVRegistroNOME_MARCA1: TcxGridDBBandedColumn;
    TVRegistroNOME_MATERIAL: TcxGridDBBandedColumn;
    TVRegistroNOME_UNIDADE: TcxGridDBBandedColumn;
    TVRegistroNOME_COR: TcxGridDBBandedColumn;
    TVRegistroNOME_LOC_1: TcxGridDBBandedColumn;
    TVRegistroNOME_LOC_2: TcxGridDBBandedColumn;
    TVRegistroNOME_LOC_3: TcxGridDBBandedColumn;
    TVRegistroALIQUOTA_ECF: TcxGridDBBandedColumn;
    TVRegistroNOME_MARCA: TcxGridDBBandedColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadProdutos: TfrmCadProdutos;

implementation

{$R *.dfm}

end.
