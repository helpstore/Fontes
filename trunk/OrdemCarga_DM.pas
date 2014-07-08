  unit OrdemCarga_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBStoredProc, IBQuery, IBDatabase, Variants;

type
  TDmOrdemCarga = class(TDataModule)
    OrdemCarga: TIBDataSet;
    OrdemCargaItens: TIBDataSet;
    OrdemCargaItensCARREGADO: TFloatField;
    OrdemCargaItensCNPJ: TIBStringField;
    OrdemCargaItensCODIGO: TIntegerField;
    OrdemCargaItensENTREGUE: TFloatField;
    OrdemCargaItensGRADE: TIBStringField;
    OrdemCargaItensNOME_PRODUTO: TIBStringField;
    OrdemCargaItensNUMERO: TIBStringField;
    OrdemCargaItensPRODUTO: TIBStringField;
    OrdemCargaItensQUANTIDADE: TFloatField;
    OrdemCargaItensSEQUENCIA: TSmallintField;
    OrdemCargaItensUNIDADE: TIBStringField;
    Gera_OrdemCarga: TIBStoredProc;
    edtLayoutRequisicao: TIBDataSet;
    edtLayoutRequisicaoCNPJ: TIBStringField;
    dsLayoutRequisicao: TDataSource;
    edtLayoutRequisicaoCONFIG_REQUISICAO: TMemoField;
    qrySeries_Requisicao: TIBQuery;
    dsSeries_Requisicao: TDataSource;
    qrySeries_RequisicaoCLIENTE: TIBStringField;
    qrySeries_RequisicaoCIDADE: TIBStringField;
    qrySeries_RequisicaoENDERECO_CLI: TIBStringField;
    qrySeries_RequisicaoCOD_VENDA: TIntegerField;
    qrySeries_RequisicaoCOD_CLIENTE: TIntegerField;
    qrySeries_RequisicaoDT_VENDA: TDateField;
    qrySeries_RequisicaoDATA_CAIXA: TDateField;
    qrySeries_RequisicaoDESC_ACRESC: TFloatField;
    qrySeries_RequisicaoDESC_ITEM: TFloatField;
    qrySeries_RequisicaoTOTAL: TFloatField;
    qrySeries_RequisicaoTOTAL_BRUTO: TFloatField;
    qrySeries_RequisicaoNUM_CUPOM: TIntegerField;
    qrySeries_RequisicaoNUM_NF: TIntegerField;
    qrySeries_RequisicaoNOME_VENDEDOR: TIBStringField;
    qrySeries_RequisicaoPRODUTO: TIBStringField;
    qrySeries_RequisicaoVDI_GRADE: TIBStringField;
    qrySeries_RequisicaoVDI_NUMERO: TIBStringField;
    qrySeries_RequisicaoFORMA_PAGTO: TIBStringField;
    qrySeries_RequisicaoSEQUENCIA: TIntegerField;
    qrySeries_RequisicaoQUANTIDADE: TFloatField;
    qrySeries_RequisicaoPRC_UNITARIO: TFloatField;
    qrySeries_RequisicaoPRC_UNITARIO_LIQ: TFloatField;
    qrySeries_RequisicaoTOTAL_ITEM: TFloatField;
    qrySeries_RequisicaoPARCELAMENTO: TIBStringField;
    qrySeries_RequisicaoCOD_PRODUTO: TIBStringField;
    qrySeries_RequisicaoBAIRRO: TIBStringField;
    qrySeries_RequisicaoCOMPLEMENTO: TIBStringField;
    qrySeries_RequisicaoPCT_ITEM_DESCTO: TFloatField;
    qrySeries_RequisicaoUNIDADE: TIBStringField;
    qrySeries_RequisicaoPESSOA_FJ: TIntegerField;
    qrySeries_RequisicaoCGC_CPF_CLI: TIBStringField;
    qrySeries_RequisicaoTIPO_DOCTO: TIBStringField;
    qrySeries_RequisicaoNOME_TIPO_DOCTO: TIBStringField;
    qrySeries_RequisicaoRG_IE: TIBStringField;
    qrySeries_RequisicaoHORA: TTimeField;
    qrySeries_RequisicaoPCT_DESCTO_VENDA: TFloatField;
    qrySeries_RequisicaoCPF_CGC: TIBStringField;
    qrySeries_RequisicaoCEP: TIBStringField;
    qrySeries_RequisicaoCEP_EMP: TIBStringField;
    qrySeries_RequisicaoBAIRRO_EMP: TIBStringField;
    qrySeries_RequisicaoFONE: TIBStringField;
    qrySeries_RequisicaoFONE_CLIENTE: TIBStringField;
    qrySeries_RequisicaoENDERECO_EMP: TIBStringField;
    qrySeries_RequisicaoFANTASIA_CLI: TIBStringField;
    qrySeries_RequisicaoEMPRESA: TIBStringField;
    qrySeries_RequisicaoCIDADE_EMP: TIBStringField;
    qrySeries_RequisicaoCNPJ_EMP: TIBStringField;
    qrySeries_RequisicaoOBSERVACAO: TIBStringField;
    qrySeries_RequisicaoCONT_ITENS: TIBBCDField;
    qrySeries_RequisicaoVOLUME: TIBBCDField;
    qrySeries_RequisicaoPESO: TIBBCDField;
    qrySeries_RequisicaoMRC_CODIGO: TIntegerField;
    qrySeries_RequisicaoMRC_NOME: TIBStringField;
    qrySeries_RequisicaoPRO_NOME: TIBStringField;
    qrySeries_RequisicaoPRO_PROPRIETARIO: TIBStringField;
    qrySeries_RequisicaoPRO_IE: TIBStringField;
    qrySeries_RequisicaoPRO_PROPRIEDADE: TIntegerField;
    qrySeries_RequisicaoPRO_ENDERECO: TIntegerField;
    qrySeries_RequisicaoPRO_COMPLEMENTO: TIBStringField;
    qrySeries_RequisicaoPRO_CIDADE: TIntegerField;
    qrySeries_RequisicaoPRO_UF: TIBStringField;
    qrySeries_RequisicaoPRO_CEP: TIBStringField;
    qrySeries_RequisicaoPRO_AREA_TOTAL: TIBStringField;
    qrySeries_RequisicaoPRO_ATIVA: TIBStringField;
    qrySeries_RequisicaoPRO_BAIRRO: TIntegerField;
    qrySeries_RequisicaoPRO_NUMERO: TIBStringField;
    qrySeries_RequisicaoPRO_CPF: TIBStringField;
    qrySeries_RequisicaoPRO_TECNICO: TIntegerField;
    qrySeries_RequisicaoPSA_CELULAR: TIBStringField;
    qrySeries_RequisicaoPSA_FAX: TIBStringField;
    qrySeries_RequisicaoGRD_GRADE: TIBStringField;
    qrySeries_RequisicaoGRD_MATERIAL: TIntegerField;
    qrySeries_RequisicaoGRD_COR: TIntegerField;
    qrySeries_RequisicaoGRD_NOME_MATERIAL: TIBStringField;
    qrySeries_RequisicaoGRD_NOME_COR: TIBStringField;
    qrySeries_RequisicaoGRD_PERFIL: TIntegerField;
    qrySeries_RequisicaoGRD_NOME_PERFIL: TIBStringField;
    qrySeries_RequisicaoGRD_NUMERO: TIBStringField;
    qrySeries_RequisicaoGRD_ORDEM: TIntegerField;
    qrySeries_RequisicaoPC_PARCELAMENTO: TIBStringField;
    qrySeries_RequisicaoVDI_CARREGADO: TFloatField;
    qrySeries_RequisicaoVDI_CARREGAR: TFloatField;
    qrySeries_RequisicaoVDI_ENTREGUE: TFloatField;
    qrySeries_RequisicaoVD_ORDEM_CARGA: TIntegerField;
    OrdemCargaFormacao: TIBDataSet;
    FormacaoItens: TIBDataSet;
    Formacao: TIBDataSet;
    FormacaoCNPJ: TIBStringField;
    FormacaoCODIGO: TIntegerField;
    FormacaoNOME_MOTORISTA: TIBStringField;
    FormacaoSTATUS: TIntegerField;
    qListagemProdutos: TIBQuery;
    qListagemProdutosCRGI_PRODUTO: TIBStringField;
    qListagemProdutosCRGI_NOME_PRODUTO: TIBStringField;
    qListagemProdutosCRGI_GRADE: TIBStringField;
    qListagemProdutosCRGI_NUMERO: TIBStringField;
    qListagemProdutosCRGI_UNIDADE: TIBStringField;
    qListagemProdutosCRGI_CARREGADO: TFloatField;
    dsListagemProdutos: TDataSource;
    dsRota: TDataSource;
    qRota: TIBQuery;
    qRotaCRG_CODIGO: TIntegerField;
    qRotaCRG_CODIGO_VND: TIntegerField;
    qRotaCRG_DATA: TDateTimeField;
    qRotaCRG_NOME_RECEBEDOR: TIBStringField;
    qRotaCRG_LOGRADOURO: TIBStringField;
    qRotaCRG_NUMERO: TIBStringField;
    qRotaCRG_BAIRRO: TIBStringField;
    qRotaCRG_CEP: TIBStringField;
    qRotaCRG_CIDADE: TIBStringField;
    qRotaCRG_COMPLEMENTO: TIBStringField;
    qRotaCRG_DT_ENTREGA: TDateTimeField;
    qRotaCRG_HR_ENTREGA: TTimeField;
    qRotaCRG_OBSERVACAO: TBlobField;
    qRotaCRG_PESO_BRUTO: TFloatField;
    qRotaCRG_PESO_LIQUIDO: TFloatField;
    qRotaCRG_STATUS: TIntegerField;
    qRotaCRG_UF: TIBStringField;
    qRotaCRG_USUARIO: TIntegerField;
    FormacaoUSUARIO: TIntegerField;
    qRotaCRGF_NOME_MOTORISTA: TIBStringField;
    qRotaCRGF_STATUS: TIntegerField;
    qRotaCRGF_USUARIO: TIntegerField;
    qRotaE_NOME: TIBStringField;
    qRotaE_FONE: TIBStringField;
    qRotaE_CEP: TIBStringField;
    qRotaE_BAIRRO: TIBStringField;
    qRotaE_CIDADE: TIBStringField;
    qRotaE_CNPJ: TIBStringField;
    qRotaCRGF_BAIRRO: TIBStringField;
    qRotaCRGF_CIDADE: TIBStringField;
    qRotaCRGF_CNPJ_CPF: TIBStringField;
    qRotaCRGF_FONE: TIBStringField;
    qRotaCRGF_IE_RG: TIBStringField;
    qRotaCRGF_LOGRADOURO: TIBStringField;
    qRotaCRGF_NUMERO: TIBStringField;
    qRotaCRGF_CODIGO: TIntegerField;
    qRotaE_ENDERECO: TIBStringField;
    FormacaoLOGRADOURO: TIBStringField;
    FormacaoCIDADE: TIBStringField;
    FormacaoBAIRRO: TIBStringField;
    FormacaoNUMERO: TIBStringField;
    FormacaoFONE: TIBStringField;
    FormacaoCNPJ_CPF: TIBStringField;
    FormacaoIE_RG: TIBStringField;
    qListagemProdutosPRD_LOCALIZACAO_1: TIBStringField;
    qListagemProdutosPRD_LOCALIZACAO_2: TIBStringField;
    qListagemProdutosPRD_LOCALIZACAO_3: TIBStringField;
    qListagemProdutosE_NOME: TIBStringField;
    qListagemProdutosE_FONE: TIBStringField;
    qListagemProdutosE_ENDERECO: TIBStringField;
    qListagemProdutosE_CEP: TIBStringField;
    qListagemProdutosE_BAIRRO: TIBStringField;
    qListagemProdutosE_CIDADE: TIBStringField;
    qListagemProdutosE_CNPJ: TIBStringField;
    qImportaDadosPed: TIBQuery;
    qImportaDadosPedFANTASIA: TIBStringField;
    qImportaDadosPedENDERECO: TIBStringField;
    qImportaDadosPedBAIRRO: TIBStringField;
    qImportaDadosPedNUMERO: TIBStringField;
    qImportaDadosPedCOMPLEMENTO: TIBStringField;
    qImportaDadosPedCEP: TIBStringField;
    qImportaDadosPedCIDADE: TIBStringField;
    qImportaDadosPedUF: TIBStringField;
    qImportaDadosPedOBS: TBlobField;
    edtLayoutDevolucao: TIBDataSet;
    dsLayoutDevolucao: TDataSource;
    edtLayoutDevolucaoCONFIG_DEVOLUCAO: TMemoField;
    edtLayoutDevolucaoCNPJ: TIBStringField;
    OrdemCargaItensDEVOLVIDO: TFloatField;
    qrySeries_RequisicaoVDI_DEVOLVIDO: TFloatField;
    qrySeries_RequisicaoVDI_ENTREGAR: TFloatField;
    qrySeries_RequisicaoVDI_DEVOLVER: TFloatField;
    qrySeries_RequisicaoCGRI_CARREGADO: TFloatField;
    qrySeries_RequisicaoCGRI_DEVOLVIDO: TFloatField;
    qrySeries_RequisicaoCGRI_ENTREGUE: TFloatField;
    qrySeries_RequisicaoCGRI_QUANTIDADE: TFloatField;
    qrySeries_Devolucao: TIBQuery;
    dsSeries_Devolucao: TDataSource;
    qrySeries_DevolucaoPSA_CLIENTE: TIBStringField;
    qrySeries_DevolucaoPSA_FANTASIA_CLI: TIBStringField;
    qrySeries_DevolucaoPSA_CIDADE: TIBStringField;
    qrySeries_DevolucaoPSA_ENDERECO_CLI: TIBStringField;
    qrySeries_DevolucaoVD_COD_VENDA: TIntegerField;
    qrySeries_DevolucaoVD_PESSOA_FJ: TIntegerField;
    qrySeries_DevolucaoVD_DT_VENDA: TDateField;
    qrySeries_DevolucaoVD_DATA_CAIXA: TDateField;
    qrySeries_DevolucaoVD_DESC_ACRESC: TFloatField;
    qrySeries_DevolucaoVD_TOTAL: TFloatField;
    qrySeries_DevolucaoVD_NUM_CUPOM: TIntegerField;
    qrySeries_DevolucaoVD_NUM_NF: TIntegerField;
    qrySeries_DevolucaoVD_OBSERVACAO: TIBStringField;
    qrySeries_DevolucaoVD_VOLUME: TIBBCDField;
    qrySeries_DevolucaoVD_PESO: TIBBCDField;
    qrySeries_DevolucaoVD_HORA: TTimeField;
    qrySeries_DevolucaoVD_TIPO_DOCTO: TIBStringField;
    qrySeries_DevolucaoVD_TOTAL_BRUTO: TFloatField;
    qrySeries_DevolucaoCOD_CLIENTE: TIntegerField;
    qrySeries_DevolucaoDESC_ITEM: TFloatField;
    qrySeries_DevolucaoNOME_VENDEDOR: TIBStringField;
    qrySeries_DevolucaoVD_ORDEM_CARGA: TIntegerField;
    qrySeries_DevolucaoPRODUTO: TIBStringField;
    qrySeries_DevolucaoFORMA_PAGTO: TIBStringField;
    qrySeries_DevolucaoSEQUENCIA: TIntegerField;
    qrySeries_DevolucaoQUANTIDADE: TFloatField;
    qrySeries_DevolucaoPRC_UNITARIO: TFloatField;
    qrySeries_DevolucaoPRC_UNITARIO_LIQ: TFloatField;
    qrySeries_DevolucaoTOTAL_ITEM: TFloatField;
    qrySeries_DevolucaoPARCELAMENTO: TIBStringField;
    qrySeries_DevolucaoCOD_PRODUTO: TIBStringField;
    qrySeries_DevolucaoBAIRRO: TIBStringField;
    qrySeries_DevolucaoCOMPLEMENTO: TIBStringField;
    qrySeries_DevolucaoPCT_ITEM_DESCTO: TFloatField;
    qrySeries_DevolucaoUNIDADE: TIBStringField;
    qrySeries_DevolucaoCGC_CPF_CLI: TIBStringField;
    qrySeries_DevolucaoNOME_TIPO_DOCTO: TIBStringField;
    qrySeries_DevolucaoRG_IE: TIBStringField;
    qrySeries_DevolucaoPCT_DESCTO_VENDA: TFloatField;
    qrySeries_DevolucaoCPF_CGC: TIBStringField;
    qrySeries_DevolucaoCEP: TIBStringField;
    qrySeries_DevolucaoCEP_EMP: TIBStringField;
    qrySeries_DevolucaoBAIRRO_EMP: TIBStringField;
    qrySeries_DevolucaoFONE: TIBStringField;
    qrySeries_DevolucaoFONE_CLIENTE: TIBStringField;
    qrySeries_DevolucaoENDERECO_EMP: TIBStringField;
    qrySeries_DevolucaoEMPRESA: TIBStringField;
    qrySeries_DevolucaoCIDADE_EMP: TIBStringField;
    qrySeries_DevolucaoCNPJ_EMP: TIBStringField;
    qrySeries_DevolucaoCONT_ITENS: TIBBCDField;
    qrySeries_DevolucaoMRC_CODIGO: TIntegerField;
    qrySeries_DevolucaoMRC_NOME: TIBStringField;
    qrySeries_DevolucaoPRO_NOME: TIBStringField;
    qrySeries_DevolucaoPRO_PROPRIETARIO: TIBStringField;
    qrySeries_DevolucaoPRO_IE: TIBStringField;
    qrySeries_DevolucaoPRO_PROPRIEDADE: TIntegerField;
    qrySeries_DevolucaoPRO_ENDERECO: TIntegerField;
    qrySeries_DevolucaoPRO_COMPLEMENTO: TIBStringField;
    qrySeries_DevolucaoPRO_CIDADE: TIntegerField;
    qrySeries_DevolucaoPRO_UF: TIBStringField;
    qrySeries_DevolucaoPRO_CEP: TIBStringField;
    qrySeries_DevolucaoPRO_AREA_TOTAL: TIBStringField;
    qrySeries_DevolucaoPRO_ATIVA: TIBStringField;
    qrySeries_DevolucaoPRO_BAIRRO: TIntegerField;
    qrySeries_DevolucaoPRO_NUMERO: TIBStringField;
    qrySeries_DevolucaoPRO_CPF: TIBStringField;
    qrySeries_DevolucaoPRO_TECNICO: TIntegerField;
    qrySeries_DevolucaoPSA_CELULAR: TIBStringField;
    qrySeries_DevolucaoPSA_FAX: TIBStringField;
    qrySeries_DevolucaoGRD_GRADE: TIBStringField;
    qrySeries_DevolucaoGRD_MATERIAL: TIntegerField;
    qrySeries_DevolucaoGRD_COR: TIntegerField;
    qrySeries_DevolucaoGRD_NOME_MATERIAL: TIBStringField;
    qrySeries_DevolucaoGRD_NOME_COR: TIBStringField;
    qrySeries_DevolucaoGRD_PERFIL: TIntegerField;
    qrySeries_DevolucaoGRD_NOME_PERFIL: TIBStringField;
    qrySeries_DevolucaoGRD_NUMERO: TIBStringField;
    qrySeries_DevolucaoGRD_ORDEM: TIntegerField;
    qrySeries_DevolucaoPC_PARCELAMENTO: TIBStringField;
    qrySeries_DevolucaoCGRI_CARREGADO: TFloatField;
    qrySeries_DevolucaoCGRI_DEVOLVIDO: TFloatField;
    qrySeries_DevolucaoCGRI_ENTREGUE: TFloatField;
    qrySeries_DevolucaoCGRI_QUANTIDADE: TFloatField;
    qrySeries_DevolucaoCGRI_GRADE: TIBStringField;
    qrySeries_DevolucaoCGRI_NUMERO: TIBStringField;
    OrdemCargaCNPJ: TIBStringField;
    OrdemCargaCODIGO_VND: TIntegerField;
    OrdemCargaCODIGO: TIntegerField;
    OrdemCargaDATA: TDateTimeField;
    OrdemCargaSTATUS: TIntegerField;
    OrdemCargaPESO_BRUTO: TFloatField;
    OrdemCargaPESO_LIQUIDO: TFloatField;
    OrdemCargaUSUARIO: TIntegerField;
    OrdemCargaDT_ENTREGA: TDateTimeField;
    OrdemCargaHR_ENTREGA: TTimeField;
    OrdemCargaNOME_RECEBEDOR: TIBStringField;
    OrdemCargaLOGRADOURO: TIBStringField;
    OrdemCargaNUMERO: TIBStringField;
    OrdemCargaBAIRRO: TIBStringField;
    OrdemCargaCOMPLEMENTO: TIBStringField;
    OrdemCargaCEP: TIBStringField;
    OrdemCargaCIDADE: TIBStringField;
    OrdemCargaUF: TIBStringField;
    OrdemCargaOBSERVACAO: TBlobField;
    OrdemCargaPSA_NOME_RAZAO: TIBStringField;
    OrdemCargaPSA_FANTASIA: TIBStringField;
    OrdemCargaVD_PESSOA_FJ: TIntegerField;
    OrdemCargaVD_CODIGO: TIntegerField;
    OrdemCargaVD_DATA: TDateTimeField;
    OrdemCargaVD_DATA_CAIXA: TDateTimeField;
    OrdemCargaVD_OBSERVACAO: TIBStringField;
    OrdemCargaVD_VOLUME: TFloatField;
    OrdemCargaVD_PESO: TFloatField;
    OrdemCargaVD_NOME_CONSUMIDOR: TIBStringField;
    OrdemCargaPSA_CELULAR: TIBStringField;
    OrdemCargaPSA_FAX: TIBStringField;
    OrdemCargaPSA_FONE: TIBStringField;
    OrdemCargaPSA_CPF_CGC: TIBStringField;
    OrdemCargaPSA_RG_IE: TIBStringField;
    IBQuery1: TIBQuery;
    OrdemCargaFormacaoCNPJ: TIBStringField;
    OrdemCargaFormacaoCODIGO_VND: TIntegerField;
    OrdemCargaFormacaoCODIGO: TIntegerField;
    OrdemCargaFormacaoDATA: TDateTimeField;
    OrdemCargaFormacaoSTATUS: TIntegerField;
    OrdemCargaFormacaoPESO_BRUTO: TFloatField;
    OrdemCargaFormacaoPESO_LIQUIDO: TFloatField;
    OrdemCargaFormacaoUSUARIO: TIntegerField;
    OrdemCargaFormacaoDT_ENTREGA: TDateTimeField;
    OrdemCargaFormacaoHR_ENTREGA: TTimeField;
    OrdemCargaFormacaoNOME_RECEBEDOR: TIBStringField;
    OrdemCargaFormacaoLOGRADOURO: TIBStringField;
    OrdemCargaFormacaoNUMERO: TIBStringField;
    OrdemCargaFormacaoBAIRRO: TIBStringField;
    OrdemCargaFormacaoCOMPLEMENTO: TIBStringField;
    OrdemCargaFormacaoCEP: TIBStringField;
    OrdemCargaFormacaoCIDADE: TIBStringField;
    OrdemCargaFormacaoUF: TIBStringField;
    OrdemCargaFormacaoOBSERVACAO: TBlobField;
    OrdemCargaFormacaoPSA_NOME_RAZAO: TIBStringField;
    OrdemCargaFormacaoPSA_FANTASIA: TIBStringField;
    OrdemCargaFormacaoVD_PESSOA_FJ: TIntegerField;
    OrdemCargaFormacaoVD_CODIGO: TIntegerField;
    OrdemCargaFormacaoVD_DATA: TDateTimeField;
    OrdemCargaFormacaoVD_DATA_CAIXA: TDateTimeField;
    OrdemCargaFormacaoVD_OBSERVACAO: TIBStringField;
    OrdemCargaFormacaoVD_VOLUME: TFloatField;
    OrdemCargaFormacaoVD_PESO: TFloatField;
    OrdemCargaFormacaoVD_NOME_CONSUMIDOR: TIBStringField;
    OrdemCargaFormacaoPSA_CELULAR: TIBStringField;
    OrdemCargaFormacaoPSA_FAX: TIBStringField;
    OrdemCargaFormacaoPSA_FONE: TIBStringField;
    OrdemCargaFormacaoPSA_CPF_CGC: TIBStringField;
    OrdemCargaFormacaoPSA_RG_IE: TIBStringField;
    FormacaoItensCNPJ: TIBStringField;
    FormacaoItensCODIGO: TIntegerField;
    FormacaoItensCRG_CARGA: TIntegerField;
    OrdemCargaItensCODIGO_LOTE: TIntegerField;
    OrdemCargaItensLOTE: TIBStringField;
    OrdemCargaItensMATERIAL: TIBStringField;
    OrdemCargaItensCOR: TIBStringField;
    OrdemCargaItensPERFIL: TIBStringField;
    qImportaDadosPedOBSERVACAO: TIBStringField;
    procedure Proc_Confirma_Carga( CodOrdCarga: Integer ) ;
    function Gerar_OrdemCarga(Cod_VND, Cod_Status, Cod_Usuario: integer):integer;
    procedure OpenOrdemCargaItem(CodOrdCarga: Integer);
    procedure RetiraItensCancelado(CodOrdCarga: Integer);
    procedure AtualizaCarregadoPedidoCONFIRMACAO;
    procedure AtualizaCarregadoPedidoDEVOLUCAO;
    procedure AjustaOrdemCarga;
    procedure AtualizaStatusPedido(CodVenda: string; Trans: TIBTransaction=nil);
    procedure FichaCarga(CodCarga: integer);
    procedure OpenOrdemCargaFinalizado;
    procedure OpenFormacaoItens(CodFormacao: integer);
    procedure OpenFormacao;
    procedure FormacaoNewRecord(DataSet: TDataSet);
    procedure FormacaoItensNewRecord(DataSet: TDataSet);
    procedure qProdutosFormacaoOpen(CodFormacao: integer);
    procedure qRotaOpen(CodFormacao: integer);
    procedure ImprimirRequisicao(CodOrdemCarga : integer);
    procedure ImprimirDevolucao(CodOrdemCarga : integer);    
    function SenhaGerencial:boolean;
    procedure ImportaDadosPedido;
  private
    { Private declarations }
    Carregado, Devolvido, Entregue, QtdePed :variant;
    Carregar, Devolver, Entregar :double;
    procedure CarregarVariaveisOrdemCarga(CodVenda, CodProduto : string; Trans: TIBTransaction=nil);
  public
    { Public declarations }
  end;

