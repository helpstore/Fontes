unit Estoque_Dm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, IBSQL, IBStoredProc;

type
  TDmEstoque = class(TDataModule)
    CONTAGEM: TIBDataSet;
    CONTAGEM_PRODUTO: TIBDataSet;
    CONTAGEM_PRODUTOCODIGO: TIntegerField;
    CONTAGEM_PRODUTOPRODUTO: TIBStringField;
    CONTAGEM_PRODUTOQUANTIDADE_ANTERIOR: TFloatField;
    CONTAGEM_PRODUTOQUANTIDADE: TFloatField;
    Geral: TIBQuery;
    ALTPRECO: TIBDataSet;
    ALTPRECOCODIGO: TIntegerField;
    ALTPRECODATA: TDateTimeField;
    ALTPRECODOCUMENTO: TIBStringField;
    ALTPRECOFECHADA: TIBStringField;
    ALTPRECOCNPJ: TIBStringField;
    DsAltPreco: TDataSource;
    ALTPRECO_PRODUTO: TIBDataSet;
    ALTPRECO_PRODUTOCNPJ: TIBStringField;
    ALTPRECO_PRODUTOCODIGO: TIntegerField;
    ALTPRECO_PRODUTOPORCENTAGEM: TFloatField;
    ALTPRECO_PRODUTOPRODUTO: TIBStringField;
    ALTPRECO_PRODUTOVALOR: TFloatField;
    ALTPRECO_PRODUTOVALOR_ANTERIOR: TFloatField;
    DsContagem: TDataSource;
    CONTAGEM_PRODUTOCNPJ: TIBStringField;
    ConfEtiquetas: TIBDataSet;
    ConfEtiquetasALTURA: TIntegerField;
    ConfEtiquetasCODIGO: TIntegerField;
    ConfEtiquetasCOLUNAS: TIntegerField;
    ConfEtiquetasESP_ENTCOL: TIntegerField;
    ConfEtiquetasESP_ENTLINHA: TIntegerField;
    ConfEtiquetasLARGURA: TIntegerField;
    ConfEtiquetasLINHAS: TIntegerField;
    ConfEtiquetasNOME: TIBStringField;
    ConfEtiquetasQTDECOL: TIntegerField;
    ConfEtiquetasQTDETQ: TIntegerField;
    ConfEtiquetasCNPJ: TIBStringField;
    ConfEtiquetasAPARTIR: TIntegerField;
    ConfEtiquetasLPP: TIBStringField;
    ConfEtiquetasFONTECODIGO: TIntegerField;
    ConfEtiquetasNEGRITOCODIGO: TIBStringField;
    ConfEtiquetasFONTENOME: TIntegerField;
    ConfEtiquetasNEGRITONOME: TIBStringField;
    ConfEtiquetasFONTEVALOR: TIntegerField;
    ConfEtiquetasNEGRITOVALOR: TIBStringField;
    ConfEtiquetasESQUERDA: TIntegerField;
    EtiquetaProd: TIBDataSet;
    EtiquetaProdCNPJ: TIBStringField;
    EtiquetaProdCODIGO: TIBStringField;
    EtiquetaProdNOME: TIBStringField;
    EtiquetaProdQUANTIDADE: TIntegerField;
    EtiquetaProdVALOR: TFloatField;
    Valida_Produto: TIBQuery;
    ALTPRECO_PRODUTONOME: TIBStringField;
    CONTAGEM_PRODUTONOME: TIBStringField;
    ALTPRECO_PRODUTOCODIGO_INTERNO: TIntegerField;
    ALTPRECO_UNID: TIBDataSet;
    ALTPRECO_UNIDCNPJ: TIBStringField;
    ALTPRECO_UNIDCODIGO: TIntegerField;
    ALTPRECO_UNIDDATA: TDateTimeField;
    ALTPRECO_UNIDDOCUMENTO: TIBStringField;
    ALTPRECO_UNIDFECHADA: TIBStringField;
    ALTPRECO_PRODUNID: TIBDataSet;
    DsAltPreco_Unid: TDataSource;
    ALTPRECO_PRODUNIDCNPJ: TIBStringField;
    ALTPRECO_PRODUNIDCODIGO: TIntegerField;
    ALTPRECO_PRODUNIDNOME: TIBStringField;
    ALTPRECO_PRODUNIDPORCENTAGEM: TFloatField;
    ALTPRECO_PRODUNIDUNIDADE: TIBStringField;
    SelUnidade: TIBQuery;
    SelUnidadeCNPJ: TIBStringField;
    SelUnidadeSIGLA: TIBStringField;
    SelUnidadeNOME: TIBStringField;
    ALTPRECO_MARCA: TIBDataSet;
    ALTPRECO_MARCACNPJ: TIBStringField;
    ALTPRECO_MARCACODIGO: TIntegerField;
    ALTPRECO_MARCADATA: TDateTimeField;
    ALTPRECO_MARCADOCUMENTO: TIBStringField;
    ALTPRECO_MARCAFECHADA: TIBStringField;
    DsAltPreco_Marca: TDataSource;
    ALTPRECO_PRODMARCA: TIBDataSet;
    ALTPRECO_PRODMARCACNPJ: TIBStringField;
    ALTPRECO_PRODMARCACODIGO: TIntegerField;
    ALTPRECO_PRODMARCAMARCA: TIntegerField;
    ALTPRECO_PRODMARCANOME: TIBStringField;
    ALTPRECO_PRODMARCAPORCENTAGEM: TFloatField;
    SelMarca: TIBQuery;
    SelMarcaCNPJ: TIBStringField;
    SelMarcaCODIGO: TIntegerField;
    SelMarcaNOME: TIBStringField;
    ALTPRECO_GRUPO: TIBDataSet;
    ALTPRECO_GRUPOCNPJ: TIBStringField;
    ALTPRECO_GRUPOCODIGO: TIntegerField;
    ALTPRECO_GRUPODATA: TDateTimeField;
    ALTPRECO_GRUPODOCUMENTO: TIBStringField;
    ALTPRECO_GRUPOFECHADA: TIBStringField;
    DsAltPrecoGrupo: TDataSource;
    ALTPRECO_PRODGRUPO: TIBDataSet;
    ALTPRECO_PRODGRUPOCNPJ: TIBStringField;
    ALTPRECO_PRODGRUPOCODIGO: TIntegerField;
    ALTPRECO_PRODGRUPOGRUPO: TIntegerField;
    ALTPRECO_PRODGRUPONOME: TIBStringField;
    ALTPRECO_PRODGRUPOPORCENTAGEM: TFloatField;
    SelGrupo: TIBQuery;
    SelGrupoBASE: TSmallintField;
    SelGrupoCNPJ: TIBStringField;
    SelGrupoCODIGO: TIntegerField;
    SelGrupoMAXIMO: TSmallintField;
    SelGrupoMINIMO: TSmallintField;
    SelGrupoNOME: TIBStringField;
    ALTPRECOIPI: TFloatField;
    ALTPRECOIMPOSTOS: TFloatField;
    ALTPRECO_PRODUTOCUSTO_LISTA: TFloatField;
    ALTPRECO_PRODUTOCUSTO_COLOCADO: TFloatField;
    Entradas_Produtos: TIBQuery;
    Entradas_ProdutosNDOCTO: TIBStringField;
    Entradas_ProdutosPRODUTO: TIBStringField;
    Entradas_ProdutosUNIDADE: TIBStringField;
    Entradas_ProdutosQUANTIDADE: TIBBCDField;
    Entradas_ProdutosPRC_UNITARIO: TIBBCDField;
    Entradas_ProdutosPERC_LUCRO: TIBBCDField;
    Entradas_ProdutosPRC_VENDA: TIBBCDField;
    Entradas_ProdutosPRC_VENDA_ANT: TIBBCDField;
    Entradas_ProdutosPRC_CUSTO: TIBBCDField;
    Entradas_ProdutosICM: TIBBCDField;
    Entradas_ProdutosICM_SUBS: TIBBCDField;
    Entradas_ProdutosIPI: TIBBCDField;
    Entradas_ProdutosIPI_PRODUTO: TIBBCDField;
    Entradas_ProdutosTAXAS: TIBBCDField;
    Entradas_ProdutosDESCONTOS: TIBBCDField;
    Entradas_ProdutosEMBALAGEM: TIBBCDField;
    Entradas_ProdutosFRETE: TIBBCDField;
    Entradas_ProdutosSEGURO: TIBBCDField;
    Entradas_ProdutosNOME_PRODUTO: TIBStringField;
    Entradas_ProdutosSUBUNIDADE: TIntegerField;
    Entradas_ProdutosDATA_NF: TDateField;
    Entradas_ProdutosDATA_REF: TDateField;
    Entradas_ProdutosDATA_ENT: TDateField;
    Entradas_ProdutosSERIE_NF: TIBStringField;
    Entradas_ProdutosNATUREZA: TIntegerField;
    EtiquetaProdSEQUENCIA: TIntegerField;
    Comissao_Produto: TIBDataSet;
    Comissao_ProdutoCNPJ: TIBStringField;
    Comissao_ProdutoAPRAZO: TFloatField;
    Comissao_ProdutoAVISTA: TFloatField;
    Comissao_ProdutoPRODUTO: TIBStringField;
    Comissao_ProdutoVENDEDOR: TIntegerField;
    Comissao_ProdutoNome: TStringField;
    Valida_ProdutoPRC_REPOS: TIBBCDField;
    Valida_ProdutoPRC_VENDA: TIBBCDField;
    Valida_ProdutoVOLUME: TIBBCDField;
    Valida_ProdutoPESO_LIQ: TIBBCDField;
    Valida_ProdutoUNIDADE: TIBStringField;
    Valida_ProdutoNOME: TIBStringField;
    Valida_ProdutoATIVO: TIBStringField;
    Valida_ProdutoALIQUOTA_ECF: TIBStringField;
    Valida_ProdutoQTDADE_1: TIBBCDField;
    Valida_ProdutoQTDADE_2: TIBBCDField;
    Valida_ProdutoNEG_QTDADE_2: TIBStringField;
    Valida_ProdutoSUBUNIDADE: TIntegerField;
    Valida_ProdutoCOMPLEMENTO_NF: TIBStringField;
    Valida_ProdutoORIGEM: TIntegerField;
    Valida_ProdutoCTE: TIntegerField;
    Valida_ProdutoCTIE: TIntegerField;
    Valida_ProdutoREDUCAO: TIntegerField;
    Valida_ProdutoVENDE_FRACIONADO: TIBStringField;
    Valida_ProdutoPOSSUI_LOTE: TIBStringField;
    Valida_ProdutoMARCA: TIBStringField;
    Valida_ProdutoMARGEM_BRUTA: TIBBCDField;
    Empresas: TIBQuery;
    EmpresasCNPJ: TIBStringField;
    EmpresasNOME: TIBStringField;
    Sql_Externa: TIBSQL;
    Sql_Externa_Tabela: TIBSQL;
    Sql_Externa_Proc_Cria: TIBSQL;
    Sql_Externa_Proc_Migra: TIBSQL;
    EtiquetaProdImp: TIBDataSet;
    EtiquetaProdImpCNPJ: TIBStringField;
    EtiquetaProdImpCODIGO: TIBStringField;
    EtiquetaProdImpNOME: TIBStringField;
    EtiquetaProdImpQUANTIDADE: TIntegerField;
    EtiquetaProdImpVALOR: TFloatField;
    EtiquetaProdImpSEQUENCIA: TIntegerField;
    Fechamento_Diario: TIBQuery;
    Fechamento_DiarioCNPJ: TIBStringField;
    Fechamento_DiarioCONTAGEM: TIBBCDField;
    Fechamento_DiarioDATA: TDateTimeField;
    Fechamento_DiarioENTRADA: TIBBCDField;
    Fechamento_DiarioINICIAL: TFloatField;
    Fechamento_DiarioLEITURA: TIBBCDField;
    Fechamento_DiarioNOME: TIBStringField;
    Fechamento_DiarioPOSICAO: TFloatField;
    Fechamento_DiarioPRODUTO: TIBStringField;
    Fechamento_DiarioVENDA: TIBBCDField;
    SelUnidadeUNIDADES: TFloatField;
    PROMOCAO: TIBDataSet;
    PROMOCAOCNPJ: TIBStringField;
    PROMOCAONOME: TIBStringField;
    PROMOCAOPRODUTO: TIBStringField;
    PROMOCAOVALIDADE: TDateTimeField;
    PROMOCAOVALOR: TFloatField;
    EtiquetaProdNUMERO: TIBStringField;
    EtiquetaProdImpNUMERO: TIBStringField;
    GRADES: TIBQuery;
    GRADESCNPJ: TIBStringField;
    GRADESPRODUTO: TIBStringField;
    GRADESMATERIAL: TIntegerField;
    GRADESCOR: TIntegerField;
    GRADESESTOQUE: TFloatField;
    GRADESNOME_MATERIAL: TIBStringField;
    GRADESNOME_COR: TIBStringField;
    GRADESNOME_PERFIL: TIBStringField;
    DsEtiquetas: TDataSource;
    Lista_Grades: TIBQuery;
    Lista_GradesMATERIAL: TIntegerField;
    Lista_GradesCOR: TIntegerField;
    Lista_GradesESTOQUE: TIBBCDField;
    Lista_GradesNOME_MATERIAL: TIBStringField;
    Lista_GradesNOME_COR: TIBStringField;
    Lista_GradesPERFIL: TIntegerField;
    Lista_GradesNOME_PERFIL: TIBStringField;
    Lista_GradesNUMERO: TIBStringField;
    EtiquetaProdImpIMPRIMIR: TStringField;
    VER_EST_ESTIQUETA_PRODUTO: TIBQuery;
    VER_EST_ESTIQUETA_PRODUTOCODIGO: TIBStringField;
    VER_EST_ESTIQUETA_PRODUTONOME: TIBStringField;
    VER_EST_ESTIQUETA_PRODUTOGRUPO: TIBStringField;
    VER_EST_ESTIQUETA_PRODUTOSUBGRUPO: TIBStringField;
    VER_EST_ESTIQUETA_PRODUTOVALOR: TIBBCDField;
    VER_EST_ESTIQUETA_PRODUTOQUANTIDADE: TIntegerField;
    VER_EST_ESTIQUETA_PRODUTOSEQUENCIA: TIntegerField;
    VER_EST_ESTIQUETA_PRODUTONUMERO: TIBStringField;
    VER_EST_ESTIQUETA_PRODUTOIMPRIMIR: TStringField;
    VER_EST_ESTIQUETA_PRODUTOMARCA: TIBStringField;
    VER_EST_ESTIQUETA_PRODUTOCOR: TIBStringField;
    VER_EST_ESTIQUETA_PRODUTOEMPRESA: TIBStringField;
    Lista_GradesORDEM: TIntegerField;
    CONTAGEM_PRODUTONUMERO: TIBStringField;
    CONTAGEM_PRODUTOQUANTIDADE_ANTERIOR_GRADE: TFloatField;
    VER_EST_ESTIQUETA_PRODUTOCODIGO_2: TIBStringField;
    VER_EST_ESTIQUETA_PRODUTOGRADE: TIBStringField;
    CONTAGEM_PRODUTOGRADE: TIBStringField;
    GRADESGRADE: TIBStringField;
    GRADESULTIMA_COMPRA: TDateTimeField;
    GRADESQTDADE_COMPRA: TFloatField;
    GRADESULTIMA_VENDA: TDateTimeField;
    GRADESQTDADE_VENDA: TFloatField;
    GRADESPERFIL: TIntegerField;
    Lista_GradesGRADE: TIBStringField;
    EtiquetaProdImpGRADE: TIBStringField;
    EtiquetaProdGRADE: TIBStringField;
    Orcamento_Mascara: TIBDataSet;
    Orcamento_MascaraCNPJ: TIBStringField;
    Orcamento_MascaraCODIGO: TIntegerField;
    Orcamento_MascaraGRUPO: TIntegerField;
    Orcamento_MascaraNOME: TIBStringField;
    Orcamento_MascaraSUB_GRUPO: TIntegerField;
    Orcamento_MascaraNOME_GRUPO: TIBStringField;
    Orcamento_MascaraNOME_SUB_GRUPO: TIBStringField;
    SelSubGrupo: TIBQuery;
    SelSubGrupoCNPJ: TIBStringField;
    SelSubGrupoGRUPO: TIntegerField;
    SelSubGrupoNOME: TIBStringField;
    DsSelGrupo: TDataSource;
    SelSubGrupoSUBGRUPO: TIntegerField;
    EtiquetaProdImpCODIGO_2: TIBStringField;
    ContagemGrade: TIBDataSet;
    ContagemGradeItens: TIBDataSet;
    ContagemGradeCNPJ: TIBStringField;
    ContagemGradeCODIGO: TIntegerField;
    ContagemGradeDOCUMENTO: TIBStringField;
    ContagemGradeDT_ABERTURA: TDateTimeField;
    ContagemGradeDT_PROCESSAMENTO: TDateTimeField;
    ContagemGradePROCESSADA: TIBStringField;
    ContagemGradeItensCNPJ: TIBStringField;
    ContagemGradeItensCODIGO: TIntegerField;
    ContagemGradeItensNOME: TIBStringField;
    ContagemGradeItensCONTAGEM_GRADE: TIntegerField;
    ContagemGradeItensGRADE: TIBStringField;
    ContagemGradeItensNUMERO: TIBStringField;
    qValidaCodBarras: TIBQuery;
    EtiquetasGrade: TIBDataSet;
    EtiquetasGradeMARCA: TIBStringField;
    EtiquetasGradePRODUTO: TIBStringField;
    EtiquetasGradeCOR: TIBStringField;
    EtiquetasGradeCODIGO: TIBStringField;
    EtiquetasGradeCODIGO_2: TIBStringField;
    EtiquetasGradeNUMERO: TIBStringField;
    EtiquetasGradeVALOR: TIBBCDField;
    EtiquetasGradeESTOQUE: TIBBCDField;
    EtiquetasGradeGRADE: TIBStringField;
    Orcamento_Mascara_Nome: TIBDataSet;
    Orcamento_Mascara_NomeCNPJ: TIBStringField;
    Orcamento_Mascara_NomeCODIGO: TIntegerField;
    Orcamento_Mascara_NomeNOME: TIBStringField;
    Orcamento_MascaraAGRUPADOR: TIntegerField;
    DsOrcamento_Mascara: TDataSource;
    ContagemGradeItensPRODUTO: TIBStringField;
    ContagemGradeItensCODIGO_PRODUTO: TIBStringField;
    qryAux: TIBQuery;
    PROMOCAOVALIDADE_FINAL: TDateTimeField;
    Etiqueta3: TIBDataSet;
    Etiqueta3EST_ET_PROD_GRD3: TMemoField;
    Etiqueta3CNPJ: TIBStringField;
    EtiquetaDescto: TIBDataSet;
    EtiquetaParcela: TIBDataSet;
    EtiquetaParcelaEST_ET_PROD_GRD3_PARC: TMemoField;
    EtiquetaDesctoEST_ET_PROD_GRD3_DESCTO: TMemoField;
    EtiquetaDesctoCNPJ: TIBStringField;
    EtiquetaParcelaCNPJ: TIBStringField;
    qValidaCodBarrasEXISTE: TIntegerField;
    Valida_ProdutoIPI2: TIBBCDField;
    qryListaEntradas: TIBQuery;
    qryListaEntradasNDOCTO: TIBStringField;
    qryListaEntradasPRODUTO: TIBStringField;
    qryListaEntradasUNIDADE: TIBStringField;
    qryListaEntradasQUANTIDADE: TIBBCDField;
    qryListaEntradasPRC_UNITARIO: TIBBCDField;
    qryListaEntradasPERC_LUCRO: TIBBCDField;
    qryListaEntradasPRC_VENDA: TIBBCDField;
    qryListaEntradasPRC_VENDA_ANT: TIBBCDField;
    qryListaEntradasPRC_CUSTO: TIBBCDField;
    qryListaEntradasICM: TIBBCDField;
    qryListaEntradasICM_SUBS: TIBBCDField;
    qryListaEntradasIPI: TIBBCDField;
    qryListaEntradasIPI_PRODUTO: TIBBCDField;
    qryListaEntradasTAXAS: TIBBCDField;
    qryListaEntradasDESCONTOS: TIBBCDField;
    qryListaEntradasEMBALAGEM: TIBBCDField;
    qryListaEntradasFRETE: TIBBCDField;
    qryListaEntradasSEGURO: TIBBCDField;
    qryListaEntradasNOME_PRODUTO: TIBStringField;
    qryListaEntradasSUBUNIDADE: TIntegerField;
    qryListaEntradasDATA_NF: TDateTimeField;
    qryListaEntradasDATA_REF: TDateTimeField;
    qryListaEntradasDATA_ENT: TDateTimeField;
    qryListaEntradasSERIE_NF: TIBStringField;
    qryListaEntradasNATUREZA: TIntegerField;
    CONTAGEMCNPJ: TIBStringField;
    CONTAGEMCODIGO: TIntegerField;
    CONTAGEMDATA: TDateTimeField;
    CONTAGEMDOCUMENTO: TIBStringField;
    CONTAGEMFECHADA: TIBStringField;
    qryCompContagem: TIBQuery;
    dsComparaContage: TDataSource;
    qryImpCotacoes: TIBQuery;
    qryImpCotacoesPSA_NOME: TIBStringField;
    qryImpCotacoesPSA_FANTASIA: TIBStringField;
    qryImpCotacoesPSA_ENDERECO: TIBStringField;
    qryImpCotacoesPSA_BAIRRO: TIBStringField;
    qryImpCotacoesPSA_CNPJ: TIBStringField;
    qryImpCotacoesPSA_CIDADE: TIBStringField;
    qryImpCotacoesPSA_UF: TIBStringField;
    qryImpCotacoesPSA_RG_IE: TIBStringField;
    qryImpCotacoesPSA_FONE: TIBStringField;
    qryImpCotacoesPSA_EMAIL: TIBStringField;
    qryImpCotacoesCT_FORMA_PAGTO: TIntegerField;
    qryImpCotacoesCT_OBSERVACAO: TIBStringField;
    qryImpCotacoesCTI_PRODUTO: TIBStringField;
    qryImpCotacoesCTI_NOME_PRODUTO: TIBStringField;
    qryImpCotacoesCTI_QTDE: TFloatField;
    qryImpCotacoesCTI_UNIDADE: TIBStringField;
    qryImpCotacoesCTI_PRC_UNITARIO: TFloatField;
    qryImpCotacoesCTI_DESCONTO: TFloatField;
    qryImpCotacoesCTI_TOTAL_ITEM: TFloatField;
    qryImpCotacoesCT_TRANSPORTADORA: TIBStringField;
    qryImpCotacoesTOTAL: TFloatField;
    qryImpCotacoesDESC_ACRESC: TFloatField;
    qryImpCotacoesTOTAL_LIQUIDO: TFloatField;
    qryImpCotacoesCT_NOME_FORMA_PAGTO: TIBStringField;
    qryImpCotacoesFORMA_COMBINADA: TIBStringField;
    qryImpCotacoesCIDADE2: TIBStringField;
    ContEtiqueta: TIBQuery;
    ContEtiquetaQUANTIDADE: TLargeintField;
    CONTAGEMLOCAL: TFloatField;
    PROMOCAOPRC_VENDA: TFloatField;
    ContagemGradeItensQTDE: TFloatField;
    ContagemGradeItensQUANTIDADE_ANTERIOR: TFloatField;
    qryCompContagemPRD_NOME: TIBStringField;
    qryCompContagemQUANTIDADE_ANTERIOR: TFloatField;
    qryCompContagemQUANTIDADE: TFloatField;
    qryCompContagemMARCA: TIBStringField;
    qryCompContagemSALDO: TFloatField;
    qryCompContagemGRADE: TIBStringField;
    qryCompContagemNUMERO: TIBStringField;
    AlteraPrecoItem: TIBDataSet;
    AlteraPreco: TIBDataSet;
    AlteraPrecoItemCODIGO: TIntegerField;
    AlteraPrecoItemCNPJ: TIBStringField;
    AlteraPrecoItemCOD_ALTERA_PRECO: TIntegerField;
    AlteraPrecoItemVLR_ANTERIOR: TFloatField;
    AlteraPrecoItemVLR_ATUAL: TFloatField;
    AlteraPrecoItemNOME_PRODUTO: TIBStringField;
    AlteraPrecoItemMARCA: TIntegerField;
    AlteraPrecoItemNOME_MARCA: TIBStringField;
    AlteraPrecoItemGRUPO: TIntegerField;
    AlteraPrecoItemNOME_GRUPO: TIBStringField;
    AlteraPrecoItemSUB_GRUPO: TIntegerField;
    AlteraPrecoItemNOME_SUBGRUPO: TIBStringField;
    AlteraPrecoItemPRD_ULT_CUSTO: TFloatField;
    AlteraPrecoItemPRD_PRC_VENDA: TFloatField;
    AlteraPrecoItemPRD_UNIDADE: TIBStringField;
    AlteraPrecoCODIGO: TIntegerField;
    AlteraPrecoCNPJ: TIBStringField;
    AlteraPrecoDESCRICAO: TIBStringField;
    AlteraPrecoDATA: TDateField;
    AlteraPrecoFLT_PRODUTO: TIBStringField;
    AlteraPrecoFLT_MARCA: TIntegerField;
    AlteraPrecoFLT_GRUPO: TIntegerField;
    AlteraPrecoFLT_SUBGRUPO: TIntegerField;
    GeraLista: TIBStoredProc;
    AlteraPrecoItemPRODUTO: TIBStringField;
    dsLinkAltera: TDataSource;
    AlteraPrecoItemMARGEM: TFloatField;
    AlteraPrecoItemVLR_ATUALIZACAO: TFloatField;
    AlteraPrecoFECHADA: TIBStringField;
    AlteraPrecoDT_PROCESSAMENTO: TDateField;
    ContagemGradeLOCAL: TSmallintField;
    ItemTabelaPreco: TIBDataSet;
    dsTabelaPreco: TDataSource;
    TabelaPreco: TIBDataSet;
    TabelaPrecoCNPJ: TIBStringField;
    TabelaPrecoCODIGO: TIntegerField;
    TabelaPrecoDESCRICAO: TIBStringField;
    TabelaPrecoIDTIPOTABELAPRECO: TIntegerField;
    TabelaPrecoINICIOVIGENCIA: TDateField;
    TabelaPrecoFIMVIGENCIA: TDateField;
    TabelaPrecoDATAPROJECAO: TDateField;
    TabelaPrecoQTDEDIASTOLALTVENCIMENTO: TIBBCDField;
    ItemTabelaPrecoCNPJ: TIBStringField;
    ItemTabelaPrecoCODIGO: TIntegerField;
    ItemTabelaPrecoCOD_TABELAPRECO: TIntegerField;
    ItemTabelaPrecoPRODUTO: TIBStringField;
    ItemTabelaPrecoVALOR: TIBBCDField;
    ItemTabelaPrecoDESCONTOMAXIMO: TIBBCDField;
    ItemTabelaPrecoCOEFICIENTE: TIBBCDField;
    ItemTabelaPrecoDATAINICIOVIGENCIA: TDateField;
    ItemTabelaPrecoDATAFIMVIGENCIA: TDateField;
    ItemTabelaPrecoMARGEMUTILIZADO: TIBBCDField;
    ItemTabelaPrecoCOEFICIENTECUSTOUTILIZADO: TIBBCDField;
    ItemTabelaPrecoPRECOSUGERIDO: TIBBCDField;
    ItemTabelaPrecoCOD_FATURAMENTO: TIntegerField;
    ItemTabelaPrecoDATAPRECIFICACAO: TDateField;
    ItemTabelaPrecoDATAPROJECAOPRECOS: TDateField;
    ItemTabelaPrecoPERCDESCONTOPROJECAO: TIBBCDField;
    ItemTabelaPrecoTIPOCALCULOPERCDESC: TIBBCDField;
    ItemTabelaPrecoPERCACRESCIMOPROJECAO: TIBBCDField;
    ItemTabelaPrecoTIPOCALCULOPERCACRESC: TIBBCDField;
    ItemTabelaPrecoPRECOCUSTO: TIBBCDField;
    ItemTabelaPrecoDATAPROJECAOCUSTO: TDateField;
    ItemTabelaPrecoPERCDESCONTOPROJECAOCUSTO: TIBBCDField;
    ItemTabelaPrecoTIPOCALCULOPERCDESCCUSTO: TIntegerField;
    ItemTabelaPrecoPERCACRESCIMOPROJECAOCUSTO: TIBBCDField;
    GeraTabelaPreco: TIBStoredProc;
    ItemTabelaPrecoNOME_PRODUTO: TIBStringField;
    tblVendedor: TIBDataSet;
    tblVendedorCNPJ: TIBStringField;
    tblVendedorCODIGO: TIntegerField;
    tblVendedorCOD_VENDEDOR: TIntegerField;
    tblVendedorTabelas: TIBDataSet;
    tblVendedorTabelasCNPJ: TIBStringField;
    tblVendedorTabelasCODIGO: TIntegerField;
    tblVendedorTabelasCOD_TABELA: TIntegerField;
    tblVendedorTabelasCOD_TBL_VENDEDOR: TIntegerField;
    tblVendedorTabelasPCT_COMISSAO: TFloatField;
    tblVendedorPCT_COMISSAO: TFloatField;
    dsLinkVendedor: TDataSource;
    TblTabelas: TIBQuery;
    TblTabelasCNPJ: TIBStringField;
    TblTabelasCODIGO: TIntegerField;
    TblTabelasDESCRICAO: TIBStringField;
    TblTabelasIDTIPOTABELAPRECO: TIntegerField;
    TblTabelasINICIOVIGENCIA: TDateField;
    TblTabelasFIMVIGENCIA: TDateField;
    TblTabelasDATAPROJECAO: TDateField;
    TblTabelasQTDEDIASTOLALTVENCIMENTO: TIBBCDField;
    tblVendedorTabelasLKP_TABELA: TStringField;
    QryRomaneios: TIBQuery;
    QryRomaneiosVDI_CODIGO: TIntegerField;
    QryRomaneiosVDI_PRODUTO: TIBStringField;
    QryRomaneiosVDI_PRC_UNIT_ORIGINAL: TFloatField;
    QryRomaneiosVDI_PRC_UNITARIO: TFloatField;
    QryRomaneiosVDI_CUSTO_MEDIO: TFloatField;
    QryRomaneiosVDI_DESCONTO: TFloatField;
    QryRomaneiosVDI_QTDE: TFloatField;
    QryRomaneiosVDI_TOTAL: TFloatField;
    QryRomaneiosCLI_NOME: TIBStringField;
    QryRomaneiosCLI_CODIGO: TIntegerField;
    QryRomaneiosCLI_CPF_CGC: TIBStringField;
    QryRomaneiosVDD_NOME: TIBStringField;
    QryRomaneiosPRODUTO: TIBStringField;
    QryRomaneiosMRC_NOME: TIBStringField;
    QryRomaneiosFN_NOME: TIBStringField;
    QryRomaneiosVD_DATA_CAIXA: TDateTimeField;
    QryRomaneiosVD_DATA: TDateField;
    QryRomaneiosVD_CFOP: TIntegerField;
    QryRomaneiosVD_TOTAL_BRUTO: TFloatField;
    QryRomaneiosVD_DESC_ACRES: TFloatField;
    QryRomaneiosVD_TOTAL_LIQUIDO: TFloatField;
    QryRomaneiosVD_CODIGO: TIntegerField;
    QryRomaneiosNUM_NF: TIntegerField;
    QryRomaneiosQNTDE_PDR_CARGA: TFloatField;
    QryRomaneiosUND_CARREGAMENTO: TLargeintField;
    QryRomaneiosUND_INDIVIDUAL: TFloatField;
    QryRomaneiosFORMA_PAGTO: TIBStringField;
    QryRomaneiosCFOP: TIBStringField;
    QryRomaneiosVDI_TOTAL_LIQUIDO: TFloatField;
    QryRomaneiosGRADE: TIBStringField;
    QryRomaneiosNUMERO: TIBStringField;
    QryRomaneiosVDI_CUSTO_TOTAL: TFloatField;
    QryRomaneiosVDI_MARGEM: TFloatField;
    VER_EST_ESTIQUETA_PRODUTOCONT_NUMEROS: TIntegerField;
    procedure CONTAGEMAfterClose(DataSet: TDataSet);
    procedure CONTAGEMAfterInsert(DataSet: TDataSet);
    procedure CONTAGEMBeforeOpen(DataSet: TDataSet);
    procedure CONTAGEMBeforePost(DataSet: TDataSet);
    procedure CONTAGEM_PRODUTONewRecord(DataSet: TDataSet);
    procedure CONTAGEMNewRecord(DataSet: TDataSet);
    procedure CONTAGEM_PRODUTOPRODUTOValidate(Sender: TField);
    procedure CONTAGEM_PRODUTOAfterPost(DataSet: TDataSet);
    procedure CONTAGEM_PRODUTOBeforeEdit(DataSet: TDataSet);
    procedure ALTPRECONewRecord(DataSet: TDataSet);
    procedure ALTPRECOBeforeEdit(DataSet: TDataSet);
    procedure ALTPRECOBeforeDelete(DataSet: TDataSet);
    procedure ALTPRECO_PRODUTONewRecord(DataSet: TDataSet);
    procedure ALTPRECO_PRODUTOPRODUTOValidate(Sender: TField);
    procedure ALTPRECO_PRODUTOPORCENTAGEMValidate(Sender: TField);
    procedure ALTPRECO_PRODUTOBeforeOpen(DataSet: TDataSet);
    procedure ALTPRECO_PRODUTOBeforePost(DataSet: TDataSet);
    procedure EtiquetaProdCODIGOValidate(Sender: TField);
    procedure EtiquetaProdNewRecord(DataSet: TDataSet);
    procedure EtiquetaProdAfterInsert(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure ALTPRECO_PRODUTOCODIGO_INTERNOValidate(Sender: TField);
    procedure ALTPRECO_UNIDBeforeDelete(DataSet: TDataSet);
    procedure ALTPRECO_UNIDNewRecord(DataSet: TDataSet);
    procedure ALTPRECO_PRODUNIDNewRecord(DataSet: TDataSet);
    procedure ALTPRECO_PRODUNIDUNIDADEValidate(Sender: TField);
    procedure ALTPRECO_MARCABeforeDelete(DataSet: TDataSet);
    procedure ALTPRECO_MARCANewRecord(DataSet: TDataSet);
    procedure ALTPRECO_PRODMARCANewRecord(DataSet: TDataSet);
    procedure ALTPRECO_PRODMARCAMARCAValidate(Sender: TField);
    procedure ALTPRECO_GRUPOBeforeDelete(DataSet: TDataSet);
    procedure ALTPRECO_GRUPONewRecord(DataSet: TDataSet);
    procedure ALTPRECO_PRODGRUPONewRecord(DataSet: TDataSet);
    procedure ALTPRECO_PRODGRUPOGRUPOValidate(Sender: TField);
    procedure ALTPRECO_PRODUTOCUSTO_LISTAValidate(Sender: TField);
    procedure Comissao_ProdutoNewRecord(DataSet: TDataSet);
    procedure EtiquetaProdImpNewRecord(DataSet: TDataSet);
    procedure PROMOCAOAfterInsert(DataSet: TDataSet);
    procedure PROMOCAONewRecord(DataSet: TDataSet);
    procedure EtiquetaProdGRADEValidate(Sender: TField);
    procedure EtiquetaProdNUMEROValidate(Sender: TField);
    procedure EtiquetaProdImpCalcFields(DataSet: TDataSet);
    procedure VER_EST_ESTIQUETA_PRODUTOCalcFields(DataSet: TDataSet);
    procedure CONTAGEM_PRODUTOPRODUTOSetText(Sender: TField;
      const Text: String);
    procedure CONTAGEM_PRODUTOGRADEValidate(Sender: TField);
    procedure CONTAGEM_PRODUTONUMEROValidate(Sender: TField);
    procedure Orcamento_MascaraGRUPOValidate(Sender: TField);
    procedure Orcamento_MascaraSUB_GRUPOValidate(Sender: TField);
    procedure EtiquetaProdImpBeforeOpen(DataSet: TDataSet);
    procedure ContagemGradeBeforeOpen(DataSet: TDataSet);
    procedure ContagemGradeAfterInsert(DataSet: TDataSet);
    procedure ContagemGradeItensBeforeOpen(DataSet: TDataSet);
    procedure ContagemGradeItensAfterInsert(DataSet: TDataSet);
    procedure ContagemGradeAfterScroll(DataSet: TDataSet);
    procedure ContagemGradePROCESSADAGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure Orcamento_MascaraNewRecord(DataSet: TDataSet);
    procedure ContagemGradeBeforePost(DataSet: TDataSet);
    procedure AlteraPrecoBeforeOpen(DataSet: TDataSet);
    procedure AlteraPrecoNewRecord(DataSet: TDataSet);
    procedure AlteraPrecoItemNewRecord(DataSet: TDataSet);
    procedure AlteraPrecoItem1BeforeOpen(DataSet: TDataSet);
    procedure AlteraPrecoFECHADAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure AlteraPrecoFECHADASetText(Sender: TField;
      const Text: String);
    procedure AlteraPrecoItemVLR_ATUALIZACAOValidate(Sender: TField);
    procedure AlteraPrecoItemBeforeOpen(DataSet: TDataSet);
    procedure AlteraPrecoItemMARGEMValidate(Sender: TField);
    procedure AlteraPrecoItemAfterOpen(DataSet: TDataSet);
    procedure ContagemGradeItensPRODUTOSetText(Sender: TField;
      const Text: String);
    procedure ContagemGradeItensPRODUTOValidate(Sender: TField);
    procedure TabelaPrecoBeforeOpen(DataSet: TDataSet);
    procedure ItemTabelaPrecoBeforeOpen(DataSet: TDataSet);
    procedure ItemTabelaPrecoNewRecord(DataSet: TDataSet);
    procedure TabelaPrecoNewRecord(DataSet: TDataSet);
    procedure tblVendedorNewRecord(DataSet: TDataSet);
    procedure TblTabelasBeforeOpen(DataSet: TDataSet);
    procedure tblVendedorTabelasNewRecord(DataSet: TDataSet);
    procedure ItemTabelaPrecoBeforePost(DataSet: TDataSet);
    procedure ItemTabelaPrecoMARGEMUTILIZADOChange(Sender: TField);
    procedure QryRomaneiosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmEstoque: TDmEstoque;

implementation

uses Application_DM, Cadastros_DM, Funcoes;

{$R *.DFM}

procedure TDmEstoque.CONTAGEMAfterClose(DataSet: TDataSet);
begin
     If (DataSet is TIBDataset) Then
     Begin
          (Dataset as TIBDataset).UnPrepare;
     end;
end;

procedure TDmEstoque.CONTAGEMAfterInsert(DataSet: TDataSet);
begin
  Dataset.Fields[0].Value := DMApp.CNPJ ;
  Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 0) + 1;
