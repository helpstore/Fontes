unit untCadOS;

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
  dxSkinsdxBarPainter, cxIntlBase, cxintl, cxPropertiesStore,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxBarDBNav, ImgList, ActnList,
  dxBar, cxClasses, IBQuery, IBCustomDataSet, cxLabel, cxTextEdit,
  cxDBEdit, cxGridDBTableView, ExtCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxPC, Menus, StdCtrls, cxButtons,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCalendar, cxSpinEdit, cxTimeEdit,
   cxGroupBox, cxMemo, cxCheckBox, cxCalc, dxmdaset, cxRadioGroup,DateUtils,
  Grids, DBGrids, cxProgressBar;

type
  TfrmCadOS = class(TfrmCadPadraoMaster)
    dtListST_CODIGO: TIntegerField;
    dtListOFC_HR_ATRIBUICAO: TTimeField;
    dtListOFC_HR_ENTRADA: TTimeField;
    dtListOFC_CODIGO: TIntegerField;
    dtListOFC_DATA: TDateTimeField;
    dtListOFC_DT_ENTRADA: TDateTimeField;
    dtListOFC_DT_ATRIBUICAO: TDateTimeField;
    dtListOFC_HR_FECHAMENTO: TTimeField;
    dtListOFC_DATA_FECHAMENTO: TDateTimeField;
    dtListOFC_TOTAL: TFloatField;
    dtListOFC_SOLICITANTE: TIBStringField;
    dtListOFC_VENDA: TIntegerField;
    dtListOFC_KM_RODADO: TFloatField;
    dtListOFC_HORAS_TRABALHADAS: TFloatField;
    dtListMEC_CODIGO: TIntegerField;
    dtListMEC_NOME: TIBStringField;
    dtListDEF_CODIGO: TIntegerField;
    dtListDEF_NOME: TIBStringField;
    dtListMTC_CODIGO: TIntegerField;
    dtListMTC_NOME: TIBStringField;
    dtListTPA_CODIGO: TIntegerField;
    dtListTPA_NOME: TIBStringField;
    dtListST_COR: TIntegerField;
    dtListST_NOME: TIBStringField;
    dtListCLI_CODIGO: TIntegerField;
    dtListCLI_NOME_RAZAO: TIBStringField;
    dtListREG_CODIGO: TIntegerField;
    dtListREG_DESCRICAO: TIBStringField;
    dtListPRD_CODIGO: TIBStringField;
    dtListPRD_NOME: TIBStringField;
    dtListPRD_SERIE: TIBStringField;
    dtListMDL_CODIGO: TIntegerField;
    dtListMDL_NOME: TIBStringField;
    dtListCP_COD_CONTRATO: TIntegerField;
    dtListTPC_NOME: TIBStringField;
    dtListCIDADE: TIBStringField;
    dtListID_CONTRATO: TIntegerField;
    dtListCP_TEMPO_RESPOSTA: TIntegerField;
    dtListCUSTO_OS: TFloatField;
    dtListINFORMACOES: TBlobField;
    dtListOBS_FECHAMENTO: TBlobField;
    dtListVEICULO: TIBStringField;
    dtListPLACA: TIBStringField;
    dtListMAP_LAT: TIBStringField;
    dtListMAP_LONG: TIBStringField;
    dtListDT_CILINDRO: TDateTimeField;
    dtListCT_CILINDRO: TIntegerField;
    dtListULT_DT_CILINDRO: TDateField;
    dtListULT_CT_CILINDRO: TIntegerField;
    dtListCONTADOR_TOTAL: TFloatField;
    dtListCT_CILINDRO_SALDO_DIAS: TIntegerField;
    dtListCT_CILINDRO_SALDO_CONTADOR: TFloatField;
    dtListTEMPO_GASTO: TFloatField;
    TVRegistroST_CODIGO: TcxGridDBBandedColumn;
    TVRegistroOFC_HR_ATRIBUICAO: TcxGridDBBandedColumn;
    TVRegistroOFC_HR_ENTRADA: TcxGridDBBandedColumn;
    TVRegistroOFC_CODIGO: TcxGridDBBandedColumn;
    TVRegistroOFC_DATA: TcxGridDBBandedColumn;
    TVRegistroOFC_DT_ENTRADA: TcxGridDBBandedColumn;
    TVRegistroOFC_DT_ATRIBUICAO: TcxGridDBBandedColumn;
    TVRegistroOFC_HR_FECHAMENTO: TcxGridDBBandedColumn;
    TVRegistroOFC_DATA_FECHAMENTO: TcxGridDBBandedColumn;
    TVRegistroOFC_TOTAL: TcxGridDBBandedColumn;
    TVRegistroOFC_SOLICITANTE: TcxGridDBBandedColumn;
    TVRegistroOFC_VENDA: TcxGridDBBandedColumn;
    TVRegistroOFC_KM_RODADO: TcxGridDBBandedColumn;
    TVRegistroOFC_HORAS_TRABALHADAS: TcxGridDBBandedColumn;
    TVRegistroMEC_CODIGO: TcxGridDBBandedColumn;
    TVRegistroMEC_NOME: TcxGridDBBandedColumn;
    TVRegistroDEF_CODIGO: TcxGridDBBandedColumn;
    TVRegistroDEF_NOME: TcxGridDBBandedColumn;
    TVRegistroMTC_CODIGO: TcxGridDBBandedColumn;
    TVRegistroMTC_NOME: TcxGridDBBandedColumn;
    TVRegistroTPA_CODIGO: TcxGridDBBandedColumn;
    TVRegistroTPA_NOME: TcxGridDBBandedColumn;
    TVRegistroST_COR: TcxGridDBBandedColumn;
    TVRegistroST_NOME: TcxGridDBBandedColumn;
    TVRegistroCLI_CODIGO: TcxGridDBBandedColumn;
    TVRegistroCLI_NOME_RAZAO: TcxGridDBBandedColumn;
    TVRegistroREG_CODIGO: TcxGridDBBandedColumn;
    TVRegistroREG_DESCRICAO: TcxGridDBBandedColumn;
    TVRegistroPRD_CODIGO: TcxGridDBBandedColumn;
    TVRegistroPRD_NOME: TcxGridDBBandedColumn;
    TVRegistroPRD_SERIE: TcxGridDBBandedColumn;
    TVRegistroMDL_CODIGO: TcxGridDBBandedColumn;
    TVRegistroMDL_NOME: TcxGridDBBandedColumn;
    TVRegistroCP_COD_CONTRATO: TcxGridDBBandedColumn;
    TVRegistroTPC_NOME: TcxGridDBBandedColumn;
    TVRegistroCIDADE: TcxGridDBBandedColumn;
    TVRegistroID_CONTRATO: TcxGridDBBandedColumn;
    TVRegistroCP_TEMPO_RESPOSTA: TcxGridDBBandedColumn;
    TVRegistroCUSTO_OS: TcxGridDBBandedColumn;
    TVRegistroINFORMACOES: TcxGridDBBandedColumn;
    TVRegistroOBS_FECHAMENTO: TcxGridDBBandedColumn;
    TVRegistroVEICULO: TcxGridDBBandedColumn;
    TVRegistroPLACA: TcxGridDBBandedColumn;
    TVRegistroMAP_LAT: TcxGridDBBandedColumn;
    TVRegistroMAP_LONG: TcxGridDBBandedColumn;
    TVRegistroDT_CILINDRO: TcxGridDBBandedColumn;
    TVRegistroCT_CILINDRO: TcxGridDBBandedColumn;
    TVRegistroULT_DT_CILINDRO: TcxGridDBBandedColumn;
    TVRegistroULT_CT_CILINDRO: TcxGridDBBandedColumn;
    TVRegistroCONTADOR_TOTAL: TcxGridDBBandedColumn;
    TVRegistroCT_CILINDRO_SALDO_DIAS: TcxGridDBBandedColumn;
    TVRegistroCT_CILINDRO_SALDO_CONTADOR: TcxGridDBBandedColumn;
    TVRegistroTEMPO_GASTO: TcxGridDBBandedColumn;
    QryClientes: TIBQuery;
    QryClientesCODIGO: TIntegerField;
    QryClientesNOME_RAZAO: TIBStringField;
    QryClientesTECNICO: TIntegerField;
    QryClientesEMAIL: TIBStringField;
    QryClientesCIDADE: TIBStringField;
    dsClientes: TDataSource;
    aTfrmCadClientes: TcxDBLookupComboBox;
    btnCliente: TcxButton;
    aTfrmCadStatusServico: TcxDBLookupComboBox;
    btnStatus: TcxButton;
    btnTecnico: TcxButton;
    btnServicoExecutado: TcxButton;
    aTfrmCadServicoExecutado: TcxDBLookupComboBox;
    aTfrmCadTecnicos: TcxDBLookupComboBox;
    btnEquipamento: TcxButton;
    btnDefeitoReclamado: TcxButton;
    btnMotivo: TcxButton;
    aTfrmCadMotivoChamado: TcxDBLookupComboBox;
    edSolicitante: TcxDBTextEdit;
    cmbEquipamento: TcxDBLookupComboBox;
    aTfrmCadDefeitos: TcxDBLookupComboBox;
    cxLabel10: TcxLabel;
    edtSerie: TcxDBTextEdit;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    edDataAtribuicao: TcxDBDateEdit;
    edtHoraAtribuicao: TcxDBTimeEdit;
    cxLabel22: TcxLabel;
    cxLabel24: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxLabel23: TcxLabel;
    cxLabel25: TcxLabel;
    cxDBMemo1: TcxDBMemo;
    cxLabel20: TcxLabel;
    QryStatus: TIBQuery;
    QryStatusCNPJ: TIBStringField;
    QryStatusCODIGO: TIntegerField;
    QryStatusNOME: TIBStringField;
    QryStatusCOR: TIntegerField;
    QryStatusFECHADO: TIBStringField;
    QryStatusOS: TIBStringField;
    QryStatusMOVIMENTO: TIBStringField;
    QryStatusPADRAO_ENVIO: TIBStringField;
    QryStatusPADRAO_ABERTURA: TIBStringField;
    QryTecnico: TIBQuery;
    QryTecnicoCODIGO: TIntegerField;
    QryTecnicoNOME: TIBStringField;
    QryTecnicoEMAIL: TIBStringField;
    QryTecnicoASSINATURA: TMemoField;
    QryMotivoChamado: TIBQuery;
    QryMotivoChamadoCNPJ: TIBStringField;
    QryMotivoChamadoCODIGO: TIntegerField;
    QryMotivoChamadoNOME: TIBStringField;
    QryMotivoChamadoATIVO: TIBStringField;
    QryDefeito: TIBQuery;
    QryDefeitoCNPJ: TIBStringField;
    QryDefeitoCODIGO: TIntegerField;
    QryDefeitoNOME: TIBStringField;
    QryDefeitoATIVO: TIBStringField;
    QryServicoExecutado: TIBQuery;
    QryEquipCliente: TIBQuery;
    QryEquipClienteCODIGO_NOME: TIBStringField;
    QryEquipClienteCODIGO: TIBStringField;
    QryEquipClienteSERIE: TIBStringField;
    QryEquipClienteDT_FIM: TDateTimeField;
    QryEquipClienteCODIGO_CONTRATO: TIntegerField;
    QryEquipClienteATIVO: TIBStringField;
    QryEquipClienteINFORMACOES_ITENS: TMemoField;
    QryEquipClienteMODELO: TIBStringField;
    QryEquipClienteNOME: TIBStringField;
    QryEquipClienteATIVO2: TIBStringField;
    QryEquipClienteCOD_ITEM: TIntegerField;
    QryEquipClienteTIPO_CONTRATO: TIBStringField;
    dsEquipamento: TDataSource;
    dsStatus: TDataSource;
    dsTecnico: TDataSource;
    dsDefeitoReclamado: TDataSource;
    dsServicoExecutado: TDataSource;
    dsMotivoChamado: TDataSource;
    SelSeries: TIBQuery;
    SelSeriesCOD_CLIENTE: TIntegerField;
    SelSeriesNOME_RAZAO: TIBStringField;
    SelSeriesCOD_EQUIPAMENTO: TIBStringField;
    SelEndereco: TIBQuery;
    SelEnderecoMAP_LAT: TIBStringField;
    SelEnderecoMAP_LONG: TIBStringField;
    SelEnderecoLOGRADOURO: TIBStringField;
    SelEnderecoNUMERO: TIBStringField;
    SelEnderecoCIDADE: TIBStringField;
    SelEnderecoUF: TIBStringField;
    cxGroupBox3: TcxGroupBox;
    edtDataFechamento: TcxDBDateEdit;
    cxDBTimeEdit2: TcxDBTimeEdit;
    cxLabel21: TcxLabel;
    cxLabel26: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    EdtContadorTotal: TcxDBTextEdit;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel29: TcxLabel;
    cxDBMemo2: TcxDBMemo;
    cxDBCheckBox1: TcxDBCheckBox;
    dtListTROCA_CILINDRO: TIBStringField;
    TVRegistroTROCA_CILINDRO: TcxGridDBBandedColumn;
    cxDBTextEdit4: TcxDBTextEdit;
    Label10: TcxLabel;
    EdtKmFinal: TcxDBSpinEdit;
    Label9: TcxLabel;
    Label7: TcxLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    dtListDet1CNPJ: TIBStringField;
    dtListDet1CODIGO: TIntegerField;
    dtListDet1QUANTIDADE: TFloatField;
    dtListDet1UNITARIO: TFloatField;
    dtListDet1COD_PRODUTO: TIBStringField;
    dtListDet1CODIGO_TECNICO: TIntegerField;
    dtListDet1NOME_PRODUTO: TIBStringField;
    dtListDet1NOMETEC: TIBStringField;
    dtListDet1TIPO_SERVICO: TIBStringField;
    dtListDet1SELECIONADO: TIBStringField;
    dtEditDet1CNPJ: TIBStringField;
    dtEditDet1CODIGO: TIntegerField;
    dtEditDet1PRODUTO: TIBStringField;
    dtEditDet1SERVICO: TIntegerField;
    dtEditDet1NOME: TIBStringField;
    dtEditDet1QUANTIDADE: TFloatField;
    dtEditDet1UNITARIO: TFloatField;
    dtEditDet1SELECIONADO: TIBStringField;
    dtEditDet1CODIGO_TECNICO: TIntegerField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel11: TcxLabel;
    btnProduto: TcxButton;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxLabel30: TcxLabel;
    cxDBCalcEdit2: TcxDBCalcEdit;
    cxLabel31: TcxLabel;
    dtEditDet1Total: TFloatField;
    QryProdutosItens: TIBQuery;
    dsProdutosItens: TDataSource;
    QryProdutosItensCNPJ: TIBStringField;
    QryProdutosItensCODIGO: TIBStringField;
    QryProdutosItensCODIGO_2: TIBStringField;
    QryProdutosItensCNPJ_AGRUP: TIBStringField;
    QryProdutosItensCOD_AGRUP: TIBStringField;
    QryProdutosItensNOME: TIBStringField;
    QryProdutosItensMARCA: TIntegerField;
    QryProdutosItensNOME_MARCA: TIBStringField;
    QryProdutosItensGRUPO: TIntegerField;
    QryProdutosItensSUBGRUPO: TIntegerField;
    QryProdutosItensREDUCAO: TIntegerField;
    QryProdutosItensUNIDADE: TIBStringField;
    QryProdutosItensUND_PRIMARIA: TIBStringField;
    QryProdutosItensCTE: TSmallintField;
    QryProdutosItensCTIE: TSmallintField;
    QryProdutosItensQTDADE_1: TFloatField;
    QryProdutosItensQTDADE_2: TFloatField;
    QryProdutosItensLOCALIZACAO_1: TIBStringField;
    QryProdutosItensLOCALIZACAO_2: TIBStringField;
    QryProdutosItensLOCALIZACAO_3: TIBStringField;
    QryProdutosItensNEG_QTDADE_2: TIBStringField;
    QryProdutosItensQTDADE_MIN: TIntegerField;
    QryProdutosItensQTDADE_MAX: TIntegerField;
    QryProdutosItensCOMPLEMENTO_NF: TIBStringField;
    QryProdutosItensDT_ULT_COMPRA: TDateTimeField;
    QryProdutosItensQT_ULT_COMPRA: TIntegerField;
    QryProdutosItensDT_ULT_VENDA: TDateTimeField;
    QryProdutosItensMARGEM_BRUTA: TFloatField;
    QryProdutosItensPRC_REPOS: TFloatField;
    QryProdutosItensPRC_CUSTO_ANT: TFloatField;
    QryProdutosItensPRC_CUSTO_MED: TFloatField;
    QryProdutosItensPRC_VENDA: TFloatField;
    QryProdutosItensPRC_VENDA_ANT: TFloatField;
    QryProdutosItensPRC_VENDA_MED: TFloatField;
    QryProdutosItensALIQUOTA_ECF: TIBStringField;
    QryProdutosItensORIGEM: TSmallintField;
    QryProdutosItensPESO_LIQ: TFloatField;
    QryProdutosItensPERC_FRETE: TFloatField;
    QryProdutosItensIPI: TFloatField;
    QryProdutosItensVOLUME: TFloatField;
    QryProdutosItensPROD_PESAVEL: TIBStringField;
    QryProdutosItensETIQUETA_ENT: TIBStringField;
    QryProdutosItensATIVO: TIBStringField;
    QryProdutosItensULTIMO_FORNECEDOR: TIntegerField;
    QryProdutosItensFORNECEDOR: TIntegerField;
    QryProdutosItensSUBUNIDADE: TIntegerField;
    QryProdutosItensPRC_CUSTO_CODIF: TIBStringField;
    QryProdutosItensCODIGO_INTERNO: TIntegerField;
    QryProdutosItensDT_ULT_ATU_PRECO: TDateTimeField;
    QryProdutosItensCUSTO_AQUISICAO: TFloatField;
    QryProdutosItensVENDE_FRACIONADO: TIBStringField;
    QryProdutosItensQNTDE_EXPOSTA: TFloatField;
    QryProdutosItensPOSSUI_LOTE: TIBStringField;
    QryProdutosItensQNTDE_MAXIMA_VENDA: TFloatField;
    QryProdutosItensPIS: TIBStringField;
    QryProdutosItensCOFINS: TIBStringField;
    QryProdutosItensCOM_VENDA_VLR: TFloatField;
    QryProdutosItensCOM_VENDA_PCT: TFloatField;
    QryProdutosItensPARTICIP_LUCRO: TFloatField;
    QryProdutosItensNAO_COBR_JUR_ATE: TIntegerField;
    QryProdutosItensPREVISAO_ENTREGA: TDateTimeField;
    QryProdutosItensQNTDE_PEDIDA: TFloatField;
    QryProdutosItensATUALIZA_ARQ_EXTERNO: TIBStringField;
    QryProdutosItensSERVICO: TIBStringField;
    QryProdutosItensVALIDADE: TIntegerField;
    QryProdutosItensCUSTO_INDEXADO: TFloatField;
    QryProdutosItensCOMPLEMENTO: TIBStringField;
    QryProdutosItensATUALIZAR: TIBStringField;
    QryProdutosItensEST_MIN: TFloatField;
    QryProdutosItensEST_MAX: TFloatField;
    QryProdutosItensMODELO: TIntegerField;
    QryProdutosItensNOME_MODELO: TIBStringField;
    QryProdutosItensSERIE: TIBStringField;
    QryProdutosItensDEBITA_ICMS: TIBStringField;
    QryProdutosItensSECAO: TIntegerField;
    QryProdutosItensNFE_EXP: TIBStringField;
    QryProdutosItensSELECIONADO: TIBStringField;
    QryProdutosItensQNTDE_MINIMA_VENDA: TFloatField;
    QryProdutosItensVALIDA_MULT_QTDE_MIN: TIBStringField;
    QryProdutosItensFATOR_CONVERSAO: TFloatField;
    QryProdutosItensSINCRONIZA_FILIAIS: TIBStringField;
    QryProdutosItensQNTDE_PDR_CARGA: TFloatField;
    QryProdutosItensUND_CARREGAMENTO: TIBStringField;
    QryProdutosItensTRIB_ALIQ_EST: TFloatField;
    QryProdutosItensTRIB_ALIQ_INT: TFloatField;
    QryProdutosItensTRIB_MODALIDADE: TIBStringField;
    QryProdutosItensBCH_CODIGO: TIntegerField;
    QryProdutosItensCODIGO_NCM: TIBStringField;
    QryProdutosItensAPLICACAO: TMemoField;
    QryProdutosItensIMG_2: TBlobField;
    QryProdutosItensIMG_1: TBlobField;
    QryProdutosItensIMG_3: TBlobField;
    QryProdutosItensIMG_4: TBlobField;
    QryProdutosItensCODIGO_FABRICANTE: TIBStringField;
    QryProdutosItensCOR: TIntegerField;
    QryProdutosItensMATERIAL: TIntegerField;
    QryProdutosItensTRIB_PIS: TIBStringField;
    QryProdutosItensTRIB_COFINS: TIBStringField;
    QryProdutosItensTRIB_IPI: TIBStringField;
    QryProdutosItensVENCTO_PRC_VENDA: TDateField;
    QryProdutosItensCSOSN: TIntegerField;
    QryProdutosItensCOD_GETIN: TIBStringField;
    QryProdutosItensCOD_LOCALIZACAO_1: TIntegerField;
    QryProdutosItensCOD_LOCALIZACAO_2: TIntegerField;
    QryProdutosItensCOD_LOCALIZACAO_3: TIntegerField;
    QryProdutosItensCOD_TECNICO: TIntegerField;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    dtListTROCA_BELT: TIBStringField;
    dtListTROCA_FUSAO: TIBStringField;
    TVRegistroTROCA_BELT: TcxGridDBBandedColumn;
    TVRegistroTROCA_FUSAO: TcxGridDBBandedColumn;
    ActImprimirOS: TAction;
    BtnImprimirOS: TdxBarButton;
    mtbFiltroDATA_INICIAL: TDateField;
    mtbFiltroDATA_FINAL: TDateField;
    mtbFiltroCLIENTE: TIntegerField;
    mtbFiltroTIPO_STATUS: TIntegerField;
    edtInicial: TcxDBDateEdit;
    cxLabel33: TcxLabel;
    edtFinal: TcxDBDateEdit;
    cxLabel34: TcxLabel;
    bTfrmCadClientes: TcxDBLookupComboBox;
    cxLabel35: TcxLabel;
    QryClienteFiltro: TIBQuery;
    IntegerField1: TIntegerField;
    IBStringField1: TIBStringField;
    IntegerField2: TIntegerField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    cxDBRadioGroup1: TcxDBRadioGroup;
    mtbFiltroSERIE: TStringField;
    cxLabel36: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    dtListCNPJ: TIBStringField;
    dtEditCNPJ: TIBStringField;
    dtEditCODIGO: TIntegerField;
    dtEditDATA: TDateTimeField;
    dtEditPESSOA_FJ: TIntegerField;
    dtEditNOME: TIBStringField;
    dtEditNATUREZA: TIntegerField;
    dtEditMECANICO: TIntegerField;
    dtEditVIAJANTE: TIntegerField;
    dtEditENTRADA: TDateTimeField;
    dtEditHR_ENTRADA: TTimeField;
    dtEditHISTORICO: TIBStringField;
    dtEditCHASSI: TIBStringField;
    dtEditINFORMACOES: TBlobField;
    dtEditTOTAL: TFloatField;
    dtEditDESC_ACRESC: TFloatField;
    dtEditCLIENTE: TIBStringField;
    dtEditFECHADO: TIBStringField;
    dtEditNOME_NATUREZA: TIBStringField;
    dtEditNOME_MECANICO: TIBStringField;
    dtEditNOME_VIAJANTE: TIBStringField;
    dtEditMOTOR: TIntegerField;
    dtEditNOME_MOTOR: TIBStringField;
    dtEditENVIADA_CAIXA: TIBStringField;
    dtEditPLACA: TIBStringField;
    dtEditDATA_FECHAMENTO: TDateTimeField;
    dtEditHR_FECHAMENTO: TTimeField;
    dtEditOBS_FECHAMENTO: TBlobField;
    dtEditFORMA_PAGTO: TIntegerField;
    dtEditNOME_FORMA: TIBStringField;
    dtEditTIPO_DOCTO: TIBStringField;
    dtEditLOCAL_COBRANCA: TIntegerField;
    dtEditVLR_PARC_LC: TFloatField;
    dtEditVLR_ENTRADA: TFloatField;
    dtEditCREDITOS: TFloatField;
    dtEditDEBITOS: TFloatField;
    dtEditNF: TIntegerField;
    dtEditALIQUOTA_ISS: TFloatField;
    dtEditORCAMENTO: TIntegerField;
    dtEditMED_VIRABREQUIM: TIBStringField;
    dtEditMED_BIELA: TIBStringField;
    dtEditMED_CILINDRO: TIBStringField;
    dtEditMED_CARCACA: TIBStringField;
    dtEditNUMERO_VENDA: TIntegerField;
    dtEditDEFEITO_RECLAMADO: TIntegerField;
    dtEditCONDICAO_FINAL_EQUIPAMENTO: TIBStringField;
    dtEditHORA_CHEGADA: TTimeField;
    dtEditHORA_SAIDA: TTimeField;
    dtEditCONTADOR_TOTAL: TFloatField;
    dtEditCONTADOR_CILINDRO: TFloatField;
    dtEditCONTADOR_REVELADOR: TFloatField;
    dtEditNOME_DEFEITO: TIBStringField;
    dtEditPROPRIEDADE: TIntegerField;
    dtEditNOME_PROPRIEDADE: TIBStringField;
    dtEditCAUSA_CHAMADO: TIBStringField;
    dtEditTIPO_ATENDIMENTO: TIBStringField;
    dtEditCONTADOR_COR: TFloatField;
    dtEditCONTADOR_PRETO: TFloatField;
    dtEditCONTADOR_IMPRESSAO: TFloatField;
    dtEditVENDA: TIntegerField;
    dtEditPRODUTO: TIBStringField;
    dtEditID_MOTIVO_CHAMADO: TIntegerField;
    dtEditID_TIPO_ATENDIMENTO: TIntegerField;
    dtEditCOD_STATUS: TIntegerField;
    dtEditDT_ATRIBUICAO: TDateTimeField;
    dtEditHR_ATRIBUICAO: TTimeField;
    dtEditDT_INICIALIZACAO: TDateTimeField;
    dtEditHR_INICIALIZACAO: TTimeField;
    dtEditDT_FINALIZACAO: TDateTimeField;
    dtEditHR_FINALIZACAO: TTimeField;
    dtEditCT_REVELADOR: TIntegerField;
    dtEditDT_REVELADOR: TDateTimeField;
    dtEditDT_CILINDRO: TDateTimeField;
    dtEditCT_CILINDRO: TIntegerField;
    dtEditKM_INICIAL: TFloatField;
    dtEditKM_FINAL: TFloatField;
    dtEditOS_RECHAMADO: TIntegerField;
    dtEditKM_RODADO: TFloatField;
    dtEditHORAS_TRABALHADAS: TFloatField;
    dtEditTEMPO_RESPOSTA: TFloatField;
    dtEditTIPO_TECNICO: TIBStringField;
    dtEditPREVENTIVO: TIBStringField;
    dtEditID_CONTRATO: TIntegerField;
    dtEditCOD_CONTATO: TIntegerField;
    dtEditPRIORIDADE: TIntegerField;
    dtEditCUSTO_OS: TFloatField;
    dtEditCONTROLE: TIntegerField;
    dtEditASSUNTO: TIBStringField;
    dtEditVEICULO: TIntegerField;
    dtEditKM: TIntegerField;
    dtEditPROTOCOLO: TIBStringField;
    dtEditCOD_GRAVIDADE: TIntegerField;
    dtEditMAP_LAT: TIBStringField;
    dtEditMAP_LONG: TIBStringField;
    dtEditTAG: TIBStringField;
    dtEditSERIE: TIBStringField;
    dtEditULT_DT_CILINDRO: TDateField;
    dtEditULT_CT_CILINDRO: TIntegerField;
    dtEditTROCA_CILINDRO: TIBStringField;
    dtEditTROCA_FUSAO: TIBStringField;
    dtEditTROCA_BELT: TIBStringField;
    dtEditATIVO: TIBStringField;
    dtEditST_FECHADO: TIBStringField;
    cxDBDateEdit3: TcxDBDateEdit;
    cxLabel37: TcxLabel;
    dtListDet2CNPJ: TIBStringField;
    dtListDet2CODIGO: TIntegerField;
    dtListDet2DT_FIM: TDateField;
    dtListDet2DT_INICIO: TDateField;
    dtListDet2HR_INICIO: TTimeField;
    dtListDet2HR_FIM: TTimeField;
    dtListDet2SEQUENCIA: TIntegerField;
    dtListDet2OBSERVACAO: TIBStringField;
    dtListDet2QTDE_HORA: TFloatField;
    dtListDet2KM_RODADO: TFloatField;
    dtListDet2KM_INICIAL: TFloatField;
    dtListDet2KM_FINAL: TFloatField;
    dtListDet2TEMPO_VIAJEM: TFloatField;
    dtListDet2USUARIO: TIntegerField;
    dtListDet2COD_TIPO_MOVTO: TIntegerField;
    dtListDet2NOME_USUARIO: TIBStringField;
    dtListDet2NOME_TECNICO: TIBStringField;
    dtListDet2COD_TECNICO: TIntegerField;
    dtListDet2CUSTO_HORA: TFloatField;
    dtListDet2CUSTO_ATIVIDADE: TFloatField;
    dtListDet2TIPO: TIBStringField;
    dtListDet2DT_LANCTO: TDateField;
    dtListDet2DT_VENCTO: TDateField;
    dtListDet2DT_CONCLUSAO: TDateField;
    dtListDet2COD_CONTATO: TIntegerField;
    dtListDet2COD_STATUS: TIntegerField;
    dtListDet2COD_VEICULO: TIBStringField;
    dtEditDet2CNPJ: TIBStringField;
    dtEditDet2CODIGO: TIntegerField;
    dtEditDet2SEQUENCIA: TIntegerField;
    dtEditDet2DT_INICIO: TDateField;
    dtEditDet2HR_INICIO: TTimeField;
    dtEditDet2DT_FIM: TDateField;
    dtEditDet2HR_FIM: TTimeField;
    dtEditDet2QTDE_HORA: TFloatField;
    dtEditDet2OBSERVACAO: TIBStringField;
    dtEditDet2KM_RODADO: TFloatField;
    dtEditDet2KM_INICIAL: TFloatField;
    dtEditDet2KM_FINAL: TFloatField;
    dtEditDet2TEMPO_VIAJEM: TFloatField;
    dtEditDet2MSG: TIBStringField;
    dtEditDet2USUARIO: TIntegerField;
    dtEditDet2COD_TECNICO: TIntegerField;
    dtEditDet2CUSTO_INTERVALO: TFloatField;
    dtEditDet2CUSTO_HORA: TFloatField;
    dtEditDet2TIPO: TIBStringField;
    dtEditDet2DT_LANCTO: TDateField;
    dtEditDet2DT_VENCTO: TDateField;
    dtEditDet2DT_CONCLUSAO: TDateField;
    dtEditDet2COD_STATUS: TIntegerField;
    dtEditDet2COD_CONTATO: TIntegerField;
    dtEditDet2COD_VEICULO: TIBStringField;
    dtEditDet2COD_TIPO_MOVTO: TIntegerField;
    dtEditDet2OBSERVACAO2: TMemoField;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    Label11: TcxLabel;
    Label14: TcxLabel;
    cxGroupBox5: TcxGroupBox;
    dtInicial: TcxDBDateEdit;
    Label2: TcxLabel;
    hrInicial: TcxDBTimeEdit;
    Label3: TcxLabel;
    dtFinal: TcxDBDateEdit;
    Label6: TcxLabel;
    hrFinal: TcxDBTimeEdit;
    Label5: TcxLabel;
    hrTotal: TcxDBTextEdit;
    Label8: TcxLabel;
    cxGroupBox6: TcxGroupBox;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit5: TcxDBDateEdit;
    Label16: TcxLabel;
    Label15: TcxLabel;
    Label20: TcxLabel;
    Label17: TcxLabel;
    Label18: TcxLabel;
    bTfrmCadStatusServico: TcxDBLookupComboBox;
    BtnMovimentoStatus: TcxButton;
    cmbContato: TcxDBLookupComboBox;
    cxButton2: TcxButton;
    BtnTipoMovimento: TcxButton;
    aTfrmCadTipoMovimento: TcxDBLookupComboBox;
    cxGroupBox7: TcxGroupBox;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxLabel38: TcxLabel;
    cxLabel39: TcxLabel;
    cxDBSpinEdit4: TcxDBSpinEdit;
    cxLabel40: TcxLabel;
    Label4: TcxLabel;
    cxDBCalcEdit4: TcxDBCalcEdit;
    cxButton4: TcxButton;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxLabel41: TcxLabel;
    TVDet1CNPJ: TcxGridDBBandedColumn;
    TVDet1CODIGO: TcxGridDBBandedColumn;
    TVDet1QUANTIDADE: TcxGridDBBandedColumn;
    TVDet1UNITARIO: TcxGridDBBandedColumn;
    TVDet1COD_PRODUTO: TcxGridDBBandedColumn;
    TVDet1CODIGO_TECNICO: TcxGridDBBandedColumn;
    TVDet1NOME_PRODUTO: TcxGridDBBandedColumn;
    TVDet1NOMETEC: TcxGridDBBandedColumn;
    TVDet1TIPO_SERVICO: TcxGridDBBandedColumn;
    TVDet1SELECIONADO: TcxGridDBBandedColumn;
    TVDet2CNPJ: TcxGridDBBandedColumn;
    TVDet2CODIGO: TcxGridDBBandedColumn;
    TVDet2DT_FIM: TcxGridDBBandedColumn;
    TVDet2DT_INICIO: TcxGridDBBandedColumn;
    TVDet2HR_INICIO: TcxGridDBBandedColumn;
    TVDet2HR_FIM: TcxGridDBBandedColumn;
    TVDet2SEQUENCIA: TcxGridDBBandedColumn;
    TVDet2OBSERVACAO: TcxGridDBBandedColumn;
    TVDet2QTDE_HORA: TcxGridDBBandedColumn;
    TVDet2KM_RODADO: TcxGridDBBandedColumn;
    TVDet2KM_INICIAL: TcxGridDBBandedColumn;
    TVDet2KM_FINAL: TcxGridDBBandedColumn;
    TVDet2TEMPO_VIAJEM: TcxGridDBBandedColumn;
    TVDet2USUARIO: TcxGridDBBandedColumn;
    TVDet2COD_TIPO_MOVTO: TcxGridDBBandedColumn;
    TVDet2NOME_USUARIO: TcxGridDBBandedColumn;
    TVDet2NOME_TECNICO: TcxGridDBBandedColumn;
    TVDet2COD_TECNICO: TcxGridDBBandedColumn;
    TVDet2CUSTO_HORA: TcxGridDBBandedColumn;
    TVDet2CUSTO_ATIVIDADE: TcxGridDBBandedColumn;
    TVDet2TIPO: TcxGridDBBandedColumn;
    TVDet2DT_LANCTO: TcxGridDBBandedColumn;
    TVDet2DT_VENCTO: TcxGridDBBandedColumn;
    TVDet2DT_CONCLUSAO: TcxGridDBBandedColumn;
    TVDet2COD_CONTATO: TcxGridDBBandedColumn;
    TVDet2COD_STATUS: TcxGridDBBandedColumn;
    TVDet2COD_VEICULO: TcxGridDBBandedColumn;
    btnFiltroCliente: TcxButton;
    dsClienteFiltro: TDataSource;
    qryFiltroCliente: TIBQuery;
    qryFiltroClienteCODIGO: TIntegerField;
    qryFiltroClienteNOME_RAZAO: TIBStringField;
    qryFiltroClienteTECNICO: TIntegerField;
    qryFiltroClienteEMAIL: TIBStringField;
    qryFiltroClienteCIDADE: TIBStringField;
    dsVeiculos: TDataSource;
    QryVeiculos: TIBQuery;
    QryVeiculosPLACA: TIBStringField;
    QryVeiculosDESCRICAO: TIBStringField;
    btnTimer: TcxButton;
    Timer: TTimer;
    TimerRetroceder: TTimer;
    pbTimer: TcxProgressBar;
    QryMovimentoStatus: TIBQuery;
    IBStringField4: TIBStringField;
    IntegerField3: TIntegerField;
    IBStringField5: TIBStringField;
    IntegerField4: TIntegerField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    IBStringField10: TIBStringField;
    DsMovimentoStatus: TDataSource;
    DsTipoMovimento: TDataSource;
    QryTipoMovimento: TIBQuery;
    IBStringField11: TIBStringField;
    dtListCODIGO: TIntegerField;
    dtListNOME: TIBStringField;
    DsContato: TDataSource;
    QryContato: TIBQuery;
    QryContatoCONTATO_NOME: TIBStringField;
    QryContatoOBSERVACAO: TIBStringField;
    QryContatoIDCLIENTE_RELACIONADO: TIntegerField;
    QryContatoTIPOCONTATO: TIBStringField;
    QryContatoCNPJ: TIBStringField;
    QryContatoID_CLIENTE: TIntegerField;
    QryContatoIDCLIENTE: TIntegerField;
    QryContatoTIPO_CONTATO: TIntegerField;
    QryContatoCELULAR: TIBStringField;
    QryContatoRESIDENCIAL: TIBStringField;
    QryContatoCODIGO: TIntegerField;
    bTfrmCadTecnicos: TcxDBLookupComboBox;
    cxButton1: TcxButton;
    QryMovimentoTecnico: TIBQuery;
    IntegerField5: TIntegerField;
    IBStringField12: TIBStringField;
    IBStringField13: TIBStringField;
    MemoField1: TMemoField;
    DsMovimentoTecnico: TDataSource;
    cxDBMemo3: TcxDBMemo;
    cxLabel32: TcxLabel;
    ActGeraVenda: TAction;
    procedure btnStatusClick(Sender: TObject);
    procedure btnTecnicoClick(Sender: TObject);
    procedure btnDefeitoReclamadoClick(Sender: TObject);
    procedure btnServicoExecutadoClick(Sender: TObject);
    procedure btnMotivoClick(Sender: TObject);
    procedure dtEditSERIEChange(Sender: TField);
    procedure dtEditNewRecord(DataSet: TDataSet);
    procedure dtEditPESSOA_FJChange(Sender: TField);
    procedure dtEditPRODUTOValidate(Sender: TField);
    procedure dtEditCOD_STATUSChange(Sender: TField);
    procedure dtEditDet1QUANTIDADEChange(Sender: TField);
    procedure dtEditDet1UNITARIOChange(Sender: TField);
    procedure TVRegistroOFC_CODIGOCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure TVRegistroST_CORCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure TVRegistroDT_CILINDROCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure ActImprimirOSExecute(Sender: TObject);
    procedure ActFilterExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dtEditBeforePost(DataSet: TDataSet);
    procedure dtEditDet2NewRecord(DataSet: TDataSet);
    procedure dtEditDet2AfterPost(DataSet: TDataSet);
    procedure dtEditDet1BeforePost(DataSet: TDataSet);
    procedure dtEditKM_FINALChange(Sender: TField);
    procedure btnClienteClick(Sender: TObject);
    procedure btnFiltroClienteClick(Sender: TObject);
    procedure dtEditDet1NewRecord(DataSet: TDataSet);
    procedure dtEditDet2AfterInsert(DataSet: TDataSet);
    procedure dtEditDet2HR_FIMChange(Sender: TField);
    procedure dtEditDet2KM_FINALChange(Sender: TField);
    procedure btnTimerClick(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure dtListCalcFields(DataSet: TDataSet);
    procedure TimerRetrocederTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnMovimentoStatusClick(Sender: TObject);
    procedure BtnTipoMovimentoClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure dtEditAfterPost(DataSet: TDataSet);
    procedure ActGeraVendaExecute(Sender: TObject);
  private
    { Private declarations }
    Procedure Filtrar;
    procedure EnviaEmailTecnico(Origem,NOrigem,Destino,NDestino,Assunto,Mensagem : string);
    procedure EnviaEmailAb_Fec(cliente,NCliente,Contato,NContato,Assunto,Mensagem,TIPO : string);
    function GerarTimer(Data: TDateTime):  String;
  public
    { Public declarations }
     fTempo: Ttime;
  end;

var
  frmCadOS: TfrmCadOS;
  Sair: Boolean ;

implementation

uses UntCadStatusServico, UntCadTecnicos, UntCadDefeitos,
  UntCadServicoExecutado, UntCadMotivosDevolucao,
  UntCadProblemaIdentificado, Application_DM, 
  SerieCustomizaveis_DM, SeriesCustomizaveis, Funcoes, untCadClientes,
  UntCadTipoMovimento, Servicos_DM;

{$R *.dfm}

procedure TfrmCadOS.btnStatusClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadStatusServico,dtEdit,'COD_STATUS',QryStatus);
end;

