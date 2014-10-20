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
  cxPC, cxCheckBox, cxImage, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Menus, StdCtrls, cxButtons;

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
    dtEditCNPJ: TIBStringField;
    dtEditCODIGO: TIBStringField;
    dtEditCODIGO_2: TIBStringField;
    dtEditCNPJ_AGRUP: TIBStringField;
    dtEditCOD_AGRUP: TIBStringField;
    dtEditNOME: TIBStringField;
    dtEditMARCA: TIntegerField;
    dtEditNOME_MARCA: TIBStringField;
    dtEditGRUPO: TIntegerField;
    dtEditSUBGRUPO: TIntegerField;
    dtEditREDUCAO: TIntegerField;
    dtEditUNIDADE: TIBStringField;
    dtEditUND_PRIMARIA: TIBStringField;
    dtEditCTE: TSmallintField;
    dtEditCTIE: TSmallintField;
    dtEditQTDADE_1: TFloatField;
    dtEditQTDADE_2: TFloatField;
    dtEditLOCALIZACAO_1: TIBStringField;
    dtEditLOCALIZACAO_2: TIBStringField;
    dtEditLOCALIZACAO_3: TIBStringField;
    dtEditNEG_QTDADE_2: TIBStringField;
    dtEditQTDADE_MIN: TIntegerField;
    dtEditQTDADE_MAX: TIntegerField;
    dtEditCOMPLEMENTO_NF: TIBStringField;
    dtEditDT_ULT_COMPRA: TDateTimeField;
    dtEditQT_ULT_COMPRA: TIntegerField;
    dtEditDT_ULT_VENDA: TDateTimeField;
    dtEditMARGEM_BRUTA: TFloatField;
    dtEditPRC_REPOS: TFloatField;
    dtEditPRC_CUSTO_ANT: TFloatField;
    dtEditPRC_CUSTO_MED: TFloatField;
    dtEditPRC_VENDA: TFloatField;
    dtEditPRC_VENDA_ANT: TFloatField;
    dtEditPRC_VENDA_MED: TFloatField;
    dtEditALIQUOTA_ECF: TIBStringField;
    dtEditORIGEM: TSmallintField;
    dtEditPESO_LIQ: TFloatField;
    dtEditPERC_FRETE: TFloatField;
    dtEditIPI: TFloatField;
    dtEditVOLUME: TFloatField;
    dtEditPROD_PESAVEL: TIBStringField;
    dtEditETIQUETA_ENT: TIBStringField;
    dtEditATIVO: TIBStringField;
    dtEditULTIMO_FORNECEDOR: TIntegerField;
    dtEditFORNECEDOR: TIntegerField;
    dtEditSUBUNIDADE: TIntegerField;
    dtEditPRC_CUSTO_CODIF: TIBStringField;
    dtEditCODIGO_INTERNO: TIntegerField;
    dtEditDT_ULT_ATU_PRECO: TDateTimeField;
    dtEditCUSTO_AQUISICAO: TFloatField;
    dtEditVENDE_FRACIONADO: TIBStringField;
    dtEditQNTDE_EXPOSTA: TFloatField;
    dtEditPOSSUI_LOTE: TIBStringField;
    dtEditQNTDE_MAXIMA_VENDA: TFloatField;
    dtEditPIS: TIBStringField;
    dtEditCOFINS: TIBStringField;
    dtEditCOM_VENDA_VLR: TFloatField;
    dtEditCOM_VENDA_PCT: TFloatField;
    dtEditPARTICIP_LUCRO: TFloatField;
    dtEditNAO_COBR_JUR_ATE: TIntegerField;
    dtEditPREVISAO_ENTREGA: TDateTimeField;
    dtEditQNTDE_PEDIDA: TFloatField;
    dtEditATUALIZA_ARQ_EXTERNO: TIBStringField;
    dtEditSERVICO: TIBStringField;
    dtEditVALIDADE: TIntegerField;
    dtEditCUSTO_INDEXADO: TFloatField;
    dtEditCOMPLEMENTO: TIBStringField;
    dtEditATUALIZAR: TIBStringField;
    dtEditEST_MIN: TFloatField;
    dtEditEST_MAX: TFloatField;
    dtEditMODELO: TIntegerField;
    dtEditNOME_MODELO: TIBStringField;
    dtEditSERIE: TIBStringField;
    dtEditDEBITA_ICMS: TIBStringField;
    dtEditSECAO: TIntegerField;
    dtEditNFE_EXP: TIBStringField;
    dtEditSELECIONADO: TIBStringField;
    dtEditQNTDE_MINIMA_VENDA: TFloatField;
    dtEditVALIDA_MULT_QTDE_MIN: TIBStringField;
    dtEditFATOR_CONVERSAO: TFloatField;
    dtEditSINCRONIZA_FILIAIS: TIBStringField;
    dtEditQNTDE_PDR_CARGA: TFloatField;
    dtEditUND_CARREGAMENTO: TIBStringField;
    dtEditTRIB_ALIQ_EST: TFloatField;
    dtEditTRIB_ALIQ_INT: TFloatField;
    dtEditTRIB_MODALIDADE: TIBStringField;
    dtEditBCH_CODIGO: TIntegerField;
    dtEditCODIGO_NCM: TIBStringField;
    dtEditAPLICACAO: TMemoField;
    dtEditIMG_2: TBlobField;
    dtEditIMG_1: TBlobField;
    dtEditIMG_3: TBlobField;
    dtEditIMG_4: TBlobField;
    dtEditCODIGO_FABRICANTE: TIBStringField;
    dtEditCOR: TIntegerField;
    dtEditMATERIAL: TIntegerField;
    dtEditTRIB_PIS: TIBStringField;
    dtEditTRIB_COFINS: TIBStringField;
    dtEditTRIB_IPI: TIBStringField;
    dtEditVENCTO_PRC_VENDA: TDateField;
    dtEditCSOSN: TIntegerField;
    dtEditCOD_GETIN: TIBStringField;
    dtEditCOD_LOCALIZACAO_1: TIntegerField;
    dtEditCOD_LOCALIZACAO_2: TIntegerField;
    dtEditCOD_LOCALIZACAO_3: TIntegerField;
    dtEditCOD_TECNICO: TIntegerField;
    edtSerie: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    img1: TcxDBImage;
    img2: TcxDBImage;
    img4: TcxDBImage;
    img3: TcxDBImage;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel12: TcxLabel;
    aTFrmCadGrupos: TcxDBLookupComboBox;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    QryGrupo: TIBQuery;
    DsGrupo: TDataSource;
    DsSubGrupo: TDataSource;
    QrySubGrupo: TIBQuery;
    QryGrupoCNPJ: TIBStringField;
    QryGrupoCODIGO: TIntegerField;
    QryGrupoNOME: TIBStringField;
    QryGrupoBASE: TSmallintField;
    QryGrupoMINIMO: TSmallintField;
    QryGrupoMAXIMO: TSmallintField;
    QrySubGrupoCNPJ: TIBStringField;
    QrySubGrupoGRUPO: TIntegerField;
    QrySubGrupoSUBGRUPO: TIntegerField;
    QrySubGrupoNOME: TIBStringField;
    QrySubGrupoDESCONTO_MAX: TFloatField;
    QrySubGrupoDIGITA_PRC: TIBStringField;
    QrySubGrupoCOMPRAS_C: TIntegerField;
    QrySubGrupoCOMPRAS_D: TIntegerField;
    QrySubGrupoTRANSFERENCIA_C: TIntegerField;
    QrySubGrupoTRANSFERENCIA_D: TIntegerField;
    QrySubGrupoVENDAS_C: TIntegerField;
    QrySubGrupoVENDAS_D: TIntegerField;
    QrySubGrupoESTOQUE: TIntegerField;
    QrySubGrupoESTOQUE_INI: TIntegerField;
    QrySubGrupoESTOQUE_FIM: TIntegerField;
    QrySubGrupoOBS: TMemoField;
    BtnGrupos: TcxButton;
    cxLabel15: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    QrySecao: TIBQuery;
    DsSecao: TDataSource;
    QrySecaoCNPJ: TIBStringField;
    QrySecaoCOD_SECAO: TIntegerField;
    QrySecaoNOME: TIBStringField;
    cxLabel16: TcxLabel;
    cxDBLookupComboBox3: TcxDBLookupComboBox;
    QryModelo: TIBQuery;
    DsModelo: TDataSource;
    QryModeloCNPJ: TIBStringField;
    QryModeloCODIGO: TIntegerField;
    QryModeloNOME: TIBStringField;
    cxLabel17: TcxLabel;
    cxDBLookupComboBox4: TcxDBLookupComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    QryMarca: TIBQuery;
    DsMarca: TDataSource;
    QryMarcaCNPJ: TIBStringField;
    QryMarcaCODIGO: TIntegerField;
    QryMarcaNOME: TIBStringField;
    cxLabel18: TcxLabel;
    cxDBLookupComboBox5: TcxDBLookupComboBox;
    DsMaterial: TDataSource;
    QryMaterial: TIBQuery;
    QryMaterialCNPJ: TIBStringField;
    QryMaterialCODIGO: TIntegerField;
    QryMaterialNOME: TIBStringField;
    cxButton4: TcxButton;
    cxLabel19: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel20: TcxLabel;
    cxDBLookupComboBox6: TcxDBLookupComboBox;
    cxButton5: TcxButton;
    QryUnidade: TIBQuery;
    DsUnidade: TDataSource;
    QryUnidadeCNPJ: TIBStringField;
    QryUnidadeSIGLA: TIBStringField;
    QryUnidadeNOME: TIBStringField;
    QryUnidadeUNIDADES: TFloatField;
    cxLabel21: TcxLabel;
    cxDBLookupComboBox7: TcxDBLookupComboBox;
    cxButton6: TcxButton;
    QryCor: TIBQuery;
    DsCor: TDataSource;
    QryCorCNPJ: TIBStringField;
    QryCorCODIGO: TIntegerField;
    QryCorNOME: TIBStringField;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel22: TcxLabel;
    procedure ActCadLookupExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadProdutos: TfrmCadProdutos;

implementation

{$R *.dfm}

procedure TfrmCadProdutos.ActCadLookupExecute(Sender: TObject);
begin
  inherited;
  if aTFrmCadGrupos.Focused then
    BtnGrupos.OnClick(self);
end;

end.