end;

procedure TDmEstoque.CONTAGEMBeforeOpen(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBQuery).ParamByName('CNPJ').asString       := DMApp.Cnpj;
       (Dataset as TIBQuery).Prepare;
     End;
  If (DataSet is TIBDataset) Then
     Begin
       (DataSet as TIBDataSet).ParamByName('CNPJ').asString       := DMApp.Cnpj;
       (Dataset as TIBDataSet).Prepare;          
     End;
end;

procedure TDmEstoque.CONTAGEMBeforePost(DataSet: TDataSet);
begin
  If Dataset.State = dsInsert Then
     Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 1);
end;

procedure TDmEstoque.CONTAGEM_PRODUTONewRecord(DataSet: TDataSet);
begin
     CONTAGEM_PRODUTOCNPJ.Value       := DmApp.Cnpj ;                  
     CONTAGEM_PRODUTOCODIGO.VALUE     := CONTAGEMCODIGO.VALUE ;
     CONTAGEM_PRODUTOQUANTIDADE.Value := 0;
     CONTAGEM_PRODUTOGRADE.VALUE      := '0';
     CONTAGEM_PRODUTONUMERO.VALUE     := '0';
end;

procedure TDmEstoque.CONTAGEMNewRecord(DataSet: TDataSet);
begin
     CONTAGEMFECHADA.Value := 'N';
     CONTAGEMDATA.Value := DATE;