procedure TfrmCadOS.btnTecnicoClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadTecnicos,dtEdit,'MECANICO',QryTecnico);
end;

procedure TfrmCadOS.btnDefeitoReclamadoClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadDefeitos,dtEdit,'DEFEITO_RECLAMADO',QryDefeito);
end;

procedure TfrmCadOS.btnServicoExecutadoClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadServicoExecutado,dtEdit,'ID_TIPO_ATENDIMENTO',QryServicoExecutado);
end;

procedure TfrmCadOS.btnMotivoClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadMotivoChamado,dtEdit,'ID_MOTIVO_CHAMADO',QryMotivoChamado);
end;

procedure TfrmCadOS.dtEditSERIEChange(Sender: TField);
begin
  inherited;
  { função adicionada para permitir que o usuário busque diretamente pela serie do
    equipamento objeto da ordem de servico, ao colocar a serie os campos cliente e
    equipamento são automativamente preenchidos}
  if dtEditSERIE.asString <> '' then
  begin
    SelSeries.Close;
    SelSeries.ParamByName('serie').value := dtEditSERIE.asString;
    SelSeries.Open;

    if (SelSeriesCOD_CLIENTE.AsInteger > 0) then
      dtEditPESSOA_FJ.Value := SelSeriesCOD_CLIENTE.AsInteger;

    if (SelSeriesCOD_EQUIPAMENTO.AsString <> '') then
      dtEditPRODUTO.Value := SelSeriesCOD_EQUIPAMENTO.value;
  end;