var
  DmOrdemCarga: TDmOrdemCarga;

implementation

uses Application_DM, Funcoes, ConfirmarCarregamentoItens, Vendas_DM2,
  Procedures3_DM, FichaCarga, CarregarItens, MensagemClassificacao_Form,
  DevolverItens;


{$R *.DFM}

{ TDmOrdemCarga }

procedure TDmOrdemCarga.RetiraItensCancelado(CodOrdCarga: Integer);
begin
  OpenOrdemCargaItem(CodOrdCarga);
  AtualizaCarregadoPedidoCONFIRMACAO;
end;

function TDmOrdemCarga.Gerar_OrdemCarga(Cod_VND, Cod_Status, Cod_Usuario: integer):integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        Gera_OrdemCarga.ParamByName('CNPJ').asString          := DMApp.Cnpj;
        Gera_OrdemCarga.ParamByName('CODIGO_VND').asInteger   := Cod_VND;
        Gera_OrdemCarga.ParamByName('NEW_STATUS').asInteger   := Cod_Status;
        Gera_OrdemCarga.ParamByName('USUARIO').asInteger      := Cod_Usuario;
        Gera_OrdemCarga.ExecProc;
        Result := Gera_OrdemCarga.ParamByName('ORDEM_CARGA').ASINTEGER;

        DmApp.TransactionProc.CommitRetaining ;

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