end;

procedure TDmEstoque.CONTAGEM_PRODUTOPRODUTOValidate(Sender: TField);
begin
     GERAL.Close;
     GERAL.Sql.Clear;

     GERAL.Params.CreateParam ( FtString, 'CNPJ', PtInput ) ;
     GERAL.Params.CreateParam ( FtString, 'C', PtInput ) ;

     GERAL.Sql.Add (' Select QTDADE_2, NOME, SUBUNIDADE From EST_PRODUTOS Where CNPJ = :CNPJ AND Codigo = :C ');

     GERAL.ParamByName ('C').AsString := Sender.Value ;
     GERAL.ParamByName ('CNPJ').AsString := DmApp.Cnpj   ;

     GERAL.open;

     IF GERAL.FIELDS[1].ISNULL
     THEN BEGIN
          MessageDlg('Produto Não Cadastrado, Verifique!',MtError,[MbOk],0);
          Abort;
     END
     ELSE BEGIN
          IF GERAL.FIELDS[2].Value > 0
          THEN BEGIN
               IF NOT GERAL.FIELDS[0].isnull
               THEN BEGIN
                    CONTAGEM_PRODUTOQUANTIDADE_ANTERIOR.Value := GERAL.FIELDS[0].Value / GERAL.FIELDS[2].Value;
               END
               ELSE
                   CONTAGEM_PRODUTOQUANTIDADE_ANTERIOR.Value := 0;
          END
          ELSE BEGIN
               If GERAL.FIELDS[0].isnull
               then begin
                    CONTAGEM_PRODUTOQUANTIDADE_ANTERIOR.Value := 0 ;
               end
               else begin
                    CONTAGEM_PRODUTOQUANTIDADE_ANTERIOR.Value := GERAL.FIELDS[0].Value ;
               end;
          END;

          IF NOT GERAL.FIELDS[1].IsNull
          THEN
              CONTAGEM_PRODUTONOME.vALUE                := GERAL.FIELDS[1].Value ;
     END;