end;

procedure TfrmCadOS.dtEditNewRecord(DataSet: TDataSet);
var
  StatusPadrao : integer;
  sql : string;
  DataHora : TDateTime;
begin
  inherited;
  {Selecionando o Status 'padrão' de abertura}
  sql := 'select coalesce(min(s.codigo),0) from ofc_status s where s.cnpj = '+QuotedStr(dmApp.cnpj)+' and s.padrao_abertura = ''S''';
  StatusPadrao := RetornaValor(sql);
  if StatusPadrao > 0 then
   dtEditCOD_STATUS.value := StatusPadrao;

   //atribuindo data e hora iniciais da solicitação da OS
   DataHora := dmApp.DataServidor;
   dtEditENTRADA.value := DateOf(DataHora);
   dtEditDATA.value := DateOf(DataHora);
   dtEditHR_ENTRADA.value := TimeOf(DataHora);


end;

procedure TfrmCadOS.dtEditPESSOA_FJChange(Sender: TField);
var
  ativo : string;
begin
  inherited;
  //Atribuindo a OS a Lat. e Longitude do Cadastro de Clientes, caso ela existe
  if (dtEditMAP_LAT.asString = '') then
  begin
    SelEndereco.Close;
    SelEndereco.parambyname('cnpj').value := dmapp.cnpj;
    SelEndereco.parambyname('codigo').value := dtEditPESSOA_FJ.Value;
    SelEndereco.Open;

    dtEditMAP_LAT.value := SelEnderecoMAP_LAT.Value;
    dtEditMAP_LONG.value := SelEnderecoMAP_LONG.Value;
  end;

  //opção que obriga a definir um contato para a empresa, caso não tenha sido definido o proprio cliente passa
  //a ser o contato, nunca foi usado
  if(dmApp.OFC_EXIBE_NOTIFICACAO = 'S') then
  begin
    if (dtEditCOD_CONTATO.asInteger <=0) then
      dtEditCOD_CONTATO.value := dtEditPESSOA_FJ.Value;
  end;

  //se o tipo de vizualização for do tipo = 0 (OS) o tecnico sera sugerido automaticamente de acordo com a relação
  //com o cliente selecionado
  if (dmApp.EXIBE_OFC_VISUALIZACAO = '0') then
  begin
    QryClientes.Locate('CODIGO',dtEditPESSOA_FJ.Value,[loCaseInsensitive]);
    dtEditMECANICO.value :=  QryClientesTECNICO.value ;
  end;


  if (dtEditST_FECHADO.AsString = '') then
    ativo := 'S'
  else
    ativo := 'T';

  QryEquipCliente.Close;
  QryEquipCliente.parambyname('pessoa_fj').value := dtEditPESSOA_FJ.value;
  QryEquipCliente.parambyname('ativo').value := ativo;
  QryEquipCliente.Open;

  if (QryEquipCliente.RecordCount > 0) then
    cmbEquipamento.Enabled := true
  else
    cmbEquipamento.Enabled := false;


