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
   cxGroupBox, cxMemo, cxCheckBox, cxCalc, dxmdaset, cxRadioGroup,DateUtils;

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
    dtListTEMPO_RESPOSTA: TFloatField;
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
    TVRegistroTEMPO_RESPOSTA: TcxGridDBBandedColumn;
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
    EdCliente2: TcxDBLookupComboBox;
    btnCliente3: TcxButton;
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
    dtEditGCNPJ: TIBStringField;
    dtEditGCODIGO: TIntegerField;
    dtEditTITULO: TIBStringField;
    dtEditST_FECHADO: TIBStringField;
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
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTimeEdit2: TcxDBTimeEdit;
    cxLabel21: TcxLabel;
    cxLabel26: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel29: TcxLabel;
    cxDBMemo2: TcxDBMemo;
    cxDBCheckBox1: TcxDBCheckBox;
    dtEditTROCA_CILINDRO: TIBStringField;
    dtListTROCA_CILINDRO: TIBStringField;
    TVRegistroTROCA_CILINDRO: TcxGridDBBandedColumn;
    cxDBTextEdit4: TcxDBTextEdit;
    Label10: TcxLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label9: TcxLabel;
    Label7: TcxLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    dtListDet1CNPJ: TIBStringField;
    dtListDet1CODIGO: TIntegerField;
    dtListDet1NOME: TIBStringField;
    dtListDet1QUANTIDADE: TFloatField;
    dtListDet1SERVICO: TIntegerField;
    dtListDet1UNITARIO: TFloatField;
    dtListDet1COD_PRODUTO: TIBStringField;
    dtListDet1CODIGO_TECNICO: TIntegerField;
    dtListDet1NOME_PRODUTO: TIBStringField;
    dtListDet1NOMETEC: TIBStringField;
    dtListDet1TIPO_SERVICO: TIBStringField;
    TVDet1CNPJ: TcxGridDBColumn;
    TVDet1CODIGO: TcxGridDBColumn;
    TVDet1NOME: TcxGridDBColumn;
    TVDet1QUANTIDADE: TcxGridDBColumn;
    TVDet1SERVICO: TcxGridDBColumn;
    TVDet1UNITARIO: TcxGridDBColumn;
    TVDet1SELECIONADO: TcxGridDBColumn;
    TVDet1COD_PRODUTO: TcxGridDBColumn;
    TVDet1CODIGO_TECNICO: TcxGridDBColumn;
    TVDet1NOME_PRODUTO: TcxGridDBColumn;
    TVDet1NOMETEC: TcxGridDBColumn;
    TVDet1TIPO_SERVICO: TcxGridDBColumn;
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
    cxDBCalcEdit3: TcxDBCalcEdit;
    cxLabel32: TcxLabel;
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
    dtEditTROCA_FUSAO: TIBStringField;
    dtEditTROCA_BELT: TIBStringField;
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
    cbCliente: TcxDBLookupComboBox;
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
    dtEditATIVO: TIBStringField;
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
    procedure pnlFiltroExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Procedure Filtrar(inicial:boolean=false);
  public
    { Public declarations }
  end;

var
  frmCadOS: TfrmCadOS;

implementation

uses UntCadStatusServico, UntCadTecnicos, UntCadDefeitos,
  UntCadServicoExecutado, UntCadMotivosDevolucao,
  UntCadProblemaIdentificado, Application_DM, 
  SerieCustomizaveis_DM, SeriesCustomizaveis, Funcoes;

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
  QryEquipCliente.parambyname('cod_cliente').value := dtEditPESSOA_FJ.value;
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

  sql := 'select prd.cod_tecnico from est_produtos prd where prd.cnpj ='+QuotedStr(dmApp.cnpj)+' and prd.codigo = '+QuotedStr(dtEditPRODUTO.value);
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
    dtEditDATA_FECHAMENTO.Value := DataHora;
    dtEditHR_FECHAMENTO.Value := DataHora;
  end
  else if ((QryStatusPADRAO_ENVIO.value = 'S') and (dtEditDT_ATRIBUICAO.IsNull)) then
  begin
    DataHora := dmApp.DataServidor;
    dtEditDT_ATRIBUICAO.Value := DataHora;
    dtEditHR_ATRIBUICAO.Value := DataHora;
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
       if(( ValueGasto + 3) >= ValueResposta)then
         ACanvas.Canvas.Brush.Color := $008484FF;
     end
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
  Filtrar(true);
  inherited;

end;

procedure TfrmCadOS.Filtrar(inicial: boolean);
var
  filtro : string;
Begin
  if (inicial) then
    mtbFiltroDATA_INICIAL.Value := dmApp.OFC_DATA_BASE_MAN_OS;


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

   if trim(edtSerie.Text) <> '' then
     filtro := filtro + ' and prd.serie = '+QuoTedStr(mtbFiltroSERIE.AsString);

   dtList.sql.text := sqloriginal + filtro;

   //Data base de filtro de OS, cliente pode parametrizar uma data minima para o filtro a fim melhorar o desempenho do sistema
   if (dmApp.OFC_DATA_BASE_MAN_OS > 0) then
     dtList.parambyname('OFC_DATA_BASE_MAN_OS').AsDate := dmApp.OFC_DATA_BASE_MAN_OS
   else
     dtList.parambyname('OFC_DATA_BASE_MAN_OS').AsDate := StrToDate('01/01/2001');
  

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

procedure TfrmCadOS.pnlFiltroExit(Sender: TObject);
begin
  Filtrar(false);
  inherited;
end;

procedure TfrmCadOS.FormCreate(Sender: TObject);
begin
  inherited;
  mtbFiltroTIPO_STATUS.value := 0;
end;

end.