end;

procedure TDmEstoque.CONTAGEM_PRODUTOAfterPost(DataSet: TDataSet);
begin
     DataSet.Append ;
end;

procedure TDmEstoque.CONTAGEM_PRODUTOBeforeEdit(DataSet: TDataSet);
begin
     IF CONTAGEMFECHADA.Value = 'S'
     THEN BEGIN
          MessageDlg('Esta Contagem Esta Fechada!',MtError,[MbOk],0);
          Abort;
     END;
end;

procedure TDmEstoque.ALTPRECONewRecord(DataSet: TDataSet);
begin
     ALTPRECOFECHADA.Value := 'N'  ;
     ALTPRECODATA.Value    := DmApp.Data_Servidor ;
     ALTPRECOIPI.Value     := 0    ;
     ALTPRECOIMPOSTOS.Value:= 0    ;
end;

procedure TDmEstoque.ALTPRECOBeforeEdit(DataSet: TDataSet);
begin
     IF ALTPRECOFECHADA.Value = 'S'
     THEN BEGIN
          MessageDlg('Esta Alteração Esta Fechada!',MtError,[MbOk],0);
          Abort;
     END;
end;

procedure TDmEstoque.ALTPRECOBeforeDelete(DataSet: TDataSet);
begin
     IF ALTPRECOFECHADA.Value = 'S'
     THEN BEGIN
          MessageDlg('Esta Alteração Esta Fechada!',MtError,[MbOk],0);
          Abort;
     END;