end;

procedure TfrmCadOS.dtEditPRODUTOValidate(Sender: TField);
var
  TecnicoPadrao : integer;
  sql : string;

begin
  inherited;
  //verificando se o tecnico da OS é o tecnico 'titular' do equipamento (alguns equipamentos mais complexos possuem
  // tecnicos especificos que cuidam da manutenção), caso não seja o sistema sugirirá o tecnico titular do equipamento

  sql := 'select coalesce(prd.cod_tecnico,0) from est_produtos prd where prd.cnpj ='+QuotedStr(dmApp.cnpj)+' and prd.codigo = '+QuotedStr(dtEditPRODUTO.value);
  TecnicoPadrao := RetornaValor(sql);

  if TecnicoPadrao > 0 then
  begin
    if TecnicoPadrao <> dtEditMECANICO.AsInteger then
    begin
      if application.messagebox('Equipamento possuí técnico específico vinculado. Deseja alterar técnico atual?','Aviso', mb_yesno + mb_iconquestion) = id_yes then
         dtEditMECANICO.value := TecnicoPadrao;
    end;
  end;
end;

procedure TfrmCadOS.dtEditCOD_STATUSChange(Sender: TField);
var
  DataHora : TDateTime;
begin
  inherited;
  //caso o status selecionado, seja um status de fechameto, então a OS receberá
  //a data e hora de fechamento da mudança do status, ou o status for do tipo atribuição
  // a os receberá tambem estes dados nos respectivos campos
  QryStatus.Locate('CODIGO',dtEditCOD_STATUS.Value,[loCaseInsensitive]);
  if ((QryStatusFECHADO.value = 'S') and (dtEditDATA_FECHAMENTO.IsNull)) then
  begin
    DataHora := dmApp.DataServidor;
    dtEditDATA_FECHAMENTO.Value := DateOf(DataHora);
    dtEditHR_FECHAMENTO.Value := TimeOf(DataHora);
  end
  else if ((QryStatusPADRAO_ENVIO.value = 'S') and (dtEditDT_ATRIBUICAO.IsNull)) then
  begin
    DataHora := dmApp.DataServidor;
    dtEditDT_ATRIBUICAO.Value := DateOf(DataHora);
    dtEditHR_ATRIBUICAO.Value := TimeOf(DataHora);
  end;