procedure TDmOrdemCarga.OpenOrdemCargaItem(CodOrdCarga: Integer);
begin
     OrdemCargaItens.Close;
     OrdemCargaItens.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj;
     OrdemCargaItens.ParamByName ('CODIGO').AsInteger := CodOrdCarga;
     OrdemCargaItens.Prepare;
     OrdemCargaItens.Open;
end;

procedure TDmOrdemCarga.Proc_Confirma_Carga(CodOrdCarga: Integer);
begin
     OpenOrdemCargaItem(CodOrdCarga);
     if FrmConfirmarCarregamentoItens = Nil then
     begin
       FrmConfirmarCarregamentoItens := TFrmConfirmarCarregamentoItens.Create(Self);
       FrmConfirmarCarregamentoItens.Showmodal ;
       FrmConfirmarCarregamentoItens.Free   ;
       FrmConfirmarCarregamentoItens := Nil ;
     end;
end;

procedure TDmOrdemCarga.AtualizaCarregadoPedidoCONFIRMACAO;
begin
  DmOrdemCarga.OrdemCargaItens.first;
  while not DmOrdemCarga.OrdemCargaItens.eof do
  begin
        CarregarVariaveisOrdemCarga(DmOrdemCarga.OrdemCargaCODIGO_VND.AsString,
                                    QuotedStr(DmOrdemCarga.OrdemCargaItensPRODUTO.asstring),
                                    DmOrdemCarga.OrdemCarga.transaction);

        ExecSql('UPDATE FAT_VENDAS_ITENS SET CARREGADO = '+VarToStr(CARREGADO)+', ENTREGUE = '+VarToStr(ENTREGUE)+', DEVOLVIDO = '+VarToStr(DEVOLVIDO)+
                ' WHERE CODIGO = '+ DmOrdemCarga.OrdemCargaCODIGO_VND.AsString +
                ' and produto = '+QuotedStr(DmOrdemCarga.OrdemCargaItensPRODUTO.asstring)+
                ' and CNPJ ='''+dmapp.Cnpj+'''',DmOrdemCarga.OrdemCargaItens.transaction);

          DmOrdemCarga.OrdemCargaItens.next;
  end;
end;

procedure TDmOrdemCarga.AtualizaStatusPedido(CodVenda: string; Trans: TIBTransaction=nil);
begin
    { ------------------------[ Legenda "Fat Vendas" ]-------------------------------------
      Carregar  = Qtde para ser carregado no deposito
      Entregue  = Qtde entregue pelo vendedor, esse campo não sera carregado pelo deposito
      Carregado = Qtde carregado, confirmado após o carregador entregar a requisição.
      Devolvido = Qtde devolvido, confirmado após o carregador entregar a requisição.
      ------------------------------------------------------------------------------------- }
      QtdePed   := RetornaValor('select sum(coalesce(quantidade,0))'+
                                ' from FAT_VENDAS_ITENS'+
                                ' where codigo = '+CodVenda +
                                ' and cnpj = '''+dmapp.cnpj+'''',Trans);

      Carregado := RetornaValor('select sum(coalesce(carregado,0))'+
                                ' from FAT_VENDAS_ITENS'+
                                ' where codigo = '+CodVenda +
                                ' and cnpj = '''+dmapp.cnpj+'''',Trans);

      Entregue  := RetornaValor('select sum(coalesce(entregue,0))'+
                                ' from FAT_VENDAS_ITENS'+
                                ' where codigo = '+CodVenda +
                                ' and cnpj = '''+dmapp.cnpj+'''',Trans);

      Devolvido := RetornaValor('select sum(coalesce(devolvido,0))'+
                                ' from FAT_VENDAS_ITENS'+
                                ' where codigo = '+CodVenda +
                                ' and cnpj = '''+dmapp.cnpj+'''',Trans);

      //Carregado
      If (QtdePed = Carregado + Entregue - Devolvido) Then
      begin
          ExecSql('UPDATE FAT_VENDAS SET STATUS_CARREGAMENTO = 5 WHERE CODIGO = '+ CodVenda +
          ' and CNPJ ='''+dmapp.Cnpj+'''',Trans);
      end;
      //Parcialmente Carregado
      If (QtdePed > Carregado + Entregue - Devolvido) Then
      begin
          ExecSql('UPDATE FAT_VENDAS SET STATUS_CARREGAMENTO = 3 WHERE CODIGO = '+ CodVenda +
          ' and CNPJ ='''+dmapp.Cnpj+'''',Trans);
      end;
      //Aberto
      If (Carregado + Entregue - Devolvido = 0) Then
      begin
          ExecSql('UPDATE FAT_VENDAS SET STATUS_CARREGAMENTO = 0 WHERE CODIGO = '+ CodVenda +
          ' and CNPJ ='''+dmapp.Cnpj+'''',Trans);
      end;
end;

procedure TDmOrdemCarga.FichaCarga(CodCarga: integer);
begin
     DmOrdemCarga.OrdemCarga.edit;
     if FrmFichaCarga = Nil then
     begin
       FrmFichaCarga := TFrmFichaCarga.Create(Self);
       FrmFichaCarga.Showmodal ;
       FrmFichaCarga.Free   ;
       FrmFichaCarga := Nil ;
     end;
end;

procedure TDmOrdemCarga.OpenOrdemCargaFinalizado;
begin
    OrdemCargaFormacao.close;
    OrdemCargaFormacao.parambyname('cnpj').value := dmapp.cnpj;
    OrdemCargaFormacao.open;
end;

procedure TDmOrdemCarga.OpenFormacao;
begin
//
    Formacao.close;
    Formacao.parambyname('cnpj').value := dmapp.cnpj;
    Formacao.open;
    OpenFormacaoItens(FormacaoCODIGO.VALUE);
end;

procedure TDmOrdemCarga.OpenFormacaoItens(CodFormacao: integer);
begin
    //
    FormacaoItens.close;
    FormacaoItens.parambyname('cnpj').value := dmapp.cnpj;
    FormacaoItens.parambyname('codigo').value := FormacaoCODIGO.value;
    FormacaoItens.open;
end;

procedure TDmOrdemCarga.FormacaoNewRecord(DataSet: TDataSet);
begin
  FormacaoCNPJ.VALUE   := DMAPP.CNPJ;
  FormacaoSTATUS.VALUE := 1;
  FormacaoUSUARIO.VALUE := DMAPP.USR_CONECTADO;
end;

procedure TDmOrdemCarga.FormacaoItensNewRecord(DataSet: TDataSet);
begin
  FormacaoItensCNPJ.VALUE := DMAPP.CNPJ;
end;

procedure TDmOrdemCarga.AjustaOrdemCarga;
begin
      //Atualiza STATUS Ordem de Carga
      ExecSql('UPDATE CRG_ORDEM_CARGA SET  STATUS = 5, USUARIO = '+INTTOSTR(dmapp.USR_CONECTADO) +'  WHERE CODIGO = '+ DmOrdemCarga.OrdemCargaCODIGO.AsString +
      ' and CNPJ ='''+dmapp.Cnpj+'''',DmOrdemCarga.OrdemCarga.transaction);
      //Atualiza Campo Carregado
      ExecSql('UPDATE CRG_ORDEM_CARGA_ITENS SET QUANTIDADE = CARREGADO '+
              ' WHERE CODIGO = '+ DmOrdemCarga.OrdemCargaCODIGO.AsString +
              ' and CNPJ ='''+dmapp.Cnpj+'''',DmOrdemCarga.OrdemCarga.transaction);
end;

procedure TDmOrdemCarga.qProdutosFormacaoOpen(CodFormacao: integer);
begin
  qListagemProdutos.close;
  qListagemProdutos.parambyname('CNPJ').value            := DMAPP.CNPJ;
  qListagemProdutos.parambyname('CODIGO_FORMACAO').value := CodFormacao;
  qListagemProdutos.open;
end;

procedure TDmOrdemCarga.qRotaOpen(CodFormacao: integer);
begin
  qRota.Close;
  qRota.parambyname('cnpj').value            := dmapp.cnpj;
  qRota.parambyname('CODIGO_FORMACAO').value := CodFormacao;
  qRota.Open;
end;

procedure TDmOrdemCarga.ImprimirRequisicao(CodOrdemCarga : integer);
begin
    DmOrdemCarga.qrySeries_Requisicao.CLOSE;
    DmOrdemCarga.qrySeries_Requisicao.sql.clear;
    DmOrdemCarga.qrySeries_Requisicao.sql.text :=' select * from PCD_IMPRIME_SERIE_REQUISICAO(:ORDEM_CARGA,:cnpj)';
    DmOrdemCarga.qrySeries_Requisicao.ParamByName('cnpj').value := dmApp.cnpj;
    DmOrdemCarga.qrySeries_Requisicao.ParamByName('ORDEM_CARGA').value := CodOrdemCarga;
    DmOrdemCarga.qrySeries_Requisicao.open;
    //
    DmOrdemCarga.edtLayoutRequisicao.close;
    DmOrdemCarga.edtLayoutRequisicao.parambyname('cnpj').value := dmApp.cnpj;
    DmOrdemCarga.edtLayoutRequisicao.Open;

    if FrmCarregarItens = Nil then
        FrmCarregarItens := TFrmCarregarItens.Create(Self);

    FrmCarregarItens.rptSerieRequisicao.Template.DatabaseSettings.Name := DmOrdemCarga.edtLayoutRequisicaoCNPJ.Value;
    FrmCarregarItens.rptSerieRequisicao.Template.LoadFromDatabase;
    FrmCarregarItens.rptSerieRequisicao.print;
end;

function TDmOrdemCarga.SenhaGerencial: boolean;
begin
     Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);
     //
     FrmMensagemClassificacao.MEMO.Lines.Add (' Digite a Senha ');
     FrmMensagemClassificacao.MEMO.Lines.Add (' de Supervisor  ');
     //
     FrmMensagemClassificacao.EdSenha.Visible := true ;
     FrmMensagemClassificacao.Label6.Visible  := true ;
     //Se o Nível ou a Classificacao exigir senha e não foi digitada
     if FrmMensagemClassificacao.Showmodal = MrCancel
     then Begin
          MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
          Result := False ;
     end
     else begin
          Result := true ;
     end;
     FrmMensagemClassificacao.Free   ;
     FrmMensagemClassificacao := Nil ;
end;

procedure TDmOrdemCarga.ImportaDadosPedido;
begin
    qImportaDadosPed.close;
    qImportaDadosPed.parambyname('cnpj').value   := dmapp.cnpj;
    qImportaDadosPed.parambyname('codigo').value := OrdemCargaCODIGO_VND.VALUE;
    qImportaDadosPed.open;
    //
    OrdemCargaNOME_RECEBEDOR.VALUE := qImportaDadosPedFANTASIA.VALUE;
    OrdemCargaLOGRADOURO.VALUE     := qImportaDadosPedENDERECO.VALUE;
    OrdemCargaBAIRRO.VALUE         := qImportaDadosPedBAIRRO.VALUE;
    OrdemCargaNUMERO.VALUE         := qImportaDadosPedNUMERO.VALUE;
    OrdemCargaCOMPLEMENTO.VALUE    := qImportaDadosPedCOMPLEMENTO.VALUE;
    OrdemCargaCEP.VALUE            := qImportaDadosPedCEP.VALUE;
    OrdemCargaCIDADE.VALUE         := qImportaDadosPedCIDADE.VALUE;
    OrdemCargaUF.VALUE             := qImportaDadosPedUF.VALUE;
    OrdemCargaOBSERVACAO.VALUE     := qImportaDadosPedOBSERVACAO    .VALUE;    
end;

procedure TDmOrdemCarga.ImprimirDevolucao(CodOrdemCarga: integer);
begin
    DmOrdemCarga.qrySeries_Devolucao.CLOSE;
    DmOrdemCarga.qrySeries_Devolucao.sql.clear;
    DmOrdemCarga.qrySeries_Devolucao.sql.text :=' select * from PCD_IMPRIME_SERIE_DEVOLUCAO(:ORDEM_CARGA,:cnpj)';
    DmOrdemCarga.qrySeries_Devolucao.ParamByName('cnpj').value := dmApp.cnpj;
    DmOrdemCarga.qrySeries_Devolucao.ParamByName('ordem_carga').value := CodOrdemCarga;
    DmOrdemCarga.qrySeries_Devolucao.open;
    //
    DmOrdemCarga.edtLayoutDevolucao.close;
    DmOrdemCarga.edtLayoutDevolucao.parambyname('cnpj').value := dmApp.cnpj;
    DmOrdemCarga.edtLayoutDevolucao.Open;
    //
    if FrmDevolverItens = Nil then
        FrmDevolverItens := TFrmDevolverItens.Create(Self);
    //
    FrmDevolverItens.rptSerieDevolucao.Template.DatabaseSettings.Name := DmOrdemCarga.edtLayoutDevolucaoCNPJ.Value;
    FrmDevolverItens.rptSerieDevolucao.Template.LoadFromDatabase;
    FrmDevolverItens.rptSerieDevolucao.print;
end;

procedure TDmOrdemCarga.CarregarVariaveisOrdemCarga(CodVenda, CodProduto : string; Trans: TIBTransaction=nil);
begin
      QtdePed   := RetornaValor('select sum(coalesce(oci.QUANTIDADE,0))'+
                                ' from CRG_ORDEM_CARGA_ITENS oci'+
                                ' inner join crg_ordem_carga oc on (oc.codigo = oci.codigo and oc.cnpj = oci.cnpj)'+
                                ' where oc.CODIGO_VND = '    +CodVenda +
                                ' and oci.produto = '        +CodProduto+
                                ' and oci.cnpj = '           +QuotedStr(dmapp.cnpj),Trans);

      Devolvido := RetornaValor('select sum(coalesce(oci.DEVOLVIDO,0))'+
                                ' from CRG_ORDEM_CARGA_ITENS oci'+
                                ' inner join crg_ordem_carga oc on (oc.codigo = oci.codigo and oc.cnpj = oci.cnpj)'+
                                ' where oc.CODIGO_VND = '    +CodVenda +
                                ' and oci.produto = '        +CodProduto+
                                ' and oci.cnpj = '           +QuotedStr(dmapp.cnpj)+
                                ' and oc.status in (7)',Trans);

      Entregue  := RetornaValor('select sum(coalesce(oci.ENTREGUE,0))'+
                                ' from CRG_ORDEM_CARGA_ITENS oci'+
                                ' inner join crg_ordem_carga oc on (oc.codigo = oci.codigo and oc.cnpj = oci.cnpj)'+
                                ' where oc.CODIGO_VND = '    +CodVenda +
                                ' and oci.produto = '        +CodProduto+
                                ' and oci.cnpj = '           +QuotedStr(dmapp.cnpj)+
                                ' and oc.status in (1,2,3,4,5,6)',Trans);

      Carregado := RetornaValor('select sum(coalesce(oci.CARREGADO,0))'+
                                ' from CRG_ORDEM_CARGA_ITENS oci'+
                                ' inner join crg_ordem_carga oc on (oc.codigo = oci.codigo and oc.cnpj = oci.cnpj)'+
                                ' where oc.CODIGO_VND = '    +CodVenda +
                                ' and oci.produto = '        +CodProduto+
                                ' and oci.cnpj = '           +QuotedStr(dmapp.cnpj)+
                                ' and oc.status in (1,2,3,4,5,6)',Trans);

      if VarIsNull(Entregue) then
        Entregue := 0;

      if VarIsNull(Carregado) then
        Carregado := 0;

      if VarIsNull(Devolvido) then
        Devolvido := 0;
end;

procedure TDmOrdemCarga.AtualizaCarregadoPedidoDEVOLUCAO;
begin
  DmVendas2.CarregarItensFutura.first;
  while not DmVendas2.CarregarItensFutura.eof do
  begin
        //
        CarregarVariaveisOrdemCarga(DmVendas2.CarregarItensFuturaCODIGO.AsString,
                                    QuotedStr(DmVendas2.CarregarItensFuturaPRODUTO.asstring),
                                    DmVendas2.CarregarItensFutura.transaction);
        //
        ExecSql('UPDATE FAT_VENDAS_ITENS SET CARREGADO = '+VarToStr(CARREGADO)+
                ', ENTREGUE = '+VarToStr(ENTREGUE)+
                ', DEVOLVIDO = '+VarToStr(DEVOLVIDO)+
                ' WHERE CODIGO = '+ DmVendas2.CarregarItensFuturaCODIGO.AsString +
                ' and produto = '+QuotedStr(DmVendas2.CarregarItensFuturaPRODUTO.asstring)+
                ' and CNPJ ='''+dmapp.Cnpj+'''',DmVendas2.CarregarItensFutura.transaction);
        //
        DmVendas2.CarregarItensFutura.Next;
    end;
end;

end.