end;

procedure TDmEstoque.ALTPRECO_PRODUTONewRecord(DataSet: TDataSet);
begin
     ALTPRECO_PRODUTOCODIGO.VALUE      := ALTPRECOCODIGO.VALUE ;
     ALTPRECO_PRODUTOCNPJ.Value        := DmApp.Cnpj ;
     ALTPRECO_PRODUTOPORCENTAGEM.Value := 0;
     ALTPRECO_PRODUTOCUSTO_LISTA.Value := 0;
     ALTPRECO_PRODUTOCUSTO_COLOCADO.Value := 0;
end;

procedure TDmEstoque.ALTPRECO_PRODUTOPRODUTOValidate(Sender: TField);
begin
     GERAL.Close;
     GERAL.Sql.Clear;

     GERAL.Params.CreateParam ( FtString, 'CNPJ', PtInput ) ;
     GERAL.Params.CreateParam ( FtString, 'C', PtInput ) ;

     GERAL.Sql.Add (' Select PRC_VENDA, NOME From EST_PRODUTOS Where CNPJ = :CNPJ AND Codigo = :C ');

     GERAL.ParamByName ('C'   ).AsString := Sender.Value ;
     GERAL.ParamByName ('CNPJ').AsString := DmApp.Cnpj   ;

     GERAL.open;

     IF GERAL.FIELDS[1].ISNULL
     THEN BEGIN
          MessageDlg('Produto Não Cadastrado!',MtError,[MbOk],0);

          Abort;
     END
     ELSE BEGIN
          ALTPRECO_PRODUTOVALOR_ANTERIOR.Value := GERAL.FIELDS[0].Value ;
          ALTPRECO_PRODUTONOME.Value           := GERAL.FIELDS[1].Value ;
     END;
end;

procedure TDmEstoque.ALTPRECO_PRODUTOPORCENTAGEMValidate(Sender: TField);
begin
     IF ALTPRECO_PRODUTOPORCENTAGEM.Value > 0
     THEN BEGIN
          ALTPRECO_PRODUTOVALOR.Value := ARREDONDA( ALTPRECO_PRODUTOCUSTO_COLOCADO.VALUE + ((ALTPRECO_PRODUTOCUSTO_COLOCADO.Value * ALTPRECO_PRODUTOPORCENTAGEM.Value)/100),2);
     END;
end;