end;

procedure TfrmCadOS.dtEditDet1QUANTIDADEChange(Sender: TField);
begin
  inherited;
  dtEditDet1Total.value := dtEditDet1QUANTIDADE.value * dtEditDet1UNITARIO.value;
end;

procedure TfrmCadOS.dtEditDet1UNITARIOChange(Sender: TField);
begin
  inherited;
  dtEditDet1Total.value := dtEditDet1QUANTIDADE.value * dtEditDet1UNITARIO.value;
end;

procedure TfrmCadOS.TVRegistroOFC_CODIGOCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  ValueGasto, ValueResposta : Variant;
begin
  //Procedimento irá pintar de vermelho a linha em que o atendimento tenha 'estourado' o tempo resposta delimitado
  //no contrato de atendimento

  if not (AViewInfo.GridRecord as TcxCustomGridRow).IsFilterRow then
  begin
     if (dmApp.EXIBE_OFC_CONTROLA_TEMPO_RESPOSTA = 'N') then
      exit;


     ACanvas.Canvas.Font.Color := clBlack;
     if TVRegistro.ViewData.Records[AviewInfo.GridRecord.Index].Selected then
     begin
       ACanvas.Canvas.Brush.Color := clYellow;
       exit;
     end;

     ACanvas.Canvas.Brush.Style := bsSolid;
     ValueGasto := TVRegistro.ViewData.Records[AViewInfo.GridRecord.Index].Values[TVRegistroTEMPO_GASTO.Index];
     ValueResposta := TVRegistro.ViewData.Records[AViewInfo.GridRecord.Index].Values[TVRegistroCP_TEMPO_RESPOSTA.Index];
     if (not VarIsNull(ValueGasto) and not VarIsNull(ValueResposta)) then
     begin
       //vai pintar de vermelho se tiver estourado o tempo resposta, e de laranja se tiver faltando 2horas ou menos pra estourar
       if(ValueGasto >= ValueResposta)then
         ACanvas.Canvas.Brush.Color := $008484FF
       else if ((ValueResposta - ValueGasto) <= 2) then
         ACanvas.Canvas.Brush.Color := $0051A8FF
     end
     else

  end;
end;



procedure TfrmCadOS.TVRegistroDT_CILINDROCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  //célula que contém a ultima data de troca de cilindro será destacada dem amarelo
  if not (AViewInfo.GridRecord as TcxCustomGridRow).IsFilterRow then
  begin
    ACanvas.Canvas.Font.Color := clBlack;
    ACanvas.Canvas.Brush.Style := bsSolid;
    if not VarIsNull(TVRegistro.ViewData.Records[AViewInfo.GridRecord.Index].Values[TVRegistroULT_DT_CILINDRO.Index]) then
      ACanvas.Canvas.Brush.Color := clYellow;
  end;
end;

procedure TfrmCadOS.ActImprimirOSExecute(Sender: TObject);
begin
  inherited;

   DmSerie_Customizaveis.edtLayoutOS.close;
   DmSerie_Customizaveis.edtLayoutOS.parambyname('cnpj').value := dmApp.cnpj;
   DmSerie_Customizaveis.edtLayoutOS.Open;

   If FrmSeriesCustomizaveis = Nil Then
     FrmSeriesCustomizaveis     := TFrmSeriesCustomizaveis.Create(Self);

   with FrmSeriesCustomizaveis do
   begin
     QryOS.Close;
     QryOS.Parambyname('cnpj').value := dmApp.cnpj;
     QryOS.Parambyname('codigo').value := dtEditCodigo.value;
     QryOS.Parambyname('PESSOA_FJ').value := dtEditPessoa_fj.value;
     QryOS.Open;

     rptOS.Template.DatabaseSettings.Name := DmSerie_Customizaveis.edtLayoutOSCNPJ.asstring;;
     rptOS.Template.LoadFromDatabase;
     rptOS.print;
   end;
   FrmSeriesCustomizaveis := Nil;
   exit;
end;

procedure TfrmCadOS.ActFilterExecute(Sender: TObject);
Begin
  Filtrar;
  inherited;

end;

procedure TfrmCadOS.Filtrar;
var
  filtro : string;
Begin
  if ((mtbFiltroDATA_INICIAL.Value < dmApp.OFC_DATA_BASE_MAN_OS) and ((dmApp.OFC_DATA_BASE_MAN_OS) > 0)) then
  begin
    Application.MessageBox(Pchar('Data Inicial Inválida. Data inferior ao parametrizado como Data Base para Listagem de OS: '+DateToStr(dmApp.OFC_DATA_BASE_MAN_OS)),'Aviso',mb_ok+mb_ok+mb_iconinformation);
    mtbFiltroDATA_INICIAL.Value := dmApp.OFC_DATA_BASE_MAN_OS;
    edtInicial.SetFocus;
    exit;
  end;

  filtro := '';
    dtList.Close;
    if mtbFiltroDATA_INICIAL.Value > 0 then
      filtro := ' and ofc.data >= '''+FormatDateTime('mm/dd/yyyy',mtbFiltroDATA_INICIAL.Value)+'''';

    if mtbFiltroDATA_FINAL.Value > 0 then
      filtro := filtro + ' and ofc.data <= '''+FormatDateTime('mm/dd/yyyy',mtbFiltroDATA_FINAL.value)+'''';

   case mtbFiltroTIPO_STATUS.value of
     0 : filtro := filtro +' and coalesce(st.fechado,''N'') = ''N''';
     1 : filtro := filtro +' and coalesce(st.fechado,''N'') <> ''N''';
   end;

   if (mtbFiltroCLIENTE.asInteger > 0) then
     filtro := filtro + ' and ofc.pessoa_fj = '+mtbFiltroCLIENTE.AsString;

   if trim(mtbFiltroSERIE.AsString) <> '' then
     filtro := filtro + ' and prd.serie = '+QuoTedStr(mtbFiltroSERIE.AsString);

   dtList.sql.text := sqloriginal + filtro;