procedure TDmEstoque.ALTPRECO_PRODUTOBeforeOpen(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
       (Dataset as TIBQuery).Prepare;
     End;
  If (DataSet is TIBDataset) Then
     Begin
       (DataSet as TIBDataSet).ParamByName('CNPJ').asString := DMApp.Cnpj;
       (Dataset as TIBDataSet).Prepare;
     End;
end;

procedure TDmEstoque.ALTPRECO_PRODUTOBeforePost(DataSet: TDataSet);
begin
     IF ( ALTPRECO_PRODUTOPORCENTAGEM.ISNULL ) and ( ALTPRECO_PRODUTOVALOR_ANTERIOR.Value > 0 )
     THEN BEGIN
          ALTPRECO_PRODUTOPORCENTAGEM.value := (( ALTPRECO_PRODUTOVALOR.VALUE - ALTPRECO_PRODUTOVALOR_ANTERIOR.Value ) / 100 ) / ALTPRECO_PRODUTOVALOR_ANTERIOR.Value ;
     END
     ELSE
         ALTPRECO_PRODUTOPORCENTAGEM.value := 0;
end;

procedure TDmEstoque.EtiquetaProdCODIGOValidate(Sender: TField);
begin
     //BUSCA OS VALORES DO PRODUTO
     Valida_Produto.Close ;

     Valida_Produto.ParamByName ('CNPJ').AsString        := DmApp.Cnpj   ;
     Valida_Produto.ParamByName ('PRODUTO').AsString     := Sender.Value ;
     Valida_Produto.ParamByName ('VENDEDOR').AsInteger    := 0;
     Valida_Produto.Prepare  ;

     Valida_Produto.Open ;

     If Valida_ProdutoPRC_VENDA.IsNull
     then Begin
          MessageDlg('Produto Inexistente!', mtError, [mbOK], 0);
          Abort ;
     end
     else begin
          EtiquetaProdNOME.Value  := Valida_ProdutoNOME.Value  ;
          EtiquetaProdVALOR.Value := Valida_ProdutoPRC_VENDA.Value   ;
     end;

     //GRADES
     Lista_Grades.Close ;
     Lista_Grades.ParamByName ( 'CNPJ'    ).AsString := DMAPP.CNPJ   ;
     Lista_Grades.ParamByName ( 'PRODUTO' ).AsString := Sender.Value ;
     Lista_Grades.Prepare ;
     Lista_Grades.Open    ;
end;

procedure TDmEstoque.EtiquetaProdNewRecord(DataSet: TDataSet);
Var
   I: Integer;
begin
  EtiquetaProdQUANTIDADE.Value := 0;
  I := DMAPP.Ultima_Etiqueta + 1;
  EtiquetaProdSEQUENCIA.Value  := I;
  EtiquetaProdGRADE.Value  := '0';
  EtiquetaProdNUMERO.Value := '0';
end;

procedure TDmEstoque.EtiquetaProdAfterInsert(DataSet: TDataSet);
begin
     Dataset.Fields[0].Value := DMApp.CNPJ ;
end;

procedure TDmEstoque.DataModuleCreate(Sender: TObject);
begin
     IniciaComponentesDm ( Self as TDataModule );
end;

procedure TDmEstoque.ALTPRECO_PRODUTOCODIGO_INTERNOValidate(Sender: TField);
begin
     GERAL.Close;
     GERAL.Sql.Clear;

     GERAL.Params.CreateParam ( FtString , 'CNPJ', PtInput ) ;
     GERAL.Params.CreateParam ( FtInteger, 'C', PtInput ) ;

     GERAL.Sql.Add (' Select PRC_VENDA, NOME, CODIGO From EST_PRODUTOS Where CNPJ = :CNPJ AND Codigo_Interno = :C ');

     GERAL.ParamByName ('C'   ).AsInteger := Sender.Value ;
     GERAL.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;

     GERAL.open;

     IF GERAL.FIELDS[0].ISNULL
     THEN BEGIN
          MessageDlg('Produto Não Cadastrado, Verifique!',MtError,[MbOk],0);
          Abort;
     END
     ELSE BEGIN
          ALTPRECO_PRODUTOVALOR_ANTERIOR.Value := GERAL.FIELDS[0].Value ;
          ALTPRECO_PRODUTONOME.Value           := GERAL.FIELDS[1].Value ;
          ALTPRECO_PRODUTOPRODUTO.Value        := GERAL.FIELDS[2].Value ;
     END;
end;

procedure TDmEstoque.ALTPRECO_UNIDBeforeDelete(DataSet: TDataSet);
begin
     IF ALTPRECO_UNIDFECHADA.Value = 'S'
     THEN BEGIN
          MessageDlg('Esta Alteração Esta Fechada!', MtError, [MbOk],0);
          Abort;
     END;
end;

procedure TDmEstoque.ALTPRECO_UNIDNewRecord(DataSet: TDataSet);
begin
     ALTPRECO_UNIDFECHADA.Value := 'N';
     ALTPRECO_UNIDDATA.Value := DATE;
end;

procedure TDmEstoque.ALTPRECO_PRODUNIDNewRecord(DataSet: TDataSet);
begin
     ALTPRECO_PRODUNIDCODIGO.VALUE      := ALTPRECO_UNIDCODIGO.VALUE ;
     ALTPRECO_PRODUNIDCNPJ.Value        := DmApp.Cnpj ;
     ALTPRECO_PRODUNIDPORCENTAGEM.Value := 0;
end;

procedure TDmEstoque.ALTPRECO_PRODUNIDUNIDADEValidate(Sender: TField);
begin
     GERAL.Close;
     GERAL.Sql.Clear;

     GERAL.Params.CreateParam ( FtString, 'CNPJ', PtInput ) ;
     GERAL.Params.CreateParam ( FtString, 'C'   , PtInput ) ;

     GERAL.Sql.Add (' Select NOME From EST_UNIDADES Where CNPJ = :CNPJ AND SIGLA = :C ');

     GERAL.ParamByName ('C'   ).AsString := Sender.Value ;
     GERAL.ParamByName ('CNPJ').AsString := DmApp.Cnpj   ;

     GERAL.open;

     IF GERAL.FIELDS[0].ISNULL
     THEN BEGIN
          MessageDlg('Unidade Não Cadastrada, Verifique!',MtError,[MbOk],0);
          Abort;
     END
     ELSE BEGIN
          ALTPRECO_PRODUNIDNOME.Value := GERAL.FIELDS[0].Value ;
     END;
end;

procedure TDmEstoque.ALTPRECO_MARCABeforeDelete(DataSet: TDataSet);
begin
     IF ALTPRECO_MARCAFECHADA.Value = 'S'
     THEN BEGIN
          MessageDlg('Esta Alteração Esta Fechada!', MtError, [MbOk],0);
          Abort;
     END;
end;

procedure TDmEstoque.ALTPRECO_MARCANewRecord(DataSet: TDataSet);
begin
     ALTPRECO_MARCAFECHADA.Value := 'N';
     ALTPRECO_MARCADATA.Value    := DATE;
end;

procedure TDmEstoque.ALTPRECO_PRODMARCANewRecord(DataSet: TDataSet);
begin
     ALTPRECO_PRODMARCACODIGO.VALUE      := ALTPRECO_MARCACODIGO.VALUE ;
     ALTPRECO_PRODMARCACNPJ.Value        := DmApp.Cnpj ;
     ALTPRECO_PRODMARCAPORCENTAGEM.Value := 0;
end;

procedure TDmEstoque.ALTPRECO_PRODMARCAMARCAValidate(Sender: TField);
begin
     GERAL.Close;
     GERAL.Sql.Clear;

     GERAL.Params.CreateParam ( FtString,  'CNPJ', PtInput ) ;
     GERAL.Params.CreateParam ( FtInteger, 'C'   , PtInput ) ;

     GERAL.Sql.Add (' Select NOME From EST_MARCAS Where CNPJ = :CNPJ AND CODIGO = :C ');

     GERAL.ParamByName ('C'   ).AsInteger := Sender.Value ;
     GERAL.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;

     GERAL.open;

     IF GERAL.FIELDS[0].ISNULL
     THEN BEGIN
          MessageDlg('Marca não Cadastrada, Verifique!',MtError,[MbOk],0);
          Abort;
     END
     ELSE BEGIN
          ALTPRECO_PRODMARCANOME.Value := GERAL.FIELDS[0].Value ;
     END;
end;

procedure TDmEstoque.ALTPRECO_GRUPOBeforeDelete(DataSet: TDataSet);
begin
     IF ALTPRECO_GRUPOFECHADA.Value = 'S'
     THEN BEGIN
          MessageDlg('Esta Alteração Esta Fechada!', MtError, [MbOk],0);
          Abort;
     END;
end;

procedure TDmEstoque.ALTPRECO_GRUPONewRecord(DataSet: TDataSet);
begin
     ALTPRECO_GRUPOFECHADA.Value := 'N';
     ALTPRECO_GRUPODATA.Value    := DATE;
end;

procedure TDmEstoque.ALTPRECO_PRODGRUPONewRecord(DataSet: TDataSet);
begin
     ALTPRECO_PRODGRUPOCODIGO.VALUE      := ALTPRECO_GRUPOCODIGO.VALUE ;
     ALTPRECO_PRODGRUPOCNPJ.Value        := DmApp.Cnpj ;
     ALTPRECO_PRODGRUPOPORCENTAGEM.Value := 0;
end;

procedure TDmEstoque.ALTPRECO_PRODGRUPOGRUPOValidate(Sender: TField);
begin
     GERAL.Close;
     GERAL.Sql.Clear;

     GERAL.Params.CreateParam ( FtString,  'CNPJ', PtInput ) ;
     GERAL.Params.CreateParam ( FtInteger, 'C'   , PtInput ) ;

     GERAL.Sql.Add (' Select NOME From EST_GRUPOS Where CNPJ = :CNPJ AND CODIGO = :C ');

     GERAL.ParamByName ('C'   ).AsInteger := Sender.Value ;
     GERAL.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;

     GERAL.open;

     IF GERAL.FIELDS[0].ISNULL
     THEN BEGIN
          MessageDlg('Grupo não Cadastrado, Verifique!',MtError,[MbOk],0);
          Abort;
     END
     ELSE BEGIN
          ALTPRECO_PRODGRUPONOME.Value := GERAL.FIELDS[0].Value ;
     END;
end;

procedure TDmEstoque.ALTPRECO_PRODUTOCUSTO_LISTAValidate(Sender: TField);
Var
   IPI, IMPOSTOS: Real;
begin
     If Sender.Value > 0
     then begin
          IPI      := ARREDONDA(( Sender.Value * ALTPRECOIPI.Value ) /100,2) ;

          IMPOSTOS := ARREDONDA(( ( Sender.Value + IPI )* ALTPRECOIMPOSTOS.Value ) /100,2) ;

          ALTPRECO_PRODUTOCUSTO_COLOCADO.Value := ARREDONDA(SENDER.Value + IPI + IMPOSTOS,2) ;
     end;
end;

procedure TDmEstoque.Comissao_ProdutoNewRecord(DataSet: TDataSet);
begin
     Comissao_ProdutoPRODUTO.Value := DmCadastros.produtoscodigo.Value ;
     Comissao_ProdutoCNPJ.Value    := DmaPP.Cnpj                       ;
     Comissao_ProdutoAPRAZO.Value  := 0;
     Comissao_ProdutoAVISTA.Value  := 0;
end;

procedure TDmEstoque.EtiquetaProdImpNewRecord(DataSet: TDataSet);
Var
   I: Integer;
begin
     EtiquetaProdImpQUANTIDADE.Value := 0;

     I := DMAPP.Ultima_Etiqueta + 1;

     EtiquetaProdImpSEQUENCIA.Value  := I;

     EtiquetaProdImpNUMERO.Value := '0';

     EtiquetaProdImpGRADE.Value  := '';
end;

procedure TDmEstoque.PROMOCAOAfterInsert(DataSet: TDataSet);
begin
  Dataset.Fields[0].Value := DMApp.CNPJ ;
end;

procedure TDmEstoque.PROMOCAONewRecord(DataSet: TDataSet);
begin
     PROMOCAOVALIDADE.value := date;
     PROMOCAOVALOR.VALUE    := 0;
end;

procedure TDmEstoque.EtiquetaProdGRADEValidate(Sender: TField);
begin
     If sender.value <> '0'
     then begin
          GERAL.Close;
          GERAL.Sql.Clear;

          GERAL.Params.CreateParam ( FtString,  'CNPJ', PtInput ) ;
          GERAL.Params.CreateParam ( FtString,  'P'   , PtInput ) ;
          GERAL.Params.CreateParam ( FtString,  'G'   , PtInput ) ;

          GERAL.Sql.Add (' Select * From EST_PRODUTOS_GRADES Where CNPJ = :CNPJ AND PRODUTO = :P AND GRADE = :G ');

          GERAL.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;
          GERAL.ParamByName ('P'   ).AsString  := EtiquetaProdCODIGO.Value ;
          GERAL.ParamByName ('G'   ).AsString  := Sender.value ;

          GERAL.open;

          IF GERAL.FIELDS[0].ISNULL
          THEN BEGIN
               MessageDlg('Grade não Cadastrada, Verifique!',MtError,[MbOk],0);
               Abort;
          END;
     end;
end;

procedure TDmEstoque.EtiquetaProdNUMEROValidate(Sender: TField);
begin
     IF ( Sender.value <> '0' )
     THEN BEGIN
          GERAL.Close;
          GERAL.Sql.Clear;

          GERAL.Params.CreateParam ( FtString,  'CNPJ', PtInput ) ;
          GERAL.Params.CreateParam ( FtString,  'P'   , PtInput ) ;
          GERAL.Params.CreateParam ( FtString,  'G'   , PtInput ) ;
          GERAL.Params.CreateParam ( FtString,  'N'   , PtInput ) ;

          GERAL.Sql.Add (' Select * From EST_PRODUTOS_GRADES_NUMEROS                          ');
          GERAL.Sql.Add (' Where CNPJ = :CNPJ AND PRODUTO = :P AND GRADE = :G and NUMERO = :N ');

          GERAL.ParamByName ('CNPJ').AsString  := DmApp.Cnpj               ;
          GERAL.ParamByName ('P'   ).AsString  := EtiquetaProdCODIGO.Value ;
          GERAL.ParamByName ('G'   ).AsString  := EtiquetaProdGRADE.value  ;
          GERAL.ParamByName ('N'   ).AsString  := Sender.Value             ;

          GERAL.open;

          IF GERAL.FIELDS[0].ISNULL
          THEN BEGIN
               MessageDlg('Número Inexistente nesta Grade, Verifique!',MtError,[MbOk],0);
               Abort;
          END;
     end;
end;

procedure TDmEstoque.EtiquetaProdImpCalcFields(DataSet: TDataSet);
Var
   Aux, G, Num : String;
begin
     Aux := EtiquetaProdImpCODIGO.value ;

     While Length( Aux ) < 6 do
     begin
          Aux := '0' + Aux;
     end;

     G := EtiquetaProdImpGRADE.TEXT ;

     While Length( G) < 3 do
     begin
          G := '0' + G;
     end;

     NUM := EtiquetaProdImpNUMERO.TEXT ;

     While Length( NUM ) < 6 do
     begin
          NUM:= '0' + NUM;
     end;

     EtiquetaProdImpIMPRIMIR.VALUE := AUX + G + NUM;
end;

procedure TDmEstoque.VER_EST_ESTIQUETA_PRODUTOCalcFields(DataSet: TDataSet);
Var
   Aux, IMPRIMIR, G, Num : String;
begin
  G := '';
  NUM := '';
  Aux := VER_EST_ESTIQUETA_PRODUTOCODIGO.value ;

  While Length( Aux ) < 6 do
  begin
       Aux := '0' + Aux;
  end;

  if (VER_EST_ESTIQUETA_PRODUTOCONT_NUMEROS.Value >0) then
  begin
    G := VER_EST_ESTIQUETA_PRODUTOGRADE.TEXT ;

    While Length( G) < 4 do
    begin
      G := '0' + G;
    end;

    NUM := VER_EST_ESTIQUETA_PRODUTONUMERO.TEXT ;

    While Length( NUM ) < 6 do
    begin
         NUM:= '0' + NUM;
    end;
  end;

 { if trim(G) = '0' then
    G := '';

  if ((trim(NUM) = '0') or (trim(NUM) = '000000')) then
    NUM := ''; }

  IMPRIMIR := AUX + G + NUM;
  VER_EST_ESTIQUETA_PRODUTOIMPRIMIR.VALUE := IMPRIMIR;
end;

procedure TDmEstoque.CONTAGEM_PRODUTOPRODUTOSetText(Sender: TField; const Text: String);
          Function RetiraZeros ( Str: String ): String;
          Var
             Aux: String;
             I, Len: Integer ;
             Inicio: Boolean ;
          Begin
               I := 1;

               Len := Length(Str);

               Aux := '';

               Inicio := False ;

               While I <= Len do
               begin
                    If (( Copy(Str,I,1) <> '0' ) OR ( Inicio ))
                    then Begin
                         Aux := Aux + Copy(Str,I,1);
                         Inicio := TRUE ;
                    end
                    else begin
                         Inicio := FALSE ;
                    end;

                    I := I + 1;
               end;

               result := Aux;
          end;
Var
   Aux: String;
   Codigo, Grade, Numero: String;
begin
     Aux := Text ;

     //VERIFICA SE TEM GRADE
     IF (( LENGTH( TRIM( AUX )) = 15 ) AND ( DMAPP.EST_USA_GRADE = 'S' ))
     THEN BEGIN
          CODIGO := COPY(AUX,  1, 6);
          if LENGTH(TRIM(AUX))=15 then
          begin
            GRADE := COPY(AUX,  7, 3);
            GRADE := 'A'+GRADE;
            NUMERO := COPY(AUX, 10, 6);
          end
          else
          begin
            GRADE  := COPY(AUX,  7, 4);
            NUMERO := COPY(AUX, 11, 7);
          end;

          CODIGO := RETIRAZEROS ( CODIGO );
          NUMERO := RETIRAZEROS ( NUMERO );

          SENDER.VALUE := CODIGO;
          CONTAGEM_PRODUTOGRADE.VALUE  := GRADE    ;
          CONTAGEM_PRODUTONUMERO.VALUE := (NUMERO) ;
     END
     ELSE BEGIN
          If DmApp.Elimina_Zeros = 'S'
          THEN BEGIN
               While Copy ( Aux, 1, 1 ) = '0' DO
               BEGIN
                    Aux := Copy ( Aux, 2, 15 );
               End;
               Sender.Value := Aux ;
          END
          ELSE BEGIN
               If DmApp.Acrescenta_Zeros = 'S'
               THEN BEGIN
                    While Length ( Aux ) < 10 DO
                    BEGIN
                         Aux := '0' + Aux ;
                    End;
                    Sender.Value := Aux ;
               END
               ELSE BEGIN
                    Sender.Value := Aux ;
               END;
          END;
     END;
end;

procedure TDmEstoque.CONTAGEM_PRODUTOGRADEValidate(Sender: TField);
begin
     If sender.value <> '0'
     then begin
          GERAL.Close;
          GERAL.Sql.Clear;

          GERAL.Params.CreateParam ( FtString,  'CNPJ', PtInput ) ;
          GERAL.Params.CreateParam ( FtString,  'P'   , PtInput ) ;
          GERAL.Params.CreateParam ( FtString,  'G'   , PtInput ) ;

          GERAL.Sql.Add (' Select * From EST_PRODUTOS_GRADES Where CNPJ = :CNPJ AND PRODUTO = :P AND GRADE = :G ');
          GERAL.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;
          GERAL.ParamByName ('P'   ).AsString  := CONTAGEM_PRODUTOPRODUTO.Value ;
          GERAL.ParamByName ('G'   ).AsString  := Sender.value ;
          GERAL.open;

          IF GERAL.FIELDS[0].ISNULL
          THEN BEGIN
               MessageDlg('Grade não Cadastrada, Verifique!',MtError,[MbOk],0);
               Abort;
          END;
     end;
end;

procedure TDmEstoque.CONTAGEM_PRODUTONUMEROValidate(Sender: TField);
begin
     IF ( Sender.value <> '0' )
     THEN BEGIN
          GERAL.Close;
          GERAL.Sql.Clear;

          GERAL.Params.CreateParam ( FtString,  'CNPJ', PtInput ) ;
          GERAL.Params.CreateParam ( FtString,  'P'   , PtInput ) ;
          GERAL.Params.CreateParam ( FtString,  'G'   , PtInput ) ;
          GERAL.Params.CreateParam ( FtString,  'N'   , PtInput ) ;

          GERAL.Sql.Add (' Select ESTOQUE From EST_PRODUTOS_GRADES_NUMEROS                    ');
          GERAL.Sql.Add (' Where CNPJ = :CNPJ AND PRODUTO = :P AND GRADE = :G and NUMERO = :N ');

          GERAL.ParamByName ('CNPJ').AsString  := DmApp.Cnpj                   ;
          GERAL.ParamByName ('P'   ).AsString  := CONTAGEM_PRODUTOPRODUTO.Value ;
          GERAL.ParamByName ('G'   ).AsString  := CONTAGEM_PRODUTOGRADE.value   ;
          GERAL.ParamByName ('N'   ).AsString  := Sender.Value                 ;

          GERAL.open;

          IF GERAL.FIELDS[0].ISNULL
          THEN BEGIN
               MessageDlg('Número Inexistente nesta Grade, Verifique!',MtError,[MbOk],0);
               Abort;
          END
          ELSE BEGIN
               CONTAGEM_PRODUTOQUANTIDADE_ANTERIOR_GRADE.VALUE := GERAL.FIELDS[0].VALUE ;
          END;
     end;
end;

procedure TDmEstoque.Orcamento_MascaraGRUPOValidate(Sender: TField);
begin
     GERAL.Close;
     GERAL.Sql.Clear;

     GERAL.Params.CreateParam ( FtString, 'CNPJ', PtInput ) ;
     GERAL.Params.CreateParam ( FtInteger, 'C', PtInput ) ;

     GERAL.Sql.Add (' Select NOME From EST_GRUPOS Where CNPJ = :CNPJ AND Codigo = :C ');

     GERAL.ParamByName ('C'   ).AsInteger := Sender.Value ;
     GERAL.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;

     GERAL.open;

     IF NOT GERAL.FIELDS[0].ISNULL
     THEN BEGIN
          Orcamento_MascaraNOME_GRUPO.VALUE := GERAL.FIELDS[0].VALUE ;
     END;
end;

procedure TDmEstoque.Orcamento_MascaraSUB_GRUPOValidate(Sender: TField);
begin
     GERAL.Close;
     GERAL.Sql.Clear;

     GERAL.Params.CreateParam ( FtString , 'CNPJ', PtInput ) ;
     GERAL.Params.CreateParam ( FtInteger, 'G'   , PtInput ) ;
     GERAL.Params.CreateParam ( FtInteger, 'S'   , PtInput ) ;

     GERAL.Sql.Add (' Select NOME From EST_SUBGRUPOS Where CNPJ = :CNPJ AND GRUPO = :G AND SUBGRUPO = :S ');

     GERAL.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;
     GERAL.ParamByName ('G'   ).AsInteger := Orcamento_MascaraGRUPO.Value ;
     GERAL.ParamByName ('S'   ).AsInteger := Sender.Value ;

     GERAL.open;

     IF NOT GERAL.FIELDS[0].ISNULL
     THEN BEGIN
          Orcamento_MascaraNOME_SUB_GRUPO.VALUE := GERAL.FIELDS[0].VALUE ;
     END;
end;

procedure TDmEstoque.EtiquetaProdImpBeforeOpen(DataSet: TDataSet);
begin
  EtiquetaProdImp.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;
end;

procedure TDmEstoque.ContagemGradeBeforeOpen(DataSet: TDataSet);
begin
  ContagemGrade.ParamByName('cnpj').Value := DMApp.Cnpj;
end;

procedure TDmEstoque.ContagemGradeAfterInsert(DataSet: TDataSet);
begin
  ContagemGradeDT_ABERTURA.Value := Now;
  ContagemGradePROCESSADA.Value := 'N';
  ContagemGradeLOCAL.Value := 2;
  ContagemGradeCNPJ.Value := DMApp.Cnpj;
  ContagemGrade.RecordModified(False);
end;

procedure TDmEstoque.ContagemGradeItensBeforeOpen(DataSet: TDataSet);
begin
  ContagemGradeItens.ParamByName('cnpj').Value := DMApp.Cnpj;
  ContagemGradeItens.ParamByName('contagem_grade').Value := ContagemGradeCODIGO.Value;
end;

procedure TDmEstoque.ContagemGradeItensAfterInsert(DataSet: TDataSet);
begin
  ContagemGradeItensCNPJ.Value := DMApp.Cnpj;
  ContagemGradeItensQTDE.Value := 1;
  ContagemGradeItensCONTAGEM_GRADE.Value := ContagemGradeCODIGO.Value;
end;

procedure TDmEstoque.ContagemGradeAfterScroll(DataSet: TDataSet);
begin
  ContagemGradeItens.Close;
  ContagemGradeItens.Open;
end;

procedure TDmEstoque.ContagemGradePROCESSADAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.Value = 'S' then
    Text := 'Processada'
  else Text := 'Aberta';
end;

procedure TDmEstoque.Orcamento_MascaraNewRecord(DataSet: TDataSet);
begin
     Orcamento_MascaraAGRUPADOR.VALUE := Orcamento_Mascara_NomeCODIGO.VALUE ;
end;

procedure TDmEstoque.ContagemGradeBeforePost(DataSet: TDataSet);
var
  Docto : string;
begin
  if DataSet.state in [db.dsinsert] then
  begin
    qryAux.close;
    qryAux.SQL.Text := 'select ct.codigo from est_contagem_grade ct where ct.documento = :docto';
    qryAux.ParamByName('docto').value := ContagemGradeDOCUMENTO.AsString;
    qryAux.Open;

    if qryAux.FieldByName('codigo').asInteger <> 0 then
    begin
     if  Application.MessageBox('Já existe uma contagem com este nome de documento. Deseja continuar?','Aviso',MB_YESNO) = id_no then
     begin
      abort;
      exit;
     end;
    end;
  end;
end;

procedure TDmEstoque.AlteraPrecoBeforeOpen(DataSet: TDataSet);
begin
 AlteraPreco.parambyname('cnpj').value := dmApp.cnpj;
end;

procedure TDmEstoque.AlteraPrecoNewRecord(DataSet: TDataSet);
begin
  AlteraPrecoCNPJ.value := dmApp.cnpj;
  AlteraPrecoDATA.value := dmApp.Data_Servidor;
end;

procedure TDmEstoque.AlteraPrecoItemNewRecord(DataSet: TDataSet);
begin
  AlteraPrecoItemCNPJ.Value := dmApp.cnpj;
end;

procedure TDmEstoque.AlteraPrecoItem1BeforeOpen(DataSet: TDataSet);
begin
  AlteraPrecoItem.parambyname('codigo').value := AlteraPrecoCODIGO.value;
end;

procedure TDmEstoque.AlteraPrecoFECHADAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if (Sender.value ='S') then
    Text := 'Fechado'
  else
    Text := 'Aberto';
end;

procedure TDmEstoque.AlteraPrecoFECHADASetText(Sender: TField;
  const Text: String);
begin
  if (Text = 'Fechado') then
    Sender.value := 'S'
  else
    Sender.value := 'N';
end;

procedure TDmEstoque.AlteraPrecoItemVLR_ATUALIZACAOValidate(
  Sender: TField);
var
  saldo, margem : real;
begin
  saldo := AlteraPrecoItemVLR_ATUALIZACAO.value - AlteraPrecoItemVLR_ATUAL.value;
  if AlteraPrecoItemVLR_ATUAL.value > 0 then
    margem := (saldo * 100)/AlteraPrecoItemVLR_ATUAL.value
  else
    margem := 0;
  AlteraPrecoItemMARGEM.value := margem;
end;

procedure TDmEstoque.AlteraPrecoItemBeforeOpen(DataSet: TDataSet);
begin
 AlteraPrecoItem.parambyname('codigo').value := AlteraPrecoCODIGO.value;
end;

procedure TDmEstoque.AlteraPrecoItemMARGEMValidate(Sender: TField);
begin
//  AlteraPrecoItemVLR_ATUALIZACAO.value := AlteraPrecoItemVLR_ATUAL.value + ((AlteraPrecoItemVLR_ATUAL.value * AlteraPrecoItemMARGEM.value)/100);
end;

procedure TDmEstoque.AlteraPrecoItemAfterOpen(DataSet: TDataSet);
begin
  if AlteraPrecoFECHADA.value='S' then
    AlteraPrecoItem.FieldByName('VLR_ATUALIZACAO').ReadOnly := true
  else
    AlteraPrecoItem.FieldByName('VLR_ATUALIZACAO').ReadOnly := False;
end;

procedure TDmEstoque.ContagemGradeItensPRODUTOSetText(Sender: TField;
  const Text: String);
Function RetiraZeros ( Str: String ): String;
          Var
             Aux: String;
             I, Len: Integer ;
             Inicio: Boolean ;
          Begin
               I := 1;

               Len := Length(Str);

               Aux := '';

               Inicio := False ;

               While I <= Len do
               begin
                    If (( Copy(Str,I,1) <> '0' ) OR ( Inicio ))
                    then Begin
                         Aux := Aux + Copy(Str,I,1);
                         Inicio := TRUE ;
                    end
                    else begin
                         Inicio := FALSE ;
                    end;

                    I := I + 1;
               end;

               result := Aux;
          end;
Var
   Aux: String;
   Codigo, Grade, Numero: String;
begin
     Aux := Text ;

     //VERIFICA SE TEM GRADE
     IF ((LENGTH(TRIM( AUX )) = 15 ) AND ( DMAPP.EST_USA_GRADE = 'S' ))
     THEN BEGIN
          CODIGO := COPY(AUX,  1, 6);
          if LENGTH(TRIM(AUX))=15 then
          begin
            GRADE := COPY(AUX,  7, 3);
            GRADE := 'A'+GRADE;
            NUMERO := COPY(AUX, 10, 6);
          end
          else
          begin
            GRADE  := COPY(AUX,  7, 4);
            NUMERO := COPY(AUX, 11, 7);
          end;

          CODIGO := RETIRAZEROS ( CODIGO );
          NUMERO := RETIRAZEROS ( NUMERO );

          SENDER.VALUE := CODIGO;
          ContagemGradeItensGRADE.VALUE  := GRADE    ;
          ContagemGradeItensNUMERO.VALUE := (NUMERO) ;
     END
     ELSE BEGIN
          If DmApp.Elimina_Zeros = 'S'
          THEN BEGIN
               While Copy ( Aux, 1, 1 ) = '0' DO
               BEGIN
                    Aux := Copy ( Aux, 2, 15 );
               End;
               Sender.Value := Aux ;
          END
          ELSE BEGIN
               If DmApp.Acrescenta_Zeros = 'S'
               THEN BEGIN
                    While Length ( Aux ) < 10 DO
                    BEGIN
                         Aux := '0' + Aux ;
                    End;
                    Sender.Value := Aux ;
               END
               ELSE BEGIN
                    Sender.Value := Aux ;
               END;
          END;
     END;
end;


procedure TDmEstoque.ContagemGradeItensPRODUTOValidate(Sender: TField);
begin
  GERAL.Close;
  GERAL.Params.CreateParam ( FtString, 'CNPJ', PtInput ) ;
  GERAL.Params.CreateParam ( FtString, 'C', PtInput ) ;
  GERAL.Sql.text := ' Select QTDADE_2, NOME, SUBUNIDADE From EST_PRODUTOS Where CNPJ = :CNPJ AND Codigo = :C ';
  GERAL.ParamByName ('C').AsString := Sender.Value ;
  GERAL.ParamByName ('CNPJ').AsString := DmApp.Cnpj   ;
  GERAL.open;

  IF GERAL.FIELDS[1].ISNULL then
  begin
     MessageDlg('Produto não cadastrado, Verifique!',MtError,[MbOk],0);
     Abort;
  end
  else if not GERAL.FIELDS[1].IsNull then
     ContagemGradeItensNOME.value   := GERAL.FIELDS[1].Value;
end;

procedure TDmEstoque.TabelaPrecoBeforeOpen(DataSet: TDataSet);
begin
 TIBDataSet(DataSet).ParamByName('cnpj').value := dmApp.cnpj;
end;

procedure TDmEstoque.ItemTabelaPrecoBeforeOpen(DataSet: TDataSet);
begin
  ItemTabelaPreco.parambyname('codigo').value :=  TabelaPrecoCODIGO.value;
end;

procedure TDmEstoque.ItemTabelaPrecoNewRecord(DataSet: TDataSet);
begin
  ItemTabelaPrecoCNPJ.value := dmApp.cnpj;
end;

procedure TDmEstoque.TabelaPrecoNewRecord(DataSet: TDataSet);
begin
  TabelaPrecoCNPJ.value := dmApp.CNPJ;
end;

procedure TDmEstoque.tblVendedorNewRecord(DataSet: TDataSet);
begin
  tblVendedorCNPJ.value := dmApp.cnpj;
end;

procedure TDmEstoque.TblTabelasBeforeOpen(DataSet: TDataSet);
begin
  TIBQuery(DataSet).ParamByName('cnpj').value := dmApp.cnpj;
end;

procedure TDmEstoque.tblVendedorTabelasNewRecord(DataSet: TDataSet);
begin
  tblVendedorTabelasCOD_TBL_VENDEDOR.value :=   tblVendedorCODIGO.value;
  tblVendedorTabelasCNPJ.value :=   dmApp.cnpj;
end;

procedure TDmEstoque.ItemTabelaPrecoBeforePost(DataSet: TDataSet);
begin
  if ((ItemTabelaPrecoDATAINICIOVIGENCIA.Value < TabelaPrecoINICIOVIGENCIA.value) or (ItemTabelaPrecoDATAINICIOVIGENCIA.Value > TabelaPrecoFIMVIGENCIA.value)) then
  begin
    Application.MessageBox('Data de início de vigência inválido. Verifique','Aviso',mb_ok + mb_iconerror);
    abort;
    exit;
  end;

  if ((ItemTabelaPrecoDATAFIMVIGENCIA.Value < TabelaPrecoINICIOVIGENCIA.value) or (ItemTabelaPrecoDATAFIMVIGENCIA.Value > TabelaPrecoFIMVIGENCIA.value)) then
  begin
    Application.MessageBox('Data de fim de vigência inválido. Verifique','Aviso',mb_ok + mb_iconerror);
    abort;
    exit;
  end;
end;

procedure TDmEstoque.ItemTabelaPrecoMARGEMUTILIZADOChange(Sender: TField);
begin
  ItemTabelaPrecoValor.asFloat := ItemTabelaPrecoPRECOSUGERIDO.AsFloat +((ItemTabelaPrecoPRECOSUGERIDO.AsFloat * ItemTabelaPrecoMARGEMUTILIZADO.asFloat)/100);
end;

procedure TDmEstoque.QryRomaneiosCalcFields(DataSet: TDataSet);
begin
  //
end;

end.