end;

procedure TfrmCadOS.TVRegistroST_CORCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
  if not (AViewInfo.GridRecord as TcxCustomGridRow).IsFilterRow then
  begin
    ACanvas.Canvas.Brush.Style := bsSolid;
    if not VarIsNull(TVRegistro.ViewData.Records[AViewInfo.GridRecord.Index].Values[TVRegistroST_COR.Index]) then
     ACanvas.Canvas.Brush.Color := VarAsType(TVRegistro.ViewData.Records[AViewInfo.GridRecord.Index].Values[TVRegistroST_COR.Index], varInteger);
  end;
end;

procedure TfrmCadOS.FormCreate(Sender: TObject);
begin
  inherited;
  mtbFiltroTIPO_STATUS.value := 0;
  //se houver uma data padrao minima de listagem de OS, então sera atribuida inicialmente ao filtro
  if dmApp.OFC_DATA_BASE_MAN_OS > 0 then
     mtbFiltroDATA_INICIAL.Value := dmApp.OFC_DATA_BASE_MAN_OS;
end;

procedure TfrmCadOS.dtEditBeforePost(DataSet: TDataSet);
var
  sql: string;
  ultimocodigo, cttotal: integer;
  DATA_INI  , DATA_FIM,
  HORA_INI  , HORA_FIM,
  INTER_INI , INTER_FIM,
  TRAB_INI  , TRAB_FIM : STRING;

begin

  //verifica se km_inicial é menor que km_final
  if dtEditKM_RODADO.value < 0 then
  begin
    Application.MessageBox('Impossível salvar alterações. Km Final menor que Km Inicial.','Aviso',mb_iconerror + mb_ok);
    EdtKmFinal.setfocus;
    abort;
    exit;
  end;

  if ((dtEditHR_FECHAMENTO.value = StrToTime('00:00:00')) and (dtEditDATA_FECHAMENTO.value > 0)) then
  begin
    Application.MessageBox('Impossível salvar alterações. Defina um horário de fechamento válido','Aviso',mb_iconerror + mb_ok);
    dtEditHR_FECHAMENTO.value := TimeOF(dmapp.Data_Servidor);
    abort;
    exit;
  end;

  //-----------------Armazenando o tempo resposta-------------------------//
  if (not dtEditDATA_FECHAMENTO.IsNull) and (not dtEditHR_FECHAMENTO.IsNull) then
  begin
    DATA_INI := DateToStr(dtEditENTRADA.asDateTime);
    DATA_FIM := DateToStr(dtEditDATA_FECHAMENTO.asDateTime);

    if StrtoDate(DATA_INI) > StrtoDate(DATA_FIM) then //
    begin
      dtEditTEMPO_RESPOSTA.VALUE := 0;
      Application.MessageBox('Data de fechamento está maior que data do lançamento','Aviso',mb_ok+mb_iconinformation);
      edtDataFechamento.SetFocus;
      Abort;
      exit;
    end;

    HORA_INI := TimeToStr(dtEditHR_ENTRADA.value);
    HORA_FIM := TimeToStr(dtEditHR_FECHAMENTO.value);
    INTER_INI:= '11:00:00';
    INTER_FIM:= '13:00:00';
    TRAB_INI := '08:00:00';
    TRAB_FIM := '18:00:00';
    dtEditTEMPO_RESPOSTA.VALUE    := HORAS_CORRIDA(DATA_INI  , DATA_FIM,
                                            HORA_INI  , HORA_FIM,
                                                              INTER_INI , INTER_FIM,
                                                              TRAB_INI  , TRAB_FIM);
  end;

  //-----------------Encontrando o ultimo codigo de os, para validação do contador total---------------------------------//
  if (dtEditDATA_FECHAMENTO.value > 0) then
  begin
    //pegando a ultima OS fechada do equipamento em questão
    sql := ' select coalesce(max(o.codigo),0) codigo from ofc_ordem_servico o '+
            ' where o.data_fechamento is not null and o.produto = '+QuotedStr(dtEditPRODUTO.value)+ ' and o.contador_total > 0 '+
            ' and o.cnpj = '+QuotedStr(dmApp.cnpj)+' and o.codigo < '+dtEditCODIGO.AsString;
    ultimocodigo := RetornaValor(sql);

    //pegando o contador total da os previamente selecoinada
    sql := ' select coalesce(o.contador_total,0) contador_total from ofc_ordem_servico o '+
           ' where o.cnpj = '+QuotedStr(dmApp.cnpj)+' and o.codigo = '+ inttostr(ultimocodigo);
    cttotal := RetornaValor(sql);

    if (cttotal > dtEditCONTADOR_TOTAL.value) then
    begin
      if application.messagebox(Pchar('O valor do CONTADOR TOTAL ( '+dtEditCONTADOR_TOTAL.asString+' ) é inferior ao valor do CONTADOR TOTAL('+IntToStr(cttotal)+') da OS Nº - '+IntToStr(ultimocodigo)+#13+' Deseja realmente salvar a OS com este valor?'),'Aviso', mb_yesno + mb_iconquestion) = id_no then
      begin
       EdtContadorTotal.setfocus;
       abort;
       exit;
      end;
    end;
  end;

  inherited;
end;

procedure TfrmCadOS.dtEditDet2NewRecord(DataSet: TDataSet);
var
  DataServidor : TDateTime;
begin
  inherited;
  DataServidor := DMApp.DataServidor;

  dtEditDet2CNPJ.Value      := DMApp.Cnpj;
  dtEditDet2CODIGO.Value    := dtEditCODIGO.value;
  dtEditDet2DT_INICIO.Value := DateOF(DataServidor);
  dtEditDet2HR_INICIO.Value := TimeOF(DataServidor)-0.003;
  dtEditDet2DT_FIM.Value := DateOF(DataServidor);
  dtEditDet2HR_FIM.Value := TimeOF(DataServidor);
  dtEditDet2USUARIO.value := dmApp.USR_CONECTADO;
  dtEditDet2COD_TECNICO.value := dtEditMECANICO.value;
end;

procedure TfrmCadOS.dtEditDet2AfterPost(DataSet: TDataSet);
{var
  existe : variant;
  sql : string;}
begin
  inherited;
 { if (dmApp.EXIBE_EMAIL_AUTOMATICO = 'S') then
  begin
    if (((dtEditDet2.RecordCount = 1) or (dtEditDet2TIPO.Value = 'A')) and (dtEditDet2_EMAIL.RecordCount = 0)) then
    begin
       FrmOrdens_Servicos.EnviaEmailAb_Fec(dmCadastros2.SelClientesEMAIL.AsString,dmCadastros2.SelClientesNOME_RAZAO.AsString,
                                           dmCadastros2.SelClientes2EMAIL.AsString,dmCadastros2.SelClientes2NOME_RAZAO.AsString,
                                           'Caso '+Completaesq(OrdemCODIGO.asString,'0',9)+' - Abertura',OrdemINFORMACOES.Value,'A');
    end
    else if (dtEditDet2TIPO.Value = 'F') then
    begin
      sql := ' select count(*) from ofc_o_s_intervalo_email e  where e.cnpj = '+QuotedStr(dmApp.cnpj)+' and e.cod_intervalo = '+dtEditDet2CODIGO.AsString
             +' and e.tipo = ''F'' and e.enviado = ''1'' and e.sequencia = '+dtEditDet2SEQUENCIA.AsString;

      existe := RetornaValor(sql,dmapp.Transaction);
      if (existe <= 0) then
        FrmOrdens_Servicos.EnviaEmailAb_Fec(dmCadastros2.SelClientesEMAIL.AsString,dmCadastros2.SelClientesNOME_RAZAO.AsString,
                                           dmCadastros2.SelClientes2EMAIL.AsString,dmCadastros2.SelClientes2NOME_RAZAO.AsString,
                                           'Caso '+Completaesq(OrdemCODIGO.asString,'0',9)+' - Fechamento',OrdemOBS_FECHAMENTO.Value,'F');
    end;
  end; }
end;

procedure TfrmCadOS.EnviaEmailAb_Fec(cliente, NCliente, Contato, NContato,
  Assunto, Mensagem, TIPO: string);
 {xAnexo,i : Integer;
 hThreadID :THandle;
 ThreadID :DWord;}
begin
 { comentado, em caso de implementação avalie o codigo antigo
 dmApp.IdMessage.Clear;
  with dmApp.IdMessage do
  begin
    Body.Add(Mensagem);
    From.Address := DMApp.EMAIL_PADRAO; //opcional
    From.Name := dmApp.NOME_USUARIO; //opcional

    if (Cliente = '') then
    begin
      Application.Messagebox('Defina um email para o cliente ','Aviso',mb_ok + mb_iconerror);
      exit;
    end;
    i := 0;
    Recipients.Add;
    Recipients.Items[i].Address := cliente;
    Recipients.Items[i].Name := NCliente;

    {if (Contato = '') then
    begin
      Application.Messagebox('Defina um email para o contato ','Aviso',mb_ok + mb_iconerror);
      exit;
    end;}

 {   if (Contato <> '') then
    begin
      i := i + 1;
      Recipients.Add;
      Recipients.Items[i].Address := contato;
      Recipients.Items[i].Name := NContato;
    end;

    if (dmapp.EMAIL_CONTROLE <> '') then
    begin
      i := i + 1;
      Recipients.Add;
      Recipients.Items[i].Address := dmapp.EMAIL_CONTROLE;
      Recipients.Items[i].Name := 'Supervisao'; //opcional
    end;

    Subject := 'Caso '+Completaesq(dtEditCODIGO.asString,'0',9)+': '+dtEditASSUNTO.asString;;
    //Priority := mpHigh;
    ReceiptRecipient.Text := From.Text;

    OS_INTERVALO_EMAIL_INSERT.open;
    OS_INTERVALO_EMAIL_INSERT.Append;
    OS_INTERVALO_EMAIL_INSERTASSUNTO.value := Assunto;
    OS_INTERVALO_EMAIL_INSERTDE.value := dmapp.EMAIL_PADRAO;
    OS_INTERVALO_EMAIL_INSERTPARA.value := Cliente+';'+Contato+';'+dmapp.EMAIL_CONTROLE;
    OS_INTERVALO_EMAIL_INSERTDATA.Value := DmApp.Data_Servidor;
    OS_INTERVALO_EMAIL_INSERTSEQUENCIA.value := OS_INTERVALOSEQUENCIA.VALUE;
    OS_INTERVALO_EMAIL_INSERTCOD_INTERVALO.value := OS_INTERVALOCODIGO.VALUE;
    OS_INTERVALO_EMAIL_INSERTTIPO.value := OS_INTERVALOTIPO.value;

  end;
  hThreadID := CreateThread(nil, 0, @EnviaEmailGenerico, nil, 0, ThreadID);
  {try
    if not (dmApp.IdSMTP.Connected) then
      dmApp.IdSMTP.Connect();

    dmApp.IdSMTP.Send(dmApp.IdMessage);

    if (dmApp.IdSMTP.Connected) then
      dmApp.IdSMTP.Disconnect;

    OS_INTERVALO_EMAILENVIADO.value := '1';
  except
     On E:Exception Do
     begin
       Application.Messagebox(Pchar('Falha ao enviar a mensagem: '+ E.Message),'Aviso',mb_ok + mb_iconerror);
       dmServicos.OS_INTERVALO_EMAILENVIADO.value := '0';
       dmServicos.OS_INTERVALO_EMAIL.POST;
       exit;
     end
   end;
   Application.Messagebox('Mensagem enviada com sucesso','Aviso',mb_ok + mb_iconinformation);
   dmServicos.OS_INTERVALO_EMAIL.POST;}

end;

procedure TfrmCadOS.EnviaEmailTecnico(Origem, NOrigem, Destino, NDestino,
  Assunto, Mensagem: string);
{ xAnexo : Integer;
 hThreadID :THandle;
 ThreadID :DWord;}
begin
  {dmApp.IdMessage.Clear;
  with dmApp.IdMessage do
  begin
    Body.Add(Mensagem);
    From.Address := Origem; //opcional
    From.Name := NOrigem; //opcional

    if (Destino = '') then
    begin
      Application.Messagebox('Defina um email para o destinatário ','Aviso',mb_ok + mb_iconerror);
      exit;
    end;

    Recipients.Add;
    Recipients.Items[0].Address := Destino;
    Recipients.Items[0].Name := NDestino; //opcional

    if (dmapp.EMAIL_CONTROLE <> '') then
    begin
      Recipients.Add;
      Recipients.Items[1].Address := dmapp.EMAIL_CONTROLE;
      Recipients.Items[1].Name := 'Supervisao'; //opcional
    end;

    Subject := 'Caso '+Completaesq( OrdemCODIGO.asString,'0',9)+': '+ OrdemASSUNTO.asString;;
    //Priority := mpHigh;
    ReceiptRecipient.Text := From.Text;

    TIdAttachment.create(idmessage.MessageParts, TFileName('c:\texte.txt'));
      dtEditDet2.Append;
      dtEditDet2CNPJ.value := dmApp.cnpj;
      dtEditDet2DT_INICIO.value := dmApp.DataServidor;
      dtEditDet2HR_INICIO.value := TimeOF(dmApp.DataServidor);
      dtEditDet2DT_FIM.value := dmApp.DataServidor;
      dtEditDet2HR_FIM.value := TimeOF(dmApp.DataServidor);
      dtEditDet2OBSERVACAO.Value :=  ' Caso Transferido de '+NOrigem+' para '+NDestino;
      dtEditDet2.Post;

      dtEditDet2_EMAIL_INSERT.open;
      dtEditDet2_EMAIL_INSERT.Append;
      dtEditDet2_EMAIL_INSERTASSUNTO.value := ' Caso Transferido de '+NOrigem+' para '+NDestino; ;
      dtEditDet2_EMAIL_INSERTDE.value := dmapp.EMAIL_PADRAO;
      dtEditDet2_EMAIL_INSERTPARA.value := Destino+';'+dmapp.EMAIL_CONTROLE;
      dtEditDet2_EMAIL_INSERTDATA.Value := DmApp.Data_Servidor;
      dtEditDet2_EMAIL_INSERTSEQUENCIA.value := dtEditDet2SEQUENCIA.VALUE;
      dtEditDet2_EMAIL_INSERTCOD_INTERVALO.value := dtEditDet2CODIGO.VALUE;

  end;
  hThreadID := CreateThread(nil, 0, @EnviaEmailGenerico, nil, 0, ThreadID);

  {try
    if not (dmApp.IdSMTP.Connected) then
      dmApp.IdSMTP.Connect();

    dmApp.IdSMTP.Send(dmApp.IdMessage);

    if (dmApp.IdSMTP.Connected) then
      dmApp.IdSMTP.Disconnect;

     dtEditDet2_EMAILENVIADO.value := '1';
  except
     On E:Exception Do
     begin
       Application.Messagebox(Pchar('Falha ao enviar a mensagem: '+ E.Message),'Aviso',mb_ok + mb_iconerror);
        dtEditDet2_EMAILENVIADO.value := '0';
        dtEditDet2_EMAIL.POST;
       exit;
     end
   end;
   Application.Messagebox('Mensagem enviada com sucesso','Aviso',mb_ok + mb_iconinformation);
    dtEditDet2_EMAIL.POST;}

end;

procedure TfrmCadOS.dtEditDet1BeforePost(DataSet: TDataSet);
var
  DATA_INI  , DATA_FIM,
  HORA_INI  , HORA_FIM,
  INTER_INI , INTER_FIM,
  TRAB_INI  , TRAB_FIM : String;
  DtFim : TDate;
  HrFim : TTime;
  MsgData, MsgHora : string;
begin
  inherited;

  if ((dtEditDet2DT_INICIO.IsNull)  OR (dtEditDet2HR_INICIO.IsNull) OR (dtEditDet2DT_FIM.IsNull) OR (dtEditDet2HR_FIM.IsNull))   then
  begin
    Application.MessageBox('Defina uma data de inicio','Aviso',mb_iconerror+mb_ok);
    Abort;
  end;

  //-->> Validando Hora/Data [PROGRAMAÇÃO e INICIO ATIVIDADE]
 { MsgData := 'Dt. de Programação não pode ser superior a Dt. de Inicialização do serviço';
  MsgHora := 'Hr. de Programação não pode ser superior a Hr. de Inicialização do serviço';
  if ValidaDataHora(DateToStr(OrdemDT_ATRIBUICAO.value),DateToStr(OS_INTERVALODT_INICIO.value),OrdemHR_ATRIBUICAO.value, OS_INTERVALOHR_INICIO.value, MsgData, MsgHora) then
  begin
    abort;
    exit;
  end;}

  //-->> Validando Hora/Data [INICIO ATIVIDADE e FIM ATIVIDADE]
  {MsgData := 'Dt. de Inicialização não pode ser superior a Dt. de Finalização do serviço';
  MsgHora := 'Hr. de Inicialização não pode ser superior a Hr. de Finalização do serviço';

  if ValidaDataHora(DateToStr(OS_INTERVALODT_INICIO.value),DateToStr(OS_INTERVALODT_FIM.value),OS_INTERVALOHR_INICIO.value,OS_INTERVALOHR_FIM.value, MsgData, MsgHora) then
  begin
    abort;
    exit;
  end;}

  //-->> Validando Hora/Data [FIM ATIVIDADE e FECHAMENTO]
  if (dtEditDATA_FECHAMENTO.isNull) then
    DtFim := Date
  else
    DtFim := dtEditDATA_FECHAMENTO.value;

  if (dtEditHR_FECHAMENTO.isNull) then
    HrFim := Time
  else
    HrFim := dtEditHR_FECHAMENTO.value;


  {MsgData := 'Dt. de Finalização não pode ser superior a Dt. de Fechamento da OS';
  MsgHora := 'Hr. de Finalização não pode ser superior a Hr. de Fechamento da OS';
  if ValidaDataHora(DateToStr(dtEditDet2DT_FIM.value),DateToStr(DtFim), dtEditDet2HR_FIM.value, HrFim, MsgData, MsgHora) then
  begin
    abort;
    exit;
  end;}


  DATA_INI := DateToStr(dtEditDet2DT_INICIO.Value);
  HORA_INI := TimeToStr(dtEditDet2HR_INICIO.Value);

  //** Data_Fim se não estiver preenchido pegara data_atual
  if dtEditDet2DT_FIM.Text='' then
    DATA_FIM := DateToStr(dmapp.DataServidor)
  else
    DATA_FIM := DateToStr(dtEditDet2DT_FIM.Value   );

  //** Hora_Fim se não estiver preenchido pegara hora_atual
  if dtEditDet2HR_FIM.Text='00:00:00' then
    HORA_FIM := TimeToStr(dmapp.DataServidor)
  else
    HORA_FIM := TimeToStr(dtEditDet2HR_FIM.Value   );

  INTER_INI:= '11:00:00';
  INTER_FIM:= '13:00:00';
  TRAB_INI := '08:00:00';
  TRAB_FIM := '18:00:00';

  dtEditDet2QTDE_HORA.Value  := HORAS_TRABALHADAS(DATA_INI  , DATA_FIM,
                                                  HORA_INI  , HORA_FIM,
                                                  INTER_INI , INTER_FIM,
                                                  TRAB_INI  , TRAB_FIM);



  if dtEditDet2KM_FINAL.value < dtEditDet2KM_INICIAL.value then
  begin
    application.messagebox('Km. Final não poderá ser inferior a km. Inicial','Aviso',mb_iconerror + mb_ok);
    abort;//aqui boy
    exit;
  end;
end;

procedure TfrmCadOS.dtEditKM_FINALChange(Sender: TField);
begin
  inherited;
  dtEditKM_RODADO.value := dtEditKM_FINAL.value - dtEditKM_INICIAL.value;
end;

procedure TfrmCadOS.btnClienteClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadClientes,dtEdit,'PESSOA_FJ',QryClientes);
end;

procedure TfrmCadOS.btnFiltroClienteClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadClientes,tibdataset(mtbFiltro),'CLIENTE',QryClientes);
end;

procedure TfrmCadOS.dtEditDet1NewRecord(DataSet: TDataSet);
begin
  inherited;
  dtEditDet1CODIGO.value := dtEditCODIGO.value;
end;

procedure TfrmCadOS.dtEditDet2AfterInsert(DataSet: TDataSet);
begin
  inherited;
  
  dtEditDet2CODIGO.Value    := dtEditCODIGO.Value;
  dtEditDet2DT_INICIO.Value := DateOF(DMApp.DataServidor);
  dtEditDet2HR_INICIO.Value := TimeOF(DMApp.DataServidor)-0.003;
  dtEditDet2DT_FIM.Value := DateOF(DMApp.DataServidor);
  dtEditDet2HR_FIM.Value := TimeOF(DMApp.DataServidor);
  dtEditDet2USUARIO.value := dmApp.USR_CONECTADO;
  dtEditDet2COD_TECNICO.value := dtEditMECANICO.value;

  dtEditDet2DT_LANCTO.value := DateOF(DMApp.DataServidor);
end;

procedure TfrmCadOS.dtEditDet2HR_FIMChange(Sender: TField);
var
  DATA_INI  , DATA_FIM,
  HORA_INI  , HORA_FIM,
  INTER_INI , INTER_FIM,
  TRAB_INI  , TRAB_FIM : String;
  DtFim : TDate;
  HrFim : TTime;
begin
  inherited;

  DATA_INI := DateToStr(dtEditDet2DT_INICIO.Value);
  HORA_INI := TimeToStr(dtEditDet2HR_INICIO.Value);

  //** Data_Fim se não estiver preenchido pegara data_atual
  if dtEditDet2DT_FIM.Text='' then
    DATA_FIM := DateToStr(dmapp.DataServidor)
  else
    DATA_FIM := DateToStr(dtEditDet2DT_FIM.Value   );

  //** Hora_Fim se não estiver preenchido pegara hora_atual
  if dtEditDet2HR_FIM.Text='00:00:00' then
    HORA_FIM := TimeToStr(dmapp.DataServidor)
  else
    HORA_FIM := TimeToStr(dtEditDet2HR_FIM.Value   );

    INTER_INI:= '11:00:00';
    INTER_FIM:= '13:00:00';
    TRAB_INI := '08:00:00';
    TRAB_FIM := '18:00:00';

    dtEditDet2QTDE_HORA.Value  := HORAS_TRABALHADAS(DATA_INI  , DATA_FIM,
                                                             HORA_INI  , HORA_FIM,
                                                             INTER_INI , INTER_FIM,
                                                             TRAB_INI  , TRAB_FIM);
end;

procedure TfrmCadOS.dtEditDet2KM_FINALChange(Sender: TField);
begin
  inherited;
  dtEditDet2KM_RODADO.value := dtEditDet2KM_FINAL.asFloat - dtEditDet2KM_INICIAL.asFloat;
end;

procedure TfrmCadOS.btnTimerClick(Sender: TObject);
begin
  inherited;
  Timer.Enabled := not Timer.Enabled;
  if not Timer.Enabled then
  begin
    btnTimer.Colors.Default := $0088C4FF;
    btnTimer.caption := 'Timer '+IntToStr(Trunc(Timer.Interval/60000))+' Minutos [Desabilitado]';
    pbTimer.Visible := false;
    TimerRetroceder.enabled := false;
  end
  else
  begin
    btnTimer.Colors.Default := $00B3FFB3;
    btnTimer.caption := 'Timer '+IntToStr(Trunc(Timer.Interval/60000))+' Minutos [Habilitado]';
    pbTimer.Position := 0;
    pbTimer.Visible := true;
    TimerRetroceder.enabled := true;
  end;
end;

procedure TfrmCadOS.TimerTimer(Sender: TObject);
begin
  inherited;
  ActFilter.Execute;
  pbTimer.Position := 0;
end;

procedure TfrmCadOS.dtListCalcFields(DataSet: TDataSet);
var
  DATA_INI  , DATA_FIM,
  HORA_INI  , HORA_FIM,
  INTER_INI , INTER_FIM,
  TRAB_INI  , TRAB_FIM : STRING;
  DataServidor : TDateTime;
begin
  inherited;
  //-->> Pega o tempo de resposta para cada contrato com seu respectivo produto
  if (dtListOFC_DATA_FECHAMENTO.IsNull)or(dtListOFC_DATA_FECHAMENTO.AsString = '') then
  begin
    DataServidor := dmApp.data_servidor;
    DATA_INI := DateToStr(dtListOFC_DT_ENTRADA.asDateTime);
    DATA_FIM := DateToStr(DataServidor);

    if StrtoDate(DATA_INI) > StrtoDate(DATA_FIM) then //
    begin
      dtListTEMPO_GASTO.Value := 0;
      dtListCP_TEMPO_RESPOSTA.value := 10;
      exit;
    end;


    HORA_INI := TimeToStr(dtListOFC_HR_ENTRADA.value);
    HORA_FIM := TimeToStr(DataServidor);
    INTER_INI:= '11:00:00';
    INTER_FIM:= '13:00:00';
    TRAB_INI := '08:00:00';
    TRAB_FIM := '18:00:00';
    dtListTEMPO_GASTO.Value    := HORAS_CORRIDA(DATA_INI  , DATA_FIM,
                                                            HORA_INI  , HORA_FIM,
                                                            INTER_INI , INTER_FIM,
                                                            TRAB_INI  , TRAB_FIM);
  end;
end;

function TfrmCadOS.GerarTimer(Data: TDateTime):  String;
var
  iData1, iData2:  String;
begin
  iData1 := TimeToStr(Data);
  iData2 := TimeToStr( (StrToTime(iData1) - 0.0000115741) );
  iData1 := iData2;

  Result := iData1;
end;

procedure TfrmCadOS.TimerRetrocederTimer(Sender: TObject);
begin
  inherited;
  pbTimer.Position := pbTimer.Position + 1;
end;

procedure TfrmCadOS.FormShow(Sender: TObject);
begin
  inherited;
  btnTimer.caption := 'Timer '+IntToStr(Trunc(Timer.Interval/60000))+' Minutos [Desabilitado]';
  pbTimer.Position := 0;
  pbTimer.Properties.Max := (Timer.Interval/1000);
end;

procedure TfrmCadOS.BtnMovimentoStatusClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadStatusServico,dtEditDet2,'COD_STATUS',QryMovimentoStatus);
end;

procedure TfrmCadOS.BtnTipoMovimentoClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadTipoMovimento,dtEditDet2,'COD_TIPO_MOVTO',QryTipoMovimento);
end;

procedure TfrmCadOS.cxButton1Click(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadTecnicos,dtEditDet2,'COD_TECNICO',QryMovimentoTecnico);
end;

procedure TfrmCadOS.dtEditAfterPost(DataSet: TDataSet);
var  
  existe : variant;
  sql : string;
begin
  inherited;
  //Lançando a atividade de abertura dos trabalhos
  dtEditDet2.FetchAll;
  if (dtEditDet2.RecordCount = 0) then
  begin
    if application.messagebox('Deseja registrar a ativididade de criação da OS?','Aviso', mb_yesno + mb_iconquestion) = id_yes then
    begin
      dtEditDet2.open;
      dtEditDet2.Append;
      dtEditDet2CNPJ.value := dmApp.cnpj;
      dtEditDet2TIPO.value := 'A';
      dtEditDet2DT_INICIO.value := DateOF(dtEditDATA.value);
      dtEditDet2HR_INICIO.value := Timeof(dtEditDATA.value);
      dtEditDet2DT_FIM.value := DateOF(dtEditDATA.value);
      dtEditDet2HR_FIM.value := TimeOf(dmApp.Data_Servidor);
      dtEditDet2OBSERVACAO.Value :=  dtEditINFORMACOES.Value;
      dtEditDet2.Post;
    end;
  end else
  begin
    if (dtEditDATA_FECHAMENTO.value > 0) then
    begin
      sql := 'select count(*) from ofc_ordem_servico_intervalo o where o.cnpj =  '+QuotedStr(dmApp.cnpj)+' and o.codigo = '+dtEditcodigo.asstring+' and o.tipo = ''F''';
      existe := RetornaValor(sql,dmapp.Transaction);

      if (existe <= 0) then
      begin
        if application.messagebox('Deseja registrar a ativididade de fechamento da OS?','Aviso', mb_yesno + mb_iconquestion) = id_yes then
        begin   
          dtEditDet2.open;
          dtEditDet2.Append;
          dtEditDet2CNPJ.value := dmApp.cnpj;
          dtEditDet2TIPO.value := 'F';
          dtEditDet2DT_INICIO.value := DateOF(dtEditDATA_FECHAMENTO.value);
          dtEditDet2HR_INICIO.value := Timeof(dtEditHR_FECHAMENTO.Value)-0.003;
          dtEditDet2DT_FIM.value := DateOF(dtEditDATA_FECHAMENTO.value);
          dtEditDet2HR_FIM.value := Timeof(dtEditHR_FECHAMENTO.Value);
          dtEditDet2OBSERVACAO.Value :=  dtEditOBS_FECHAMENTO.Value;
          dtEditDet2.Post;
        end;
      end;

      {if ((dmApp.OFC_GERA_FAT_AUTOMATICO = 'S') and (dtEditVENDA.asInteger <= 0)) then
        ActGeraVenda.Execute;  }
    end;
  end;
end;

procedure TfrmCadOS.ActGeraVendaExecute(Sender: TObject);
var
   Prod, Codigo: String ;
   Numero, Nf: Integer;
begin
  inherited;
  //validando a geração de venda
  if (dtEditVENDA.asInteger > 0) then
  begin
    Application.MessageBox(Pchar('Impossível gerar venda.'+#13+'OS já possui venda vinculada'),'Aviso',mb_iconerror + mb_ok);
    exit;
  end;

  //-->> Caso esteja em modo de edição/inserção 'salva'
  if dsRegistro.DataSet.State in [ dsedit, dsinsert ] then
     dsRegistro.DataSet.Post;

  //-->> Verifica quantidade de itens na Ordem de Serviço
  if (( arredonda( dtEditTotal.Value,2 ) <= 0 ) AND ( DMAPP.PDV_VALOR_ZERADO <> 'S' )) then
  begin
   Application.MessageBox('Não existem produtos para faturamento','Aviso',mb_iconerror + mb_ok);
   PgcMaster.ActivePageIndex := 0;
   Exit;
  end;

{  //-->> Confere Parcelamento
  With DmServicos do
  begin
      Valida_Forma.Close ;
      Valida_Forma.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
      Valida_Forma.ParamByName ('CODIGO').AsInteger := dtEditFORMA_PAGTO.Value ;
      Valida_Forma.Prepare ;
      Valida_Forma.Open ;
      if ( arredonda(dtEditDiferenca.Value,2) <> 0 ) and ( dtEditA_VISTA.Value <> 'S' )then
      begin
        MessageDlg('O Parcelamento Não Confere, Verifique!',MtError,[MbOk],0);
        PgcMaster.ActivePageIndex := 1;
        Exit;
      end;
      DmServicos.Valida_Forma.Close ;
  end;      }


  Numero := DmaPP.Gerar_Venda_OS( DmApp.Cnpj, dtEditCodigo.Value, dtEditPESSOA_FJ.Value );
  Application.MessageBox(Pchar('Venda Nº ' + inttostr(Numero)),'Aviso',mb_iconinformation + mb_ok);


  Sair := True ;
  close ;
end;

end.
